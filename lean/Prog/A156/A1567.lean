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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A156700: Number of partitions of the set of odd numbers {1, 3, 5, ..., 4*n-1} into two subsets with equal sum.

The programs for A156700, there is no canonical definition to state claims against.
-/

/-! ## A156700.P10669230978395144708

`ceil(sin(n)²)*A290889(A103517(n))`
-/

namespace A156700.P10669230978395144708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A290889 (A103517 n).toNat

end

end A156700.P10669230978395144708

/-! ## A156700.P9035191479730425266

`A290889(2*(n+1))-A000007(n)`
-/

namespace A156700.P9035191479730425266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290889 (2 * (n + 1)) - A000007 n

end

end A156700.P9035191479730425266

/-! ## A156700.P12274180186035068581

`ceil(sin(n)²)*A290889(A317440(n+1))`
-/

namespace A156700.P12274180186035068581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A290889 (A317440 (n + 1)).toNat

end

end A156700.P12274180186035068581

/-! ## A156700.P3668625860567488801

`A290889(2*(n+1))-A123108(2*n)+n`
-/

namespace A156700.P3668625860567488801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290889 (2 * (n + 1)) - A123108 (2 * n) + (n : ℤ)

end

end A156700.P3668625860567488801

/-! ## A156700.P7986340612979678161

`A290889(2*(n+1))%A025591(A014601(n))`
-/

namespace A156700.P7986340612979678161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290889 (2 * (n + 1))) (A025591 (A014601 n).toNat)

end

end A156700.P7986340612979678161

/-! ## A156700.P18427749526164661627

`A001221(A048896(2*n))*A290889(2*(n+1))`
-/

namespace A156700.P18427749526164661627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048896 (2 * n)).toNat * A290889 (2 * (n + 1))

end

end A156700.P18427749526164661627

/-! ## A156700.P12887808305216003997

`A001221(A000961(2*n+1))*A290889(2*(n+1))`
-/

namespace A156700.P12887808305216003997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (2 * n + 1)).toNat * A290889 (2 * (n + 1))

end

end A156700.P12887808305216003997

/-! ## A156700.P17398796881951895535

`A123108(2*n+1)/A123108(2*n)*A290889(2*(n+1))`
-/

namespace A156700.P17398796881951895535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (2 * n + 1) : ℚ) / (A123108 (2 * n) : ℚ) * (A290889 (2 * (n + 1)) : ℚ)

end

end A156700.P17398796881951895535

/-! ## A156700.P10008515532499333267

`A001221(A000961(n+1))²*A290889(A103517(n))`
-/

namespace A156700.P10008515532499333267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat ^ 2 * A290889 (A103517 n).toNat

end

end A156700.P10008515532499333267

/-! ## A156700.P9122261977930082666

`n*A290889(2*n+2)/A123108(2*n)`
-/

namespace A156700.P9122261977930082666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A290889 (2 * n + 2) : ℚ) / (A123108 (2 * n) : ℚ)

end

end A156700.P9122261977930082666

/-!
# A156701: a(n) = 4*n^4 + 17*n^2 + 4.

The programs for A156701, the canonical program `A156701.P9914790661993607378` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156701 has offset 0).

The definition of A156701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4+17*n²+4` (program `A156701.P9914790661993607378`, by `A156701.P9914790661993607378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156701.P9914790661993607378

`4*n^4+17*n²+4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156701

/-- `4*n^4+17*n²+4` -/
def P9914790661993607378.Spec : Prop :=
  ∀ n, (P9914790661993607378.a n : ℤ) = A156701 n

theorem P9914790661993607378.correct : P9914790661993607378.Spec := by
  intro n
  simp only [A156701]

end A156701

/-! ## A156701.P5436404171496164715

`ogf((4+5x+51x^2+11x^3+25x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A156701.P5436404171496164715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5, 51, 11, 25] [1, -5, 10, -10, 5, -1] n

end

end A156701.P5436404171496164715

namespace A156701

/-- `ogf((4+5x+51x^2+11x^3+25x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5436404171496164715.Spec : Prop :=
  ∀ n, P5436404171496164715.a n = A156701 n

end A156701

/-! ## A156701.P366903375888732040

`(n²+4)*or(1, (2*n)²)`
-/

namespace A156701.P366903375888732040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 4) * Nat.lor 1 ((2 * n) ^ 2)

end

end A156701.P366903375888732040

namespace A156701

/-- `(n²+4)*or(1, (2*n)²)` -/
def P366903375888732040.Spec : Prop :=
  ∀ n, (P366903375888732040.a n : ℤ) = A156701 n

end A156701

/-! ## A156701.P3091162941195458487

`(n²+4)*xor(1, (2*n)²)`
-/

namespace A156701.P3091162941195458487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 4) * Nat.xor 1 ((2 * n) ^ 2)

end

end A156701.P3091162941195458487

namespace A156701

/-- `(n²+4)*xor(1, (2*n)²)` -/
def P3091162941195458487.Spec : Prop :=
  ∀ n, (P3091162941195458487.a n : ℤ) = A156701 n

end A156701

/-! ## A156701.P5549996085956547671

`(n²+4)*filter[n²+1, gcd(2, #)]`
-/

namespace A156701.P5549996085956547671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 4) * f1 (SequenceMachineLib.nth (fun j => Nat.gcd 2 (f1 j) = 1) n)

end

end A156701.P5549996085956547671

namespace A156701

/-- `(n²+4)*filter[n²+1, gcd(2, #)]` -/
def P5549996085956547671.Spec : Prop :=
  ∀ n, (P5549996085956547671.a n : ℤ) = A156701 n

end A156701

/-! ## A156701.P9074784163281821393

`(n²+4)*Δ[C(2*n, 3)+n]`
-/

namespace A156701.P9074784163281821393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 4 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A156701.P9074784163281821393

namespace A156701

/-- `(n²+4)*Δ[C(2*n, 3)+n]` -/
def P9074784163281821393.Spec : Prop :=
  ∀ n, P9074784163281821393.a n = A156701 n

theorem P9074784163281821393.correct : P9074784163281821393.Spec := by
  intro n
  simp only [A156701, Nat.add_sub_cancel, A156701.P9074784163281821393.f1, A156701.P9074784163281821393.a, A156701.P9914790661993607378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156701

/-! ## A156701.P15638906547522216812

`(n²+4)*A053755(n)`
-/

namespace A156701.P15638906547522216812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 4 : ℤ) * A053755 n

end

end A156701.P15638906547522216812

namespace A156701

/-- `(n²+4)*A053755(n)` -/
def P15638906547522216812.Spec : Prop :=
  ∀ n, P15638906547522216812.a n = A156701 n

theorem P15638906547522216812.correct : P15638906547522216812.Spec := by
  intro n
  simp only [A156701, Nat.add_sub_cancel, A156701.P15638906547522216812.a, A156701.P9914790661993607378.a, A053755, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156701

/-! ## A156701.P11560901507887857192

`((2*n)²+1)*A087475(n)`
-/

namespace A156701.P11560901507887857192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + 1 : ℤ) * A087475 n

end

end A156701.P11560901507887857192

namespace A156701

/-- `((2*n)²+1)*A087475(n)` -/
def P11560901507887857192.Spec : Prop :=
  ∀ n, P11560901507887857192.a n = A156701 n

theorem P11560901507887857192.correct : P11560901507887857192.Spec := by
  intro n
  simp only [A156701, Nat.add_sub_cancel, A156701.P11560901507887857192.a, A156701.P9914790661993607378.a, A087475, A087475.P4372105407425732933.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156701

/-! ## A156701.P17783562688149127425

`(n²+4)*(A000290(2*n)+1)`
-/

namespace A156701.P17783562688149127425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 4 : ℤ) * (A000290 (2 * n) + 1)

end

end A156701.P17783562688149127425

namespace A156701

/-- `(n²+4)*(A000290(2*n)+1)` -/
def P17783562688149127425.Spec : Prop :=
  ∀ n, P17783562688149127425.a n = A156701 n

theorem P17783562688149127425.correct : P17783562688149127425.Spec := by
  intro n
  simp only [A156701, Nat.add_sub_cancel, A156701.P17783562688149127425.a, A156701.P9914790661993607378.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156701

/-! ## A156701.P3094699696067267021

`(n²+4)*A002522(2*n)`
-/

namespace A156701.P3094699696067267021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 4 : ℤ) * A002522 (2 * n)

end

end A156701.P3094699696067267021

namespace A156701

/-- `(n²+4)*A002522(2*n)` -/
def P3094699696067267021.Spec : Prop :=
  ∀ n, P3094699696067267021.a n = A156701 n

theorem P3094699696067267021.correct : P3094699696067267021.Spec := by
  intro n
  simp only [A156701, Nat.add_sub_cancel, A156701.P3094699696067267021.a, A156701.P9914790661993607378.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156701

/-! ## A156701.P1281869161738492466

`A087475(n)*A098749(2*n+1)`
-/

namespace A156701.P1281869161738492466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n * A098749 (2 * n + 1)

end

end A156701.P1281869161738492466

namespace A156701

/-- `A087475(n)*A098749(2*n+1)` -/
def P1281869161738492466.Spec : Prop :=
  ∀ n, P1281869161738492466.a n = A156701 n

end A156701

/-!
# A156702: Numbers k such that k^2 - 1 == 0 (mod 24^2).

The programs for A156702, there is no canonical definition to state claims against.
-/

/-! ## A156702.P8343255208396604566

`record[abs(A080332(24*n))]`
-/

namespace A156702.P8343255208396604566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080332 (24 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156702.P8343255208396604566

/-! ## A156702.P6859033872098710904

`record[abs(A133079(24*n))]`
-/

namespace A156702.P6859033872098710904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133079 (24 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156702.P6859033872098710904

/-! ## A156702.P5340966332697888393

`record[abs(A178902(24*n))]`
-/

namespace A156702.P5340966332697888393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178902 (24 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156702.P5340966332697888393

/-!
# A156703: String of digits encountered in decimal expansion of successive ratios k/(k+1), treating only non-repeating expansions, with decimal point and leading and trailing zeros removed.

The programs for A156703, there is no canonical definition to state claims against.
-/

/-! ## A156703.P17550508560549781224

`A259299(A158911(n+2))`
-/

namespace A156703.P17550508560549781224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259299 (A158911 (n + 2)).toNat

end

end A156703.P17550508560549781224

/-! ## A156703.P237766544577128625

`A259299(A003592(n+2)-1)`
-/

namespace A156703.P237766544577128625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259299 (A003592 (n + 2) - 1).toNat

end

end A156703.P237766544577128625

/-! ## A156703.P17994716831426336622

`A259299(eq[A000007(n), A036275(n+1)])`
-/

namespace A156703.P17994716831426336622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259299 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A156703.P17994716831426336622

/-! ## A156703.P727176143458133501

`A259299(eq[A000007(n), A060284(n+1)])`
-/

namespace A156703.P727176143458133501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259299 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A156703.P727176143458133501

/-! ## A156703.P11810657841889815261

`A259299(eq[A000007(n), A270392(n+1)])`
-/

namespace A156703.P11810657841889815261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259299 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A156703.P11810657841889815261

/-!
# A156706: For all numbers k(n) congruent to +1 or -1 (mod 6) starting with k(n) = {5,7,11,13,...}, a(k(n)) is the congruence (mod 6) if k(n) is prime and 0 if k(n) is composite.

The programs for A156706, the canonical program `A156706.P17768432936100501538` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156706 has offset 1).

The definition of A156706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156706.P17768432936100501538

`n-xor(n, A075743(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A156706

/-- `n-xor(n, A075743(n+1))` -/
def P17768432936100501538.Spec : Prop :=
  ∀ n, P17768432936100501538.a n = A156706 (n + 1)

theorem P17768432936100501538.correct : P17768432936100501538.Spec := by
  intro n
  simp only [A156706, Nat.add_sub_cancel]

end A156706

/-! ## A156706.P5232262331177369766

`(A100637(n)-A100637(n+1))^(n+1)`
-/

namespace A156706.P5232262331177369766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100637 n - A100637 (n + 1)) ^ (n + 1)

end

end A156706.P5232262331177369766

namespace A156706

/-- `(A100637(n)-A100637(n+1))^(n+1)` -/
def P5232262331177369766.Spec : Prop :=
  ∀ n, P5232262331177369766.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P13679101804739185944

`A010051(3*n+4)-A010051(3*n+5)`
-/

namespace A156706.P13679101804739185944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * n + 4) - A010051 (3 * n + 5)

end

end A156706.P13679101804739185944

namespace A156706

/-- `A010051(3*n+4)-A010051(3*n+5)` -/
def P13679101804739185944.Spec : Prop :=
  ∀ n, P13679101804739185944.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P9043189732426934351

`A057077(2*(n+1))*A075743(n+1)`
-/

namespace A156706.P9043189732426934351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * (n + 1)) * A075743 (n + 1)

end

end A156706.P9043189732426934351

namespace A156706

/-- `A057077(2*(n+1))*A075743(n+1)` -/
def P9043189732426934351.Spec : Prop :=
  ∀ n, P9043189732426934351.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P1276156114365085502

`A296028(2*n+3)-A296028(2*(n+2))`
-/

namespace A156706.P1276156114365085502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296028 (2 * n + 3) - A296028 (2 * (n + 2))

end

end A156706.P1276156114365085502

namespace A156706

/-- `A296028(2*n+3)-A296028(2*(n+2))` -/
def P1276156114365085502.Spec : Prop :=
  ∀ n, P1276156114365085502.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P5384184902341453683

`Δ[A000720(3*(n+1))]*A055975(2*n+3)`
-/

namespace A156706.P5384184902341453683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055975 (2 * n + 3)

end

end A156706.P5384184902341453683

namespace A156706

/-- `Δ[A000720(3*(n+1))]*A055975(2*n+3)` -/
def P5384184902341453683.Spec : Prop :=
  ∀ n, P5384184902341453683.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P13168256355932578304

`A010815(C(A013632(3*(n+1)), 2))`
-/

namespace A156706.P13168256355932578304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Nat.choose (A013632 (3 * (n + 1))).toNat 2)

end

end A156706.P13168256355932578304

namespace A156706

/-- `A010815(C(A013632(3*(n+1)), 2))` -/
def P13168256355932578304.Spec : Prop :=
  ∀ n, P13168256355932578304.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P16921095346888441854

`A095248(3*n+5)-2`
-/

namespace A156706.P16921095346888441854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095248 (3 * n + 5) - 2

end

end A156706.P16921095346888441854

namespace A156706

/-- `A095248(3*n+5)-2` -/
def P16921095346888441854.Spec : Prop :=
  ∀ n, P16921095346888441854.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P6750536988525320986

`Δ[A037228(3*(n+1))]%2`
-/

namespace A156706.P6750536988525320986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A156706.P6750536988525320986

namespace A156706

/-- `Δ[A037228(3*(n+1))]%2` -/
def P6750536988525320986.Spec : Prop :=
  ∀ n, P6750536988525320986.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P6968460710412179214

`A227625(A007310(n+2))`
-/

namespace A156706.P6968460710412179214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (A007310 (n + 2)).toNat

end

end A156706.P6968460710412179214

namespace A156706

/-- `A227625(A007310(n+2))` -/
def P6968460710412179214.Spec : Prop :=
  ∀ n, P6968460710412179214.a n = A156706 (n + 1)

end A156706

/-! ## A156706.P957252389089075892

`A227625(A047233(n+2)+1)`
-/

namespace A156706.P957252389089075892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (A047233 (n + 2) + 1).toNat

end

end A156706.P957252389089075892

namespace A156706

/-- `A227625(A047233(n+2)+1)` -/
def P957252389089075892.Spec : Prop :=
  ∀ n, P957252389089075892.a n = A156706 (n + 1)

end A156706

/-!
# A156707: For all numbers k(n) congruent to +1 or -1 (mod 4) starting with k(n) = {3,5,7,9,11,...}, a(k(n)) is the congruence (mod 4) if k(n) is prime and 0 if k(n) is composite.

The programs for A156707, the canonical program `A156707.P12869968177507882288` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156707 has offset 1).

The definition of A156707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156707.P8463281580975405656

`Δ[-A066520(2*(n+1))]`
-/

namespace A156707.P8463281580975405656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A066520 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156707.P8463281580975405656

namespace A156707

/-- `Δ[-A066520(2*(n+1))]` -/
def P8463281580975405656.Spec : Prop :=
  ∀ n, P8463281580975405656.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P12869968177507882288

`n-xor(n, A101264(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A156707

/-- `n-xor(n, A101264(n+1))` -/
def P12869968177507882288.Spec : Prop :=
  ∀ n, P12869968177507882288.a n = A156707 (n + 1)

theorem P12869968177507882288.correct : P12869968177507882288.Spec := by
  intro n
  simp only [A156707, Nat.add_sub_cancel]

end A156707

/-! ## A156707.P3124632484590118049

`-((-1)^n*A010051(2*n+3))`
-/

namespace A156707.P3124632484590118049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A010051 (2 * n + 3))

end

end A156707.P3124632484590118049

namespace A156707

/-- `-((-1)^n*A010051(2*n+3))` -/
def P3124632484590118049.Spec : Prop :=
  ∀ n, P3124632484590118049.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P9287493237463223002

`A082901(A211173(n+1)+1)`
-/

namespace A156707.P9287493237463223002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082901 (A211173 (n + 1) + 1).toNat

end

end A156707.P9287493237463223002

namespace A156707

/-- `A082901(A211173(n+1)+1)` -/
def P9287493237463223002.Spec : Prop :=
  ∀ n, P9287493237463223002.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P15923967950009770127

`A156749(n+1)+A066520(2*(n+1))`
-/

namespace A156707.P15923967950009770127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156749 (n + 1) + A066520 (2 * (n + 1))

end

end A156707.P15923967950009770127

namespace A156707

/-- `A156749(n+1)+A066520(2*(n+1))` -/
def P15923967950009770127.Spec : Prop :=
  ∀ n, P15923967950009770127.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P2754778440172097414

`A066520(2*(n+1))-A066520(2*(n+2))`
-/

namespace A156707.P2754778440172097414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (2 * (n + 1)) - A066520 (2 * (n + 2))

end

end A156707.P2754778440172097414

namespace A156707

/-- `A066520(2*(n+1))-A066520(2*(n+2))` -/
def P2754778440172097414.Spec : Prop :=
  ∀ n, P2754778440172097414.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P8113870185460632157

`A009531(A085090(n+2))`
-/

namespace A156707.P8113870185460632157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A085090 (n + 2)).toNat

end

end A156707.P8113870185460632157

namespace A156707

/-- `A009531(A085090(n+2))` -/
def P8113870185460632157.Spec : Prop :=
  ∀ n, P8113870185460632157.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P3550643607510249649

`A003816(A211173(n+1))`
-/

namespace A156707.P3550643607510249649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A211173 (n + 1)).toNat

end

end A156707.P3550643607510249649

namespace A156707

/-- `A003816(A211173(n+1))` -/
def P3550643607510249649.Spec : Prop :=
  ∀ n, P3550643607510249649.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P5514816970332316275

`A056594(A109613(2*n)+A101264(n+1))`
-/

namespace A156707.P5514816970332316275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A109613 (2 * n) + A101264 (n + 1)).toNat

end

end A156707.P5514816970332316275

namespace A156707

/-- `A056594(A109613(2*n)+A101264(n+1))` -/
def P5514816970332316275.Spec : Prop :=
  ∀ n, P5514816970332316275.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P3180588657167640455

`A097807(∑[A056594(2*n)])*A101264(n+1)`
-/

namespace A156707.P3180588657167640455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A101264 (n + 1)

end

end A156707.P3180588657167640455

namespace A156707

/-- `A097807(∑[A056594(2*n)])*A101264(n+1)` -/
def P3180588657167640455.Spec : Prop :=
  ∀ n, P3180588657167640455.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P4650146144632728072

`A056594(2*n+1)-A056594(2*n)*A101264(n+1)`
-/

namespace A156707.P4650146144632728072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) - A056594 (2 * n) * A101264 (n + 1)

end

end A156707.P4650146144632728072

namespace A156707

/-- `A056594(2*n+1)-A056594(2*n)*A101264(n+1)` -/
def P4650146144632728072.Spec : Prop :=
  ∀ n, P4650146144632728072.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P8362070680125248951

`A151763(2*n+3)`
-/

namespace A156707.P8362070680125248951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (2 * n + 3)

end

end A156707.P8362070680125248951

namespace A156707

/-- `A151763(2*n+3)` -/
def P8362070680125248951.Spec : Prop :=
  ∀ n, P8362070680125248951.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P6979022676682289307

`A267133(2*n+3)`
-/

namespace A156707.P6979022676682289307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (2 * n + 3)

end

end A156707.P6979022676682289307

namespace A156707

/-- `A267133(2*n+3)` -/
def P6979022676682289307.Spec : Prop :=
  ∀ n, P6979022676682289307.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P15232856508753315471

`A151763(n+3+n)^3`
-/

namespace A156707.P15232856508753315471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 3 + n) ^ 3

end

end A156707.P15232856508753315471

namespace A156707

/-- `A151763(n+3+n)^3` -/
def P15232856508753315471.Spec : Prop :=
  ∀ n, P15232856508753315471.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P12457155963189037458

`A267133(n+3+n)^3`
-/

namespace A156707.P12457155963189037458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (n + 3 + n) ^ 3

end

end A156707.P12457155963189037458

namespace A156707

/-- `A267133(n+3+n)^3` -/
def P12457155963189037458.Spec : Prop :=
  ∀ n, P12457155963189037458.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P13120541886879462640

`A057077(2*(n+1))*A080339(2*n+3)`
-/

namespace A156707.P13120541886879462640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * (n + 1)) * A080339 (2 * n + 3)

end

end A156707.P13120541886879462640

namespace A156707

/-- `A057077(2*(n+1))*A080339(2*n+3)` -/
def P13120541886879462640.Spec : Prop :=
  ∀ n, P13120541886879462640.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P1675257947536957486

`A079260(2*n+3)-A079261(2*n+3)`
-/

namespace A156707.P1675257947536957486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (2 * n + 3) - A079261 (2 * n + 3)

end

end A156707.P1675257947536957486

namespace A156707

/-- `A079260(2*n+3)-A079261(2*n+3)` -/
def P1675257947536957486.Spec : Prop :=
  ∀ n, P1675257947536957486.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P4402214435061454234

`A228826(2*n+1)*A241423(2*(n+1))`
-/

namespace A156707.P4402214435061454234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (2 * n + 1) * A241423 (2 * (n + 1))

end

end A156707.P4402214435061454234

namespace A156707

/-- `A228826(2*n+1)*A241423(2*(n+1))` -/
def P4402214435061454234.Spec : Prop :=
  ∀ n, P4402214435061454234.a n = A156707 (n + 1)

end A156707

/-! ## A156707.P1207046583882009341

`A008683(A068795(2*n+3))^(n+1)`
-/

namespace A156707.P1207046583882009341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A068795 (2 * n + 3)).toNat ^ (n + 1)

end

end A156707.P1207046583882009341

namespace A156707

/-- `A008683(A068795(2*n+3))^(n+1)` -/
def P1207046583882009341.Spec : Prop :=
  ∀ n, P1207046583882009341.a n = A156707 (n + 1)

end A156707

/-!
# A156708: Triangle read by rows, binomial transform of A154325.

The programs for A156708, the canonical program `A156708.P214328452382928940` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156708 has offset 0).

The definition of A156708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156708.P18232611134542797218

`ceil(A104709(n)/(char[∑[n]]+1))`
-/

namespace A156708.P18232611134542797218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104709 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)⌉

end

end A156708.P18232611134542797218

namespace A156708

/-- `ceil(A104709(n)/(char[∑[n]]+1))` -/
def P18232611134542797218.Spec : Prop :=
  ∀ n, P18232611134542797218.a n = A156708 n

end A156708

/-! ## A156708.P214328452382928940

