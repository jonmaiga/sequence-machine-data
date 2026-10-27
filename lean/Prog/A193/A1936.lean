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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A193600: Indices n such that Padovan(n) < r^n/(2*r+3) where r is the real root of the polynomial x^3-x-1.

The programs for A193600, there is no canonical definition to state claims against.
-/

/-! ## A193600.P7291897512527982206

`lt[1, a(n-3)-a(n-1)]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A193600.P7291897512527982206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n f2 =>
  f2 (n - 3) - f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193600.P7291897512527982206

/-! ## A193600.P16703802256216498656

`comp[A193599(n)]`
-/

namespace A193600.P16703802256216498656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193600.P16703802256216498656

/-! ## A193600.P15717431456289930985

`lt[0, Δ[A104770(n+2)]]`
-/

namespace A193600.P15717431456289930985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193600.P15717431456289930985

/-! ## A193600.P167894161017695414

`comp[A051017(n+1)-41]`
-/

namespace A193600.P167894161017695414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1) - 41

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193600.P167894161017695414

/-! ## A193600.P15214334196235379475

`comp[A051016(n+1)-166]`
-/

namespace A193600.P15214334196235379475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051016 (n + 1) - 166

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193600.P15214334196235379475

/-! ## A193600.P9146375551056691983

`lt[2*A104770(n+2), A104770(n)]`
-/

namespace A193600.P9146375551056691983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104770 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193600.P9146375551056691983

/-! ## A193600.P6212771509529818106

`eq[abs(A005120(n+12)), A005120(n+12)]`
-/

namespace A193600.P6212771509529818106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005120 (n + 12)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005120 (n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193600.P6212771509529818106

/-! ## A193600.P9021078282637396256

`record[A028242(A189407(n+1))+and(1, n+1)]`
-/

namespace A193600.P9021078282637396256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A189407 (n + 1)).toNat + (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193600.P9021078282637396256

/-! ## A193600.P9794091266513184150

`record[A110654(n)+A001057(A014245(n+1))]`
-/

namespace A193600.P9794091266513184150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A001057 (A014245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193600.P9794091266513184150

/-! ## A193600.P6856203158666098685

`record[A004526(n+1)+A001057(A014245(n+1))]`
-/

namespace A193600.P6856203158666098685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A001057 (A014245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193600.P6856203158666098685

/-!
# A193601: Augmentation of the triangle A062344. See Comments.

The programs for A193601, there is no canonical definition to state claims against.
-/

/-! ## A193601.P11416655097559815444

`A139526(n+2)+A083893(A107268(n))`
-/

namespace A193601.P11416655097559815444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139526 (n + 2) + A083893 (A107268 n).toNat

end

end A193601.P11416655097559815444

/-! ## A193601.P6226547549890159586

`A180433(A186001(n))+A139526(n+2)`
-/

namespace A193601.P6226547549890159586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A186001 n).toNat + A139526 (n + 2)

end

end A193601.P6226547549890159586

/-! ## A193601.P14813342810112085477

`A139526(n+2)-A003816(A326248(n))`
-/

namespace A193601.P14813342810112085477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139526 (n + 2) - A003816 (A326248 n).toNat

end

end A193601.P14813342810112085477

/-! ## A193601.P4674977129991853168

`A139526(n+2)+A056170(A176558(n+1))`
-/

namespace A193601.P4674977129991853168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139526 (n + 2) + A056170 (A176558 (n + 1)).toNat

end

end A193601.P4674977129991853168

/-! ## A193601.P7601697783401663697

`A139526(n+2)+A132440(A089463(2*(n+2)))`
-/

namespace A193601.P7601697783401663697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139526 (n + 2) + A132440 (A089463 (2 * (n + 2))).toNat

end

end A193601.P7601697783401663697

/-!
# A193605: Triangle: (row n) = partial sums of partial sums of row n of Pascal's triangle.

The programs for A193605, there is no canonical definition to state claims against.
-/

/-! ## A193605.P1889358079752978871

`A055249(A061579(n))`
-/

namespace A193605.P1889358079752978871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A061579 n).toNat

end

end A193605.P1889358079752978871

/-! ## A193605.P15128038588568080675

`A055249(A114327(n)+n)`
-/

namespace A193605.P15128038588568080675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A114327 n + (n : ℤ)).toNat

end

end A193605.P15128038588568080675

/-! ## A193605.P7427505721771769636

`A055249(∑[A198954(n)-1])`
-/

namespace A193605.P7427505721771769636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193605.P7427505721771769636

/-! ## A193605.P12108523873866364849

`A055249(A038722(n+1)-1)`
-/

namespace A193605.P12108523873866364849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A038722 (n + 1) - 1).toNat

end

end A193605.P12108523873866364849

/-! ## A193605.P9775183431842918918

`A055249(A093995(n+1)-(n+1))`
-/

namespace A193605.P9775183431842918918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193605.P9775183431842918918

/-! ## A193605.P11854437769037969600

`A210489(A245300(n))`
-/

namespace A193605.P11854437769037969600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A245300 n).toNat

end

end A193605.P11854437769037969600

/-!
# A193606: Augmentation of the triangle A193605. See Comments.

The programs for A193606, there is no canonical definition to state claims against.
-/

/-! ## A193606.P4850100713839361800

`A328592(A193091(n))+1`
-/

namespace A193606.P4850100713839361800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328592 (A193091 n).toNat + 1

end

end A193606.P4850100713839361800

/-!
# A193608: The consecutive squares of numbers multiplied by their next consecutive integer.

The programs for A193608, the canonical program `A193608.P17244228149474031099` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193608 has offset 1).

The definition of A193608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193608.P17244228149474031099

`2*(n+2)^3-(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193608

/-- `2*(n+2)^3-(n+1)` -/
def P17244228149474031099.Spec : Prop :=
  ∀ n, P17244228149474031099.a n = A193608 (n + 1)

theorem P17244228149474031099.correct : P17244228149474031099.Spec := by
  intro n
  simp only [A193608, Nat.add_sub_cancel]

end A193608

/-! ## A193608.P13518213457775885794

`(n+3)*or(1, ∑[4*(n+1)])`
-/

namespace A193608.P13518213457775885794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193608.P13518213457775885794

namespace A193608

/-- `(n+3)*or(1, ∑[4*(n+1)])` -/
def P13518213457775885794.Spec : Prop :=
  ∀ n, (P13518213457775885794.a n : ℤ) = A193608 (n + 1)

end A193608

/-! ## A193608.P8185246785084361909

`(n+3)*xor(1, ∑[4*(n+1)])`
-/

namespace A193608.P8185246785084361909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193608.P8185246785084361909

namespace A193608

/-- `(n+3)*xor(1, ∑[4*(n+1)])` -/
def P8185246785084361909.Spec : Prop :=
  ∀ n, (P8185246785084361909.a n : ℤ) = A193608 (n + 1)

end A193608

/-! ## A193608.P3020604964749559874

`Δ[C((n+1)*(n+2), 2)+n]`
-/

namespace A193608.P3020604964749559874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) * (n + 2)) 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A193608.P3020604964749559874

namespace A193608

/-- `Δ[C((n+1)*(n+2), 2)+n]` -/
def P3020604964749559874.Spec : Prop :=
  ∀ n, P3020604964749559874.a n = A193608 (n + 1)

theorem P3020604964749559874.correct : P3020604964749559874.Spec := by
  intro n
  simp only [A193608, Nat.add_sub_cancel, A193608.P3020604964749559874.f1, A193608.P3020604964749559874.a, A193608.P17244228149474031099.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193608

/-! ## A193608.P3622988866822897797

`(4*C(n+2, 2)+1)*(n+3)`
-/

namespace A193608.P3622988866822897797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 2) 2 + 1) * (n + 3)

end

end A193608.P3622988866822897797

namespace A193608

/-- `(4*C(n+2, 2)+1)*(n+3)` -/
def P3622988866822897797.Spec : Prop :=
  ∀ n, (P3622988866822897797.a n : ℤ) = A193608 (n + 1)

theorem P3622988866822897797.correct : P3622988866822897797.Spec := by
  intro n
  simp only [A193608, Nat.add_sub_cancel, A193608.P3622988866822897797.a, A193608.P17244228149474031099.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A193608

/-! ## A193608.P8572622262009696976

`(n+3)*∑[ogf((5-2x+x^2)/(1-2x+x^2))]`
-/

namespace A193608.P8572622262009696976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193608.P8572622262009696976

namespace A193608

/-- `(n+3)*∑[ogf((5-2x+x^2)/(1-2x+x^2))]` -/
def P8572622262009696976.Spec : Prop :=
  ∀ n, P8572622262009696976.a n = A193608 (n + 1)

end A193608

/-! ## A193608.P299963180166549601

`(n+3)*record[(n-3)*2*n+5]`
-/

namespace A193608.P299963180166549601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (2 * n : ℤ) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193608.P299963180166549601

namespace A193608

/-- `(n+3)*record[(n-3)*2*n+5]` -/
def P299963180166549601.Spec : Prop :=
  ∀ n, P299963180166549601.a n = A193608 (n + 1)

end A193608

/-! ## A193608.P75424061245640296

`(2*lcm(n+1, n+2)+1)*(n+3)`
-/

namespace A193608.P75424061245640296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm (n + 1) (n + 2) + 1) * (n + 3)

end

end A193608.P75424061245640296

namespace A193608

/-- `(2*lcm(n+1, n+2)+1)*(n+3)` -/
def P75424061245640296.Spec : Prop :=
  ∀ n, (P75424061245640296.a n : ℤ) = A193608 (n + 1)

end A193608

/-! ## A193608.P14493530517727714109

`Δ[(n+1)²²+2*n+1-a(n-1)]` with `a(0)=2`
-/

namespace A193608.P14493530517727714109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (((n + 1) ^ 2) ^ 2 : ℤ) + ((2 * n + 1 : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193608.P14493530517727714109

namespace A193608

/-- `Δ[(n+1)²²+2*n+1-a(n-1)]` -/
def P14493530517727714109.Spec : Prop :=
  ∀ n, P14493530517727714109.a n = A193608 (n + 1)

end A193608

/-! ## A193608.P5619655412510745821

`(n+3)*A099776(n+1)`
-/

namespace A193608.P5619655412510745821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A099776 (n + 1)

end

end A193608.P5619655412510745821

namespace A193608

/-- `(n+3)*A099776(n+1)` -/
def P5619655412510745821.Spec : Prop :=
  ∀ n, P5619655412510745821.a n = A193608 (n + 1)

theorem P5619655412510745821.correct : P5619655412510745821.Spec := by
  intro n
  simp only [A193608, Nat.add_sub_cancel, A193608.P5619655412510745821.a, A193608.P17244228149474031099.a, A099776, A099776.P2051460282799887681.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193608

/-! ## A193608.P5480421938176091096

`(n+3)*(A090288(n)+3)`
-/

namespace A193608.P5480421938176091096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A090288 n + 3)

end

end A193608.P5480421938176091096

namespace A193608

/-- `(n+3)*(A090288(n)+3)` -/
def P5480421938176091096.Spec : Prop :=
  ∀ n, P5480421938176091096.a n = A193608 (n + 1)

theorem P5480421938176091096.correct : P5480421938176091096.Spec := by
  intro n
  simp only [A193608, Nat.add_sub_cancel, A193608.P5480421938176091096.a, A193608.P17244228149474031099.a, A090288, A090288.P18129157653264208824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193608

/-! ## A193608.P10045889945938665084

`(n+3)*A001844(n+1)`
-/

namespace A193608.P10045889945938665084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A001844 (n + 1)

end

end A193608.P10045889945938665084

namespace A193608

/-- `(n+3)*A001844(n+1)` -/
def P10045889945938665084.Spec : Prop :=
  ∀ n, P10045889945938665084.a n = A193608 (n + 1)

theorem P10045889945938665084.correct : P10045889945938665084.Spec := by
  intro n
  simp only [A193608, Nat.add_sub_cancel, A193608.P10045889945938665084.a, A193608.P17244228149474031099.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193608

/-! ## A193608.P13468949412529134799

`Δ[∑[A007588(n+1)]+n]`
-/

namespace A193608.P13468949412529134799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193608.P13468949412529134799

namespace A193608

/-- `Δ[∑[A007588(n+1)]+n]` -/
def P13468949412529134799.Spec : Prop :=
  ∀ n, P13468949412529134799.a n = A193608 (n + 1)

end A193608

/-! ## A193608.P1974625078010601413

`(n+3)*sqrt(A007204(n+1))`
-/

namespace A193608.P1974625078010601413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) * Real.sqrt (A007204 (n + 1) : ℝ)

end

end A193608.P1974625078010601413

namespace A193608

/-- `(n+3)*sqrt(A007204(n+1))` -/
def P1974625078010601413.Spec : Prop :=
  ∀ n, P1974625078010601413.a n = (A193608 (n + 1) : ℝ)

end A193608

/-! ## A193608.P12390385429759336912

`Δ[(∑[n+2]+1)*∑[A004277(n)]]`
-/

namespace A193608.P12390385429759336912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193608.P12390385429759336912

namespace A193608

/-- `Δ[(∑[n+2]+1)*∑[A004277(n)]]` -/
def P12390385429759336912.Spec : Prop :=
  ∀ n, P12390385429759336912.a n = A193608 (n + 1)

end A193608

/-! ## A193608.P5440173714427356884

`(A033816(n+1)-(n+3))*(n+3)`
-/

namespace A193608.P5440173714427356884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033816 (n + 1) - (n + 3 : ℤ)) * (n + 3 : ℤ)

end

end A193608.P5440173714427356884

namespace A193608

/-- `(A033816(n+1)-(n+3))*(n+3)` -/
def P5440173714427356884.Spec : Prop :=
  ∀ n, P5440173714427356884.a n = A193608 (n + 1)

theorem P5440173714427356884.correct : P5440173714427356884.Spec := by
  intro n
  simp only [A193608, Nat.add_sub_cancel, A193608.P5440173714427356884.a, A193608.P17244228149474031099.a, A033816, A033816.P2874186077373317365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193608

/-! ## A193608.P4267138949125828201

`A000292(n+1)/A000330(n+1)*A005917(n+2)`
-/

namespace A193608.P4267138949125828201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) : ℚ) / (A000330 (n + 1) : ℚ) * (A005917 (n + 2) : ℚ)

end

end A193608.P4267138949125828201

namespace A193608

/-- `A000292(n+1)/A000330(n+1)*A005917(n+2)` -/
def P4267138949125828201.Spec : Prop :=
  ∀ n, P4267138949125828201.a n = (A193608 (n + 1) : ℚ)

end A193608

/-! ## A193608.P4200715245169321406

`(A035328(n+2)-n)/2`
-/

namespace A193608.P4200715245169321406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035328 (n + 2) - (n : ℤ) : ℚ) / 2

end

end A193608.P4200715245169321406

namespace A193608

/-- `(A035328(n+2)-n)/2` -/
def P4200715245169321406.Spec : Prop :=
  ∀ n, P4200715245169321406.a n = (A193608 (n + 1) : ℚ)

theorem P4200715245169321406.correct : P4200715245169321406.Spec := by
  intro n
  simp only [A193608, Nat.add_sub_cancel, A193608.P4200715245169321406.a, A193608.P17244228149474031099.a, A035328, A035328.P8981633171215695012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A193608

/-! ## A193608.P11246869921263393066

`Δ[A110450(n+1)-(n+1)²]`
-/

namespace A193608.P11246869921263393066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193608.P11246869921263393066

namespace A193608

/-- `Δ[A110450(n+1)-(n+1)²]` -/
def P11246869921263393066.Spec : Prop :=
  ∀ n, P11246869921263393066.a n = A193608 (n + 1)

end A193608

/-! ## A193608.P1486310950782680697

`(n+3)*A055524(2*n+3)`
-/

namespace A193608.P1486310950782680697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A055524 (2 * n + 3)

end

end A193608.P1486310950782680697

namespace A193608

/-- `(n+3)*A055524(2*n+3)` -/
def P1486310950782680697.Spec : Prop :=
  ∀ n, P1486310950782680697.a n = A193608 (n + 1)

end A193608

/-!
# A193615: Second-largest prime factor of the n-th Fibonacci number, if composite, or 1 otherwise.

The programs for A193615, there is no canonical definition to state claims against.
-/

/-! ## A193615.P9618954269515280689

`A006530(A020695(n)/A060385(n+3))`
-/

namespace A193615.P9618954269515280689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A020695 n : ℚ) / (A060385 (n + 3) : ℚ))).toNat

end

end A193615.P9618954269515280689

/-! ## A193615.P1531255486244553221

`A006530(floor(A048577(n)/A060385(n+3)))`
-/

namespace A193615.P1531255486244553221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A048577 n : ℚ) / (A060385 (n + 3) : ℚ)⌋.toNat

end

end A193615.P1531255486244553221

/-! ## A193615.P15157764827927185827

`A006530(Δ[A020701(n)]/A060385(n+3))`
-/

namespace A193615.P15157764827927185827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A060385 (n + 3) : ℚ))).toNat

end

end A193615.P15157764827927185827

/-! ## A193615.P9229417730894069125

`A006530(Δ[A020706(n)]/A060385(n+3))`
-/

namespace A193615.P9229417730894069125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A060385 (n + 3) : ℚ))).toNat

end

end A193615.P9229417730894069125

/-! ## A193615.P11437500561276509789

`A006530(Δ[A048584(n)]/A060385(n+3))`
-/

namespace A193615.P11437500561276509789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A060385 (n + 3) : ℚ))).toNat

end

end A193615.P11437500561276509789

/-!
# A193616: Integers often used as card values in Planning Poker decks.

The programs for A193616, there is no canonical definition to state claims against.
-/

/-! ## A193616.P178578622565929711

`record[and(A190170(n+4), A226916(n+1))]`
-/

namespace A193616.P178578622565929711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A190170 (n + 4)) (A226916 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193616.P178578622565929711

/-! ## A193616.P11902256907633655384

`∑[A185325(2*n+3)*A295224(n+1)]`
-/

namespace A193616.P11902256907633655384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 (2 * n + 3) * A295224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193616.P11902256907633655384

/-! ## A193616.P12349971074679654645

`∪[A094942(A018261(n+1)), A135641(n+1)]`
-/

namespace A193616.P12349971074679654645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094942 (A018261 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193616.P12349971074679654645

/-! ## A193616.P4529383516586101297

`∪[A094942(A018261(n+1)), A162530(n+1)]`
-/

namespace A193616.P4529383516586101297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094942 (A018261 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193616.P4529383516586101297

/-! ## A193616.P1636152993063610628

`record[(49-A002024(n+2))%(n+1)]`
-/

namespace A193616.P1636152993063610628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (49 - A002024 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193616.P1636152993063610628

/-!
# A193617: Maximum cardinality of a subset of Dyck n-paths p that share both the same area and the same maj(beta(p)) statistic.

The programs for A193617, there is no canonical definition to state claims against.
-/

/-! ## A193617.P4959769924521849601

`A135662(∑[A099947(n)])`
-/

namespace A193617.P4959769924521849601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193617.P4959769924521849601

/-! ## A193617.P6023370850935840958

`A135662(∑[A326335(n)])`
-/

namespace A193617.P6023370850935840958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193617.P6023370850935840958

/-! ## A193617.P12315427789543276864

`A259361(∑[A275071(n)²])`
-/

namespace A193617.P12315427789543276864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275071 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193617.P12315427789543276864

/-! ## A193617.P2492359209170188906

`A241065(floor(sqrt(A106313(n+1))))`
-/

namespace A193617.P2492359209170188906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241065 (Int.sqrt (A106313 (n + 1))).toNat

end

end A193617.P2492359209170188906

/-! ## A193617.P15528836172011282965

`ceil(A002216(n)/A291300(n+1))`
-/

namespace A193617.P15528836172011282965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002216 n : ℚ) / (A291300 (n + 1) : ℚ)⌉

end

end A193617.P15528836172011282965

/-!
# A193618: G.f. A(x) satisfies: A(x)^2 + A(-x)^2 = 2 and A(x)^-2 - A(-x)^-2 = -8*x.

The programs for A193618, the canonical program `A193618.P1773305954526124744` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193618 has offset 0).

The definition of A193618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193618.P6763879782078819069

`A033999(n)*A104565(A004273(n))`
-/

namespace A193618.P6763879782078819069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A104565 (A004273 n).toNat

end

end A193618.P6763879782078819069

namespace A193618

/-- `A033999(n)*A104565(A004273(n))` -/
def P6763879782078819069.Spec : Prop :=
  ∀ n, P6763879782078819069.a n = A193618 n

end A193618

/-! ## A193618.P1773305954526124744

`A033999(n)*A104565(record[A006369(n)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193618

/-- `A033999(n)*A104565(record[A006369(n)])` -/
def P1773305954526124744.Spec : Prop :=
  ∀ n, P1773305954526124744.a n = A193618 n

theorem P1773305954526124744.correct : P1773305954526124744.Spec := by
  intro n
  simp only [A193618]

end A193618

/-! ## A193618.P6839667625801435830

`A009001(2*n)*A104565(A004273(n))`
-/

namespace A193618.P6839667625801435830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A104565 (A004273 n).toNat

end

end A193618.P6839667625801435830

namespace A193618

/-- `A009001(2*n)*A104565(A004273(n))` -/
def P6839667625801435830.Spec : Prop :=
  ∀ n, P6839667625801435830.a n = A193618 n

end A193618

/-! ## A193618.P8009919562082135912

`A010892(3*n)*A104565(A004273(n))`
-/

namespace A193618.P8009919562082135912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A104565 (A004273 n).toNat

end

end A193618.P8009919562082135912

namespace A193618

/-- `A010892(3*n)*A104565(A004273(n))` -/
def P8009919562082135912.Spec : Prop :=
  ∀ n, P8009919562082135912.a n = A193618 n

end A193618

/-! ## A193618.P5758932669738555509

`A008683(A303762(n))*A104565(A004273(n))`
-/

namespace A193618.P5758932669738555509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A303762 n).toNat * A104565 (A004273 n).toNat

end

end A193618.P5758932669738555509

namespace A193618

/-- `A008683(A303762(n))*A104565(A004273(n))` -/
def P5758932669738555509.Spec : Prop :=
  ∀ n, P5758932669738555509.a n = A193618 n

end A193618

/-!
# A193619: G.f. A(x) satisfies: A(x)^-2 + A(-x)^-2 = 2 and A(x)^2 - A(-x)^2 = -8*x.

The programs for A193619, there is no canonical definition to state claims against.
-/

/-! ## A193619.P492600662529551285

`A247453(n)*A318832(A155654(n))`
-/

namespace A193619.P492600662529551285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 n * A318832 (A155654 n).toNat

end

end A193619.P492600662529551285

/-!
# A193620: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n * A(x)^A026250(n).

The programs for A193620, there is no canonical definition to state claims against.
-/

/-! ## A193620.P5349295602857384768

`A111858(A098663(n))+1`
-/

namespace A193620.P5349295602857384768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111858 (A098663 n).toNat + 1

end

end A193620.P5349295602857384768

/-! ## A193620.P4021516618399061197

`A065033(Δ[A097422(n)]-∑[n])`
-/

namespace A193620.P4021516618399061197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A193620.P4021516618399061197

/-!
# A193621: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n * A(x)^A026255(n).

The programs for A193621, there is no canonical definition to state claims against.
-/

/-! ## A193621.P15220734668319704796

`A247908(A270913(n))`
-/

namespace A193621.P15220734668319704796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A270913 n).toNat

end

end A193621.P15220734668319704796

/-! ## A193621.P6523188867624517157

`A008616(4*A150195(n))`
-/

namespace A193621.P6523188867624517157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (4 * A150195 n).toNat

end

end A193621.P6523188867624517157

/-! ## A193621.P4037170278819103670

`A008617(A052709(n+3)+3)`
-/

namespace A193621.P4037170278819103670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A052709 (n + 3) + 3).toNat

end

end A193621.P4037170278819103670

/-!
# A193623: Number of nonisomorphic Knuthian systems of order n^2.

The programs for A193623, there is no canonical definition to state claims against.
-/

/-! ## A193623.P4010752183401565857

`A001586(n)*A064839(A337799(n))`
-/

namespace A193623.P4010752183401565857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A064839 (A337799 n).toNat

end

end A193623.P4010752183401565857

/-!
# A193624: Number of ways n triples can sit in a row without any siblings next to each other.

The programs for A193624, there is no canonical definition to state claims against.
-/

/-! ## A193624.P12528468676475047815

`A190826(n)*6^n*n!`
-/

namespace A193624.P12528468676475047815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190826 n * (6 ^ n : ℤ) * (Nat.factorial n : ℤ)

end

end A193624.P12528468676475047815

/-! ## A193624.P5414753738737835537

`6^n*A193638(n)`
-/

namespace A193624.P5414753738737835537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A193638 n

end

end A193624.P5414753738737835537

/-! ## A193624.P3495357504587174898

`∏[A008458(n)]*A190826(n)`
-/

namespace A193624.P3495357504587174898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A190826 n

end

end A193624.P3495357504587174898

/-! ## A193624.P8067909526948241685

`A192990(∑[∑[n]])`
-/

namespace A193624.P8067909526948241685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193624.P8067909526948241685

/-! ## A193624.P14434860482761253345

`lcm(∏{e}[n+1, #+1], A192990(A000292(n)))`
-/

namespace A193624.P14434860482761253345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A192990 (A000292 n).toNat)

end

end A193624.P14434860482761253345

/-!
# A193627: Indices n such that Perrin(n) < r^n where r is the real root of the polynomial x^3-x-1.

The programs for A193627, there is no canonical definition to state claims against.
-/

/-! ## A193627.P12409355151293270018

`lt[1, a(n-3)-a(n-1)]` with `a(0)=0, a(1)=5, a(2)=1`
-/

namespace A193627.P12409355151293270018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 1] fun n f2 =>
  f2 (n - 3) - f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193627.P12409355151293270018

/-! ## A193627.P14657057153525290948

`lt[0, A078712(n)]`
-/

namespace A193627.P14657057153525290948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193627.P14657057153525290948

/-! ## A193627.P882296760379073358

`lt[A247920(n), cos(n)]`
-/

namespace A193627.P882296760379073358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247920 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A193627.P882296760379073358

/-! ## A193627.P4755872383631094324

`comp[A051016(n+1)-58]`
-/

namespace A193627.P4755872383631094324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051016 (n + 1) - 58

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193627.P4755872383631094324

/-! ## A193627.P10534378192253890114

`record[(n+1)*ceil(1/A078712(n+1))]`
-/

namespace A193627.P10534378192253890114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈1 / (A078712 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193627.P10534378192253890114

/-! ## A193627.P3636081151112549557

`lt[A001608(n), A001945(n)]`
-/

namespace A193627.P3636081151112549557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193627.P3636081151112549557

/-! ## A193627.P251363354950123494

`eq[0, and(A000079(n), A078712(n))]`
-/

namespace A193627.P251363354950123494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 n) (A078712 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193627.P251363354950123494

/-! ## A193627.P16753991833040760982

`lt[A001608(n)², A001608(2*n)]`
-/

namespace A193627.P16753991833040760982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193627.P16753991833040760982

/-! ## A193627.P5850600807045784090

`lt[A077905(n), Δ[A077905(n)]+1]`
-/

namespace A193627.P5850600807045784090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193627.P5850600807045784090

/-! ## A193627.P11533714912877819126

`comp[A193640(n)]`
-/

namespace A193627.P11533714912877819126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193640 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193627.P11533714912877819126

/-!
# A193628: Integer part of A192851 / A191626.

The programs for A193628, there is no canonical definition to state claims against.
-/

/-! ## A193628.P10545848322052334820

`floor(A192851(n+1)/A191626(n+1))`
-/

namespace A193628.P10545848322052334820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192851 (n + 1) : ℚ) / (A191626 (n + 1) : ℚ)⌋

end

end A193628.P10545848322052334820

/-!
# A193632: Triangle: T(n,k)=C(4n-1,2k), 0<=k<=n.

The programs for A193632, there is no canonical definition to state claims against.
-/

/-! ## A193632.P4350998067808434102

`C(A110091(2*n+1), A001222(A118589(n)))`
-/

namespace A193632.P4350998067808434102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110091 (2 * n + 1)).toNat (A001222 (A118589 n).toNat).toNat

end

end A193632.P4350998067808434102

/-!
# A193633: Triangle: T(n,k)=C(4n,2k), 0<=k<=n.

The programs for A193633, the canonical program `A193633.P10382095875375903761` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193633 has offset 0).