`round(A104709(n)/A035214(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156708

/-- `round(A104709(n)/A035214(n))` -/
def P214328452382928940.Spec : Prop :=
  ∀ n, P214328452382928940.a n = A156708 n

theorem P214328452382928940.correct : P214328452382928940.Spec := by
  intro n
  simp only [A156708]

end A156708

/-! ## A156708.P4749264369094870701

`2*A055248(n)-A091918(n)`
-/

namespace A156708.P4749264369094870701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 n - A091918 n

end

end A156708.P4749264369094870701

namespace A156708

/-- `2*A055248(n)-A091918(n)` -/
def P4749264369094870701.Spec : Prop :=
  ∀ n, P4749264369094870701.a n = A156708 n

end A156708

/-! ## A156708.P4956277837034082631

`ceil(abs(A110814(n)/A035214(n)))`
-/

namespace A156708.P4956277837034082631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A110814 n : ℚ) / (A035214 n : ℚ)|⌉

end

end A156708.P4956277837034082631

namespace A156708

/-- `ceil(abs(A110814(n)/A035214(n)))` -/
def P4956277837034082631.Spec : Prop :=
  ∀ n, P4956277837034082631.a n = A156708 n

end A156708

/-! ## A156708.P8711451222037515320

`ceil(A104709(n)/2*A154325(n))`
-/

namespace A156708.P8711451222037515320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104709 n : ℚ) / 2 * (A154325 n : ℚ)⌉

end

end A156708.P8711451222037515320

namespace A156708

/-- `ceil(A104709(n)/2*A154325(n))` -/
def P8711451222037515320.Spec : Prop :=
  ∀ n, P8711451222037515320.a n = A156708 n

end A156708

/-! ## A156708.P13463012909248866482

`ceil(A104709(n)/2*A238303(n))`
-/

namespace A156708.P13463012909248866482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104709 n : ℚ) / 2 * (A238303 n : ℚ)⌉

end

end A156708.P13463012909248866482

namespace A156708

/-- `ceil(A104709(n)/2*A238303(n))` -/
def P13463012909248866482.Spec : Prop :=
  ∀ n, P13463012909248866482.a n = A156708 n

end A156708

/-! ## A156708.P12843468793486782790

`ceil((2*A055248(n)-A007318(n))/A035214(n))`
-/

namespace A156708.P12843468793486782790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A055248 n - A007318 n : ℚ) / (A035214 n : ℚ)⌉

end

end A156708.P12843468793486782790

namespace A156708

/-- `ceil((2*A055248(n)-A007318(n))/A035214(n))` -/
def P12843468793486782790.Spec : Prop :=
  ∀ n, P12843468793486782790.a n = A156708 n

end A156708

/-! ## A156708.P14994302386443605317

`A008949(A143595(n+1)-1+n)`
-/

namespace A156708.P14994302386443605317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A143595 (n + 1) - 1 + (n : ℤ)).toNat

end

end A156708.P14994302386443605317

namespace A156708

/-- `A008949(A143595(n+1)-1+n)` -/
def P14994302386443605317.Spec : Prop :=
  ∀ n, P14994302386443605317.a n = A156708 n

end A156708

/-!
# A156709: For all numbers k(n) congruent to -1 or +1 (mod 6) starting with k(n) = {5,7,11,13,...}, a(k(n)) is incremented by the congruence (mod 6) if k(n) is prime and by 0 if k(n) is composite.

The programs for A156709, the canonical program `A156709.P4924943972656695821` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156709 has offset 1).

The definition of A156709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156709.P4924943972656695821

`∑[A156706(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156709

/-- `∑[A156706(n+1)]` -/
def P4924943972656695821.Spec : Prop :=
  ∀ n, P4924943972656695821.a n = A156709 (n + 1)

theorem P4924943972656695821.correct : P4924943972656695821.Spec := by
  intro n
  simp only [A156709, Nat.add_sub_cancel]

end A156709

/-! ## A156709.P1586694950346910535

`∑[n-xor(n, A075743(n+1))]`
-/

namespace A156709.P1586694950346910535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A075743 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156709.P1586694950346910535

namespace A156709

/-- `∑[n-xor(n, A075743(n+1))]` -/
def P1586694950346910535.Spec : Prop :=
  ∀ n, P1586694950346910535.a n = A156709 (n + 1)

end A156709

/-! ## A156709.P7033427781687482898

`∑[(A100637(n)-A100637(n+1))^(n+1)]`
-/

namespace A156709.P7033427781687482898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100637 n - A100637 (n + 1)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156709.P7033427781687482898

namespace A156709

/-- `∑[(A100637(n)-A100637(n+1))^(n+1)]` -/
def P7033427781687482898.Spec : Prop :=
  ∀ n, P7033427781687482898.a n = A156709 (n + 1)

end A156709

/-! ## A156709.P7881602253015081021

`∑[A057077(2*(n+1))*A075743(n+1)]`
-/

namespace A156709.P7881602253015081021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * (n + 1)) * A075743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156709.P7881602253015081021

namespace A156709

/-- `∑[A057077(2*(n+1))*A075743(n+1)]` -/
def P7881602253015081021.Spec : Prop :=
  ∀ n, P7881602253015081021.a n = A156709 (n + 1)

end A156709

/-! ## A156709.P13786091123759275674

`∑[A080545(3*n+4)-A010051(3*n+5)]`
-/

namespace A156709.P13786091123759275674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (3 * n + 4) - A010051 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156709.P13786091123759275674

namespace A156709

/-- `∑[A080545(3*n+4)-A010051(3*n+5)]` -/
def P13786091123759275674.Spec : Prop :=
  ∀ n, P13786091123759275674.a n = A156709 (n + 1)

end A156709

/-! ## A156709.P8201889654962338588

`1-A321856(3*n+5)`
-/

namespace A156709.P8201889654962338588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A321856 (3 * n + 5)

end

end A156709.P8201889654962338588

namespace A156709

/-- `1-A321856(3*n+5)` -/
def P8201889654962338588.Spec : Prop :=
  ∀ n, P8201889654962338588.a n = A156709 (n + 1)

end A156709

/-! ## A156709.P12803750134145502741

`∑[A227625(A007310(n+2))]`
-/

namespace A156709.P12803750134145502741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (A007310 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156709.P12803750134145502741

namespace A156709

/-- `∑[A227625(A007310(n+2))]` -/
def P12803750134145502741.Spec : Prop :=
  ∀ n, P12803750134145502741.a n = A156709 (n + 1)

end A156709

/-! ## A156709.P10225991477455329798

`∑[A227625(A047233(n+2)+1)]`
-/

namespace A156709.P10225991477455329798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (A047233 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156709.P10225991477455329798

namespace A156709

/-- `∑[A227625(A047233(n+2)+1)]` -/
def P10225991477455329798.Spec : Prop :=
  ∀ n, P10225991477455329798.a n = A156709 (n + 1)

end A156709

/-!
# A156711: a(n) = 144*n^2 - 161*n + 45.

The programs for A156711, the canonical program `A156711.P11448045918641088681` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156711 has offset 1).

The definition of A156711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)²-161*(n+1)+45` (program `A156711.P11448045918641088681`, by `A156711.P11448045918641088681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156711.P7098160044618301141

`ogf((28+215x+45x^2)/(1-3x+3x^2-x^3))`
-/

namespace A156711.P7098160044618301141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [28, 215, 45] [1, -3, 3, -1] n

end

end A156711.P7098160044618301141

namespace A156711

/-- `ogf((28+215x+45x^2)/(1-3x+3x^2-x^3))` -/
def P7098160044618301141.Spec : Prop :=
  ∀ n, P7098160044618301141.a n = A156711 (n + 1)

end A156711

/-! ## A156711.P11448045918641088681

`144*(n+1)²-161*(n+1)+45`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156711

/-- `144*(n+1)²-161*(n+1)+45` -/
def P11448045918641088681.Spec : Prop :=
  ∀ n, P11448045918641088681.a n = A156711 (n + 1)

theorem P11448045918641088681.correct : P11448045918641088681.Spec := by
  intro n
  simp only [A156711, Nat.add_sub_cancel]

end A156711

/-! ## A156711.P3317903292702670346

`(A051062(n)-1)*A017209(n)`
-/

namespace A156711.P3317903292702670346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051062 n - 1) * A017209 n

end

end A156711.P3317903292702670346

namespace A156711

/-- `(A051062(n)-1)*A017209(n)` -/
def P3317903292702670346.Spec : Prop :=
  ∀ n, P3317903292702670346.a n = A156711 (n + 1)

theorem P3317903292702670346.correct : P3317903292702670346.Spec := by
  intro n
  simp only [A156711, Nat.add_sub_cancel, A156711.P3317903292702670346.a, A156711.P11448045918641088681.a, A017209, A017209.P14094936957545695605.a, A051062, A051062.P11177069363644223625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156711

/-! ## A156711.P17686656956022846145

`(A017209(n)+A017017(n))*A017209(n)`
-/

namespace A156711.P17686656956022846145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n + A017017 n) * A017209 n

end

end A156711.P17686656956022846145

namespace A156711

/-- `(A017209(n)+A017017(n))*A017209(n)` -/
def P17686656956022846145.Spec : Prop :=
  ∀ n, P17686656956022846145.a n = A156711 (n + 1)

theorem P17686656956022846145.correct : P17686656956022846145.Spec := by
  intro n
  simp only [A156711, Nat.add_sub_cancel, A156711.P17686656956022846145.a, A156711.P11448045918641088681.a, A017017, A017017.P16632027915442464889.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156711

/-! ## A156711.P8248722982234709991

`(9*n+4)*A004771(2*n)`
-/

namespace A156711.P8248722982234709991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 4 : ℤ) * A004771 (2 * n)

end

end A156711.P8248722982234709991

namespace A156711

/-- `(9*n+4)*A004771(2*n)` -/
def P8248722982234709991.Spec : Prop :=
  ∀ n, P8248722982234709991.a n = A156711 (n + 1)

theorem P8248722982234709991.correct : P8248722982234709991.Spec := by
  intro n
  simp only [A156711, Nat.add_sub_cancel, A156711.P8248722982234709991.a, A156711.P11448045918641088681.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156711

/-! ## A156711.P12614032363756855337

`A004771(2*n)*A017257(2*n)/2`
-/

namespace A156711.P12614032363756855337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004771 (2 * n) * A017257 (2 * n) : ℚ) / 2

end

end A156711.P12614032363756855337

namespace A156711

/-- `A004771(2*n)*A017257(2*n)/2` -/
def P12614032363756855337.Spec : Prop :=
  ∀ n, P12614032363756855337.a n = (A156711 (n + 1) : ℚ)

theorem P12614032363756855337.correct : P12614032363756855337.Spec := by
  intro n
  simp only [A156711, Nat.add_sub_cancel, A156711.P12614032363756855337.a, A156711.P11448045918641088681.a, A004771, A004771.P15562682025386998074.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156711

/-! ## A156711.P14600339027019749164

`A004771(2*n)*A016777(A016777(n))`
-/

namespace A156711.P14600339027019749164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (2 * n) * A016777 (A016777 n).toNat

end

end A156711.P14600339027019749164

namespace A156711

/-- `A004771(2*n)*A016777(A016777(n))` -/
def P14600339027019749164.Spec : Prop :=
  ∀ n, P14600339027019749164.a n = A156711 (n + 1)

end A156711

/-! ## A156711.P6957044974521816281

`(A154612(n)-n)*A016777(A016777(n))`
-/

namespace A156711.P6957044974521816281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154612 n - (n : ℤ)) * A016777 (A016777 n).toNat

end

end A156711.P6957044974521816281

namespace A156711

/-- `(A154612(n)-n)*A016777(A016777(n))` -/
def P6957044974521816281.Spec : Prop :=
  ∀ n, P6957044974521816281.a n = A156711 (n + 1)

end A156711

/-! ## A156711.P7188819718696039548

`A016777(A016777(n))*A133655(2*n+1)`
-/

namespace A156711.P7188819718696039548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016777 n).toNat * A133655 (2 * n + 1)

end

end A156711.P7188819718696039548

namespace A156711

/-- `A016777(A016777(n))*A133655(2*n+1)` -/
def P7188819718696039548.Spec : Prop :=
  ∀ n, P7188819718696039548.a n = A156711 (n + 1)

end A156711

/-! ## A156711.P12032797946800363729

`(A144619(n)-A016777(n))*A016777(A016777(n))`
-/

namespace A156711.P12032797946800363729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144619 n - A016777 n) * A016777 (A016777 n).toNat

end

end A156711.P12032797946800363729

namespace A156711

/-- `(A144619(n)-A016777(n))*A016777(A016777(n))` -/
def P12032797946800363729.Spec : Prop :=
  ∀ n, P12032797946800363729.a n = A156711 (n + 1)

end A156711

/-!
# A156712: Indices of star numbers (A003154) that are also triangular numbers (A000217).

The programs for A156712, the canonical program `A156712.P15182971212805733980` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156712 has offset 1).

The definition of A156712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156712.P1307482983900652124

`ogf((1-8x+x^2)/(1-15x+15x^2-x^3))`
-/

namespace A156712.P1307482983900652124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8, 1] [1, -15, 15, -1] n

end

end A156712.P1307482983900652124

namespace A156712

/-- `ogf((1-8x+x^2)/(1-15x+15x^2-x^3))` -/
def P1307482983900652124.Spec : Prop :=
  ∀ n, P1307482983900652124.a n = A156712 (n + 1)

end A156712

/-! ## A156712.P15182971212805733980

`(4+(2+sqrt(3))*(7-4*sqrt(3))^(n+1)+(2-sqrt(3))*(7+4*sqrt(3))^(n+1))/8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156712

/-- `(4+(2+sqrt(3))*(7-4*sqrt(3))^(n+1)+(2-sqrt(3))*(7+4*sqrt(3))^(n+1))/8` -/
def P15182971212805733980.Spec : Prop :=
  ∀ n, P15182971212805733980.a n = (A156712 (n + 1) : ℝ)

end A156712

/-! ## A156712.P8910083411955896535

`floor((sqrt(3)+2)²*a(n-1))-6` with `a(0)=1`
-/

namespace A156712.P8910083411955896535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ - 6

end

end A156712.P8910083411955896535

namespace A156712

/-- `floor((sqrt(3)+2)²*a(n-1))-6` -/
def P8910083411955896535.Spec : Prop :=
  ∀ n, P8910083411955896535.a n = A156712 (n + 1)

end A156712

/-! ## A156712.P5339378542846431487

`14*a(n-1)-a(n-2)-6` with `a(0)=1, a(1)=7`
-/

namespace A156712.P5339378542846431487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  14 * a (n - 1) - a (n - 2) - 6

end

end A156712.P5339378542846431487

namespace A156712

/-- `14*a(n-1)-a(n-2)-6` -/
def P5339378542846431487.Spec : Prop :=
  ∀ n, P5339378542846431487.a n = A156712 (n + 1)

end A156712

/-! ## A156712.P4541952468488206101

`round(A157089(n)/4)`
-/

namespace A156712.P4541952468488206101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157089 n : ℚ) / 4)

end

end A156712.P4541952468488206101

namespace A156712

/-- `round(A157089(n)/4)` -/
def P4541952468488206101.Spec : Prop :=
  ∀ n, P4541952468488206101.a n = A156712 (n + 1)

end A156712

/-! ## A156712.P17947943498890057917

`2*A076140(n)+1`
-/

namespace A156712.P17947943498890057917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076140 n + 1

end

end A156712.P17947943498890057917

namespace A156712

/-- `2*A076140(n)+1` -/
def P17947943498890057917.Spec : Prop :=
  ∀ n, P17947943498890057917.a n = A156712 (n + 1)

end A156712

/-! ## A156712.P13927766608240588384

`3*A217855(n)+1`
-/

namespace A156712.P13927766608240588384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A217855 n + 1

end

end A156712.P13927766608240588384

namespace A156712

/-- `3*A217855(n)+1` -/
def P13927766608240588384.Spec : Prop :=
  ∀ n, P13927766608240588384.a n = A156712 (n + 1)

end A156712

/-! ## A156712.P11718419054610004550

`6*A076139(n)+1`
-/

namespace A156712.P11718419054610004550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A076139 n + 1

end

end A156712.P11718419054610004550

namespace A156712

/-- `6*A076139(n)+1` -/
def P11718419054610004550.Spec : Prop :=
  ∀ n, P11718419054610004550.a n = A156712 (n + 1)

end A156712

/-! ## A156712.P8451412677037259213

`ceil((A001834(n)/2)²)`
-/

namespace A156712.P8451412677037259213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A001834 n : ℚ) / 2) ^ 2⌉

end

end A156712.P8451412677037259213

namespace A156712

/-- `ceil((A001834(n)/2)²)` -/
def P8451412677037259213.Spec : Prop :=
  ∀ n, P8451412677037259213.a n = A156712 (n + 1)

end A156712

/-! ## A156712.P271949774988476421

`record[ceil(A108946(n)/2)]`
-/

namespace A156712.P271949774988476421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108946 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156712.P271949774988476421

namespace A156712

/-- `record[ceil(A108946(n)/2)]` -/
def P271949774988476421.Spec : Prop :=
  ∀ n, P271949774988476421.a n = A156712 (n + 1)

end A156712

/-!
# A156715: Let k=1; then T(n,m) = (((2*k+1)/(m+k+1))*binomial(n-1-k, m-k)*binomial(n+k, m+k) + ((2*k+1)/(n-m+k))*binomial(n-1-k, n-m-1-k)*binomial(n+k, n-m-1+k)), irregular triangle.

The programs for A156715, there is no canonical definition to state claims against.
-/

/-! ## A156715.P17602218968574078573

`A193532(A174449(n+1))`
-/

namespace A156715.P17602218968574078573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193532 (A174449 (n + 1)).toNat

end

end A156715.P17602218968574078573

/-! ## A156715.P9025048481363535574

`A376588(A086645(n+1))`
-/

namespace A156715.P9025048481363535574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376588 (A086645 (n + 1)).toNat

end

end A156715.P9025048481363535574

/-! ## A156715.P2790442285599947464

`A134745(A372066(n+2))`
-/

namespace A156715.P2790442285599947464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134745 (A372066 (n + 2)).toNat

end

end A156715.P2790442285599947464

/-! ## A156715.P7749023714493889816

`A347454(A201700(n+2))`
-/

namespace A156715.P7749023714493889816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (A201700 (n + 2)).toNat

end

end A156715.P7749023714493889816

/-!
# A156716: Let k=2; then T(n,m) = (((2*k+1)/(m+k+1))*binomial(n-1-k, m-k)*binomial(n+k, m+k) + ((2*k+1)/(n-m+k))*binomial(n-1-k, n-m-1-k)*binomial(n+k, n-m-1+k)), irregular triangle.

The programs for A156716, there is no canonical definition to state claims against.
-/

/-! ## A156716.P17096051552781052018

`lcm(5, ∑{e}[A003683(n+3), 2-#])`
-/

namespace A156716.P17096051552781052018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ)))

end

end A156716.P17096051552781052018

/-! ## A156716.P14091599713451008367

`5*A056898(A305578(n))`
-/

namespace A156716.P14091599713451008367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A056898 (A305578 n).toNat

end

end A156716.P14091599713451008367

/-! ## A156716.P16014009970208757100

`lcm(5, A005811(A349299(n)))`
-/

namespace A156716.P16014009970208757100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A005811 (A349299 n).toNat)

end

end A156716.P16014009970208757100

/-! ## A156716.P13543391982937274796

`5*A204065(A349494(3^n))`
-/

namespace A156716.P13543391982937274796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A204065 (A349494 (3 ^ n)).toNat

end

end A156716.P13543391982937274796

/-!
# A156717: Triangle read by rows: T(n,m) = binomial(n + m - 1, 2*m) + binomial(2*n - m - 2, 2*(n - m - 1)).

The programs for A156717, the canonical program `A156717.P8230165376730895281` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156717 has offset 1).

The definition of A156717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156717.P8230165376730895281

`A085478(n)+A054142(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156717

/-- `A085478(n)+A054142(n)` -/
def P8230165376730895281.Spec : Prop :=
  ∀ n, P8230165376730895281.a n = A156717 (n + 1)

theorem P8230165376730895281.correct : P8230165376730895281.Spec := by
  intro n
  simp only [A156717, Nat.add_sub_cancel]

end A156717

/-! ## A156717.P14737866352031993898

`A085478(n)+abs(A076756(n))`
-/

namespace A156717.P14737866352031993898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n + |A076756 n|

end

end A156717.P14737866352031993898

namespace A156717

/-- `A085478(n)+abs(A076756(n))` -/
def P14737866352031993898.Spec : Prop :=
  ∀ n, P14737866352031993898.a n = A156717 (n + 1)

end A156717

/-! ## A156717.P8869074076289742618

`A054142(n)+A054142(A061579(n))`
-/

namespace A156717.P8869074076289742618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n + A054142 (A061579 n).toNat

end

end A156717.P8869074076289742618

namespace A156717

/-- `A054142(n)+A054142(A061579(n))` -/
def P8869074076289742618.Spec : Prop :=
  ∀ n, P8869074076289742618.a n = A156717 (n + 1)

end A156717

/-! ## A156717.P13216146600279112452

`A085478(A061579(n))+A085478(n)`
-/

namespace A156717.P13216146600279112452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A061579 n).toNat + A085478 n

end

end A156717.P13216146600279112452

namespace A156717

/-- `A085478(A061579(n))+A085478(n)` -/
def P13216146600279112452.Spec : Prop :=
  ∀ n, P13216146600279112452.a n = A156717 (n + 1)

end A156717

/-! ## A156717.P5532960713089193982

`A054142(n)+A054142(A114327(n)+n)`
-/

namespace A156717.P5532960713089193982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n + A054142 (A114327 n + (n : ℤ)).toNat

end

end A156717.P5532960713089193982

namespace A156717

/-- `A054142(n)+A054142(A114327(n)+n)` -/
def P5532960713089193982.Spec : Prop :=
  ∀ n, P5532960713089193982.a n = A156717 (n + 1)

end A156717

/-! ## A156717.P10833488779977134946

`A054142(A038722(n+2))+A054142(n)`
-/

namespace A156717.P10833488779977134946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A038722 (n + 2)).toNat + A054142 n

end

end A156717.P10833488779977134946

namespace A156717

/-- `A054142(A038722(n+2))+A054142(n)` -/
def P10833488779977134946.Spec : Prop :=
  ∀ n, P10833488779977134946.a n = A156717 (n + 1)

end A156717

/-! ## A156717.P16995008788998040625

`A085478(A038722(n+2))+A085478(n)`
-/

namespace A156717.P16995008788998040625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A038722 (n + 2)).toNat + A085478 n

end

end A156717.P16995008788998040625

namespace A156717

/-- `A085478(A038722(n+2))+A085478(n)` -/
def P16995008788998040625.Spec : Prop :=
  ∀ n, P16995008788998040625.a n = A156717 (n + 1)

end A156717

/-! ## A156717.P12300703831030814550

`A054142(n)+A171822(n)/A054142(n)`
-/

namespace A156717.P12300703831030814550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054142 n : ℚ) + (A171822 n : ℚ) / (A054142 n : ℚ)

end

end A156717.P12300703831030814550

namespace A156717

/-- `A054142(n)+A171822(n)/A054142(n)` -/
def P12300703831030814550.Spec : Prop :=
  ∀ n, P12300703831030814550.a n = (A156717 (n + 1) : ℚ)

end A156717

/-! ## A156717.P17145143940101811154

`A085478(n)+A171822(n)/A085478(n)`
-/

namespace A156717.P17145143940101811154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n : ℚ) + (A171822 n : ℚ) / (A085478 n : ℚ)

end

end A156717.P17145143940101811154

namespace A156717

/-- `A085478(n)+A171822(n)/A085478(n)` -/
def P17145143940101811154.Spec : Prop :=
  ∀ n, P17145143940101811154.a n = (A156717 (n + 1) : ℚ)

end A156717

/-!
# A156718: Numbers k such that k^2 == -1 (mod 13^2).

The programs for A156718, the canonical program `A156718.P13105148531650211504` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156718 has offset 1).

The definition of A156718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156718.P10032248848282232544

`ogf((70+29x+70x^2)/(1-x-x^2+x^3))`
-/

namespace A156718.P10032248848282232544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [70, 29, 70] [1, -1, -1, 1] n

end

end A156718.P10032248848282232544

namespace A156718

/-- `ogf((70+29x+70x^2)/(1-x-x^2+x^3))` -/
def P10032248848282232544.Spec : Prop :=
  ∀ n, P10032248848282232544.a n = A156718 (n + 1)

end A156718

/-! ## A156718.P13105148531650211504

`floor((n+1)/2)*169-70*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156718

/-- `floor((n+1)/2)*169-70*(-1)^(n+1)` -/
def P13105148531650211504.Spec : Prop :=
  ∀ n, P13105148531650211504.a n = A156718 (n + 1)

theorem P13105148531650211504.correct : P13105148531650211504.Spec := by
  intro n
  simp only [A156718, Nat.add_sub_cancel]

end A156718

/-! ## A156718.P4976301368308775071

`∩[A056025(n+1), A155086(n+1)]`
-/

namespace A156718.P4976301368308775071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156718.P4976301368308775071

namespace A156718

/-- `∩[A056025(n+1), A155086(n+1)]` -/
def P4976301368308775071.Spec : Prop :=
  ∀ n, (P4976301368308775071.a n : ℤ) = A156718 (n + 1)

end A156718

/-! ## A156718.P4490476957931119591

`A155086(A016789(n)+∑[A040080(n)])`
-/

namespace A156718.P4490476957931119591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (A016789 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156718.P4490476957931119591

namespace A156718

/-- `A155086(A016789(n)+∑[A040080(n)])` -/
def P4490476957931119591.Spec : Prop :=
  ∀ n, P4490476957931119591.a n = A156718 (n + 1)

end A156718

/-! ## A156718.P16667109857845958833

`A155086(A155096(n+1)+n+1-A047221(n+1))`
-/

namespace A156718.P16667109857845958833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (A155096 (n + 1) + ((n + 1 : ℤ) - A047221 (n + 1))).toNat

end

end A156718.P16667109857845958833

namespace A156718

/-- `A155086(A155096(n+1)+n+1-A047221(n+1))` -/
def P16667109857845958833.Spec : Prop :=
  ∀ n, P16667109857845958833.a n = A156718 (n + 1)

end A156718

/-!
# A156719: a(n) = 144*n^2 - 127*n + 28.

The programs for A156719, the canonical program `A156719.P3038995035473251190` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156719 has offset 1).

The definition of A156719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)²-127*(n+1)+28` (program `A156719.P3038995035473251190`, by `A156719.P3038995035473251190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156719.P11034028807958664440

`ogf((45+215x+28x^2)/(1-3x+3x^2-x^3))`
-/

namespace A156719.P11034028807958664440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [45, 215, 28] [1, -3, 3, -1] n

end

end A156719.P11034028807958664440

namespace A156719

/-- `ogf((45+215x+28x^2)/(1-3x+3x^2-x^3))` -/
def P11034028807958664440.Spec : Prop :=
  ∀ n, P11034028807958664440.a n = A156719 (n + 1)

end A156719

/-! ## A156719.P3038995035473251190

`144*(n+1)²-127*(n+1)+28`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156719

/-- `144*(n+1)²-127*(n+1)+28` -/
def P3038995035473251190.Spec : Prop :=
  ∀ n, P3038995035473251190.a n = A156719 (n + 1)

theorem P3038995035473251190.correct : P3038995035473251190.Spec := by
  intro n
  simp only [A156719, Nat.add_sub_cancel]

end A156719

/-! ## A156719.P11638350159916166802

`(A017221(n)+A017029(n))*A017221(n)`
-/

namespace A156719.P11638350159916166802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017221 n + A017029 n) * A017221 n

end

end A156719.P11638350159916166802

namespace A156719

/-- `(A017221(n)+A017029(n))*A017221(n)` -/
def P11638350159916166802.Spec : Prop :=
  ∀ n, P11638350159916166802.a n = A156719 (n + 1)

theorem P11638350159916166802.correct : P11638350159916166802.Spec := by
  intro n
  simp only [A156719, Nat.add_sub_cancel, A156719.P11638350159916166802.a, A156719.P3038995035473251190.a, A017029, A017029.P18040034652068019793.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156719

/-! ## A156719.P645135800988408597

`(A017461(n)+A016885(n))*A017221(n)`
-/

namespace A156719.P645135800988408597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017461 n + A016885 n) * A017221 n

end

end A156719.P645135800988408597

namespace A156719

/-- `(A017461(n)+A016885(n))*A017221(n)` -/
def P645135800988408597.Spec : Prop :=
  ∀ n, P645135800988408597.a n = A156719 (n + 1)

theorem P645135800988408597.correct : P645135800988408597.Spec := by
  intro n
  simp only [A156719, Nat.add_sub_cancel, A156719.P645135800988408597.a, A156719.P3038995035473251190.a, A016885, A016885.P12442016633976001399.a, A017221, A017221.P17146920171309072654.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156719

/-! ## A156719.P14739515574008860034

`(A269044(n)+A016789(n))*A017221(n)`
-/

namespace A156719.P14739515574008860034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A269044 n + A016789 n) * A017221 n

end

end A156719.P14739515574008860034

namespace A156719

/-- `(A269044(n)+A016789(n))*A017221(n)` -/
def P14739515574008860034.Spec : Prop :=
  ∀ n, P14739515574008860034.a n = A156719 (n + 1)

theorem P14739515574008860034.correct : P14739515574008860034.Spec := by
  intro n
  simp only [A156719, Nat.add_sub_cancel, A156719.P14739515574008860034.a, A156719.P3038995035473251190.a, A016789, A016789.P8277564872725303677.a, A017221, A017221.P17146920171309072654.a, A269044, A269044.P7228503288842382504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156719

/-! ## A156719.P10095723003940882839

`(8*n+5+n)*A004768(2*n)`
-/

namespace A156719.P10095723003940882839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 5 + n : ℤ) * A004768 (2 * n)

end

end A156719.P10095723003940882839

namespace A156719

/-- `(8*n+5+n)*A004768(2*n)` -/
def P10095723003940882839.Spec : Prop :=
  ∀ n, P10095723003940882839.a n = A156719 (n + 1)

theorem P10095723003940882839.correct : P10095723003940882839.Spec := by
  intro n
  simp only [A156719, Nat.add_sub_cancel, A156719.P10095723003940882839.a, A156719.P3038995035473251190.a, A004768, A004768.P10813831617649309423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156719

/-! ## A156719.P12021000210380238309

`(A008590(2*n+1)+1)*(9*n+5)`
-/

namespace A156719.P12021000210380238309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008590 (2 * n + 1) + 1) * (9 * n + 5 : ℤ)

end

end A156719.P12021000210380238309

namespace A156719

/-- `(A008590(2*n+1)+1)*(9*n+5)` -/
def P12021000210380238309.Spec : Prop :=
  ∀ n, P12021000210380238309.a n = A156719 (n + 1)

theorem P12021000210380238309.correct : P12021000210380238309.Spec := by
  intro n
  simp only [A156719, Nat.add_sub_cancel, A156719.P12021000210380238309.a, A156719.P3038995035473251190.a, A008590, A008590.P15621076316638553644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156719

/-! ## A156719.P3509423982503186179

`(8*n+5+n)*A017077(2*n+1)`
-/

namespace A156719.P3509423982503186179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 5 + n : ℤ) * A017077 (2 * n + 1)

end

end A156719.P3509423982503186179

namespace A156719

/-- `(8*n+5+n)*A017077(2*n+1)` -/
def P3509423982503186179.Spec : Prop :=
  ∀ n, P3509423982503186179.a n = A156719 (n + 1)