The definition of A193633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*row(n), 2*col(n))` (program `A193633.P10382095875375903761`, by `A193633.P10382095875375903761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193633.P10382095875375903761

`C(4*row(n), 2*col(n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193633

/-- `C(4*row(n), 2*col(n))` -/
def P10382095875375903761.Spec : Prop :=
  ∀ n, (P10382095875375903761.a n : ℤ) = A193633 n

theorem P10382095875375903761.correct : P10382095875375903761.Spec := by
  intro n
  simp only [A193633]

end A193633

/-! ## A193633.P1618108498816010154

`A086645(A292564(n))`
-/

namespace A193633.P1618108498816010154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 (A292564 n).toNat

end

end A193633.P1618108498816010154

namespace A193633

/-- `A086645(A292564(n))` -/
def P1618108498816010154.Spec : Prop :=
  ∀ n, P1618108498816010154.a n = A193633 n

end A193633

/-! ## A193633.P1230056599226589763

`A062344(A185868(n+1)-1)`
-/

namespace A193633.P1230056599226589763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A185868 (n + 1) - 1).toNat

end

end A193633.P1230056599226589763

namespace A193633

/-- `A062344(A185868(n+1)-1)` -/
def P1230056599226589763.Spec : Prop :=
  ∀ n, P1230056599226589763.a n = A193633 n

end A193633

/-! ## A193633.P3580405205422857846

`A062344(A063656(n)+A061885(n))`
-/

namespace A193633.P3580405205422857846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A063656 n + A061885 n).toNat

end

end A193633.P3580405205422857846

namespace A193633

/-- `A062344(A063656(n)+A061885(n))` -/
def P3580405205422857846.Spec : Prop :=
  ∀ n, P3580405205422857846.a n = A193633 n

end A193633

/-! ## A193633.P5594968719344671378

`A062344(eq[0, A155998(n)])`
-/

namespace A193633.P5594968719344671378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193633.P5594968719344671378

namespace A193633

/-- `A062344(eq[0, A155998(n)])` -/
def P5594968719344671378.Spec : Prop :=
  ∀ n, P5594968719344671378.a n = A193633 n

end A193633

/-! ## A193633.P16527474221662197774

`A062344(eq[A028326(n), A155997(n)])`
-/

namespace A193633.P16527474221662197774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A193633.P16527474221662197774

namespace A193633

/-- `A062344(eq[A028326(n), A155997(n)])` -/
def P16527474221662197774.Spec : Prop :=
  ∀ n, P16527474221662197774.a n = A193633 n

end A193633

/-! ## A193633.P18373443564448293319

`A034868(2*A292564(n))`
-/

namespace A193633.P18373443564448293319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 (2 * A292564 n).toNat

end

end A193633.P18373443564448293319

namespace A193633

/-- `A034868(2*A292564(n))` -/
def P18373443564448293319.Spec : Prop :=
  ∀ n, P18373443564448293319.a n = A193633 n

end A193633

/-!
# A193634: Triangle: T(n,k)=C(4n+1,2k), 0<=k<=n.

The programs for A193634, the canonical program `A193634.P4822405330759364835` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193634 has offset 0).

The definition of A193634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*row(n)+1, 2*col(n))` (program `A193634.P4822405330759364835`, by `A193634.P4822405330759364835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193634.P4822405330759364835

`C(4*row(n)+1, 2*col(n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193634

/-- `C(4*row(n)+1, 2*col(n))` -/
def P4822405330759364835.Spec : Prop :=
  ∀ n, (P4822405330759364835.a n : ℤ) = A193634 n

theorem P4822405330759364835.correct : P4822405330759364835.Spec := by
  intro n
  simp only [A193634]

end A193634

/-! ## A193634.P15265443196833601696

`A091042(A292564(n))`
-/

namespace A193634.P15265443196833601696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A292564 n).toNat

end

end A193634.P15265443196833601696

namespace A193634

/-- `A091042(A292564(n))` -/
def P15265443196833601696.Spec : Prop :=
  ∀ n, P15265443196833601696.a n = A193634 n

end A193634

/-! ## A193634.P3718451084972614529

`A122366(A185868(n+1)-1)`
-/

namespace A193634.P3718451084972614529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (A185868 (n + 1) - 1).toNat

end

end A193634.P3718451084972614529

namespace A193634

/-- `A122366(A185868(n+1)-1)` -/
def P3718451084972614529.Spec : Prop :=
  ∀ n, P3718451084972614529.a n = A193634 n

end A193634

/-! ## A193634.P10390887772967590914

`A122366(A063656(n)+A061885(n))`
-/

namespace A193634.P10390887772967590914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (A063656 n + A061885 n).toNat

end

end A193634.P10390887772967590914

namespace A193634

/-- `A122366(A063656(n)+A061885(n))` -/
def P10390887772967590914.Spec : Prop :=
  ∀ n, P10390887772967590914.a n = A193634 n

end A193634

/-! ## A193634.P4479545386571785287

`A122366(eq[0, A155998(n)])`
-/

namespace A193634.P4479545386571785287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193634.P4479545386571785287

namespace A193634

/-- `A122366(eq[0, A155998(n)])` -/
def P4479545386571785287.Spec : Prop :=
  ∀ n, P4479545386571785287.a n = A193634 n

end A193634

/-! ## A193634.P1980522667901867917

`A122366(eq[A028326(n), A155997(n)])`
-/

namespace A193634.P1980522667901867917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A193634.P1980522667901867917

namespace A193634

/-- `A122366(eq[A028326(n), A155997(n)])` -/
def P1980522667901867917.Spec : Prop :=
  ∀ n, P1980522667901867917.a n = A193634 n

end A193634

/-!
# A193635: Triangle: T(n,k)=C(3n-k,k), 0<=k<=n.

The programs for A193635, the canonical program `A193635.P9118609738717884070` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193635 has offset 0).

The definition of A193635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*row(n)-col(n), col(n))` (program `A193635.P9118609738717884070`, by `A193635.P9118609738717884070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193635.P9118609738717884070

`C(3*row(n)-col(n), col(n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193635

/-- `C(3*row(n)-col(n), col(n))` -/
def P9118609738717884070.Spec : Prop :=
  ∀ n, (P9118609738717884070.a n : ℤ) = A193635 n

theorem P9118609738717884070.correct : P9118609738717884070.Spec := by
  intro n
  simp only [A193635]

end A193635

/-! ## A193635.P16927587226700713631

`A159965(A002378(n)%A080036(n))`
-/

namespace A193635.P16927587226700713631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A193635.P16927587226700713631

namespace A193635

/-- `A159965(A002378(n)%A080036(n))` -/
def P16927587226700713631.Spec : Prop :=
  ∀ n, P16927587226700713631.a n = A193635 n

end A193635

/-! ## A193635.P7833574308765920410

`A159965(A061579(n))`
-/

namespace A193635.P7833574308765920410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A061579 n).toNat

end

end A193635.P7833574308765920410

namespace A193635

/-- `A159965(A061579(n))` -/
def P7833574308765920410.Spec : Prop :=
  ∀ n, P7833574308765920410.a n = A193635 n

end A193635

/-! ## A193635.P7737732713553068853

`A159965(A114327(n)+n)`
-/

namespace A193635.P7737732713553068853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A114327 n + (n : ℤ)).toNat

end

end A193635.P7737732713553068853

namespace A193635

/-- `A159965(A114327(n)+n)` -/
def P7737732713553068853.Spec : Prop :=
  ∀ n, P7737732713553068853.a n = A193635 n

end A193635

/-! ## A193635.P8033258414711653495

`A159965(∑[A198954(n)-1])`
-/

namespace A193635.P8033258414711653495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193635.P8033258414711653495

namespace A193635

/-- `A159965(∑[A198954(n)-1])` -/
def P8033258414711653495.Spec : Prop :=
  ∀ n, P8033258414711653495.a n = A193635 n

end A193635

/-! ## A193635.P10732511199311612198

`A159965(A038722(n+1)-1)`
-/

namespace A193635.P10732511199311612198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A038722 (n + 1) - 1).toNat

end

end A193635.P10732511199311612198

namespace A193635

/-- `A159965(A038722(n+1)-1)` -/
def P10732511199311612198.Spec : Prop :=
  ∀ n, P10732511199311612198.a n = A193635 n

end A193635

/-! ## A193635.P4237186035388456035

`A159965(A093995(n+1)-(n+1))`
-/

namespace A193635.P4237186035388456035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193635.P4237186035388456035

namespace A193635

/-- `A159965(A093995(n+1)-(n+1))` -/
def P4237186035388456035.Spec : Prop :=
  ∀ n, P4237186035388456035.a n = A193635 n

end A193635

/-! ## A193635.P9897298986050762847

`A159965(A002024(n+1)²-(n+1))`
-/

namespace A193635.P9897298986050762847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A193635.P9897298986050762847

namespace A193635

/-- `A159965(A002024(n+1)²-(n+1))` -/
def P9897298986050762847.Spec : Prop :=
  ∀ n, P9897298986050762847.a n = A193635 n

end A193635

/-! ## A193635.P9535804456681337342

`A159965(A057944(n)+A025581(n))`
-/

namespace A193635.P9535804456681337342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A057944 n + A025581 n).toNat

end

end A193635.P9535804456681337342

namespace A193635

/-- `A159965(A057944(n)+A025581(n))` -/
def P9535804456681337342.Spec : Prop :=
  ∀ n, P9535804456681337342.a n = A193635 n

end A193635

/-! ## A193635.P12983794133074332282

`A159965(A185869(n+1)-A016789(n))`
-/

namespace A193635.P12983794133074332282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A185869 (n + 1) - A016789 n).toNat

end

end A193635.P12983794133074332282

namespace A193635

/-- `A159965(A185869(n+1)-A016789(n))` -/
def P12983794133074332282.Spec : Prop :=
  ∀ n, P12983794133074332282.a n = A193635 n

end A193635

/-! ## A193635.P12427420041577113785

`A159965(A185869(n+1)%A016789(n))`
-/

namespace A193635.P12427420041577113785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (Int.tmod (A185869 (n + 1)) (A016789 n)).toNat

end

end A193635.P12427420041577113785

namespace A193635

/-- `A159965(A185869(n+1)%A016789(n))` -/
def P12427420041577113785.Spec : Prop :=
  ∀ n, P12427420041577113785.a n = A193635 n

end A193635

/-! ## A193635.P17005469752805518316

`A159965(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A193635.P17005469752805518316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A193635.P17005469752805518316

namespace A193635

/-- `A159965(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P17005469752805518316.Spec : Prop :=
  ∀ n, P17005469752805518316.a n = A193635 n

end A193635

/-! ## A193635.P3511119153798219056

`C(A131894(n)-1, A002262(n))`
-/

namespace A193635.P3511119153798219056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n - 1).toNat (A002262 n).toNat

end

end A193635.P3511119153798219056

namespace A193635

/-- `C(A131894(n)-1, A002262(n))` -/
def P3511119153798219056.Spec : Prop :=
  ∀ n, (P3511119153798219056.a n : ℤ) = A193635 n

end A193635

/-!
# A193636: Triangle: T(n,k) = C(3n-2k,k), 0 <= k <= n.

The programs for A193636, the canonical program `A193636.P18192229572271026414` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193636 has offset 0).

The definition of A193636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*row(n)-2*col(n), col(n))` (program `A193636.P18192229572271026414`, by `A193636.P18192229572271026414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193636.P18192229572271026414

`C(3*row(n)-2*col(n), col(n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193636

/-- `C(3*row(n)-2*col(n), col(n))` -/
def P18192229572271026414.Spec : Prop :=
  ∀ n, (P18192229572271026414.a n : ℤ) = A193636 n

theorem P18192229572271026414.correct : P18192229572271026414.Spec := by
  intro n
  simp only [A193636]

end A193636

/-! ## A193636.P16365352576518328121

`A109955(gcd(A061579(n), A198954(n)))`
-/

namespace A193636.P16365352576518328121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (Int.gcd (A061579 n) (A198954 n))

end

end A193636.P16365352576518328121

namespace A193636

/-- `A109955(gcd(A061579(n), A198954(n)))` -/
def P16365352576518328121.Spec : Prop :=
  ∀ n, P16365352576518328121.a n = A193636 n

end A193636

/-! ## A193636.P4127365152447123406

`A109955(A038722(n+1)-A131821(n+1))`
-/

namespace A193636.P4127365152447123406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (A038722 (n + 1) - A131821 (n + 1)).toNat

end

end A193636.P4127365152447123406

namespace A193636

/-- `A109955(A038722(n+1)-A131821(n+1))` -/
def P4127365152447123406.Spec : Prop :=
  ∀ n, P4127365152447123406.a n = A193636 n

end A193636

/-! ## A193636.P5414077086664737505

`A109955(A061579(n))`
-/

namespace A193636.P5414077086664737505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (A061579 n).toNat

end

end A193636.P5414077086664737505

namespace A193636

/-- `A109955(A061579(n))` -/
def P5414077086664737505.Spec : Prop :=
  ∀ n, P5414077086664737505.a n = A193636 n

end A193636

/-! ## A193636.P9247549485314980422

`A109955(A114327(n)+n)`
-/

namespace A193636.P9247549485314980422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (A114327 n + (n : ℤ)).toNat

end

end A193636.P9247549485314980422

namespace A193636

/-- `A109955(A114327(n)+n)` -/
def P9247549485314980422.Spec : Prop :=
  ∀ n, P9247549485314980422.a n = A193636 n

end A193636

/-! ## A193636.P2891278475049932103

`A109955(A038722(n+1)-1)`
-/

namespace A193636.P2891278475049932103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (A038722 (n + 1) - 1).toNat

end

end A193636.P2891278475049932103

namespace A193636

/-- `A109955(A038722(n+1)-1)` -/
def P2891278475049932103.Spec : Prop :=
  ∀ n, P2891278475049932103.a n = A193636 n

end A193636

/-! ## A193636.P12004066423195593753

`A109955(A038722(n+2))`
-/

namespace A193636.P12004066423195593753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (A038722 (n + 2)).toNat

end

end A193636.P12004066423195593753

namespace A193636

/-- `A109955(A038722(n+2))` -/
def P12004066423195593753.Spec : Prop :=
  ∀ n, P12004066423195593753.a n = A193636 n

end A193636

/-! ## A193636.P12366781376149286655

`A102547(A056942(n)+n)`
-/

namespace A193636.P12366781376149286655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A056942 n + (n : ℤ)).toNat

end

end A193636.P12366781376149286655

namespace A193636

/-- `A102547(A056942(n)+n)` -/
def P12366781376149286655.Spec : Prop :=
  ∀ n, P12366781376149286655.a n = A193636 n

end A193636

/-! ## A193636.P6874284293881901737

`A102547(2*A057944(n)+n)`
-/

namespace A193636.P6874284293881901737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (2 * A057944 n + (n : ℤ)).toNat

end

end A193636.P6874284293881901737

namespace A193636

/-- `A102547(2*A057944(n)+n)` -/
def P6874284293881901737.Spec : Prop :=
  ∀ n, P6874284293881901737.a n = A193636 n

end A193636

/-! ## A193636.P12311099661231112272

`A102547(2*A061885(n)-n)`
-/

namespace A193636.P12311099661231112272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (2 * A061885 n - (n : ℤ)).toNat

end

end A193636.P12311099661231112272

namespace A193636

/-- `A102547(2*A061885(n)-n)` -/
def P12311099661231112272.Spec : Prop :=
  ∀ n, P12311099661231112272.a n = A193636 n

end A193636

/-! ## A193636.P7461521758981383377

`A102547(A061885(A057944(n))+n)`
-/

namespace A193636.P7461521758981383377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A061885 (A057944 n).toNat + (n : ℤ)).toNat

end

end A193636.P7461521758981383377

namespace A193636

/-- `A102547(A061885(A057944(n))+n)` -/
def P7461521758981383377.Spec : Prop :=
  ∀ n, P7461521758981383377.a n = A193636 n

end A193636

/-! ## A193636.P12905035061182989629

`A102547(A057944(n)+A057944(n)+n)`
-/

namespace A193636.P12905035061182989629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A057944 n + (A057944 n + (n : ℤ))).toNat

end

end A193636.P12905035061182989629

namespace A193636

/-- `A102547(A057944(n)+A057944(n)+n)` -/
def P12905035061182989629.Spec : Prop :=
  ∀ n, P12905035061182989629.a n = A193636 n

end A193636

/-! ## A193636.P7767456503485673166

`A102547(A061885(n)+A061885(n)-n)`
-/

namespace A193636.P7767456503485673166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A061885 n + (A061885 n - (n : ℤ))).toNat

end

end A193636.P7767456503485673166

namespace A193636

/-- `A102547(A061885(n)+A061885(n)-n)` -/
def P7767456503485673166.Spec : Prop :=
  ∀ n, P7767456503485673166.a n = A193636 n

end A193636

/-! ## A193636.P2139262604438966158

`A102547(A061885(n)-(n-A061885(n)))`
-/

namespace A193636.P2139262604438966158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A061885 n - ((n : ℤ) - A061885 n)).toNat

end

end A193636.P2139262604438966158

namespace A193636

/-- `A102547(A061885(n)-(n-A061885(n)))` -/
def P2139262604438966158.Spec : Prop :=
  ∀ n, P2139262604438966158.a n = A193636 n

end A193636

/-! ## A193636.P8001522923617309899

`A102547(A185869(n+1)-A014132(n+1))`
-/

namespace A193636.P8001522923617309899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A185869 (n + 1) - A014132 (n + 1)).toNat

end

end A193636.P8001522923617309899

namespace A193636

/-- `A102547(A185869(n+1)-A014132(n+1))` -/
def P8001522923617309899.Spec : Prop :=
  ∀ n, P8001522923617309899.a n = A193636 n

end A193636

/-! ## A193636.P10589790346789106149

`A007318(A163329(3*A163330(n)))`
-/

namespace A193636.P10589790346789106149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A163329 (3 * A163330 n).toNat).toNat

end

end A193636.P10589790346789106149

namespace A193636