theorem P3509423982503186179.correct : P3509423982503186179.Spec := by
  intro n
  simp only [A156719, Nat.add_sub_cancel, A156719.P3509423982503186179.a, A156719.P3038995035473251190.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156719

/-! ## A156719.P5867237444740279627

`A157262(4*n+3)/4`
-/

namespace A156719.P5867237444740279627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157262 (4 * n + 3) : ℚ) / 4

end

end A156719.P5867237444740279627

namespace A156719

/-- `A157262(4*n+3)/4` -/
def P5867237444740279627.Spec : Prop :=
  ∀ n, P5867237444740279627.a n = (A156719 (n + 1) : ℚ)

theorem P5867237444740279627.correct : P5867237444740279627.Spec := by
  intro n
  simp only [A156719, Nat.add_sub_cancel, A156719.P5867237444740279627.a, A156719.P3038995035473251190.a, A157262, A157262.P13376411005116522935.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156719

/-! ## A156719.P1546887936252853902

`A004273(A017221(n)-n)*A017221(n)`
-/

namespace A156719.P1546887936252853902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A017221 n - (n : ℤ)).toNat * A017221 n

end

end A156719.P1546887936252853902

namespace A156719

/-- `A004273(A017221(n)-n)*A017221(n)` -/
def P1546887936252853902.Spec : Prop :=
  ∀ n, P1546887936252853902.a n = A156719 (n + 1)

end A156719

/-! ## A156719.P2605699446406827142

`A017221(n)*A042948(A017221(n)-n)`
-/

namespace A156719.P2605699446406827142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n * A042948 (A017221 n - (n : ℤ)).toNat

end

end A156719.P2605699446406827142

namespace A156719

/-- `A017221(n)*A042948(A017221(n)-n)` -/
def P2605699446406827142.Spec : Prop :=
  ∀ n, P2605699446406827142.a n = A156719 (n + 1)

end A156719

/-!
# A156721: a(n) = 57122*n^2 - 47320*n + 9801.

The programs for A156721, the canonical program `A156721.P6408730910130201456` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156721 has offset 1).

The definition of A156721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156721.P6408730910130201456

`round(sqrt(A156639(n+1))*A156627(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A156721

/-- `round(sqrt(A156639(n+1))*A156627(n+1))` -/
def P6408730910130201456.Spec : Prop :=
  ∀ n, P6408730910130201456.a n = A156721 (n + 1)

theorem P6408730910130201456.correct : P6408730910130201456.Spec := by
  intro n
  simp only [A156721, Nat.add_sub_cancel]

end A156721

/-! ## A156721.P8138247223268836344

`2*A156718(2*(n+1))²+1`
-/

namespace A156721.P8138247223268836344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156718 (2 * (n + 1)) ^ 2 + 1

end

end A156721.P8138247223268836344

namespace A156721

/-- `2*A156718(2*(n+1))²+1` -/
def P8138247223268836344.Spec : Prop :=
  ∀ n, P8138247223268836344.a n = A156721 (n + 1)

end A156721

/-! ## A156721.P6452880614464137807

`A058331(A156718(2*(1+n)))`
-/

namespace A156721.P6452880614464137807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A156718 (2 * (1 + n))).toNat

end

end A156721.P6452880614464137807

namespace A156721

/-- `A058331(A156718(2*(1+n)))` -/
def P6452880614464137807.Spec : Prop :=
  ∀ n, P6452880614464137807.a n = A156721 (n + 1)

end A156721

/-! ## A156721.P12949862729986912557

`A058331(A156627(n+1)/26)`
-/

namespace A156721.P12949862729986912557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (SequenceMachineLib.roundAway ((A156627 (n + 1) : ℚ) / 26)).toNat

end

end A156721.P12949862729986912557

namespace A156721

/-- `A058331(A156627(n+1)/26)` -/
def P12949862729986912557.Spec : Prop :=
  ∀ n, P12949862729986912557.a n = A156721 (n + 1)

end A156721

/-! ## A156721.P16161282758376472719

`A058331(A269044(A269044(n))+1)`
-/

namespace A156721.P16161282758376472719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A269044 (A269044 n).toNat + 1).toNat

end

end A156721.P16161282758376472719

namespace A156721

/-- `A058331(A269044(A269044(n))+1)` -/
def P16161282758376472719.Spec : Prop :=
  ∀ n, P16161282758376472719.a n = A156721 (n + 1)

end A156721

/-!
# A156722: Triangle T(n, k, m) = t(n,m)/( t(k,m) * t(n-k,m) ) with T(n, 0, m) = T(n, n, m) = 1, where t(n, m) = Product_{j=1..n} Product_{i=1..j-1} ( 1 - (m+1)*(3*i-2) ) and m = 1, read by rows.

The programs for A156722, there is no canonical definition to state claims against.
-/

/-! ## A156722.P4278762187930524893

`A354347(A172302(n+1))`
-/

namespace A156722.P4278762187930524893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A172302 (n + 1)).toNat

end

end A156722.P4278762187930524893

/-! ## A156722.P12058178035094276267

`floor(A176339(A004906(n+1))/ϕ²)+1`
-/

namespace A156722.P12058178035094276267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176339 (A004906 (n + 1)).toNat : ℝ) / Real.goldenRatio ^ 2⌋ + 1

end

end A156722.P12058178035094276267

/-! ## A156722.P14193421804030245599

`A229824(A151799(n+3)^A342980(n))`
-/

namespace A156722.P14193421804030245599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229824 (SequenceMachineLib.roundAway ((A151799 (n + 3) : ℚ) ^ (A342980 n : ℤ))).toNat

end

end A156722.P14193421804030245599

/-!
# A156723: a(n)=A156253(n)-A156251(n).

The programs for A156723, there is no canonical definition to state claims against.
-/

/-! ## A156723.P13723496716159827399

`A156253(n+1)-A156251(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156723.P13723496716159827399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1) - A156251 (n + 1)

end

end A156723.P13723496716159827399

/-! ## A156723.P6120780612922247906

`(3*n+2)%A079726(n+1)`
-/

namespace A156723.P6120780612922247906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n + 2 : ℤ) (A079726 (n + 1))

end

end A156723.P6120780612922247906

/-! ## A156723.P8324902194010638051

`∑[2*char[A054353(n+1)]]-n`
-/

namespace A156723.P8324902194010638051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A156723.P8324902194010638051

/-! ## A156723.P12079819717962454520

`n-2*∑[char[A078649(n+1)]]`
-/

namespace A156723.P12079819717962454520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A156723.P12079819717962454520

/-! ## A156723.P3951430632830205274

`∑[2*char[∑[A000002(n+1)]]]-n`
-/

namespace A156723.P3951430632830205274
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A156723.P3951430632830205274

/-! ## A156723.P7236446463477774057

`∑[2*char[A216345(n+2)-1]]-n`
-/

namespace A156723.P7236446463477774057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A156723.P7236446463477774057

/-! ## A156723.P4109624551582135470

`2*∑[Δ[A123594(n+2)]²]-(n+2)`
-/

namespace A156723.P4109624551582135470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 2 : ℤ)

end

end A156723.P4109624551582135470

/-! ## A156723.P15739100397820311057

`A005843(A156253(n+1)-1)-n`
-/

namespace A156723.P15739100397820311057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A156253 (n + 1) - 1).toNat - (n : ℤ)

end

end A156723.P15739100397820311057

/-! ## A156723.P4064243191216433509

`n-2*A074286(A156351(n+1))`
-/

namespace A156723.P4064243191216433509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A074286 (A156351 (n + 1)).toNat

end

end A156723.P4064243191216433509

/-! ## A156723.P13103397923618819567

`A156351(n+1)+A157687(n+1)-A156251(n+1)`
-/

namespace A156723.P13103397923618819567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (n + 1) + (A157687 (n + 1) - A156251 (n + 1))

end

end A156723.P13103397923618819567

/-!
# A156724: a(n)=A156253(2n)-A156251(2n).

The programs for A156724, there is no canonical definition to state claims against.
-/

/-! ## A156724.P7312695532249709110

`A156253(2*(n+1))-A156251(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156724.P7312695532249709110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * (n + 1)) - A156251 (2 * (n + 1))

end

end A156724.P7312695532249709110

/-! ## A156724.P2294328483868020598

`2*(A156351(Δ[n²])-n)-1`
-/

namespace A156724.P2294328483868020598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A156351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)) - 1

end

end A156724.P2294328483868020598

/-! ## A156724.P2854772306570005954

`abs(1-2*(A156351(2*n+1)-n))`
-/

namespace A156724.P2854772306570005954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * (A156351 (2 * n + 1) - (n : ℤ))|

end

end A156724.P2854772306570005954

/-! ## A156724.P10489812193374338480

`A004273(A156351(Δ[n²])-n)`
-/

namespace A156724.P10489812193374338480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A156351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)).toNat

end

end A156724.P10489812193374338480

/-! ## A156724.P12191276220193185054

`A053229(A156351(Δ[n²])-n)`
-/

namespace A156724.P12191276220193185054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (A156351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)).toNat

end

end A156724.P12191276220193185054

/-! ## A156724.P17052801826337944675

`A060747(A156351(Δ[n²])-n)`
-/

namespace A156724.P17052801826337944675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A156351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)).toNat

end

end A156724.P17052801826337944675

/-! ## A156724.P11807341039090508841

`A247328(A156351(Δ[n²])-n)`
-/

namespace A156724.P11807341039090508841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (A156351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)).toNat

end

end A156724.P11807341039090508841

/-! ## A156724.P1514740674751279554

`A283002(A156351(Δ[n²])-n)`
-/

namespace A156724.P1514740674751279554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283002 (A156351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)).toNat

end

end A156724.P1514740674751279554

/-! ## A156724.P4787375761150060647

`A317107(A156351(Δ[n²])-n)`
-/

namespace A156724.P4787375761150060647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317107 (A156351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)).toNat

end

end A156724.P4787375761150060647

/-! ## A156724.P10617769070224213547

`A317439(A156351(Δ[n²])-n)`
-/

namespace A156724.P10617769070224213547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (A156351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)).toNat

end

end A156724.P10617769070224213547

/-!
# A156726: a(n)=A156253(2n-1)-A156251(2n-1).

The programs for A156726, there is no canonical definition to state claims against.
-/

/-! ## A156726.P4648820572584109003

`A156253(2*(n+1)-1)-A156251(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156726.P4648820572584109003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * (n + 1) - 1) - A156251 (2 * (n + 1) - 1)

end

end A156726.P4648820572584109003

/-! ## A156726.P16075656036290309596

`∑[2*A156731(round(acot(n)+n))]`
-/

namespace A156726.P16075656036290309596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156731 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156726.P16075656036290309596

/-! ## A156726.P13406736965571085134

`∑[2*A156731(abs(1-n)+1)]`
-/

namespace A156726.P13406736965571085134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156731 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156726.P13406736965571085134

/-! ## A156726.P4653503259084578562

`2*(A156253(Δ[n²])-(n+1))`
-/

namespace A156726.P4653503259084578562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A156253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ))

end

end A156726.P4653503259084578562

/-! ## A156726.P4676230546860733629

`2*(comp[A074273(n+1)-1]-n)`
-/

namespace A156726.P4676230546860733629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074273 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A156726.P4676230546860733629

/-! ## A156726.P15726848803342707179

`2*(A156253(2*n+1)-1-n)`
-/

namespace A156726.P15726848803342707179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A156253 (2 * n + 1) - 1 - (n : ℤ))

end

end A156726.P15726848803342707179

/-! ## A156726.P990708893405721216

`∑[2*char[A074274(n)+a(n-1)-1]]` with `a(0)=3`
-/

namespace A156726.P990708893405721216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A074274 n + f2 (n - 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156726.P990708893405721216

/-! ## A156726.P11905569966655146364

`2*∑[A156731(A028310(n))]`
-/

namespace A156726.P11905569966655146364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156731 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156726.P11905569966655146364

/-! ## A156726.P14187344424456904292

`A005843(A156253(Δ[n²])-(n+1))`
-/

namespace A156726.P14187344424456904292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A156253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)).toNat

end

end A156726.P14187344424456904292

/-! ## A156726.P7271408031875899568

`A005843(A156253(Δ[n²])%(n+1))`
-/

namespace A156726.P7271408031875899568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A156253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (n + 1 : ℤ)).toNat

end

end A156726.P7271408031875899568

/-!
# A156727: Triangle T(n, k, m) = t(n,m)/( t(k,m) * t(n-k,m) ) with T(n, 0, m) = T(n, n, m) = 1, where t(n, m) = Product_{j=1..n} Product_{i=1..j-1} ( 1 - (m+1)*(3*i-2) ) and m = 3, read by rows.

The programs for A156727, there is no canonical definition to state claims against.
-/

/-! ## A156727.P8797328345790277453

`3^(col(n)*(row(n)-col(n)))*A156696(n)`
-/

namespace A156727.P8797328345790277453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ) * (A156696 n : ℚ)

end

end A156727.P8797328345790277453

/-! ## A156727.P2766233579748859266

`A118180(n)*A156696(n)`
-/

namespace A156727.P2766233579748859266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118180 n * A156696 n

end

end A156727.P2766233579748859266

/-! ## A156727.P11922191955328251023

`A003963(A118190(n))*A156696(n)`
-/

namespace A156727.P11922191955328251023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A118190 n).toNat * A156696 n

end

end A156727.P11922191955328251023

/-! ## A156727.P7191013142481535653

`A000005(A156690(n)²)*A156696(n)`
-/

namespace A156727.P7191013142481535653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156690 n ^ 2).toNat * A156696 n

end

end A156727.P7191013142481535653

/-! ## A156727.P16325888836376209479

`A118180(n)*A134658(A116469(n+1))`
-/

namespace A156727.P16325888836376209479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118180 n * A134658 (A116469 (n + 1)).toNat

end

end A156727.P16325888836376209479

/-!
# A156728: a(n) = abs(A054354(n)).

The programs for A156728, the canonical program `A156728.P5383628148153885775` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156728 has offset 1).

The definition of A156728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156728.P5082650024723824534

`abs(A054354(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156728.P5082650024723824534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054354 (n + 1)|

end

end A156728.P5082650024723824534

namespace A156728

/-- `abs(A054354(n+1))` -/
def P5082650024723824534.Spec : Prop :=
  ∀ n, P5082650024723824534.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P4314853061382283902

`(A000002(n+1)+A000002(n+2))%2`
-/

namespace A156728.P4314853061382283902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (n + 1) + A000002 (n + 2)) 2

end

end A156728.P4314853061382283902

namespace A156728

/-- `(A000002(n+1)+A000002(n+2))%2` -/
def P4314853061382283902.Spec : Prop :=
  ∀ n, P4314853061382283902.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P5383628148153885775

`A156253(n+2)-A156253(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156728

/-- `A156253(n+2)-A156253(n+1)` -/
def P5383628148153885775.Spec : Prop :=
  ∀ n, P5383628148153885775.a n = A156728 (n + 1)

theorem P5383628148153885775.correct : P5383628148153885775.Spec := by
  intro n
  simp only [A156728, Nat.add_sub_cancel]

end A156728

/-! ## A156728.P4633822574318174138

`Δ[a(n-2)+gcd(2, a(a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A156728.P4633822574318174138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + Nat.gcd 2 (f1 (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A156728.P4633822574318174138

namespace A156728

/-- `Δ[a(n-2)+gcd(2, a(a(n-1)))]` -/
def P4633822574318174138.Spec : Prop :=
  ∀ n, P4633822574318174138.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P2552712487169252858

`Δ[a(n-2)+2-a(a(n-1))%2]` with `a(0)=0, a(1)=1`
-/

namespace A156728.P2552712487169252858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (2 - Int.tmod (f1 (f1 (n - 1)).toNat) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156728.P2552712487169252858

namespace A156728

/-- `Δ[a(n-2)+2-a(a(n-1))%2]` -/
def P2552712487169252858.Spec : Prop :=
  ∀ n, P2552712487169252858.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P12279356146271994316

`1-A157687(n+1)`
-/

namespace A156728.P12279356146271994316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A157687 (n + 1)

end

end A156728.P12279356146271994316

namespace A156728

/-- `1-A157687(n+1)` -/
def P12279356146271994316.Spec : Prop :=
  ∀ n, P12279356146271994316.a n = A156728 (n + 1)

theorem P12279356146271994316.correct : P12279356146271994316.Spec := by
  intro n
  simp only [A156728, Nat.add_sub_cancel, A156728.P12279356146271994316.a, A156728.P5383628148153885775.a, A156253, A156253.P16782691293242481478.a, A157687, A157687.P3194273760277078501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156728

/-! ## A156728.P1243546299069638465

`A333229(n+1)%2`
-/

namespace A156728.P1243546299069638465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333229 (n + 1)) 2

end

end A156728.P1243546299069638465

namespace A156728

/-- `A333229(n+1)%2` -/
def P1243546299069638465.Spec : Prop :=
  ∀ n, P1243546299069638465.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P5069729949269274287

`7%A078929(n+1)`
-/

namespace A156728.P5069729949269274287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A078929 (n + 1))

end

end A156728.P5069729949269274287

namespace A156728

/-- `7%A078929(n+1)` -/
def P5069729949269274287.Spec : Prop :=
  ∀ n, P5069729949269274287.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P15657321917286465465

`abs(Δ[A000002(n+1)])`
-/

namespace A156728.P15657321917286465465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A156728.P15657321917286465465

namespace A156728

/-- `abs(Δ[A000002(n+1)])` -/
def P15657321917286465465.Spec : Prop :=
  ∀ n, P15657321917286465465.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P10909997805067333044

`char[A054353(n+1)-1]`
-/

namespace A156728.P10909997805067333044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156728.P10909997805067333044

namespace A156728

/-- `char[A054353(n+1)-1]` -/
def P10909997805067333044.Spec : Prop :=
  ∀ n, (P10909997805067333044.a n : ℤ) = A156728 (n + 1)

end A156728

/-! ## A156728.P411749425928930937

`char[A216345(n+1)-2]`
-/

namespace A156728.P411749425928930937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156728.P411749425928930937

namespace A156728

/-- `char[A216345(n+1)-2]` -/
def P411749425928930937.Spec : Prop :=
  ∀ n, (P411749425928930937.a n : ℤ) = A156728 (n + 1)

end A156728

/-! ## A156728.P11589494528083436631

`char[A074286(n+1)+n]`
-/

namespace A156728.P11589494528083436631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156728.P11589494528083436631

namespace A156728

/-- `char[A074286(n+1)+n]` -/
def P11589494528083436631.Spec : Prop :=
  ∀ n, (P11589494528083436631.a n : ℤ) = A156728 (n + 1)

end A156728

/-! ## A156728.P9005727785930815240

`char[comp[A078649(n+1)-1]]`
-/

namespace A156728.P9005727785930815240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156728.P9005727785930815240

namespace A156728

/-- `char[comp[A078649(n+1)-1]]` -/
def P9005727785930815240.Spec : Prop :=
  ∀ n, (P9005727785930815240.a n : ℤ) = A156728 (n + 1)

end A156728

/-! ## A156728.P6399553624146675092

`char[Δ[A078880(n+1)]²+n]`
-/

namespace A156728.P6399553624146675092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156728.P6399553624146675092

namespace A156728

/-- `char[Δ[A078880(n+1)]²+n]` -/
def P6399553624146675092.Spec : Prop :=
  ∀ n, (P6399553624146675092.a n : ℤ) = A156728 (n + 1)

end A156728

/-! ## A156728.P2814610692476866130

`A054354((n+1)^a(n-1))²` with `a(0)=1`
-/

namespace A156728.P2814610692476866130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (a (n - 1) : ℤ))).toNat ^ 2

end

end A156728.P2814610692476866130

namespace A156728

/-- `A054354((n+1)^a(n-1))²` -/
def P2814610692476866130.Spec : Prop :=
  ∀ n, P2814610692476866130.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P5350176337739565222

`A054353(A156351(n+1))-n`
-/

namespace A156728.P5350176337739565222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A156351 (n + 1)).toNat - (n : ℤ)

end

end A156728.P5350176337739565222

namespace A156728

/-- `A054353(A156351(n+1))-n` -/
def P5350176337739565222.Spec : Prop :=
  ∀ n, P5350176337739565222.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P6319075072136715412

`A000007(n*A157687(n+1))`
-/

namespace A156728.P6319075072136715412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A157687 (n + 1)).toNat

end

end A156728.P6319075072136715412

namespace A156728

/-- `A000007(n*A157687(n+1))` -/
def P6319075072136715412.Spec : Prop :=
  ∀ n, P6319075072136715412.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P9076383317562169762

`and(A054354(n+1), A060576(n))`
-/

namespace A156728.P9076383317562169762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054354 (n + 1)) (A060576 n)

end

end A156728.P9076383317562169762

namespace A156728

/-- `and(A054354(n+1), A060576(n))` -/
def P9076383317562169762.Spec : Prop :=
  ∀ n, P9076383317562169762.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P15143537545438579095

`and(A054354(n+1), A158388(n))`
-/

namespace A156728.P15143537545438579095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054354 (n + 1)) (A158388 n)

end

end A156728.P15143537545438579095

namespace A156728

/-- `and(A054354(n+1), A158388(n))` -/
def P15143537545438579095.Spec : Prop :=
  ∀ n, P15143537545438579095.a n = A156728 (n + 1)

end A156728

/-! ## A156728.P13242005807156645074

`and(A054354(n+1), A267870(n))`
-/

namespace A156728.P13242005807156645074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054354 (n + 1)) (A267870 n)

end

end A156728.P13242005807156645074

namespace A156728

/-- `and(A054354(n+1), A267870(n))` -/
def P13242005807156645074.Spec : Prop :=
  ∀ n, P13242005807156645074.a n = A156728 (n + 1)

end A156728

/-!
# A156729: a(n)=(v(2*n+2)-v(2*n))/2 where v(n)=A156253(n)-A156251(n).

The programs for A156729, the canonical program `A156729.P11115397462345893869` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156729 has offset 1).

The definition of A156729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156729.P9376738955333734116

`log2(Δ[A156351(Δ[n²])])`
-/

namespace A156729.P9376738955333734116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A156729.P9376738955333734116

namespace A156729

/-- `log2(Δ[A156351(Δ[n²])])` -/
def P9376738955333734116.Spec : Prop :=
  ∀ n, P9376738955333734116.a n = (A156729 (n + 1) : ℝ)

end A156729

/-! ## A156729.P16489634291332524771

`floor(cos(Δ[A100429(n+1)]))`
-/

namespace A156729.P16489634291332524771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A156729.P16489634291332524771

namespace A156729

/-- `floor(cos(Δ[A100429(n+1)]))` -/
def P16489634291332524771.Spec : Prop :=
  ∀ n, P16489634291332524771.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P13905360773483120477

`col(A078929(2*(n+1)))`
-/

namespace A156729.P13905360773483120477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A078929 (2 * (n + 1))).toNat

end

end A156729.P13905360773483120477

namespace A156729

/-- `col(A078929(2*(n+1)))` -/
def P13905360773483120477.Spec : Prop :=
  ∀ n, (P13905360773483120477.a n : ℤ) = A156729 (n + 1)

end A156729

/-! ## A156729.P8689841543633960790

`3%A376604(2*(n+1))`
-/

namespace A156729.P8689841543633960790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A376604 (2 * (n + 1)))

end

end A156729.P8689841543633960790

namespace A156729

/-- `3%A376604(2*(n+1))` -/
def P8689841543633960790.Spec : Prop :=
  ∀ n, P8689841543633960790.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P12459516879398399368

`log2(abs(A376604(2*n+2)))`
-/

namespace A156729.P12459516879398399368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A376604 (2 * n + 2)| : ℝ)

end

end A156729.P12459516879398399368

namespace A156729

/-- `log2(abs(A376604(2*n+2)))` -/
def P12459516879398399368.Spec : Prop :=
  ∀ n, P12459516879398399368.a n = (A156729 (n + 1) : ℝ)

end A156729

/-! ## A156729.P15244239553333851836

`log2(Δ[A156253(2*(n+1))])`
-/

namespace A156729.P15244239553333851836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * (n + 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A156729.P15244239553333851836

namespace A156729

/-- `log2(Δ[A156253(2*(n+1))])` -/
def P15244239553333851836.Spec : Prop :=
  ∀ n, P15244239553333851836.a n = (A156729 (n + 1) : ℝ)

end A156729

/-! ## A156729.P11115397462345893869

`Δ[A156351(2*n+1)]-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156729

/-- `Δ[A156351(2*n+1)]-1` -/
def P11115397462345893869.Spec : Prop :=
  ∀ n, P11115397462345893869.a n = A156729 (n + 1)

theorem P11115397462345893869.correct : P11115397462345893869.Spec := by
  intro n
  simp only [A156729, Nat.add_sub_cancel]

end A156729

/-! ## A156729.P18325314882818338642

`Δ[A156253(2*n+2)]-1`
-/

namespace A156729.P18325314882818338642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A156729.P18325314882818338642

namespace A156729

/-- `Δ[A156253(2*n+2)]-1` -/
def P18325314882818338642.Spec : Prop :=
  ∀ n, P18325314882818338642.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P14347294052244778693

`C(Δ[A156253(n+2+n)], 2)`
-/

namespace A156729.P14347294052244778693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A156729.P14347294052244778693

namespace A156729

/-- `C(Δ[A156253(n+2+n)], 2)` -/
def P14347294052244778693.Spec : Prop :=
  ∀ n, (P14347294052244778693.a n : ℤ) = A156729 (n + 1)

end A156729

/-! ## A156729.P4527180614922046572

`floor(cos(Δ[A000002(2*(n+1))]))`
-/

namespace A156729.P4527180614922046572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A156729.P4527180614922046572

namespace A156729

/-- `floor(cos(Δ[A000002(2*(n+1))]))` -/
def P4527180614922046572.Spec : Prop :=
  ∀ n, P4527180614922046572.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P6861498744490980194

`floor(cos(Δ[A049705(2*(n+1))]))`
-/

namespace A156729.P6861498744490980194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A156729.P6861498744490980194

namespace A156729

/-- `floor(cos(Δ[A049705(2*(n+1))]))` -/
def P6861498744490980194.Spec : Prop :=
  ∀ n, P6861498744490980194.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P2670032596193443340

`1-abs(Δ[A074290(2*(n+1))])`
-/

namespace A156729.P2670032596193443340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |f1 (n + 1) - f1 n|

end

end A156729.P2670032596193443340

namespace A156729

/-- `1-abs(Δ[A074290(2*(n+1))])` -/
def P2670032596193443340.Spec : Prop :=
  ∀ n, P2670032596193443340.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P6427816805778341445

`1-abs(Δ[A088569(2*n+1)])`
-/

namespace A156729.P6427816805778341445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |f1 (n + 1) - f1 n|

end

end A156729.P6427816805778341445

namespace A156729

/-- `1-abs(Δ[A088569(2*n+1)])` -/
def P6427816805778341445.Spec : Prop :=
  ∀ n, P6427816805778341445.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P351196546976261799

`1-Δ[A078880(2*n+1)]²`
-/

namespace A156729.P351196546976261799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A156729.P351196546976261799

namespace A156729

/-- `1-Δ[A078880(2*n+1)]²` -/
def P351196546976261799.Spec : Prop :=
  ∀ n, P351196546976261799.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P10889640875874328027

`1-Δ[A157686(2*n+1)]²`
-/

namespace A156729.P10889640875874328027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A156729.P10889640875874328027

namespace A156729

/-- `1-Δ[A157686(2*n+1)]²` -/
def P10889640875874328027.Spec : Prop :=
  ∀ n, P10889640875874328027.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P13842292789611309782

`1-Δ[A074290(2*n+2)]²`
-/

namespace A156729.P13842292789611309782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A156729.P13842292789611309782

namespace A156729

/-- `1-Δ[A074290(2*n+2)]²` -/
def P13842292789611309782.Spec : Prop :=
  ∀ n, P13842292789611309782.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P414431078728662975

`A001221(Δ[A156351(Δ[n²])])`
-/

namespace A156729.P414431078728662975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A156729.P414431078728662975

namespace A156729

/-- `A001221(Δ[A156351(Δ[n²])])` -/
def P414431078728662975.Spec : Prop :=
  ∀ n, P414431078728662975.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P236843204444329352

`A001222(Δ[A156351(Δ[n²])])`
-/

namespace A156729.P236843204444329352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A156729.P236843204444329352

namespace A156729

/-- `A001222(Δ[A156351(Δ[n²])])` -/
def P236843204444329352.Spec : Prop :=
  ∀ n, P236843204444329352.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P13059691637758715879

`A001221(Δ[A156253(2*(n+1))])`
-/

namespace A156729.P13059691637758715879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A156729.P13059691637758715879

namespace A156729

/-- `A001221(Δ[A156253(2*(n+1))])` -/
def P13059691637758715879.Spec : Prop :=
  ∀ n, P13059691637758715879.a n = A156729 (n + 1)

end A156729

/-! ## A156729.P4521358918360275099

`A001222(Δ[A156253(2*(n+1))])`
-/

namespace A156729.P4521358918360275099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A156729.P4521358918360275099

namespace A156729

/-- `A001222(Δ[A156253(2*(n+1))])` -/
def P4521358918360275099.Spec : Prop :=
  ∀ n, P4521358918360275099.a n = A156729 (n + 1)

end A156729

/-!
# A156731: a(n)=(v(2*n+1)-v(2*n-1))/2 where v(n)=A156253(n)-A156251(n).

The programs for A156731, the canonical program `A156731.P10098910702488001825` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156731 has offset 1).