/-- `A007318(A163329(3*A163330(n)))` -/
def P10589790346789106149.Spec : Prop :=
  ∀ n, P10589790346789106149.a n = A193636 n

end A193636

/-! ## A193636.P4737113205858708879

`A007318(A163331(3*A163330(n)))`
-/

namespace A193636.P4737113205858708879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A163331 (3 * A163330 n).toNat).toNat

end

end A193636.P4737113205858708879

namespace A193636

/-- `A007318(A163331(3*A163330(n)))` -/
def P4737113205858708879.Spec : Prop :=
  ∀ n, P4737113205858708879.a n = A193636 n

end A193636

/-!
# A193637: a(n) = a(n-1)^2 - n^(n+1).

The programs for A193637, the canonical program `A193637.P5426838040771439336` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193637 has offset 0).

The definition of A193637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-n^(n+1)` (program `A193637.P5426838040771439336`, by `A193637.P5426838040771439336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193637.P5426838040771439336

`a(n-1)²-n^(n+1)` with `a(0)=0, a(1)=-1, a(2)=-7, a(3)=-32, a(4)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193637

/-- `a(n-1)²-n^(n+1)` -/
def P5426838040771439336.Spec : Prop :=
  ∀ n, P5426838040771439336.a n = A193637 n

theorem P5426838040771439336.correct : P5426838040771439336.Spec := by
  intro n
  simp only [A193637]

end A193637

/-! ## A193637.P6719043486759398553

`a(n-1)^2-n^(n+1)` with `a(0)=0`
-/

namespace A193637.P6719043486759398553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - (n ^ (n + 1) : ℤ)

end

end A193637.P6719043486759398553

namespace A193637

/-- `a(n-1)^2-n^(n+1)` -/
def P6719043486759398553.Spec : Prop :=
  ∀ n, P6719043486759398553.a n = A193637 n

end A193637

/-! ## A193637.P4146014512379922911

`floor(a(n-1)²-n*n^n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A193637.P4146014512379922911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - (n * n ^ n : ℤ)

end

end A193637.P4146014512379922911

namespace A193637

/-- `floor(a(n-1)²-n*n^n)` -/
def P4146014512379922911.Spec : Prop :=
  ∀ n, P4146014512379922911.a n = A193637 n

end A193637

/-! ## A193637.P5441103824547355629

`abs(a(n-1))²-n^comp[(4^n)²]` with `a(0)=0`
-/

namespace A193637.P5441103824547355629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1)| ^ 2 - (n ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A193637.P5441103824547355629

namespace A193637

/-- `abs(a(n-1))²-n^comp[(4^n)²]` -/
def P5441103824547355629.Spec : Prop :=
  ∀ n, P5441103824547355629.a n = A193637 n

end A193637

/-! ## A193637.P12926295932107394922

`a(n-1)*a(n-1)-A007778(n)` with `a(0)=0`
-/

namespace A193637.P12926295932107394922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * a (n - 1) - A007778 n

end

end A193637.P12926295932107394922

namespace A193637

/-- `a(n-1)*a(n-1)-A007778(n)` -/
def P12926295932107394922.Spec : Prop :=
  ∀ n, P12926295932107394922.a n = A193637 n

end A193637

/-!
# A193638: Number of permutations of the multiset {1,1,1,2,2,2,3,3,3,...,n,n,n} with no two consecutive terms equal.

The programs for A193638, there is no canonical definition to state claims against.
-/

/-! ## A193638.P17640066106180606762

`A190826(n)*n!`
-/

namespace A193638.P17640066106180606762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190826 n * (Nat.factorial n : ℤ)

end

end A193638.P17640066106180606762

/-! ## A193638.P6366043924006590284

`A193624(n)/6^n`
-/

namespace A193638.P6366043924006590284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193624 n : ℚ) / (6 ^ n : ℚ)

end

end A193638.P6366043924006590284

/-! ## A193638.P8878938087301513782

`A000142(n)*A190826(n)`
-/

namespace A193638.P8878938087301513782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A190826 n

end

end A193638.P8878938087301513782

/-! ## A193638.P7020739289352874153

`abs(A133942(n)*A190826(n))`
-/

namespace A193638.P7020739289352874153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n * A190826 n|

end

end A193638.P7020739289352874153

/-!
# A193639: Triangle T(n,k) of ways n couples can sit in a row with exactly k of them together.

The programs for A193639, there is no canonical definition to state claims against.
-/

/-! ## A193639.P2602115370313543574

`A000165(A003056(n))*A079267(n)`
-/

namespace A193639.P2602115370313543574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A003056 n).toNat * A079267 n

end

end A193639.P2602115370313543574

/-! ## A193639.P4975826351717593756

`A242649(A000698(n))-A063524(n)`
-/

namespace A193639.P4975826351717593756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242649 (A000698 n).toNat - A063524 n

end

end A193639.P4975826351717593756

/-! ## A193639.P13188260021893620168

`lcm(A007690(n), A023900(A349188(n+2)))`
-/

namespace A193639.P13188260021893620168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007690 n) (A023900 (A349188 (n + 2)).toNat)

end

end A193639.P13188260021893620168

/-!
# A193640: Indices n such that Perrin(n) > r^n where r is the real root of the polynomial x^3-x-1.

The programs for A193640, there is no canonical definition to state claims against.
-/

/-! ## A193640.P8602947025669451599

`lt[0, a(n-3)-a(n-1)]` with `a(0)=5, a(1)=0, a(2)=2`
-/

namespace A193640.P8602947025669451599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 0, 2] fun n f2 =>
  f2 (n - 3) - f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193640.P8602947025669451599

/-! ## A193640.P12485311516798278029

`lt[A078712(n), 0]`
-/

namespace A193640.P12485311516798278029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078712 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193640.P12485311516798278029

/-! ## A193640.P11456298589417943116

`comp[A193627(n+1)]`
-/

namespace A193640.P11456298589417943116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193640.P11456298589417943116

/-! ## A193640.P13700472491767110196

`comp[lt[A247920(n), cos(n)]]`
-/

namespace A193640.P13700472491767110196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247920 n

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A193640.P13700472491767110196

/-! ## A193640.P4412421588884505334

`comp[A051017(n+1)-58]`
-/

namespace A193640.P4412421588884505334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1) - 58

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193640.P4412421588884505334

/-! ## A193640.P11845254529949846410

`comp[record[(n+1)*ceil(1/A078712(n+1))]]`
-/

namespace A193640.P11845254529949846410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈1 / (A078712 (n + 1) : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A193640.P11845254529949846410

/-! ## A193640.P3367198946722271202

`lt[A001945(n), A001608(n)]`
-/

namespace A193640.P3367198946722271202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193640.P3367198946722271202

/-! ## A193640.P9505983867180348351

`lt[Δ[A077905(n)], A077905(n)]`
-/

namespace A193640.P9505983867180348351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A193640.P9505983867180348351

/-! ## A193640.P10482207364479517961

`lt[A247917(n+1), A077905(n)]`
-/

namespace A193640.P10482207364479517961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193640.P10482207364479517961

/-! ## A193640.P7777865122332202829

`lt[A001608(2*n), A001608(n)²]`
-/

namespace A193640.P7777865122332202829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193640.P7777865122332202829

/-!
# A193641: Number of arrays of -1..1 integers x(1..n) with every x(i) in a subsequence of length 1 or 2 with sum zero.

The programs for A193641, the canonical program `A193641.P3318899875766667403` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193641 has offset 0).

The definition of A193641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193641.P17367874026408732483

`ogf((1+x+x^2)/(1-2x-x^3))`
-/

namespace A193641.P17367874026408732483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -2, 0, -1] n

end

end A193641.P17367874026408732483

namespace A193641

/-- `ogf((1+x+x^2)/(1-2x-x^3))` -/
def P17367874026408732483.Spec : Prop :=
  ∀ n, P17367874026408732483.a n = A193641 n

end A193641

/-! ## A193641.P3318899875766667403

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193641

/-- `2*a(n-1)+a(n-3)` -/
def P3318899875766667403.Spec : Prop :=
  ∀ n, (P3318899875766667403.a n : ℤ) = A193641 n

theorem P3318899875766667403.correct : P3318899875766667403.Spec := by
  intro n
  simp only [A193641]

end A193641

/-! ## A193641.P12170907382141216293

`a(n-3)+lcm(2, a(n-1))` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A193641.P12170907382141216293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 3) + Nat.lcm 2 (a (n - 1))

end

end A193641.P12170907382141216293

namespace A193641

/-- `a(n-3)+lcm(2, a(n-1))` -/
def P12170907382141216293.Spec : Prop :=
  ∀ n, (P12170907382141216293.a n : ℤ) = A193641 n

end A193641

/-! ## A193641.P3137933960971653028

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A193641.P3137933960971653028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A193641.P3137933960971653028

namespace A193641

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P3137933960971653028.Spec : Prop :=
  ∀ n, (P3137933960971653028.a n : ℤ) = A193641 n

theorem P3137933960971653028.correct : P3137933960971653028.Spec := by
  intro n
  simp only [A193641, Nat.add_sub_cancel, A193641.P3137933960971653028.a, A193641.P3318899875766667403.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A193641

/-! ## A193641.P5770961143313691779

`∑[A052910(n)]`
-/

namespace A193641.P5770961143313691779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193641.P5770961143313691779

namespace A193641

/-- `∑[A052910(n)]` -/
def P5770961143313691779.Spec : Prop :=
  ∀ n, P5770961143313691779.a n = A193641 n

end A193641

/-! ## A193641.P17538861444740180095

`or(1, A232230(n+1))`
-/

namespace A193641.P17538861444740180095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232230 (n + 1))

end

end A193641.P17538861444740180095

namespace A193641

/-- `or(1, A232230(n+1))` -/
def P17538861444740180095.Spec : Prop :=
  ∀ n, P17538861444740180095.a n = A193641 n

end A193641

/-! ## A193641.P8750196785700851571

`2*A190512(n)-a(n-1)` with `a(0)=1`
-/

namespace A193641.P8750196785700851571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A190512 n - a (n - 1)

end

end A193641.P8750196785700851571

namespace A193641

/-- `2*A190512(n)-a(n-1)` -/
def P8750196785700851571.Spec : Prop :=
  ∀ n, P8750196785700851571.a n = A193641 n

end A193641

/-! ## A193641.P10760440129377058551

`A214260(n)+A008998(n)`
-/

namespace A193641.P10760440129377058551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 n + A008998 n

end

end A193641.P10760440129377058551

namespace A193641

/-- `A214260(n)+A008998(n)` -/
def P10760440129377058551.Spec : Prop :=
  ∀ n, P10760440129377058551.a n = A193641 n

end A193641

/-! ## A193641.P707968074429667548

`A008998(n)+Δ[A052980(n)]`
-/

namespace A193641.P707968074429667548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n + (f1 (n + 1) - f1 n)

end

end A193641.P707968074429667548

namespace A193641

/-- `A008998(n)+Δ[A052980(n)]` -/
def P707968074429667548.Spec : Prop :=
  ∀ n, P707968074429667548.a n = A193641 n

end A193641

/-! ## A193641.P539503715992242137

`A008998(n+1)-A052980(n)`
-/

namespace A193641.P539503715992242137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1) - A052980 n

end

end A193641.P539503715992242137

namespace A193641

/-- `A008998(n+1)-A052980(n)` -/
def P539503715992242137.Spec : Prop :=
  ∀ n, P539503715992242137.a n = A193641 n

end A193641

/-! ## A193641.P15156986034292996052

`A190512(n+1)-A008998(n)`
-/

namespace A193641.P15156986034292996052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (n + 1) - A008998 n

end

end A193641.P15156986034292996052

namespace A193641

/-- `A190512(n+1)-A008998(n)` -/
def P15156986034292996052.Spec : Prop :=
  ∀ n, P15156986034292996052.a n = A193641 n

end A193641

/-! ## A193641.P8032841105427095180

`A280193(2*n)+A232230(n+1)-1`
-/

namespace A193641.P8032841105427095180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n) + (A232230 (n + 1) - 1)

end

end A193641.P8032841105427095180

namespace A193641

/-- `A280193(2*n)+A232230(n+1)-1` -/
def P8032841105427095180.Spec : Prop :=
  ∀ n, P8032841105427095180.a n = A193641 n

end A193641

/-! ## A193641.P15419702656219848189

`A052980(n+1)+A332647(n)-A332491(n)`
-/

namespace A193641.P15419702656219848189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1) + (A332647 n - A332491 n)

end

end A193641.P15419702656219848189

namespace A193641

/-- `A052980(n+1)+A332647(n)-A332491(n)` -/
def P15419702656219848189.Spec : Prop :=
  ∀ n, P15419702656219848189.a n = A193641 n

end A193641

/-! ## A193641.P8356671640639945840

`A008998(n+1)+A008998(n+1)-A285184(n+1)`
-/

namespace A193641.P8356671640639945840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1) + (A008998 (n + 1) - A285184 (n + 1))

end

end A193641.P8356671640639945840

namespace A193641

/-- `A008998(n+1)+A008998(n+1)-A285184(n+1)` -/
def P8356671640639945840.Spec : Prop :=
  ∀ n, P8356671640639945840.a n = A193641 n

end A193641

/-! ## A193641.P11838166711246188754

`A280193(2*n+1)+A280193(2*n)+A232230(n+1)`
-/

namespace A193641.P11838166711246188754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + (A280193 (2 * n) + A232230 (n + 1))

end

end A193641.P11838166711246188754

namespace A193641

/-- `A280193(2*n+1)+A280193(2*n)+A232230(n+1)` -/
def P11838166711246188754.Spec : Prop :=
  ∀ n, P11838166711246188754.a n = A193641 n

end A193641

/-! ## A193641.P10715268210244089369

`A233583(2*(n+1))+A232230(n+1)-A233583(2*n+1)`
-/

namespace A193641.P10715268210244089369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * (n + 1)) + (A232230 (n + 1) - A233583 (2 * n + 1))

end

end A193641.P10715268210244089369

namespace A193641

/-- `A233583(2*(n+1))+A232230(n+1)-A233583(2*n+1)` -/
def P10715268210244089369.Spec : Prop :=
  ∀ n, P10715268210244089369.a n = A193641 n

end A193641

/-! ## A193641.P11941165197183828770

`A232059(n+1)/2`
-/

namespace A193641.P11941165197183828770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232059 (n + 1) : ℚ) / 2

end

end A193641.P11941165197183828770

namespace A193641

/-- `A232059(n+1)/2` -/
def P11941165197183828770.Spec : Prop :=
  ∀ n, P11941165197183828770.a n = (A193641 n : ℚ)

end A193641

/-! ## A193641.P13620196739652125744

`Δ[A285184(n+1)/2]`
-/

namespace A193641.P13620196739652125744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285184 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193641.P13620196739652125744

namespace A193641

/-- `Δ[A285184(n+1)/2]` -/
def P13620196739652125744.Spec : Prop :=
  ∀ n, P13620196739652125744.a n = (A193641 n : ℚ)

end A193641

/-! ## A193641.P3413470337371404562

`Δ[A077852(n)]-A052980(n)`
-/

namespace A193641.P3413470337371404562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052980 n

end

end A193641.P3413470337371404562

namespace A193641

/-- `Δ[A077852(n)]-A052980(n)` -/
def P3413470337371404562.Spec : Prop :=
  ∀ n, P3413470337371404562.a n = A193641 n

end A193641

/-!
# A193642: Number of arrays of -2..2 integers x(1..n) with every x(i) in a subsequence of length 1 or 2 with sum zero.

The programs for A193642, the canonical program `A193642.P5087413253672381724` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193642 has offset 1).

The definition of A193642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193642.P15369819470963617743

`ogf((1+3x+x^2)/(1-2x-2x^2-x^3))`
-/

namespace A193642.P15369819470963617743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, -2, -2, -1] n

end

end A193642.P15369819470963617743

namespace A193642

/-- `ogf((1+3x+x^2)/(1-2x-2x^2-x^3))` -/
def P15369819470963617743.Spec : Prop :=
  ∀ n, P15369819470963617743.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P5087413253672381724

`a(n-3)+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=5, a(2)=13`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193642

/-- `a(n-3)+2*(a(n-1)+a(n-2))` -/
def P5087413253672381724.Spec : Prop :=
  ∀ n, (P5087413253672381724.a n : ℤ) = A193642 (n + 1)

theorem P5087413253672381724.correct : P5087413253672381724.Spec := by
  intro n
  simp only [A193642, Nat.add_sub_cancel]

end A193642

/-! ## A193642.P10496704103916249794

`A077936(n)+Δ[A077995(n)]`
-/

namespace A193642.P10496704103916249794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 n + (f1 (n + 1) - f1 n)

end

end A193642.P10496704103916249794

namespace A193642

/-- `A077936(n)+Δ[A077995(n)]` -/
def P10496704103916249794.Spec : Prop :=
  ∀ n, P10496704103916249794.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P13199305968394369373

`A077936(n+1)-A077995(n)`
-/

namespace A193642.P13199305968394369373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 (n + 1) - A077995 n

end

end A193642.P13199305968394369373

namespace A193642

/-- `A077936(n+1)-A077995(n)` -/
def P13199305968394369373.Spec : Prop :=
  ∀ n, P13199305968394369373.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P3232209301364438918

`A233828(n)+2*A077936(n)`
-/

namespace A193642.P3232209301364438918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233828 n + 2 * A077936 n

end

end A193642.P3232209301364438918

namespace A193642

/-- `A233828(n)+2*A077936(n)` -/
def P3232209301364438918.Spec : Prop :=
  ∀ n, P3232209301364438918.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P7448909368951076741

`Δ[A077995(n)]+abs(A077983(n))`
-/

namespace A193642.P7448909368951076741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + |A077983 n|

end

end A193642.P7448909368951076741

namespace A193642

/-- `Δ[A077995(n)]+abs(A077983(n))` -/
def P7448909368951076741.Spec : Prop :=
  ∀ n, P7448909368951076741.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P13463149895338015156

`abs(A077983(n+1))-A077995(n)`
-/

namespace A193642.P13463149895338015156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077983 (n + 1)| - A077995 n

end

end A193642.P13463149895338015156

namespace A193642

/-- `abs(A077983(n+1))-A077995(n)` -/
def P13463149895338015156.Spec : Prop :=
  ∀ n, P13463149895338015156.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P5486948730308276322

`A101168(n+1)-2*A077936(n)`
-/

namespace A193642.P5486948730308276322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101168 (n + 1) - 2 * A077936 n

end

end A193642.P5486948730308276322

namespace A193642

/-- `A101168(n+1)-2*A077936(n)` -/
def P5486948730308276322.Spec : Prop :=
  ∀ n, P5486948730308276322.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P16568122769609054697

`Δ[A233828(n+2)]-A233828(n+1)`
-/

namespace A193642.P16568122769609054697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233828 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A233828 (n + 1)

end

end A193642.P16568122769609054697

namespace A193642

/-- `Δ[A233828(n+2)]-A233828(n+1)` -/
def P16568122769609054697.Spec : Prop :=
  ∀ n, P16568122769609054697.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P6936376793745089321

`A233828(n+1)+A233828(n)+A101168(n)`
-/

namespace A193642.P6936376793745089321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233828 (n + 1) + (A233828 n + A101168 n)

end

end A193642.P6936376793745089321

namespace A193642

/-- `A233828(n+1)+A233828(n)+A101168(n)` -/
def P6936376793745089321.Spec : Prop :=
  ∀ n, P6936376793745089321.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P13425969556884633484

`A193648(∑[n+2])`
-/

namespace A193642.P13425969556884633484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193642.P13425969556884633484

namespace A193642

/-- `A193648(∑[n+2])` -/
def P13425969556884633484.Spec : Prop :=
  ∀ n, P13425969556884633484.a n = A193642 (n + 1)

end A193642

/-! ## A193642.P10809524220580974933

`record[A193648(n+2)/A193635(n+3)]`
-/

namespace A193642.P10809524220580974933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193648 (n + 2) : ℚ) / (A193635 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193642.P10809524220580974933

namespace A193642

/-- `record[A193648(n+2)/A193635(n+3)]` -/
def P10809524220580974933.Spec : Prop :=
  ∀ n, P10809524220580974933.a n = (A193642 (n + 1) : ℚ)

end A193642

/-!
# A193643: Number of arrays of -3..3 integers x(1..n) with every x(i) in a subsequence of length 1 or 2 with sum zero.

The programs for A193643, the canonical program `A193643.P15225972283929706955` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193643 has offset 1).

The definition of A193643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193643.P6742590095824863193

`ogf((1+5x+x^2)/(1-2x-4x^2-x^3))`
-/

namespace A193643.P6742590095824863193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1] [1, -2, -4, -1] n

end

end A193643.P6742590095824863193

namespace A193643

/-- `ogf((1+5x+x^2)/(1-2x-4x^2-x^3))` -/
def P6742590095824863193.Spec : Prop :=
  ∀ n, P6742590095824863193.a n = A193643 (n + 1)

end A193643

/-! ## A193643.P15225972283929706955

`2*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=19`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193643

/-- `2*a(n-1)+4*a(n-2)+a(n-3)` -/
def P15225972283929706955.Spec : Prop :=
  ∀ n, (P15225972283929706955.a n : ℤ) = A193643 (n + 1)

theorem P15225972283929706955.correct : P15225972283929706955.Spec := by
  intro n
  simp only [A193643, Nat.add_sub_cancel]

end A193643

/-! ## A193643.P12868630887288721106

`A052991(n+1)-(-1)^n`
-/

namespace A193643.P12868630887288721106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052991 (n + 1) - (-1) ^ n

end

end A193643.P12868630887288721106

namespace A193643

/-- `A052991(n+1)-(-1)^n` -/
def P12868630887288721106.Spec : Prop :=
  ∀ n, P12868630887288721106.a n = A193643 (n + 1)

end A193643

/-! ## A193643.P8372694525626762584

`2*A006190(n+1)-(-1)^n`
-/

namespace A193643.P8372694525626762584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006190 (n + 1) - (-1) ^ n

end

end A193643.P8372694525626762584

namespace A193643

/-- `2*A006190(n+1)-(-1)^n` -/
def P8372694525626762584.Spec : Prop :=
  ∀ n, P8372694525626762584.a n = A193643 (n + 1)

end A193643

/-! ## A193643.P16204372056552005814

`A033999(n+1)+2*A006190(n+1)`
-/

namespace A193643.P16204372056552005814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + 2 * A006190 (n + 1)

end

end A193643.P16204372056552005814

namespace A193643

/-- `A033999(n+1)+2*A006190(n+1)` -/
def P16204372056552005814.Spec : Prop :=
  ∀ n, P16204372056552005814.a n = A193643 (n + 1)

end A193643

/-! ## A193643.P1484913830537310177

`A052906(n)+A180148(n)-a(n-1)` with `a(0)=1`
-/

namespace A193643.P1484913830537310177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052906 n + (A180148 n - a (n - 1))

end

end A193643.P1484913830537310177

namespace A193643

/-- `A052906(n)+A180148(n)-a(n-1)` -/
def P1484913830537310177.Spec : Prop :=
  ∀ n, P1484913830537310177.a n = A193643 (n + 1)

end A193643

/-! ## A193643.P8126209509372542634

`A018186(A004273(n))+A180148(n)-a(n-1)` with `a(0)=1`
-/