The definition of A156731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156731.P11743350918074389839

`3%A376604(Δ[n²])`
-/

namespace A156731.P11743350918074389839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A376604 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A156731.P11743350918074389839

namespace A156731

/-- `3%A376604(Δ[n²])` -/
def P11743350918074389839.Spec : Prop :=
  ∀ n, P11743350918074389839.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P2219234108777984621

`log2(Δ[A156253(Δ[n²])])`
-/

namespace A156731.P2219234108777984621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A156731.P2219234108777984621

namespace A156731

/-- `log2(Δ[A156253(Δ[n²])])` -/
def P2219234108777984621.Spec : Prop :=
  ∀ n, P2219234108777984621.a n = (A156731 (n + 1) : ℝ)

end A156731

/-! ## A156731.P10646610728480128358

`floor(cos(Δ[A100428(n+1)]))`
-/

namespace A156731.P10646610728480128358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A156731.P10646610728480128358

namespace A156731

/-- `floor(cos(Δ[A100428(n+1)]))` -/
def P10646610728480128358.Spec : Prop :=
  ∀ n, P10646610728480128358.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P10098910702488001825

`val(A078929(2*n+1), 2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156731

/-- `val(A078929(2*n+1), 2)` -/
def P10098910702488001825.Spec : Prop :=
  ∀ n, (P10098910702488001825.a n : ℤ) = A156731 (n + 1)

theorem P10098910702488001825.correct : P10098910702488001825.Spec := by
  intro n
  simp only [A156731, Nat.add_sub_cancel]

end A156731

/-! ## A156731.P11094195459967607462

`log2(abs(A376604(2*n+1)))`
-/

namespace A156731.P11094195459967607462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A376604 (2 * n + 1)| : ℝ)

end

end A156731.P11094195459967607462

namespace A156731

/-- `log2(abs(A376604(2*n+1)))` -/
def P11094195459967607462.Spec : Prop :=
  ∀ n, P11094195459967607462.a n = (A156731 (n + 1) : ℝ)

end A156731

/-! ## A156731.P14206182231418948300

`Δ[A156253(2*n+1)]-1`
-/

namespace A156731.P14206182231418948300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A156731.P14206182231418948300

namespace A156731

/-- `Δ[A156253(2*n+1)]-1` -/
def P14206182231418948300.Spec : Prop :=
  ∀ n, P14206182231418948300.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P1526891311812058259

`char[A074273(n+1)-(n+2)]`
-/

namespace A156731.P1526891311812058259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074273 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156731.P1526891311812058259

namespace A156731

/-- `char[A074273(n+1)-(n+2)]` -/
def P1526891311812058259.Spec : Prop :=
  ∀ n, (P1526891311812058259.a n : ℤ) = A156731 (n + 1)

end A156731

/-! ## A156731.P15565402854401105422

`C(Δ[A156253(n+1+n)], 2)`
-/

namespace A156731.P15565402854401105422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A156731.P15565402854401105422

namespace A156731

/-- `C(Δ[A156253(n+1+n)], 2)` -/
def P15565402854401105422.Spec : Prop :=
  ∀ n, (P15565402854401105422.a n : ℤ) = A156731 (n + 1)

end A156731

/-! ## A156731.P13732905452263897374

`floor(cos(Δ[A000002(2*n+1)]))`
-/

namespace A156731.P13732905452263897374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A156731.P13732905452263897374

namespace A156731

/-- `floor(cos(Δ[A000002(2*n+1)]))` -/
def P13732905452263897374.Spec : Prop :=
  ∀ n, P13732905452263897374.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P8266314500338696566

`floor(cos(Δ[A049705(2*n+1)]))`
-/

namespace A156731.P8266314500338696566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A156731.P8266314500338696566

namespace A156731

/-- `floor(cos(Δ[A049705(2*n+1)]))` -/
def P8266314500338696566.Spec : Prop :=
  ∀ n, P8266314500338696566.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P9007156073863127094

`1-abs(Δ[A074290(2*n+1)])`
-/

namespace A156731.P9007156073863127094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |f1 (n + 1) - f1 n|

end

end A156731.P9007156073863127094

namespace A156731

/-- `1-abs(Δ[A074290(2*n+1)])` -/
def P9007156073863127094.Spec : Prop :=
  ∀ n, P9007156073863127094.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P7556840442501140947

`1-Δ[A088570(2*n+1)]²`
-/

namespace A156731.P7556840442501140947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A156731.P7556840442501140947

namespace A156731

/-- `1-Δ[A088570(2*n+1)]²` -/
def P7556840442501140947.Spec : Prop :=
  ∀ n, P7556840442501140947.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P5620670636680286581

`(Δ[A123594(2*n+3)]+1)%2`
-/

namespace A156731.P5620670636680286581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) 2

end

end A156731.P5620670636680286581

namespace A156731

/-- `(Δ[A123594(2*n+3)]+1)%2` -/
def P5620670636680286581.Spec : Prop :=
  ∀ n, P5620670636680286581.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P12344509644230875105

`char[A022297(2*(n+1))-(n+1)]`
-/

namespace A156731.P12344509644230875105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (2 * (n + 1)) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156731.P12344509644230875105

namespace A156731

/-- `char[A022297(2*(n+1))-(n+1)]` -/
def P12344509644230875105.Spec : Prop :=
  ∀ n, (P12344509644230875105.a n : ℤ) = A156731 (n + 1)

end A156731

/-! ## A156731.P10063590336109359647

`char[A013947(2*(n+1))-(n+2)]`
-/

namespace A156731.P10063590336109359647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (2 * (n + 1)) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156731.P10063590336109359647

namespace A156731

/-- `char[A013947(2*(n+1))-(n+2)]` -/
def P10063590336109359647.Spec : Prop :=
  ∀ n, (P10063590336109359647.a n : ℤ) = A156731 (n + 1)

end A156731

/-! ## A156731.P5104143874729372898

`A001221(Δ[A156253(Δ[n²])])`
-/

namespace A156731.P5104143874729372898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A156731.P5104143874729372898

namespace A156731

/-- `A001221(Δ[A156253(Δ[n²])])` -/
def P5104143874729372898.Spec : Prop :=
  ∀ n, P5104143874729372898.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P9256782738437675578

`A001222(Δ[A156253(Δ[n²])])`
-/

namespace A156731.P9256782738437675578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A156731.P9256782738437675578

namespace A156731

/-- `A001222(Δ[A156253(Δ[n²])])` -/
def P9256782738437675578.Spec : Prop :=
  ∀ n, P9256782738437675578.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P7468424808120352995

`A100405(abs(Δ[A100428(n+1)]))`
-/

namespace A156731.P7468424808120352995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 |f1 (n + 1) - f1 n|.toNat

end

end A156731.P7468424808120352995

namespace A156731

/-- `A100405(abs(Δ[A100428(n+1)]))` -/
def P7468424808120352995.Spec : Prop :=
  ∀ n, P7468424808120352995.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P11031753086307731735

`A100443(abs(Δ[A100428(n+1)]))`
-/

namespace A156731.P11031753086307731735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100443 |f1 (n + 1) - f1 n|.toNat

end

end A156731.P11031753086307731735

namespace A156731

/-- `A100443(abs(Δ[A100428(n+1)]))` -/
def P11031753086307731735.Spec : Prop :=
  ∀ n, P11031753086307731735.a n = A156731 (n + 1)

end A156731

/-! ## A156731.P12821551468190489251

`A126322(abs(Δ[A100428(n+1)]))`
-/

namespace A156731.P12821551468190489251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126322 |f1 (n + 1) - f1 n|.toNat

end

end A156731.P12821551468190489251

namespace A156731

/-- `A126322(abs(Δ[A100428(n+1)]))` -/
def P12821551468190489251.Spec : Prop :=
  ∀ n, P12821551468190489251.a n = A156731 (n + 1)

end A156731

/-!
# A156732: Triangle T(n, k) = ((n-2*k)^2/(n-k+1))*binomial(n+1, k+1), read by rows.

The programs for A156732, the canonical program `A156732.P16759845086019694700` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156732 has offset 0).

The definition of A156732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156732.P16759845086019694700

`(row(n)-2*col(n))²/(row(n)+2)*C(row(n)+2, col(n)+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156732

/-- `(row(n)-2*col(n))²/(row(n)+2)*C(row(n)+2, col(n)+1)` -/
def P16759845086019694700.Spec : Prop :=
  ∀ n, P16759845086019694700.a n = (A156732 n : ℚ)

end A156732

/-! ## A156732.P16364245055163483486

`(row(n)-2*col(n))²/(row(n)-col(n)+1)*C(row(n)+1, col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156732.P16364245055163483486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)) ^ 2 : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) * (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℚ)

end

end A156732.P16364245055163483486

namespace A156732

/-- `(row(n)-2*col(n))²/(row(n)-col(n)+1)*C(row(n)+1, col(n)+1)` -/
def P16364245055163483486.Spec : Prop :=
  ∀ n, P16364245055163483486.a n = (A156732 n : ℚ)

end A156732

/-! ## A156732.P575647804824912090

`(row(n)-2*col(n))*Δ[A074909(n)]`
-/

namespace A156732.P575647804824912090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A156732.P575647804824912090

namespace A156732

/-- `(row(n)-2*col(n))*Δ[A074909(n)]` -/
def P575647804824912090.Spec : Prop :=
  ∀ n, P575647804824912090.a n = A156732 n

end A156732

/-! ## A156732.P18335897412899117524

`A114327(n)*A214292(n)`
-/

namespace A156732.P18335897412899117524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n * A214292 n

end

end A156732.P18335897412899117524

namespace A156732

/-- `A114327(n)*A214292(n)` -/
def P18335897412899117524.Spec : Prop :=
  ∀ n, P18335897412899117524.a n = A156732 n

end A156732

/-! ## A156732.P9251445521118076223

`Δ[A074909(n)]*A114327(n)`
-/

namespace A156732.P9251445521118076223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A114327 n

end

end A156732.P9251445521118076223

namespace A156732

/-- `Δ[A074909(n)]*A114327(n)` -/
def P9251445521118076223.Spec : Prop :=
  ∀ n, P9251445521118076223.a n = A156732 n

end A156732

/-! ## A156732.P4553187969106579025

`(A061579(n)-n)*A214292(n)`
-/

namespace A156732.P4553187969106579025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061579 n - (n : ℤ)) * A214292 n

end

end A156732.P4553187969106579025

namespace A156732

/-- `(A061579(n)-n)*A214292(n)` -/
def P4553187969106579025.Spec : Prop :=
  ∀ n, P4553187969106579025.a n = A156732 n

end A156732

/-! ## A156732.P4966999422371010983

`(A061579(n)-n)*Δ[A074909(n)]`
-/

namespace A156732.P4966999422371010983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061579 n - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A156732.P4966999422371010983

namespace A156732

/-- `(A061579(n)-n)*Δ[A074909(n)]` -/
def P4966999422371010983.Spec : Prop :=
  ∀ n, P4966999422371010983.a n = A156732 n

end A156732

/-! ## A156732.P14850890997061249949

`Δ[A007318(A007401(n+1))]*A114327(n)`
-/

namespace A156732.P14850890997061249949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A114327 n

end

end A156732.P14850890997061249949

namespace A156732

/-- `Δ[A007318(A007401(n+1))]*A114327(n)` -/
def P14850890997061249949.Spec : Prop :=
  ∀ n, P14850890997061249949.a n = A156732 n

end A156732

/-!
# A156733: Euler transform of n*A065958(n).

The programs for A156733, there is no canonical definition to state claims against.
-/

/-! ## A156733.P9895099256163168770

`A130972(A006342(n))`
-/

namespace A156733.P9895099256163168770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130972 (A006342 n).toNat

end

end A156733.P9895099256163168770

/-!
# A156734: Square array read by antidiagonals up. T(n,k) = if k divides n then +1 else -1.

The programs for A156734, there is no canonical definition to state claims against.
-/

/-! ## A156734.P11776561194636437573

`1-2%A228035(n)`
-/

namespace A156734.P11776561194636437573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod 2 (A228035 n)

end

end A156734.P11776561194636437573

/-! ## A156734.P280014873913225198

`or(1, A155031(comp[∑[n]]))`
-/

namespace A156734.P280014873913225198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155031 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A156734.P280014873913225198

/-! ## A156734.P8703357090125252193

`(-1)^A171233(n+1)`
-/

namespace A156734.P8703357090125252193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A171233 (n + 1) : ℤ)

end

end A156734.P8703357090125252193

/-! ## A156734.P2381897541620079276

`round(cos(A050205(n+2)²))`
-/

namespace A156734.P2381897541620079276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (A050205 (n + 2) ^ 2 : ℝ))

end

end A156734.P2381897541620079276

/-! ## A156734.P15651872405588419368

`2*A077049(n+1)-1`
-/

namespace A156734.P15651872405588419368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077049 (n + 1) - 1

end

end A156734.P15651872405588419368

/-! ## A156734.P3587107077558633058

`or(1, 1-A281527(n+2))`
-/

namespace A156734.P3587107077558633058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - A281527 (n + 2))

end

end A156734.P3587107077558633058

/-! ## A156734.P1706988269665804965

`2-ceil(exp(A191904(n+1)))`
-/

namespace A156734.P1706988269665804965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈Real.exp (A191904 (n + 1) : ℝ)⌉

end

end A156734.P1706988269665804965

/-! ## A156734.P508689416924875502

`A134824(A228035(n))`
-/

namespace A156734.P508689416924875502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A228035 n).toNat

end

end A156734.P508689416924875502

/-! ## A156734.P14716738792125174456

`A027674(A176917(n+1))`
-/

namespace A156734.P14716738792125174456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027674 (A176917 (n + 1)).toNat

end

end A156734.P14716738792125174456

/-! ## A156734.P15011897889217266819

`A134824(A112544(n+1))`
-/

namespace A156734.P15011897889217266819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A112544 (n + 1)).toNat

end

end A156734.P15011897889217266819

/-!
# A156735: a(n) = 57122*n^2 + 47320*n + 9801.

The programs for A156735, the canonical program `A156735.P3441470020431776995` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156735 has offset 0).

The definition of A156735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156735.P11286125100825024368

`round(sqrt(A156640(n))*A156636(n))`
-/

namespace A156735.P11286125100825024368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A156640 n : ℝ) * (A156636 n : ℝ))

end

end A156735.P11286125100825024368

namespace A156735

/-- `round(sqrt(A156640(n))*A156636(n))` -/
def P11286125100825024368.Spec : Prop :=
  ∀ n, P11286125100825024368.a n = A156735 n

end A156735

/-! ## A156735.P3441470020431776995

`floor(A156721(n+1)/A156639(n+1)*A156640(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156735

/-- `floor(A156721(n+1)/A156639(n+1)*A156640(n))` -/
def P3441470020431776995.Spec : Prop :=
  ∀ n, P3441470020431776995.a n = A156735 n

theorem P3441470020431776995.correct : P3441470020431776995.Spec := by
  intro n
  simp only [A156735]

end A156735

/-! ## A156735.P16303929788633605837

`2*A154609(A154609(n))²+1`
-/

namespace A156735.P16303929788633605837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154609 (A154609 n).toNat ^ 2 + 1

end

end A156735.P16303929788633605837

namespace A156735

/-- `2*A154609(A154609(n))²+1` -/
def P16303929788633605837.Spec : Prop :=
  ∀ n, P16303929788633605837.a n = A156735 n

end A156735

/-! ## A156735.P12720619703192474602

`or(2*A154609(A154609(n))², A033999(n)²)`
-/

namespace A156735.P12720619703192474602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A154609 (A154609 n).toNat ^ 2) (A033999 n ^ 2)

end

end A156735.P12720619703192474602

namespace A156735

/-- `or(2*A154609(A154609(n))², A033999(n)²)` -/
def P12720619703192474602.Spec : Prop :=
  ∀ n, P12720619703192474602.a n = A156735 n

end A156735

/-! ## A156735.P4758912498624161942

`xor(2*A154609(A154609(n))², A000034(2*n))`
-/

namespace A156735.P4758912498624161942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A154609 (A154609 n).toNat ^ 2) (A000034 (2 * n))

end

end A156735.P4758912498624161942

namespace A156735

/-- `xor(2*A154609(A154609(n))², A000034(2*n))` -/
def P4758912498624161942.Spec : Prop :=
  ∀ n, P4758912498624161942.a n = A156735 n

end A156735

/-! ## A156735.P1240082521336674397

`xor(2*A154609(A154609(n))², A005408(n)%2)`
-/

namespace A156735.P1240082521336674397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A154609 (A154609 n).toNat ^ 2) (Int.tmod (A005408 n) 2)

end

end A156735.P1240082521336674397

namespace A156735

/-- `xor(2*A154609(A154609(n))², A005408(n)%2)` -/
def P1240082521336674397.Spec : Prop :=
  ∀ n, P1240082521336674397.a n = A156735 n

end A156735

/-! ## A156735.P8394936903784703401

`or(2*A154609(A154609(n))², A014577(n²))`
-/

namespace A156735.P8394936903784703401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A154609 (A154609 n).toNat ^ 2) (A014577 (n ^ 2))

end

end A156735.P8394936903784703401

namespace A156735

/-- `or(2*A154609(A154609(n))², A014577(n²))` -/
def P8394936903784703401.Spec : Prop :=
  ∀ n, P8394936903784703401.a n = A156735 n

end A156735

/-! ## A156735.P15648132885846623543

`A058331(A156718(2*n+1))`
-/

namespace A156735.P15648132885846623543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A156718 (2 * n + 1)).toNat

end

end A156735.P15648132885846623543

namespace A156735

/-- `A058331(A156718(2*n+1))` -/
def P15648132885846623543.Spec : Prop :=
  ∀ n, P15648132885846623543.a n = A156735 n

end A156735

/-!
# A156736: Signed greedy Egyptian fraction for Pi/2.

The programs for A156736, there is no canonical definition to state claims against.
-/

/-! ## A156736.P8034057459393832981

`A020639(A001181(n+1))*A001467(n+1)`
-/

namespace A156736.P8034057459393832981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001181 (n + 1)).toNat * A001467 (n + 1)

end

end A156736.P8034057459393832981

/-!
# A156739: Triangle T(n, k, m) = round( Product_{j=0..m} binomial(2*(n+j), 2*(k+j))/binomial( 2*(n-k+j), 2*j) ), where m = 6, read by rows.

The programs for A156739, there is no canonical definition to state claims against.
-/

/-! ## A156739.P15548359353904560988

`A225419(10*A319083(n))`
-/

namespace A156739.P15548359353904560988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225419 (10 * A319083 n).toNat

end

end A156739.P15548359353904560988

/-! ## A156739.P678541157038176037

`A136506(A084061(n+1)-1)`
-/

namespace A156739.P678541157038176037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136506 (A084061 (n + 1) - 1).toNat

end

end A156739.P678541157038176037

/-! ## A156739.P14182671193968256877

`A007318((∑[n]+3*n²)^A097805(n))`
-/

namespace A156739.P14182671193968256877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 3 * n ^ 2 : ℕ) : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A156739.P14182671193968256877

/-! ## A156739.P11102408167037877548

`A127673(A064230(n)*A271518(n))`
-/

namespace A156739.P11102408167037877548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127673 (A064230 n * A271518 n).toNat

end

end A156739.P11102408167037877548

/-!
# A156740: Triangle T(n, k, m) = round( Product_{j=0..m} binomial(2*(n+j), 2*(k+j))/binomial( 2*(n-k+j), 2*j) ), where m = 7, read by rows.

The programs for A156740, there is no canonical definition to state claims against.
-/

/-! ## A156740.P987647001885859801

`A028310(C(A063114(2*n+1), 16))`
-/

namespace A156740.P987647001885859801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A063114 (2 * n + 1)).toNat 16)

end

end A156740.P987647001885859801

/-! ## A156740.P5360470685618866093

`A093178(C(A215024(n), A101803(n)))`
-/

namespace A156740.P5360470685618866093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Nat.choose (A215024 n).toNat (A101803 n).toNat)

end

end A156740.P5360470685618866093

/-! ## A156740.P3950520126170027543

`A093178(C(A215024(n), A276796(n)))`
-/

namespace A156740.P3950520126170027543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Nat.choose (A215024 n).toNat (A276796 n).toNat)

end

end A156740.P3950520126170027543

/-! ## A156740.P11584110124873374357

`A099575(A014963(n+1)^A353532(n+3))`
-/

namespace A156740.P11584110124873374357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099575 (SequenceMachineLib.roundAway ((A014963 (n + 1) : ℚ) ^ (A353532 (n + 3) : ℤ))).toNat

end

end A156740.P11584110124873374357

/-!
# A156741: Triangle T(n, k, m) = round( Product_{j=0..m} binomial(2*(n+j), 2*(k+j))/binomial( 2*(n-k+j), 2*j) ), where m = 8, read by rows.

The programs for A156741, there is no canonical definition to state claims against.
-/

/-! ## A156741.P8037906261947836417

`A007318(A073133(∑[n²+2]))`
-/

namespace A156741.P8037906261947836417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A073133 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A156741.P8037906261947836417

/-! ## A156741.P10230169870548111158

`A338995(A271141(n+1)²*A185871(n+1))`
-/

namespace A156741.P10230169870548111158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338995 (A271141 (n + 1) ^ 2 * A185871 (n + 1)).toNat

end

end A156741.P10230169870548111158

/-!
# A156742: Triangle T(n, k, m) = round( Product_{j=0..m} binomial(2*(n+j), 2*(k+j))/binomial( 2*(n-k+j), 2*j) ), where m = 9, read by rows.

The programs for A156742, there is no canonical definition to state claims against.
-/

/-! ## A156742.P4060919274776166956

`A247615(A216721(n+5)%A008288(n))`
-/

namespace A156742.P4060919274776166956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247615 (Int.tmod (A216721 (n + 5)) (A008288 n)).toNat

end

end A156742.P4060919274776166956

/-! ## A156742.P17091831463046610043

`A325005(A276879(n+1)^A271141(n+1))`
-/

namespace A156742.P17091831463046610043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325005 (SequenceMachineLib.roundAway ((A276879 (n + 1) : ℚ) ^ (A271141 (n + 1) : ℤ))).toNat

end

end A156742.P17091831463046610043

/-!
# A156743: Month (3=March, 4=April) in which Easter occurs in Gregorian calendar year, starting with 1901.

The programs for A156743, there is no canonical definition to state claims against.
-/

/-! ## A156743.P10259600045484669731

`A054521(A085473(n))+3`
-/

namespace A156743.P10259600045484669731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A085473 n).toNat + 3

end

end A156743.P10259600045484669731

/-! ## A156743.P15673246716747657473

`A054521(A195319(n)+1)+3`
-/

namespace A156743.P15673246716747657473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A195319 n + 1).toNat + 3

end

end A156743.P15673246716747657473

/-! ## A156743.P10313953314327168174

`A054521(A005448(2*n+1))+3`
-/

namespace A156743.P10313953314327168174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A005448 (2 * n + 1)).toNat + 3

end

end A156743.P10313953314327168174

/-! ## A156743.P1962327314307175861

`A276867(or(A276871(2*(n+1)), A276883(n+2)))`
-/

namespace A156743.P1962327314307175861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276867 (Int.lor (A276871 (2 * (n + 1))) (A276883 (n + 2))).toNat

end

end A156743.P1962327314307175861

/-! ## A156743.P4306237286581956979

`A276865(A090989(n+1)+2)`
-/

namespace A156743.P4306237286581956979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (A090989 (n + 1) + 2).toNat

end

end A156743.P4306237286581956979

/-!
# A156745: a(n) = Sum_{k=1..n} floor((n+k)/k) = n + Sum_{k=1..n} sigma_0(k), where sigma_0(k) is A000005(k). Also a(n) = n + A006218(n).

The programs for A156745, the canonical program `A156745.P4004578976620637230` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156745 has offset 1).

The definition of A156745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A006218(n+1)` (program `A156745.P4004578976620637230`, by `A156745.P4004578976620637230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156745.P4004578976620637230

`n+1+A006218(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156745

/-- `n+1+A006218(n+1)` -/
def P4004578976620637230.Spec : Prop :=
  ∀ n, P4004578976620637230.a n = A156745 (n + 1)

theorem P4004578976620637230.correct : P4004578976620637230.Spec := by
  intro n
  simp only [A156745, Nat.add_sub_cancel]

end A156745

/-! ## A156745.P8909814535046024405

`A005843(n+1)+A002541(n+1)`
-/

namespace A156745.P8909814535046024405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A002541 (n + 1)

end

end A156745.P8909814535046024405

namespace A156745

/-- `A005843(n+1)+A002541(n+1)` -/
def P8909814535046024405.Spec : Prop :=
  ∀ n, P8909814535046024405.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P14131740414136481045

`∑{#}[n, floor((n+1+#+1)/(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156745.P14131740414136481045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ⌊(n + 1 + (k + 1) : ℚ) / (k + 1 : ℚ)⌋

end

end A156745.P14131740414136481045

namespace A156745

/-- `∑{#}[n, floor((n+1+#+1)/(#+1))]` -/
def P14131740414136481045.Spec : Prop :=
  ∀ n, P14131740414136481045.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P6961162239023888179

`∑[∑{d}[n+1, ceil(2/#)]]`
-/

namespace A156745.P6961162239023888179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈2 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P6961162239023888179

namespace A156745

/-- `∑[∑{d}[n+1, ceil(2/#)]]` -/
def P6961162239023888179.Spec : Prop :=
  ∀ n, P6961162239023888179.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P2840026189710280528

`∑[1+∏{e}[n+1, #+1]]`
-/

namespace A156745.P2840026189710280528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P2840026189710280528

namespace A156745

/-- `∑[1+∏{e}[n+1, #+1]]` -/
def P2840026189710280528.Spec : Prop :=
  ∀ n, (P2840026189710280528.a n : ℤ) = A156745 (n + 1)

end A156745

/-! ## A156745.P8200834190235661387

`∑[∑{d}[n+1, gcd(n, #)]+1]`
-/

namespace A156745.P8200834190235661387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P8200834190235661387

namespace A156745

/-- `∑[∑{d}[n+1, gcd(n, #)]+1]` -/
def P8200834190235661387.Spec : Prop :=
  ∀ n, (P8200834190235661387.a n : ℤ) = A156745 (n + 1)

end A156745

/-! ## A156745.P11555433601512497902

`∑[floor(∑{d}[n+1, root(#, n+1)])+1]`
-/

namespace A156745.P11555433601512497902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f2 n), (d : ℝ) ^ (1 / (n + 1 : ℝ))⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P11555433601512497902

namespace A156745

/-- `∑[floor(∑{d}[n+1, root(#, n+1)])+1]` -/
def P11555433601512497902.Spec : Prop :=
  ∀ n, P11555433601512497902.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P3871082986235010407

`∑[∏{p}[n+1, val(n+1, #)+1]+1]`
-/

namespace A156745.P3871082986235010407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation (n + 1) p + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P3871082986235010407

namespace A156745

/-- `∑[∏{p}[n+1, val(n+1, #)+1]+1]` -/
def P3871082986235010407.Spec : Prop :=
  ∀ n, (P3871082986235010407.a n : ℤ) = A156745 (n + 1)

end A156745

/-! ## A156745.P16854460106658250754

`∏{e}[n+1, #+1]+a(n-1)+1` with `a(0)=2`
-/

namespace A156745.P16854460106658250754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + (a (n - 1) + 1)

end

end A156745.P16854460106658250754

namespace A156745

/-- `∏{e}[n+1, #+1]+a(n-1)+1` -/
def P16854460106658250754.Spec : Prop :=
  ∀ n, (P16854460106658250754.a n : ℤ) = A156745 (n + 1)

end A156745

/-! ## A156745.P11912826640459143654

`∑[A334954(n+1)]`
-/

namespace A156745.P11912826640459143654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P11912826640459143654

namespace A156745

/-- `∑[A334954(n+1)]` -/
def P11912826640459143654.Spec : Prop :=
  ∀ n, P11912826640459143654.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P7728430230413353444

`A161886(n+1)+1`
-/

namespace A156745.P7728430230413353444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161886 (n + 1) + 1

end

end A156745.P7728430230413353444

namespace A156745

/-- `A161886(n+1)+1` -/
def P7728430230413353444.Spec : Prop :=
  ∀ n, P7728430230413353444.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P1559775802841629387

`A054519(n+1)+n`
-/

namespace A156745.P1559775802841629387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) + (n : ℤ)

end

end A156745.P1559775802841629387

namespace A156745

/-- `A054519(n+1)+n` -/
def P1559775802841629387.Spec : Prop :=
  ∀ n, P1559775802841629387.a n = A156745 (n + 1)

theorem P1559775802841629387.correct : P1559775802841629387.Spec := by
  intro n
  simp only [A156745, Nat.add_sub_cancel, A156745.P1559775802841629387.a, A156745.P4004578976620637230.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156745

/-! ## A156745.P7233961564395703003

`A077597(n)+2+n`
-/

namespace A156745.P7233961564395703003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077597 n + 2 + (n : ℤ)

end

end A156745.P7233961564395703003

namespace A156745

/-- `A077597(n)+2+n` -/
def P7233961564395703003.Spec : Prop :=
  ∀ n, P7233961564395703003.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P2900920493422855799

`∑[Δ[A006218(n)]+1]`
-/

namespace A156745.P2900920493422855799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P2900920493422855799

namespace A156745

/-- `∑[Δ[A006218(n)]+1]` -/
def P2900920493422855799.Spec : Prop :=
  ∀ n, P2900920493422855799.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P6606485177794890136

`∑[A000005(n+1)+1]`
-/

namespace A156745.P6606485177794890136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P6606485177794890136

namespace A156745

/-- `∑[A000005(n+1)+1]` -/
def P6606485177794890136.Spec : Prop :=
  ∀ n, P6606485177794890136.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P3549622762214384440

`∑[A032741(n+1)+2]`
-/

namespace A156745.P3549622762214384440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P3549622762214384440

namespace A156745

/-- `∑[A032741(n+1)+2]` -/
def P3549622762214384440.Spec : Prop :=
  ∀ n, P3549622762214384440.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P16568616010950271490

`∑[A325765(n)+2]-1`
-/

namespace A156745.P16568616010950271490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A156745.P16568616010950271490

namespace A156745

/-- `∑[A325765(n)+2]-1` -/
def P16568616010950271490.Spec : Prop :=
  ∀ n, P16568616010950271490.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P3620063072660614369

`∑[3-A378216(n+1)]`
-/

namespace A156745.P3620063072660614369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A378216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P3620063072660614369

namespace A156745

/-- `∑[3-A378216(n+1)]` -/
def P3620063072660614369.Spec : Prop :=
  ∀ n, P3620063072660614369.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P11058807913207168769

`∑[A325939(4*(n+1))]`
-/

namespace A156745.P11058807913207168769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P11058807913207168769

namespace A156745

/-- `∑[A325939(4*(n+1))]` -/
def P11058807913207168769.Spec : Prop :=
  ∀ n, P11058807913207168769.a n = A156745 (n + 1)

end A156745

/-! ## A156745.P17659834280386438571

`∑[A062249(n+1)-n]`
-/

namespace A156745.P17659834280386438571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156745.P17659834280386438571

namespace A156745

/-- `∑[A062249(n+1)-n]` -/
def P17659834280386438571.Spec : Prop :=
  ∀ n, P17659834280386438571.a n = A156745 (n + 1)

end A156745

/-!
# A156747: a(1) = a(2) = a(3) = 0, then a(n) = abs(a(n-1) + 2*a(n-2) - a(n-3)) - a(n-2) - 1.

The programs for A156747, the canonical program `A156747.P5937375725640741161` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156747 has offset 1).

The definition of A156747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)+2*a(n-2)-a(n-3))-a(n-2)-1` (program `A156747.P5937375725640741161`, by `A156747.P5937375725640741161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156747.P5937375725640741161

`abs(a(n-1)+2*a(n-2)-a(n-3))-a(n-2)-1` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156747

/-- `abs(a(n-1)+2*a(n-2)-a(n-3))-a(n-2)-1` -/
def P5937375725640741161.Spec : Prop :=
  ∀ n, P5937375725640741161.a n = A156747 (n + 1)

theorem P5937375725640741161.correct : P5937375725640741161.Spec := by
  intro n
  simp only [A156747, Nat.add_sub_cancel]

end A156747

/-!
# A156748: a(1) = a(2) = a(3) = a(4) = 0, then a(n) = abs(a(n-1) -a(n-2) +2*a(n-3) -a(n-4)) -a(n-3) -1.

The programs for A156748, the canonical program `A156748.P2041258804412856595` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156748 has offset 1).

The definition of A156748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-a(n-2)+2*a(n-3)-a(n-4))-a(n-3)-1` (program `A156748.P2041258804412856595`, by `A156748.P2041258804412856595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156748.P2041258804412856595

`abs(a(n-1)-a(n-2)+2*a(n-3)-a(n-4))-a(n-3)-1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156748

/-- `abs(a(n-1)-a(n-2)+2*a(n-3)-a(n-4))-a(n-3)-1` -/
def P2041258804412856595.Spec : Prop :=
  ∀ n, P2041258804412856595.a n = A156748 (n + 1)

theorem P2041258804412856595.correct : P2041258804412856595.Spec := by
  intro n
  simp only [A156748, Nat.add_sub_cancel]

end A156748

/-!
# A156749: For all numbers k(n) congruent to -1 or +1 (mod 4) starting with k(n) = {3,5,7,9,11,...}, a(k(n)) is incremented by the congruence (mod 4) if k(n) is prime and by 0 if k(n) is composite.

The programs for A156749, the canonical program `A156749.P11962410097344092513` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156749 has offset 1).

The definition of A156749 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066520, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156749.P11962410097344092513

`-A066520(2*(n+1)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156749

/-- `-A066520(2*(n+1)+1)` -/
def P11962410097344092513.Spec : Prop :=
  ∀ n, P11962410097344092513.a n = A156749 (n + 1)

theorem P11962410097344092513.correct : P11962410097344092513.Spec := by
  intro n
  simp only [A156749, Nat.add_sub_cancel]

end A156749

/-! ## A156749.P3519406620648824965

`A066339(2*(n+1)+1)-A066490(2*(n+1)+1)`
-/

namespace A156749.P3519406620648824965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (2 * (n + 1) + 1) - A066490 (2 * (n + 1) + 1)

end

end A156749.P3519406620648824965

namespace A156749

/-- `A066339(2*(n+1)+1)-A066490(2*(n+1)+1)` -/
def P3519406620648824965.Spec : Prop :=
  ∀ n, P3519406620648824965.a n = A156749 (n + 1)

theorem P3519406620648824965.correct : P3519406620648824965.Spec := by
  intro n
  simp only [A156749, Nat.add_sub_cancel, A156749.P3519406620648824965.a, A156749.P11962410097344092513.a, A066339, A066339.P5957712968518338971.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A066520, A066520.P7437655284551336730.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156749

/-! ## A156749.P17424899308339103821

`∑[A156707(1+n)]`
-/

namespace A156749.P17424899308339103821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156749.P17424899308339103821

namespace A156749

/-- `∑[A156707(1+n)]` -/
def P17424899308339103821.Spec : Prop :=
  ∀ n, P17424899308339103821.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P52402711021087821

`-A038698(A000720(2*(n+2)))`
-/

namespace A156749.P52402711021087821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038698 (A000720 (2 * (n + 2))).toNat

end

end A156749.P52402711021087821

namespace A156749

/-- `-A038698(A000720(2*(n+2)))` -/
def P52402711021087821.Spec : Prop :=
  ∀ n, P52402711021087821.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P13289059534475885820

`1-A069782(A066520(2*(n+2))+1)`
-/

namespace A156749.P13289059534475885820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A069782 (A066520 (2 * (n + 2)) + 1).toNat

end

end A156749.P13289059534475885820

namespace A156749

/-- `1-A069782(A066520(2*(n+2))+1)` -/
def P13289059534475885820.Spec : Prop :=
  ∀ n, P13289059534475885820.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P10086331838103885811

`A156707(n+1)-A066520(2*(n+1))`
-/

namespace A156749.P10086331838103885811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (n + 1) - A066520 (2 * (n + 1))

end

end A156749.P10086331838103885811

namespace A156749

/-- `A156707(n+1)-A066520(2*(n+1))` -/
def P10086331838103885811.Spec : Prop :=
  ∀ n, P10086331838103885811.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P11542316293194425464

`∑[(A305818(n+1)-A086668(n+1))^(n+1)]`
-/

namespace A156749.P11542316293194425464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305818 (n + 1) - A086668 (n + 1)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156749.P11542316293194425464

namespace A156749

/-- `∑[(A305818(n+1)-A086668(n+1))^(n+1)]` -/
def P11542316293194425464.Spec : Prop :=
  ∀ n, P11542316293194425464.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P8476023417550786172

`A010051(A016957(n))-A066520(2*n+3)`
-/

namespace A156749.P8476023417550786172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A016957 n).toNat - A066520 (2 * n + 3)

end

end A156749.P8476023417550786172

namespace A156749

/-- `A010051(A016957(n))-A066520(2*n+3)` -/
def P8476023417550786172.Spec : Prop :=
  ∀ n, P8476023417550786172.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P3760017448757333502

`A010051(A007426(n+1))-A066520(2*n+3)`
-/

namespace A156749.P3760017448757333502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007426 (n + 1)).toNat - A066520 (2 * n + 3)

end

end A156749.P3760017448757333502

namespace A156749

/-- `A010051(A007426(n+1))-A066520(2*n+3)` -/
def P3760017448757333502.Spec : Prop :=
  ∀ n, P3760017448757333502.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P6081522165613033291

`A091337(A001223(n+5))-A066520(2*n+3)`
-/

namespace A156749.P6081522165613033291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A001223 (n + 5)).toNat - A066520 (2 * n + 3)

end

end A156749.P6081522165613033291

namespace A156749

/-- `A091337(A001223(n+5))-A066520(2*n+3)` -/
def P6081522165613033291.Spec : Prop :=
  ∀ n, P6081522165613033291.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P14370256829674865100

`∑[A066520(2*(n+1))-A066520(A005408(n+1))]`
-/

namespace A156749.P14370256829674865100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (2 * (n + 1)) - A066520 (A005408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156749.P14370256829674865100

namespace A156749

/-- `∑[A066520(2*(n+1))-A066520(A005408(n+1))]` -/
def P14370256829674865100.Spec : Prop :=
  ∀ n, P14370256829674865100.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P11380381928625489542

`∑[A009531(A085090(n+2))]`
-/

namespace A156749.P11380381928625489542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A085090 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156749.P11380381928625489542

namespace A156749

/-- `∑[A009531(A085090(n+2))]` -/
def P11380381928625489542.Spec : Prop :=
  ∀ n, P11380381928625489542.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P2465325786462264458

`A188510(2*n)-A066520(2*n+3)`
-/

namespace A156749.P2465325786462264458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n) - A066520 (2 * n + 3)

end

end A156749.P2465325786462264458

namespace A156749

/-- `A188510(2*n)-A066520(2*n+3)` -/
def P2465325786462264458.Spec : Prop :=
  ∀ n, P2465325786462264458.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P10052274433056408740

`A079260(2*(n+1))-A066520(2*n+3)`
-/

namespace A156749.P10052274433056408740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (2 * (n + 1)) - A066520 (2 * n + 3)

end

end A156749.P10052274433056408740

namespace A156749

/-- `A079260(2*(n+1))-A066520(2*n+3)` -/
def P10052274433056408740.Spec : Prop :=
  ∀ n, P10052274433056408740.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P1483960610255776221

`A079261(2*(n+1))-A066520(2*n+3)`
-/

namespace A156749.P1483960610255776221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (2 * (n + 1)) - A066520 (2 * n + 3)

end

end A156749.P1483960610255776221

namespace A156749

/-- `A079261(2*(n+1))-A066520(2*n+3)` -/
def P1483960610255776221.Spec : Prop :=
  ∀ n, P1483960610255776221.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P12052807146697708377

`∑[A151763(2*n+3)]`
-/

namespace A156749.P12052807146697708377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156749.P12052807146697708377

namespace A156749

/-- `∑[A151763(2*n+3)]` -/
def P12052807146697708377.Spec : Prop :=
  ∀ n, P12052807146697708377.a n = A156749 (n + 1)

end A156749

/-! ## A156749.P16607311770242980046

`∑[A267133(2*n+3)]`
-/

namespace A156749.P16607311770242980046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156749.P16607311770242980046

namespace A156749

/-- `∑[A267133(2*n+3)]` -/
def P16607311770242980046.Spec : Prop :=
  ∀ n, P16607311770242980046.a n = A156749 (n + 1)

end A156749

/-!
# A156752: a(n) = floor(Catalan(n+1)/Catalan(n)).

The programs for A156752, the canonical program `A156752.P5343702145446922428` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156752 has offset 0).

The definition of A156752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156752.P5343702145446922428

`floor(4^(n/(n+1)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156752

/-- `floor(4^(n/(n+1)))` -/
def P5343702145446922428.Spec : Prop :=
  ∀ n, P5343702145446922428.a n = A156752 n

theorem P5343702145446922428.correct : P5343702145446922428.Spec := by
  intro n
  simp only [A156752]

end A156752

/-!
# A156753: Primes whose largest digit is equal to the sum of all the other digits.

The programs for A156753, there is no canonical definition to state claims against.
-/

/-! ## A156753.P6078898731796567563

`A045319(eq[0, A041000(n+1)])`
-/

namespace A156753.P6078898731796567563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156753.P6078898731796567563

/-! ## A156753.P13919488199817225830

`A045344(eq[0, A041000(n+1)])`
-/

namespace A156753.P13919488199817225830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156753.P13919488199817225830

/-! ## A156753.P10036368843293485391

`A065091(eq[0, A041000(n+1)])`
-/

namespace A156753.P10036368843293485391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156753.P10036368843293485391

/-! ## A156753.P17104243032722488694

`A000040(eq[0, A041000(n+1)]+1)`
-/

namespace A156753.P17104243032722488694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156753.P17104243032722488694

/-! ## A156753.P1523771447152441486

`A040976(eq[0, A041000(n+1)]+1)+2`
-/

namespace A156753.P1523771447152441486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 2

end

end A156753.P1523771447152441486

/-! ## A156753.P1836267439313436994

`p?[(1-A041000(n+1))*A000040(n+1)]`
-/

namespace A156753.P1836267439313436994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A041000 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156753.P1836267439313436994

/-! ## A156753.P1109002168468005125

`p?[xor(1-A041000(n+1), A006093(n+1))]`
-/

namespace A156753.P1109002168468005125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - A041000 (n + 1)) (A006093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156753.P1109002168468005125

/-! ## A156753.P12411754996244805935

`∩[A280915(n+1), A064544(n)]`
-/

namespace A156753.P12411754996244805935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156753.P12411754996244805935

/-!
# A156755: Period 9: repeat [1, 1, 2, 1, 1, 2, 2, 2, 3].

The programs for A156755, the canonical program `A156755.P11517295546264551896` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156755 has offset 0).

The definition of A156755 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A156755.anchor (n : ℕ) : A156755 n = (([1, 1, 2, 1, 1, 2, 2, 2, 3].getD (n % 9) 0 : ℕ) : ℤ)` in `Proof.A156.A156755`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156755.P11517295546264551896

`a(n-9)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=1, a(5)=2, a(6)=2, a(7)=2, a(8)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156755

/-- `a(n-9)` -/
def P11517295546264551896.Spec : Prop :=
  ∀ n, (P11517295546264551896.a n : ℤ) = A156755 n

theorem P11517295546264551896.correct : P11517295546264551896.Spec := by
  intro n
  simp only [A156755]

end A156755

/-!
# A156756: Primes not containing exactly two odd digits.

The programs for A156756, the canonical program `A156756.P14913388442259504804` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156756 has offset 1).

The definition of A156756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156756.P14913388442259504804

`p?[lcm(n, A088705(A003132(n)))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156756

/-- `p?[lcm(n, A088705(A003132(n)))]` -/
def P14913388442259504804.Spec : Prop :=
  ∀ n, (P14913388442259504804.a n : ℤ) = A156756 (n + 1)

theorem P14913388442259504804.correct : P14913388442259504804.Spec := by
  intro n
  simp only [A156756, Nat.add_sub_cancel]

end A156756

/-! ## A156756.P8592306940679182810

`p?[A002264(A196564(n)+A016777(n))]`
-/

namespace A156756.P8592306940679182810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A196564 n + A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156756.P8592306940679182810

namespace A156756

/-- `p?[A002264(A196564(n)+A016777(n))]` -/
def P8592306940679182810.Spec : Prop :=
  ∀ n, P8592306940679182810.a n = A156756 (n + 1)

end A156756

/-! ## A156756.P4918364448656213108

`p?[A179085(n+1)+A010815(A129727(n+1))]`
-/

namespace A156756.P4918364448656213108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1) + A010815 (A129727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156756.P4918364448656213108

namespace A156756

/-- `p?[A179085(n+1)+A010815(A129727(n+1))]` -/
def P4918364448656213108.Spec : Prop :=
  ∀ n, P4918364448656213108.a n = A156756 (n + 1)

end A156756

/-! ## A156756.P15815799437050632336

`p?[A179085(n+1)+A012245(A257858(n+1))]`
-/

namespace A156756.P15815799437050632336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1) + A012245 (A257858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156756.P15815799437050632336

namespace A156756

/-- `p?[A179085(n+1)+A012245(A257858(n+1))]` -/
def P15815799437050632336.Spec : Prop :=
  ∀ n, P15815799437050632336.a n = A156756 (n + 1)

end A156756

/-! ## A156756.P13999303925436464620

`p?[n*A006519(A160939(n+1))]`
-/

namespace A156756.P13999303925436464620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006519 (A160939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156756.P13999303925436464620

namespace A156756

/-- `p?[n*A006519(A160939(n+1))]` -/
def P13999303925436464620.Spec : Prop :=
  ∀ n, P13999303925436464620.a n = A156756 (n + 1)

end A156756

/-! ## A156756.P3587175066017896367

`p?[n*A006519(A007953(n)+1+n)]`
-/

namespace A156756.P3587175066017896367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006519 (A007953 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156756.P3587175066017896367

namespace A156756

/-- `p?[n*A006519(A007953(n)+1+n)]` -/
def P3587175066017896367.Spec : Prop :=
  ∀ n, P3587175066017896367.a n = A156756 (n + 1)

end A156756

/-! ## A156756.P3014782751767204605

`eq[A100961(n), A115119(n)]`
-/

namespace A156756.P3014782751767204605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156756.P3014782751767204605

namespace A156756

/-- `eq[A100961(n), A115119(n)]` -/
def P3014782751767204605.Spec : Prop :=
  ∀ n, (P3014782751767204605.a n : ℤ) = A156756 (n + 1)

end A156756

/-! ## A156756.P3709800586064132444

`eq[A066656(n), A100961(n)]`
-/

namespace A156756.P3709800586064132444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156756.P3709800586064132444

namespace A156756

/-- `eq[A066656(n), A100961(n)]` -/
def P3709800586064132444.Spec : Prop :=
  ∀ n, (P3709800586064132444.a n : ℤ) = A156756 (n + 1)

end A156756

/-! ## A156756.P14552529420376626234

`eq[A100961(n), A152061(n)]`
-/

namespace A156756.P14552529420376626234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156756.P14552529420376626234

namespace A156756

/-- `eq[A100961(n), A152061(n)]` -/
def P14552529420376626234.Spec : Prop :=
  ∀ n, (P14552529420376626234.a n : ℤ) = A156756 (n + 1)

end A156756

/-!
# A156759: a(1)=2, a(n+1) is the smallest composite number > a(n) with smallest prime factor >= smallest prime factor of a(n).

The programs for A156759, there is no canonical definition to state claims against.
-/

/-! ## A156759.P15063873588182279972

`eq[1-char[1], A247977(n+1)]+1`
-/

namespace A156759.P15063873588182279972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A156759.P15063873588182279972

/-! ## A156759.P5172789554859987491

`eq[1, abs(A049084(n+1)-A247977(n+1))]+1`
-/

namespace A156759.P5172789554859987491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049084 (n + 1) - A247977 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156759.P5172789554859987491

/-! ## A156759.P7898863344227896374

`eq[A000034(n), A127321(A184727(n+1))]`
-/

namespace A156759.P7898863344227896374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A184727 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156759.P7898863344227896374

/-! ## A156759.P3992791600992118790

`A135553(n+1)+A014577(A002464(n))`
-/

namespace A156759.P3992791600992118790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (n + 1) + A014577 (A002464 n).toNat

end

end A156759.P3992791600992118790

/-! ## A156759.P4858641855668338728

`A359471(A000142(n))+A135553(n+1)`
-/

namespace A156759.P4858641855668338728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359471 (A000142 n).toNat + A135553 (n + 1)

end

end A156759.P4858641855668338728

/-!
# A156760: a(n) = 5*4^n - 1.

The programs for A156760, the canonical program `A156760.P5559596870425930087` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156760 has offset 0).

The definition of A156760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*4^n-1` (program `A156760.P5559596870425930087`, by `A156760.P5559596870425930087.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156760.P5559596870425930087

`5*4^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156760

/-- `5*4^n-1` -/
def P5559596870425930087.Spec : Prop :=
  ∀ n, P5559596870425930087.a n = A156760 n

theorem P5559596870425930087.correct : P5559596870425930087.Spec := by
  intro n
  simp only [A156760]

end A156760

/-! ## A156760.P9127207167898297087

`ogf((4-x)/(1-5x+4x^2))`
-/

namespace A156760.P9127207167898297087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1] [1, -5, 4] n

end

end A156760.P9127207167898297087

namespace A156760

/-- `ogf((4-x)/(1-5x+4x^2))` -/
def P9127207167898297087.Spec : Prop :=
  ∀ n, P9127207167898297087.a n = A156760 n

end A156760

/-! ## A156760.P8209821841056293900

`(A024036(n+1)+A140529(n))/2`
-/

namespace A156760.P8209821841056293900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024036 (n + 1) + A140529 n : ℚ) / 2

end

end A156760.P8209821841056293900

namespace A156760

/-- `(A024036(n+1)+A140529(n))/2` -/
def P8209821841056293900.Spec : Prop :=
  ∀ n, P8209821841056293900.a n = (A156760 n : ℚ)

theorem P8209821841056293900.correct : P8209821841056293900.Spec := by
  intro n
  simp only [A156760, Nat.add_sub_cancel, A156760.P8209821841056293900.a, A156760.P5559596870425930087.a, A024036, A024036.P9245189437657330470.a, A140529, A140529.P9765266150794200361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156760

/-! ## A156760.P4842523585093373104

`abs(1-lcm(5, 4^n))`
-/

namespace A156760.P4842523585093373104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 5 (4 ^ n) : ℤ)|

end

end A156760.P4842523585093373104

namespace A156760

/-- `abs(1-lcm(5, 4^n))` -/
def P4842523585093373104.Spec : Prop :=
  ∀ n, P4842523585093373104.a n = A156760 n

end A156760

/-! ## A156760.P13497215038623717671

`or(3, 4*a(n-1))` with `a(0)=4`
-/

namespace A156760.P13497215038623717671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 3 (4 * a (n - 1))

end

end A156760.P13497215038623717671

namespace A156760

/-- `or(3, 4*a(n-1))` -/
def P13497215038623717671.Spec : Prop :=
  ∀ n, (P13497215038623717671.a n : ℤ) = A156760 n

end A156760

/-! ## A156760.P9980863455378255519

`xor(3, 4*a(n-1))` with `a(0)=4`
-/

namespace A156760.P9980863455378255519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 3 (4 * a (n - 1))

end

end A156760.P9980863455378255519

namespace A156760

/-- `xor(3, 4*a(n-1))` -/
def P9980863455378255519.Spec : Prop :=
  ∀ n, (P9980863455378255519.a n : ℤ) = A156760 n

end A156760

/-! ## A156760.P9168806767715648043

`∑[4*a(n-1)]` with `a(0)=4, a(1)=15`
-/

namespace A156760.P9168806767715648043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 15] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156760.P9168806767715648043

namespace A156760

/-- `∑[4*a(n-1)]` -/
def P9168806767715648043.Spec : Prop :=
  ∀ n, (P9168806767715648043.a n : ℤ) = A156760 n

end A156760

/-! ## A156760.P7389608364759897099

`abs(4*a(n-1)+3)` with `a(0)=4`
-/

namespace A156760.P7389608364759897099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 * a (n - 1) + 3

end

end A156760.P7389608364759897099

namespace A156760

/-- `abs(4*a(n-1)+3)` -/
def P7389608364759897099.Spec : Prop :=
  ∀ n, (P7389608364759897099.a n : ℤ) = A156760 n

theorem P7389608364759897099.correct : P7389608364759897099.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156760, Nat.add_sub_cancel, A156760.P7389608364759897099.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156760, Nat.add_sub_cancel, A156760.P7389608364759897099.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A156760

/-! ## A156760.P13334726388862287139

`4*(a(n-1)+3/4)` with `a(0)=4`
-/

namespace A156760.P13334726388862287139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  4 * (a (n - 1) + (3 : ℚ) / 4)

end

end A156760.P13334726388862287139

namespace A156760

/-- `4*(a(n-1)+3/4)` -/
def P13334726388862287139.Spec : Prop :=
  ∀ n, P13334726388862287139.a n = (A156760 n : ℚ)

theorem P13334726388862287139.correct : P13334726388862287139.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156760, Nat.add_sub_cancel, A156760.P13334726388862287139.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156760, Nat.add_sub_cancel, A156760.P13334726388862287139.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A156760

/-! ## A156760.P8699181838531801182

`record[4*a(n-2)+3]` with `a(0)=4, a(1)=0`
-/

namespace A156760.P8699181838531801182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  4 * f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156760.P8699181838531801182

namespace A156760

/-- `record[4*a(n-2)+3]` -/
def P8699181838531801182.Spec : Prop :=
  ∀ n, (P8699181838531801182.a n : ℤ) = A156760 n

end A156760

/-! ## A156760.P13121930101224691083

`ceil(ϕ²+4*a(n-1))` with `a(0)=4`
-/

namespace A156760.P13121930101224691083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈Real.goldenRatio ^ 2 + (4 * a (n - 1) : ℝ)⌉

end

end A156760.P13121930101224691083

namespace A156760

/-- `ceil(ϕ²+4*a(n-1))` -/
def P13121930101224691083.Spec : Prop :=
  ∀ n, P13121930101224691083.a n = A156760 n

end A156760

/-! ## A156760.P11079364232103778681

`round(ϕ²+4*a(n-1))` with `a(0)=4`
-/

namespace A156760.P11079364232103778681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 + (4 * a (n - 1) : ℝ))

end

end A156760.P11079364232103778681

namespace A156760

/-- `round(ϕ²+4*a(n-1))` -/
def P11079364232103778681.Spec : Prop :=
  ∀ n, P11079364232103778681.a n = A156760 n

end A156760

/-! ## A156760.P18014394969613195141

`4*(1-(1/4-a(n-1)))` with `a(0)=4`
-/

namespace A156760.P18014394969613195141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  4 * (1 - ((1 : ℚ) / 4 - a (n - 1)))

end

end A156760.P18014394969613195141

namespace A156760

/-- `4*(1-(1/4-a(n-1)))` -/
def P18014394969613195141.Spec : Prop :=
  ∀ n, P18014394969613195141.a n = (A156760 n : ℚ)

theorem P18014394969613195141.correct : P18014394969613195141.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156760, Nat.add_sub_cancel, A156760.P18014394969613195141.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156760, Nat.add_sub_cancel, A156760.P18014394969613195141.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A156760

/-! ## A156760.P1838243959437956536

`floor(3%(n+3)+4*a(n-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A156760.P1838243959437956536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  3 % (n + 3) + 4 * a (n - 1)

end

end A156760.P1838243959437956536

namespace A156760

/-- `floor(3%(n+3)+4*a(n-1))` -/
def P1838243959437956536.Spec : Prop :=
  ∀ n, (P1838243959437956536.a n : ℤ) = A156760 n

end A156760

/-! ## A156760.P16410356764838130625

`floor(gcd(3, 3*n)+4*a(n-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A156760.P16410356764838130625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.gcd 3 (3 * n) + 4 * a (n - 1)

end

end A156760.P16410356764838130625

namespace A156760

/-- `floor(gcd(3, 3*n)+4*a(n-1))` -/
def P16410356764838130625.Spec : Prop :=
  ∀ n, (P16410356764838130625.a n : ℤ) = A156760 n

end A156760

/-! ## A156760.P16005508091125846285

`floor(a(n-1)+3*(a(n-1)+1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A156760.P16005508091125846285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 3 * (a (n - 1) + 1)

end

end A156760.P16005508091125846285

namespace A156760

/-- `floor(a(n-1)+3*(a(n-1)+1))` -/
def P16005508091125846285.Spec : Prop :=
  ∀ n, (P16005508091125846285.a n : ℤ) = A156760 n

theorem P16005508091125846285.correct : P16005508091125846285.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156760, Nat.add_sub_cancel, A156760.P16005508091125846285.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156760, Nat.add_sub_cancel, A156760.P16005508091125846285.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A156760

/-! ## A156760.P3719794844702569352

`floor(5*a(n-1)-(a(n-1)-3))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A156760.P3719794844702569352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  5 * a (n - 1) - (a (n - 1) - 3)

end

end A156760.P3719794844702569352

namespace A156760

/-- `floor(5*a(n-1)-(a(n-1)-3))` -/
def P3719794844702569352.Spec : Prop :=
  ∀ n, P3719794844702569352.a n = A156760 n

theorem P3719794844702569352.correct : P3719794844702569352.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156760, Nat.add_sub_cancel, A156760.P3719794844702569352.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156760, Nat.add_sub_cancel, A156760.P3719794844702569352.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A156760

/-! ## A156760.P18102164268053845713

`(4*a(n-1)+3)*a(n-1)%3` with `a(0)=4`
-/

namespace A156760.P18102164268053845713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  (4 * a (n - 1) + 3) * (a (n - 1) % 3)

end

end A156760.P18102164268053845713

namespace A156760

/-- `(4*a(n-1)+3)*a(n-1)%3` -/
def P18102164268053845713.Spec : Prop :=
  ∀ n, (P18102164268053845713.a n : ℤ) = A156760 n

end A156760

/-! ## A156760.P2812879749988493001

`floor(a(n-1)+a(n-1)+a(n-1)+a(n-1)+3)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A156760.P2812879749988493001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 3)))

end

end A156760.P2812879749988493001

namespace A156760

/-- `floor(a(n-1)+a(n-1)+a(n-1)+a(n-1)+3)` -/
def P2812879749988493001.Spec : Prop :=
  ∀ n, (P2812879749988493001.a n : ℤ) = A156760 n

theorem P2812879749988493001.correct : P2812879749988493001.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156760, Nat.add_sub_cancel, A156760.P2812879749988493001.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156760, Nat.add_sub_cancel, A156760.P2812879749988493001.a, A156760.P5559596870425930087.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A156760

/-! ## A156760.P12799240554659249523

`A153894(2*n)`
-/

namespace A156760.P12799240554659249523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (2 * n)

end

end A156760.P12799240554659249523

namespace A156760

/-- `A153894(2*n)` -/
def P12799240554659249523.Spec : Prop :=
  ∀ n, P12799240554659249523.a n = A156760 n

end A156760

/-!
# A156761: Tribonacci primes that are also primes when their digits are reversed.

The programs for A156761, there is no canonical definition to state claims against.
-/

/-! ## A156761.P451815325948973166

`A056816(round(ϕ^n))`
-/

namespace A156761.P451815325948973166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056816 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n)).toNat

end

end A156761.P451815325948973166

/-!
# A156762: Denominator of Euler(n, 1/21).

The programs for A156762, there is no canonical definition to state claims against.
-/

/-! ## A156762.P4976993287122719942

`A000420(n)*A156180(n)`
-/

namespace A156762.P4976993287122719942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n * A156180 n

end

end A156762.P4976993287122719942

/-! ## A156762.P9630325487432791773

`lcm(A009965(n), A156180(n))`
-/

namespace A156762.P9630325487432791773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009965 n) (A156180 n)