namespace A193643.P8126209509372542634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018186 (A004273 n).toNat + (A180148 n - a (n - 1))

end

end A193643.P8126209509372542634

namespace A193643

/-- `A018186(A004273(n))+A180148(n)-a(n-1)` -/
def P8126209509372542634.Spec : Prop :=
  ∀ n, P8126209509372542634.a n = A193643 (n + 1)

end A193643

/-! ## A193643.P8952594198787650040

`A180148(n)-a(n-1)+A052991(n)+A006190(n)` with `a(0)=1`
-/

namespace A193643.P8952594198787650040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180148 n - a (n - 1) + (A052991 n + A006190 n)

end

end A193643.P8952594198787650040

namespace A193643

/-- `A180148(n)-a(n-1)+A052991(n)+A006190(n)` -/
def P8952594198787650040.Spec : Prop :=
  ∀ n, P8952594198787650040.a n = A193643 (n + 1)

end A193643

/-! ## A193643.P15505239977390319550

`A193648(∑[n+3]+1)`
-/

namespace A193643.P15505239977390319550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193643.P15505239977390319550

namespace A193643

/-- `A193648(∑[n+3]+1)` -/
def P15505239977390319550.Spec : Prop :=
  ∀ n, P15505239977390319550.a n = A193643 (n + 1)

end A193643

/-! ## A193643.P1195661484923449931

`record[A193648(n+1)/A193635(n+3)]`
-/

namespace A193643.P1195661484923449931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193648 (n + 1) : ℚ) / (A193635 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193643.P1195661484923449931

namespace A193643

/-- `record[A193648(n+1)/A193635(n+3)]` -/
def P1195661484923449931.Spec : Prop :=
  ∀ n, P1195661484923449931.a n = (A193643 (n + 1) : ℚ)

end A193643

/-!
# A193644: Number of arrays of -4..4 integers x(1..n) with every x(i) in a subsequence of length 1 or 2 with sum zero.

The programs for A193644, the canonical program `A193644.P423484010968511586` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193644 has offset 1).

The definition of A193644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193644.P10730672238931498578

`ogf((1+7x+x^2)/(1-2x-6x^2-x^3))`
-/

namespace A193644.P10730672238931498578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 1] [1, -2, -6, -1] n

end

end A193644.P10730672238931498578

namespace A193644

/-- `ogf((1+7x+x^2)/(1-2x-6x^2-x^3))` -/
def P10730672238931498578.Spec : Prop :=
  ∀ n, P10730672238931498578.a n = A193644 (n + 1)

end A193644

/-! ## A193644.P423484010968511586

`2*a(n-1)+6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=25`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193644

/-- `2*a(n-1)+6*a(n-2)+a(n-3)` -/
def P423484010968511586.Spec : Prop :=
  ∀ n, (P423484010968511586.a n : ℤ) = A193644 (n + 1)

theorem P423484010968511586.correct : P423484010968511586.Spec := by
  intro n
  simp only [A193644, Nat.add_sub_cancel]

end A193644

/-! ## A193644.P16624860581117592163

`A193648(Δ[∑[∑[n+1]]+(n+1)²]+1)`
-/

namespace A193644.P16624860581117592163
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A193644.P16624860581117592163

namespace A193644

/-- `A193648(Δ[∑[∑[n+1]]+(n+1)²]+1)` -/
def P16624860581117592163.Spec : Prop :=
  ∀ n, P16624860581117592163.a n = A193644 (n + 1)

end A193644

/-! ## A193644.P16759827616332367967

`or(1, A193648(A055998(n+2)))`
-/

namespace A193644.P16759827616332367967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193648 (A055998 (n + 2)).toNat)

end

end A193644.P16759827616332367967

namespace A193644

/-- `or(1, A193648(A055998(n+2)))` -/
def P16759827616332367967.Spec : Prop :=
  ∀ n, P16759827616332367967.a n = A193644 (n + 1)

end A193644

/-! ## A193644.P11661751163615004839

`A193648(A055998(n+2))+char[A016901(n)]`
-/

namespace A193644.P11661751163615004839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016901 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A193644.P11661751163615004839

namespace A193644

/-- `A193648(A055998(n+2))+char[A016901(n)]` -/
def P11661751163615004839.Spec : Prop :=
  ∀ n, P11661751163615004839.a n = A193644 (n + 1)

end A193644

/-!
# A193645: Number of arrays of -5..5 integers x(1..n) with every x(i) in a subsequence of length 1 or 2 with sum zero.

The programs for A193645, the canonical program `A193645.P6026104582983543451` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193645 has offset 1).

The definition of A193645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193645.P6024859700108734711

`ogf((1+9x+x^2)/(1-2x-8x^2-x^3))`
-/

namespace A193645.P6024859700108734711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 1] [1, -2, -8, -1] n

end

end A193645.P6024859700108734711

namespace A193645

/-- `ogf((1+9x+x^2)/(1-2x-8x^2-x^3))` -/
def P6024859700108734711.Spec : Prop :=
  ∀ n, P6024859700108734711.a n = A193645 (n + 1)

end A193645

/-! ## A193645.P6026104582983543451

`2*a(n-1)+8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=11, a(2)=31`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193645

/-- `2*a(n-1)+8*a(n-2)+a(n-3)` -/
def P6026104582983543451.Spec : Prop :=
  ∀ n, (P6026104582983543451.a n : ℤ) = A193645 (n + 1)

theorem P6026104582983543451.correct : P6026104582983543451.Spec := by
  intro n
  simp only [A193645, Nat.add_sub_cancel]

end A193645

/-! ## A193645.P11848688125226380050

`A193648(A046691(n+3))`
-/

namespace A193645.P11848688125226380050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A046691 (n + 3)).toNat

end

end A193645.P11848688125226380050

namespace A193645

/-- `A193648(A046691(n+3))` -/
def P11848688125226380050.Spec : Prop :=
  ∀ n, P11848688125226380050.a n = A193645 (n + 1)

end A193645

/-! ## A193645.P12024558142539444760

`A193648(A056115(n)+11)`
-/

namespace A193645.P12024558142539444760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A056115 n + 11).toNat

end

end A193645.P12024558142539444760

namespace A193645

/-- `A193648(A056115(n)+11)` -/
def P12024558142539444760.Spec : Prop :=
  ∀ n, P12024558142539444760.a n = A193645 (n + 1)

end A193645

/-! ## A193645.P17908947408012751937

`A193648(eq[4, A193592(n)])`
-/

namespace A193645.P17908947408012751937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193645.P17908947408012751937

namespace A193645

/-- `A193648(eq[4, A193592(n)])` -/
def P17908947408012751937.Spec : Prop :=
  ∀ n, P17908947408012751937.a n = A193645 (n + 1)

end A193645

/-! ## A193645.P8433859489957078613

`A193648(Δ[A023545(n+1)])`
-/

namespace A193645.P8433859489957078613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (f1 (n + 1) - f1 n).toNat

end

end A193645.P8433859489957078613

namespace A193645

/-- `A193648(Δ[A023545(n+1)])` -/
def P8433859489957078613.Spec : Prop :=
  ∀ n, P8433859489957078613.a n = A193645 (n + 1)

end A193645

/-! ## A193645.P15342069410517321259

`A193648(A052905(n+2)+1)`
-/

namespace A193645.P15342069410517321259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A052905 (n + 2) + 1).toNat

end

end A193645.P15342069410517321259

namespace A193645

/-- `A193648(A052905(n+2)+1)` -/
def P15342069410517321259.Spec : Prop :=
  ∀ n, P15342069410517321259.a n = A193645 (n + 1)

end A193645

/-! ## A193645.P739678476022788987

`A193648(A180486(n+1)+A167614(n+1))`
-/

namespace A193645.P739678476022788987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A180486 (n + 1) + A167614 (n + 1)).toNat

end

end A193645.P739678476022788987

namespace A193645

/-- `A193648(A180486(n+1)+A167614(n+1))` -/
def P739678476022788987.Spec : Prop :=
  ∀ n, P739678476022788987.a n = A193645 (n + 1)

end A193645

/-!
# A193646: Number of arrays of -6..6 integers x(1..n) with every x(i) in a subsequence of length 1 or 2 with sum zero.

The programs for A193646, the canonical program `A193646.P13954499734980654081` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193646 has offset 1).

The definition of A193646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193646.P13954499734980654081

`2*a(n-1)+10*a(n-2)+a(n-3)` with `a(0)=1, a(1)=13, a(2)=37`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193646

/-- `2*a(n-1)+10*a(n-2)+a(n-3)` -/
def P13954499734980654081.Spec : Prop :=
  ∀ n, (P13954499734980654081.a n : ℤ) = A193646 (n + 1)

theorem P13954499734980654081.correct : P13954499734980654081.Spec := by
  intro n
  simp only [A193646, Nat.add_sub_cancel]

end A193646

/-! ## A193646.P14211181033122795056

`A193648((n+4)²-∑[n+1]+1)`
-/

namespace A193646.P14211181033122795056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A193646.P14211181033122795056

namespace A193646

/-- `A193648((n+4)²-∑[n+1]+1)` -/
def P14211181033122795056.Spec : Prop :=
  ∀ n, P14211181033122795056.a n = A193646 (n + 1)

end A193646

/-! ## A193646.P1382889256240499600

`or(1, A193648(A055999(n+3)+1))`
-/

namespace A193646.P1382889256240499600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193648 (A055999 (n + 3) + 1).toNat)

end

end A193646.P1382889256240499600

namespace A193646

/-- `or(1, A193648(A055999(n+3)+1))` -/
def P1382889256240499600.Spec : Prop :=
  ∀ n, P1382889256240499600.a n = A193646 (n + 1)

end A193646

/-! ## A193646.P17007052457441212100

`A193648(A055999(n+3)+1)*A292375(A120880(n))`
-/

namespace A193646.P17007052457441212100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A055999 (n + 3) + 1).toNat * A292375 (A120880 n).toNat

end

end A193646.P17007052457441212100

namespace A193646

/-- `A193648(A055999(n+3)+1)*A292375(A120880(n))` -/
def P17007052457441212100.Spec : Prop :=
  ∀ n, P17007052457441212100.a n = A193646 (n + 1)

end A193646

/-! ## A193646.P13420158022254052369

`A193648(A055999(n+3)+1)+A000086(A238004(n))`
-/

namespace A193646.P13420158022254052369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A055999 (n + 3) + 1).toNat + A000086 (A238004 n).toNat

end

end A193646.P13420158022254052369

namespace A193646

/-- `A193648(A055999(n+3)+1)+A000086(A238004(n))` -/
def P13420158022254052369.Spec : Prop :=
  ∀ n, P13420158022254052369.a n = A193646 (n + 1)

end A193646

/-!
# A193647: Number of arrays of -7..7 integers x(1..n) with every x(i) in a subsequence of length 1 or 2 with sum zero.

The programs for A193647, the canonical program `A193647.P13288058020436940039` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193647 has offset 1).

The definition of A193647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193647.P13288058020436940039

`2*a(n-1)+12*a(n-2)+a(n-3)` with `a(0)=1, a(1)=15, a(2)=43`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193647

/-- `2*a(n-1)+12*a(n-2)+a(n-3)` -/
def P13288058020436940039.Spec : Prop :=
  ∀ n, (P13288058020436940039.a n : ℤ) = A193647 (n + 1)

theorem P13288058020436940039.correct : P13288058020436940039.Spec := by
  intro n
  simp only [A193647, Nat.add_sub_cancel]

end A193647

/-! ## A193647.P6882534283533969954

`A193648(A055999(n+4))`
-/

namespace A193647.P6882534283533969954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A055999 (n + 4)).toNat

end

end A193647.P6882534283533969954

namespace A193647

/-- `A193648(A055999(n+4))` -/
def P6882534283533969954.Spec : Prop :=
  ∀ n, P6882534283533969954.a n = A193647 (n + 1)

end A193647

/-! ## A193647.P1054477438470168921

`A193648(eq[6, A193592(n)])`
-/

namespace A193647.P1054477438470168921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193647.P1054477438470168921

namespace A193647

/-- `A193648(eq[6, A193592(n)])` -/
def P1054477438470168921.Spec : Prop :=
  ∀ n, P1054477438470168921.a n = A193647 (n + 1)

end A193647

/-! ## A193647.P9466918395467258595

`A193648(A000124(n+7)-7)`
-/

namespace A193647.P9466918395467258595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A000124 (n + 7) - 7).toNat

end

end A193647.P9466918395467258595

namespace A193647

/-- `A193648(A000124(n+7)-7)` -/
def P9466918395467258595.Spec : Prop :=
  ∀ n, P9466918395467258595.a n = A193647 (n + 1)

end A193647

/-! ## A193647.P237534614679236514

`A193648(A161680(n+7)+n+1)`
-/

namespace A193647.P237534614679236514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A193647.P237534614679236514

namespace A193647

/-- `A193648(A161680(n+7)+n+1)` -/
def P237534614679236514.Spec : Prop :=
  ∀ n, P237534614679236514.a n = A193647 (n + 1)

end A193647

/-! ## A193647.P17662669925831109903

`A193648(A005408(n)+A052905(n+2)+11)`
-/

namespace A193647.P17662669925831109903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (A005408 n + (A052905 (n + 2) + 11)).toNat

end

end A193647.P17662669925831109903

namespace A193647

/-- `A193648(A005408(n)+A052905(n+2)+11)` -/
def P17662669925831109903.Spec : Prop :=
  ∀ n, P17662669925831109903.a n = A193647 (n + 1)

end A193647

/-!
# A193648: T(n,k)=Number of arrays of -k..k integers x(1..n) with every x(i) being in a substring of length 1 or 2 with sum zero. Array listed by antidiagonals.

The programs for A193648, there is no canonical definition to state claims against.
-/

/-! ## A193648.P5201885743166274414

`or(A000120(2^n), A208915(n+1))`
-/

namespace A193648.P5201885743166274414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (2 ^ n)) (A208915 (n + 1))

end

end A193648.P5201885743166274414

/-! ## A193648.P12913629304408809511

`or(A002654(2^n), A208915(n+1))`
-/

namespace A193648.P12913629304408809511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002654 (2 ^ n)) (A208915 (n + 1))

end

end A193648.P12913629304408809511

/-! ## A193648.P7082317749378482073

`or(A023532(2^n), A208915(n+1))`
-/

namespace A193648.P7082317749378482073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023532 (2 ^ n)) (A208915 (n + 1))

end

end A193648.P7082317749378482073

/-! ## A193648.P4336539983922553590

`or(A050315(2^n), A208915(n+1))`
-/

namespace A193648.P4336539983922553590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050315 (2 ^ n)) (A208915 (n + 1))

end

end A193648.P4336539983922553590

/-! ## A193648.P9093491552037405238

`or(A014306(A000129(n)), A208915(n+1))`
-/

namespace A193648.P9093491552037405238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014306 (A000129 n).toNat) (A208915 (n + 1))

end

end A193648.P9093491552037405238

/-!
# A193649: Q-residue of the (n+1)st Fibonacci polynomial, where Q is the triangular array (t(i,j)) given by t(i,j)=1. (See Comments.)

The programs for A193649, the canonical program `A193649.P1161301047249590089` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193649 has offset 0).

The definition of A193649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193649.P536500761258101550

`∑[ogf((-1+x+2x^2)/(-1+x+4x^2))]`
-/

namespace A193649.P536500761258101550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -1, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193649.P536500761258101550

namespace A193649

/-- `∑[ogf((-1+x+2x^2)/(-1+x+4x^2))]` -/
def P536500761258101550.Spec : Prop :=
  ∀ n, P536500761258101550.a n = A193649 n

end A193649

/-! ## A193649.P15931294740863566749

`ogf((-1+x+2x^2)/(-1+2x+3x^2-4x^3))`
-/

namespace A193649.P15931294740863566749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -2, -3, 4] n

end

end A193649.P15931294740863566749

namespace A193649

/-- `ogf((-1+x+2x^2)/(-1+2x+3x^2-4x^3))` -/
def P15931294740863566749.Spec : Prop :=
  ∀ n, P15931294740863566749.a n = A193649 n

end A193649

/-! ## A193649.P1161301047249590089

`4*a(n-2)+a(n-1)-2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193649

/-- `4*a(n-2)+a(n-1)-2` -/
def P1161301047249590089.Spec : Prop :=
  ∀ n, P1161301047249590089.a n = A193649 n

theorem P1161301047249590089.correct : P1161301047249590089.Spec := by
  intro n
  simp only [A193649]

end A193649

/-! ## A193649.P10803003488466898232

`4*a(n-2)-(2-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A193649.P10803003488466898232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 2) - (2 - a (n - 1))

end

end A193649.P10803003488466898232

namespace A193649

/-- `4*a(n-2)-(2-a(n-1))` -/
def P10803003488466898232.Spec : Prop :=
  ∀ n, P10803003488466898232.a n = A193649 n

theorem P10803003488466898232.correct : P10803003488466898232.Spec := by
  intro n
  simp only [A193649, Nat.add_sub_cancel, A193649.P10803003488466898232.a, A193649.P1161301047249590089.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A193649

/-! ## A193649.P17538137657210816687

`lcm(4, a(n-2))+a(n-1)-2` with `a(0)=1, a(1)=1`
-/

namespace A193649.P17538137657210816687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 4 (a (n - 2)) : ℤ) + (a (n - 1) - 2)

end

end A193649.P17538137657210816687

namespace A193649

/-- `lcm(4, a(n-2))+a(n-1)-2` -/
def P17538137657210816687.Spec : Prop :=
  ∀ n, P17538137657210816687.a n = A193649 n

end A193649

/-! ## A193649.P850953515972864715

`or(1, A344236(n))`
-/

namespace A193649.P850953515972864715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344236 n)

end

end A193649.P850953515972864715

namespace A193649

/-- `or(1, A344236(n))` -/
def P850953515972864715.Spec : Prop :=
  ∀ n, P850953515972864715.a n = A193649 n

end A193649

/-! ## A193649.P8373450779412248704

`or(1, A344261(n))`
-/

namespace A193649.P8373450779412248704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344261 n)

end

end A193649.P8373450779412248704

namespace A193649

/-- `or(1, A344261(n))` -/
def P8373450779412248704.Spec : Prop :=
  ∀ n, P8373450779412248704.a n = A193649 n

end A193649

/-! ## A193649.P10855480260341572839

`A344261(n)+A000035(n)`
-/

namespace A193649.P10855480260341572839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344261 n + A000035 n

end

end A193649.P10855480260341572839

namespace A193649

/-- `A344261(n)+A000035(n)` -/
def P10855480260341572839.Spec : Prop :=
  ∀ n, P10855480260341572839.a n = A193649 n

end A193649

/-! ## A193649.P7764818059810597076

`A344236(n)+A059841(n)`
-/

namespace A193649.P7764818059810597076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 n + A059841 n

end

end A193649.P7764818059810597076

namespace A193649

/-- `A344236(n)+A059841(n)` -/
def P7764818059810597076.Spec : Prop :=
  ∀ n, P7764818059810597076.a n = A193649 n

end A193649

/-! ## A193649.P1224977712191825568

`A344236(n)+A000035(n+1)`
-/

namespace A193649.P1224977712191825568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 n + A000035 (n + 1)

end

end A193649.P1224977712191825568

namespace A193649

/-- `A344236(n)+A000035(n+1)` -/
def P1224977712191825568.Spec : Prop :=
  ∀ n, P1224977712191825568.a n = A193649 n

end A193649

/-! ## A193649.P14165169028441114925

`1-(A000035(n)-A344236(n))`
-/

namespace A193649.P14165169028441114925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 n - A344236 n)

end

end A193649.P14165169028441114925

namespace A193649

/-- `1-(A000035(n)-A344236(n))` -/
def P14165169028441114925.Spec : Prop :=
  ∀ n, P14165169028441114925.a n = A193649 n

end A193649

/-! ## A193649.P497010047243753608

`A344236(n)+2-A000034(n)`
-/

namespace A193649.P497010047243753608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 n + (2 - A000034 n)

end

end A193649.P497010047243753608

namespace A193649

/-- `A344236(n)+2-A000034(n)` -/
def P497010047243753608.Spec : Prop :=
  ∀ n, P497010047243753608.a n = A193649 n

end A193649

/-! ## A193649.P11326099348979191255

`ceil(A006131(n)/2)`
-/

namespace A193649.P11326099348979191255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006131 n : ℚ) / 2⌉

end

end A193649.P11326099348979191255

namespace A193649

/-- `ceil(A006131(n)/2)` -/
def P11326099348979191255.Spec : Prop :=
  ∀ n, P11326099348979191255.a n = A193649 n

end A193649

/-! ## A193649.P15773013278986652534

`A265987(n+1)/2`
-/

namespace A193649.P15773013278986652534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265987 (n + 1) : ℚ) / 2

end

end A193649.P15773013278986652534

namespace A193649

/-- `A265987(n+1)/2` -/
def P15773013278986652534.Spec : Prop :=
  ∀ n, P15773013278986652534.a n = (A193649 n : ℚ)

end A193649

/-! ## A193649.P837676361280319347

`(A102446(n)+2)/4`
-/

namespace A193649.P837676361280319347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102446 n + 2 : ℚ) / 4

end

end A193649.P837676361280319347

namespace A193649

/-- `(A102446(n)+2)/4` -/
def P837676361280319347.Spec : Prop :=
  ∀ n, P837676361280319347.a n = (A193649 n : ℚ)

end A193649

/-! ## A193649.P4661300805212355251

`A026599(n)+1-A026581(n)`
-/

namespace A193649.P4661300805212355251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026599 n + (1 - A026581 n)

end

end A193649.P4661300805212355251

namespace A193649

/-- `A026599(n)+1-A026581(n)` -/
def P4661300805212355251.Spec : Prop :=
  ∀ n, P4661300805212355251.a n = A193649 n

end A193649

/-! ## A193649.P3880043171554952861

`2*A026597(n)-A026599(n)`
-/

namespace A193649.P3880043171554952861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026597 n - A026599 n

end

end A193649.P3880043171554952861

namespace A193649

/-- `2*A026597(n)-A026599(n)` -/
def P3880043171554952861.Spec : Prop :=
  ∀ n, P3880043171554952861.a n = A193649 n

end A193649

/-! ## A193649.P17002770460956040224

`A006131(n)-(A026599(n)-A026581(n))`
-/

namespace A193649.P17002770460956040224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n - (A026599 n - A026581 n)

end

end A193649.P17002770460956040224

namespace A193649

/-- `A006131(n)-(A026599(n)-A026581(n))` -/
def P17002770460956040224.Spec : Prop :=
  ∀ n, P17002770460956040224.a n = A193649 n

end A193649

/-!
# A193651: a(n) = ((2*n + 1)!! + 1)/2.

The programs for A193651, the canonical program `A193651.P11158792640171004081` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193651 has offset 0).

The definition of A193651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193651.P1335814524019469164

`(1+A006882(2*n+1))/2`
-/

namespace A193651.P1335814524019469164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A006882 (2 * n + 1) : ℚ) / 2

end

end A193651.P1335814524019469164

namespace A193651

/-- `(1+A006882(2*n+1))/2` -/
def P1335814524019469164.Spec : Prop :=
  ∀ n, P1335814524019469164.a n = (A193651 n : ℚ)

end A193651

/-! ## A193651.P11158792640171004081

`((2*a(n-1)-2*a(n-2))*n²+a(n-2)*n-a(n-1))/(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193651

/-- `((2*a(n-1)-2*a(n-2))*n²+a(n-2)*n-a(n-1))/(n-1)` -/
def P11158792640171004081.Spec : Prop :=
  ∀ n, P11158792640171004081.a n = (A193651 n : ℚ)

end A193651

/-! ## A193651.P6917388585396103177

`ceil(∏[Δ[n²]]/2)`
-/

namespace A193651.P6917388585396103177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A193651.P6917388585396103177

namespace A193651

/-- `ceil(∏[Δ[n²]]/2)` -/
def P6917388585396103177.Spec : Prop :=
  ∀ n, P6917388585396103177.a n = A193651 n

end A193651

/-! ## A193651.P18199905557414789592

`round(∏[a(n-1)+2]/2)` with `a(0)=1`
-/

namespace A193651.P18199905557414789592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A193651.P18199905557414789592

namespace A193651

/-- `round(∏[a(n-1)+2]/2)` -/
def P18199905557414789592.Spec : Prop :=
  ∀ n, P18199905557414789592.a n = A193651 n

end A193651

/-! ## A193651.P1250015244252366387

`a(n-1)*Δ[n²]-n` with `a(0)=1`
-/

namespace A193651.P1250015244252366387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n : ℤ)

end

end A193651.P1250015244252366387

namespace A193651

/-- `a(n-1)*Δ[n²]-n` -/
def P1250015244252366387.Spec : Prop :=
  ∀ n, P1250015244252366387.a n = A193651 n

end A193651

/-! ## A193651.P7075902996004378330

`(lcm(2, ∏[2*n+1])+2)/4`
-/

namespace A193651.P7075902996004378330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) + 2 : ℚ) / 4

end

end A193651.P7075902996004378330

namespace A193651

/-- `(lcm(2, ∏[2*n+1])+2)/4` -/
def P7075902996004378330.Spec : Prop :=
  ∀ n, P7075902996004378330.a n = (A193651 n : ℚ)

end A193651

/-! ## A193651.P11249546375453725939

`xor(1, ∏[2*n+1])/2+1`
-/

namespace A193651.P11249546375453725939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 + 1

end

end A193651.P11249546375453725939

namespace A193651

/-- `xor(1, ∏[2*n+1])/2+1` -/
def P11249546375453725939.Spec : Prop :=
  ∀ n, P11249546375453725939.a n = (A193651 n : ℚ)

end A193651

/-! ## A193651.P16060419918516332536

`(∏[a(n-1)+2]+1)/2` with `a(0)=1`
-/

namespace A193651.P16060419918516332536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2

end

end A193651.P16060419918516332536

namespace A193651

/-- `(∏[a(n-1)+2]+1)/2` -/
def P16060419918516332536.Spec : Prop :=
  ∀ n, P16060419918516332536.a n = (A193651 n : ℚ)

end A193651

/-! ## A193651.P13257455747957474053

`(∏[C(n+1, n)+n]+1)/2`
-/

namespace A193651.P13257455747957474053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2

end

end A193651.P13257455747957474053

namespace A193651

/-- `(∏[C(n+1, n)+n]+1)/2` -/
def P13257455747957474053.Spec : Prop :=
  ∀ n, P13257455747957474053.a n = (A193651 n : ℚ)

end A193651

/-! ## A193651.P14712813202655483201

`(2*n+1)*a(n-1)-n` with `a(0)=1`
-/

namespace A193651.P14712813202655483201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) - (n : ℤ)

end

end A193651.P14712813202655483201

namespace A193651

/-- `(2*n+1)*a(n-1)-n` -/
def P14712813202655483201.Spec : Prop :=
  ∀ n, P14712813202655483201.a n = A193651 n

end A193651

/-!
# A193652: A020988 and A007583 interleaved.

The programs for A193652, the canonical program `A193652.P1268542695875414370` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193652 has offset 0).

The definition of A193652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193652.P1268542695875414370

`2*(4^floor(n/2)-1)/3+n%2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193652

/-- `2*(4^floor(n/2)-1)/3+n%2` -/
def P1268542695875414370.Spec : Prop :=
  ∀ n, P1268542695875414370.a n = (A193652 n : ℚ)

end A193652

/-! ## A193652.P8750105946068735247

`ogf((x+2x^2-2x^3)/(1-5x^2+4x^4))`
-/

namespace A193652.P8750105946068735247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -2] [1, 0, -5, 0, 4] n

end

end A193652.P8750105946068735247

namespace A193652

/-- `ogf((x+2x^2-2x^3)/(1-5x^2+4x^4))` -/
def P8750105946068735247.Spec : Prop :=
  ∀ n, P8750105946068735247.a n = A193652 n

end A193652

/-! ## A193652.P6759890030814627869

`gcd(2, n)²+4*a(n-2)-2` with `a(0)=0, a(1)=1`
-/

namespace A193652.P6759890030814627869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.gcd 2 n ^ 2 : ℤ) + 4 * a (n - 2) - 2

end

end A193652.P6759890030814627869

namespace A193652

/-- `gcd(2, n)²+4*a(n-2)-2` -/
def P6759890030814627869.Spec : Prop :=
  ∀ n, P6759890030814627869.a n = A193652 n

end A193652

/-! ## A193652.P7935632054339996348

`∑[abs(ceil(2^(n-1))*char[2*n]-1)]`
-/

namespace A193652.P7935632054339996348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193652.P7935632054339996348

namespace A193652

/-- `∑[abs(ceil(2^(n-1))*char[2*n]-1)]` -/
def P7935632054339996348.Spec : Prop :=
  ∀ n, P7935632054339996348.a n = A193652 n

end A193652

/-! ## A193652.P4763385325003312647

`5*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A193652.P4763385325003312647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A193652.P4763385325003312647

namespace A193652

/-- `5*a(n-2)-4*a(n-4)` -/
def P4763385325003312647.Spec : Prop :=
  ∀ n, P4763385325003312647.a n = A193652 n

end A193652

/-! ## A193652.P5321308773016783119

`gcd(2, n)*A001045(n)`
-/

namespace A193652.P5321308773016783119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A001045 n

end

end A193652.P5321308773016783119

namespace A193652

/-- `gcd(2, n)*A001045(n)` -/
def P5321308773016783119.Spec : Prop :=
  ∀ n, P5321308773016783119.a n = A193652 n

end A193652

/-! ## A193652.P7858401751084382006

`A282577(n)+A167167(n)`
-/

namespace A193652.P7858401751084382006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282577 n + A167167 n

end

end A193652.P7858401751084382006

namespace A193652

/-- `A282577(n)+A167167(n)` -/
def P7858401751084382006.Spec : Prop :=
  ∀ n, P7858401751084382006.a n = A193652 n

end A193652

/-! ## A193652.P7554611424926225407

`A001045(n)*A040001(n)`
-/

namespace A193652.P7554611424926225407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A040001 n

end

end A193652.P7554611424926225407

namespace A193652

/-- `A001045(n)*A040001(n)` -/
def P7554611424926225407.Spec : Prop :=
  ∀ n, P7554611424926225407.a n = A193652 n

end A193652

/-! ## A193652.P10931180438663171163

`A001045(n)*A134451(n)`
-/

namespace A193652.P10931180438663171163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A134451 n

end

end A193652.P10931180438663171163

namespace A193652

/-- `A001045(n)*A134451(n)` -/
def P10931180438663171163.Spec : Prop :=
  ∀ n, P10931180438663171163.a n = A193652 n

end A193652

/-! ## A193652.P11749828583089675536

`A134451(n)*A152046(n)`
-/

namespace A193652.P11749828583089675536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A152046 n

end

end A193652.P11749828583089675536

namespace A193652

/-- `A134451(n)*A152046(n)` -/
def P11749828583089675536.Spec : Prop :=
  ∀ n, P11749828583089675536.a n = A193652 n

end A193652

/-! ## A193652.P12839119016118659771

`A134451(n)*A167167(n)`
-/

namespace A193652.P12839119016118659771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A167167 n

end

end A193652.P12839119016118659771

namespace A193652

/-- `A134451(n)*A167167(n)` -/
def P12839119016118659771.Spec : Prop :=
  ∀ n, P12839119016118659771.a n = A193652 n

end A193652

/-! ## A193652.P16016813422247523313

`lcm(A001045(n), A010131(n))`
-/

namespace A193652.P16016813422247523313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001045 n) (A010131 n)

end

end A193652.P16016813422247523313

namespace A193652

/-- `lcm(A001045(n), A010131(n))` -/
def P16016813422247523313.Spec : Prop :=
  ∀ n, (P16016813422247523313.a n : ℤ) = A193652 n

end A193652

/-! ## A193652.P16971677302451896530

`A000034(n+1)*A001045(n)`
-/

namespace A193652.P16971677302451896530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A001045 n

end

end A193652.P16971677302451896530

namespace A193652

/-- `A000034(n+1)*A001045(n)` -/
def P16971677302451896530.Spec : Prop :=
  ∀ n, P16971677302451896530.a n = A193652 n

end A193652

/-! ## A193652.P2506635907419023139

`(A059841(n)+1)*A001045(n)`
-/

namespace A193652.P2506635907419023139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) * A001045 n

end

end A193652.P2506635907419023139

namespace A193652

/-- `(A059841(n)+1)*A001045(n)` -/
def P2506635907419023139.Spec : Prop :=
  ∀ n, P2506635907419023139.a n = A193652 n

end A193652

/-! ## A193652.P13613962178645716601

`A001045(n)*A084642(n+1)`
-/

namespace A193652.P13613962178645716601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A084642 (n + 1)

end

end A193652.P13613962178645716601

namespace A193652

/-- `A001045(n)*A084642(n+1)` -/
def P13613962178645716601.Spec : Prop :=
  ∀ n, P13613962178645716601.a n = A193652 n

end A193652

/-! ## A193652.P8331350281700970431

`(1-A084247(n))*A280193(n)`
-/

namespace A193652.P8331350281700970431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A084247 n) * A280193 n

end

end A193652.P8331350281700970431

namespace A193652

/-- `(1-A084247(n))*A280193(n)` -/
def P8331350281700970431.Spec : Prop :=
  ∀ n, P8331350281700970431.a n = A193652 n

end A193652

/-! ## A193652.P11861446706403474187

`(2-A000035(n))*A001045(n)`
-/

namespace A193652.P11861446706403474187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A001045 n

end

end A193652.P11861446706403474187

namespace A193652

/-- `(2-A000035(n))*A001045(n)` -/
def P11861446706403474187.Spec : Prop :=
  ∀ n, P11861446706403474187.a n = A193652 n

end A193652

/-! ## A193652.P3698387007767887947

`2/A000034(n)*A001045(n)`
-/

namespace A193652.P3698387007767887947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A001045 n : ℚ)

end

end A193652.P3698387007767887947

namespace A193652

/-- `2/A000034(n)*A001045(n)` -/
def P3698387007767887947.Spec : Prop :=
  ∀ n, P3698387007767887947.a n = (A193652 n : ℚ)

end A193652

/-! ## A193652.P14809130815924705748

`(A056594(n)²+1)*A001045(n)`
-/

namespace A193652.P14809130815924705748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n ^ 2 + 1) * A001045 n

end

end A193652.P14809130815924705748

namespace A193652

/-- `(A056594(n)²+1)*A001045(n)` -/
def P14809130815924705748.Spec : Prop :=
  ∀ n, P14809130815924705748.a n = A193652 n

end A193652

/-! ## A193652.P7112933458886523047

`(A153643(n)-A155944(n))*A001045(n)`
-/

namespace A193652.P7112933458886523047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153643 n - A155944 n) * A001045 n

end

end A193652.P7112933458886523047

namespace A193652

/-- `(A153643(n)-A155944(n))*A001045(n)` -/
def P7112933458886523047.Spec : Prop :=
  ∀ n, P7112933458886523047.a n = A193652 n

end A193652

/-!
# A193653: Q-residue of the Delannoy triangle A008288, where Q is the triangular array (t(i,j)) given by t(i,j)=1.

The programs for A193653, the canonical program `A193653.P16042560203958718163` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193653 has offset 0).

The definition of A193653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193653.P16042560203958718163

`4*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193653

/-- `4*a(n-1)-a(n-2)-2*a(n-3)` -/
def P16042560203958718163.Spec : Prop :=
  ∀ n, P16042560203958718163.a n = A193653 n

theorem P16042560203958718163.correct : P16042560203958718163.Spec := by
  intro n
  simp only [A193653]

end A193653

/-! ## A193653.P10551772696730680194

`∑[ogf((-1+2x+x^2)/(-1+3x+2x^2))]`
-/

namespace A193653.P10551772696730680194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -3, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193653.P10551772696730680194

namespace A193653

/-- `∑[ogf((-1+2x+x^2)/(-1+3x+2x^2))]` -/
def P10551772696730680194.Spec : Prop :=
  ∀ n, P10551772696730680194.a n = A193653 n

end A193653

/-! ## A193653.P16620133086831626787

`ogf((1-2x-x^2)/(1-4x+x^2+2x^3))`
-/

namespace A193653.P16620133086831626787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -4, 1, 2] n

end

end A193653.P16620133086831626787

namespace A193653

/-- `ogf((1-2x-x^2)/(1-4x+x^2+2x^3))` -/
def P16620133086831626787.Spec : Prop :=
  ∀ n, P16620133086831626787.a n = A193653 n

end A193653

/-! ## A193653.P17843602908530647364

`2*(a(n-2)-1)+3*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A193653.P17843602908530647364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) - 1) + 3 * a (n - 1)

end

end A193653.P17843602908530647364

namespace A193653

/-- `2*(a(n-2)-1)+3*a(n-1)` -/
def P17843602908530647364.Spec : Prop :=
  ∀ n, P17843602908530647364.a n = A193653 n

end A193653

/-! ## A193653.P393626237464536640

`3*a(n-1)-2*(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A193653.P393626237464536640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - 2 * (1 - a (n - 2))

end

end A193653.P393626237464536640

namespace A193653

/-- `3*a(n-1)-2*(1-a(n-2))` -/
def P393626237464536640.Spec : Prop :=
  ∀ n, P393626237464536640.a n = A193653 n

end A193653

/-! ## A193653.P10713231107594248460

`ceil(A007482(n)/2)`
-/

namespace A193653.P10713231107594248460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007482 n : ℚ) / 2⌉

end

end A193653.P10713231107594248460

namespace A193653

/-- `ceil(A007482(n)/2)` -/
def P10713231107594248460.Spec : Prop :=
  ∀ n, P10713231107594248460.a n = A193653 n

end A193653

/-! ## A193653.P12401841584965930562

`(A180143(n)+2)/3`
-/

namespace A193653.P12401841584965930562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180143 n + 2 : ℚ) / 3

end

end A193653.P12401841584965930562

namespace A193653

/-- `(A180143(n)+2)/3` -/
def P12401841584965930562.Spec : Prop :=
  ∀ n, P12401841584965930562.a n = (A193653 n : ℚ)

end A193653

/-! ## A193653.P6246479526462123086

`∑[ceil(A104934(n)/2)]`
-/

namespace A193653.P6246479526462123086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104934 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193653.P6246479526462123086

namespace A193653

/-- `∑[ceil(A104934(n)/2)]` -/
def P6246479526462123086.Spec : Prop :=
  ∀ n, P6246479526462123086.a n = A193653 n

end A193653

/-! ## A193653.P16490797525155497537

`ceil(A007455(2*n)/2)`
-/

namespace A193653.P16490797525155497537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007455 (2 * n) : ℚ) / 2⌉

end

end A193653.P16490797525155497537

namespace A193653

/-- `ceil(A007455(2*n)/2)` -/
def P16490797525155497537.Spec : Prop :=
  ∀ n, P16490797525155497537.a n = A193653 n

end A193653

/-! ## A193653.P5499358797227592163

`ceil(A007481(2*n)/2)`
-/

namespace A193653.P5499358797227592163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007481 (2 * n) : ℚ) / 2⌉

end

end A193653.P5499358797227592163

namespace A193653

/-- `ceil(A007481(2*n)/2)` -/
def P5499358797227592163.Spec : Prop :=
  ∀ n, P5499358797227592163.a n = A193653 n

end A193653

/-! ## A193653.P10506481938126856294

`∑[A055099(log2(ceil(2^(n-1))))]`
-/

namespace A193653.P10506481938126856294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193653.P10506481938126856294

namespace A193653

/-- `∑[A055099(log2(ceil(2^(n-1))))]` -/
def P10506481938126856294.Spec : Prop :=
  ∀ n, P10506481938126856294.a n = A193653 n

end A193653

/-! ## A193653.P11715249449319710599

`A055099(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A193653.P11715249449319710599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055099 (n - 1) + a (n - 1)

end

end A193653.P11715249449319710599

namespace A193653

/-- `A055099(n-1)+a(n-1)` -/
def P11715249449319710599.Spec : Prop :=
  ∀ n, P11715249449319710599.a n = A193653 n

end A193653

/-! ## A193653.P4692748381727931920

`A180143(n)+1-A007482(n)`
-/

namespace A193653.P4692748381727931920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180143 n + (1 - A007482 n)

end

end A193653.P4692748381727931920

namespace A193653

/-- `A180143(n)+1-A007482(n)` -/
def P4692748381727931920.Spec : Prop :=
  ∀ n, P4692748381727931920.a n = A193653 n

end A193653

/-! ## A193653.P8377823865530395659

`A104934(n)-A230269(n+1)`
-/

namespace A193653.P8377823865530395659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n - A230269 (n + 1)

end

end A193653.P8377823865530395659

namespace A193653

/-- `A104934(n)-A230269(n+1)` -/
def P8377823865530395659.Spec : Prop :=
  ∀ n, P8377823865530395659.a n = A193653 n

end A193653

/-! ## A193653.P8939789802226428332

`A055099(n)-A230269(n+2)`
-/

namespace A193653.P8939789802226428332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n - A230269 (n + 2)

end

end A193653.P8939789802226428332

namespace A193653

/-- `A055099(n)-A230269(n+2)` -/
def P8939789802226428332.Spec : Prop :=
  ∀ n, P8939789802226428332.a n = A193653 n

end A193653

/-! ## A193653.P6788753846100280711

`A055099(n)-∑[A106434(n+1)]`
-/

namespace A193653.P6788753846100280711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193653.P6788753846100280711

namespace A193653

/-- `A055099(n)-∑[A106434(n+1)]` -/
def P6788753846100280711.Spec : Prop :=
  ∀ n, P6788753846100280711.a n = A193653 n

end A193653

/-! ## A193653.P8763907412474016066

`A106434(n+1)+A104934(n)-∑[A106434(n+1)]`
-/

namespace A193653.P8763907412474016066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1) + (A104934 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193653.P8763907412474016066

namespace A193653

/-- `A106434(n+1)+A104934(n)-∑[A106434(n+1)]` -/
def P8763907412474016066.Spec : Prop :=
  ∀ n, P8763907412474016066.a n = A193653 n

end A193653

/-! ## A193653.P12107141760930417170

`ceil(A106434(n+2)/4)`
-/

namespace A193653.P12107141760930417170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106434 (n + 2) : ℚ) / 4⌉

end

end A193653.P12107141760930417170

namespace A193653

/-- `ceil(A106434(n+2)/4)` -/
def P12107141760930417170.Spec : Prop :=
  ∀ n, P12107141760930417170.a n = A193653 n

end A193653

/-! ## A193653.P7065540422170852288

`2*A180144(n)-Δ[A104934(n)]`
-/

namespace A193653.P7065540422170852288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180144 n - (f1 (n + 1) - f1 n)

end

end A193653.P7065540422170852288

namespace A193653

/-- `2*A180144(n)-Δ[A104934(n)]` -/
def P7065540422170852288.Spec : Prop :=
  ∀ n, P7065540422170852288.a n = A193653 n

end A193653

/-!
# A193654: Q-residue of the triangle p(n,k)=floor((n+1)/(n+k+2)/2), 0<=k<=n, where Q is the triangular array (t(i,j)) given by t(i,j)=1. (See Comments.)

The programs for A193654, there is no canonical definition to state claims against.
-/

/-! ## A193654.P6451967951020755601

`A233583(A291732(n))-A003151(n+1)`
-/

namespace A193654.P6451967951020755601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A291732 n).toNat - A003151 (n + 1)

end

end A193654.P6451967951020755601

/-! ## A193654.P1670320186199088660

`A233583(A291732(n))-A283964(n+1)`
-/

namespace A193654.P1670320186199088660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A291732 n).toNat - A283964 (n + 1)

end

end A193654.P1670320186199088660

/-!
# A193655: Q-residue of the triangle p(n,k)=floor(1/2+(n+1)/(n+k+2)/2), 0<=k<=n, where Q is the triangular array (t(i,j)) given by t(i,j)=1. (See Comments.)

The programs for A193655, there is no canonical definition to state claims against.
-/

/-! ## A193655.P15578156622835273743

`A341385(n+3)+A325169(A005428(2*n+1))`
-/

namespace A193655.P15578156622835273743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341385 (n + 3) + A325169 (A005428 (2 * n + 1)).toNat

end

end A193655.P15578156622835273743

/-!
# A193656: Q-residue of the triangle p(n,k)=(2^(n - k))*5^k, 0<=k<=n, where Q is the triangular array (t(i,j)) given by t(i,j)=1. (See Comments.)

The programs for A193656, the canonical program `A193656.P15686079912540738852` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193656 has offset 0).

The definition of A193656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193656.P10657111168194283323

`ogf((1-2x)/(1-9x+20x^2))`
-/

namespace A193656.P10657111168194283323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -9, 20] n

end

end A193656.P10657111168194283323

namespace A193656

/-- `ogf((1-2x)/(1-9x+20x^2))` -/
def P10657111168194283323.Spec : Prop :=
  ∀ n, P10657111168194283323.a n = A193656 n

end A193656

/-! ## A193656.P15686079912540738852

`3*5^n-2*4^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193656

/-- `3*5^n-2*4^n` -/
def P15686079912540738852.Spec : Prop :=
  ∀ n, P15686079912540738852.a n = A193656 n

theorem P15686079912540738852.correct : P15686079912540738852.Spec := by
  intro n
  simp only [A193656]

end A193656

/-! ## A193656.P4586212353068622120

`A097111(2*n)`
-/

namespace A193656.P4586212353068622120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097111 (2 * n)

end

end A193656.P4586212353068622120

namespace A193656

/-- `A097111(2*n)` -/
def P4586212353068622120.Spec : Prop :=
  ∀ n, P4586212353068622120.a n = A193656 n

end A193656

/-! ## A193656.P9640068180350005830

`record[A097111(n)/(-1)^n]`
-/

namespace A193656.P9640068180350005830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097111 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193656.P9640068180350005830

namespace A193656

/-- `record[A097111(n)/(-1)^n]` -/
def P9640068180350005830.Spec : Prop :=
  ∀ n, P9640068180350005830.a n = (A193656 n : ℚ)

end A193656

/-! ## A193656.P2596145954755713560

`(lcm(10, a(n-1))+4^n)/2` with `a(0)=1`
-/

namespace A193656.P2596145954755713560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 10 (SequenceMachineLib.roundAway (a (n - 1))) + 4 ^ n : ℚ) / 2

end