end

end A156762.P9630325487432791773

/-! ## A156762.P1380731423832116596

`Δ[A003462(n)]*A156192(n)`
-/

namespace A156762.P1380731423832116596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A156192 n

end

end A156762.P1380731423832116596

/-! ## A156762.P4993194277224875151

`A006519(n+1)*A009965(n)`
-/

namespace A156762.P4993194277224875151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A009965 n

end

end A156762.P4993194277224875151

/-! ## A156762.P13973480078346589431

`A108411(2*n+1)*A156192(n)`
-/

namespace A156762.P13973480078346589431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * n + 1) * A156192 n

end

end A156762.P13973480078346589431

/-! ## A156762.P13585448504401221658

`A009965(n)*A356166(A356166(n+1))`
-/

namespace A156762.P13585448504401221658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009965 n * A356166 (A356166 (n + 1)).toNat

end

end A156762.P13585448504401221658

/-! ## A156762.P11436792439343113017

`A009965(n)/A000244(n)*A156180(n)`
-/

namespace A156762.P11436792439343113017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009965 n : ℚ) / (A000244 n : ℚ) * (A156180 n : ℚ)

end

end A156762.P11436792439343113017

/-! ## A156762.P1114402893848672635

`A000244(n)*A006519(n+1)*A000420(n)`
-/

namespace A156762.P1114402893848672635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A006519 (n + 1) * A000420 n

end

end A156762.P1114402893848672635

/-!
# A156763: Triangle T(n, k) = binomial(2*k, k)*binomial(n+k, n-k) + binomial(2*n-k, k)*binomial(2*(n-k), n-k), read by rows.

The programs for A156763, the canonical program `A156763.P6870265989882778720` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156763 has offset 0).

The definition of A156763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156763.P6870265989882778720

`A063007(C(row(n)+1, 2)+col(n))+A063007(C(row(n)+1, 2)+row(n)-col(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156763

/-- `A063007(C(row(n)+1, 2)+col(n))+A063007(C(row(n)+1, 2)+row(n)-col(n))` -/
def P6870265989882778720.Spec : Prop :=
  ∀ n, P6870265989882778720.a n = A156763 n

theorem P6870265989882778720.correct : P6870265989882778720.Spec := by
  intro n
  simp only [A156763]

end A156763

/-! ## A156763.P18275565687023349415

`A104684(n)+A063007(n)`
-/

namespace A156763.P18275565687023349415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 n + A063007 n

end

end A156763.P18275565687023349415

namespace A156763

/-- `A104684(n)+A063007(n)` -/
def P18275565687023349415.Spec : Prop :=
  ∀ n, P18275565687023349415.a n = A156763 n

end A156763

/-! ## A156763.P4911917309241816025

`A007318(n)*A171824(n)`
-/

namespace A156763.P4911917309241816025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A171824 n

end

end A156763.P4911917309241816025

namespace A156763

/-- `A007318(n)*A171824(n)` -/
def P4911917309241816025.Spec : Prop :=
  ∀ n, P4911917309241816025.a n = A156763 n

end A156763

/-! ## A156763.P16697098774679101505

`A063007(A061579(n))+A063007(n)`
-/

namespace A156763.P16697098774679101505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A061579 n).toNat + A063007 n

end

end A156763.P16697098774679101505

namespace A156763

/-- `A063007(A061579(n))+A063007(n)` -/
def P16697098774679101505.Spec : Prop :=
  ∀ n, P16697098774679101505.a n = A156763 n

end A156763

/-! ## A156763.P9138412970447373781

`A104684(A061579(n))+A104684(n)`
-/

namespace A156763.P9138412970447373781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 (A061579 n).toNat + A104684 n

end

end A156763.P9138412970447373781

namespace A156763

/-- `A104684(A061579(n))+A104684(n)` -/
def P9138412970447373781.Spec : Prop :=
  ∀ n, P9138412970447373781.a n = A156763 n

end A156763

/-! ## A156763.P4382071419546130773

`A063007(A038722(n+2))+A063007(n)`
-/

namespace A156763.P4382071419546130773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A038722 (n + 2)).toNat + A063007 n

end

end A156763.P4382071419546130773

namespace A156763

/-- `A063007(A038722(n+2))+A063007(n)` -/
def P4382071419546130773.Spec : Prop :=
  ∀ n, P4382071419546130773.a n = A156763 n

end A156763

/-! ## A156763.P17845753206503900977

`(A092392(n)+A046899(n))*A007318(n)`
-/

namespace A156763.P17845753206503900977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092392 n + A046899 n) * A007318 n

end

end A156763.P17845753206503900977

namespace A156763

/-- `(A092392(n)+A046899(n))*A007318(n)` -/
def P17845753206503900977.Spec : Prop :=
  ∀ n, P17845753206503900977.a n = A156763 n

end A156763

/-! ## A156763.P9219556370765686935

`A104684(A038722(n+1)-1)+A104684(n)`
-/

namespace A156763.P9219556370765686935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 (A038722 (n + 1) - 1).toNat + A104684 n

end

end A156763.P9219556370765686935

namespace A156763

/-- `A104684(A038722(n+1)-1)+A104684(n)` -/
def P9219556370765686935.Spec : Prop :=
  ∀ n, P9219556370765686935.a n = A156763 n

end A156763

/-! ## A156763.P11415294687974628191

`(A092392(A061579(n))+A092392(n))*A007318(n)`
-/

namespace A156763.P11415294687974628191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092392 (A061579 n).toNat + A092392 n) * A007318 n

end

end A156763.P11415294687974628191

namespace A156763

/-- `(A092392(A061579(n))+A092392(n))*A007318(n)` -/
def P11415294687974628191.Spec : Prop :=
  ∀ n, P11415294687974628191.a n = A156763 n

end A156763

/-!
# A156764: Triangle T(n, k, m) = b(n, m)/(b(k, m)*b(n-k, m)), with T(0, k, m) = 1, b(n, k) = Product_{j=1..n} ( Sum_{i=0..j-1} (-1)^(j+i)*(j+1)*(k+1)^i*StirlingS1(j-1, i) ), b(n, 0) = n!, and m = 3, read by rows.

The programs for A156764, there is no canonical definition to state claims against.
-/

/-! ## A156764.P4552449762876927010

`A156584(n)/A009963(n)*A156586(n)`
-/

namespace A156764.P4552449762876927010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156584 n : ℚ) / (A009963 n : ℚ) * (A156586 n : ℚ)

end

end A156764.P4552449762876927010

/-! ## A156764.P2020186513418453519

`A074909(n)/A002260(n+1)*A156586(n)`
-/

namespace A156764.P2020186513418453519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (A002260 (n + 1) : ℚ) * (A156586 n : ℚ)

end

end A156764.P2020186513418453519

/-! ## A156764.P14473630427957951591

`A128716(A395150(n))`
-/

namespace A156764.P14473630427957951591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128716 (A395150 n).toNat

end

end A156764.P14473630427957951591

/-! ## A156764.P12005417262989931610

`A102093(A059922(n)²)`
-/

namespace A156764.P12005417262989931610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102093 (A059922 n ^ 2).toNat

end

end A156764.P12005417262989931610

/-! ## A156764.P8471138759614726912

`A140281(A060972(n+1))`
-/

namespace A156764.P8471138759614726912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 (A060972 (n + 1)).toNat

end

end A156764.P8471138759614726912

/-!
# A156765: Triangle T(n, k, m) = f(n, m)/(f(k, m)*f(n-k, m)), where T(0, k, m) = 1, f(n, k) = Product_{j=1..n} ( j!*((k+1)^j -1)/k ), f(n, 0) = n!, and m = 1, read by rows.

The programs for A156765, the canonical program `A156765.P17807041584160182449` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156765 has offset 0).

The definition of A156765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156765.P13321416498076212134

`A009963(n)*A022166(n)`
-/

namespace A156765.P13321416498076212134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n * A022166 n

end

end A156765.P13321416498076212134

namespace A156765

/-- `A009963(n)*A022166(n)` -/
def P13321416498076212134.Spec : Prop :=
  ∀ n, P13321416498076212134.a n = A156765 n

end A156765

/-! ## A156765.P17385874535099561655

`(A176420(n)+A014473(n))*A009963(n)`
-/

namespace A156765.P17385874535099561655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176420 n + A014473 n) * A009963 n

end

end A156765.P17385874535099561655

namespace A156765

/-- `(A176420(n)+A014473(n))*A009963(n)` -/
def P17385874535099561655.Spec : Prop :=
  ∀ n, P17385874535099561655.a n = A156765 n

end A156765

/-! ## A156765.P17807041584160182449

`A009963(n)/A007318(n)*A157638(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A156765

/-- `A009963(n)/A007318(n)*A157638(n)` -/
def P17807041584160182449.Spec : Prop :=
  ∀ n, P17807041584160182449.a n = (A156765 n : ℚ)

end A156765

/-! ## A156765.P14633317043257153443

`A156584(n)/A001263(n+1)*A157638(n)`
-/

namespace A156765.P14633317043257153443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156584 n : ℚ) / (A001263 (n + 1) : ℚ) * (A157638 n : ℚ)

end

end A156765.P14633317043257153443

namespace A156765

/-- `A156584(n)/A001263(n+1)*A157638(n)` -/
def P14633317043257153443.Spec : Prop :=
  ∀ n, P14633317043257153443.a n = (A156765 n : ℚ)

end A156765

/-! ## A156765.P8710809649582824431

`A022167(n)/A157640(n)*A157638(n)*A009963(n)`
-/

namespace A156765.P8710809649582824431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / (A157640 n : ℚ) * (A157638 n : ℚ) * (A009963 n : ℚ)

end

end A156765.P8710809649582824431

namespace A156765

/-- `A022167(n)/A157640(n)*A157638(n)*A009963(n)` -/
def P8710809649582824431.Spec : Prop :=
  ∀ n, P8710809649582824431.a n = (A156765 n : ℚ)

end A156765

/-! ## A156765.P5883969517289127976

`A022168(n)/A157641(n)*A157638(n)*A009963(n)`
-/

namespace A156765.P5883969517289127976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / (A157641 n : ℚ) * (A157638 n : ℚ) * (A009963 n : ℚ)

end

end A156765.P5883969517289127976

namespace A156765

/-- `A022168(n)/A157641(n)*A157638(n)*A009963(n)` -/
def P5883969517289127976.Spec : Prop :=
  ∀ n, P5883969517289127976.a n = (A156765 n : ℚ)

end A156765

/-! ## A156765.P3976554186926523477

`A022166(n)/A022167(n)*A156766(n)`
-/

namespace A156765.P3976554186926523477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / (A022167 n : ℚ) * (A156766 n : ℚ)

end

end A156765.P3976554186926523477

namespace A156765

/-- `A022166(n)/A022167(n)*A156766(n)` -/
def P3976554186926523477.Spec : Prop :=
  ∀ n, P3976554186926523477.a n = (A156765 n : ℚ)

end A156765

/-! ## A156765.P5968793814184366844

`A022166(n)/A022168(n)*A156767(n)`
-/

namespace A156765.P5968793814184366844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / (A022168 n : ℚ) * (A156767 n : ℚ)

end

end A156765.P5968793814184366844

namespace A156765

/-- `A022166(n)/A022168(n)*A156767(n)` -/
def P5968793814184366844.Spec : Prop :=
  ∀ n, P5968793814184366844.a n = (A156765 n : ℚ)

end A156765

/-!
# A156766: Triangle T(n, k, m) = f(n, m)/(f(k, m)*f(n-k, m)), where T(0, k, m) = 1, f(n, k) = Product_{j=1..n} ( j!*((k+1)^j -1)/k ), f(n, 0) = n!, and m = 2, read by rows.

The programs for A156766, the canonical program `A156766.P17923161982594841276` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156766 has offset 0).

The definition of A156766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156766.P17923161982594841276

`A009963(n)*A022167(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A156766

/-- `A009963(n)*A022167(n)` -/
def P17923161982594841276.Spec : Prop :=
  ∀ n, P17923161982594841276.a n = A156766 n

theorem P17923161982594841276.correct : P17923161982594841276.Spec := by
  intro n
  simp only [A156766]

end A156766

/-! ## A156766.P10092193009522534600

`A009963(n)/A007318(n)*A157640(n)`
-/

namespace A156766.P10092193009522534600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009963 n : ℚ) / (A007318 n : ℚ) * (A157640 n : ℚ)

end

end A156766.P10092193009522534600

namespace A156766

/-- `A009963(n)/A007318(n)*A157640(n)` -/
def P10092193009522534600.Spec : Prop :=
  ∀ n, P10092193009522534600.a n = (A156766 n : ℚ)

end A156766

/-! ## A156766.P11971512355012242335

`A022167(n)/A022166(n)*A156765(n)`
-/

namespace A156766.P11971512355012242335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / (A022166 n : ℚ) * (A156765 n : ℚ)

end

end A156766.P11971512355012242335

namespace A156766

/-- `A022167(n)/A022166(n)*A156765(n)` -/
def P11971512355012242335.Spec : Prop :=
  ∀ n, P11971512355012242335.a n = (A156766 n : ℚ)

end A156766

/-! ## A156766.P5840598275784442193

`A156765(n)/A157638(n)*A157640(n)`
-/

namespace A156766.P5840598275784442193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156765 n : ℚ) / (A157638 n : ℚ) * (A157640 n : ℚ)

end

end A156766.P5840598275784442193

namespace A156766

/-- `A156765(n)/A157638(n)*A157640(n)` -/
def P5840598275784442193.Spec : Prop :=
  ∀ n, P5840598275784442193.a n = (A156766 n : ℚ)

end A156766

/-! ## A156766.P8284945080506078539

`A156584(n)/A001263(n+1)*A157640(n)`
-/

namespace A156766.P8284945080506078539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156584 n : ℚ) / (A001263 (n + 1) : ℚ) * (A157640 n : ℚ)

end

end A156766.P8284945080506078539

namespace A156766

/-- `A156584(n)/A001263(n+1)*A157640(n)` -/
def P8284945080506078539.Spec : Prop :=
  ∀ n, P8284945080506078539.a n = (A156766 n : ℚ)

end A156766

/-! ## A156766.P10888548697361667834

`A022167(n)/A022168(n)*A156767(n)`
-/

namespace A156766.P10888548697361667834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / (A022168 n : ℚ) * (A156767 n : ℚ)

end

end A156766.P10888548697361667834

namespace A156766

/-- `A022167(n)/A022168(n)*A156767(n)` -/
def P10888548697361667834.Spec : Prop :=
  ∀ n, P10888548697361667834.a n = (A156766 n : ℚ)

end A156766

/-! ## A156766.P6084239885240675182

`A156767(n)/A157641(n)*A157640(n)`
-/

namespace A156766.P6084239885240675182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156767 n : ℚ) / (A157641 n : ℚ) * (A157640 n : ℚ)

end

end A156766.P6084239885240675182

namespace A156766

/-- `A156767(n)/A157641(n)*A157640(n)` -/
def P6084239885240675182.Spec : Prop :=
  ∀ n, P6084239885240675182.a n = (A156766 n : ℚ)

end A156766

/-!
# A156767: Triangle T(n, k, m) = f(n, m)/(f(k, m)*f(n-k, m)), where T(0, k, m) = 1, f(n, k) = Product_{j=1..n} ( j!*((k+1)^j -1)/k ), f(n, 0) = n!, and m = 3, read by rows.

The programs for A156767, there is no canonical definition to state claims against.
-/

/-! ## A156767.P9898989553797995377

`A009963(n)*A022168(n)`
-/

namespace A156767.P9898989553797995377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n * A022168 n

end

end A156767.P9898989553797995377

/-! ## A156767.P2742282292535676491

`A009963(n)/A007318(n)*A157641(n)`
-/

namespace A156767.P2742282292535676491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009963 n : ℚ) / (A007318 n : ℚ) * (A157641 n : ℚ)

end

end A156767.P2742282292535676491

/-! ## A156767.P3368342957524365063

`A022168(n)/A022166(n)*A156765(n)`
-/

namespace A156767.P3368342957524365063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / (A022166 n : ℚ) * (A156765 n : ℚ)

end

end A156767.P3368342957524365063

/-! ## A156767.P13162111767296415265

`A022168(n)/A022167(n)*A156766(n)`
-/

namespace A156767.P13162111767296415265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / (A022167 n : ℚ) * (A156766 n : ℚ)

end

end A156767.P13162111767296415265

/-! ## A156767.P7783207908935876052

`A156765(n)/A157638(n)*A157641(n)`
-/

namespace A156767.P7783207908935876052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156765 n : ℚ) / (A157638 n : ℚ) * (A157641 n : ℚ)

end

end A156767.P7783207908935876052

/-! ## A156767.P14636892171888964864

`A156766(n)/A157640(n)*A157641(n)`
-/

namespace A156767.P14636892171888964864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156766 n : ℚ) / (A157640 n : ℚ) * (A157641 n : ℚ)

end

end A156767.P14636892171888964864

/-!
# A156769: a(n) = denominator(2^(2*n-2)/factorial(2*n-1)).

The programs for A156769, there is no canonical definition to state claims against.
-/

/-! ## A156769.P9097117936963985717

`(2*n+1)*a(n-1)*gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A156769.P9097117936963985717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) * a (n - 1) * Nat.gcd n (a (n - 1))

end

end A156769.P9097117936963985717

/-! ## A156769.P17345210670400747676

`A049606(Δ[n²])`
-/

namespace A156769.P17345210670400747676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156769.P17345210670400747676

/-! ## A156769.P8016724868465415810

`A135354(Δ[n²])`
-/

namespace A156769.P8016724868465415810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156769.P8016724868465415810

/-! ## A156769.P4892124309099748581

`abs(record[-A130560(n)])`
-/

namespace A156769.P4892124309099748581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A130560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A156769.P4892124309099748581

/-! ## A156769.P2701808196772474647

`A095987(4*n+2)`
-/

namespace A156769.P2701808196772474647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095987 (4 * n + 2)

end

end A156769.P2701808196772474647

/-!
# A156770: 1 followed by least greater integer such that concatenation of a(n-1) and a(n) is prime.

The programs for A156770, there is no canonical definition to state claims against.
-/

/-! ## A156770.P15199719809388267201

`A228325(a(n-1))` with `a(0)=1`
-/

namespace A156770.P15199719809388267201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A228325 (a (n - 1)).toNat

end

end A156770.P15199719809388267201

/-! ## A156770.P12919815144387338484

`A245727(a(n-1))+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A156770.P12919815144387338484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A245727 (a (n - 1)).toNat + a (n - 1)

end

end A156770.P12919815144387338484

/-! ## A156770.P13816258862970460257

`A228325(A029579(a(floor(n²/(n+1)))))` with `a(0)=1`
-/

namespace A156770.P13816258862970460257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A228325 (A029579 (a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat).toNat).toNat

end

end A156770.P13816258862970460257

/-! ## A156770.P5300619844200347398

`record[A228325(a(A271439(n)))]` with `a(0)=1`
-/

namespace A156770.P5300619844200347398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A228325 (f1 (A271439 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156770.P5300619844200347398

/-! ## A156770.P6498562028361321502

`∑[A001223(row(A365738(n)))]`
-/

namespace A156770.P6498562028361321502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.triRow (A365738 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156770.P6498562028361321502

/-!
# A156771: a(n) = 729*n - 531.

The programs for A156771, the canonical program `A156771.P16748043267836669424` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156771 has offset 1).

The definition of A156771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `729*(n+1)-531` (program `A156771.P16748043267836669424`, by `A156771.P16748043267836669424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156771.P16748043267836669424

`729*(n+1)-531`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156771

/-- `729*(n+1)-531` -/
def P16748043267836669424.Spec : Prop :=
  ∀ n, P16748043267836669424.a n = A156771 (n + 1)

theorem P16748043267836669424.correct : P16748043267836669424.Spec := by
  intro n
  simp only [A156771, Nat.add_sub_cancel]

end A156771

/-!
# A156772: a(n) = 729*n - 198.

The programs for A156772, the canonical program `A156772.P9069844658310104775` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156772 has offset 1).

The definition of A156772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `729*(n+1)-198` (program `A156772.P9069844658310104775`, by `A156772.P9069844658310104775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156772.P9069844658310104775

`729*(n+1)-198`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156772

/-- `729*(n+1)-198` -/
def P9069844658310104775.Spec : Prop :=
  ∀ n, P9069844658310104775.a n = A156772 (n + 1)

theorem P9069844658310104775.correct : P9069844658310104775.Spec := by
  intro n
  simp only [A156772, Nat.add_sub_cancel]

end A156772

/-!
# A156773: a(n) = 6561*n^2 - 9558*n + 3482.

The programs for A156773, the canonical program `A156773.P14721469066702585292` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156773 has offset 0).

The definition of A156773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156773.P14721469066702585292

`81*A156677(n)-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156773

/-- `81*A156677(n)-1` -/
def P14721469066702585292.Spec : Prop :=
  ∀ n, P14721469066702585292.a n = A156773 n

theorem P14721469066702585292.correct : P14721469066702585292.Spec := by
  intro n
  simp only [A156773]

end A156773

/-! ## A156773.P8224098650659179252

`A008683(A007918(n))+81*A156677(n)`
-/

namespace A156773.P8224098650659179252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 81 * A156677 n

end

end A156773.P8224098650659179252

namespace A156773

/-- `A008683(A007918(n))+81*A156677(n)` -/
def P8224098650659179252.Spec : Prop :=
  ∀ n, P8224098650659179252.a n = A156773 n

end A156773

/-! ## A156773.P4218966275618279728

`A008683(A060940(n+1))+81*A156677(n)`
-/

namespace A156773.P4218966275618279728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060940 (n + 1)).toNat + 81 * A156677 n

end

end A156773.P4218966275618279728

namespace A156773