end A193656.P2596145954755713560

namespace A193656

/-- `(lcm(10, a(n-1))+4^n)/2` -/
def P2596145954755713560.Spec : Prop :=
  ∀ n, P2596145954755713560.a n = (A193656 n : ℚ)

end A193656

/-!
# A193657: First difference of A002627.

The programs for A193657, the canonical program `A193657.P433001986972353019` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193657 has offset 0).

The definition of A193657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193657.P433001986972353019

`A114870(n)+n!`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A193657

/-- `A114870(n)+n!` -/
def P433001986972353019.Spec : Prop :=
  ∀ n, P433001986972353019.a n = A193657 n

theorem P433001986972353019.correct : P433001986972353019.Spec := by
  intro n
  simp only [A193657]

end A193657

/-! ## A193657.P13352856382274736851

`n*A002627(n)+1`
-/

namespace A193657.P13352856382274736851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002627 n + 1

end

end A193657.P13352856382274736851

namespace A193657

/-- `n*A002627(n)+1` -/
def P13352856382274736851.Spec : Prop :=
  ∀ n, P13352856382274736851.a n = A193657 n

end A193657

/-! ## A193657.P15004662753817559732

`(n²*a(n-1)-1)/(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A193657.P15004662753817559732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n ^ 2 : ℚ) * a (n - 1) - 1) / ((n : ℤ) - 1 : ℚ)

end

end A193657.P15004662753817559732

namespace A193657

/-- `(n²*a(n-1)-1)/(n-1)` -/
def P15004662753817559732.Spec : Prop :=
  ∀ n, P15004662753817559732.a n = (A193657 n : ℚ)

end A193657

/-! ## A193657.P16987348015934352571

`Δ[n*a(n-1)+n]` with `a(0)=-1`
-/

namespace A193657.P16987348015934352571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  (n : ℤ) * f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193657.P16987348015934352571

namespace A193657

/-- `Δ[n*a(n-1)+n]` -/
def P16987348015934352571.Spec : Prop :=
  ∀ n, P16987348015934352571.a n = A193657 n

end A193657

/-! ## A193657.P10756450966557981343

`abs(Δ[n*(a(n-1)-1)])` with `a(0)=1`
-/

namespace A193657.P10756450966557981343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A193657.P10756450966557981343

namespace A193657

/-- `abs(Δ[n*(a(n-1)-1)])` -/
def P10756450966557981343.Spec : Prop :=
  ∀ n, P10756450966557981343.a n = A193657 n

end A193657

/-! ## A193657.P10505318307297451260

`-Δ[n*(a(n-1)-1)]` with `a(0)=1`
-/

namespace A193657.P10505318307297451260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A193657.P10505318307297451260

namespace A193657

/-- `-Δ[n*(a(n-1)-1)]` -/
def P10505318307297451260.Spec : Prop :=
  ∀ n, P10505318307297451260.a n = A193657 n

end A193657

/-! ## A193657.P18174827702553656384

`Δ[ϕ²-(ϕ-n*a(n-1))]` with `a(0)=0`
-/

namespace A193657.P18174827702553656384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f1 =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ) * f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193657.P18174827702553656384

namespace A193657

/-- `Δ[ϕ²-(ϕ-n*a(n-1))]` -/
def P18174827702553656384.Spec : Prop :=
  ∀ n, P18174827702553656384.a n = (A193657 n : ℝ)

end A193657

/-! ## A193657.P2665125006571663350

`1-Δ[n*(a(n-1)-(n-1))]` with `a(0)=1`
-/

namespace A193657.P2665125006571663350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A193657.P2665125006571663350

namespace A193657

/-- `1-Δ[n*(a(n-1)-(n-1))]` -/
def P2665125006571663350.Spec : Prop :=
  ∀ n, P2665125006571663350.a n = A193657 n

end A193657

/-! ## A193657.P6078647565363358030

`∏[n+2-(n-1)/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A193657.P6078647565363358030
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 2 : ℚ) - ((n : ℤ) - 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A193657.P6078647565363358030

namespace A193657

/-- `∏[n+2-(n-1)/a(n-1)]` -/
def P6078647565363358030.Spec : Prop :=
  ∀ n, P6078647565363358030.a n = (A193657 n : ℚ)

end A193657

/-! ## A193657.P4122239391011683826

`(n+2)*a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A193657.P4122239391011683826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 2 : ℤ) * a (n - 1) - ((n : ℤ) - 1) * a (n - 2)

end

end A193657.P4122239391011683826

namespace A193657

/-- `(n+2)*a(n-1)-(n-1)*a(n-2)` -/
def P4122239391011683826.Spec : Prop :=
  ∀ n, P4122239391011683826.a n = A193657 n

end A193657

/-!
# A193658: Q-residue of the triangle A051162, where Q is the triangular array (t(i,j)) given by t(i,j)=1. (See Comments.)

The programs for A193658, there is no canonical definition to state claims against.
-/

/-! ## A193658.P8386677800479002015

`or(∏[2-n²%3]-1, A008621(C(abs(1-3*n), n)-n))`
-/

namespace A193658.P8386677800479002015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ j ∈ Finset.range (n + 1), f1 j - 1) (A008621 (Nat.choose |1 - (3 * n : ℤ)|.toNat n - n))

end

end A193658.P8386677800479002015

/-! ## A193658.P11658299623943497562

`A008621(C(abs(1-3*n), n)-n+C(n+1, round(n/3))-1)`
-/

namespace A193658.P11658299623943497562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((Nat.choose |1 - (3 * n : ℤ)|.toNat n : ℤ) - (n : ℤ) + ((Nat.choose (n + 1) (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat : ℤ) - 1)).toNat

end

end A193658.P11658299623943497562

/-!
# A193659: Q-residue of the triangle A094727, where Q=Pascal's triangle. (See Comments.)

The programs for A193659, there is no canonical definition to state claims against.
-/

/-! ## A193659.P13659687118624560726

`A214394(A188912(n)+A002662(n))`
-/

namespace A193659.P13659687118624560726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (A188912 n + A002662 n).toNat

end

end A193659.P13659687118624560726

/-! ## A193659.P15366697249571646077

`A004526(A289272(n)+A256338(n+1))`
-/

namespace A193659.P15366697249571646077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A289272 n + A256338 (n + 1)).toNat

end

end A193659.P15366697249571646077

/-!
# A193660: Q-residue of the triangle A038207 of coefficients of (x+2)^n, where Q is the triangle given by t(i,j)=1 for 0<=i<=j. (See Comments.)

The programs for A193660, there is no canonical definition to state claims against.
-/

/-! ## A193660.P5104936156077709024

`∑[A126443(n)]`
-/

namespace A193660.P5104936156077709024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193660.P5104936156077709024

/-! ## A193660.P17110934308765700385

`∑[A376177(∑[n])]`
-/

namespace A193660.P17110934308765700385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376177 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193660.P17110934308765700385

/-! ## A193660.P1008165253753413265

`∑[A306245(∑[n+3])]`
-/

namespace A193660.P1008165253753413265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193660.P1008165253753413265

/-! ## A193660.P11943527955054953103

`∑[or(1, A306245(A141214(n)))]`
-/

namespace A193660.P11943527955054953103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A306245 (A141214 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193660.P11943527955054953103

/-! ## A193660.P3871083646543731563

`A126443(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A193660.P3871083646543731563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126443 n + a (A023443 n).toNat

end

end A193660.P3871083646543731563

/-!
# A193661: Q-residue of the triangle A193673, where Q is the triangular array (t(i,j)) given by t(i,j)=1. (See Comments.)

The programs for A193661, the canonical program `A193661.P8883780132786928478` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193661 has offset 0).

The definition of A193661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193661.P8883780132786928478

`ceil((3^n+7^n)/4)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193661

/-- `ceil((3^n+7^n)/4)` -/
def P8883780132786928478.Spec : Prop :=
  ∀ n, P8883780132786928478.a n = A193661 n

theorem P8883780132786928478.correct : P8883780132786928478.Spec := by
  intro n
  simp only [A193661]

end A193661

/-! ## A193661.P7746987746217276707

`round(A074509(n)/4)`
-/

namespace A193661.P7746987746217276707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A074509 n : ℚ) / 4)

end

end A193661.P7746987746217276707

namespace A193661

/-- `round(A074509(n)/4)` -/
def P7746987746217276707.Spec : Prop :=
  ∀ n, P7746987746217276707.a n = A193661 n

end A193661

/-! ## A193661.P6702652903063728866

`(A081336(n)+1)/2`
-/

namespace A193661.P6702652903063728866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081336 n + 1 : ℚ) / 2

end

end A193661.P6702652903063728866

namespace A193661

/-- `(A081336(n)+1)/2` -/
def P6702652903063728866.Spec : Prop :=
  ∀ n, P6702652903063728866.a n = (A193661 n : ℚ)

end A193661

/-! ## A193661.P16244985549988288815

`(A074608(n)+2)/4`
-/

namespace A193661.P16244985549988288815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074608 n + 2 : ℚ) / 4

end

end A193661.P16244985549988288815

namespace A193661

/-- `(A074608(n)+2)/4` -/
def P16244985549988288815.Spec : Prop :=
  ∀ n, P16244985549988288815.a n = (A193661 n : ℚ)

end A193661

/-! ## A193661.P1589107707804833936

`(A155605(n)+3)/4`
-/

namespace A193661.P1589107707804833936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155605 n + 3 : ℚ) / 4

end

end A193661.P1589107707804833936

namespace A193661

/-- `(A155605(n)+3)/4` -/
def P1589107707804833936.Spec : Prop :=
  ∀ n, P1589107707804833936.a n = (A193661 n : ℚ)

end A193661

/-! ## A193661.P4264261590835324238

`(A034494(n)+A007051(n))/2`
-/

namespace A193661.P4264261590835324238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034494 n + A007051 n : ℚ) / 2

end

end A193661.P4264261590835324238

namespace A193661

/-- `(A034494(n)+A007051(n))/2` -/
def P4264261590835324238.Spec : Prop :=
  ∀ n, P4264261590835324238.a n = (A193661 n : ℚ)

end A193661

/-!
# A193662: Q-residue of the Lucas triangle A114525, where Q is the triangle given by t(i,j)=1 for 0<=i<=j. (See Comments.)

The programs for A193662, there is no canonical definition to state claims against.
-/

/-! ## A193662.P13285893403633417329

`∑[ogf((-2+3x+3x^2-2x^3)/(-1+x+4x^2))]`
-/

namespace A193662.P13285893403633417329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -3, 2] [1, -1, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193662.P13285893403633417329

/-! ## A193662.P15823186732344432563

`ogf((2-3x-3x^2+2x^3)/(1-2x-3x^2+4x^3))`
-/

namespace A193662.P15823186732344432563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -3, 2] [1, -2, -3, 4] n

end

end A193662.P15823186732344432563

/-! ## A193662.P10799087612120736044

`4*a(n-2)+a(n-1)-2` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A193662.P10799087612120736044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  4 * a (n - 2) + (a (n - 1) - 2)

end

end A193662.P10799087612120736044

/-! ## A193662.P4029610018747497287

`4*a(n-2)-(2-a(n-1))` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A193662.P4029610018747497287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  4 * a (n - 2) - (2 - a (n - 1))

end

end A193662.P4029610018747497287

/-! ## A193662.P2214473923513693531

`lcm(4, a(n-2))+a(n-1)-2` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A193662.P2214473923513693531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  (Int.lcm 4 (a (n - 2)) : ℤ) + (a (n - 1) - 2)

end

end A193662.P2214473923513693531

/-!
# A193664: Q-residue of A049310 (triangle of coefficients of Fibonacci polynomials), where Q=Pascal's triangle. (See Comments.)

The programs for A193664, there is no canonical definition to state claims against.
-/

/-! ## A193664.P130095154966313119

`A185279(A073680(n+2))`
-/

namespace A193664.P130095154966313119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (A073680 (n + 2)).toNat

end

end A193664.P130095154966313119

/-! ## A193664.P3978886059521537025

`A167865(A061931(n+1)-n%∑[char[n!]]!)`
-/

namespace A193664.P3978886059521537025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A061931 (n + 1) - ((n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)).toNat

end

end A193664.P3978886059521537025

/-! ## A193664.P1230909550218335833

`A319899(A124423(n))+A010815(n+2)`
-/

namespace A193664.P1230909550218335833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (A124423 n).toNat + A010815 (n + 2)

end

end A193664.P1230909550218335833

/-!
# A193665: Q-residue of A075392, where Q=A075392. (See Comments.)

The programs for A193665, there is no canonical definition to state claims against.
-/

/-! ## A193665.P14162258402707394388

`(n+1)*∏[n+2-1/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A193665.P14162258402707394388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n + 2 : ℚ) - 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A193665.P14162258402707394388

/-! ## A193665.P15989191697732843919

`Δ[Δ[(n+1)*a(n-1)-a(n-2)]]` with `a(0)=0, a(1)=1`
-/

namespace A193665.P15989191697732843919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (n + 1 : ℤ) * f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193665.P15989191697732843919

/-! ## A193665.P876450331798243278

`Δ[A093935(n+1)]`
-/

namespace A193665.P876450331798243278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193665.P876450331798243278

/-! ## A193665.P2939674285677616388

`Δ[A056922(2*n)]`
-/

namespace A193665.P2939674285677616388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056922 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193665.P2939674285677616388

/-! ## A193665.P14201475208798214656

`(n+1)*A058799(n)`
-/

namespace A193665.P14201475208798214656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058799 n

end

end A193665.P14201475208798214656

/-!
# A193666: F(2) odd Fib. numbers, F(3) even Fib. numbers, F(4) odd Fib. numbers..., F(n) = A000045(n), a(n) < a(n+1).

The programs for A193666, there is no canonical definition to state claims against.
-/

/-! ## A193666.P15596765892951238535

`record[A087172(Δ[A158085(n+1)])]`
-/

namespace A193666.P15596765892951238535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158085 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193666.P15596765892951238535

/-! ## A193666.P17599059784400031753

`A087172(A302610(n)+A003600(n))`
-/

namespace A193666.P17599059784400031753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A302610 n + A003600 n).toNat

end

end A193666.P17599059784400031753

/-! ## A193666.P5804115984278804035

`A130312(A030980(n+1)+A028552(n))`
-/

namespace A193666.P5804115984278804035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (A030980 (n + 1) + A028552 n).toNat

end

end A193666.P5804115984278804035

/-! ## A193666.P10876664317615253385

`A000045(lt[A007461(n), A238745(n+1)])`
-/

namespace A193666.P10876664317615253385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193666.P10876664317615253385

/-! ## A193666.P9141900714680538759

`A130312(A361242(n)+A270929(2*n+1))`
-/

namespace A193666.P9141900714680538759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (A361242 n + A270929 (2 * n + 1)).toNat

end

end A193666.P9141900714680538759

/-!
# A193667: Triangular array: the fission of (p(n,x)) by (q(n,x)), where p(n,x)=(x+1)^n and q(n,x)=sum{F(k+1)*x^(n-k) : 0<=k<=n}, where F=A000045 (Fibonacci numbers).

The programs for A193667, there is no canonical definition to state claims against.
-/

/-! ## A193667.P15089969051763095537

`A125172(∑[char[∑[n]]]²-n)`
-/

namespace A193667.P15089969051763095537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125172 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A193667.P15089969051763095537

/-! ## A193667.P14333582581719661700

`and(-1, A125172(A038722(n+1)))`
-/

namespace A193667.P14333582581719661700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A125172 (A038722 (n + 1)).toNat)

end

end A193667.P14333582581719661700

/-! ## A193667.P107105533895924925

`A125171(A099375(n)+1+n)`
-/

namespace A193667.P107105533895924925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A099375 n + 1 + (n : ℤ)).toNat

end

end A193667.P107105533895924925

/-! ## A193667.P13459270523664819015

`A125171(A061579(comp[∑[n]])+1)`
-/

namespace A193667.P13459270523664819015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A193667.P13459270523664819015

/-! ## A193667.P10622059741611268753

`A125171(2*A004736(n+1)+n)`
-/

namespace A193667.P10622059741611268753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A193667.P10622059741611268753

/-! ## A193667.P18132927801465726432

`A125171(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A193667.P18132927801465726432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A193667.P18132927801465726432

/-! ## A193667.P2973342396854899695

`A193923(comp[∑[n-1]]-(n-comp[∑[n]]))`
-/

namespace A193667.P2973342396854899695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ))).toNat

end

end A193667.P2973342396854899695

/-! ## A193667.P3731247393239583231

`A294453(A051162(n)+A245300(n)+1)`
-/

namespace A193667.P3731247393239583231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A051162 n + (A245300 n + 1)).toNat

end

end A193667.P3731247393239583231

/-!
# A193668: a(n) = Sum_{i=0..n-1} (n+i)*a(n-1-i) for n>1, a(0)=1, a(1)=1.

The programs for A193668, the canonical program `A193668.P11749333789019496913` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193668 has offset 0).

The definition of A193668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193668.P11749333789019496913

`(n+2)*a(n-1)-(n-2)*a(n-2)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193668

/-- `(n+2)*a(n-1)-(n-2)*a(n-2)` -/
def P11749333789019496913.Spec : Prop :=
  ∀ n, P11749333789019496913.a n = A193668 n

theorem P11749333789019496913.correct : P11749333789019496913.Spec := by
  intro n
  simp only [A193668]

end A193668

/-! ## A193668.P15157717943329177142

`Δ[Δ[(n-1)*a(n-1)-(n-3)]]` with `a(0)=1, a(1)=1`
-/

namespace A193668.P15157717943329177142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  ((n : ℤ) - 1) * f2 (n - 1) - ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193668.P15157717943329177142

namespace A193668

/-- `Δ[Δ[(n-1)*a(n-1)-(n-3)]]` -/
def P15157717943329177142.Spec : Prop :=
  ∀ n, P15157717943329177142.a n = A193668 n

end A193668

/-! ## A193668.P691548227602653452

`Δ[Δ[A082459(A004275(n))]]`
-/

namespace A193668.P691548227602653452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082459 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193668.P691548227602653452

namespace A193668

/-- `Δ[Δ[A082459(A004275(n))]]` -/
def P691548227602653452.Spec : Prop :=
  ∀ n, P691548227602653452.a n = A193668 n

end A193668

/-! ## A193668.P15949525502413629425

`Δ[Δ[A002627(A004273(n)-n)]]`
-/

namespace A193668.P15949525502413629425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193668.P15949525502413629425

namespace A193668

/-- `Δ[Δ[A002627(A004273(n)-n)]]` -/
def P15949525502413629425.Spec : Prop :=
  ∀ n, P15949525502413629425.a n = A193668 n

end A193668

/-! ## A193668.P13443599254239341826

`Δ[Δ[A002627(n-A057427(n))]]`
-/

namespace A193668.P13443599254239341826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 ((n : ℤ) - A057427 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193668.P13443599254239341826

namespace A193668

/-- `Δ[Δ[A002627(n-A057427(n))]]` -/
def P13443599254239341826.Spec : Prop :=
  ∀ n, P13443599254239341826.a n = A193668 n

end A193668

/-! ## A193668.P11015716560529827299

`A000007(n)+Δ[A176305(A000124(n))]`
-/

namespace A193668.P11015716560529827299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176305 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A193668.P11015716560529827299

namespace A193668

/-- `A000007(n)+Δ[A176305(A000124(n))]` -/
def P11015716560529827299.Spec : Prop :=
  ∀ n, P11015716560529827299.a n = A193668 n

end A193668

/-!
# A193669: Expansion of o.g.f.(1-x^4)/(1-x+x^8).

The programs for A193669, the canonical program `A193669.P16098660862533893358` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193669 has offset 0).

The definition of A193669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^4)/(1-x+x^8))` (program `A193669.P16098660862533893358`, by `A193669.P16098660862533893358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193669.P16098660862533893358

`ogf((1-x^4)/(1-x+x^8))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193669

/-- `ogf((1-x^4)/(1-x+x^8))` -/
def P16098660862533893358.Spec : Prop :=
  ∀ n, P16098660862533893358.a n = A193669 n

theorem P16098660862533893358.correct : P16098660862533893358.Spec := by
  intro n
  simp only [A193669]

end A193669

/-! ## A193669.P2514432284724154586

`a(n-1)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=0, a(5)=0, a(6)=0, a(7)=0`
-/

namespace A193669.P2514432284724154586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 0, 0, 0, 0] fun n a =>
  a (n - 1) - a (n - 8)

end

end A193669.P2514432284724154586

namespace A193669

/-- `a(n-1)-a(n-8)` -/
def P2514432284724154586.Spec : Prop :=
  ∀ n, P2514432284724154586.a n = A193669 n

end A193669

/-!
# A193671: Numbers such that the last of the differences of divisors is > 0.

The programs for A193671, there is no canonical definition to state claims against.
-/

/-! ## A193671.P12741430783016015445

`lt[A028310(n), A187202(A028310(n))+n]`
-/

namespace A193671.P12741430783016015445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193671.P12741430783016015445

/-! ## A193671.P4394531309782776492

`lt[A010051(A181569(n+1)), A187202(n+1)]+1`
-/

namespace A193671.P4394531309782776492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A181569 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193671.P4394531309782776492

/-! ## A193671.P9381754246474711442

`eq[char[A272374(n+1)], A000007(n)]`
-/

namespace A193671.P9381754246474711442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272374 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193671.P9381754246474711442

/-! ## A193671.P2189782971087666734

`eq[char[A272374(n+1)], A000038(n)]`
-/

namespace A193671.P2189782971087666734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272374 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193671.P2189782971087666734

/-! ## A193671.P13412492246421359135

`eq[1, A057427(n)+char[A272374(n+1)]]`
-/

namespace A193671.P13412492246421359135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272374 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193671.P13412492246421359135

/-! ## A193671.P6679577730991869777

`eq[A028310(n)-n, char[A272374(n+1)]]`
-/

namespace A193671.P6679577730991869777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272374 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A193671.P6679577730991869777

/-! ## A193671.P15508614438241933774

`lt[A000007(n), A187202(A000007(n)+n)]`
-/

namespace A193671.P15508614438241933774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193671.P15508614438241933774

/-! ## A193671.P10545288098193933161

`eq[char[A272374(n+1)], A178225(2*n)]`
-/

namespace A193671.P10545288098193933161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272374 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193671.P10545288098193933161

/-! ## A193671.P12489472204742869948

`eq[char[A272374(n+1)], A055672(2*(n+1))]`
-/

namespace A193671.P12489472204742869948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272374 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A193671.P12489472204742869948

/-!
# A193672: Numbers such that the last of the differences of divisors is < 0.

The programs for A193672, there is no canonical definition to state claims against.
-/

/-! ## A193672.P1983429680845158504

`lt[4, 4-A187202(abs(1-n)+1)]`
-/

namespace A193672.P1983429680845158504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A187202 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A193672.P1983429680845158504

/-! ## A193672.P6498703486815561691

`lt[A187202(A028310(n)), 0]`
-/

namespace A193672.P6498703486815561691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A193672.P6498703486815561691

/-! ## A193672.P9477940169297902908

`A020725(lt[A187202(n+1), 0])`
-/

namespace A193672.P9477940169297902908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A193672.P9477940169297902908

/-! ## A193672.P5991410703191145290

`A181569(lt[A187202(n+1)+1, 1])`
-/

namespace A193672.P5991410703191145290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A193672.P5991410703191145290

/-! ## A193672.P17057343674715765189

`lt[A187202(n+1), A000007(n)]+1`
-/

namespace A193672.P17057343674715765189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193672.P17057343674715765189

/-! ## A193672.P11290231156206610374

`lt[A187202(n+1), A010054(n)]+1`
-/

namespace A193672.P11290231156206610374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193672.P11290231156206610374

/-! ## A193672.P15643102364128536620

`A020725(lt[n+1, A273133(n+1)])`
-/

namespace A193672.P15643102364128536620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193672.P15643102364128536620

/-! ## A193672.P9237070785101524819

`lt[A187202(n+1), A121373(n)]+1`
-/

namespace A193672.P9237070785101524819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193672.P9237070785101524819

/-! ## A193672.P16292582227497137628

`A181569(lt[n+1, A273133(n+1)])`
-/

namespace A193672.P16292582227497137628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A193672.P16292582227497137628

/-! ## A193672.P902860966858951376

`lt[A187202(n+1), A010051(n+1)]+1`
-/

namespace A193672.P902860966858951376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193672.P902860966858951376

/-! ## A193672.P12163271993848890487

`A181569(lt[A187202(n+1), A000007(n)])`
-/

namespace A193672.P12163271993848890487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193672.P12163271993848890487

/-! ## A193672.P9359911874895567285

`A181569(lt[A187202(n+1), A010054(n)])`
-/

namespace A193672.P9359911874895567285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193672.P9359911874895567285

/-! ## A193672.P12142006713335892409

`A181569(lt[A187202(n+1), A121373(n)])`
-/

namespace A193672.P12142006713335892409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193672.P12142006713335892409

/-! ## A193672.P215245557173548504

`lt[A187202(A000007(n)+n), A000007(n)]`
-/

namespace A193672.P215245557173548504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187202 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193672.P215245557173548504

/-!
# A193673: Triangle given by p(n,k)=(coefficient of x^(n-k) in (1/2) ((x+3)^n+(x+1)^n)), 0<=k<=n.

The programs for A193673, the canonical program `A193673.P9160332339185275687` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193673 has offset 0).

The definition of A193673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193673.P9160332339185275687

`C(row(n), col(n))*(1+3^(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193673

/-- `C(row(n), col(n))*(1+3^(row(n)-col(n)))/2` -/
def P9160332339185275687.Spec : Prop :=
  ∀ n, P9160332339185275687.a n = (A193673 n : ℚ)

end A193673

/-! ## A193673.P3528630039449973945

`(A027465(n)+A007318(n))/2`
-/

namespace A193673.P3528630039449973945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n + A007318 n : ℚ) / 2

end

end A193673.P3528630039449973945

namespace A193673

/-- `(A027465(n)+A007318(n))/2` -/
def P3528630039449973945.Spec : Prop :=
  ∀ n, P3528630039449973945.a n = (A193673 n : ℚ)

end A193673

/-! ## A193673.P9491466020906011608

`A007318(n)*A007051(A025581(n))`
-/

namespace A193673.P9491466020906011608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007051 (A025581 n).toNat

end

end A193673.P9491466020906011608

namespace A193673

/-- `A007318(n)*A007051(A025581(n))` -/
def P9491466020906011608.Spec : Prop :=
  ∀ n, P9491466020906011608.a n = A193673 n

end A193673

/-! ## A193673.P10344844591763999732

`abs(A007051(A025581(n))*A130595(n))`
-/

namespace A193673.P10344844591763999732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007051 (A025581 n).toNat * A130595 n|

end

end A193673.P10344844591763999732

namespace A193673

/-- `abs(A007051(A025581(n))*A130595(n))` -/
def P10344844591763999732.Spec : Prop :=
  ∀ n, P10344844591763999732.a n = A193673 n

end A193673

/-! ## A193673.P18121930159493144863

`Δ[A102363(n)]*A007051(A025581(n))`
-/

namespace A193673.P18121930159493144863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007051 (A025581 n).toNat

end

end A193673.P18121930159493144863

namespace A193673

/-- `Δ[A102363(n)]*A007051(A025581(n))` -/
def P18121930159493144863.Spec : Prop :=
  ∀ n, P18121930159493144863.a n = A193673 n

end A193673

/-! ## A193673.P462504554473932471

`A007318(n)*A124302(A004736(n+1))`
-/

namespace A193673.P462504554473932471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A124302 (A004736 (n + 1)).toNat

end

end A193673.P462504554473932471

namespace A193673

/-- `A007318(n)*A124302(A004736(n+1))` -/
def P462504554473932471.Spec : Prop :=
  ∀ n, P462504554473932471.a n = A193673 n

end A193673

/-! ## A193673.P5375654528824578336

`A007318(n)*A003278(A130321(n))`
-/

namespace A193673.P5375654528824578336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A003278 (A130321 n).toNat

end

end A193673.P5375654528824578336

namespace A193673

/-- `A007318(n)*A003278(A130321(n))` -/
def P5375654528824578336.Spec : Prop :=
  ∀ n, P5375654528824578336.a n = A193673 n

end A193673

/-! ## A193673.P17910815781762663957

`Δ[A102363(n)]*A003278(A130321(n))`
-/

namespace A193673.P17910815781762663957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003278 (A130321 n).toNat

end

end A193673.P17910815781762663957

namespace A193673

/-- `Δ[A102363(n)]*A003278(A130321(n))` -/
def P17910815781762663957.Spec : Prop :=
  ∀ n, P17910815781762663957.a n = A193673 n

end A193673

/-! ## A193673.P5642849962533447568

`A007318(n)*A236313(A054582(n))`
-/

namespace A193673.P5642849962533447568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A236313 (A054582 n).toNat

end

end A193673.P5642849962533447568

namespace A193673

/-- `A007318(n)*A236313(A054582(n))` -/
def P5642849962533447568.Spec : Prop :=
  ∀ n, P5642849962533447568.a n = A193673 n

end A193673

/-! ## A193673.P6550440952107023360

`A014682(A027465(n)+A007318(n))`
-/

namespace A193673.P6550440952107023360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A027465 n + A007318 n).toNat

end

end A193673.P6550440952107023360

namespace A193673

/-- `A014682(A027465(n)+A007318(n))` -/
def P6550440952107023360.Spec : Prop :=
  ∀ n, P6550440952107023360.a n = A193673 n

end A193673

/-!
# A193674: Number of nonisomorphic systems enumerated by A102896; that is, the number of inequivalent closure operators (or Moore families).

The programs for A193674, there is no canonical definition to state claims against.
-/

/-! ## A193674.P17930733122580098974

`A193675(n)/2`
-/

namespace A193674.P17930733122580098974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193675 n : ℚ) / 2

end

end A193674.P17930733122580098974

/-! ## A193674.P3260381361041297941

`∑[A108798(n)]`
-/

namespace A193674.P3260381361041297941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193674.P3260381361041297941

/-! ## A193674.P3762757542093015501

`∑[A326907(n)/2]`
-/

namespace A193674.P3762757542093015501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326907 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193674.P3762757542093015501

/-! ## A193674.P10366223977109336625

`A326904(n+1)/2`
-/

namespace A193674.P10366223977109336625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326904 (n + 1) : ℚ) / 2

end

end A193674.P10366223977109336625

/-!
# A193675: Number of nonisomorphic systems enumerated by A102897; that is, the number of inequivalent Horn functions, under permutation of variables.

The programs for A193675, there is no canonical definition to state claims against.
-/

/-! ## A193675.P17472319326551337861

`2*A193674(n)`
-/

namespace A193675.P17472319326551337861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193674 n

end

end A193675.P17472319326551337861

/-! ## A193675.P4469638514695557799

`∑[A326907(n)]`
-/

namespace A193675.P4469638514695557799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193675.P4469638514695557799

/-! ## A193675.P13266996583704862922

`A326904(n+1)`
-/

namespace A193675.P13266996583704862922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326904 (n + 1)

end

end A193675.P13266996583704862922

/-! ## A193675.P2633045604246837422

`∑[A108800(n)]+1`
-/

namespace A193675.P2633045604246837422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A193675.P2633045604246837422

/-!
# A193676: Number of nonnegative zeros of minimal polynomials of 2*cos(Pi/n), n>=1.

The programs for A193676, there is no canonical definition to state claims against.
-/

/-! ## A193676.P7260870107210806103

`A055034(n+1)-A193677(n+1)`
-/

namespace A193676.P7260870107210806103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) - A193677 (n + 1)

end

end A193676.P7260870107210806103

/-! ## A193676.P10653421115539297374

`A023022(2*(n+1))-A193677(n+1)`
-/

namespace A193676.P10653421115539297374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (2 * (n + 1)) - A193677 (n + 1)

end

end A193676.P10653421115539297374

/-! ## A193676.P3540617954590431986

`A066840(n+1)-2*A282601(n+1)`
-/

namespace A193676.P3540617954590431986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066840 (n + 1) - 2 * A282601 (n + 1)

end

end A193676.P3540617954590431986

/-! ## A193676.P3897263994984272414

`A049808(2*(n+1))-A049808(2*n+1)`
-/

namespace A193676.P3897263994984272414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049808 (2 * (n + 1)) - A049808 (2 * n + 1)

end

end A193676.P3897263994984272414

/-! ## A193676.P8030463615711635686

`ceil(A000010(2*(n+1))/2)-A193677(n+1)`
-/

namespace A193676.P8030463615711635686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (2 * (n + 1)) : ℚ) / 2⌉ - A193677 (n + 1)

end

end A193676.P8030463615711635686

/-! ## A193676.P14206676719571745527

`round(A000010(8*(n+1))/8)-A193677(n+1)`
-/

namespace A193676.P14206676719571745527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (8 * (n + 1)) : ℚ) / 8) - A193677 (n + 1)

end

end A193676.P14206676719571745527

/-! ## A193676.P8957772397842168313

`lcm(2, A000010(2*n+2))/2-A193677(n+1)`
-/

namespace A193676.P8957772397842168313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000010 (2 * n + 2)) : ℚ) / 2 - (A193677 (n + 1) : ℚ)

end

end A193676.P8957772397842168313

/-! ## A193676.P8905094026748169413

`∑{d}[n+1, A087003(#)*A110655((n+1)/#-1)]`
-/

namespace A193676.P8905094026748169413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A110655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A193676.P8905094026748169413

/-! ## A193676.P6062377362850259857

`floor((A000010(4*(n+1))+2)/4)-A193677(n+1)`
-/

namespace A193676.P6062377362850259857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (4 * (n + 1)) + 2 : ℚ) / 4⌋ - A193677 (n + 1)

end

end A193676.P6062377362850259857

/-! ## A193676.P1955697276537257442

`A000010(abs(1-n)+n+3)/2-A193677(n+1)`
-/

namespace A193676.P1955697276537257442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (|1 - (n : ℤ)| + (n + 3 : ℤ)).toNat : ℚ) / 2 - (A193677 (n + 1) : ℚ)

end

end A193676.P1955697276537257442

/-!
# A193677: Number of negative zeros of minimal polynomials of 2*cos(Pi/n), n>=1.

The programs for A193677, there is no canonical definition to state claims against.
-/

/-! ## A193677.P10740383628105479771

`A070091(comp[2*(n+1)]+3)`
-/

namespace A193677.P10740383628105479771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A193677.P10740383628105479771

/-! ## A193677.P2902295385352658330

`A070091(2*(n+1))+floor(1/(n+1))`
-/

namespace A193677.P2902295385352658330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (2 * (n + 1)) + ⌊1 / (n + 1 : ℚ)⌋

end

end A193677.P2902295385352658330

/-! ## A193677.P10556223186016747291

`A055034(n+1)-A193676(n+1)`
-/

namespace A193677.P10556223186016747291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) - A193676 (n + 1)

end

end A193677.P10556223186016747291

/-! ## A193677.P7184821736798899296

`A023022(2*(n+1))-A193676(n+1)`
-/

namespace A193677.P7184821736798899296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (2 * (n + 1)) - A193676 (n + 1)

end

end A193677.P7184821736798899296

/-! ## A193677.P13974990053258773068

`Δ[ceil(A049690(n)/2)]-A193676(n+1)`
-/

namespace A193677.P13974990053258773068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049690 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A193676 (n + 1)

end

end A193677.P13974990053258773068

/-! ## A193677.P14147433806155841397

`ceil(A062570(n+1)/2)-A193676(n+1)`
-/

namespace A193677.P14147433806155841397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062570 (n + 1) : ℚ) / 2⌉ - A193676 (n + 1)

end

end A193677.P14147433806155841397

/-! ## A193677.P9617168454220097527

`ceil(A000010(2*(n+1))/2)-A193676(n+1)`
-/

namespace A193677.P9617168454220097527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (2 * (n + 1)) : ℚ) / 2⌉ - A193676 (n + 1)

end

end A193677.P9617168454220097527

/-! ## A193677.P996804733274239609

`round(A000010(8*(n+1))/8)-A193676(n+1)`
-/

namespace A193677.P996804733274239609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (8 * (n + 1)) : ℚ) / 8) - A193676 (n + 1)

end

end A193677.P996804733274239609

/-! ## A193677.P1339006952979301575

`lcm(2, A000010(2*n+2))/2-A193676(n+1)`
-/

namespace A193677.P1339006952979301575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000010 (2 * n + 2)) : ℚ) / 2 - (A193676 (n + 1) : ℚ)

end

end A193677.P1339006952979301575

/-! ## A193677.P3732866797500559192

`∑{d}[n+1, A008624(#-1)*A087003((n+1)/#)]`
-/

namespace A193677.P3732866797500559192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008624 (d - 1) * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A193677.P3732866797500559192

/-!
# A193678: Discriminant of Chebyshev C-polynomials.

The programs for A193678, the canonical program `A193678.P5381000580090406886` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193678 has offset 1).

The definition of A193678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193678.P5381000580090406886

`2^n*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193678

/-- `2^n*(n+1)^(n+1)` -/
def P5381000580090406886.Spec : Prop :=
  ∀ n, (P5381000580090406886.a n : ℤ) = A193678 (n + 1)

theorem P5381000580090406886.correct : P5381000580090406886.Spec := by
  intro n
  simp only [A193678, Nat.add_sub_cancel]

end A193678

/-! ## A193678.P7685587855707452243

`record[xor(1, n)+1]^(n+1)/2`
-/

namespace A193678.P7685587855707452243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1) : ℚ) / 2

end

end A193678.P7685587855707452243

namespace A193678

/-- `record[xor(1, n)+1]^(n+1)/2` -/
def P7685587855707452243.Spec : Prop :=
  ∀ n, P7685587855707452243.a n = (A193678 (n + 1) : ℚ)

end A193678

/-! ## A193678.P10632715550780845341

`Δ[lcm(n, n+1)]^(n+1)/2`
-/

namespace A193678.P10632715550780845341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ (n + 1) : ℚ) / 2

end

end A193678.P10632715550780845341

namespace A193678

/-- `Δ[lcm(n, n+1)]^(n+1)/2` -/
def P10632715550780845341.Spec : Prop :=
  ∀ n, P10632715550780845341.a n = (A193678 (n + 1) : ℚ)

end A193678

/-! ## A193678.P5119418262466789968

`record[(-sqrt(n+2))^(n+2)/2]`
-/

namespace A193678.P5119418262466789968
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (n + 2 : ℝ)) ^ (n + 2) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193678.P5119418262466789968

namespace A193678

/-- `record[(-sqrt(n+2))^(n+2)/2]` -/
def P5119418262466789968.Spec : Prop :=
  ∀ n, P5119418262466789968.a n = (A193678 (n + 1) : ℝ)

end A193678

/-! ## A193678.P5266410543477608108

`record[and(n+2, n+3)]^(n+1)/2`
-/

namespace A193678.P5266410543477608108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1) : ℚ) / 2

end

end A193678.P5266410543477608108

namespace A193678

/-- `record[and(n+2, n+3)]^(n+1)/2` -/
def P5266410543477608108.Spec : Prop :=
  ∀ n, P5266410543477608108.a n = (A193678 (n + 1) : ℚ)

end A193678

/-! ## A193678.P1223941755163267566

`A244122(∑[n+2])`
-/

namespace A193678.P1223941755163267566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193678.P1223941755163267566

namespace A193678

/-- `A244122(∑[n+2])` -/
def P1223941755163267566.Spec : Prop :=
  ∀ n, P1223941755163267566.a n = A193678 (n + 1)

end A193678

/-! ## A193678.P2924272814213003297

`A397287(∑[n+2])`
-/

namespace A193678.P2924272814213003297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397287 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193678.P2924272814213003297

namespace A193678

/-- `A397287(∑[n+2])` -/
def P2924272814213003297.Spec : Prop :=
  ∀ n, P2924272814213003297.a n = A193678 (n + 1)

end A193678

/-! ## A193678.P9941448786601739195

`A275574(2*(n+1))`
-/

namespace A193678.P9941448786601739195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275574 (2 * (n + 1))

end

end A193678.P9941448786601739195

namespace A193678

/-- `A275574(2*(n+1))` -/
def P9941448786601739195.Spec : Prop :=
  ∀ n, P9941448786601739195.a n = A193678 (n + 1)

end A193678

/-! ## A193678.P11342072983258579742

`A062971(n+1)/2`
-/

namespace A193678.P11342072983258579742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062971 (n + 1) : ℚ) / 2

end

end A193678.P11342072983258579742

namespace A193678

/-- `A062971(n+1)/2` -/
def P11342072983258579742.Spec : Prop :=
  ∀ n, P11342072983258579742.a n = (A193678 (n + 1) : ℚ)

end A193678

/-! ## A193678.P2918848625279445954

`A147662(2*(n+1))/2`
-/

namespace A193678.P2918848625279445954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147662 (2 * (n + 1)) : ℚ) / 2

end

end A193678.P2918848625279445954

namespace A193678

/-- `A147662(2*(n+1))/2` -/
def P2918848625279445954.Spec : Prop :=
  ∀ n, P2918848625279445954.a n = (A193678 (n + 1) : ℚ)

end A193678

/-!
# A193679: Sequence related to discriminant of cyclotomic polynomials A004124.

The programs for A193679, there is no canonical definition to state claims against.
-/

/-! ## A193679.P7124335531330527189

`A250269(n+1)/A001783(n+1)`
-/

namespace A193679.P7124335531330527189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ)

end

end A193679.P7124335531330527189

/-! ## A193679.P11262031192139233768

`A250269(n+1)/(A038610(n+1)*A128247(n+1))`
-/

namespace A193679.P11262031192139233768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A038610 (n + 1) * A128247 (n + 1) : ℚ)

end

end A193679.P11262031192139233768

/-! ## A193679.P2856088998228062339

`gcd(A062981(n+1), A250269(n+1))`
-/

namespace A193679.P2856088998228062339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062981 (n + 1)) (A250269 (n + 1))

end

end A193679.P2856088998228062339

/-! ## A193679.P16925961387377020815

`abs(A062981(n+1)/A004124(n+1))`
-/

namespace A193679.P16925961387377020815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A062981 (n + 1) : ℚ) / (A004124 (n + 1) : ℚ)|

end

end A193679.P16925961387377020815

/-! ## A193679.P4674686024466733017

`gcd(n*A250269(n+1), A344407(n+1))`
-/

namespace A193679.P4674686024466733017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A250269 (n + 1)) (A344407 (n + 1))

end

end A193679.P4674686024466733017

/-!
# A193680: Period 6 sequence 0,1,2,0,2,1.

The programs for A193680, the canonical program `A193680.P5764101733725390402` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193680 has offset 0).

The definition of A193680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193680.P5764101733725390402

`floor(71/364*3^(n+1))%3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193680

/-- `floor(71/364*3^(n+1))%3` -/
def P5764101733725390402.Spec : Prop :=
  ∀ n, P5764101733725390402.a n = A193680 n

theorem P5764101733725390402.correct : P5764101733725390402.Spec := by
  intro n
  simp only [A193680]

end A193680

/-!
# A193681: Discriminant of minimal polynomial of 2*cos(Pi/n) (see A187360).

The programs for A193681, there is no canonical definition to state claims against.
-/

/-! ## A193681.P11645561489436106802

`(n+1)^A055034(n+1)/A215041(n+1)`
-/

namespace A193681.P11645561489436106802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A055034 (n + 1) : ℤ) / (A215041 (n + 1) : ℚ)

end

end A193681.P11645561489436106802

/-! ## A193681.P10331913380766480380

`A052126((n+1)^A132427(n))`
-/

namespace A193681.P10331913380766480380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A132427 n : ℤ))).toNat

end

end A193681.P10331913380766480380

/-! ## A193681.P2114189798154879959

`A009195((n+1)^A266686(n+1))`
-/

namespace A193681.P2114189798154879959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A266686 (n + 1) : ℤ))).toNat

end

end A193681.P2114189798154879959

/-! ## A193681.P12853621624697901586

`A052126(round(atan(n+3)+n)^A099388(n+1))`
-/

namespace A193681.P12853621624697901586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.arctan (n + 3 : ℝ) + (n : ℝ)) : ℚ) ^ (A099388 (n + 1) : ℤ))).toNat

end

end A193681.P12853621624697901586

/-!
# A193682: Period 8: repeat [0, 1, 2, 3, 0, 3, 2, 1].

The programs for A193682, the canonical program `A193682.P17402650243140921409` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193682 has offset 0).

The definition of A193682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193682.P17402650243140921409

`sqrt(n²%16)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193682

/-- `sqrt(n²%16)` -/
def P17402650243140921409.Spec : Prop :=
  ∀ n, P17402650243140921409.a n = (A193682 n : ℝ)

end A193682

/-!
# A193683: Alternating row sums of Sheffer triangle A143495 (3-restricted Stirling2 numbers).

The programs for A193683, there is no canonical definition to state claims against.
-/

/-! ## A193683.P636050018558442056

`Δ[Δ[A293037(n)]-A293037(n)]`
-/

namespace A193683.P636050018558442056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293037 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A293037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193683.P636050018558442056

/-! ## A193683.P2017288935246978399

`Δ[A000587(n+1)-Δ[A000587(n+1)]]`
-/

namespace A193683.P2017288935246978399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193683.P2017288935246978399

/-!
# A193684: Alternating row sums of Sheffer triangle A143496 (4-restricted Stirling2 numbers).

The programs for A193684, there is no canonical definition to state claims against.
-/

/-! ## A193684.P15022214416953076368

`A193683(n)+A193683(n)-Δ[A193683(n)]`
-/

namespace A193684.P15022214416953076368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193683 n + (A193683 n - (f1 (n + 1) - f1 n))

end

end A193684.P15022214416953076368

/-!
# A193685: 5-Stirling numbers of the second kind.

The programs for A193685, the canonical program `A193685.P12216180501653416044` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193685 has offset 0).

The definition of A193685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193685.P12216180501653416044

`(5+col(n))*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193685

/-- `(5+col(n))*T(n-1,k)+T(n-1,k-1)` -/
def P12216180501653416044.Spec : Prop :=
  ∀ n, (P12216180501653416044.a n : ℤ) = A193685 n

theorem P12216180501653416044.correct : P12216180501653416044.Spec := by
  intro n
  simp only [A193685]

end A193685

/-! ## A193685.P14117635337172162156

`A391635(n)/A233543(n)`
-/