/-- `A008683(A060940(n+1))+81*A156677(n)` -/
def P4218966275618279728.Spec : Prop :=
  ∀ n, P4218966275618279728.a n = A156773 n

end A156773

/-! ## A156773.P4501702161194450700

`A008683(A240710(n+2))+81*A156677(n)`
-/

namespace A156773.P4501702161194450700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A240710 (n + 2)).toNat + 81 * A156677 n

end

end A156773.P4501702161194450700

namespace A156773

/-- `A008683(A240710(n+2))+81*A156677(n)` -/
def P4501702161194450700.Spec : Prop :=
  ∀ n, P4501702161194450700.a n = A156773 n

end A156773

/-! ## A156773.P18301305003637692347

`A049347(A016777(n))+81*A156677(n)`
-/

namespace A156773.P18301305003637692347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A016777 n).toNat + 81 * A156677 n

end

end A156773.P18301305003637692347

namespace A156773

/-- `A049347(A016777(n))+81*A156677(n)` -/
def P18301305003637692347.Spec : Prop :=
  ∀ n, P18301305003637692347.a n = A156773 n

end A156773

/-! ## A156773.P4137554058456098995

`A008683(A038026(n+1))+81*A156677(n)`
-/

namespace A156773.P4137554058456098995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A038026 (n + 1)).toNat + 81 * A156677 n

end

end A156773.P4137554058456098995

namespace A156773

/-- `A008683(A038026(n+1))+81*A156677(n)` -/
def P4137554058456098995.Spec : Prop :=
  ∀ n, P4137554058456098995.a n = A156773 n

end A156773

/-! ## A156773.P16818048651897432735

`A049347(A017209(n))+81*A156677(n)`
-/

namespace A156773.P16818048651897432735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A017209 n).toNat + 81 * A156677 n

end

end A156773.P16818048651897432735

namespace A156773

/-- `A049347(A017209(n))+81*A156677(n)` -/
def P16818048651897432735.Spec : Prop :=
  ∀ n, P16818048651897432735.a n = A156773 n

end A156773

/-! ## A156773.P9048656144649583212

`A008683(A061068(n+1))+81*A156677(n)`
-/

namespace A156773.P9048656144649583212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A061068 (n + 1)).toNat + 81 * A156677 n

end

end A156773.P9048656144649583212

namespace A156773

/-- `A008683(A061068(n+1))+81*A156677(n)` -/
def P9048656144649583212.Spec : Prop :=
  ∀ n, P9048656144649583212.a n = A156773 n

end A156773

/-! ## A156773.P10738743262382625987

`A008683(A005385(n+1))+81*A156677(n)`
-/

namespace A156773.P10738743262382625987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005385 (n + 1)).toNat + 81 * A156677 n

end

end A156773.P10738743262382625987

namespace A156773

/-- `A008683(A005385(n+1))+81*A156677(n)` -/
def P10738743262382625987.Spec : Prop :=
  ∀ n, P10738743262382625987.a n = A156773 n

end A156773

/-! ## A156773.P14420253691573962162

`A008683(A245193(n+1))+81*A156677(n)`
-/

namespace A156773.P14420253691573962162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A245193 (n + 1)).toNat + 81 * A156677 n

end

end A156773.P14420253691573962162

namespace A156773

/-- `A008683(A245193(n+1))+81*A156677(n)` -/
def P14420253691573962162.Spec : Prop :=
  ∀ n, P14420253691573962162.a n = A156773 n

end A156773

/-!
# A156774: a(n) = 6561*n^2 - 3564*n + 485.

The programs for A156774, the canonical program `A156774.P1723659585145494751` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156774 has offset 0).

The definition of A156774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156774.P1723659585145494751

`(22-81*n)²+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156774

/-- `(22-81*n)²+1` -/
def P1723659585145494751.Spec : Prop :=
  ∀ n, P1723659585145494751.a n = A156774 n

theorem P1723659585145494751.correct : P1723659585145494751.Spec := by
  intro n
  simp only [A156774]

end A156774

/-! ## A156774.P11263342451023717832

`abs(81*A156676(n)-1)`
-/

namespace A156774.P11263342451023717832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |81 * A156676 n - 1|

end

end A156774.P11263342451023717832

namespace A156774

/-- `abs(81*A156676(n)-1)` -/
def P11263342451023717832.Spec : Prop :=
  ∀ n, P11263342451023717832.a n = A156774 n

end A156774

/-! ## A156774.P17136253782855418400

`(81*A156676(n)-1)*A001221(xor(n, n+1)+1)`
-/

namespace A156774.P17136253782855418400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (81 * A156676 n - 1) * A001221 (Nat.xor n (n + 1) + 1)

end

end A156774.P17136253782855418400

namespace A156774

/-- `(81*A156676(n)-1)*A001221(xor(n, n+1)+1)` -/
def P17136253782855418400.Spec : Prop :=
  ∀ n, P17136253782855418400.a n = A156774 n

end A156774

/-! ## A156774.P11365143887845061713

`(81*A156676(n)-1)*A001221(Δ[A284884(n+1)])`
-/

namespace A156774.P11365143887845061713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (81 * A156676 n - 1) * A001221 (f1 (n + 1) - f1 n).toNat

end

end A156774.P11365143887845061713

namespace A156774

/-- `(81*A156676(n)-1)*A001221(Δ[A284884(n+1)])` -/
def P11365143887845061713.Spec : Prop :=
  ∀ n, P11365143887845061713.a n = A156774 n

end A156774

/-! ## A156774.P8081409167553524095

`(81*A156676(n)-1)*A001221(Δ[A007504(n)])`
-/

namespace A156774.P8081409167553524095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (81 * A156676 n - 1) * A001221 (f1 (n + 1) - f1 n).toNat

end

end A156774.P8081409167553524095

namespace A156774

/-- `(81*A156676(n)-1)*A001221(Δ[A007504(n)])` -/
def P8081409167553524095.Spec : Prop :=
  ∀ n, P8081409167553524095.a n = A156774 n

end A156774

/-! ## A156774.P11115004233215103402

`(81*A156676(n)-1)*A001221(A008578(n+2))`
-/

namespace A156774.P11115004233215103402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (81 * A156676 n - 1) * A001221 (A008578 (n + 2)).toNat

end

end A156774.P11115004233215103402

namespace A156774

/-- `(81*A156676(n)-1)*A001221(A008578(n+2))` -/
def P11115004233215103402.Spec : Prop :=
  ∀ n, P11115004233215103402.a n = A156774 n

end A156774

/-! ## A156774.P16897759533667048522

`(81*A156676(n)-1)*A001221(A001359(n+1))`
-/

namespace A156774.P16897759533667048522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (81 * A156676 n - 1) * A001221 (A001359 (n + 1)).toNat

end

end A156774.P16897759533667048522

namespace A156774

/-- `(81*A156676(n)-1)*A001221(A001359(n+1))` -/
def P16897759533667048522.Spec : Prop :=
  ∀ n, P16897759533667048522.a n = A156774 n

end A156774

/-! ## A156774.P13788256565504479813

`(81*A156676(n)-1)%A226480(n+1)`
-/

namespace A156774.P13788256565504479813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (81 * A156676 n - 1) (A226480 (n + 1))

end

end A156774.P13788256565504479813

namespace A156774

/-- `(81*A156676(n)-1)%A226480(n+1)` -/
def P13788256565504479813.Spec : Prop :=
  ∀ n, P13788256565504479813.a n = A156774 n

end A156774

/-!
# A156775: Number of iterations of x->(sigma(x)+phi(x))/2 until a non-integer or a previous term is reached, starting with x=n; a(n)=0 if this never happens.

The programs for A156775, there is no canonical definition to state claims against.
-/

/-! ## A156775.P6188471594708009708

`floor(sqrt(A291914(n+1)²+1))`
-/

namespace A156775.P6188471594708009708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A291914 (n + 1) ^ 2 + 1)

end

end A156775.P6188471594708009708

/-! ## A156775.P7610139891087066977

`A028310(abs(A291914(n+1)))`
-/

namespace A156775.P7610139891087066977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |A291914 (n + 1)|.toNat

end

end A156775.P7610139891087066977

/-! ## A156775.P11504472743527753256

`A033930(abs(A291914(n+1)))`
-/

namespace A156775.P11504472743527753256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 |A291914 (n + 1)|.toNat

end

end A156775.P11504472743527753256

/-! ## A156775.P4213135886113945030

`A051801(abs(A291914(n+1)))`
-/

namespace A156775.P4213135886113945030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 |A291914 (n + 1)|.toNat

end

end A156775.P4213135886113945030

/-! ## A156775.P3714422899740419783

`A051802(abs(A291914(n+1)))`
-/

namespace A156775.P3714422899740419783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 |A291914 (n + 1)|.toNat

end

end A156775.P3714422899740419783

/-! ## A156775.P6392694854214361995

`A118541(abs(A291914(n+1)))`
-/

namespace A156775.P6392694854214361995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 |A291914 (n + 1)|.toNat

end

end A156775.P6392694854214361995

/-! ## A156775.P48878161225786998

`A219209(abs(A291914(n+1)))`
-/

namespace A156775.P48878161225786998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219209 |A291914 (n + 1)|.toNat

end

end A156775.P48878161225786998

/-! ## A156775.P11712456816884412160

`A098925(A291914(n+1)²)`
-/

namespace A156775.P11712456816884412160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A291914 (n + 1) ^ 2).toNat

end

end A156775.P11712456816884412160

/-! ## A156775.P18020130175541914446

`A137734(A291914(n+1)²)`
-/

namespace A156775.P18020130175541914446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A291914 (n + 1) ^ 2).toNat

end

end A156775.P18020130175541914446

/-! ## A156775.P2458231222878500551

`A137735(A291914(n+1)²)`
-/

namespace A156775.P2458231222878500551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A291914 (n + 1) ^ 2).toNat

end

end A156775.P2458231222878500551

/-! ## A156775.P4313622572194100057

`∏{d}[A291914(n+1), A014963(#)]`
-/

namespace A156775.P4313622572194100057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A156775.P4313622572194100057

/-! ## A156775.P9158841561938823780

`A028310(∑{digits}[A291914(n+1), #])`
-/

namespace A156775.P9158841561938823780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A156775.P9158841561938823780

/-! ## A156775.P15736679984701832060

`A133388(A291914(n+1)²+1)`
-/

namespace A156775.P15736679984701832060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A291914 (n + 1) ^ 2 + 1).toNat

end

end A156775.P15736679984701832060

/-! ## A156775.P9425177271442771874

`∏{e}[A000079(abs(A291914(n+1))), #]`
-/

namespace A156775.P9425177271442771874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |A291914 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A156775.P9425177271442771874

/-! ## A156775.P11144285085784913063

`gcd(A143259(n+1), A291914(n+1))`
-/

namespace A156775.P11144285085784913063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143259 (n + 1)) (A291914 (n + 1))

end

end A156775.P11144285085784913063

/-! ## A156775.P7704004836549749456

`ceil(A008486(abs(A291914(n+1)))/3)`
-/

namespace A156775.P7704004836549749456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008486 |A291914 (n + 1)|.toNat : ℚ) / 3⌉

end

end A156775.P7704004836549749456

/-! ## A156775.P11787948000519399106

`A003983(∑[n+1]+abs(A291914(n+1)))`
-/

namespace A156775.P11787948000519399106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + |A291914 (n + 1)|).toNat

end

end A156775.P11787948000519399106

/-! ## A156775.P11608098598677071078

`A000005(A011782(abs(A291914(n+1))))`
-/

namespace A156775.P11608098598677071078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 |A291914 (n + 1)|.toNat).toNat

end

end A156775.P11608098598677071078

/-! ## A156775.P7915621881114576635

`A001222(A042950(abs(A291914(n+1))))`
-/

namespace A156775.P7915621881114576635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A042950 |A291914 (n + 1)|.toNat).toNat

end

end A156775.P7915621881114576635

/-!
# A156776: Number of iterations of x->(sigma(x)+phi(x))/2 until a non-integer is reached when starting with x=n; a(n)=0 if this never happens.

The programs for A156776, there is no canonical definition to state claims against.
-/

/-! ## A156776.P5236870624151053352

`A292108(n+1)%or(15, A291914(n+1))`
-/

namespace A156776.P5236870624151053352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292108 (n + 1)) (Int.lor 15 (A291914 (n + 1)))

end

end A156776.P5236870624151053352

/-! ## A156776.P10128206234601591915

`A093709(A291934(n+1))*A292108(n+1)`
-/

namespace A156776.P10128206234601591915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (A291934 (n + 1)).toNat * A292108 (n + 1)

end

end A156776.P10128206234601591915

/-! ## A156776.P13419213769030784976

`A156775(n+1)*A292108(A291934(n+1))`
-/

namespace A156776.P13419213769030784976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156775 (n + 1) * A292108 (A291934 (n + 1)).toNat

end

end A156776.P13419213769030784976

/-! ## A156776.P9873000995564142126

`A292108(A008619(2*n))*A292108(A291934(n+1))`
-/

namespace A156776.P9873000995564142126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292108 (A008619 (2 * n)).toNat * A292108 (A291934 (n + 1)).toNat

end

end A156776.P9873000995564142126

/-! ## A156776.P11740163206940221758

`and(A000124(A290447(n+3)), A292108(n+1))`
-/

namespace A156776.P11740163206940221758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000124 (A290447 (n + 3)).toNat) (A292108 (n + 1))

end

end A156776.P11740163206940221758

/-!
# A156778: a(n) = n*A007504(n)/2 = n*(sum of first n primes)/2.

The programs for A156778, the canonical program `A156778.P4656544164751589866` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156778 has offset 0).

The definition of A156778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156778.P4656544164751589866

`n*A007504(n)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156778

/-- `n*A007504(n)/2` -/
def P4656544164751589866.Spec : Prop :=
  ∀ n, P4656544164751589866.a n = (A156778 n : ℚ)

end A156778

/-! ## A156778.P5866828300481823609

`(∑[p?[or(n, gcd(2, n))]]-2)*n/2`
-/

namespace A156778.P5866828300481823609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.gcd 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) * ((n : ℚ) / 2)

end

end A156778.P5866828300481823609

namespace A156778

/-- `(∑[p?[or(n, gcd(2, n))]]-2)*n/2` -/
def P5866828300481823609.Spec : Prop :=
  ∀ n, P5866828300481823609.a n = (A156778 n : ℚ)

end A156778

/-! ## A156778.P13794049384853214465

`n*(∑[p?[floor(n-sqrt(n))]]-2)/2`
-/

namespace A156778.P13794049384853214465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.sqrt (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 2) : ℤ) : ℚ) / 2

end

end A156778.P13794049384853214465

namespace A156778

/-- `n*(∑[p?[floor(n-sqrt(n))]]-2)/2` -/
def P13794049384853214465.Spec : Prop :=
  ∀ n, P13794049384853214465.a n = (A156778 n : ℚ)

end A156778

/-! ## A156778.P9911300537043992284

`(∑[p?[round(4*n/5)]]-2)*n/2`
-/

namespace A156778.P9911300537043992284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 5))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 2 : ℤ) : ℚ) * ((n : ℚ) / 2)

end

end A156778.P9911300537043992284

namespace A156778

/-- `(∑[p?[round(4*n/5)]]-2)*n/2` -/
def P9911300537043992284.Spec : Prop :=
  ∀ n, P9911300537043992284.a n = (A156778 n : ℚ)

end A156778

/-! ## A156778.P8929673912853339611

`(A083725(n)-n)/2`
-/

namespace A156778.P8929673912853339611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083725 n - (n : ℤ) : ℚ) / 2

end

end A156778.P8929673912853339611

namespace A156778

/-- `(A083725(n)-n)/2` -/
def P8929673912853339611.Spec : Prop :=
  ∀ n, P8929673912853339611.a n = (A156778 n : ℚ)

end A156778

/-!
# A156779: a(n) = Sum_{d|n} sp(d), where sp(d) = A034387(d) = sum of primes <= d.

The programs for A156779, there is no canonical definition to state claims against.
-/

/-! ## A156779.P13644726941474977367

`∑{d}[1+n, A034387(#)]`
-/

namespace A156779.P13644726941474977367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034387 d

end

end A156779.P13644726941474977367

/-! ## A156779.P7297503325650836360

`∑{d}[n+1, A007504(A000720(#))]`
-/

namespace A156779.P7297503325650836360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007504 (A000720 d).toNat

end

end A156779.P7297503325650836360

/-! ## A156779.P14798876573460514594

`∑{d}[n+1, A007504(A230980(#))]`
-/

namespace A156779.P14798876573460514594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007504 (A230980 d).toNat

end

end A156779.P14798876573460514594

/-! ## A156779.P14463499509454888822

`∑{d}[n+1, A115333(A151800(#))]`
-/

namespace A156779.P14463499509454888822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115333 (A151800 d).toNat

end

end A156779.P14463499509454888822

/-! ## A156779.P17861414220687033616

`∑{d}[n+1, A001414(A034386(#))]`
-/

namespace A156779.P17861414220687033616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001414 (A034386 d).toNat

end

end A156779.P17861414220687033616

/-!
# A156780: sp(n)*pi(n) = A034387(n)*A000720(n) = (sum of primes <= n)*(number of primes <= n).

The programs for A156780, there is no canonical definition to state claims against.
-/

/-! ## A156780.P425028812689542475

`2*A156778(A230980(n))`
-/

namespace A156780.P425028812689542475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156778 (A230980 n).toNat

end

end A156780.P425028812689542475

/-! ## A156780.P1435438936130771802

`A063960(record[xor(1, n)])*A230980(n)`
-/

namespace A156780.P1435438936130771802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * A230980 n

end

end A156780.P1435438936130771802

/-! ## A156780.P1703208705614691908

`A063960(2*n+1)*A230980(n)`
-/

namespace A156780.P1703208705614691908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1) * A230980 n

end

end A156780.P1703208705614691908

/-! ## A156780.P12662998921648765555

`lcm(A063960(n+1+n), A230980(n))`
-/

namespace A156780.P12662998921648765555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063960 (n + 1 + n)) (A230980 n)

end

end A156780.P12662998921648765555

/-! ## A156780.P4999290114887847449

`A056172(2*n+1)*A063960(2*n+1)`
-/

namespace A156780.P4999290114887847449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * n + 1) * A063960 (2 * n + 1)

end

end A156780.P4999290114887847449

/-! ## A156780.P499699383563774631

`A063960(2*n+1)*A242096(2*n+1)`
-/

namespace A156780.P499699383563774631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1) * A242096 (2 * n + 1)

end

end A156780.P499699383563774631

/-! ## A156780.P16868864422951698092

`∑[char[A020639(n+2)]]*A063960(2*n+1)`
-/

namespace A156780.P16868864422951698092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A063960 (2 * n + 1)

end

end A156780.P16868864422951698092

/-! ## A156780.P14006842659823553025

`∑[A046926(2*(n+1))]*A063960(2*n+1)`
-/

namespace A156780.P14006842659823553025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A063960 (2 * n + 1)

end

end A156780.P14006842659823553025

/-! ## A156780.P9393011577879455691

`A034387(A028310(n))*A230980(n)`
-/

namespace A156780.P9393011577879455691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A028310 n).toNat * A230980 n

end

end A156780.P9393011577879455691

/-! ## A156780.P6928035982627026815

`A066911(A151800(n))*A230980(n)`
-/

namespace A156780.P6928035982627026815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A151800 n).toNat * A230980 n

end

end A156780.P6928035982627026815

/-!
# A156781: Primes : if sums of prime number and 2 consecutive prime numbers on-left-and-on-right are also primes.

The programs for A156781, there is no canonical definition to state claims against.
-/

/-! ## A156781.P4450913740244720333

`∩[A073681(n+1), A152470(n+1)]`
-/

namespace A156781.P4450913740244720333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156781.P4450913740244720333

/-! ## A156781.P16748300927359318670

`∩[A004139(A072225(n+1)), A073681(n+1)]`
-/

namespace A156781.P16748300927359318670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A072225 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156781.P16748300927359318670

/-! ## A156781.P7312659200092343275

`∩[A000040(A072225(n+1)), A152470(n+1)]`
-/

namespace A156781.P7312659200092343275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072225 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156781.P7312659200092343275

/-! ## A156781.P6207450408278741219

`∩[A073681(n+1), A003961(A152469(n+1))]`
-/

namespace A156781.P6207450408278741219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A152469 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156781.P6207450408278741219

/-! ## A156781.P4001956819088684548

`∩[A064989(A152469(n+1)), A152470(n+1)]`
-/

namespace A156781.P4001956819088684548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A152469 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156781.P4001956819088684548

/-!
# A156782: Primes : if sums of prime number and 4 consecutive prime numbers on-left-and-on-right are also primes.

The programs for A156782, there is no canonical definition to state claims against.
-/

/-! ## A156782.P1210616306373628911

`A089297(A021013(n))`
-/

namespace A156782.P1210616306373628911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089297 (A021013 n).toNat

end

end A156782.P1210616306373628911

/-!
# A156783: Primes : if sums of prime number and 6 consecutive prime numbers on-left-and-on-right are also primes.

The programs for A156783, there is no canonical definition to state claims against.
-/

/-! ## A156783.P1200586261250733952

`p?[A305732(3*n+5)+37]`
-/

namespace A156783.P1200586261250733952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305732 (3 * n + 5) + 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156783.P1200586261250733952

/-! ## A156783.P3333529923710037975

`p?[A114255(A114255(2*n+3))+7]`
-/

namespace A156783.P3333529923710037975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114255 (A114255 (2 * n + 3)).toNat + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156783.P3333529923710037975

/-!
# A156784: Primes : if sums of prime number and 8 consecutive prime numbers on-left-and-on-right are also primes.

The programs for A156784, there is no canonical definition to state claims against.
-/

/-! ## A156784.P12349777679212844380

`A216497(n+1)+A186681(A094567(n))`
-/

namespace A156784.P12349777679212844380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216497 (n + 1) + A186681 (A094567 n).toNat

end

end A156784.P12349777679212844380

/-! ## A156784.P12792398478309251577

`A216497(n+1)+A186681(A045545(3*n+1))`
-/

namespace A156784.P12792398478309251577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216497 (n + 1) + A186681 (A045545 (3 * n + 1)).toNat

end

end A156784.P12792398478309251577

/-!
# A156788: Triangle T(n, k) = binomial(n, k)*A000166(n-k)*k^n with T(0, 0) = 1, read by rows.

The programs for A156788, the canonical program `A156788.P4118939104372690589` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156788 has offset 0).

The definition of A156788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*A000166(row(n)-col(n))*col(n)^row(n)` (program `A156788.P4118939104372690589`, by `A156788.P4118939104372690589.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156788.P4118939104372690589

`C(row(n), col(n))*A000166(row(n)-col(n))*col(n)^row(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156788

/-- `C(row(n), col(n))*A000166(row(n)-col(n))*col(n)^row(n)` -/
def P4118939104372690589.Spec : Prop :=
  ∀ n, P4118939104372690589.a n = A156788 n

theorem P4118939104372690589.correct : P4118939104372690589.Spec := by
  intro n
  simp only [A156788]

end A156788

/-! ## A156788.P10934474786452329996

`A004248(A245300(n))*A008290(n)`
-/

namespace A156788.P10934474786452329996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A245300 n).toNat * A008290 n

end

end A156788.P10934474786452329996

namespace A156788

/-- `A004248(A245300(n))*A008290(n)` -/
def P10934474786452329996.Spec : Prop :=
  ∀ n, P10934474786452329996.a n = A156788 n

end A156788

/-! ## A156788.P15244961725068998504

`A002262(n)^A003056(n)*A008290(n)`
-/

namespace A156788.P15244961725068998504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A003056 n : ℤ) * (A008290 n : ℚ)

end

end A156788.P15244961725068998504

namespace A156788

/-- `A002262(n)^A003056(n)*A008290(n)` -/
def P15244961725068998504.Spec : Prop :=
  ∀ n, P15244961725068998504.a n = (A156788 n : ℚ)

end A156788

/-! ## A156788.P6353270584194193937

`A059297(n)*A277004(n)`
-/

namespace A156788.P6353270584194193937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 n * A277004 n

end

end A156788.P6353270584194193937

namespace A156788

/-- `A059297(n)*A277004(n)` -/
def P6353270584194193937.Spec : Prop :=
  ∀ n, P6353270584194193937.a n = A156788 n

end A156788

/-! ## A156788.P12999802078226897282

`A276995(n)*A395701(n)`
-/

namespace A156788.P12999802078226897282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276995 n * A395701 n

end

end A156788.P12999802078226897282

namespace A156788

/-- `A276995(n)*A395701(n)` -/
def P12999802078226897282.Spec : Prop :=
  ∀ n, P12999802078226897282.a n = A156788 n

end A156788

/-!
# A156789: Irregular triangle, read by rows, T(n, k) = binomial(2*n, k)*binomial(2*k, k).

The programs for A156789, the canonical program `A156789.P14168589977904999980` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156789 has offset 0).

The definition of A156789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3969 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156789.P14168589977904999980

`A098473(A161983(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A156789

/-- `A098473(A161983(n))` -/
def P14168589977904999980.Spec : Prop :=
  ∀ n, P14168589977904999980.a n = A156789 n

theorem P14168589977904999980.correct : P14168589977904999980.Spec := by
  intro n
  simp only [A156789]

end A156789

/-! ## A156789.P5714661035550656463

`A098473(A116942(2*n))`
-/

namespace A156789.P5714661035550656463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A116942 (2 * n)).toNat

end

end A156789.P5714661035550656463

namespace A156789

/-- `A098473(A116942(2*n))` -/
def P5714661035550656463.Spec : Prop :=
  ∀ n, P5714661035550656463.a n = A156789 n

end A156789

/-! ## A156789.P1766278186703655526

`A098473(A007606(n+1)-1)`
-/

namespace A156789.P1766278186703655526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A007606 (n + 1) - 1).toNat

end

end A156789.P1766278186703655526

namespace A156789

/-- `A098473(A007606(n+1)-1)` -/
def P1766278186703655526.Spec : Prop :=
  ∀ n, P1766278186703655526.a n = A156789 n

theorem P1766278186703655526.correct : P1766278186703655526.Spec := by
  intro n
  simp only [A156789, Nat.add_sub_cancel, A156789.P1766278186703655526.a, A156789.P14168589977904999980.a, A007606, A007606.P7799483194053309628.f1, A007606.P7799483194053309628.a, A098473, A098473.P7476735239146920852.a, A161983, A161983.P7486085872780093251.a, A381232, A381232.P8771641921475039308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156789

/-! ## A156789.P10136123750685318844

`A098473(2*n-A196199(n))`
-/

namespace A156789.P10136123750685318844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 ((2 * n : ℤ) - A196199 n).toNat

end

end A156789.P10136123750685318844

namespace A156789

/-- `A098473(2*n-A196199(n))` -/
def P10136123750685318844.Spec : Prop :=
  ∀ n, P10136123750685318844.a n = A156789 n

theorem P10136123750685318844.correct : P10136123750685318844.Spec := by
  intro n
  simp only [A156789, Nat.add_sub_cancel, A156789.P10136123750685318844.a, A156789.P14168589977904999980.a, A098473, A098473.P7476735239146920852.a, A161983, A161983.P7486085872780093251.a, A196199, A196199.P3919230471390252242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156789

/-! ## A156789.P13868844721685760011

`A098473(n-A196199(n)+n)`
-/

namespace A156789.P13868844721685760011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A156789.P13868844721685760011

namespace A156789

/-- `A098473(n-A196199(n)+n)` -/
def P13868844721685760011.Spec : Prop :=
  ∀ n, P13868844721685760011.a n = A156789 n

theorem P13868844721685760011.correct : P13868844721685760011.Spec := by
  intro n
  simp only [A156789, Nat.add_sub_cancel, A156789.P13868844721685760011.a, A156789.P14168589977904999980.a, A098473, A098473.P7476735239146920852.a, A161983, A161983.P7486085872780093251.a, A196199, A196199.P3919230471390252242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156789

/-! ## A156789.P1829072068279924776

`A098473(n-(A196199(n)-n))`
-/

namespace A156789.P1829072068279924776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A156789.P1829072068279924776

namespace A156789

/-- `A098473(n-(A196199(n)-n))` -/
def P1829072068279924776.Spec : Prop :=
  ∀ n, P1829072068279924776.a n = A156789 n

theorem P1829072068279924776.correct : P1829072068279924776.Spec := by
  intro n
  simp only [A156789, Nat.add_sub_cancel, A156789.P1829072068279924776.a, A156789.P14168589977904999980.a, A098473, A098473.P7476735239146920852.a, A161983, A161983.P7486085872780093251.a, A196199, A196199.P3919230471390252242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156789

/-! ## A156789.P12521746691062901741

`A098473(eq[n+1, A056011(n+1)])`
-/

namespace A156789.P12521746691062901741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156789.P12521746691062901741

namespace A156789

/-- `A098473(eq[n+1, A056011(n+1)])` -/
def P12521746691062901741.Spec : Prop :=
  ∀ n, P12521746691062901741.a n = A156789 n

end A156789

/-! ## A156789.P3848306477371764707

`A098473(A048760(n)+A028392(n))`
-/

namespace A156789.P3848306477371764707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A048760 n + A028392 n).toNat

end

end A156789.P3848306477371764707

namespace A156789

/-- `A098473(A048760(n)+A028392(n))` -/
def P3848306477371764707.Spec : Prop :=
  ∀ n, P3848306477371764707.a n = A156789 n

end A156789

/-! ## A156789.P17423200430561910268

`A098473(eq[A038722(n+1), A056023(n+1)])`
-/

namespace A156789.P17423200430561910268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A156789.P17423200430561910268

namespace A156789

/-- `A098473(eq[A038722(n+1), A056023(n+1)])` -/
def P17423200430561910268.Spec : Prop :=
  ∀ n, P17423200430561910268.a n = A156789 n

end A156789

/-! ## A156789.P9239378572422367607

`A098473(eq[A002260(n+1), A092543(n+1)])`
-/

namespace A156789.P9239378572422367607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A156789.P9239378572422367607

namespace A156789

/-- `A098473(eq[A002260(n+1), A092543(n+1)])` -/
def P9239378572422367607.Spec : Prop :=
  ∀ n, P9239378572422367607.a n = A156789 n

end A156789

/-!
# A156790: Number of first quadrant lattice squares inside the circle x^2+y^2=(2^n)^2.

The programs for A156790, there is no canonical definition to state claims against.
-/

/-! ## A156790.P4547164654765456378

`A001182(2^n)`
-/

namespace A156790.P4547164654765456378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001182 (2 ^ n)

end

end A156790.P4547164654765456378

/-! ## A156790.P1413262876520309689

`A007882(2^n)`
-/

namespace A156790.P1413262876520309689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007882 (2 ^ n)

end

end A156790.P1413262876520309689

/-! ## A156790.P14616801269249639773

`A136514(2^n)/2`
-/

namespace A156790.P14616801269249639773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136514 (2 ^ n) : ℚ) / 2

end

end A156790.P14616801269249639773

/-! ## A156790.P4323710724116665986

`A119677(2^n)/4`
-/

namespace A156790.P4323710724116665986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119677 (2 ^ n) : ℚ) / 4

end

end A156790.P4323710724116665986

/-! ## A156790.P2916437559936593842

`record[A001182(A029930(n))]`
-/

namespace A156790.P2916437559936593842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001182 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156790.P2916437559936593842

/-!
# A156791: INVERTi transform of A006973.

The programs for A156791, there is no canonical definition to state claims against.
-/

/-! ## A156791.P2435252110034911040

`A156792(∑[n])`
-/

namespace A156791.P2435252110034911040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156792 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156791.P2435252110034911040

/-! ## A156791.P8268699524103435591

`A156792(A000217(n))^A178334(n)`
-/

namespace A156791.P8268699524103435591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156792 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A156791.P8268699524103435591

/-! ## A156791.P8810838570180319845

`A156792(A316966(n))^A178334(n)`
-/

namespace A156791.P8810838570180319845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156792 (A316966 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A156791.P8810838570180319845

/-! ## A156791.P178162983842342409

`gcd(A151909(n), A156792(A000217(n)))`
-/

namespace A156791.P178162983842342409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151909 n) (A156792 (A000217 n).toNat)

end

end A156791.P178162983842342409

/-! ## A156791.P15745052511581585710

`lcm(A033999(n), A156792(A000217(n)))`
-/

namespace A156791.P15745052511581585710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A156792 (A000217 n).toNat)

end

end A156791.P15745052511581585710

/-! ## A156791.P651912935203957837

`lcm(A057077(n), A156792(A316966(n)))`
-/

namespace A156791.P651912935203957837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A156792 (A316966 n).toNat)

end

end A156791.P651912935203957837

/-! ## A156791.P6204576272652087814

`or(A000007(n), A156792(A000217(n)))`
-/

namespace A156791.P6204576272652087814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A156792 (A000217 n).toNat)

end

end A156791.P6204576272652087814

/-! ## A156791.P3309746817757740776

`A156792(A000217(n))*A188642(A004738(n+1))`
-/

namespace A156791.P3309746817757740776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156792 (A000217 n).toNat * A188642 (A004738 (n + 1)).toNat

end

end A156791.P3309746817757740776

/-!
# A156793: Indices of primes whose reversal is a different prime.

The programs for A156793, there is no canonical definition to state claims against.
-/

/-! ## A156793.P15109525493170219725

`A000720(A006567(n+1))`
-/

namespace A156793.P15109525493170219725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006567 (n + 1)).toNat

end

end A156793.P15109525493170219725

/-! ## A156793.P8948154153679244699

`A061395(or(1, A006567(n+1)))`
-/

namespace A156793.P8948154153679244699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A006567 (n + 1))).toNat

end

end A156793.P8948154153679244699

/-! ## A156793.P10746492748164176487

`∑{d}[A006567(n+1), A061395(#)]`
-/

namespace A156793.P10746492748164176487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A156793.P10746492748164176487

/-! ## A156793.P2616609405873916371

`A061395(A006567(n+1)+A000007(n+2))`
-/

namespace A156793.P2616609405873916371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006567 (n + 1) + A000007 (n + 2)).toNat

end

end A156793.P2616609405873916371

/-! ## A156793.P7606569368833990439

`A061395(A006567(n+1)%A074822(n+1))`
-/

namespace A156793.P7606569368833990439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A006567 (n + 1)) (A074822 (n + 1))).toNat

end

end A156793.P7606569368833990439

/-! ## A156793.P16865559505487693974

`record[A061395(A068893(n+1))]`
-/

namespace A156793.P16865559505487693974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A068893 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156793.P16865559505487693974

/-! ## A156793.P11441409070785029048

`A000720(p?[A068893(n+1)])`
-/

namespace A156793.P11441409070785029048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A156793.P11441409070785029048

/-! ## A156793.P12945000551962376091

`A061395(p?[A068893(n+1)])`
-/

namespace A156793.P12945000551962376091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A156793.P12945000551962376091

/-! ## A156793.P4744262372294895663

`A061395(2*A006567(n+1))`
-/

namespace A156793.P4744262372294895663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A006567 (n + 1)).toNat

end

end A156793.P4744262372294895663

/-! ## A156793.P4462868364338763265

`A058933(2*A006567(n+1)-A006567(n+1))`
-/

namespace A156793.P4462868364338763265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A006567 (n + 1) - A006567 (n + 1)).toNat

end

end A156793.P4462868364338763265

/-! ## A156793.P8639048362262976973

`A036234(A006567(n+1)-1)`
-/

namespace A156793.P8639048362262976973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A006567 (n + 1) - 1).toNat

end

end A156793.P8639048362262976973

/-! ## A156793.P6742733969352046898

`A055396(or(1, A006567(n+1)))`
-/

namespace A156793.P6742733969352046898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A006567 (n + 1))).toNat

end

end A156793.P6742733969352046898

/-! ## A156793.P13188825921482817426

`∑{d}[A006567(n+1), A055396(#)]`
-/

namespace A156793.P13188825921482817426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A156793.P13188825921482817426

/-!
# A156795: a(n) = 81*n - 59.

The programs for A156795, the canonical program `A156795.P16271148596631331966` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156795 has offset 1).

The definition of A156795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)-59` (program `A156795.P16271148596631331966`, by `A156795.P16271148596631331966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156795.P16271148596631331966

`81*(n+1)-59`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156795

/-- `81*(n+1)-59` -/
def P16271148596631331966.Spec : Prop :=
  ∀ n, P16271148596631331966.a n = A156795 (n + 1)

theorem P16271148596631331966.correct : P16271148596631331966.Spec := by
  intro n
  simp only [A156795, Nat.add_sub_cancel]

end A156795

/-!
# A156796: a(n) = 81*n - 22.

The programs for A156796, the canonical program `A156796.P4897094556985414450` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156796 has offset 1).

The definition of A156796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)-22` (program `A156796.P4897094556985414450`, by `A156796.P4897094556985414450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156796.P4897094556985414450

`81*(n+1)-22`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156796

/-- `81*(n+1)-22` -/
def P4897094556985414450.Spec : Prop :=
  ∀ n, P4897094556985414450.a n = A156796 (n + 1)

theorem P4897094556985414450.correct : P4897094556985414450.Spec := by
  intro n
  simp only [A156796, Nat.add_sub_cancel]

end A156796

/-!
# A156797: Numbers k such that k^2 + 2 == 0 (mod (9^2)).

The programs for A156797, the canonical program `A156797.P15976869345263982027` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156797 has offset 1).

The definition of A156797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156797.P5148165716666997380

`ogf((22+37x+22x^2)/(1-x-x^2+x^3))`
-/

namespace A156797.P5148165716666997380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, 37, 22] [1, -1, -1, 1] n

end

end A156797.P5148165716666997380

namespace A156797

/-- `ogf((22+37x+22x^2)/(1-x-x^2+x^3))` -/
def P5148165716666997380.Spec : Prop :=
  ∀ n, P5148165716666997380.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P15976869345263982027

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=22, a(1)=59, a(2)=103`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156797

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P15976869345263982027.Spec : Prop :=
  ∀ n, P15976869345263982027.a n = A156797 (n + 1)

theorem P15976869345263982027.correct : P15976869345263982027.Spec := by
  intro n
  simp only [A156797, Nat.add_sub_cancel]

end A156797

/-! ## A156797.P16941701661194334703

`a(n-2)+81` with `a(0)=22, a(1)=59`
-/

namespace A156797.P16941701661194334703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 59] fun n a =>
  a (n - 2) + 81

end

end A156797.P16941701661194334703

namespace A156797

/-- `a(n-2)+81` -/
def P16941701661194334703.Spec : Prop :=
  ∀ n, (P16941701661194334703.a n : ℤ) = A156797 (n + 1)

end A156797

/-! ## A156797.P5253365598166744224

`∑[floor(a(n-2))]` with `a(0)=22, a(1)=37, a(2)=44`

`floor` is left out, it is the identity on integers.
-/

namespace A156797.P5253365598166744224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22, 37, 44] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156797.P5253365598166744224

namespace A156797

/-- `∑[floor(a(n-2))]` -/
def P5253365598166744224.Spec : Prop :=
  ∀ n, (P5253365598166744224.a n : ℤ) = A156797 (n + 1)

end A156797

/-! ## A156797.P4457826485932018798

`81*n-a(n-1)` with `a(0)=22`
-/

namespace A156797.P4457826485932018798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22] fun n a =>
  (81 * n : ℤ) - a (n - 1)

end

end A156797.P4457826485932018798

namespace A156797

/-- `81*n-a(n-1)` -/
def P4457826485932018798.Spec : Prop :=
  ∀ n, P4457826485932018798.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P13980223962504506473

`∪[81*n+22, 81*n+59]`
-/

namespace A156797.P13980223962504506473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81 * n + 22

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81 * n + 59

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A156797.P13980223962504506473

namespace A156797

/-- `∪[81*n+22, 81*n+59]` -/
def P13980223962504506473.Spec : Prop :=
  ∀ n, (P13980223962504506473.a n : ℤ) = A156797 (n + 1)

end A156797

/-! ## A156797.P4194603416692042467

`A159008(n+1)-A047621(n+1)`
-/

namespace A156797.P4194603416692042467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159008 (n + 1) - A047621 (n + 1)

end

end A156797.P4194603416692042467

namespace A156797

/-- `A159008(n+1)-A047621(n+1)` -/
def P4194603416692042467.Spec : Prop :=
  ∀ n, P4194603416692042467.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P11346016689679967659

`A304157(n+1)-A168333(n+1)`
-/

namespace A156797.P11346016689679967659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - A168333 (n + 1)

end

end A156797.P11346016689679967659

namespace A156797

/-- `A304157(n+1)-A168333(n+1)` -/
def P11346016689679967659.Spec : Prop :=
  ∀ n, P11346016689679967659.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P16146540239224231101

`A155450(n+1)+A159008(n+1)-A164131(n+1)`
-/

namespace A156797.P16146540239224231101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1) + (A159008 (n + 1) - A164131 (n + 1))

end

end A156797.P16146540239224231101

namespace A156797

/-- `A155450(n+1)+A159008(n+1)-A164131(n+1)` -/
def P16146540239224231101.Spec : Prop :=
  ∀ n, P16146540239224231101.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P6400176720056640034

`A169599(2*n+1)+A169598(n+2)`
-/

namespace A156797.P6400176720056640034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * n + 1) + A169598 (n + 2)

end

end A156797.P6400176720056640034

namespace A156797

/-- `A169599(2*n+1)+A169598(n+2)` -/
def P6400176720056640034.Spec : Prop :=
  ∀ n, P6400176720056640034.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P15778627469240560730

`6*n+1+A169598(2*n+1)+A169598(n+2)`
-/

namespace A156797.P15778627469240560730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) + (A169598 (2 * n + 1) + A169598 (n + 2))

end

end A156797.P15778627469240560730

namespace A156797

/-- `6*n+1+A169598(2*n+1)+A169598(n+2)` -/
def P15778627469240560730.Spec : Prop :=
  ∀ n, P15778627469240560730.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P4740516436387717240

`A169599(2*n+1)+A169599(n+2)-A007310(n+2)`
-/

namespace A156797.P4740516436387717240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (2 * n + 1) + (A169599 (n + 2) - A007310 (n + 2))

end

end A156797.P4740516436387717240

namespace A156797

/-- `A169599(2*n+1)+A169599(n+2)-A007310(n+2)` -/
def P4740516436387717240.Spec : Prop :=
  ∀ n, P4740516436387717240.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P15207427713339896315

`A259755(3*n+2)+A001651(3*n+2)`
-/

namespace A156797.P15207427713339896315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259755 (3 * n + 2) + A001651 (3 * n + 2)

end

end A156797.P15207427713339896315

namespace A156797

/-- `A259755(3*n+2)+A001651(3*n+2)` -/
def P15207427713339896315.Spec : Prop :=
  ∀ n, P15207427713339896315.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P7223694196746303546

`A156674(n+1)+A047406(A047406(n+1)-1)`
-/

namespace A156797.P7223694196746303546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + A047406 (A047406 (n + 1) - 1).toNat

end

end A156797.P7223694196746303546

namespace A156797

/-- `A156674(n+1)+A047406(A047406(n+1)-1)` -/
def P7223694196746303546.Spec : Prop :=
  ∀ n, P7223694196746303546.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P14202705144923452285

`A113804(A113804(n+1)-n)-A166517(n)`
-/

namespace A156797.P14202705144923452285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (A113804 (n + 1) - (n : ℤ)).toNat - A166517 n

end

end A156797.P14202705144923452285

namespace A156797

/-- `A113804(A113804(n+1)-n)-A166517(n)` -/
def P14202705144923452285.Spec : Prop :=
  ∀ n, P14202705144923452285.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P12672574765069376003

`A156638(9*n+5)`
-/

namespace A156797.P12672574765069376003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (9 * n + 5)

end

end A156797.P12672574765069376003

namespace A156797

/-- `A156638(9*n+5)` -/
def P12672574765069376003.Spec : Prop :=
  ∀ n, P12672574765069376003.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P11677868431459967696

`A274406(A017209(n))+5`
-/

namespace A156797.P11677868431459967696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (A017209 n).toNat + 5

end

end A156797.P11677868431459967696

namespace A156797

/-- `A274406(A017209(n))+5` -/
def P11677868431459967696.Spec : Prop :=
  ∀ n, P11677868431459967696.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P2000563138017763789

`sqrt(A061101(sqrt(A061101(2*(n+1)))))`
-/

namespace A156797.P2000563138017763789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061101 (SequenceMachineLib.roundAway (Real.sqrt (A061101 (2 * (n + 1)) : ℝ))).toNat : ℝ)

end

end A156797.P2000563138017763789

namespace A156797

/-- `sqrt(A061101(sqrt(A061101(2*(n+1)))))` -/
def P2000563138017763789.Spec : Prop :=
  ∀ n, P2000563138017763789.a n = (A156797 (n + 1) : ℝ)

end A156797

/-! ## A156797.P4641388804585512920

`A311491(A143988(n+1))`
-/

namespace A156797.P4641388804585512920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311491 (A143988 (n + 1)).toNat

end

end A156797.P4641388804585512920

namespace A156797

/-- `A311491(A143988(n+1))` -/
def P4641388804585512920.Spec : Prop :=
  ∀ n, P4641388804585512920.a n = A156797 (n + 1)

end A156797

/-! ## A156797.P1157748032581202918

`eq[A070570(n), A307744(n)]`
-/

namespace A156797.P1157748032581202918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156797.P1157748032581202918

namespace A156797

/-- `eq[A070570(n), A307744(n)]` -/
def P1157748032581202918.Spec : Prop :=
  ∀ n, (P1157748032581202918.a n : ℤ) = A156797 (n + 1)

end A156797

/-!
# A156798: a(n) = n^4 + 5*n^2 + 4.

The programs for A156798, the canonical program `A156798.P10525748190720154864` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156798 has offset 0).

The definition of A156798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+5*n²+4` (program `A156798.P10525748190720154864`, by `A156798.P10525748190720154864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156798.P15645018312252584072

`n²+(n²+2)²`
-/

namespace A156798.P15645018312252584072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n ^ 2 + 2) ^ 2

end

end A156798.P15645018312252584072

namespace A156798

/-- `n²+(n²+2)²` -/
def P15645018312252584072.Spec : Prop :=
  ∀ n, (P15645018312252584072.a n : ℤ) = A156798 n

theorem P15645018312252584072.correct : P15645018312252584072.Spec := by
  intro n
  simp only [A156798, Nat.add_sub_cancel, A156798.P15645018312252584072.a, A156798.P10525748190720154864.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A156798

/-! ## A156798.P10525748190720154864

`n^4+5*n²+4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A156798

/-- `n^4+5*n²+4` -/
def P10525748190720154864.Spec : Prop :=
  ∀ n, (P10525748190720154864.a n : ℤ) = A156798 n

theorem P10525748190720154864.correct : P10525748190720154864.Spec := by
  intro n
  simp only [A156798]

end A156798

/-! ## A156798.P2121572652441867686

`ogf((4-10x+30x^2-10x^3+10x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A156798.P2121572652441867686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -10, 30, -10, 10] [1, -5, 10, -10, 5, -1] n

end

end A156798.P2121572652441867686

namespace A156798

/-- `ogf((4-10x+30x^2-10x^3+10x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2121572652441867686.Spec : Prop :=
  ∀ n, P2121572652441867686.a n = A156798 n

end A156798

/-! ## A156798.P17546051843999300775

`A028552(A002522(n))`
-/

namespace A156798.P17546051843999300775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A002522 n).toNat

end

end A156798.P17546051843999300775

namespace A156798

/-- `A028552(A002522(n))` -/
def P17546051843999300775.Spec : Prop :=
  ∀ n, P17546051843999300775.a n = A156798 n

end A156798

/-! ## A156798.P10068718452848172603

`(n²+1)*A087475(n)`
-/

namespace A156798.P10068718452848172603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A087475 n

end

end A156798.P10068718452848172603

namespace A156798

/-- `(n²+1)*A087475(n)` -/
def P10068718452848172603.Spec : Prop :=
  ∀ n, P10068718452848172603.a n = A156798 n

theorem P10068718452848172603.correct : P10068718452848172603.Spec := by
  intro n
  simp only [A156798, Nat.add_sub_cancel, A156798.P10068718452848172603.a, A156798.P10525748190720154864.a, A087475, A087475.P4372105407425732933.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156798

/-! ## A156798.P12149562463542594286

`2*(3*n*A004006(n)+2)`
-/

namespace A156798.P12149562463542594286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * ((n : ℤ) * A004006 n) + 2)

end

end A156798.P12149562463542594286

namespace A156798

/-- `2*(3*n*A004006(n)+2)` -/
def P12149562463542594286.Spec : Prop :=
  ∀ n, P12149562463542594286.a n = A156798 n

theorem P12149562463542594286.correct : P12149562463542594286.Spec := by
  intro n
  simp only [A156798, Nat.add_sub_cancel, A156798.P12149562463542594286.a, A156798.P10525748190720154864.a, A004006, A004006.P3732720668660365450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156798

/-! ## A156798.P7702794459502339089

`(A097066(2*n)+3)*A097066(2*n)`
-/

namespace A156798.P7702794459502339089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097066 (2 * n) + 3) * A097066 (2 * n)

end

end A156798.P7702794459502339089

namespace A156798

/-- `(A097066(2*n)+3)*A097066(2*n)` -/
def P7702794459502339089.Spec : Prop :=
  ∀ n, P7702794459502339089.a n = A156798 n

end A156798

/-! ## A156798.P1184332934179982048

`A028552(n²+1)`
-/

namespace A156798.P1184332934179982048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n ^ 2 + 1)

end

end A156798.P1184332934179982048

namespace A156798

/-- `A028552(n²+1)` -/
def P1184332934179982048.Spec : Prop :=
  ∀ n, P1184332934179982048.a n = A156798 n

theorem P1184332934179982048.correct : P1184332934179982048.Spec := by
  intro n
  simp only [A156798, Nat.add_sub_cancel, A156798.P1184332934179982048.a, A156798.P10525748190720154864.a, A028552, A028552.P13982725828206412774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156798

/-! ## A156798.P4447604466817239441

`A070261(n²+1)`
-/

namespace A156798.P4447604466817239441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070261 (n ^ 2 + 1)

end

end A156798.P4447604466817239441

namespace A156798

/-- `A070261(n²+1)` -/
def P4447604466817239441.Spec : Prop :=
  ∀ n, P4447604466817239441.a n = A156798 n

end A156798

/-! ## A156798.P11183676902222496594

`A217748(n²+4)`
-/

namespace A156798.P11183676902222496594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n ^ 2 + 4)

end

end A156798.P11183676902222496594

namespace A156798

/-- `A217748(n²+4)` -/
def P11183676902222496594.Spec : Prop :=
  ∀ n, P11183676902222496594.a n = A156798 n

end A156798

/-! ## A156798.P15047600888144840494

`2*A000096(n²+1)`
-/

namespace A156798.P15047600888144840494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000096 (n ^ 2 + 1)

end

end A156798.P15047600888144840494

namespace A156798

/-- `2*A000096(n²+1)` -/
def P15047600888144840494.Spec : Prop :=
  ∀ n, P15047600888144840494.a n = A156798 n

theorem P15047600888144840494.correct : P15047600888144840494.Spec := by
  intro n
  simp only [A156798, Nat.add_sub_cancel, A156798.P15047600888144840494.a, A156798.P10525748190720154864.a, A000096, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156798

/-! ## A156798.P15692991322759416641

`floor(sqrt(A052762(n²+4)))`
-/

namespace A156798.P15692991322759416641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A052762 (n ^ 2 + 4))

end

end A156798.P15692991322759416641

namespace A156798

/-- `floor(sqrt(A052762(n²+4)))` -/
def P15692991322759416641.Spec : Prop :=
  ∀ n, P15692991322759416641.a n = A156798 n

end A156798

/-! ## A156798.P4506086257595136639

`abs(2-A002378(A059100(n)))`
-/

namespace A156798.P4506086257595136639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A002378 (A059100 n).toNat|

end

end A156798.P4506086257595136639

namespace A156798

/-- `abs(2-A002378(A059100(n)))` -/
def P4506086257595136639.Spec : Prop :=
  ∀ n, P4506086257595136639.a n = A156798 n

end A156798

/-! ## A156798.P13808638172856433925

`record[A000122(n)*A347553(n+4)]`
-/

namespace A156798.P13808638172856433925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A347553 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156798.P13808638172856433925

namespace A156798

/-- `record[A000122(n)*A347553(n+4)]` -/
def P13808638172856433925.Spec : Prop :=
  ∀ n, P13808638172856433925.a n = A156798 n

end A156798

/-!
# A156799: Indices of 1's in Gijswijt's sequence A090822.

The programs for A156799, there is no canonical definition to state claims against.
-/

/-! ## A156799.P1542992423044806680

`A157334(n)+a(n-1)` with `a(0)=1`
-/

namespace A156799.P1542992423044806680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157334 n + a (n - 1)

end

end A156799.P1542992423044806680

/-! ## A156799.P1179893243333747174

`eq[1, A090822(1+n)]+1`
-/

namespace A156799.P1179893243333747174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156799.P1179893243333747174

/-! ## A156799.P8098002768612556540

`lt[A090822(n+1), 2]+1`
-/

namespace A156799.P8098002768612556540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A156799.P8098002768612556540

/-! ## A156799.P16391526734083386032

`record[n*a(A090822(n))%2]` with `a(0)=1, a(1)=1`
-/

namespace A156799.P16391526734083386032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * (f1 (A090822 n).toNat % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156799.P16391526734083386032

/-! ## A156799.P486606202239738768

`record[A000027(n+1)/A090822(n+1)]`
-/

namespace A156799.P486606202239738768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A090822 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156799.P486606202239738768

/-! ## A156799.P14379310127189483742

`record[(n+1)/A090822(n+1)]%A064955(n+1)`
-/

namespace A156799.P14379310127189483742
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A090822 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A064955 (n + 1))

end

end A156799.P14379310127189483742

/-! ## A156799.P8581178500111931309

`record[lcm(n+1, A006530(n+1))/A090822(n+1)]`
-/

namespace A156799.P8581178500111931309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006530 (n + 1)) : ℚ) / (A090822 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156799.P8581178500111931309

/-! ## A156799.P137151427660700251

`eq[A057427(n), A090822(A028310(n))]`
-/

namespace A156799.P137151427660700251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156799.P137151427660700251

/-! ## A156799.P5455493881015786047

`record[A263272(A263272(n+1))/A090822(n+1)]`
-/

namespace A156799.P5455493881015786047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263272 (A263272 (n + 1)).toNat : ℚ) / (A090822 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156799.P5455493881015786047

/-! ## A156799.P7575314984594195821

`record[A193231(A193231(n+1))/A090822(n+1)]`
-/

namespace A156799.P7575314984594195821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193231 (A193231 (n + 1)).toNat : ℚ) / (A090822 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156799.P7575314984594195821

/-! ## A156799.P6587004646809871365

`record[A004526(2*(n+1))/A090822(n+1)]`
-/

namespace A156799.P6587004646809871365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * (n + 1)) : ℚ) / (A090822 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156799.P6587004646809871365

/-! ## A156799.P3915232628014156425

`record[A110654(2*n+1)/A090822(n+1)]`
-/

namespace A156799.P3915232628014156425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (2 * n + 1) : ℚ) / (A090822 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156799.P3915232628014156425

/-! ## A156799.P14543746097509732753

`record[A123108(2*n)/A090822(A123108(2*n))]`
-/

namespace A156799.P14543746097509732753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (2 * n) : ℚ) / (A090822 (A123108 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156799.P14543746097509732753