namespace A193685.P14117635337172162156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391635 n : ℚ) / (A233543 n : ℚ)

end

end A193685.P14117635337172162156

namespace A193685

/-- `A391635(n)/A233543(n)` -/
def P14117635337172162156.Spec : Prop :=
  ∀ n, P14117635337172162156.a n = (A193685 n : ℚ)

end A193685

/-! ## A193685.P12908047910826375601

`or(A028382(n)!, A038243(n))`
-/

namespace A193685.P12908047910826375601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A028382 n).toNat : ℤ) (A038243 n)

end

end A193685.P12908047910826375601

namespace A193685

/-- `or(A028382(n)!, A038243(n))` -/
def P12908047910826375601.Spec : Prop :=
  ∀ n, P12908047910826375601.a n = A193685 n

end A193685

/-!
# A193686: Lucas numbers (mod 100).

The programs for A193686, the canonical program `A193686.P11363688979519311358` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193686 has offset 1).

The definition of A193686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193686.P11363688979519311358

`A000032(n+1)%100`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A193686

/-- `A000032(n+1)%100` -/
def P11363688979519311358.Spec : Prop :=
  ∀ n, P11363688979519311358.a n = A193686 (n + 1)

theorem P11363688979519311358.correct : P11363688979519311358.Spec := by
  intro n
  simp only [A193686, Nat.add_sub_cancel]

end A193686

/-!
# A193688: Number of steps to reach 1 in Collatz (3x+1) problem starting with 2^n - 1.

The programs for A193688, there is no canonical definition to state claims against.
-/

/-! ## A193688.P16534381740223853795

`A006577(A000225(n+1))`
-/

namespace A193688.P16534381740223853795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A000225 (n + 1)).toNat

end

end A193688.P16534381740223853795

/-! ## A193688.P12052153217226815279

`A075485(n+1)-1`
-/

namespace A193688.P12052153217226815279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075485 (n + 1) - 1

end

end A193688.P12052153217226815279

/-! ## A193688.P13624563166271772369

`A242135(gcd(n, n+1))+A075485(n+1)`
-/

namespace A193688.P13624563166271772369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 (Nat.gcd n (n + 1)) + A075485 (n + 1)

end

end A193688.P13624563166271772369

/-! ## A193688.P7861373595975725903

`xor(-A075485(n+1), A008683(A051698(n)))`
-/

namespace A193688.P7861373595975725903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A075485 (n + 1)) (A008683 (A051698 n).toNat)

end

end A193688.P7861373595975725903

/-! ## A193688.P795115829189874440

`A295732(A019426(2*n))+A075485(n+1)`
-/

namespace A193688.P795115829189874440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (A019426 (2 * n)).toNat + A075485 (n + 1)

end

end A193688.P795115829189874440

/-! ## A193688.P11101010271375437926

`xor(-A075485(n+1), A057428(A193832(n+1)))`
-/

namespace A193688.P11101010271375437926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A075485 (n + 1)) (A057428 (A193832 (n + 1)).toNat)

end

end A193688.P11101010271375437926

/-! ## A193688.P15899188568127407538

`A075488(n+1)+A062545(n)-2`
-/

namespace A193688.P15899188568127407538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075488 (n + 1) + (A062545 n - 2)

end

end A193688.P15899188568127407538

/-! ## A193688.P6701953904695212262

`A316441(A000040(n+1))+A075485(n+1)`
-/

namespace A193688.P6701953904695212262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A075485 (n + 1)

end

end A193688.P6701953904695212262

/-! ## A193688.P11124674203907939025

`A213214(n+1)+A062545(n)-1`
-/

namespace A193688.P11124674203907939025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213214 (n + 1) + (A062545 n - 1)

end

end A193688.P11124674203907939025

/-! ## A193688.P14982064845098059711

`A213214(n+1)+A004442(A103517(n))-1`
-/

namespace A193688.P14982064845098059711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213214 (n + 1) + (A004442 (A103517 n).toNat - 1)

end

end A193688.P14982064845098059711

/-! ## A193688.P5394972460213082269

`A082551(p?[A195126(n)])+A075485(n+1)`
-/

namespace A193688.P5394972460213082269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A075485 (n + 1)

end

end A193688.P5394972460213082269

/-! ## A193688.P3124639604285309056

`A023443(A075485(n+1))`
-/

namespace A193688.P3124639604285309056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075485 (n + 1)).toNat

end

end A193688.P3124639604285309056

/-! ## A193688.P2234612203661242803

`A023445(A075485(n+1)+2)`
-/

namespace A193688.P2234612203661242803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A075485 (n + 1) + 2).toNat

end

end A193688.P2234612203661242803

/-! ## A193688.P1591972011776626274

`A082551(p?[A075485(n+1)])+A075485(n+1)`
-/

namespace A193688.P1591972011776626274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A075485 (n + 1)

end

end A193688.P1591972011776626274

/-! ## A193688.P6492559955675500377

`A323202(17*(2*n+1))+A075485(n+1)`
-/

namespace A193688.P6492559955675500377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (17 * (2 * n + 1)) + A075485 (n + 1)

end

end A193688.P6492559955675500377

/-!
# A193690: Expansion of (1 - x^2)^2 * (1 - x^4) / ((1 - x)^2 * (1 - x^6)) in powers of x.

The programs for A193690, the canonical program `A193690.P16388158774042371598` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193690 has offset 0).

The definition of A193690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2+2x^6-x^8)/(1-2x+x^2-x^6+2x^7-x^8))` (program `A193690.P16388158774042371598`, by `A193690.P16388158774042371598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193690.P16388158774042371598

`ogf((1-2x^2+2x^6-x^8)/(1-2x+x^2-x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193690

/-- `ogf((1-2x^2+2x^6-x^8)/(1-2x+x^2-x^6+2x^7-x^8))` -/
def P16388158774042371598.Spec : Prop :=
  ∀ n, P16388158774042371598.a n = A193690 n

theorem P16388158774042371598.correct : P16388158774042371598.Spec := by
  intro n
  simp only [A193690]

end A193690

/-!
# A193691: Triangle T(n,k), n>=0, 1<=k<=C(n), read by rows: T(n,k) = number of elements <= k-th path in the poset of Dyck paths of semilength n ordered by inclusion.

The programs for A193691, there is no canonical definition to state claims against.
-/

/-! ## A193691.P10520175359343879390

`A193693(n)+1-A193692(n)`
-/

namespace A193691.P10520175359343879390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193693 n + (1 - A193692 n)

end

end A193691.P10520175359343879390

/-! ## A193691.P12321899503727179781

`A020725(A193693(n))-A193692(n)`
-/

namespace A193691.P12321899503727179781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A193693 n).toNat - A193692 n

end

end A193691.P12321899503727179781

/-! ## A193691.P11495860329406819254

`A008619(2*(A193693(n)-A193692(n)))`
-/

namespace A193691.P11495860329406819254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (A193693 n - A193692 n)).toNat

end

end A193691.P11495860329406819254

/-! ## A193691.P4740251947631136189

`A033999(n)²-(A193692(n)-A193693(n))`
-/

namespace A193691.P4740251947631136189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 - (A193692 n - A193693 n)

end

end A193691.P4740251947631136189

/-! ## A193691.P3025460403260158131

`A008611(3*(A193693(n)-A193692(n)))`
-/

namespace A193691.P3025460403260158131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * (A193693 n - A193692 n)).toNat

end

end A193691.P3025460403260158131

/-! ## A193691.P2517749675818427309

`A193693(n)+1-A347205(A072800(n))`
-/

namespace A193691.P2517749675818427309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193693 n + (1 - A347205 (A072800 n).toNat)

end

end A193691.P2517749675818427309

/-! ## A193691.P15972139353751423277

`A020725(A193693(n))-A347205(A072800(n))`
-/

namespace A193691.P15972139353751423277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A193693 n).toNat - A347205 (A072800 n).toNat

end

end A193691.P15972139353751423277

/-!
# A193692: Triangle T(n,k), n>=0, 1<=k<=C(n), read by rows: T(n,k) = number of elements >= k-th path in the poset of Dyck paths of semilength n ordered by inclusion.

The programs for A193692, there is no canonical definition to state claims against.
-/

/-! ## A193692.P7112982929076090119

`A193693(n)+1-A193691(n)`
-/

namespace A193692.P7112982929076090119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193693 n + (1 - A193691 n)

end

end A193692.P7112982929076090119

/-! ## A193692.P7721243812283473737

`A193693(n)-A023443(A193691(n))`
-/

namespace A193692.P7721243812283473737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193693 n - A023443 (A193691 n).toNat

end

end A193692.P7721243812283473737

/-! ## A193692.P15573824853933155088

`A125644(A014486(n))`
-/

namespace A193692.P15573824853933155088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A014486 n).toNat

end

end A193692.P15573824853933155088

/-! ## A193692.P13129664130223158127

`A125644(A057520(n))`
-/

namespace A193692.P13129664130223158127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A057520 n).toNat

end

end A193692.P13129664130223158127

/-! ## A193692.P187925378611172882

`A347205(A072800(n))`
-/

namespace A193692.P187925378611172882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A072800 n).toNat

end

end A193692.P187925378611172882

/-! ## A193692.P16882525846112296563

`A125644(A194045(n)/2)`
-/

namespace A193692.P16882525846112296563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat

end

end A193692.P16882525846112296563

/-! ## A193692.P15967037554845761475

`A125644(A057547(n))`
-/

namespace A193692.P15967037554845761475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A057547 n).toNat

end

end A193692.P15967037554845761475

/-! ## A193692.P7628430032030324224

`A125644(A194045(n))`
-/

namespace A193692.P7628430032030324224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A194045 n).toNat

end

end A193692.P7628430032030324224

/-!
# A193693: Triangle T(n,k), n>=0, 1<=k<=C(n), read by rows: T(n,k) = number of elements comparable to the k-th path in the poset of Dyck paths of semilength n ordered by inclusion.

The programs for A193693, there is no canonical definition to state claims against.
-/

/-! ## A193693.P12243428611230955376

`A193691(n)+A193692(n)-1`
-/

namespace A193693.P12243428611230955376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 n + (A193692 n - 1)

end

end A193693.P12243428611230955376

/-! ## A193693.P13492053937896976124

`A193691(n)+A023443(A193692(n))`
-/

namespace A193693.P13492053937896976124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 n + A023443 (A193692 n).toNat

end

end A193693.P13492053937896976124

/-! ## A193693.P9066372133778419170

`A125644(A014486(n))+A193691(n)-1`
-/

namespace A193693.P9066372133778419170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A014486 n).toNat + (A193691 n - 1)

end

end A193693.P9066372133778419170

/-! ## A193693.P6233612607498954970

`A125644(A057520(n))+A193691(n)-1`
-/

namespace A193693.P6233612607498954970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A057520 n).toNat + (A193691 n - 1)

end

end A193693.P6233612607498954970

/-! ## A193693.P11812746659391966697

`A347205(A072800(n))+A193691(n)-1`
-/

namespace A193693.P11812746659391966697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A072800 n).toNat + (A193691 n - 1)

end

end A193693.P11812746659391966697

/-! ## A193693.P18405063117734697958

`A125644(A014486(n))+A023443(A193691(n))`
-/

namespace A193693.P18405063117734697958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A014486 n).toNat + A023443 (A193691 n).toNat

end

end A193693.P18405063117734697958

/-! ## A193693.P18041957916639654923

`A125644(A057520(n))+A023443(A193691(n))`
-/

namespace A193693.P18041957916639654923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A057520 n).toNat + A023443 (A193691 n).toNat

end

end A193693.P18041957916639654923

/-! ## A193693.P3024405740940086729

`A347205(A072800(n))+A023443(A193691(n))`
-/

namespace A193693.P3024405740940086729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A072800 n).toNat + A023443 (A193691 n).toNat

end

end A193693.P3024405740940086729

/-! ## A193693.P12760285426899656095

`A125644(A194045(n)/2)+A023443(A193691(n))`
-/

namespace A193693.P12760285426899656095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat + A023443 (A193691 n).toNat

end

end A193693.P12760285426899656095

/-! ## A193693.P13414308774500431146

`A193691(n)+A125644(A194045(n))-1`
-/

namespace A193693.P13414308774500431146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 n + (A125644 (A194045 n).toNat - 1)

end

end A193693.P13414308774500431146

/-! ## A193693.P16192323236396236994

`A125644(A194045(n))+A023443(A193691(n))`
-/

namespace A193693.P16192323236396236994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A194045 n).toNat + A023443 (A193691 n).toNat

end

end A193693.P16192323236396236994

/-!
# A193694: Triangle T(n,k), n>=0, 1<=k<=C(n), read by rows: T(n,k) = number of elements incomparable to the k-th path in the poset of Dyck paths of semilength n ordered by inclusion.

The programs for A193694, there is no canonical definition to state claims against.
-/

/-! ## A193694.P11717799543842487521

`A000108(A072643(n))-A193693(n)`
-/

namespace A193694.P11717799543842487521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A072643 n).toNat - A193693 n

end

end A193694.P11717799543842487521

/-! ## A193694.P298368111043784913

`A057977(A162550(n))-A193693(n)`
-/

namespace A193694.P298368111043784913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (A162550 n).toNat - A193693 n

end

end A193694.P298368111043784913

/-! ## A193694.P11322445912933139055

`A193693(A082852(n))-A193693(n)`
-/

namespace A193694.P11322445912933139055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193693 (A082852 n).toNat - A193693 n

end

end A193694.P11322445912933139055

/-! ## A193694.P11182168390628737749

`A028303(A162550(n))-(A193691(n)+A193692(n)-1)`
-/

namespace A193694.P11182168390628737749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A162550 n).toNat - (A193691 n + (A193692 n - 1))

end

end A193694.P11182168390628737749

/-! ## A193694.P10001877118357433114

`A193692(A082852(n))-(A193691(n)+A193692(n)-1)`
-/

namespace A193694.P10001877118357433114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193692 (A082852 n).toNat - (A193691 n + (A193692 n - 1))

end

end A193694.P10001877118357433114

/-!
# A193695: Number of arrays of -1..1 integers x(1..n) with every x(i) in a subsequence of length 1, 2 or 3 with sum zero.

The programs for A193695, the canonical program `A193695.P12290928366005784388` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193695 has offset 1).

The definition of A193695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193695.P12290928366005784388

`2*a(n-1)+a(n-2)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=23, a(4)=57`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A193695

/-- `2*a(n-1)+a(n-2)+a(n-4)+a(n-5)` -/
def P12290928366005784388.Spec : Prop :=
  ∀ n, (P12290928366005784388.a n : ℤ) = A193695 (n + 1)

theorem P12290928366005784388.correct : P12290928366005784388.Spec := by
  intro n
  simp only [A193695, Nat.add_sub_cancel]

end A193695

/-! ## A193695.P11341994588271578620

`A193702(∑[n+1])`
-/

namespace A193695.P11341994588271578620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193695.P11341994588271578620

namespace A193695

/-- `A193702(∑[n+1])` -/
def P11341994588271578620.Spec : Prop :=
  ∀ n, P11341994588271578620.a n = A193695 (n + 1)

end A193695

/-! ## A193695.P2965495429303678226

`record[A193702(∑[A057979(n)])]`
-/

namespace A193695.P2965495429303678226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193695.P2965495429303678226

namespace A193695

/-- `record[A193702(∑[A057979(n)])]` -/
def P2965495429303678226.Spec : Prop :=
  ∀ n, P2965495429303678226.a n = A193695 (n + 1)

end A193695

/-! ## A193695.P17023134004785360485

`or(1, A193702(A000217(n+1)))`
-/

namespace A193695.P17023134004785360485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193702 (A000217 (n + 1)).toNat)

end

end A193695.P17023134004785360485

namespace A193695

/-- `or(1, A193702(A000217(n+1)))` -/
def P17023134004785360485.Spec : Prop :=
  ∀ n, P17023134004785360485.a n = A193695 (n + 1)

end A193695

/-! ## A193695.P9173719373726001008

`record[gcd(A193702(n+1), A305161(n))]`
-/

namespace A193695.P9173719373726001008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193702 (n + 1)) (A305161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193695.P9173719373726001008

namespace A193695

/-- `record[gcd(A193702(n+1), A305161(n))]` -/
def P9173719373726001008.Spec : Prop :=
  ∀ n, (P9173719373726001008.a n : ℤ) = A193695 (n + 1)

end A193695

/-! ## A193695.P4051163260257427264

`record[A193702(A057944(A000010(n+1)))]`
-/

namespace A193695.P4051163260257427264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A057944 (A000010 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193695.P4051163260257427264

namespace A193695

/-- `record[A193702(A057944(A000010(n+1)))]` -/
def P4051163260257427264.Spec : Prop :=
  ∀ n, P4051163260257427264.a n = A193695 (n + 1)

end A193695

/-!
# A193696: Number of arrays of -2..2 integers x(1..n) with every x(i) in a subsequence of length 1, 2 or 3 with sum zero.

The programs for A193696, there is no canonical definition to state claims against.
-/

/-! ## A193696.P10384084973236375713

`A193702(∑[n+2])`
-/

namespace A193696.P10384084973236375713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193696.P10384084973236375713

/-! ## A193696.P3793532765501807119

`record[A193702(A000096(A126759(n)))]`
-/

namespace A193696.P3793532765501807119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193696.P3793532765501807119

/-! ## A193696.P1637771032352916743

`record[A193702(A000096(A246694(n)))]`
-/

namespace A193696.P1637771032352916743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000096 (A246694 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193696.P1637771032352916743

/-! ## A193696.P17064371017248657460

`record[A193702(A000096(A329048(n)))]`
-/

namespace A193696.P17064371017248657460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000096 (A329048 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193696.P17064371017248657460

/-! ## A193696.P3793099739685208820

`record[A193702(A000096(A000188(n+1)))]`
-/

namespace A193696.P3793099739685208820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193696.P3793099739685208820

/-! ## A193696.P5191718640056956837

`record[A193702(A000096(A003602(n+1)))]`
-/

namespace A193696.P5191718640056956837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193696.P5191718640056956837

/-! ## A193696.P5923392532259970928

`record[A193702(A000096(A101296(n+1)))]`
-/

namespace A193696.P5923392532259970928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A000096 (A101296 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193696.P5923392532259970928

/-!
# A193697: Number of arrays of -3..3 integers x(1..n) with every x(i) in a subsequence of length 1, 2 or 3 with sum zero.

The programs for A193697, there is no canonical definition to state claims against.
-/

/-! ## A193697.P6551920769563904007

`A193702(∑[n+3]+1)`
-/

namespace A193697.P6551920769563904007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193697.P6551920769563904007

/-! ## A193697.P6611967495211685611

`or(1, A193702(Δ[A008778(n)]))`
-/

namespace A193697.P6611967495211685611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193702 (f1 (n + 1) - f1 n).toNat)

end

end A193697.P6611967495211685611

/-! ## A193697.P3855182092685892716

`record[A193702(A034856(A028920(n)))]`
-/

namespace A193697.P3855182092685892716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A034856 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193697.P3855182092685892716

/-! ## A193697.P3420940663716285704

`record[A193702(A034856(A137734(n)))]`
-/

namespace A193697.P3420940663716285704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A034856 (A137734 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193697.P3420940663716285704

/-! ## A193697.P9498456420029175596

`A193702(A034856(n+2))%A297592(n+1)`
-/

namespace A193697.P9498456420029175596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193702 (A034856 (n + 2)).toNat) (A297592 (n + 1))

end

end A193697.P9498456420029175596

/-!
# A193698: Number of arrays of -4..4 integers x(1..n) with every x(i) in a subsequence of length 1, 2 or 3 with sum zero.

The programs for A193698, there is no canonical definition to state claims against.
-/

/-! ## A193698.P7331001721575522395

`A193702(A027379(n+2))`
-/

namespace A193698.P7331001721575522395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A027379 (n + 2)).toNat

end

end A193698.P7331001721575522395

/-! ## A193698.P13540721558534619936

`A193702(A055998(n+2))`
-/

namespace A193698.P13540721558534619936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A055998 (n + 2)).toNat

end

end A193698.P13540721558534619936

/-! ## A193698.P14416583180884445992

`A193702(∑[A020705(n)]+3)`
-/

namespace A193698.P14416583180884445992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A193698.P14416583180884445992

/-! ## A193698.P6974971346544527353

`A193702(A052905(n+1)+2)`
-/

namespace A193698.P6974971346544527353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A052905 (n + 1) + 2).toNat

end

end A193698.P6974971346544527353

/-! ## A193698.P9819863491183843792

`A193702(Δ[A008778(n+1)]-1)`
-/

namespace A193698.P9819863491183843792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (f1 (n + 1) - f1 n - 1).toNat

end

end A193698.P9819863491183843792

/-! ## A193698.P641522612616072722

`A193702(Δ[A005286(n+1)]-2)`
-/

namespace A193698.P641522612616072722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (f1 (n + 1) - f1 n - 2).toNat

end

end A193698.P641522612616072722

/-! ## A193698.P8505808136599334887

`A193702(3*n+7+A000096(n))`
-/

namespace A193698.P8505808136599334887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 ((3 * n + 7 : ℤ) + A000096 n).toNat

end

end A193698.P8505808136599334887

/-! ## A193698.P13691408306141586643

`record[A193702(n+7)/A193702(n+11)]`
-/

namespace A193698.P13691408306141586643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193702 (n + 7) : ℚ) / (A193702 (n + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193698.P13691408306141586643

/-! ## A193698.P18078569785534217635

`A193702(A167499(n)+A016777(n))`
-/

namespace A193698.P18078569785534217635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A167499 n + A016777 n).toNat

end

end A193698.P18078569785534217635

/-!
# A193699: Number of arrays of -5..5 integers x(1..n) with every x(i) in a subsequence of length 1, 2 or 3 with sum zero.

The programs for A193699, there is no canonical definition to state claims against.
-/

/-! ## A193699.P9011590486984287160

`A193702(C(n+5, 2)+n+1)`
-/

namespace A193699.P9011590486984287160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (Nat.choose (n + 5) 2 + (n + 1))

end

end A193699.P9011590486984287160

/-! ## A193699.P16531677280355082798

`A193702(A046691(n+3))`
-/

namespace A193699.P16531677280355082798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (A046691 (n + 3)).toNat

end

end A193699.P16531677280355082798

/-! ## A193699.P16198167823044227212

`A193702(Δ[A023545(n+1)])`
-/

namespace A193699.P16198167823044227212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (f1 (n + 1) - f1 n).toNat

end

end A193699.P16198167823044227212

/-! ## A193699.P2704773131406553482

`A193702(Δ[A005286(n+2)]-3)`
-/

namespace A193699.P2704773131406553482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 (f1 (n + 1) - f1 n - 3).toNat

end

end A193699.P2704773131406553482

/-! ## A193699.P17353376218840098687

`A193702(n+2+Δ[A005286(n+1)])`
-/

namespace A193699.P17353376218840098687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193702 ((n + 2 : ℤ) + (f1 (n + 1) - f1 n)).toNat

end

end A193699.P17353376218840098687

/-! ## A193699.P17611447568435296260

`record[A193702(n+11)/A193702(n+16)]`
-/

namespace A193699.P17611447568435296260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193702 (n + 11) : ℚ) / (A193702 (n + 16) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193699.P17611447568435296260

