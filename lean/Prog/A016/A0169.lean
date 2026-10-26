import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C004

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A016900: a(n) = (5*n + 4)^4.

The programs for A016900, the canonical program `A016900.P7752663066395658380` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016900 has offset 0).

The definition of A016900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^4` (program `A016900.P7752663066395658380`, by `A016900.P7752663066395658380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016900.P7752663066395658380

`(5*n+4)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016900

/-- `(5*n+4)^4` -/
def P7752663066395658380.Spec : Prop :=
  ∀ n, (P7752663066395658380.a n : ℤ) = A016900 n

theorem P7752663066395658380.correct : P7752663066395658380.Spec := by
  intro n
  simp only [A016900]

end A016900

/-! ## A016900.P12848921725649656391

`A000583(A016897(n))`
-/

namespace A016900.P12848921725649656391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A016897 n).toNat

end

end A016900.P12848921725649656391

namespace A016900

/-- `A000583(A016897(n))` -/
def P12848921725649656391.Spec : Prop :=
  ∀ n, P12848921725649656391.a n = A016900 n

end A016900

/-! ## A016900.P14810260000350970756

`record[(gcd(5, n)+n-1)^4]`
-/

namespace A016900.P14810260000350970756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 5 n : ℤ) + ((n : ℤ) - 1)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016900.P14810260000350970756

namespace A016900

/-- `record[(gcd(5, n)+n-1)^4]` -/
def P14810260000350970756.Spec : Prop :=
  ∀ n, P14810260000350970756.a n = A016900 n

end A016900

/-! ## A016900.P6657931942023292688

`(record[xor(3, n)]+n+1)²²`
-/

namespace A016900.P6657931942023292688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1)) ^ 2) ^ 2

end

end A016900.P6657931942023292688

namespace A016900

/-- `(record[xor(3, n)]+n+1)²²` -/
def P6657931942023292688.Spec : Prop :=
  ∀ n, (P6657931942023292688.a n : ℤ) = A016900 n

end A016900

/-! ## A016900.P2634547260282507837

`record[a(n-2)+5]²²` with `a(0)=4, a(1)=0`
-/

namespace A016900.P2634547260282507837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A016900.P2634547260282507837

namespace A016900

/-- `record[a(n-2)+5]²²` -/
def P2634547260282507837.Spec : Prop :=
  ∀ n, (P2634547260282507837.a n : ℤ) = A016900 n

end A016900

/-! ## A016900.P520538043187211946

`(lcm(2, Δ[n²])+n+2)²²`
-/

namespace A016900.P520538043187211946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n + 2)) ^ 2) ^ 2

end

end A016900.P520538043187211946

namespace A016900

/-- `(lcm(2, Δ[n²])+n+2)²²` -/
def P520538043187211946.Spec : Prop :=
  ∀ n, (P520538043187211946.a n : ℤ) = A016900 n

end A016900

/-! ## A016900.P2955459864919054461

`(Δ[C(2*n, 2)]+n+3)²²`
-/

namespace A016900.P2955459864919054461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 3 : ℤ)) ^ 2) ^ 2

end

end A016900.P2955459864919054461

namespace A016900

/-- `(Δ[C(2*n, 2)]+n+3)²²` -/
def P2955459864919054461.Spec : Prop :=
  ∀ n, P2955459864919054461.a n = A016900 n

theorem P2955459864919054461.correct : P2955459864919054461.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P2955459864919054461.f1, A016900.P2955459864919054461.a, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016900

/-! ## A016900.P11148448891507816824

`((n+2)²-lcm(n, n-1))²²`
-/

namespace A016900.P11148448891507816824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 2) ^ 2 : ℤ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)) ^ 2) ^ 2

end

end A016900.P11148448891507816824

namespace A016900

/-- `((n+2)²-lcm(n, n-1))²²` -/
def P11148448891507816824.Spec : Prop :=
  ∀ n, P11148448891507816824.a n = A016900 n

end A016900

/-! ## A016900.P7123691417668310838

`(∑[a(n-1)+2]-n²)²²` with `a(0)=4`
-/

namespace A016900.P7123691417668310838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)) ^ 2) ^ 2

end

end A016900.P7123691417668310838

namespace A016900

/-- `(∑[a(n-1)+2]-n²)²²` -/
def P7123691417668310838.Spec : Prop :=
  ∀ n, P7123691417668310838.a n = A016900 n

end A016900

/-! ## A016900.P8806631023893403419

`((2*n+1)*gcd(2, 2*n)+n+2)²²`
-/

namespace A016900.P8806631023893403419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * Nat.gcd 2 (2 * n) + (n + 2)) ^ 2) ^ 2

end

end A016900.P8806631023893403419

namespace A016900

/-- `((2*n+1)*gcd(2, 2*n)+n+2)²²` -/
def P8806631023893403419.Spec : Prop :=
  ∀ n, (P8806631023893403419.a n : ℤ) = A016900 n

theorem P8806631023893403419.correct : P8806631023893403419.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P8806631023893403419.a, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016900

/-! ## A016900.P18033962775687167631

`(C(n+2, n+1)+2*(2*n+1))²²`
-/

namespace A016900.P18033962775687167631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) (n + 1) + 2 * (2 * n + 1)) ^ 2) ^ 2

end

end A016900.P18033962775687167631

namespace A016900

/-- `(C(n+2, n+1)+2*(2*n+1))²²` -/
def P18033962775687167631.Spec : Prop :=
  ∀ n, (P18033962775687167631.a n : ℤ) = A016900 n

theorem P18033962775687167631.correct : P18033962775687167631.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P18033962775687167631.a, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016900

/-! ## A016900.P15974093086103142108

`A016898(n)²`
-/

namespace A016900.P15974093086103142108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n ^ 2

end

end A016900.P15974093086103142108

namespace A016900

/-- `A016898(n)²` -/
def P15974093086103142108.Spec : Prop :=
  ∀ n, P15974093086103142108.a n = A016900 n

theorem P15974093086103142108.correct : P15974093086103142108.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P15974093086103142108.a, A016900.P7752663066395658380.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016900

/-! ## A016900.P8655324156822779581

`sqrt(A016904(n))`
-/

namespace A016900.P8655324156822779581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016904 n : ℝ)

end

end A016900.P8655324156822779581

namespace A016900

/-- `sqrt(A016904(n))` -/
def P8655324156822779581.Spec : Prop :=
  ∀ n, P8655324156822779581.a n = (A016900 n : ℝ)

end A016900

/-! ## A016900.P6638685714207567258

`(A017366(n)/4)²`
-/

namespace A016900.P6638685714207567258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017366 n : ℚ) / 4) ^ 2

end

end A016900.P6638685714207567258

namespace A016900

/-- `(A017366(n)/4)²` -/
def P6638685714207567258.Spec : Prop :=
  ∀ n, P6638685714207567258.a n = (A016900 n : ℚ)

theorem P6638685714207567258.correct : P6638685714207567258.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P6638685714207567258.a, A016900.P7752663066395658380.a, A017366, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016900

/-! ## A016900.P8918833520253878240

`(A016885(n)+1)²²`
-/

namespace A016900.P8918833520253878240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 n + 1) ^ 2) ^ 2

end

end A016900.P8918833520253878240

namespace A016900

/-- `(A016885(n)+1)²²` -/
def P8918833520253878240.Spec : Prop :=
  ∀ n, P8918833520253878240.a n = A016900 n

theorem P8918833520253878240.correct : P8918833520253878240.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P8918833520253878240.a, A016900.P7752663066395658380.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016900

/-! ## A016900.P16702892738492396209

`(A016873(n)+2)²²`
-/

namespace A016900.P16702892738492396209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016873 n + 2) ^ 2) ^ 2

end

end A016900.P16702892738492396209

namespace A016900

/-- `(A016873(n)+2)²²` -/
def P16702892738492396209.Spec : Prop :=
  ∀ n, P16702892738492396209.a n = A016900 n

theorem P16702892738492396209.correct : P16702892738492396209.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P16702892738492396209.a, A016900.P7752663066395658380.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016900

/-! ## A016900.P14904354079897444078

`(A016861(n)+3)²²`
-/

namespace A016900.P14904354079897444078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016861 n + 3) ^ 2) ^ 2

end

end A016900.P14904354079897444078

namespace A016900

/-- `(A016861(n)+3)²²` -/
def P14904354079897444078.Spec : Prop :=
  ∀ n, P14904354079897444078.a n = A016900 n

theorem P14904354079897444078.correct : P14904354079897444078.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P14904354079897444078.a, A016900.P7752663066395658380.a, A016861, A016861.P12760207785627616280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016900

/-! ## A016900.P3356127241405574665

`(A017365(n)/2)²²`
-/

namespace A016900.P3356127241405574665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017365 n : ℚ) / 2) ^ 2) ^ 2

end

end A016900.P3356127241405574665

namespace A016900

/-- `(A017365(n)/2)²²` -/
def P3356127241405574665.Spec : Prop :=
  ∀ n, P3356127241405574665.a n = (A016900 n : ℚ)

theorem P3356127241405574665.correct : P3356127241405574665.Spec := by
  intro n
  simp only [A016900, Nat.add_sub_cancel, A016900.P3356127241405574665.a, A016900.P7752663066395658380.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016900

/-!
# A016901: a(n) = (5*n + 4)^5.

The programs for A016901, the canonical program `A016901.P18013072888350577229` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016901 has offset 0).

The definition of A016901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^5` (program `A016901.P18013072888350577229`, by `A016901.P18013072888350577229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016901.P18013072888350577229

`(5*n+4)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016901

/-- `(5*n+4)^5` -/
def P18013072888350577229.Spec : Prop :=
  ∀ n, (P18013072888350577229.a n : ℤ) = A016901 n

theorem P18013072888350577229.correct : P18013072888350577229.Spec := by
  intro n
  simp only [A016901]

end A016901

/-! ## A016901.P6674704529369970867

`record[(n+4)^gcd(5, n)]`
-/

namespace A016901.P6674704529369970867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ Nat.gcd 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016901.P6674704529369970867

namespace A016901

/-- `record[(n+4)^gcd(5, n)]` -/
def P6674704529369970867.Spec : Prop :=
  ∀ n, (P6674704529369970867.a n : ℤ) = A016901 n

end A016901

/-! ## A016901.P15481037328863690233

`sqrt(A016906(n))`
-/

namespace A016901.P15481037328863690233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016906 n : ℝ)

end

end A016901.P15481037328863690233

namespace A016901

/-- `sqrt(A016906(n))` -/
def P15481037328863690233.Spec : Prop :=
  ∀ n, P15481037328863690233.a n = (A016901 n : ℝ)

end A016901

/-! ## A016901.P18176239908551349821

`sqrt(A016898(n)^5)`
-/

namespace A016901.P18176239908551349821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016898 n ^ 5 : ℝ)

end

end A016901.P18176239908551349821

namespace A016901

/-- `sqrt(A016898(n)^5)` -/
def P18176239908551349821.Spec : Prop :=
  ∀ n, P18176239908551349821.a n = (A016901 n : ℝ)

end A016901

/-! ## A016901.P1257175179480592333

`abs((n-A016957(n))^5)`
-/

namespace A016901.P1257175179480592333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - A016957 n) ^ 5|

end

end A016901.P1257175179480592333

namespace A016901

/-- `abs((n-A016957(n))^5)` -/
def P1257175179480592333.Spec : Prop :=
  ∀ n, P1257175179480592333.a n = A016901 n

end A016901

/-! ## A016901.P4207272797879889440

`(5*n+4)*A016900(n)`
-/

namespace A016901.P4207272797879889440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 4 : ℤ) * A016900 n

end

end A016901.P4207272797879889440

namespace A016901

/-- `(5*n+4)*A016900(n)` -/
def P4207272797879889440.Spec : Prop :=
  ∀ n, P4207272797879889440.a n = A016901 n

theorem P4207272797879889440.correct : P4207272797879889440.Spec := by
  intro n
  simp only [A016901, Nat.add_sub_cancel, A016901.P4207272797879889440.a, A016901.P18013072888350577229.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016901

/-! ## A016901.P8636329234531704699

`abs((n-(A016945(n)+1))^5)`
-/

namespace A016901.P8636329234531704699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - (A016945 n + 1)) ^ 5|

end

end A016901.P8636329234531704699

namespace A016901

/-- `abs((n-(A016945(n)+1))^5)` -/
def P8636329234531704699.Spec : Prop :=
  ∀ n, P8636329234531704699.a n = A016901 n

end A016901

/-! ## A016901.P9280490289821490971

`abs((A016969(n)-1-n)^5)`
-/

namespace A016901.P9280490289821490971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016969 n - 1 - (n : ℤ)) ^ 5|

end

end A016901.P9280490289821490971

namespace A016901

/-- `abs((A016969(n)-1-n)^5)` -/
def P9280490289821490971.Spec : Prop :=
  ∀ n, P9280490289821490971.a n = A016901 n

end A016901

/-! ## A016901.P7721142661621529136

`A016898(n)*A016899(n)`
-/

namespace A016901.P7721142661621529136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n * A016899 n

end

end A016901.P7721142661621529136

namespace A016901

/-- `A016898(n)*A016899(n)` -/
def P7721142661621529136.Spec : Prop :=
  ∀ n, P7721142661621529136.a n = A016901 n

theorem P7721142661621529136.correct : P7721142661621529136.Spec := by
  intro n
  simp only [A016901, Nat.add_sub_cancel, A016901.P7721142661621529136.a, A016901.P18013072888350577229.a, A016898, A016898.P14343272817953415938.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016901

/-! ## A016901.P6543055940077024894

`A016902(n)/A016897(n)`
-/

namespace A016901.P6543055940077024894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016902 n : ℚ) / (A016897 n : ℚ)

end

end A016901.P6543055940077024894

namespace A016901

/-- `A016902(n)/A016897(n)` -/
def P6543055940077024894.Spec : Prop :=
  ∀ n, P6543055940077024894.a n = (A016901 n : ℚ)

end A016901

/-! ## A016901.P7260614034103557938

`A016903(n)/A016898(n)`
-/

namespace A016901.P7260614034103557938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016903 n : ℚ) / (A016898 n : ℚ)

end

end A016901.P7260614034103557938

namespace A016901

/-- `A016903(n)/A016898(n)` -/
def P7260614034103557938.Spec : Prop :=
  ∀ n, P7260614034103557938.a n = (A016901 n : ℚ)

end A016901

/-! ## A016901.P8550876719144960663

`∪[A017321(n), A017381(n)]`
-/

namespace A016901.P8550876719144960663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017381 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016901.P8550876719144960663

namespace A016901

/-- `∪[A017321(n), A017381(n)]` -/
def P8550876719144960663.Spec : Prop :=
  ∀ n, (P8550876719144960663.a n : ℤ) = A016901 n

end A016901

/-! ## A016901.P15832854734290103969

`A016897(n)²*A016899(n)`
-/

namespace A016901.P15832854734290103969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n ^ 2 * A016899 n

end

end A016901.P15832854734290103969

namespace A016901

/-- `A016897(n)²*A016899(n)` -/
def P15832854734290103969.Spec : Prop :=
  ∀ n, P15832854734290103969.a n = A016901 n

theorem P15832854734290103969.correct : P15832854734290103969.Spec := by
  intro n
  simp only [A016901, Nat.add_sub_cancel, A016901.P15832854734290103969.a, A016901.P18013072888350577229.a, A016897, A016897.P9287350145607759688.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016901

/-! ## A016901.P2252512454319818428

`A016898(n)²*A016897(n)`
-/

namespace A016901.P2252512454319818428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n ^ 2 * A016897 n

end

end A016901.P2252512454319818428

namespace A016901

/-- `A016898(n)²*A016897(n)` -/
def P2252512454319818428.Spec : Prop :=
  ∀ n, P2252512454319818428.a n = A016901 n

theorem P2252512454319818428.correct : P2252512454319818428.Spec := by
  intro n
  simp only [A016901, Nat.add_sub_cancel, A016901.P2252512454319818428.a, A016901.P18013072888350577229.a, A016897, A016897.P9287350145607759688.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016901

/-! ## A016901.P16358669835622629501

`A016900(n)²/A016899(n)`
-/

namespace A016901.P16358669835622629501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 n ^ 2 : ℚ) / (A016899 n : ℚ)

end

end A016901.P16358669835622629501

namespace A016901

/-- `A016900(n)²/A016899(n)` -/
def P16358669835622629501.Spec : Prop :=
  ∀ n, P16358669835622629501.a n = (A016901 n : ℚ)

end A016901

/-! ## A016901.P6187379759023621218

`A016903(n)/A016897(n)²`
-/

namespace A016901.P6187379759023621218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016903 n : ℚ) / (A016897 n ^ 2 : ℚ)

end

end A016901.P6187379759023621218

namespace A016901

/-- `A016903(n)/A016897(n)²` -/
def P6187379759023621218.Spec : Prop :=
  ∀ n, P6187379759023621218.a n = (A016901 n : ℚ)

end A016901

/-! ## A016901.P11964956250404466709

`(A016885(n)+1)*A016898(n)²`
-/

namespace A016901.P11964956250404466709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n + 1) * A016898 n ^ 2

end

end A016901.P11964956250404466709

namespace A016901

/-- `(A016885(n)+1)*A016898(n)²` -/
def P11964956250404466709.Spec : Prop :=
  ∀ n, P11964956250404466709.a n = A016901 n

theorem P11964956250404466709.correct : P11964956250404466709.Spec := by
  intro n
  simp only [A016901, Nat.add_sub_cancel, A016901.P11964956250404466709.a, A016901.P18013072888350577229.a, A016885, A016885.P12442016633976001399.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016901

/-! ## A016901.P1401388472278872139

`A016900(n)/A016903(n)*A016900(n)²`
-/

namespace A016901.P1401388472278872139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 n : ℚ) / (A016903 n : ℚ) * (A016900 n ^ 2 : ℚ)

end

end A016901.P1401388472278872139

namespace A016901

/-- `A016900(n)/A016903(n)*A016900(n)²` -/
def P1401388472278872139.Spec : Prop :=
  ∀ n, P1401388472278872139.a n = (A016901 n : ℚ)

end A016901

/-! ## A016901.P3642919838299318660

`A016904(n)/(A016897(n)²*A016897(n))`
-/

namespace A016901.P3642919838299318660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016904 n : ℚ) / (A016897 n ^ 2 * A016897 n : ℚ)

end

end A016901.P3642919838299318660

namespace A016901

/-- `A016904(n)/(A016897(n)²*A016897(n))` -/
def P3642919838299318660.Spec : Prop :=
  ∀ n, P3642919838299318660.a n = (A016901 n : ℚ)

end A016901

/-! ## A016901.P10472534156653824680

`abs((record[A006370(n+1)]-n)^5)`
-/

namespace A016901.P10472534156653824680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)) ^ 5|

end

end A016901.P10472534156653824680

namespace A016901

/-- `abs((record[A006370(n+1)]-n)^5)` -/
def P10472534156653824680.Spec : Prop :=
  ∀ n, P10472534156653824680.a n = A016901 n

end A016901

/-!
# A016902: a(n) = (5*n + 4)^6.

The programs for A016902, the canonical program `A016902.P2808007698131298643` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016902 has offset 0).

The definition of A016902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^6` (program `A016902.P2808007698131298643`, by `A016902.P2808007698131298643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016902.P2808007698131298643

`(5*n+4)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016902

/-- `(5*n+4)^6` -/
def P2808007698131298643.Spec : Prop :=
  ∀ n, (P2808007698131298643.a n : ℤ) = A016902 n

theorem P2808007698131298643.correct : P2808007698131298643.Spec := by
  intro n
  simp only [A016902]

end A016902

/-! ## A016902.P13553067472601408411

`A016899(n)²`
-/

namespace A016902.P13553067472601408411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 n ^ 2

end

end A016902.P13553067472601408411

namespace A016902

/-- `A016899(n)²` -/
def P13553067472601408411.Spec : Prop :=
  ∀ n, P13553067472601408411.a n = A016902 n

theorem P13553067472601408411.correct : P13553067472601408411.Spec := by
  intro n
  simp only [A016902, Nat.add_sub_cancel, A016902.P13553067472601408411.a, A016902.P2808007698131298643.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016902

/-! ## A016902.P5979361844901470518

`(A016897(n)^3)²`
-/

namespace A016902.P5979361844901470518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n ^ 3) ^ 2

end

end A016902.P5979361844901470518

namespace A016902

/-- `(A016897(n)^3)²` -/
def P5979361844901470518.Spec : Prop :=
  ∀ n, P5979361844901470518.a n = A016902 n

theorem P5979361844901470518.correct : P5979361844901470518.Spec := by
  intro n
  simp only [A016902, Nat.add_sub_cancel, A016902.P5979361844901470518.a, A016902.P2808007698131298643.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016902

/-! ## A016902.P1256092226249150312

`sqrt(A016900(n)^3)`
-/

namespace A016902.P1256092226249150312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016900 n ^ 3 : ℝ)

end

end A016902.P1256092226249150312

namespace A016902

/-- `sqrt(A016900(n)^3)` -/
def P1256092226249150312.Spec : Prop :=
  ∀ n, P1256092226249150312.a n = (A016902 n : ℝ)

end A016902

/-! ## A016902.P4941923700006662258

`((A016885(n)+1)^3)²`
-/

namespace A016902.P4941923700006662258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 n + 1) ^ 3) ^ 2

end

end A016902.P4941923700006662258

namespace A016902

/-- `((A016885(n)+1)^3)²` -/
def P4941923700006662258.Spec : Prop :=
  ∀ n, P4941923700006662258.a n = A016902 n

theorem P4941923700006662258.correct : P4941923700006662258.Spec := by
  intro n
  simp only [A016902, Nat.add_sub_cancel, A016902.P4941923700006662258.a, A016902.P2808007698131298643.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016902

/-! ## A016902.P3605811501429011132

`((A016873(n)+2)^3)²`
-/

namespace A016902.P3605811501429011132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016873 n + 2) ^ 3) ^ 2

end

end A016902.P3605811501429011132

namespace A016902

/-- `((A016873(n)+2)^3)²` -/
def P3605811501429011132.Spec : Prop :=
  ∀ n, P3605811501429011132.a n = A016902 n

theorem P3605811501429011132.correct : P3605811501429011132.Spec := by
  intro n
  simp only [A016902, Nat.add_sub_cancel, A016902.P3605811501429011132.a, A016902.P2808007698131298643.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016902

/-! ## A016902.P12214247401474269786

`(5*n+4)*A016901(n)`
-/

namespace A016902.P12214247401474269786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 4 : ℤ) * A016901 n

end

end A016902.P12214247401474269786

namespace A016902

/-- `(5*n+4)*A016901(n)` -/
def P12214247401474269786.Spec : Prop :=
  ∀ n, P12214247401474269786.a n = A016902 n

theorem P12214247401474269786.correct : P12214247401474269786.Spec := by
  intro n
  simp only [A016902, Nat.add_sub_cancel, A016902.P12214247401474269786.a, A016902.P2808007698131298643.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016902

/-! ## A016902.P16650016390727710237

`A016898(n)*A016900(n)`
-/

namespace A016902.P16650016390727710237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n * A016900 n

end

end A016902.P16650016390727710237

namespace A016902

/-- `A016898(n)*A016900(n)` -/
def P16650016390727710237.Spec : Prop :=
  ∀ n, P16650016390727710237.a n = A016902 n

theorem P16650016390727710237.correct : P16650016390727710237.Spec := by
  intro n
  simp only [A016902, Nat.add_sub_cancel, A016902.P16650016390727710237.a, A016902.P2808007698131298643.a, A016898, A016898.P14343272817953415938.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016902

/-! ## A016902.P6877645078679943993

`A016903(n)/A016897(n)`
-/

namespace A016902.P6877645078679943993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016903 n : ℚ) / (A016897 n : ℚ)

end

end A016902.P6877645078679943993

namespace A016902

/-- `A016903(n)/A016897(n)` -/
def P6877645078679943993.Spec : Prop :=
  ∀ n, P6877645078679943993.a n = (A016902 n : ℚ)

end A016902

/-! ## A016902.P18177667556162694648

`∪[A017322(n), A017382(n)]`
-/

namespace A016902.P18177667556162694648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017322 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017382 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016902.P18177667556162694648

namespace A016902

/-- `∪[A017322(n), A017382(n)]` -/
def P18177667556162694648.Spec : Prop :=
  ∀ n, (P18177667556162694648.a n : ℤ) = A016902 n

end A016902

/-! ## A016902.P18163091642207056362

`(A016897(n)*A016898(n))²`
-/

namespace A016902.P18163091642207056362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n * A016898 n) ^ 2

end

end A016902.P18163091642207056362

namespace A016902

/-- `(A016897(n)*A016898(n))²` -/
def P18163091642207056362.Spec : Prop :=
  ∀ n, P18163091642207056362.a n = A016902 n

theorem P18163091642207056362.correct : P18163091642207056362.Spec := by
  intro n
  simp only [A016902, Nat.add_sub_cancel, A016902.P18163091642207056362.a, A016902.P2808007698131298643.a, A016897, A016897.P9287350145607759688.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016902

/-! ## A016902.P17552291546437614406

`A016897(n)²*A016900(n)`
-/

namespace A016902.P17552291546437614406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n ^ 2 * A016900 n

end

end A016902.P17552291546437614406

namespace A016902

/-- `A016897(n)²*A016900(n)` -/
def P17552291546437614406.Spec : Prop :=
  ∀ n, P17552291546437614406.a n = A016902 n

theorem P17552291546437614406.correct : P17552291546437614406.Spec := by
  intro n
  simp only [A016902, Nat.add_sub_cancel, A016902.P17552291546437614406.a, A016902.P2808007698131298643.a, A016897, A016897.P9287350145607759688.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016902

/-! ## A016902.P16238086403206560933

`(A016901(n)/A016898(n))²`
-/

namespace A016902.P16238086403206560933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016901 n : ℚ) / (A016898 n : ℚ)) ^ 2

end

end A016902.P16238086403206560933

namespace A016902

/-- `(A016901(n)/A016898(n))²` -/
def P16238086403206560933.Spec : Prop :=
  ∀ n, P16238086403206560933.a n = (A016902 n : ℚ)

end A016902

/-! ## A016902.P17869953789627510588

`A016901(n)²/A016900(n)`
-/

namespace A016902.P17869953789627510588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016901 n ^ 2 : ℚ) / (A016900 n : ℚ)

end

end A016902.P17869953789627510588

namespace A016902

/-- `A016901(n)²/A016900(n)` -/
def P17869953789627510588.Spec : Prop :=
  ∀ n, P17869953789627510588.a n = (A016902 n : ℚ)

end A016902

/-! ## A016902.P15580203627379548681

`(A016903(n)/A016900(n))²`
-/

namespace A016902.P15580203627379548681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016903 n : ℚ) / (A016900 n : ℚ)) ^ 2

end

end A016902.P15580203627379548681

namespace A016902

/-- `(A016903(n)/A016900(n))²` -/
def P15580203627379548681.Spec : Prop :=
  ∀ n, P15580203627379548681.a n = (A016902 n : ℚ)

end A016902

/-! ## A016902.P13921037632045938822

`A016904(n)/A016897(n)²`
-/

namespace A016902.P13921037632045938822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016904 n : ℚ) / (A016897 n ^ 2 : ℚ)

end

end A016902.P13921037632045938822

namespace A016902

/-- `A016904(n)/A016897(n)²` -/
def P13921037632045938822.Spec : Prop :=
  ∀ n, P13921037632045938822.a n = (A016902 n : ℚ)

end A016902

/-! ## A016902.P9298825340701130312

`∪[A017319(n), A017379(n)]²`
-/

namespace A016902.P9298825340701130312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A016902.P9298825340701130312

namespace A016902

/-- `∪[A017319(n), A017379(n)]²` -/
def P9298825340701130312.Spec : Prop :=
  ∀ n, (P9298825340701130312.a n : ℤ) = A016902 n

end A016902

/-! ## A016902.P2258087491469795661

`(A016901(n)²/A016903(n))²`
-/

namespace A016902.P2258087491469795661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016901 n ^ 2 : ℚ) / (A016903 n : ℚ)) ^ 2

end

end A016902.P2258087491469795661

namespace A016902

/-- `(A016901(n)²/A016903(n))²` -/
def P2258087491469795661.Spec : Prop :=
  ∀ n, P2258087491469795661.a n = (A016902 n : ℚ)

end A016902

/-!
# A016903: a(n) = (5*n + 4)^7.

The programs for A016903, the canonical program `A016903.P1953682218511685154` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016903 has offset 0).

The definition of A016903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^7` (program `A016903.P1953682218511685154`, by `A016903.P1953682218511685154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016903.P1953682218511685154

`(5*n+4)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016903

/-- `(5*n+4)^7` -/
def P1953682218511685154.Spec : Prop :=
  ∀ n, (P1953682218511685154.a n : ℤ) = A016903 n

theorem P1953682218511685154.correct : P1953682218511685154.Spec := by
  intro n
  simp only [A016903]

end A016903

/-! ## A016903.P17025153879826625533

`(5*n+4)²*A016901(n)`
-/

namespace A016903.P17025153879826625533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 * n + 4) ^ 2 : ℤ) * A016901 n

end

end A016903.P17025153879826625533

namespace A016903

/-- `(5*n+4)²*A016901(n)` -/
def P17025153879826625533.Spec : Prop :=
  ∀ n, P17025153879826625533.a n = A016903 n

theorem P17025153879826625533.correct : P17025153879826625533.Spec := by
  intro n
  simp only [A016903, Nat.add_sub_cancel, A016903.P17025153879826625533.a, A016903.P1953682218511685154.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016903

/-! ## A016903.P13694512609550860861

`A016897(n)*A016902(n)`
-/

namespace A016903.P13694512609550860861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n * A016902 n

end

end A016903.P13694512609550860861

namespace A016903

/-- `A016897(n)*A016902(n)` -/
def P13694512609550860861.Spec : Prop :=
  ∀ n, P13694512609550860861.a n = A016903 n

theorem P13694512609550860861.correct : P13694512609550860861.Spec := by
  intro n
  simp only [A016903, Nat.add_sub_cancel, A016903.P13694512609550860861.a, A016903.P1953682218511685154.a, A016897, A016897.P9287350145607759688.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016903

/-! ## A016903.P17184094693175086500

`A016899(n)*A016900(n)`
-/

namespace A016903.P17184094693175086500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 n * A016900 n

end

end A016903.P17184094693175086500

namespace A016903

/-- `A016899(n)*A016900(n)` -/
def P17184094693175086500.Spec : Prop :=
  ∀ n, P17184094693175086500.a n = A016903 n

theorem P17184094693175086500.correct : P17184094693175086500.Spec := by
  intro n
  simp only [A016903, Nat.add_sub_cancel, A016903.P17184094693175086500.a, A016903.P1953682218511685154.a, A016899, A016899.P5984754013059427978.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016903

/-! ## A016903.P9967023271084194014

`A016904(n)/A016897(n)`
-/

namespace A016903.P9967023271084194014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016904 n : ℚ) / (A016897 n : ℚ)

end

end A016903.P9967023271084194014

namespace A016903

/-- `A016904(n)/A016897(n)` -/
def P9967023271084194014.Spec : Prop :=
  ∀ n, P9967023271084194014.a n = (A016903 n : ℚ)

end A016903

/-! ## A016903.P11077137125707645934

`A016898(n)²*A016899(n)`
-/

namespace A016903.P11077137125707645934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n ^ 2 * A016899 n

end

end A016903.P11077137125707645934

namespace A016903

/-- `A016898(n)²*A016899(n)` -/
def P11077137125707645934.Spec : Prop :=
  ∀ n, P11077137125707645934.a n = A016903 n

theorem P11077137125707645934.correct : P11077137125707645934.Spec := by
  intro n
  simp only [A016903, Nat.add_sub_cancel, A016903.P11077137125707645934.a, A016903.P1953682218511685154.a, A016898, A016898.P14343272817953415938.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016903

/-! ## A016903.P11121664554917773891

`A016899(n)²*A016897(n)`
-/

namespace A016903.P11121664554917773891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 n ^ 2 * A016897 n

end

end A016903.P11121664554917773891

namespace A016903

/-- `A016899(n)²*A016897(n)` -/
def P11121664554917773891.Spec : Prop :=
  ∀ n, P11121664554917773891.a n = A016903 n

theorem P11121664554917773891.correct : P11121664554917773891.Spec := by
  intro n
  simp only [A016903, Nat.add_sub_cancel, A016903.P11121664554917773891.a, A016903.P1953682218511685154.a, A016897, A016897.P9287350145607759688.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016903

/-! ## A016903.P14098139672689637722

`A016900(n)²/A016897(n)`
-/

namespace A016903.P14098139672689637722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 n ^ 2 : ℚ) / (A016897 n : ℚ)

end

end A016903.P14098139672689637722

namespace A016903

/-- `A016900(n)²/A016897(n)` -/
def P14098139672689637722.Spec : Prop :=
  ∀ n, P14098139672689637722.a n = (A016903 n : ℚ)

end A016903

/-! ## A016903.P1804474871901925819

`A016901(n)²/A016899(n)`
-/

namespace A016903.P1804474871901925819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016901 n ^ 2 : ℚ) / (A016899 n : ℚ)

end

end A016903.P1804474871901925819

namespace A016903

/-- `A016901(n)²/A016899(n)` -/
def P1804474871901925819.Spec : Prop :=
  ∀ n, P1804474871901925819.a n = (A016903 n : ℚ)

end A016903

/-! ## A016903.P12460980766175886176

`A016898(n)²²/A016897(n)`
-/

namespace A016903.P12460980766175886176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016898 n ^ 2) ^ 2 : ℚ) / (A016897 n : ℚ)

end

end A016903.P12460980766175886176

namespace A016903

/-- `A016898(n)²²/A016897(n)` -/
def P12460980766175886176.Spec : Prop :=
  ∀ n, P12460980766175886176.a n = (A016903 n : ℚ)

end A016903

/-! ## A016903.P12576209273341809900

`A016900(n)/A016901(n)*A016900(n)²`
-/

namespace A016903.P12576209273341809900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 n : ℚ) / (A016901 n : ℚ) * (A016900 n ^ 2 : ℚ)

end

end A016903.P12576209273341809900

namespace A016903

/-- `A016900(n)/A016901(n)*A016900(n)²` -/
def P12576209273341809900.Spec : Prop :=
  ∀ n, P12576209273341809900.a n = (A016903 n : ℚ)

end A016903

/-! ## A016903.P12608574053506832732

`A001015(5*n+4)`
-/

namespace A016903.P12608574053506832732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (5 * n + 4)

end

end A016903.P12608574053506832732

namespace A016903

/-- `A001015(5*n+4)` -/
def P12608574053506832732.Spec : Prop :=
  ∀ n, P12608574053506832732.a n = A016903 n

end A016903

/-!
# A016904: a(n) = (5*n + 4)^8.

The programs for A016904, the canonical program `A016904.P2651510011051962688` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016904 has offset 0).

The definition of A016904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^8` (program `A016904.P2651510011051962688`, by `A016904.P2651510011051962688.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016904.P2651510011051962688

`(5*n+4)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016904

/-- `(5*n+4)^8` -/
def P2651510011051962688.Spec : Prop :=
  ∀ n, (P2651510011051962688.a n : ℤ) = A016904 n

theorem P2651510011051962688.correct : P2651510011051962688.Spec := by
  intro n
  simp only [A016904]

end A016904

/-! ## A016904.P11845430198235536639

`(record[xor(3, n)]+n+1)²²²`
-/

namespace A016904.P11845430198235536639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n + 1) ^ 2) ^ 2) ^ 2

end

end A016904.P11845430198235536639

namespace A016904

/-- `(record[xor(3, n)]+n+1)²²²` -/
def P11845430198235536639.Spec : Prop :=
  ∀ n, (P11845430198235536639.a n : ℤ) = A016904 n

end A016904

/-! ## A016904.P1715569503452097709

`(Δ[C(2*n, 2)]+n+3)²²²`
-/

namespace A016904.P1715569503452097709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 3 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016904.P1715569503452097709

namespace A016904

/-- `(Δ[C(2*n, 2)]+n+3)²²²` -/
def P1715569503452097709.Spec : Prop :=
  ∀ n, P1715569503452097709.a n = A016904 n

end A016904

/-! ## A016904.P5878300257961550779

`((n+2)²-lcm(n, n-1))²²²`
-/

namespace A016904.P5878300257961550779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((n + 2) ^ 2 : ℤ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016904.P5878300257961550779

namespace A016904

/-- `((n+2)²-lcm(n, n-1))²²²` -/
def P5878300257961550779.Spec : Prop :=
  ∀ n, P5878300257961550779.a n = A016904 n

end A016904

/-! ## A016904.P15501095048230909939

`A016900(n)²`
-/

namespace A016904.P15501095048230909939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 n ^ 2

end

end A016904.P15501095048230909939

namespace A016904

/-- `A016900(n)²` -/
def P15501095048230909939.Spec : Prop :=
  ∀ n, P15501095048230909939.a n = A016904 n

theorem P15501095048230909939.correct : P15501095048230909939.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P15501095048230909939.a, A016904.P2651510011051962688.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P966977131657952635

`A016898(n)²²`
-/

namespace A016904.P966977131657952635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016898 n ^ 2) ^ 2

end

end A016904.P966977131657952635

namespace A016904

/-- `A016898(n)²²` -/
def P966977131657952635.Spec : Prop :=
  ∀ n, P966977131657952635.a n = A016904 n

theorem P966977131657952635.correct : P966977131657952635.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P966977131657952635.a, A016904.P2651510011051962688.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P14855588728896070299

`(A016897(n)^4)²`
-/

namespace A016904.P14855588728896070299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n ^ 4) ^ 2

end

end A016904.P14855588728896070299

namespace A016904

/-- `(A016897(n)^4)²` -/
def P14855588728896070299.Spec : Prop :=
  ∀ n, P14855588728896070299.a n = A016904 n

theorem P14855588728896070299.correct : P14855588728896070299.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P14855588728896070299.a, A016904.P2651510011051962688.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P9460957664922436591

`((A016885(n)+1)^4)²`
-/

namespace A016904.P9460957664922436591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 n + 1) ^ 4) ^ 2

end

end A016904.P9460957664922436591

namespace A016904

/-- `((A016885(n)+1)^4)²` -/
def P9460957664922436591.Spec : Prop :=
  ∀ n, P9460957664922436591.a n = A016904 n

theorem P9460957664922436591.correct : P9460957664922436591.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P9460957664922436591.a, A016904.P2651510011051962688.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P2299737572241656439

`(A016873(n)+2)²²²`
-/

namespace A016904.P2299737572241656439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016873 n + 2) ^ 2) ^ 2) ^ 2

end

end A016904.P2299737572241656439

namespace A016904

/-- `(A016873(n)+2)²²²` -/
def P2299737572241656439.Spec : Prop :=
  ∀ n, P2299737572241656439.a n = A016904 n

theorem P2299737572241656439.correct : P2299737572241656439.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P2299737572241656439.a, A016904.P2651510011051962688.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P121765722650316537

`(A017365(n)/2)²²²`
-/

namespace A016904.P121765722650316537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A017365 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016904.P121765722650316537

namespace A016904

/-- `(A017365(n)/2)²²²` -/
def P121765722650316537.Spec : Prop :=
  ∀ n, P121765722650316537.a n = (A016904 n : ℚ)

theorem P121765722650316537.correct : P121765722650316537.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P121765722650316537.a, A016904.P2651510011051962688.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P15084398653388331311

`(n-A016957(n))²²²`
-/

namespace A016904.P15084398653388331311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A016957 n) ^ 2) ^ 2) ^ 2

end

end A016904.P15084398653388331311

namespace A016904

/-- `(n-A016957(n))²²²` -/
def P15084398653388331311.Spec : Prop :=
  ∀ n, P15084398653388331311.a n = A016904 n

theorem P15084398653388331311.correct : P15084398653388331311.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P15084398653388331311.a, A016904.P2651510011051962688.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P6305742584722904429

`(A180577(n+1)+1)²²`
-/

namespace A016904.P6305742584722904429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A180577 (n + 1) + 1) ^ 2) ^ 2

end

end A016904.P6305742584722904429

namespace A016904

/-- `(A180577(n+1)+1)²²` -/
def P6305742584722904429.Spec : Prop :=
  ∀ n, P6305742584722904429.a n = A016904 n

theorem P6305742584722904429.correct : P6305742584722904429.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P6305742584722904429.a, A016904.P2651510011051962688.a, A180577, A180577.P1057012075480708171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P14811850015154057464

`((A004767(n)+n+1)^4)²`
-/

namespace A016904.P14811850015154057464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004767 n + (n + 1 : ℤ)) ^ 4) ^ 2

end

end A016904.P14811850015154057464

namespace A016904

/-- `((A004767(n)+n+1)^4)²` -/
def P14811850015154057464.Spec : Prop :=
  ∀ n, P14811850015154057464.a n = A016904 n

theorem P14811850015154057464.correct : P14811850015154057464.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P14811850015154057464.a, A016904.P2651510011051962688.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P7086154716745704788

`((A016969(n)-(n+1))^4)²`
-/

namespace A016904.P7086154716745704788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016969 n - (n + 1 : ℤ)) ^ 4) ^ 2

end

end A016904.P7086154716745704788

namespace A016904

/-- `((A016969(n)-(n+1))^4)²` -/
def P7086154716745704788.Spec : Prop :=
  ∀ n, P7086154716745704788.a n = A016904 n

theorem P7086154716745704788.correct : P7086154716745704788.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P7086154716745704788.a, A016904.P2651510011051962688.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P9933243906962092442

`A016897(n)*A016903(n)`
-/

namespace A016904.P9933243906962092442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n * A016903 n

end

end A016904.P9933243906962092442

namespace A016904

/-- `A016897(n)*A016903(n)` -/
def P9933243906962092442.Spec : Prop :=
  ∀ n, P9933243906962092442.a n = A016904 n

theorem P9933243906962092442.correct : P9933243906962092442.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P9933243906962092442.a, A016904.P2651510011051962688.a, A016897, A016897.P9287350145607759688.a, A016903, A016903.P1953682218511685154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P2756099598940917698

`A016898(n)*A016902(n)`
-/

namespace A016904.P2756099598940917698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n * A016902 n

end

end A016904.P2756099598940917698

namespace A016904

/-- `A016898(n)*A016902(n)` -/
def P2756099598940917698.Spec : Prop :=
  ∀ n, P2756099598940917698.a n = A016904 n

theorem P2756099598940917698.correct : P2756099598940917698.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P2756099598940917698.a, A016904.P2651510011051962688.a, A016898, A016898.P14343272817953415938.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P3114945918470934229

`A016899(n)*A016901(n)`
-/

namespace A016904.P3114945918470934229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 n * A016901 n

end

end A016904.P3114945918470934229

namespace A016904

/-- `A016899(n)*A016901(n)` -/
def P3114945918470934229.Spec : Prop :=
  ∀ n, P3114945918470934229.a n = A016904 n

theorem P3114945918470934229.correct : P3114945918470934229.Spec := by
  intro n
  simp only [A016904, Nat.add_sub_cancel, A016904.P3114945918470934229.a, A016904.P2651510011051962688.a, A016899, A016899.P5984754013059427978.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016904

/-! ## A016904.P18194863497311905667

`A016901(n)²/A016897(n)²`
-/

namespace A016904.P18194863497311905667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016901 n ^ 2 : ℚ) / (A016897 n ^ 2 : ℚ)

end

end A016904.P18194863497311905667

namespace A016904

/-- `A016901(n)²/A016897(n)²` -/
def P18194863497311905667.Spec : Prop :=
  ∀ n, P18194863497311905667.a n = (A016904 n : ℚ)

end A016904

/-! ## A016904.P4338075499573848669

`A016902(n)/(1/A016897(n))²`
-/

namespace A016904.P4338075499573848669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016902 n : ℚ) / (1 / (A016897 n : ℚ)) ^ 2

end

end A016904.P4338075499573848669

namespace A016904

/-- `A016902(n)/(1/A016897(n))²` -/
def P4338075499573848669.Spec : Prop :=
  ∀ n, P4338075499573848669.a n = (A016904 n : ℚ)

end A016904

/-!
# A016905: a(n) = (5*n + 4)^9.

The programs for A016905, the canonical program `A016905.P13334272319696603784` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016905 has offset 0).

The definition of A016905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^9` (program `A016905.P13334272319696603784`, by `A016905.P13334272319696603784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016905.P13334272319696603784

`(5*n+4)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016905

/-- `(5*n+4)^9` -/
def P13334272319696603784.Spec : Prop :=
  ∀ n, (P13334272319696603784.a n : ℤ) = A016905 n

theorem P13334272319696603784.correct : P13334272319696603784.Spec := by
  intro n
  simp only [A016905]

end A016905

/-! ## A016905.P15826510746435714811

`sqrt(A016902(n)^3)`
-/

namespace A016905.P15826510746435714811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016902 n ^ 3 : ℝ)

end

end A016905.P15826510746435714811

namespace A016905

/-- `sqrt(A016902(n)^3)` -/
def P15826510746435714811.Spec : Prop :=
  ∀ n, P15826510746435714811.a n = (A016905 n : ℝ)

end A016905

/-! ## A016905.P10602739694564891090

`A016897(n)*A016904(n)`
-/

namespace A016905.P10602739694564891090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n * A016904 n

end

end A016905.P10602739694564891090

namespace A016905

/-- `A016897(n)*A016904(n)` -/
def P10602739694564891090.Spec : Prop :=
  ∀ n, P10602739694564891090.a n = A016905 n

theorem P10602739694564891090.correct : P10602739694564891090.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P10602739694564891090.a, A016905.P13334272319696603784.a, A016897, A016897.P9287350145607759688.a, A016904, A016904.P2651510011051962688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P14365811550427228814

`A016898(n)*A016903(n)`
-/

namespace A016905.P14365811550427228814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n * A016903 n

end

end A016905.P14365811550427228814

namespace A016905

/-- `A016898(n)*A016903(n)` -/
def P14365811550427228814.Spec : Prop :=
  ∀ n, P14365811550427228814.a n = A016905 n

theorem P14365811550427228814.correct : P14365811550427228814.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P14365811550427228814.a, A016905.P13334272319696603784.a, A016898, A016898.P14343272817953415938.a, A016903, A016903.P1953682218511685154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P9895488603685201960

`A016899(n)*A016902(n)`
-/

namespace A016905.P9895488603685201960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 n * A016902 n

end

end A016905.P9895488603685201960

namespace A016905

/-- `A016899(n)*A016902(n)` -/
def P9895488603685201960.Spec : Prop :=
  ∀ n, P9895488603685201960.a n = A016905 n

theorem P9895488603685201960.correct : P9895488603685201960.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P9895488603685201960.a, A016905.P13334272319696603784.a, A016899, A016899.P5984754013059427978.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P16264885502058987534

`A016900(n)*A016901(n)`
-/

namespace A016905.P16264885502058987534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 n * A016901 n

end

end A016905.P16264885502058987534

namespace A016905

/-- `A016900(n)*A016901(n)` -/
def P16264885502058987534.Spec : Prop :=
  ∀ n, P16264885502058987534.a n = A016905 n

theorem P16264885502058987534.correct : P16264885502058987534.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P16264885502058987534.a, A016905.P13334272319696603784.a, A016900, A016900.P7752663066395658380.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P1887062447310932375

`A016897(n)²*A016903(n)`
-/

namespace A016905.P1887062447310932375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n ^ 2 * A016903 n

end

end A016905.P1887062447310932375

namespace A016905

/-- `A016897(n)²*A016903(n)` -/
def P1887062447310932375.Spec : Prop :=
  ∀ n, P1887062447310932375.a n = A016905 n

theorem P1887062447310932375.correct : P1887062447310932375.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P1887062447310932375.a, A016905.P13334272319696603784.a, A016897, A016897.P9287350145607759688.a, A016903, A016903.P1953682218511685154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P15123834550256349434

`A016898(n)²*A016901(n)`
-/

namespace A016905.P15123834550256349434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n ^ 2 * A016901 n

end

end A016905.P15123834550256349434

namespace A016905

/-- `A016898(n)²*A016901(n)` -/
def P15123834550256349434.Spec : Prop :=
  ∀ n, P15123834550256349434.a n = A016905 n

theorem P15123834550256349434.correct : P15123834550256349434.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P15123834550256349434.a, A016905.P13334272319696603784.a, A016898, A016898.P14343272817953415938.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P12709351082651453764

`A016900(n)²*A016897(n)`
-/

namespace A016905.P12709351082651453764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 n ^ 2 * A016897 n

end

end A016905.P12709351082651453764

namespace A016905

/-- `A016900(n)²*A016897(n)` -/
def P12709351082651453764.Spec : Prop :=
  ∀ n, P12709351082651453764.a n = A016905 n

theorem P12709351082651453764.correct : P12709351082651453764.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P12709351082651453764.a, A016905.P13334272319696603784.a, A016897, A016897.P9287350145607759688.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P13956729723577260261

`A016901(n)²/A016897(n)`
-/

namespace A016905.P13956729723577260261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016901 n ^ 2 : ℚ) / (A016897 n : ℚ)

end

end A016905.P13956729723577260261

namespace A016905

/-- `A016901(n)²/A016897(n)` -/
def P13956729723577260261.Spec : Prop :=
  ∀ n, P13956729723577260261.a n = (A016905 n : ℚ)

end A016905

/-! ## A016905.P3008836334737308370

`A016898(n)²²*A016897(n)`
-/

namespace A016905.P3008836334737308370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016898 n ^ 2) ^ 2 * A016897 n

end

end A016905.P3008836334737308370

namespace A016905

/-- `A016898(n)²²*A016897(n)` -/
def P3008836334737308370.Spec : Prop :=
  ∀ n, P3008836334737308370.a n = A016905 n

theorem P3008836334737308370.correct : P3008836334737308370.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P3008836334737308370.a, A016905.P13334272319696603784.a, A016897, A016897.P9287350145607759688.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P692142944686390944

`A016903(n)/A016901(n)*A016903(n)`
-/

namespace A016905.P692142944686390944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016903 n : ℚ) / (A016901 n : ℚ) * (A016903 n : ℚ)

end

end A016905.P692142944686390944

namespace A016905

/-- `A016903(n)/A016901(n)*A016903(n)` -/
def P692142944686390944.Spec : Prop :=
  ∀ n, P692142944686390944.a n = (A016905 n : ℚ)

end A016905

/-! ## A016905.P17863402695038296259

`A016897(n)*A016902(n)*A016897(n)²`
-/

namespace A016905.P17863402695038296259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n * A016902 n * A016897 n ^ 2

end

end A016905.P17863402695038296259

namespace A016905

/-- `A016897(n)*A016902(n)*A016897(n)²` -/
def P17863402695038296259.Spec : Prop :=
  ∀ n, P17863402695038296259.a n = A016905 n

theorem P17863402695038296259.correct : P17863402695038296259.Spec := by
  intro n
  simp only [A016905, Nat.add_sub_cancel, A016905.P17863402695038296259.a, A016905.P13334272319696603784.a, A016897, A016897.P9287350145607759688.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016905

/-! ## A016905.P11088823068841536320

`A001017(5*n+4)`
-/

namespace A016905.P11088823068841536320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (5 * n + 4)

end

end A016905.P11088823068841536320

namespace A016905

/-- `A001017(5*n+4)` -/
def P11088823068841536320.Spec : Prop :=
  ∀ n, P11088823068841536320.a n = A016905 n

end A016905

/-!
# A016906: a(n) = (5*n + 4)^10.

The programs for A016906, the canonical program `A016906.P8113439274757236571` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016906 has offset 0).

The definition of A016906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^10` (program `A016906.P8113439274757236571`, by `A016906.P8113439274757236571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016906.P8113439274757236571

`(5*n+4)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016906

/-- `(5*n+4)^10` -/
def P8113439274757236571.Spec : Prop :=
  ∀ n, (P8113439274757236571.a n : ℤ) = A016906 n

theorem P8113439274757236571.correct : P8113439274757236571.Spec := by
  intro n
  simp only [A016906]

end A016906

/-! ## A016906.P6210397737740997429

`A016901(n)²`
-/

namespace A016906.P6210397737740997429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016901 n ^ 2

end

end A016906.P6210397737740997429

namespace A016906

/-- `A016901(n)²` -/
def P6210397737740997429.Spec : Prop :=
  ∀ n, P6210397737740997429.a n = A016906 n

theorem P6210397737740997429.correct : P6210397737740997429.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P6210397737740997429.a, A016906.P8113439274757236571.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P10409289832784644268

`(A016897(n)^5)²`
-/

namespace A016906.P10409289832784644268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n ^ 5) ^ 2

end

end A016906.P10409289832784644268

namespace A016906

/-- `(A016897(n)^5)²` -/
def P10409289832784644268.Spec : Prop :=
  ∀ n, P10409289832784644268.a n = A016906 n

theorem P10409289832784644268.correct : P10409289832784644268.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P10409289832784644268.a, A016906.P8113439274757236571.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P17225307287431479439

`sqrt(A016900(n)^5)`
-/

namespace A016906.P17225307287431479439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016900 n ^ 5 : ℝ)

end

end A016906.P17225307287431479439

namespace A016906

/-- `sqrt(A016900(n)^5)` -/
def P17225307287431479439.Spec : Prop :=
  ∀ n, P17225307287431479439.a n = (A016906 n : ℝ)

end A016906

/-! ## A016906.P11915020622228649448

`((A016885(n)+1)^5)²`
-/

namespace A016906.P11915020622228649448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 n + 1) ^ 5) ^ 2

end

end A016906.P11915020622228649448

namespace A016906

/-- `((A016885(n)+1)^5)²` -/
def P11915020622228649448.Spec : Prop :=
  ∀ n, P11915020622228649448.a n = A016906 n

theorem P11915020622228649448.correct : P11915020622228649448.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P11915020622228649448.a, A016906.P8113439274757236571.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P11956376053833326242

`A016899(n)*A016903(n)`
-/

namespace A016906.P11956376053833326242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 n * A016903 n

end

end A016906.P11956376053833326242

namespace A016906

/-- `A016899(n)*A016903(n)` -/
def P11956376053833326242.Spec : Prop :=
  ∀ n, P11956376053833326242.a n = A016906 n

theorem P11956376053833326242.correct : P11956376053833326242.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P11956376053833326242.a, A016906.P8113439274757236571.a, A016899, A016899.P5984754013059427978.a, A016903, A016903.P1953682218511685154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P6431360287222627952

`A016900(n)*A016902(n)`
-/

namespace A016906.P6431360287222627952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 n * A016902 n

end

end A016906.P6431360287222627952

namespace A016906

/-- `A016900(n)*A016902(n)` -/
def P6431360287222627952.Spec : Prop :=
  ∀ n, P6431360287222627952.a n = A016906 n

theorem P6431360287222627952.correct : P6431360287222627952.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P6431360287222627952.a, A016906.P8113439274757236571.a, A016900, A016900.P7752663066395658380.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P9388074670938986978

`(A016897(n)*A016900(n))²`
-/

namespace A016906.P9388074670938986978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n * A016900 n) ^ 2

end

end A016906.P9388074670938986978

namespace A016906

/-- `(A016897(n)*A016900(n))²` -/
def P9388074670938986978.Spec : Prop :=
  ∀ n, P9388074670938986978.a n = A016906 n

theorem P9388074670938986978.correct : P9388074670938986978.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P9388074670938986978.a, A016906.P8113439274757236571.a, A016897, A016897.P9287350145607759688.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P1333380078641081700

`A016897(n)²*A016904(n)`
-/

namespace A016906.P1333380078641081700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n ^ 2 * A016904 n

end

end A016906.P1333380078641081700

namespace A016906

/-- `A016897(n)²*A016904(n)` -/
def P1333380078641081700.Spec : Prop :=
  ∀ n, P1333380078641081700.a n = A016906 n

theorem P1333380078641081700.correct : P1333380078641081700.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P1333380078641081700.a, A016906.P8113439274757236571.a, A016897, A016897.P9287350145607759688.a, A016904, A016904.P2651510011051962688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P3002815119943889419

`(A016898(n)*A016899(n))²`
-/

namespace A016906.P3002815119943889419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016898 n * A016899 n) ^ 2

end

end A016906.P3002815119943889419

namespace A016906

/-- `(A016898(n)*A016899(n))²` -/
def P3002815119943889419.Spec : Prop :=
  ∀ n, P3002815119943889419.a n = A016906 n

theorem P3002815119943889419.correct : P3002815119943889419.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P3002815119943889419.a, A016906.P8113439274757236571.a, A016898, A016898.P14343272817953415938.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P15768832689044098647

`A016898(n)²*A016902(n)`
-/

namespace A016906.P15768832689044098647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n ^ 2 * A016902 n

end

end A016906.P15768832689044098647

namespace A016906

/-- `A016898(n)²*A016902(n)` -/
def P15768832689044098647.Spec : Prop :=
  ∀ n, P15768832689044098647.a n = A016906 n

theorem P15768832689044098647.correct : P15768832689044098647.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P15768832689044098647.a, A016906.P8113439274757236571.a, A016898, A016898.P14343272817953415938.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P3600017332736350102

`A016899(n)²*A016900(n)`
-/

namespace A016906.P3600017332736350102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 n ^ 2 * A016900 n

end

end A016906.P3600017332736350102

namespace A016906

/-- `A016899(n)²*A016900(n)` -/
def P3600017332736350102.Spec : Prop :=
  ∀ n, P3600017332736350102.a n = A016906 n

theorem P3600017332736350102.correct : P3600017332736350102.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P3600017332736350102.a, A016906.P8113439274757236571.a, A016899, A016899.P5984754013059427978.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P2023904153760339868

`A016900(n)²*A016898(n)`
-/

namespace A016906.P2023904153760339868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 n ^ 2 * A016898 n

end

end A016906.P2023904153760339868

namespace A016906

/-- `A016900(n)²*A016898(n)` -/
def P2023904153760339868.Spec : Prop :=
  ∀ n, P2023904153760339868.a n = A016906 n

theorem P2023904153760339868.correct : P2023904153760339868.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P2023904153760339868.a, A016906.P8113439274757236571.a, A016898, A016898.P14343272817953415938.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P10934479933480557939

`(A016902(n)/A016897(n))²`
-/

namespace A016906.P10934479933480557939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016902 n : ℚ) / (A016897 n : ℚ)) ^ 2

end

end A016906.P10934479933480557939

namespace A016906

/-- `(A016902(n)/A016897(n))²` -/
def P10934479933480557939.Spec : Prop :=
  ∀ n, P10934479933480557939.a n = (A016906 n : ℚ)

end A016906

/-! ## A016906.P6625893267656720805

`(A016903(n)/A016898(n))²`
-/

namespace A016906.P6625893267656720805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016903 n : ℚ) / (A016898 n : ℚ)) ^ 2

end

end A016906.P6625893267656720805

namespace A016906

/-- `(A016903(n)/A016898(n))²` -/
def P6625893267656720805.Spec : Prop :=
  ∀ n, P6625893267656720805.a n = (A016906 n : ℚ)

end A016906

/-! ## A016906.P3259886517414190923

`∪[A017321(n), A017381(n)]²`
-/

namespace A016906.P3259886517414190923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017381 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A016906.P3259886517414190923

namespace A016906

/-- `∪[A017321(n), A017381(n)]²` -/
def P3259886517414190923.Spec : Prop :=
  ∀ n, (P3259886517414190923.a n : ℤ) = A016906 n

end A016906

/-! ## A016906.P4383699065319503179

`(A016897(n)²*A016899(n))²`
-/

namespace A016906.P4383699065319503179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n ^ 2 * A016899 n) ^ 2

end

end A016906.P4383699065319503179

namespace A016906

/-- `(A016897(n)²*A016899(n))²` -/
def P4383699065319503179.Spec : Prop :=
  ∀ n, P4383699065319503179.a n = A016906 n

theorem P4383699065319503179.correct : P4383699065319503179.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P4383699065319503179.a, A016906.P8113439274757236571.a, A016897, A016897.P9287350145607759688.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P12371569097963457334

`(A016898(n)²*A016897(n))²`
-/

namespace A016906.P12371569097963457334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016898 n ^ 2 * A016897 n) ^ 2

end

end A016906.P12371569097963457334

namespace A016906

/-- `(A016898(n)²*A016897(n))²` -/
def P12371569097963457334.Spec : Prop :=
  ∀ n, P12371569097963457334.a n = A016906 n

theorem P12371569097963457334.correct : P12371569097963457334.Spec := by
  intro n
  simp only [A016906, Nat.add_sub_cancel, A016906.P12371569097963457334.a, A016906.P8113439274757236571.a, A016897, A016897.P9287350145607759688.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016906

/-! ## A016906.P10784625215821015184

`(A016903(n)/A016897(n)²)²`
-/

namespace A016906.P10784625215821015184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016903 n : ℚ) / (A016897 n ^ 2 : ℚ)) ^ 2

end

end A016906.P10784625215821015184

namespace A016906

/-- `(A016903(n)/A016897(n)²)²` -/
def P10784625215821015184.Spec : Prop :=
  ∀ n, P10784625215821015184.a n = (A016906 n : ℚ)

end A016906

/-!
# A016907: a(n) = (5*n + 4)^11.

The programs for A016907, the canonical program `A016907.P15930316124575334873` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016907 has offset 0).

The definition of A016907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+4)^11` (program `A016907.P15930316124575334873`, by `A016907.P15930316124575334873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016907.P15930316124575334873

`(5*n+4)^11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016907

/-- `(5*n+4)^11` -/
def P15930316124575334873.Spec : Prop :=
  ∀ n, (P15930316124575334873.a n : ℤ) = A016907 n

theorem P15930316124575334873.correct : P15930316124575334873.Spec := by
  intro n
  simp only [A016907]

end A016907

/-! ## A016907.P12059866866401520491

`A016900(n)*A016903(n)`
-/

namespace A016907.P12059866866401520491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 n * A016903 n

end

end A016907.P12059866866401520491

namespace A016907

/-- `A016900(n)*A016903(n)` -/
def P12059866866401520491.Spec : Prop :=
  ∀ n, P12059866866401520491.a n = A016907 n

theorem P12059866866401520491.correct : P12059866866401520491.Spec := by
  intro n
  simp only [A016907, Nat.add_sub_cancel, A016907.P12059866866401520491.a, A016907.P15930316124575334873.a, A016900, A016900.P7752663066395658380.a, A016903, A016903.P1953682218511685154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016907

/-! ## A016907.P102605861556084609

`A016901(n)*A016902(n)`
-/

namespace A016907.P102605861556084609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016901 n * A016902 n

end

end A016907.P102605861556084609

namespace A016907

/-- `A016901(n)*A016902(n)` -/
def P102605861556084609.Spec : Prop :=
  ∀ n, P102605861556084609.a n = A016907 n

theorem P102605861556084609.correct : P102605861556084609.Spec := by
  intro n
  simp only [A016907, Nat.add_sub_cancel, A016907.P102605861556084609.a, A016907.P15930316124575334873.a, A016901, A016901.P18013072888350577229.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016907

/-! ## A016907.P1964077041516946526

`A016906(n)/2*A017365(n)`
-/

namespace A016907.P1964077041516946526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016906 n : ℚ) / 2 * (A017365 n : ℚ)

end

end A016907.P1964077041516946526

namespace A016907

/-- `A016906(n)/2*A017365(n)` -/
def P1964077041516946526.Spec : Prop :=
  ∀ n, P1964077041516946526.a n = (A016907 n : ℚ)

theorem P1964077041516946526.correct : P1964077041516946526.Spec := by
  intro n
  simp only [A016907, Nat.add_sub_cancel, A016907.P1964077041516946526.a, A016907.P15930316124575334873.a, A016906, A016906.P8113439274757236571.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016907

/-! ## A016907.P17246110161801084584

`(A016897(n)*A016900(n))²*A016897(n)`
-/

namespace A016907.P17246110161801084584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n * A016900 n) ^ 2 * A016897 n

end

end A016907.P17246110161801084584

namespace A016907

/-- `(A016897(n)*A016900(n))²*A016897(n)` -/
def P17246110161801084584.Spec : Prop :=
  ∀ n, P17246110161801084584.a n = A016907 n

theorem P17246110161801084584.correct : P17246110161801084584.Spec := by
  intro n
  simp only [A016907, Nat.add_sub_cancel, A016907.P17246110161801084584.a, A016907.P15930316124575334873.a, A016897, A016897.P9287350145607759688.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016907

/-! ## A016907.P14280809534080842537

`A008455(A016897(n))`
-/

namespace A016907.P14280809534080842537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016897 n).toNat

end

end A016907.P14280809534080842537

namespace A016907

/-- `A008455(A016897(n))` -/
def P14280809534080842537.Spec : Prop :=
  ∀ n, P14280809534080842537.a n = A016907 n

end A016907

/-! ## A016907.P4633240720307854702

`A008455(A016969(n)-(n+1))`
-/

namespace A016907.P4633240720307854702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n - (n + 1 : ℤ)).toNat

end

end A016907.P4633240720307854702

namespace A016907

/-- `A008455(A016969(n)-(n+1))` -/
def P4633240720307854702.Spec : Prop :=
  ∀ n, P4633240720307854702.a n = A016907 n

end A016907

/-! ## A016907.P17408699779050581566

`A008455(A016969(n)-1-n)`
-/

namespace A016907.P17408699779050581566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n - 1 - (n : ℤ)).toNat

end

end A016907.P17408699779050581566

namespace A016907

/-- `A008455(A016969(n)-1-n)` -/
def P17408699779050581566.Spec : Prop :=
  ∀ n, P17408699779050581566.a n = A016907 n

end A016907

/-! ## A016907.P7946712666962225543

`A008455(A017617(n)/2-n)`
-/

namespace A016907.P7946712666962225543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (SequenceMachineLib.roundAway ((A017617 n : ℚ) / 2 - (n : ℚ))).toNat

end

end A016907.P7946712666962225543

namespace A016907

/-- `A008455(A017617(n)/2-n)` -/
def P7946712666962225543.Spec : Prop :=
  ∀ n, P7946712666962225543.a n = A016907 n

end A016907

/-! ## A016907.P12707810827454534004

`A008455(A008588(n+1)-(n+2))`
-/

namespace A016907.P12707810827454534004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 (n + 1) - (n + 2 : ℤ)).toNat

end

end A016907.P12707810827454534004

namespace A016907

/-- `A008455(A008588(n+1)-(n+2))` -/
def P12707810827454534004.Spec : Prop :=
  ∀ n, P12707810827454534004.a n = A016907 n

end A016907

/-! ## A016907.P10790077595356805589

`A008455(A008585(n+1)+2*n+1)`
-/

namespace A016907.P10790077595356805589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A016907.P10790077595356805589

namespace A016907

/-- `A008455(A008585(n+1)+2*n+1)` -/
def P10790077595356805589.Spec : Prop :=
  ∀ n, P10790077595356805589.a n = A016907 n

end A016907

/-!
# A016908: 

The programs for A016908, there is no canonical definition to state claims against.
-/

/-! ## A016908.P15443044180089021765

`(5*n+4)^12`
-/

namespace A016908.P15443044180089021765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * n + 4) ^ 12

end

end A016908.P15443044180089021765

/-! ## A016908.P8387569842936091562

`A016902(n)²`
-/

namespace A016908.P8387569842936091562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016902 n ^ 2

end

end A016908.P8387569842936091562

/-! ## A016908.P6501456679196034459

`(A016897(n)^6)²`
-/

namespace A016908.P6501456679196034459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n ^ 6) ^ 2

end

end A016908.P6501456679196034459

/-! ## A016908.P18347252785033738226

`(A016900(n)/A016897(n))²²`
-/

namespace A016908.P18347252785033738226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A016900 n : ℚ) / (A016897 n : ℚ)) ^ 2) ^ 2

end

end A016908.P18347252785033738226

/-! ## A016908.P1064820967629349782

`sqrt(A016904(n)^3)`
-/

namespace A016908.P1064820967629349782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016904 n ^ 3 : ℝ)

end

end A016908.P1064820967629349782

/-! ## A016908.P968199544926881263

`A008456(A017341(n)/2+1)`
-/

namespace A016908.P968199544926881263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (SequenceMachineLib.roundAway ((A017341 n : ℚ) / 2 + 1)).toNat

end

end A016908.P968199544926881263

/-! ## A016908.P14730108628053495317

`A008456(A004767(n)+1+n)`
-/

namespace A016908.P14730108628053495317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 n + 1 + (n : ℤ)).toNat

end

end A016908.P14730108628053495317

/-! ## A016908.P18128911296148520148

`A008456(A016969(n)-(n+1))`
-/

namespace A016908.P18128911296148520148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016969 n - (n + 1 : ℤ)).toNat

end

end A016908.P18128911296148520148

/-! ## A016908.P3710041712317077089

`A008456(A016969(n)-1-n)`
-/

namespace A016908.P3710041712317077089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016969 n - 1 - (n : ℤ)).toNat

end

end A016908.P3710041712317077089

/-! ## A016908.P97181441380527507

`A000578(A016885(n)+1)²²`
-/

namespace A016908.P97181441380527507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016885 n + 1).toNat ^ 2) ^ 2

end

end A016908.P97181441380527507

/-! ## A016908.P11001961031439360088

`A008456(A008588(n+1)-(n+2))`
-/

namespace A016908.P11001961031439360088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008588 (n + 1) - (n + 2 : ℤ)).toNat

end

end A016908.P11001961031439360088

/-! ## A016908.P7480414231751784483

`A008456(A016777(n+1)+2*n)`
-/

namespace A016908.P7480414231751784483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016777 (n + 1) + (2 * n : ℤ)).toNat

end

end A016908.P7480414231751784483

/-! ## A016908.P7886398419509519602

`A001014(A016777(2*n+1)-n)²`
-/

namespace A016908.P7886398419509519602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A016777 (2 * n + 1) - (n : ℤ)).toNat ^ 2

end

end A016908.P7886398419509519602

/-!
# A016909: Expansion of 1/((1-3*x)*(1-4*x)*(1-9*x)).

The programs for A016909, the canonical program `A016909.P15125234924933395087` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016909 has offset 0).

The definition of A016909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016909.P15125234924933395087

`13*a(n-1)-36*a(n-2)+3^n` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016909

/-- `13*a(n-1)-36*a(n-2)+3^n` -/
def P15125234924933395087.Spec : Prop :=
  ∀ n, P15125234924933395087.a n = A016909 n

theorem P15125234924933395087.correct : P15125234924933395087.Spec := by
  intro n
  simp only [A016909]

end A016909

/-! ## A016909.P14842082448683197498

`3*3^n/2-16*4^n/5+27*9^n/10`
-/

namespace A016909.P14842082448683197498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 3 ^ n : ℚ) / 2 - (16 * 4 ^ n : ℚ) / 5 + (27 * 9 ^ n : ℚ) / 10

end

end A016909.P14842082448683197498

namespace A016909

/-- `3*3^n/2-16*4^n/5+27*9^n/10` -/
def P14842082448683197498.Spec : Prop :=
  ∀ n, P14842082448683197498.a n = (A016909 n : ℚ)

theorem P14842082448683197498.correct : P14842082448683197498.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016909, Nat.add_sub_cancel, A016909.P14842082448683197498.a, A016909.P15125234924933395087.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016909, Nat.add_sub_cancel, A016909.P14842082448683197498.a, A016909.P15125234924933395087.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016909

/-!
# A016910: a(n) = (6*n)^2.

The programs for A016910, the canonical program `A016910.P3732514033866141413` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016910 has offset 0).

The definition of A016910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)²` (program `A016910.P3732514033866141413`, by `A016910.P3732514033866141413.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016910.P3732514033866141413

`(6*n)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016910

/-- `(6*n)²` -/
def P3732514033866141413.Spec : Prop :=
  ∀ n, (P3732514033866141413.a n : ℤ) = A016910 n

theorem P3732514033866141413.correct : P3732514033866141413.Spec := by
  intro n
  simp only [A016910]

end A016910

/-!
# A016911: a(n) = (6*n)^3.

The programs for A016911, the canonical program `A016911.P4671614508612182127` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016911 has offset 0).

The definition of A016911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^3` (program `A016911.P4671614508612182127`, by `A016911.P4671614508612182127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016911.P4671614508612182127

`(6*n)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016911

/-- `(6*n)^3` -/
def P4671614508612182127.Spec : Prop :=
  ∀ n, (P4671614508612182127.a n : ℤ) = A016911 n

theorem P4671614508612182127.correct : P4671614508612182127.Spec := by
  intro n
  simp only [A016911]

end A016911

/-!
# A016912: a(n) = (6*n)^4.

The programs for A016912, the canonical program `A016912.P4786313169569101579` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016912 has offset 0).

The definition of A016912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^4` (program `A016912.P4786313169569101579`, by `A016912.P4786313169569101579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016912.P4786313169569101579

`(6*n)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016912

/-- `(6*n)^4` -/
def P4786313169569101579.Spec : Prop :=
  ∀ n, (P4786313169569101579.a n : ℤ) = A016912 n

theorem P4786313169569101579.correct : P4786313169569101579.Spec := by
  intro n
  simp only [A016912]

end A016912

/-!
# A016913: a(n) = (6*n)^5.

The programs for A016913, the canonical program `A016913.P13920726990587131841` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016913 has offset 0).

The definition of A016913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^5` (program `A016913.P13920726990587131841`, by `A016913.P13920726990587131841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016913.P13920726990587131841

`(6*n)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016913

/-- `(6*n)^5` -/
def P13920726990587131841.Spec : Prop :=
  ∀ n, (P13920726990587131841.a n : ℤ) = A016913 n

theorem P13920726990587131841.correct : P13920726990587131841.Spec := by
  intro n
  simp only [A016913]

end A016913

/-!
# A016914: a(n) = (6*n)^6.

The programs for A016914, the canonical program `A016914.P14004034792114916232` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016914 has offset 0).

The definition of A016914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^6` (program `A016914.P14004034792114916232`, by `A016914.P14004034792114916232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016914.P14004034792114916232

`(6*n)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016914

/-- `(6*n)^6` -/
def P14004034792114916232.Spec : Prop :=
  ∀ n, (P14004034792114916232.a n : ℤ) = A016914 n

theorem P14004034792114916232.correct : P14004034792114916232.Spec := by
  intro n
  simp only [A016914]

end A016914

/-!
# A016915: a(n) = (6*n)^7.

The programs for A016915, the canonical program `A016915.P14109322170555830723` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016915 has offset 0).

The definition of A016915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^7` (program `A016915.P14109322170555830723`, by `A016915.P14109322170555830723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016915.P14109322170555830723

`(6*n)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016915

/-- `(6*n)^7` -/
def P14109322170555830723.Spec : Prop :=
  ∀ n, (P14109322170555830723.a n : ℤ) = A016915 n

theorem P14109322170555830723.correct : P14109322170555830723.Spec := by
  intro n
  simp only [A016915]

end A016915

/-!
# A016916: a(n) = (6*n)^8.

The programs for A016916, the canonical program `A016916.P12681314428883819336` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016916 has offset 0).

The definition of A016916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^8` (program `A016916.P12681314428883819336`, by `A016916.P12681314428883819336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016916.P12681314428883819336

`(6*n)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016916

/-- `(6*n)^8` -/
def P12681314428883819336.Spec : Prop :=
  ∀ n, (P12681314428883819336.a n : ℤ) = A016916 n

theorem P12681314428883819336.correct : P12681314428883819336.Spec := by
  intro n
  simp only [A016916]

end A016916

/-!
# A016917: a(n) = (6*n)^9.

The programs for A016917, the canonical program `A016917.P5480137224540999660` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016917 has offset 0).

The definition of A016917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^9` (program `A016917.P5480137224540999660`, by `A016917.P5480137224540999660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016917.P5480137224540999660

`(6*n)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016917

/-- `(6*n)^9` -/
def P5480137224540999660.Spec : Prop :=
  ∀ n, (P5480137224540999660.a n : ℤ) = A016917 n

theorem P5480137224540999660.correct : P5480137224540999660.Spec := by
  intro n
  simp only [A016917]

end A016917

/-!
# A016918: a(n) = (6*n)^10.

The programs for A016918, the canonical program `A016918.P4538732918022585071` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016918 has offset 0).

The definition of A016918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^10` (program `A016918.P4538732918022585071`, by `A016918.P4538732918022585071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016918.P4538732918022585071

`(6*n)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016918

/-- `(6*n)^10` -/
def P4538732918022585071.Spec : Prop :=
  ∀ n, (P4538732918022585071.a n : ℤ) = A016918 n

theorem P4538732918022585071.correct : P4538732918022585071.Spec := by
  intro n
  simp only [A016918]

end A016918

/-!
# A016919: a(n) = (6*n)^11.

The programs for A016919, the canonical program `A016919.P3650114704760816516` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016919 has offset 0).

The definition of A016919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n)^11` (program `A016919.P3650114704760816516`, by `A016919.P3650114704760816516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016919.P3650114704760816516

`(6*n)^11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016919

/-- `(6*n)^11` -/
def P3650114704760816516.Spec : Prop :=
  ∀ n, (P3650114704760816516.a n : ℤ) = A016919 n

theorem P3650114704760816516.correct : P3650114704760816516.Spec := by
  intro n
  simp only [A016919]

end A016919

/-!
# A016920: 

The programs for A016920, there is no canonical definition to state claims against.
-/

/-! ## A016920.P1735760101731075758

`(6*n)^12`
-/

namespace A016920.P1735760101731075758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n) ^ 12

end

end A016920.P1735760101731075758

/-!
# A016921: a(n) = 6*n + 1.

The programs for A016921, the canonical program `A016921.P18318603358862595186` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016921 has offset 0).

The definition of A016921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n+1` (program `A016921.P18318603358862595186`, by `A016921.P18318603358862595186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016921.P18318603358862595186

`6*n+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016921

/-- `6*n+1` -/
def P18318603358862595186.Spec : Prop :=
  ∀ n, (P18318603358862595186.a n : ℤ) = A016921 n

theorem P18318603358862595186.correct : P18318603358862595186.Spec := by
  intro n
  simp only [A016921]

end A016921

/-!
# A016922: a(n) = (6*n + 1)^2.

The programs for A016922, the canonical program `A016922.P12735287873668454303` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016922 has offset 0).

The definition of A016922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)²` (program `A016922.P12735287873668454303`, by `A016922.P12735287873668454303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016922.P12735287873668454303

`(6*n+1)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016922

/-- `(6*n+1)²` -/
def P12735287873668454303.Spec : Prop :=
  ∀ n, (P12735287873668454303.a n : ℤ) = A016922 n

theorem P12735287873668454303.correct : P12735287873668454303.Spec := by
  intro n
  simp only [A016922]

end A016922

/-! ## A016922.P13855835612694454924

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=49, a(2)=169`
-/

namespace A016922.P13855835612694454924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 49, 169] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A016922.P13855835612694454924

namespace A016922

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13855835612694454924.Spec : Prop :=
  ∀ n, P13855835612694454924.a n = A016922 n

theorem P13855835612694454924.correct : P13855835612694454924.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A016922, Nat.add_sub_cancel, A016922.P13855835612694454924.a, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A016922, Nat.add_sub_cancel, A016922.P13855835612694454924.a, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016922

/-! ## A016922.P15195093205160005782

`24*A005449(n)+1`
-/

namespace A016922.P15195093205160005782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A005449 n + 1

end

end A016922.P15195093205160005782

namespace A016922

/-- `24*A005449(n)+1` -/
def P15195093205160005782.Spec : Prop :=
  ∀ n, P15195093205160005782.a n = A016922 n

end A016922

/-! ## A016922.P1913734792375318954

`A016778(2*n)`
-/

namespace A016922.P1913734792375318954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 (2 * n)

end

end A016922.P1913734792375318954

namespace A016922

/-- `A016778(2*n)` -/
def P1913734792375318954.Spec : Prop :=
  ∀ n, P1913734792375318954.a n = A016922 n

theorem P1913734792375318954.correct : P1913734792375318954.Spec := by
  intro n
  simp only [A016922, Nat.add_sub_cancel, A016922.P1913734792375318954.a, A016922.P12735287873668454303.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016922

/-! ## A016922.P13785197006746729213

`A000290(A016921(n))`
-/

namespace A016922.P13785197006746729213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A016921 n).toNat

end

end A016922.P13785197006746729213

namespace A016922

/-- `A000290(A016921(n))` -/
def P13785197006746729213.Spec : Prop :=
  ∀ n, P13785197006746729213.a n = A016922 n

end A016922

/-! ## A016922.P16064602867108196931

`or(1, or(1, 6*n)²)`
-/

namespace A016922.P16064602867108196931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (6 * n) ^ 2)

end

end A016922.P16064602867108196931

namespace A016922

/-- `or(1, or(1, 6*n)²)` -/
def P16064602867108196931.Spec : Prop :=
  ∀ n, (P16064602867108196931.a n : ℤ) = A016922 n

end A016922

/-! ## A016922.P10246780537008629987

`record[(gcd(6, 1-n)+n)²]`
-/

namespace A016922.P10246780537008629987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016922.P10246780537008629987

namespace A016922

/-- `record[(gcd(6, 1-n)+n)²]` -/
def P10246780537008629987.Spec : Prop :=
  ∀ n, (P10246780537008629987.a n : ℤ) = A016922 n

end A016922

/-! ## A016922.P2202457580723611627

`record[gcd(n+1, n%6)²]`
-/

namespace A016922.P2202457580723611627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 6) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016922.P2202457580723611627

namespace A016922

/-- `record[gcd(n+1, n%6)²]` -/
def P2202457580723611627.Spec : Prop :=
  ∀ n, (P2202457580723611627.a n : ℤ) = A016922 n

end A016922

/-! ## A016922.P17244515875860179476

`ceil((sqrt(a(n-1))+6)²)` with `a(0)=1`
-/

namespace A016922.P17244515875860179476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 6) ^ 2⌉

end

end A016922.P17244515875860179476

namespace A016922

/-- `ceil((sqrt(a(n-1))+6)²)` -/
def P17244515875860179476.Spec : Prop :=
  ∀ n, P17244515875860179476.a n = A016922 n

end A016922

/-! ## A016922.P9452489274381400331

`record[(lcm(4, n+1)-(n+3))²]`
-/

namespace A016922.P9452489274381400331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 3 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016922.P9452489274381400331

namespace A016922

/-- `record[(lcm(4, n+1)-(n+3))²]` -/
def P9452489274381400331.Spec : Prop :=
  ∀ n, P9452489274381400331.a n = A016922 n

end A016922

/-! ## A016922.P7089919246032919935

`xor(1, 6*n)²-(3*n)%3`
-/

namespace A016922.P7089919246032919935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (6 * n) ^ 2 : ℤ) - ((3 * n % 3 : ℕ) : ℤ)

end

end A016922.P7089919246032919935

namespace A016922

/-- `xor(1, 6*n)²-(3*n)%3` -/
def P7089919246032919935.Spec : Prop :=
  ∀ n, P7089919246032919935.a n = A016922 n

end A016922

/-! ## A016922.P4543447599163378237

`record[(2*n+1)^(gcd(3, n)-1)]`
-/

namespace A016922.P4543447599163378237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((Nat.gcd 3 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016922.P4543447599163378237

namespace A016922

/-- `record[(2*n+1)^(gcd(3, n)-1)]` -/
def P4543447599163378237.Spec : Prop :=
  ∀ n, P4543447599163378237.a n = (A016922 n : ℚ)

end A016922

/-! ## A016922.P1593884023235077374

`record[(xor(2*n, -3)-(n-2))²]`
-/

namespace A016922.P1593884023235077374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n : ℤ) (-3) - ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016922.P1593884023235077374

namespace A016922

/-- `record[(xor(2*n, -3)-(n-2))²]` -/
def P1593884023235077374.Spec : Prop :=
  ∀ n, P1593884023235077374.a n = A016922 n

end A016922

/-! ## A016922.P9946385279905354869

`4*∑[a(n-1)+18]-3` with `a(0)=1, a(1)=12`
-/

namespace A016922.P9946385279905354869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 3

end

end A016922.P9946385279905354869

namespace A016922

/-- `4*∑[a(n-1)+18]-3` -/
def P9946385279905354869.Spec : Prop :=
  ∀ n, P9946385279905354869.a n = A016922 n

end A016922

/-! ## A016922.P2262024710487018367

`record[(-(2*n+1))^((n+2)%3)]`
-/

namespace A016922.P2262024710487018367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * n + 1 : ℤ)) ^ ((n + 2) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016922.P2262024710487018367

namespace A016922

/-- `record[(-(2*n+1))^((n+2)%3)]` -/
def P2262024710487018367.Spec : Prop :=
  ∀ n, P2262024710487018367.a n = A016922 n

end A016922

/-! ## A016922.P12178853665585978447

`4*∑[ogf((1+10x+7x^2)/(1-2x+x^2))]-3`
-/

namespace A016922.P12178853665585978447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) - 3

end

end A016922.P12178853665585978447

namespace A016922

/-- `4*∑[ogf((1+10x+7x^2)/(1-2x+x^2))]-3` -/
def P12178853665585978447.Spec : Prop :=
  ∀ n, P12178853665585978447.a n = A016922 n

end A016922

/-! ## A016922.P10145739020325408762

`(5*n+n+1)^(2%∑[n+1])`
-/

namespace A016922.P10145739020325408762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * n + (n + 1)) ^ (2 % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016922.P10145739020325408762

namespace A016922

/-- `(5*n+n+1)^(2%∑[n+1])` -/
def P10145739020325408762.Spec : Prop :=
  ∀ n, (P10145739020325408762.a n : ℤ) = A016922 n

end A016922

/-! ## A016922.P14931076637399565135

`record[(2*n+1)^(n+2-lcm(3, n))]`
-/

namespace A016922.P14931076637399565135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n + 2 : ℤ) - (Nat.lcm 3 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016922.P14931076637399565135

namespace A016922

/-- `record[(2*n+1)^(n+2-lcm(3, n))]` -/
def P14931076637399565135.Spec : Prop :=
  ∀ n, P14931076637399565135.a n = (A016922 n : ℚ)

end A016922

/-! ## A016922.P1768233872192135869

`record[(2*n+n-2)^(2*and(1, n))]`
-/

namespace A016922.P1768233872192135869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + ((n : ℤ) - 2)) ^ (2 * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016922.P1768233872192135869

namespace A016922

/-- `record[(2*n+n-2)^(2*and(1, n))]` -/
def P1768233872192135869.Spec : Prop :=
  ∀ n, P1768233872192135869.a n = A016922 n

end A016922

/-! ## A016922.P6040838360522299989

`sqrt(A016924(n))`
-/

namespace A016922.P6040838360522299989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016924 n : ℝ)

end

end A016922.P6040838360522299989

namespace A016922

/-- `sqrt(A016924(n))` -/
def P6040838360522299989.Spec : Prop :=
  ∀ n, P6040838360522299989.a n = (A016922 n : ℝ)

end A016922

/-!
# A016923: a(n) = (6*n + 1)^3.

The programs for A016923, the canonical program `A016923.P17840807225178979514` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016923 has offset 0).

The definition of A016923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^3` (program `A016923.P17840807225178979514`, by `A016923.P17840807225178979514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016923.P17840807225178979514

`(6*n+1)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016923

/-- `(6*n+1)^3` -/
def P17840807225178979514.Spec : Prop :=
  ∀ n, (P17840807225178979514.a n : ℤ) = A016923 n

theorem P17840807225178979514.correct : P17840807225178979514.Spec := by
  intro n
  simp only [A016923]

end A016923

/-! ## A016923.P2963496134640717215

`A000578(A016921(n))`
-/

namespace A016923.P2963496134640717215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A016921 n).toNat

end

end A016923.P2963496134640717215

namespace A016923

/-- `A000578(A016921(n))` -/
def P2963496134640717215.Spec : Prop :=
  ∀ n, P2963496134640717215.a n = A016923 n

end A016923

/-! ## A016923.P6767940459625984767

`or(2, 12*n)^3/8`
-/

namespace A016923.P6767940459625984767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (12 * n) ^ 3 : ℚ) / 8

end

end A016923.P6767940459625984767

namespace A016923

/-- `or(2, 12*n)^3/8` -/
def P6767940459625984767.Spec : Prop :=
  ∀ n, P6767940459625984767.a n = (A016923 n : ℚ)

end A016923

/-! ## A016923.P641204865710576827

`or(1, 6*n)²*or(1, 6*n)`
-/

namespace A016923.P641204865710576827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * n) ^ 2 * Nat.lor 1 (6 * n)

end

end A016923.P641204865710576827

namespace A016923

/-- `or(1, 6*n)²*or(1, 6*n)` -/
def P641204865710576827.Spec : Prop :=
  ∀ n, (P641204865710576827.a n : ℤ) = A016923 n

end A016923

/-! ## A016923.P82558270108408237

`record[(lcm(4, n+1)-(n+3))^3]`
-/

namespace A016923.P82558270108408237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 3 : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016923.P82558270108408237

namespace A016923

/-- `record[(lcm(4, n+1)-(n+3))^3]` -/
def P82558270108408237.Spec : Prop :=
  ∀ n, P82558270108408237.a n = A016923 n

end A016923

/-! ## A016923.P2840574402396292311

`record[(xor(1, 3*n)-1)^(3*n%2)]`
-/

namespace A016923.P2840574402396292311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (3 * n) : ℤ) - 1) ^ (3 * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016923.P2840574402396292311

namespace A016923

/-- `record[(xor(1, 3*n)-1)^(3*n%2)]` -/
def P2840574402396292311.Spec : Prop :=
  ∀ n, P2840574402396292311.a n = A016923 n

end A016923

/-! ## A016923.P6169397247448785924

`record[(gcd(n+3, n-3)+n-2)^3]`
-/

namespace A016923.P6169397247448785924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) : ℤ) + ((n : ℤ) - 2)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016923.P6169397247448785924

namespace A016923

/-- `record[(gcd(n+3, n-3)+n-2)^3]` -/
def P6169397247448785924.Spec : Prop :=
  ∀ n, P6169397247448785924.a n = A016923 n

end A016923

/-! ## A016923.P6229570273252117809

`sqrt(A016926(n))`
-/

namespace A016923.P6229570273252117809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016926 n : ℝ)

end

end A016923.P6229570273252117809

namespace A016923

/-- `sqrt(A016926(n))` -/
def P6229570273252117809.Spec : Prop :=
  ∀ n, P6229570273252117809.a n = (A016923 n : ℝ)

end A016923

/-! ## A016923.P14030597710897992301

`A017547(n)/8`
-/

namespace A016923.P14030597710897992301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017547 n : ℚ) / 8

end

end A016923.P14030597710897992301

namespace A016923

/-- `A017547(n)/8` -/
def P14030597710897992301.Spec : Prop :=
  ∀ n, P14030597710897992301.a n = (A016923 n : ℚ)

theorem P14030597710897992301.correct : P14030597710897992301.Spec := by
  intro n
  simp only [A016923, Nat.add_sub_cancel, A016923.P14030597710897992301.a, A016923.P17840807225178979514.a, A017547, A017547.P10391440261630002319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016923

/-! ## A016923.P15034699603836214599

`sqrt(A016922(n)^3)`
-/

namespace A016923.P15034699603836214599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016922 n ^ 3 : ℝ)

end

end A016923.P15034699603836214599

namespace A016923

/-- `sqrt(A016922(n)^3)` -/
def P15034699603836214599.Spec : Prop :=
  ∀ n, P15034699603836214599.a n = (A016923 n : ℝ)

end A016923

/-! ## A016923.P3894185651086789221

`A016921(n)*A016922(n)`
-/

namespace A016923.P3894185651086789221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A016922 n

end

end A016923.P3894185651086789221

namespace A016923

/-- `A016921(n)*A016922(n)` -/
def P3894185651086789221.Spec : Prop :=
  ∀ n, P3894185651086789221.a n = A016923 n

theorem P3894185651086789221.correct : P3894185651086789221.Spec := by
  intro n
  simp only [A016923, Nat.add_sub_cancel, A016923.P3894185651086789221.a, A016923.P17840807225178979514.a, A016921, A016921.P18318603358862595186.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016923

/-! ## A016923.P1987986177330176022

`A016924(n)/A016921(n)`
-/

namespace A016923.P1987986177330176022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016924 n : ℚ) / (A016921 n : ℚ)

end

end A016923.P1987986177330176022

namespace A016923

/-- `A016924(n)/A016921(n)` -/
def P1987986177330176022.Spec : Prop :=
  ∀ n, P1987986177330176022.a n = (A016923 n : ℚ)

end A016923

/-! ## A016923.P10815473103966066596

`A016925(n)/A016922(n)`
-/

namespace A016923.P10815473103966066596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016925 n : ℚ) / (A016922 n : ℚ)

end

end A016923.P10815473103966066596

namespace A016923

/-- `A016925(n)/A016922(n)` -/
def P10815473103966066596.Spec : Prop :=
  ∀ n, P10815473103966066596.a n = (A016923 n : ℚ)

end A016923

/-! ## A016923.P16170731609855883685

`A016927(n)/A016924(n)`
-/

namespace A016923.P16170731609855883685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 n : ℚ) / (A016924 n : ℚ)

end

end A016923.P16170731609855883685

namespace A016923

/-- `A016927(n)/A016924(n)` -/
def P16170731609855883685.Spec : Prop :=
  ∀ n, P16170731609855883685.a n = (A016923 n : ℚ)

end A016923

/-! ## A016923.P16396087003764946627

`A016928(n)/A016925(n)`
-/

namespace A016923.P16396087003764946627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 n : ℚ) / (A016925 n : ℚ)

end

end A016923.P16396087003764946627

namespace A016923

/-- `A016928(n)/A016925(n)` -/
def P16396087003764946627.Spec : Prop :=
  ∀ n, P16396087003764946627.a n = (A016923 n : ℚ)

end A016923

/-! ## A016923.P3454295108926709666

`A016929(n)/A016926(n)`
-/

namespace A016923.P3454295108926709666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 n : ℚ) / (A016926 n : ℚ)

end

end A016923.P3454295108926709666

namespace A016923

/-- `A016929(n)/A016926(n)` -/
def P3454295108926709666.Spec : Prop :=
  ∀ n, P3454295108926709666.a n = (A016923 n : ℚ)

end A016923

/-! ## A016923.P7954317695707149500

`A016930(n)/A016927(n)`
-/

namespace A016923.P7954317695707149500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016930 n : ℚ) / (A016927 n : ℚ)

end

end A016923.P7954317695707149500

namespace A016923

/-- `A016930(n)/A016927(n)` -/
def P7954317695707149500.Spec : Prop :=
  ∀ n, P7954317695707149500.a n = (A016923 n : ℚ)

end A016923

/-! ## A016923.P10236413500720882749

`A016931(n)/A016928(n)`
-/

namespace A016923.P10236413500720882749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016928 n : ℚ)

end

end A016923.P10236413500720882749

namespace A016923

/-- `A016931(n)/A016928(n)` -/
def P10236413500720882749.Spec : Prop :=
  ∀ n, P10236413500720882749.a n = (A016923 n : ℚ)

end A016923

/-! ## A016923.P17837306098348300464

`A016925(n)%A017547(n)`
-/

namespace A016923.P17837306098348300464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016925 n) (A017547 n)

end

end A016923.P17837306098348300464

namespace A016923

/-- `A016925(n)%A017547(n)` -/
def P17837306098348300464.Spec : Prop :=
  ∀ n, P17837306098348300464.a n = A016923 n

end A016923

/-! ## A016923.P12893682547239220162

`A016927(n)%A017547(n)`
-/

namespace A016923.P12893682547239220162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016927 n) (A017547 n)

end

end A016923.P12893682547239220162

namespace A016923

/-- `A016927(n)%A017547(n)` -/
def P12893682547239220162.Spec : Prop :=
  ∀ n, P12893682547239220162.a n = A016923 n

end A016923

/-!
# A016924: a(n) = (6*n + 1)^4.

The programs for A016924, the canonical program `A016924.P9244154985732422165` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016924 has offset 0).

The definition of A016924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^4` (program `A016924.P9244154985732422165`, by `A016924.P9244154985732422165.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016924.P9244154985732422165

`(6*n+1)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016924

/-- `(6*n+1)^4` -/
def P9244154985732422165.Spec : Prop :=
  ∀ n, (P9244154985732422165.a n : ℤ) = A016924 n

theorem P9244154985732422165.correct : P9244154985732422165.Spec := by
  intro n
  simp only [A016924]

end A016924

/-! ## A016924.P8257953113652701844

`A016922(n)²`
-/

namespace A016924.P8257953113652701844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n ^ 2

end

end A016924.P8257953113652701844

namespace A016924

/-- `A016922(n)²` -/
def P8257953113652701844.Spec : Prop :=
  ∀ n, P8257953113652701844.a n = A016924 n

theorem P8257953113652701844.correct : P8257953113652701844.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P8257953113652701844.a, A016924.P9244154985732422165.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016924

/-! ## A016924.P12934540436689127662

`or(1, 6*n)²²`
-/

namespace A016924.P12934540436689127662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (6 * n) ^ 2) ^ 2

end

end A016924.P12934540436689127662

namespace A016924

/-- `or(1, 6*n)²²` -/
def P12934540436689127662.Spec : Prop :=
  ∀ n, (P12934540436689127662.a n : ℤ) = A016924 n

end A016924

/-! ## A016924.P11131646181286119717

`xor(1, 6*n)²²`
-/

namespace A016924.P11131646181286119717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (6 * n) ^ 2) ^ 2

end

end A016924.P11131646181286119717

namespace A016924

/-- `xor(1, 6*n)²²` -/
def P11131646181286119717.Spec : Prop :=
  ∀ n, (P11131646181286119717.a n : ℤ) = A016924 n

end A016924

/-! ## A016924.P5770268314245470531

`(lcm(3*n, 2*n)+1)²²`
-/

namespace A016924.P5770268314245470531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (3 * n) (2 * n) + 1) ^ 2) ^ 2

end

end A016924.P5770268314245470531

namespace A016924

/-- `(lcm(3*n, 2*n)+1)²²` -/
def P5770268314245470531.Spec : Prop :=
  ∀ n, (P5770268314245470531.a n : ℤ) = A016924 n

end A016924

/-! ## A016924.P11817479578541964504

`(gcd(n, n+1)+6*n)²²`
-/

namespace A016924.P11817479578541964504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd n (n + 1) + 6 * n) ^ 2) ^ 2

end

end A016924.P11817479578541964504

namespace A016924

/-- `(gcd(n, n+1)+6*n)²²` -/
def P11817479578541964504.Spec : Prop :=
  ∀ n, (P11817479578541964504.a n : ℤ) = A016924 n

theorem P11817479578541964504.correct : P11817479578541964504.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P11817479578541964504.a, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016924

/-! ## A016924.P3357528913096630826

`record[(lcm(4, n+1)-(n+3))^4]`
-/

namespace A016924.P3357528913096630826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 3 : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016924.P3357528913096630826

namespace A016924

/-- `record[(lcm(4, n+1)-(n+3))^4]` -/
def P3357528913096630826.Spec : Prop :=
  ∀ n, P3357528913096630826.a n = A016924 n

end A016924

/-! ## A016924.P18096281291776689890

`(Δ[C(2*n, 2)]+2*n)²²`
-/

namespace A016924.P18096281291776689890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)) ^ 2) ^ 2

end

end A016924.P18096281291776689890

namespace A016924

/-- `(Δ[C(2*n, 2)]+2*n)²²` -/
def P18096281291776689890.Spec : Prop :=
  ∀ n, P18096281291776689890.a n = A016924 n

theorem P18096281291776689890.correct : P18096281291776689890.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P18096281291776689890.f1, A016924.P18096281291776689890.a, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016924

/-! ## A016924.P7735710703368703013

`record[(gcd(n+3, n-3)+n-2)^4]`
-/

namespace A016924.P7735710703368703013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) : ℤ) + ((n : ℤ) - 2)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016924.P7735710703368703013

namespace A016924

/-- `record[(gcd(n+3, n-3)+n-2)^4]` -/
def P7735710703368703013.Spec : Prop :=
  ∀ n, P7735710703368703013.a n = A016924 n

end A016924

/-! ## A016924.P5323622802832184881

`(C(2*n+1, 2*n)+4*n)²²`
-/

namespace A016924.P5323622802832184881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 1) (2 * n) + 4 * n) ^ 2) ^ 2

end

end A016924.P5323622802832184881

namespace A016924

/-- `(C(2*n+1, 2*n)+4*n)²²` -/
def P5323622802832184881.Spec : Prop :=
  ∀ n, (P5323622802832184881.a n : ℤ) = A016924 n

theorem P5323622802832184881.correct : P5323622802832184881.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P5323622802832184881.a, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016924

/-! ## A016924.P17847164721544559451

`(2*and(2*n+1, 2*n)+2*n+1)²²`
-/

namespace A016924.P17847164721544559451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.land (2 * n + 1) (2 * n) + (2 * n + 1)) ^ 2) ^ 2

end

end A016924.P17847164721544559451

namespace A016924

/-- `(2*and(2*n+1, 2*n)+2*n+1)²²` -/
def P17847164721544559451.Spec : Prop :=
  ∀ n, (P17847164721544559451.a n : ℤ) = A016924 n

end A016924

/-! ## A016924.P14280474464000918989

`sqrt(A016928(n))`
-/

namespace A016924.P14280474464000918989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016928 n : ℝ)

end

end A016924.P14280474464000918989

namespace A016924

/-- `sqrt(A016928(n))` -/
def P14280474464000918989.Spec : Prop :=
  ∀ n, P14280474464000918989.a n = (A016924 n : ℝ)

end A016924

/-! ## A016924.P3445384983270822483

`A016921(n)²²`
-/

namespace A016924.P3445384983270822483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n ^ 2) ^ 2

end

end A016924.P3445384983270822483

namespace A016924

/-- `A016921(n)²²` -/
def P3445384983270822483.Spec : Prop :=
  ∀ n, P3445384983270822483.a n = A016924 n

theorem P3445384983270822483.correct : P3445384983270822483.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P3445384983270822483.a, A016924.P9244154985732422165.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016924

/-! ## A016924.P13090298941512656898

`(A017546(n)/4)²`
-/

namespace A016924.P13090298941512656898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017546 n : ℚ) / 4) ^ 2

end

end A016924.P13090298941512656898

namespace A016924

/-- `(A017546(n)/4)²` -/
def P13090298941512656898.Spec : Prop :=
  ∀ n, P13090298941512656898.a n = (A016924 n : ℚ)

theorem P13090298941512656898.correct : P13090298941512656898.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P13090298941512656898.a, A016924.P9244154985732422165.a, A017546, A017546.P10402567773459972920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016924

/-! ## A016924.P18253565721851624973

`(A008588(n)+1)²²`
-/

namespace A016924.P18253565721851624973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008588 n + 1) ^ 2) ^ 2

end

end A016924.P18253565721851624973

namespace A016924

/-- `(A008588(n)+1)²²` -/
def P18253565721851624973.Spec : Prop :=
  ∀ n, P18253565721851624973.a n = A016924 n

theorem P18253565721851624973.correct : P18253565721851624973.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P18253565721851624973.a, A016924.P9244154985732422165.a, A008588, A008588.P12386450284809463491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016924

/-! ## A016924.P4058873888401431522

`(1-A016933(n))²²`
-/

namespace A016924.P4058873888401431522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A016933 n) ^ 2) ^ 2

end

end A016924.P4058873888401431522

namespace A016924

/-- `(1-A016933(n))²²` -/
def P4058873888401431522.Spec : Prop :=
  ∀ n, P4058873888401431522.a n = A016924 n

theorem P4058873888401431522.correct : P4058873888401431522.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P4058873888401431522.a, A016924.P9244154985732422165.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016924

/-! ## A016924.P11169393791905676534

`(2-A016945(n))²²`
-/

namespace A016924.P11169393791905676534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A016945 n) ^ 2) ^ 2

end

end A016924.P11169393791905676534

namespace A016924

/-- `(2-A016945(n))²²` -/
def P11169393791905676534.Spec : Prop :=
  ∀ n, P11169393791905676534.a n = A016924 n

theorem P11169393791905676534.correct : P11169393791905676534.Spec := by
  intro n
  simp only [A016924, Nat.add_sub_cancel, A016924.P11169393791905676534.a, A016924.P9244154985732422165.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016924

/-!
# A016925: a(n) = (6*n + 1)^5.

The programs for A016925, the canonical program `A016925.P3935835382959505019` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016925 has offset 0).

The definition of A016925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^5` (program `A016925.P3935835382959505019`, by `A016925.P3935835382959505019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016925.P3935835382959505019

`(6*n+1)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016925

/-- `(6*n+1)^5` -/
def P3935835382959505019.Spec : Prop :=
  ∀ n, (P3935835382959505019.a n : ℤ) = A016925 n

theorem P3935835382959505019.correct : P3935835382959505019.Spec := by
  intro n
  simp only [A016925]

end A016925

/-! ## A016925.P8475943900738461104

`record[(lcm(4, n+1)-(n+3))^5]`
-/

namespace A016925.P8475943900738461104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 3 : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016925.P8475943900738461104

namespace A016925

/-- `record[(lcm(4, n+1)-(n+3))^5]` -/
def P8475943900738461104.Spec : Prop :=
  ∀ n, P8475943900738461104.a n = A016925 n

end A016925

/-! ## A016925.P10498274419721696674

`record[(gcd(n+3, n-3)+n-2)^5]`
-/

namespace A016925.P10498274419721696674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) : ℤ) + ((n : ℤ) - 2)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016925.P10498274419721696674

namespace A016925

/-- `record[(gcd(n+3, n-3)+n-2)^5]` -/
def P10498274419721696674.Spec : Prop :=
  ∀ n, P10498274419721696674.a n = A016925 n

end A016925

/-! ## A016925.P5555227330538457895

`sqrt(A016930(n))`
-/

namespace A016925.P5555227330538457895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016930 n : ℝ)

end

end A016925.P5555227330538457895

namespace A016925

/-- `sqrt(A016930(n))` -/
def P5555227330538457895.Spec : Prop :=
  ∀ n, P5555227330538457895.a n = (A016925 n : ℝ)

end A016925

/-! ## A016925.P3159284144515732030

`sqrt(A016922(n)^5)`
-/

namespace A016925.P3159284144515732030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016922 n ^ 5 : ℝ)

end

end A016925.P3159284144515732030

namespace A016925

/-- `sqrt(A016922(n)^5)` -/
def P3159284144515732030.Spec : Prop :=
  ∀ n, P3159284144515732030.a n = (A016925 n : ℝ)

end A016925

/-! ## A016925.P10707926492675082571

`abs((A016957(n)-3)^5)`
-/

namespace A016925.P10707926492675082571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016957 n - 3) ^ 5|

end

end A016925.P10707926492675082571

namespace A016925

/-- `abs((A016957(n)-3)^5)` -/
def P10707926492675082571.Spec : Prop :=
  ∀ n, P10707926492675082571.a n = A016925 n

end A016925

/-! ## A016925.P14757705993253791779

`A016926(n)/(6*n+1)`
-/

namespace A016925.P14757705993253791779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016926 n : ℚ) / (6 * n + 1 : ℚ)

end

end A016925.P14757705993253791779

namespace A016925

/-- `A016926(n)/(6*n+1)` -/
def P14757705993253791779.Spec : Prop :=
  ∀ n, P14757705993253791779.a n = (A016925 n : ℚ)

end A016925

/-! ## A016925.P10085309344632108138

`A016927(n)/(6*n+1)²`
-/

namespace A016925.P10085309344632108138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 n : ℚ) / ((6 * n + 1) ^ 2 : ℚ)

end

end A016925.P10085309344632108138

namespace A016925

/-- `A016927(n)/(6*n+1)²` -/
def P10085309344632108138.Spec : Prop :=
  ∀ n, P10085309344632108138.a n = (A016925 n : ℚ)

end A016925

/-! ## A016925.P5804974506423628372

`A016921(n)*A016924(n)`
-/

namespace A016925.P5804974506423628372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A016924 n

end

end A016925.P5804974506423628372

namespace A016925

/-- `A016921(n)*A016924(n)` -/
def P5804974506423628372.Spec : Prop :=
  ∀ n, P5804974506423628372.a n = A016925 n

theorem P5804974506423628372.correct : P5804974506423628372.Spec := by
  intro n
  simp only [A016925, Nat.add_sub_cancel, A016925.P5804974506423628372.a, A016925.P3935835382959505019.a, A016921, A016921.P18318603358862595186.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016925

/-! ## A016925.P6244299099682787260

`A016922(n)*A016923(n)`
-/

namespace A016925.P6244299099682787260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n * A016923 n

end

end A016925.P6244299099682787260

namespace A016925

/-- `A016922(n)*A016923(n)` -/
def P6244299099682787260.Spec : Prop :=
  ∀ n, P6244299099682787260.a n = A016925 n

theorem P6244299099682787260.correct : P6244299099682787260.Spec := by
  intro n
  simp only [A016925, Nat.add_sub_cancel, A016925.P6244299099682787260.a, A016925.P3935835382959505019.a, A016922, A016922.P12735287873668454303.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016925

/-! ## A016925.P13713069017569526474

`A016928(n)/A016923(n)`
-/

namespace A016925.P13713069017569526474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 n : ℚ) / (A016923 n : ℚ)

end

end A016925.P13713069017569526474

namespace A016925

/-- `A016928(n)/A016923(n)` -/
def P13713069017569526474.Spec : Prop :=
  ∀ n, P13713069017569526474.a n = (A016925 n : ℚ)

end A016925

/-! ## A016925.P220843084425368540

`A016929(n)/A016924(n)`
-/

namespace A016925.P220843084425368540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 n : ℚ) / (A016924 n : ℚ)

end

end A016925.P220843084425368540

namespace A016925

/-- `A016929(n)/A016924(n)` -/
def P220843084425368540.Spec : Prop :=
  ∀ n, P220843084425368540.a n = (A016925 n : ℚ)

end A016925

/-! ## A016925.P1329920779618647829

`A016931(n)/A016926(n)`
-/

namespace A016925.P1329920779618647829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016926 n : ℚ)

end

end A016925.P1329920779618647829

namespace A016925

/-- `A016931(n)/A016926(n)` -/
def P1329920779618647829.Spec : Prop :=
  ∀ n, P1329920779618647829.a n = (A016925 n : ℚ)

end A016925

/-! ## A016925.P3717472016008688504

`gcd(A016926(n), A017549(n))`
-/

namespace A016925.P3717472016008688504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016926 n) (A017549 n)

end

end A016925.P3717472016008688504

namespace A016925

/-- `gcd(A016926(n), A017549(n))` -/
def P3717472016008688504.Spec : Prop :=
  ∀ n, (P3717472016008688504.a n : ℤ) = A016925 n

end A016925

/-! ## A016925.P12577792353626844944

`∪[A017537(n), A017609(n)]`
-/

namespace A016925.P12577792353626844944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016925.P12577792353626844944

namespace A016925

/-- `∪[A017537(n), A017609(n)]` -/
def P12577792353626844944.Spec : Prop :=
  ∀ n, (P12577792353626844944.a n : ℤ) = A016925 n

end A016925

/-! ## A016925.P8320282011339175495

`A016921(n)²*A016923(n)`
-/

namespace A016925.P8320282011339175495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n ^ 2 * A016923 n

end

end A016925.P8320282011339175495

namespace A016925

/-- `A016921(n)²*A016923(n)` -/
def P8320282011339175495.Spec : Prop :=
  ∀ n, P8320282011339175495.a n = A016925 n

theorem P8320282011339175495.correct : P8320282011339175495.Spec := by
  intro n
  simp only [A016925, Nat.add_sub_cancel, A016925.P8320282011339175495.a, A016925.P3935835382959505019.a, A016921, A016921.P18318603358862595186.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016925

/-! ## A016925.P6640541313878366792

`A016922(n)²*A016921(n)`
-/

namespace A016925.P6640541313878366792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n ^ 2 * A016921 n

end

end A016925.P6640541313878366792

namespace A016925

/-- `A016922(n)²*A016921(n)` -/
def P6640541313878366792.Spec : Prop :=
  ∀ n, P6640541313878366792.a n = A016925 n

theorem P6640541313878366792.correct : P6640541313878366792.Spec := by
  intro n
  simp only [A016925, Nat.add_sub_cancel, A016925.P6640541313878366792.a, A016925.P3935835382959505019.a, A016921, A016921.P18318603358862595186.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016925

/-! ## A016925.P9020197819840887787

`A016924(n)²/A016923(n)`
-/

namespace A016925.P9020197819840887787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016924 n ^ 2 : ℚ) / (A016923 n : ℚ)

end

end A016925.P9020197819840887787

namespace A016925

/-- `A016924(n)²/A016923(n)` -/
def P9020197819840887787.Spec : Prop :=
  ∀ n, P9020197819840887787.a n = (A016925 n : ℚ)

end A016925

/-! ## A016925.P17049032675121043175

`A016929(n)/A016922(n)²`
-/

namespace A016925.P17049032675121043175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 n : ℚ) / (A016922 n ^ 2 : ℚ)

end

end A016925.P17049032675121043175

namespace A016925

/-- `A016929(n)/A016922(n)²` -/
def P17049032675121043175.Spec : Prop :=
  ∀ n, P17049032675121043175.a n = (A016925 n : ℚ)

end A016925

/-! ## A016925.P17042053082476245612

`A016931(n)/A016923(n)²`
-/

namespace A016925.P17042053082476245612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016923 n ^ 2 : ℚ)

end

end A016925.P17042053082476245612

namespace A016925

/-- `A016931(n)/A016923(n)²` -/
def P17042053082476245612.Spec : Prop :=
  ∀ n, P17042053082476245612.a n = (A016925 n : ℚ)

end A016925

/-!
# A016926: a(n) = (6*n + 1)^6.

The programs for A016926, the canonical program `A016926.P17236842597661192459` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016926 has offset 0).

The definition of A016926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^6` (program `A016926.P17236842597661192459`, by `A016926.P17236842597661192459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016926.P17236842597661192459

`(6*n+1)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016926

/-- `(6*n+1)^6` -/
def P17236842597661192459.Spec : Prop :=
  ∀ n, (P17236842597661192459.a n : ℤ) = A016926 n

theorem P17236842597661192459.correct : P17236842597661192459.Spec := by
  intro n
  simp only [A016926]

end A016926

/-! ## A016926.P17454130890635827565

`A016923(n)²`
-/

namespace A016926.P17454130890635827565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n ^ 2

end

end A016926.P17454130890635827565

namespace A016926

/-- `A016923(n)²` -/
def P17454130890635827565.Spec : Prop :=
  ∀ n, P17454130890635827565.a n = A016926 n

theorem P17454130890635827565.correct : P17454130890635827565.Spec := by
  intro n
  simp only [A016926, Nat.add_sub_cancel, A016926.P17454130890635827565.a, A016926.P17236842597661192459.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016926

/-! ## A016926.P7138267069108290592

`(or(1, 3*2*n)^3)²`
-/

namespace A016926.P7138267069108290592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * (2 * n)) ^ 3) ^ 2

end

end A016926.P7138267069108290592

namespace A016926

/-- `(or(1, 3*2*n)^3)²` -/
def P7138267069108290592.Spec : Prop :=
  ∀ n, (P7138267069108290592.a n : ℤ) = A016926 n

end A016926

/-! ## A016926.P13470078489871607192

`(xor(1, 3*2*n)^3)²`
-/

namespace A016926.P13470078489871607192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * (2 * n)) ^ 3) ^ 2

end

end A016926.P13470078489871607192

namespace A016926

/-- `(xor(1, 3*2*n)^3)²` -/
def P13470078489871607192.Spec : Prop :=
  ∀ n, (P13470078489871607192.a n : ℤ) = A016926 n

end A016926

/-! ## A016926.P4810611714190122775

`(A016921(n)^3)²`
-/

namespace A016926.P4810611714190122775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n ^ 3) ^ 2

end

end A016926.P4810611714190122775

namespace A016926

/-- `(A016921(n)^3)²` -/
def P4810611714190122775.Spec : Prop :=
  ∀ n, P4810611714190122775.a n = A016926 n

theorem P4810611714190122775.correct : P4810611714190122775.Spec := by
  intro n
  simp only [A016926, Nat.add_sub_cancel, A016926.P4810611714190122775.a, A016926.P17236842597661192459.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016926

/-! ## A016926.P17581336695992742835

`sqrt(A016924(n)^3)`
-/

namespace A016926.P17581336695992742835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016924 n ^ 3 : ℝ)

end

end A016926.P17581336695992742835

namespace A016926

/-- `sqrt(A016924(n)^3)` -/
def P17581336695992742835.Spec : Prop :=
  ∀ n, P17581336695992742835.a n = (A016926 n : ℝ)

end A016926

/-! ## A016926.P18296851944461511381

`A016921(n)*A016925(n)`
-/

namespace A016926.P18296851944461511381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A016925 n

end

end A016926.P18296851944461511381

namespace A016926

/-- `A016921(n)*A016925(n)` -/
def P18296851944461511381.Spec : Prop :=
  ∀ n, P18296851944461511381.a n = A016926 n

theorem P18296851944461511381.correct : P18296851944461511381.Spec := by
  intro n
  simp only [A016926, Nat.add_sub_cancel, A016926.P18296851944461511381.a, A016926.P17236842597661192459.a, A016921, A016921.P18318603358862595186.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016926

/-! ## A016926.P15284500527043530893

`A016922(n)*A016924(n)`
-/

namespace A016926.P15284500527043530893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n * A016924 n

end

end A016926.P15284500527043530893

namespace A016926

/-- `A016922(n)*A016924(n)` -/
def P15284500527043530893.Spec : Prop :=
  ∀ n, P15284500527043530893.a n = A016926 n

theorem P15284500527043530893.correct : P15284500527043530893.Spec := by
  intro n
  simp only [A016926, Nat.add_sub_cancel, A016926.P15284500527043530893.a, A016926.P17236842597661192459.a, A016922, A016922.P12735287873668454303.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016926

/-! ## A016926.P4561398773153497277

`A016927(n)/A016921(n)`
-/

namespace A016926.P4561398773153497277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016927 n : ℚ) / (A016921 n : ℚ)

end

end A016926.P4561398773153497277

namespace A016926

/-- `A016927(n)/A016921(n)` -/
def P4561398773153497277.Spec : Prop :=
  ∀ n, P4561398773153497277.a n = (A016926 n : ℚ)

end A016926

/-! ## A016926.P11132979473838285214

`A016928(n)/A016922(n)`
-/

namespace A016926.P11132979473838285214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 n : ℚ) / (A016922 n : ℚ)

end

end A016926.P11132979473838285214

namespace A016926

/-- `A016928(n)/A016922(n)` -/
def P11132979473838285214.Spec : Prop :=
  ∀ n, P11132979473838285214.a n = (A016926 n : ℚ)

end A016926

/-! ## A016926.P86399058029028695

`A016929(n)/A016923(n)`
-/

namespace A016926.P86399058029028695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 n : ℚ) / (A016923 n : ℚ)

end

end A016926.P86399058029028695

namespace A016926

/-- `A016929(n)/A016923(n)` -/
def P86399058029028695.Spec : Prop :=
  ∀ n, P86399058029028695.a n = (A016926 n : ℚ)

end A016926

/-! ## A016926.P9609718179397183993

`A016930(n)/A016924(n)`
-/

namespace A016926.P9609718179397183993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016930 n : ℚ) / (A016924 n : ℚ)

end

end A016926.P9609718179397183993

namespace A016926

/-- `A016930(n)/A016924(n)` -/
def P9609718179397183993.Spec : Prop :=
  ∀ n, P9609718179397183993.a n = (A016926 n : ℚ)

end A016926

/-! ## A016926.P1943779905321483039

`A016931(n)/A016925(n)`
-/

namespace A016926.P1943779905321483039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016925 n : ℚ)

end

end A016926.P1943779905321483039

namespace A016926

/-- `A016931(n)/A016925(n)` -/
def P1943779905321483039.Spec : Prop :=
  ∀ n, P1943779905321483039.a n = (A016926 n : ℚ)

end A016926

/-! ## A016926.P7518724448301298112

`gcd(A016927(n), A017550(n))`
-/

namespace A016926.P7518724448301298112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016927 n) (A017550 n)

end

end A016926.P7518724448301298112

namespace A016926

/-- `gcd(A016927(n), A017550(n))` -/
def P7518724448301298112.Spec : Prop :=
  ∀ n, (P7518724448301298112.a n : ℤ) = A016926 n

end A016926

/-! ## A016926.P18116762313899484298

`∪[A017538(n), A017610(n)]`
-/

namespace A016926.P18116762313899484298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017610 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016926.P18116762313899484298

namespace A016926

/-- `∪[A017538(n), A017610(n)]` -/
def P18116762313899484298.Spec : Prop :=
  ∀ n, (P18116762313899484298.a n : ℤ) = A016926 n

end A016926

/-! ## A016926.P3149134073662828544

`(A016921(n)*A016922(n))²`
-/

namespace A016926.P3149134073662828544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n * A016922 n) ^ 2

end

end A016926.P3149134073662828544

namespace A016926

/-- `(A016921(n)*A016922(n))²` -/
def P3149134073662828544.Spec : Prop :=
  ∀ n, P3149134073662828544.a n = A016926 n

theorem P3149134073662828544.correct : P3149134073662828544.Spec := by
  intro n
  simp only [A016926, Nat.add_sub_cancel, A016926.P3149134073662828544.a, A016926.P17236842597661192459.a, A016921, A016921.P18318603358862595186.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016926

/-! ## A016926.P3389324665354789044

`A016921(n)²*A016924(n)`
-/

namespace A016926.P3389324665354789044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n ^ 2 * A016924 n

end

end A016926.P3389324665354789044

namespace A016926

/-- `A016921(n)²*A016924(n)` -/
def P3389324665354789044.Spec : Prop :=
  ∀ n, P3389324665354789044.a n = A016926 n

theorem P3389324665354789044.correct : P3389324665354789044.Spec := by
  intro n
  simp only [A016926, Nat.add_sub_cancel, A016926.P3389324665354789044.a, A016926.P17236842597661192459.a, A016921, A016921.P18318603358862595186.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016926

/-! ## A016926.P7428683439184403275

`(A016925(n)/A016922(n))²`
-/

namespace A016926.P7428683439184403275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016925 n : ℚ) / (A016922 n : ℚ)) ^ 2

end

end A016926.P7428683439184403275

namespace A016926

/-- `(A016925(n)/A016922(n))²` -/
def P7428683439184403275.Spec : Prop :=
  ∀ n, P7428683439184403275.a n = (A016926 n : ℚ)

end A016926

/-! ## A016926.P4001615026829500633

`A016925(n)²/A016924(n)`
-/

namespace A016926.P4001615026829500633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016925 n ^ 2 : ℚ) / (A016924 n : ℚ)

end

end A016926.P4001615026829500633

namespace A016926

/-- `A016925(n)²/A016924(n)` -/
def P4001615026829500633.Spec : Prop :=
  ∀ n, P4001615026829500633.a n = (A016926 n : ℚ)

end A016926

/-! ## A016926.P13727407363553841023

`(A016927(n)/A016924(n))²`
-/

namespace A016926.P13727407363553841023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016927 n : ℚ) / (A016924 n : ℚ)) ^ 2

end

end A016926.P13727407363553841023

namespace A016926

/-- `(A016927(n)/A016924(n))²` -/
def P13727407363553841023.Spec : Prop :=
  ∀ n, P13727407363553841023.a n = (A016926 n : ℚ)

end A016926

/-!
# A016927: a(n) = (6*n + 1)^7.

The programs for A016927, the canonical program `A016927.P17931775019733470070` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016927 has offset 0).

The definition of A016927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^7` (program `A016927.P17931775019733470070`, by `A016927.P17931775019733470070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016927.P17931775019733470070

`(6*n+1)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016927

/-- `(6*n+1)^7` -/
def P17931775019733470070.Spec : Prop :=
  ∀ n, (P17931775019733470070.a n : ℤ) = A016927 n

theorem P17931775019733470070.correct : P17931775019733470070.Spec := by
  intro n
  simp only [A016927]

end A016927

/-! ## A016927.P17618194749015226401

`(6*n+1)*A016926(n)`
-/

namespace A016927.P17618194749015226401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A016926 n

end

end A016927.P17618194749015226401

namespace A016927

/-- `(6*n+1)*A016926(n)` -/
def P17618194749015226401.Spec : Prop :=
  ∀ n, P17618194749015226401.a n = A016927 n

theorem P17618194749015226401.correct : P17618194749015226401.Spec := by
  intro n
  simp only [A016927, Nat.add_sub_cancel, A016927.P17618194749015226401.a, A016927.P17931775019733470070.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016927

/-! ## A016927.P3432738223755407747

`A016928(n)/(6*n+1)`
-/

namespace A016927.P3432738223755407747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016928 n : ℚ) / (6 * n + 1 : ℚ)

end

end A016927.P3432738223755407747

namespace A016927

/-- `A016928(n)/(6*n+1)` -/
def P3432738223755407747.Spec : Prop :=
  ∀ n, P3432738223755407747.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P12987407608806199068

`A016922(n)*A016925(n)`
-/

namespace A016927.P12987407608806199068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n * A016925 n

end

end A016927.P12987407608806199068

namespace A016927

/-- `A016922(n)*A016925(n)` -/
def P12987407608806199068.Spec : Prop :=
  ∀ n, P12987407608806199068.a n = A016927 n

theorem P12987407608806199068.correct : P12987407608806199068.Spec := by
  intro n
  simp only [A016927, Nat.add_sub_cancel, A016927.P12987407608806199068.a, A016927.P17931775019733470070.a, A016922, A016922.P12735287873668454303.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016927

/-! ## A016927.P6574672974220123122

`A016923(n)*A016924(n)`
-/

namespace A016927.P6574672974220123122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n * A016924 n

end

end A016927.P6574672974220123122

namespace A016927

/-- `A016923(n)*A016924(n)` -/
def P6574672974220123122.Spec : Prop :=
  ∀ n, P6574672974220123122.a n = A016927 n

theorem P6574672974220123122.correct : P6574672974220123122.Spec := by
  intro n
  simp only [A016927, Nat.add_sub_cancel, A016927.P6574672974220123122.a, A016927.P17931775019733470070.a, A016923, A016923.P17840807225178979514.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016927

/-! ## A016927.P8366125237120965219

`A016929(n)/A016922(n)`
-/

namespace A016927.P8366125237120965219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 n : ℚ) / (A016922 n : ℚ)

end

end A016927.P8366125237120965219

namespace A016927

/-- `A016929(n)/A016922(n)` -/
def P8366125237120965219.Spec : Prop :=
  ∀ n, P8366125237120965219.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P1734207209170737263

`A016930(n)/A016923(n)`
-/

namespace A016927.P1734207209170737263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016930 n : ℚ) / (A016923 n : ℚ)

end

end A016927.P1734207209170737263

namespace A016927

/-- `A016930(n)/A016923(n)` -/
def P1734207209170737263.Spec : Prop :=
  ∀ n, P1734207209170737263.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P17428289422049717134

`A016931(n)/A016924(n)`
-/

namespace A016927.P17428289422049717134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016924 n : ℚ)

end

end A016927.P17428289422049717134

namespace A016927

/-- `A016931(n)/A016924(n)` -/
def P17428289422049717134.Spec : Prop :=
  ∀ n, P17428289422049717134.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P4122038717831429967

`A016921(n)²*A016925(n)`
-/

namespace A016927.P4122038717831429967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n ^ 2 * A016925 n

end

end A016927.P4122038717831429967

namespace A016927

/-- `A016921(n)²*A016925(n)` -/
def P4122038717831429967.Spec : Prop :=
  ∀ n, P4122038717831429967.a n = A016927 n

theorem P4122038717831429967.correct : P4122038717831429967.Spec := by
  intro n
  simp only [A016927, Nat.add_sub_cancel, A016927.P4122038717831429967.a, A016927.P17931775019733470070.a, A016921, A016921.P18318603358862595186.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016927

/-! ## A016927.P8034404995709304448

`A016922(n)²*A016923(n)`
-/

namespace A016927.P8034404995709304448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n ^ 2 * A016923 n

end

end A016927.P8034404995709304448

namespace A016927

/-- `A016922(n)²*A016923(n)` -/
def P8034404995709304448.Spec : Prop :=
  ∀ n, P8034404995709304448.a n = A016927 n

theorem P8034404995709304448.correct : P8034404995709304448.Spec := by
  intro n
  simp only [A016927, Nat.add_sub_cancel, A016927.P8034404995709304448.a, A016927.P17931775019733470070.a, A016922, A016922.P12735287873668454303.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016927

/-! ## A016927.P14145518993649507775

`A016923(n)²*A016921(n)`
-/

namespace A016927.P14145518993649507775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n ^ 2 * A016921 n

end

end A016927.P14145518993649507775

namespace A016927

/-- `A016923(n)²*A016921(n)` -/
def P14145518993649507775.Spec : Prop :=
  ∀ n, P14145518993649507775.a n = A016927 n

theorem P14145518993649507775.correct : P14145518993649507775.Spec := by
  intro n
  simp only [A016927, Nat.add_sub_cancel, A016927.P14145518993649507775.a, A016927.P17931775019733470070.a, A016921, A016921.P18318603358862595186.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016927

/-! ## A016927.P7613248141376678527

`A016924(n)²/A016921(n)`
-/

namespace A016927.P7613248141376678527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016924 n ^ 2 : ℚ) / (A016921 n : ℚ)

end

end A016927.P7613248141376678527

namespace A016927

/-- `A016924(n)²/A016921(n)` -/
def P7613248141376678527.Spec : Prop :=
  ∀ n, P7613248141376678527.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P18360487726691134602

`A016925(n)²/A016923(n)`
-/

namespace A016927.P18360487726691134602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016925 n ^ 2 : ℚ) / (A016923 n : ℚ)

end

end A016927.P18360487726691134602

namespace A016927

/-- `A016925(n)²/A016923(n)` -/
def P18360487726691134602.Spec : Prop :=
  ∀ n, P18360487726691134602.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P2792243107560316782

`A016929(n)/A016921(n)²`
-/

namespace A016927.P2792243107560316782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 n : ℚ) / (A016921 n ^ 2 : ℚ)

end

end A016927.P2792243107560316782

namespace A016927

/-- `A016929(n)/A016921(n)²` -/
def P2792243107560316782.Spec : Prop :=
  ∀ n, P2792243107560316782.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P16198309504952782980

`A016931(n)/A016922(n)²`
-/

namespace A016927.P16198309504952782980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016922 n ^ 2 : ℚ)

end

end A016927.P16198309504952782980

namespace A016927

/-- `A016931(n)/A016922(n)²` -/
def P16198309504952782980.Spec : Prop :=
  ∀ n, P16198309504952782980.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P4740145158810966061

`A016922(n)²²/A016921(n)`
-/

namespace A016927.P4740145158810966061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016922 n ^ 2) ^ 2 : ℚ) / (A016921 n : ℚ)

end

end A016927.P4740145158810966061

namespace A016927

/-- `A016922(n)²²/A016921(n)` -/
def P4740145158810966061.Spec : Prop :=
  ∀ n, P4740145158810966061.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P11867446856663531245

`A016921(n)*A016922(n)*A016924(n)`
-/

namespace A016927.P11867446856663531245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A016922 n * A016924 n

end

end A016927.P11867446856663531245

namespace A016927

/-- `A016921(n)*A016922(n)*A016924(n)` -/
def P11867446856663531245.Spec : Prop :=
  ∀ n, P11867446856663531245.a n = A016927 n

theorem P11867446856663531245.correct : P11867446856663531245.Spec := by
  intro n
  simp only [A016927, Nat.add_sub_cancel, A016927.P11867446856663531245.a, A016927.P17931775019733470070.a, A016921, A016921.P18318603358862595186.a, A016922, A016922.P12735287873668454303.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016927

/-! ## A016927.P1807837792168889920

`A016921(n)/A016923(n)*A016929(n)`
-/

namespace A016927.P1807837792168889920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 n : ℚ) / (A016923 n : ℚ) * (A016929 n : ℚ)

end

end A016927.P1807837792168889920

namespace A016927

/-- `A016921(n)/A016923(n)*A016929(n)` -/
def P1807837792168889920.Spec : Prop :=
  ∀ n, P1807837792168889920.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P11137669031413782953

`A016921(n)/A016924(n)*A016930(n)`
-/

namespace A016927.P11137669031413782953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 n : ℚ) / (A016924 n : ℚ) * (A016930 n : ℚ)

end

end A016927.P11137669031413782953

namespace A016927

/-- `A016921(n)/A016924(n)*A016930(n)` -/
def P11137669031413782953.Spec : Prop :=
  ∀ n, P11137669031413782953.a n = (A016927 n : ℚ)

end A016927

/-! ## A016927.P5251321663519269072

`A016923(n)*A016925(n)/A016921(n)`
-/

namespace A016927.P5251321663519269072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016923 n * A016925 n : ℚ) / (A016921 n : ℚ)

end

end A016927.P5251321663519269072

namespace A016927

/-- `A016923(n)*A016925(n)/A016921(n)` -/
def P5251321663519269072.Spec : Prop :=
  ∀ n, P5251321663519269072.a n = (A016927 n : ℚ)

end A016927

/-!
# A016928: a(n) = (6*n + 1)^8.

The programs for A016928, the canonical program `A016928.P17353680663625733348` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016928 has offset 0).

The definition of A016928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^8` (program `A016928.P17353680663625733348`, by `A016928.P17353680663625733348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016928.P17353680663625733348

`(6*n+1)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016928

/-- `(6*n+1)^8` -/
def P17353680663625733348.Spec : Prop :=
  ∀ n, (P17353680663625733348.a n : ℤ) = A016928 n

theorem P17353680663625733348.correct : P17353680663625733348.Spec := by
  intro n
  simp only [A016928]

end A016928

/-! ## A016928.P7124934917646420447

`A016924(n)²`
-/

namespace A016928.P7124934917646420447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n ^ 2

end

end A016928.P7124934917646420447

namespace A016928

/-- `A016924(n)²` -/
def P7124934917646420447.Spec : Prop :=
  ∀ n, P7124934917646420447.a n = A016928 n

theorem P7124934917646420447.correct : P7124934917646420447.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P7124934917646420447.a, A016928.P17353680663625733348.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P16475580914367466583

`(or(1, 3*2*n)^4)²`
-/

namespace A016928.P16475580914367466583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * (2 * n)) ^ 4) ^ 2

end

end A016928.P16475580914367466583

namespace A016928

/-- `(or(1, 3*2*n)^4)²` -/
def P16475580914367466583.Spec : Prop :=
  ∀ n, (P16475580914367466583.a n : ℤ) = A016928 n

end A016928

/-! ## A016928.P9207173625253558435

`(xor(1, 3*2*n)^4)²`
-/

namespace A016928.P9207173625253558435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * (2 * n)) ^ 4) ^ 2

end

end A016928.P9207173625253558435

namespace A016928

/-- `(xor(1, 3*2*n)^4)²` -/
def P9207173625253558435.Spec : Prop :=
  ∀ n, (P9207173625253558435.a n : ℤ) = A016928 n

end A016928

/-! ## A016928.P12635610803591649715

`or(1, 3*2*n)²²²`
-/

namespace A016928.P12635610803591649715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (3 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A016928.P12635610803591649715

namespace A016928

/-- `or(1, 3*2*n)²²²` -/
def P12635610803591649715.Spec : Prop :=
  ∀ n, (P12635610803591649715.a n : ℤ) = A016928 n

end A016928

/-! ## A016928.P10918255760174987500

`xor(1, 3*2*n)²²²`
-/

namespace A016928.P10918255760174987500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (3 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A016928.P10918255760174987500

namespace A016928

/-- `xor(1, 3*2*n)²²²` -/
def P10918255760174987500.Spec : Prop :=
  ∀ n, (P10918255760174987500.a n : ℤ) = A016928 n

end A016928

/-! ## A016928.P5329141184835318241

`(Δ[C(2*n, 2)]+2*n)²²²`
-/

namespace A016928.P5329141184835318241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016928.P5329141184835318241

namespace A016928

/-- `(Δ[C(2*n, 2)]+2*n)²²²` -/
def P5329141184835318241.Spec : Prop :=
  ∀ n, P5329141184835318241.a n = A016928 n

theorem P5329141184835318241.correct : P5329141184835318241.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P5329141184835318241.f1, A016928.P5329141184835318241.a, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P2467643291841300074

`A016922(n)²²`
-/

namespace A016928.P2467643291841300074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016922 n ^ 2) ^ 2

end

end A016928.P2467643291841300074

namespace A016928

/-- `A016922(n)²²` -/
def P2467643291841300074.Spec : Prop :=
  ∀ n, P2467643291841300074.a n = A016928 n

theorem P2467643291841300074.correct : P2467643291841300074.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P2467643291841300074.a, A016928.P17353680663625733348.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P4525615125309645585

`A016921(n)²²²`
-/

namespace A016928.P4525615125309645585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016921 n ^ 2) ^ 2) ^ 2

end

end A016928.P4525615125309645585

namespace A016928

/-- `A016921(n)²²²` -/
def P4525615125309645585.Spec : Prop :=
  ∀ n, P4525615125309645585.a n = A016928 n

theorem P4525615125309645585.correct : P4525615125309645585.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P4525615125309645585.a, A016928.P17353680663625733348.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P8444816496647106294

`(A008588(n)+1)²²²`
-/

namespace A016928.P8444816496647106294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008588 n + 1) ^ 2) ^ 2) ^ 2

end

end A016928.P8444816496647106294

namespace A016928

/-- `(A008588(n)+1)²²²` -/
def P8444816496647106294.Spec : Prop :=
  ∀ n, P8444816496647106294.a n = A016928 n

theorem P8444816496647106294.correct : P8444816496647106294.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P8444816496647106294.a, A016928.P17353680663625733348.a, A008588, A008588.P12386450284809463491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P18064482731990169713

`(1-A016933(n))²²²`
-/

namespace A016928.P18064482731990169713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A016933 n) ^ 2) ^ 2) ^ 2

end

end A016928.P18064482731990169713

namespace A016928

/-- `(1-A016933(n))²²²` -/
def P18064482731990169713.Spec : Prop :=
  ∀ n, P18064482731990169713.a n = A016928 n

theorem P18064482731990169713.correct : P18064482731990169713.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P18064482731990169713.a, A016928.P17353680663625733348.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P11208991010492768629

`(2-A016945(n))²²²`
-/

namespace A016928.P11208991010492768629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A016945 n) ^ 2) ^ 2) ^ 2

end

end A016928.P11208991010492768629

namespace A016928

/-- `(2-A016945(n))²²²` -/
def P11208991010492768629.Spec : Prop :=
  ∀ n, P11208991010492768629.a n = A016928 n

theorem P11208991010492768629.correct : P11208991010492768629.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P11208991010492768629.a, A016928.P17353680663625733348.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P13592426663193473861

`(6*n+1)*A016927(n)`
-/

namespace A016928.P13592426663193473861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A016927 n

end

end A016928.P13592426663193473861

namespace A016928

/-- `(6*n+1)*A016927(n)` -/
def P13592426663193473861.Spec : Prop :=
  ∀ n, P13592426663193473861.a n = A016928 n

theorem P13592426663193473861.correct : P13592426663193473861.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P13592426663193473861.a, A016928.P17353680663625733348.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P11659565594336996032

`A016922(n)*A016926(n)`
-/

namespace A016928.P11659565594336996032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n * A016926 n

end

end A016928.P11659565594336996032

namespace A016928

/-- `A016922(n)*A016926(n)` -/
def P11659565594336996032.Spec : Prop :=
  ∀ n, P11659565594336996032.a n = A016928 n

theorem P11659565594336996032.correct : P11659565594336996032.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P11659565594336996032.a, A016928.P17353680663625733348.a, A016922, A016922.P12735287873668454303.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P17898855395232718087

`A016923(n)*A016925(n)`
-/

namespace A016928.P17898855395232718087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n * A016925 n

end

end A016928.P17898855395232718087

namespace A016928

/-- `A016923(n)*A016925(n)` -/
def P17898855395232718087.Spec : Prop :=
  ∀ n, P17898855395232718087.a n = A016928 n

theorem P17898855395232718087.correct : P17898855395232718087.Spec := by
  intro n
  simp only [A016928, Nat.add_sub_cancel, A016928.P17898855395232718087.a, A016928.P17353680663625733348.a, A016923, A016923.P17840807225178979514.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016928

/-! ## A016928.P1195067804609502993

`A016929(n)/A016921(n)`
-/

namespace A016928.P1195067804609502993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016929 n : ℚ) / (A016921 n : ℚ)

end

end A016928.P1195067804609502993

namespace A016928

/-- `A016929(n)/A016921(n)` -/
def P1195067804609502993.Spec : Prop :=
  ∀ n, P1195067804609502993.a n = (A016928 n : ℚ)

end A016928

/-! ## A016928.P1965560913610565776

`A016930(n)/A016922(n)`
-/

namespace A016928.P1965560913610565776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016930 n : ℚ) / (A016922 n : ℚ)

end

end A016928.P1965560913610565776

namespace A016928

/-- `A016930(n)/A016922(n)` -/
def P1965560913610565776.Spec : Prop :=
  ∀ n, P1965560913610565776.a n = (A016928 n : ℚ)

end A016928

/-! ## A016928.P15812234650092926723

`A016931(n)/A016923(n)`
-/

namespace A016928.P15812234650092926723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016923 n : ℚ)

end

end A016928.P15812234650092926723

namespace A016928

/-- `A016931(n)/A016923(n)` -/
def P15812234650092926723.Spec : Prop :=
  ∀ n, P15812234650092926723.a n = (A016928 n : ℚ)

end A016928

/-! ## A016928.P10220154982692797679

`(A016929(n)/A016925(n))²`
-/

namespace A016928.P10220154982692797679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016929 n : ℚ) / (A016925 n : ℚ)) ^ 2

end

end A016928.P10220154982692797679

namespace A016928

/-- `(A016929(n)/A016925(n))²` -/
def P10220154982692797679.Spec : Prop :=
  ∀ n, P10220154982692797679.a n = (A016928 n : ℚ)

end A016928

/-!
# A016929: a(n) = (6*n + 1)^9.

The programs for A016929, the canonical program `A016929.P9280878692414037459` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016929 has offset 0).

The definition of A016929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^9` (program `A016929.P9280878692414037459`, by `A016929.P9280878692414037459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016929.P9280878692414037459

`(6*n+1)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016929

/-- `(6*n+1)^9` -/
def P9280878692414037459.Spec : Prop :=
  ∀ n, (P9280878692414037459.a n : ℤ) = A016929 n

theorem P9280878692414037459.correct : P9280878692414037459.Spec := by
  intro n
  simp only [A016929]

end A016929

/-! ## A016929.P786506568327034331

`sqrt(A016926(n)^3)`
-/

namespace A016929.P786506568327034331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016926 n ^ 3 : ℝ)

end

end A016929.P786506568327034331

namespace A016929

/-- `sqrt(A016926(n)^3)` -/
def P786506568327034331.Spec : Prop :=
  ∀ n, P786506568327034331.a n = (A016929 n : ℝ)

end A016929

/-! ## A016929.P14261447128311833501

`(6*n+1)*A016928(n)`
-/

namespace A016929.P14261447128311833501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A016928 n

end

end A016929.P14261447128311833501

namespace A016929

/-- `(6*n+1)*A016928(n)` -/
def P14261447128311833501.Spec : Prop :=
  ∀ n, P14261447128311833501.a n = A016929 n

theorem P14261447128311833501.correct : P14261447128311833501.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P14261447128311833501.a, A016929.P9280878692414037459.a, A016928, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P14924941847372394321

`abs(1-A016921(n)^9)+1`
-/

namespace A016929.P14924941847372394321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A016921 n ^ 9| + 1

end

end A016929.P14924941847372394321

namespace A016929

/-- `abs(1-A016921(n)^9)+1` -/
def P14924941847372394321.Spec : Prop :=
  ∀ n, P14924941847372394321.a n = A016929 n

end A016929

/-! ## A016929.P12107771796580349745

`A016922(n)*A016927(n)`
-/

namespace A016929.P12107771796580349745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n * A016927 n

end

end A016929.P12107771796580349745

namespace A016929

/-- `A016922(n)*A016927(n)` -/
def P12107771796580349745.Spec : Prop :=
  ∀ n, P12107771796580349745.a n = A016929 n

theorem P12107771796580349745.correct : P12107771796580349745.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P12107771796580349745.a, A016929.P9280878692414037459.a, A016922, A016922.P12735287873668454303.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P964180279581226968

`A016923(n)*A016926(n)`
-/

namespace A016929.P964180279581226968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n * A016926 n

end

end A016929.P964180279581226968

namespace A016929

/-- `A016923(n)*A016926(n)` -/
def P964180279581226968.Spec : Prop :=
  ∀ n, P964180279581226968.a n = A016929 n

theorem P964180279581226968.correct : P964180279581226968.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P964180279581226968.a, A016929.P9280878692414037459.a, A016923, A016923.P17840807225178979514.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P11911429282835304742

`A016924(n)*A016925(n)`
-/

namespace A016929.P11911429282835304742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n * A016925 n

end

end A016929.P11911429282835304742

namespace A016929

/-- `A016924(n)*A016925(n)` -/
def P11911429282835304742.Spec : Prop :=
  ∀ n, P11911429282835304742.a n = A016929 n

theorem P11911429282835304742.correct : P11911429282835304742.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P11911429282835304742.a, A016929.P9280878692414037459.a, A016924, A016924.P9244154985732422165.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P6442011340045938304

`A016930(n)/A016921(n)`
-/

namespace A016929.P6442011340045938304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016930 n : ℚ) / (A016921 n : ℚ)

end

end A016929.P6442011340045938304

namespace A016929

/-- `A016930(n)/A016921(n)` -/
def P6442011340045938304.Spec : Prop :=
  ∀ n, P6442011340045938304.a n = (A016929 n : ℚ)

end A016929

/-! ## A016929.P753869769777844262

`A016931(n)/A016922(n)`
-/

namespace A016929.P753869769777844262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016922 n : ℚ)

end

end A016929.P753869769777844262

namespace A016929

/-- `A016931(n)/A016922(n)` -/
def P753869769777844262.Spec : Prop :=
  ∀ n, P753869769777844262.a n = (A016929 n : ℚ)

end A016929

/-! ## A016929.P12272645607421908257

`A016921(n)²*A016927(n)`
-/

namespace A016929.P12272645607421908257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n ^ 2 * A016927 n

end

end A016929.P12272645607421908257

namespace A016929

/-- `A016921(n)²*A016927(n)` -/
def P12272645607421908257.Spec : Prop :=
  ∀ n, P12272645607421908257.a n = A016929 n

theorem P12272645607421908257.correct : P12272645607421908257.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P12272645607421908257.a, A016929.P9280878692414037459.a, A016921, A016921.P18318603358862595186.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P1481295760991228441

`A016922(n)²*A016925(n)`
-/

namespace A016929.P1481295760991228441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n ^ 2 * A016925 n

end

end A016929.P1481295760991228441

namespace A016929

/-- `A016922(n)²*A016925(n)` -/
def P1481295760991228441.Spec : Prop :=
  ∀ n, P1481295760991228441.a n = A016929 n

theorem P1481295760991228441.correct : P1481295760991228441.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P1481295760991228441.a, A016929.P9280878692414037459.a, A016922, A016922.P12735287873668454303.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P9305673076794819420

`A016924(n)²*A016921(n)`
-/

namespace A016929.P9305673076794819420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n ^ 2 * A016921 n

end

end A016929.P9305673076794819420

namespace A016929

/-- `A016924(n)²*A016921(n)` -/
def P9305673076794819420.Spec : Prop :=
  ∀ n, P9305673076794819420.a n = A016929 n

theorem P9305673076794819420.correct : P9305673076794819420.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P9305673076794819420.a, A016929.P9280878692414037459.a, A016921, A016921.P18318603358862595186.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P15275405810170397038

`A016925(n)²/A016921(n)`
-/

namespace A016929.P15275405810170397038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016925 n ^ 2 : ℚ) / (A016921 n : ℚ)

end

end A016929.P15275405810170397038

namespace A016929

/-- `A016925(n)²/A016921(n)` -/
def P15275405810170397038.Spec : Prop :=
  ∀ n, P15275405810170397038.a n = (A016929 n : ℚ)

end A016929

/-! ## A016929.P17937769859131299879

`A016931(n)/A016921(n)²`
-/

namespace A016929.P17937769859131299879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016921 n ^ 2 : ℚ)

end

end A016929.P17937769859131299879

namespace A016929

/-- `A016931(n)/A016921(n)²` -/
def P17937769859131299879.Spec : Prop :=
  ∀ n, P17937769859131299879.a n = (A016929 n : ℚ)

end A016929

/-! ## A016929.P8620020353371273947

`A016922(n)²²*A016921(n)`
-/

namespace A016929.P8620020353371273947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016922 n ^ 2) ^ 2 * A016921 n

end

end A016929.P8620020353371273947

namespace A016929

/-- `A016922(n)²²*A016921(n)` -/
def P8620020353371273947.Spec : Prop :=
  ∀ n, P8620020353371273947.a n = A016929 n

theorem P8620020353371273947.correct : P8620020353371273947.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P8620020353371273947.a, A016929.P9280878692414037459.a, A016921, A016921.P18318603358862595186.a, A016922, A016922.P12735287873668454303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P18106494939807798928

`A016921(n)*A016922(n)*A016926(n)`
-/

namespace A016929.P18106494939807798928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A016922 n * A016926 n

end

end A016929.P18106494939807798928

namespace A016929

/-- `A016921(n)*A016922(n)*A016926(n)` -/
def P18106494939807798928.Spec : Prop :=
  ∀ n, P18106494939807798928.a n = A016929 n

theorem P18106494939807798928.correct : P18106494939807798928.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P18106494939807798928.a, A016929.P9280878692414037459.a, A016921, A016921.P18318603358862595186.a, A016922, A016922.P12735287873668454303.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P1413724084300392735

`A016921(n)*A016923(n)*A016925(n)`
-/

namespace A016929.P1413724084300392735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A016923 n * A016925 n

end

end A016929.P1413724084300392735

namespace A016929

/-- `A016921(n)*A016923(n)*A016925(n)` -/
def P1413724084300392735.Spec : Prop :=
  ∀ n, P1413724084300392735.a n = A016929 n

theorem P1413724084300392735.correct : P1413724084300392735.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P1413724084300392735.a, A016929.P9280878692414037459.a, A016921, A016921.P18318603358862595186.a, A016923, A016923.P17840807225178979514.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P2623579776457552837

`A016922(n)*A016923(n)*A016924(n)`
-/

namespace A016929.P2623579776457552837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n * A016923 n * A016924 n

end

end A016929.P2623579776457552837

namespace A016929

/-- `A016922(n)*A016923(n)*A016924(n)` -/
def P2623579776457552837.Spec : Prop :=
  ∀ n, P2623579776457552837.a n = A016929 n

theorem P2623579776457552837.correct : P2623579776457552837.Spec := by
  intro n
  simp only [A016929, Nat.add_sub_cancel, A016929.P2623579776457552837.a, A016929.P9280878692414037459.a, A016922, A016922.P12735287873668454303.a, A016923, A016923.P17840807225178979514.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016929

/-! ## A016929.P13443424598766844460

`A016923(n)/A016924(n)*A016930(n)`
-/

namespace A016929.P13443424598766844460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016923 n : ℚ) / (A016924 n : ℚ) * (A016930 n : ℚ)

end

end A016929.P13443424598766844460

namespace A016929

/-- `A016923(n)/A016924(n)*A016930(n)` -/
def P13443424598766844460.Spec : Prop :=
  ∀ n, P13443424598766844460.a n = (A016929 n : ℚ)

end A016929

/-! ## A016929.P9816288491523510308

`A016923(n)*A016927(n)/A016921(n)`
-/

namespace A016929.P9816288491523510308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016923 n * A016927 n : ℚ) / (A016921 n : ℚ)

end

end A016929.P9816288491523510308

namespace A016929

/-- `A016923(n)*A016927(n)/A016921(n)` -/
def P9816288491523510308.Spec : Prop :=
  ∀ n, P9816288491523510308.a n = (A016929 n : ℚ)

end A016929

/-!
# A016930: a(n) = (6*n + 1)^10.

The programs for A016930, the canonical program `A016930.P13854082548963173773` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016930 has offset 0).

The definition of A016930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^10` (program `A016930.P13854082548963173773`, by `A016930.P13854082548963173773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016930.P13854082548963173773

`(6*n+1)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016930

/-- `(6*n+1)^10` -/
def P13854082548963173773.Spec : Prop :=
  ∀ n, (P13854082548963173773.a n : ℤ) = A016930 n

theorem P13854082548963173773.correct : P13854082548963173773.Spec := by
  intro n
  simp only [A016930]

end A016930

/-! ## A016930.P4817288323449748549

`A016925(n)²`
-/

namespace A016930.P4817288323449748549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016925 n ^ 2

end

end A016930.P4817288323449748549

namespace A016930

/-- `A016925(n)²` -/
def P4817288323449748549.Spec : Prop :=
  ∀ n, P4817288323449748549.a n = A016930 n

theorem P4817288323449748549.correct : P4817288323449748549.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P4817288323449748549.a, A016930.P13854082548963173773.a, A016925, A016925.P3935835382959505019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P9680261873432457717

`(or(1, 3*2*n)^5)²`
-/

namespace A016930.P9680261873432457717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * (2 * n)) ^ 5) ^ 2

end

end A016930.P9680261873432457717

namespace A016930

/-- `(or(1, 3*2*n)^5)²` -/
def P9680261873432457717.Spec : Prop :=
  ∀ n, (P9680261873432457717.a n : ℤ) = A016930 n

end A016930

/-! ## A016930.P16180356545814822331

`(xor(1, 3*2*n)^5)²`
-/

namespace A016930.P16180356545814822331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * (2 * n)) ^ 5) ^ 2

end

end A016930.P16180356545814822331

namespace A016930

/-- `(xor(1, 3*2*n)^5)²` -/
def P16180356545814822331.Spec : Prop :=
  ∀ n, (P16180356545814822331.a n : ℤ) = A016930 n

end A016930

/-! ## A016930.P9461897887944998978

`(A016921(n)^5)²`
-/

namespace A016930.P9461897887944998978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n ^ 5) ^ 2

end

end A016930.P9461897887944998978

namespace A016930

/-- `(A016921(n)^5)²` -/
def P9461897887944998978.Spec : Prop :=
  ∀ n, P9461897887944998978.a n = A016930 n

theorem P9461897887944998978.correct : P9461897887944998978.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P9461897887944998978.a, A016930.P13854082548963173773.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P7812501777295031241

`sqrt(A016924(n)^5)`
-/

namespace A016930.P7812501777295031241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016924 n ^ 5 : ℝ)

end

end A016930.P7812501777295031241

namespace A016930

/-- `sqrt(A016924(n)^5)` -/
def P7812501777295031241.Spec : Prop :=
  ∀ n, P7812501777295031241.a n = (A016930 n : ℝ)

end A016930

/-! ## A016930.P16865075697578932529

`(6*n+1)*A016929(n)`
-/

namespace A016930.P16865075697578932529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A016929 n

end

end A016930.P16865075697578932529

namespace A016930

/-- `(6*n+1)*A016929(n)` -/
def P16865075697578932529.Spec : Prop :=
  ∀ n, P16865075697578932529.a n = A016930 n

theorem P16865075697578932529.correct : P16865075697578932529.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P16865075697578932529.a, A016930.P13854082548963173773.a, A016929, A016929.P9280878692414037459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P11255215139156655036

`A016922(n)*A016928(n)`
-/

namespace A016930.P11255215139156655036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n * A016928 n

end

end A016930.P11255215139156655036

namespace A016930

/-- `A016922(n)*A016928(n)` -/
def P11255215139156655036.Spec : Prop :=
  ∀ n, P11255215139156655036.a n = A016930 n

theorem P11255215139156655036.correct : P11255215139156655036.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P11255215139156655036.a, A016930.P13854082548963173773.a, A016922, A016922.P12735287873668454303.a, A016928, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P5700706852270176326

`A016923(n)*A016927(n)`
-/

namespace A016930.P5700706852270176326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n * A016927 n

end

end A016930.P5700706852270176326

namespace A016930

/-- `A016923(n)*A016927(n)` -/
def P5700706852270176326.Spec : Prop :=
  ∀ n, P5700706852270176326.a n = A016930 n

theorem P5700706852270176326.correct : P5700706852270176326.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P5700706852270176326.a, A016930.P13854082548963173773.a, A016923, A016923.P17840807225178979514.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P15710478720907470184

`A016924(n)*A016926(n)`
-/

namespace A016930.P15710478720907470184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n * A016926 n

end

end A016930.P15710478720907470184

namespace A016930

/-- `A016924(n)*A016926(n)` -/
def P15710478720907470184.Spec : Prop :=
  ∀ n, P15710478720907470184.a n = A016930 n

theorem P15710478720907470184.correct : P15710478720907470184.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P15710478720907470184.a, A016930.P13854082548963173773.a, A016924, A016924.P9244154985732422165.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P15485620085497239093

`A016931(n)/A016921(n)`
-/

namespace A016930.P15485620085497239093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016931 n : ℚ) / (A016921 n : ℚ)

end

end A016930.P15485620085497239093

namespace A016930

/-- `A016931(n)/A016921(n)` -/
def P15485620085497239093.Spec : Prop :=
  ∀ n, P15485620085497239093.a n = (A016930 n : ℚ)

end A016930

/-! ## A016930.P9776763231834613402

`(A016921(n)*A016924(n))²`
-/

namespace A016930.P9776763231834613402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n * A016924 n) ^ 2

end

end A016930.P9776763231834613402

namespace A016930

/-- `(A016921(n)*A016924(n))²` -/
def P9776763231834613402.Spec : Prop :=
  ∀ n, P9776763231834613402.a n = A016930 n

theorem P9776763231834613402.correct : P9776763231834613402.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P9776763231834613402.a, A016930.P13854082548963173773.a, A016921, A016921.P18318603358862595186.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P17510798288519208928

`A016921(n)²*A016928(n)`
-/

namespace A016930.P17510798288519208928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n ^ 2 * A016928 n

end

end A016930.P17510798288519208928

namespace A016930

/-- `A016921(n)²*A016928(n)` -/
def P17510798288519208928.Spec : Prop :=
  ∀ n, P17510798288519208928.a n = A016930 n

theorem P17510798288519208928.correct : P17510798288519208928.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P17510798288519208928.a, A016930.P13854082548963173773.a, A016921, A016921.P18318603358862595186.a, A016928, A016928.P17353680663625733348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P13333365075924150855

`(A016922(n)*A016923(n))²`
-/

namespace A016930.P13333365075924150855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016922 n * A016923 n) ^ 2

end

end A016930.P13333365075924150855

namespace A016930

/-- `(A016922(n)*A016923(n))²` -/
def P13333365075924150855.Spec : Prop :=
  ∀ n, P13333365075924150855.a n = A016930 n

theorem P13333365075924150855.correct : P13333365075924150855.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P13333365075924150855.a, A016930.P13854082548963173773.a, A016922, A016922.P12735287873668454303.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P17502068227561296348

`A016922(n)²*A016926(n)`
-/

namespace A016930.P17502068227561296348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n ^ 2 * A016926 n

end

end A016930.P17502068227561296348

namespace A016930

/-- `A016922(n)²*A016926(n)` -/
def P17502068227561296348.Spec : Prop :=
  ∀ n, P17502068227561296348.a n = A016930 n

theorem P17502068227561296348.correct : P17502068227561296348.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P17502068227561296348.a, A016930.P13854082548963173773.a, A016922, A016922.P12735287873668454303.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P5150134973237261379

`A016923(n)²*A016924(n)`
-/

namespace A016930.P5150134973237261379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016923 n ^ 2 * A016924 n

end

end A016930.P5150134973237261379

namespace A016930

/-- `A016923(n)²*A016924(n)` -/
def P5150134973237261379.Spec : Prop :=
  ∀ n, P5150134973237261379.a n = A016930 n

theorem P5150134973237261379.correct : P5150134973237261379.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P5150134973237261379.a, A016930.P13854082548963173773.a, A016923, A016923.P17840807225178979514.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P3248221688612986166

`A016924(n)²*A016922(n)`
-/

namespace A016930.P3248221688612986166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n ^ 2 * A016922 n

end

end A016930.P3248221688612986166

namespace A016930

/-- `A016924(n)²*A016922(n)` -/
def P3248221688612986166.Spec : Prop :=
  ∀ n, P3248221688612986166.a n = A016930 n

theorem P3248221688612986166.correct : P3248221688612986166.Spec := by
  intro n
  simp only [A016930, Nat.add_sub_cancel, A016930.P3248221688612986166.a, A016930.P13854082548963173773.a, A016922, A016922.P12735287873668454303.a, A016924, A016924.P9244154985732422165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016930

/-! ## A016930.P10582255020063669122

`(A016926(n)/A016921(n))²`
-/

namespace A016930.P10582255020063669122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016926 n : ℚ) / (A016921 n : ℚ)) ^ 2

end

end A016930.P10582255020063669122

namespace A016930

/-- `(A016926(n)/A016921(n))²` -/
def P10582255020063669122.Spec : Prop :=
  ∀ n, P10582255020063669122.a n = (A016930 n : ℚ)

end A016930

/-! ## A016930.P3645377427797331693

`(A016927(n)/A016922(n))²`
-/

namespace A016930.P3645377427797331693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016927 n : ℚ) / (A016922 n : ℚ)) ^ 2

end

end A016930.P3645377427797331693

namespace A016930

/-- `(A016927(n)/A016922(n))²` -/
def P3645377427797331693.Spec : Prop :=
  ∀ n, P3645377427797331693.a n = (A016930 n : ℚ)

end A016930

/-! ## A016930.P17877557148638647467

`(A016928(n)/A016923(n))²`
-/

namespace A016930.P17877557148638647467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016928 n : ℚ) / (A016923 n : ℚ)) ^ 2

end

end A016930.P17877557148638647467

namespace A016930

/-- `(A016928(n)/A016923(n))²` -/
def P17877557148638647467.Spec : Prop :=
  ∀ n, P17877557148638647467.a n = (A016930 n : ℚ)

end A016930

/-!
# A016931: a(n) = (6*n + 1)^11.

The programs for A016931, the canonical program `A016931.P9569117993905758019` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016931 has offset 0).

The definition of A016931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+1)^11` (program `A016931.P9569117993905758019`, by `A016931.P9569117993905758019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016931.P9569117993905758019

`(6*n+1)^11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016931

/-- `(6*n+1)^11` -/
def P9569117993905758019.Spec : Prop :=
  ∀ n, (P9569117993905758019.a n : ℤ) = A016931 n

theorem P9569117993905758019.correct : P9569117993905758019.Spec := by
  intro n
  simp only [A016931]

end A016931

/-! ## A016931.P3211037167805441417

`A016921(n)*A016930(n)`
-/

namespace A016931.P3211037167805441417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A016930 n

end

end A016931.P3211037167805441417

namespace A016931

/-- `A016921(n)*A016930(n)` -/
def P3211037167805441417.Spec : Prop :=
  ∀ n, P3211037167805441417.a n = A016931 n

theorem P3211037167805441417.correct : P3211037167805441417.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P3211037167805441417.a, A016931.P9569117993905758019.a, A016921, A016921.P18318603358862595186.a, A016930, A016930.P13854082548963173773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P11129575637097960921

`A016924(n)*A016927(n)`
-/

namespace A016931.P11129575637097960921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016924 n * A016927 n

end

end A016931.P11129575637097960921

namespace A016931

/-- `A016924(n)*A016927(n)` -/
def P11129575637097960921.Spec : Prop :=
  ∀ n, P11129575637097960921.a n = A016931 n

theorem P11129575637097960921.correct : P11129575637097960921.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P11129575637097960921.a, A016931.P9569117993905758019.a, A016924, A016924.P9244154985732422165.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P12721247163704152803

`A016925(n)*A016926(n)`
-/

namespace A016931.P12721247163704152803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016925 n * A016926 n

end

end A016931.P12721247163704152803

namespace A016931

/-- `A016925(n)*A016926(n)` -/
def P12721247163704152803.Spec : Prop :=
  ∀ n, P12721247163704152803.a n = A016931 n

theorem P12721247163704152803.correct : P12721247163704152803.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P12721247163704152803.a, A016931.P9569117993905758019.a, A016925, A016925.P3935835382959505019.a, A016926, A016926.P17236842597661192459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P4467873432293092928

`A016921(n)²*A016929(n)`
-/

namespace A016931.P4467873432293092928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n ^ 2 * A016929 n

end

end A016931.P4467873432293092928

namespace A016931

/-- `A016921(n)²*A016929(n)` -/
def P4467873432293092928.Spec : Prop :=
  ∀ n, P4467873432293092928.a n = A016931 n

theorem P4467873432293092928.correct : P4467873432293092928.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P4467873432293092928.a, A016931.P9569117993905758019.a, A016921, A016921.P18318603358862595186.a, A016929, A016929.P9280878692414037459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P1974075302014081671

`A016926(n)²/A016921(n)`
-/

namespace A016931.P1974075302014081671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016926 n ^ 2 : ℚ) / (A016921 n : ℚ)

end

end A016931.P1974075302014081671

namespace A016931

/-- `A016926(n)²/A016921(n)` -/
def P1974075302014081671.Spec : Prop :=
  ∀ n, P1974075302014081671.a n = (A016931 n : ℚ)

end A016931

/-! ## A016931.P3402995169732552380

`A016921(n)²²*A016927(n)`
-/

namespace A016931.P3402995169732552380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n ^ 2) ^ 2 * A016927 n

end

end A016931.P3402995169732552380

namespace A016931

/-- `A016921(n)²²*A016927(n)` -/
def P3402995169732552380.Spec : Prop :=
  ∀ n, P3402995169732552380.a n = A016931 n

theorem P3402995169732552380.correct : P3402995169732552380.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P3402995169732552380.a, A016931.P9569117993905758019.a, A016921, A016921.P18318603358862595186.a, A016927, A016927.P17931775019733470070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P7514427113434619434

`A016922(n)²²*A016923(n)`
-/

namespace A016931.P7514427113434619434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016922 n ^ 2) ^ 2 * A016923 n

end

end A016931.P7514427113434619434

namespace A016931

/-- `A016922(n)²²*A016923(n)` -/
def P7514427113434619434.Spec : Prop :=
  ∀ n, P7514427113434619434.a n = A016931 n

theorem P7514427113434619434.correct : P7514427113434619434.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P7514427113434619434.a, A016931.P9569117993905758019.a, A016922, A016922.P12735287873668454303.a, A016923, A016923.P17840807225178979514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P12291477148330429219

`A016923(n)²²/A016921(n)`
-/

namespace A016931.P12291477148330429219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016923 n ^ 2) ^ 2 : ℚ) / (A016921 n : ℚ)

end

end A016931.P12291477148330429219

namespace A016931

/-- `A016923(n)²²/A016921(n)` -/
def P12291477148330429219.Spec : Prop :=
  ∀ n, P12291477148330429219.a n = (A016931 n : ℚ)

end A016931

/-! ## A016931.P17181683575444674080

`A016787(2*n)`
-/

namespace A016931.P17181683575444674080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016787 (2 * n)

end

end A016931.P17181683575444674080

namespace A016931

/-- `A016787(2*n)` -/
def P17181683575444674080.Spec : Prop :=
  ∀ n, P17181683575444674080.a n = A016931 n

theorem P17181683575444674080.correct : P17181683575444674080.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P17181683575444674080.a, A016931.P9569117993905758019.a, A016787, A016787.P1597524615219779150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P11140173410725166391

`A016777(2*n)*A016786(2*n)`
-/

namespace A016931.P11140173410725166391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n) * A016786 (2 * n)

end

end A016931.P11140173410725166391

namespace A016931

/-- `A016777(2*n)*A016786(2*n)` -/
def P11140173410725166391.Spec : Prop :=
  ∀ n, P11140173410725166391.a n = A016931 n

theorem P11140173410725166391.correct : P11140173410725166391.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P11140173410725166391.a, A016931.P9569117993905758019.a, A016777, A016777.P9931792138852554157.a, A016786, A016786.P17124437694900183996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P17401648013952887906

`A016781(2*n)*A016782(2*n)`
-/

namespace A016931.P17401648013952887906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (2 * n) * A016782 (2 * n)

end

end A016931.P17401648013952887906

namespace A016931

/-- `A016781(2*n)*A016782(2*n)` -/
def P17401648013952887906.Spec : Prop :=
  ∀ n, P17401648013952887906.a n = A016931 n

theorem P17401648013952887906.correct : P17401648013952887906.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P17401648013952887906.a, A016931.P9569117993905758019.a, A016781, A016781.P2935993440358225274.a, A016782, A016782.P12520626953037923259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P4756686011312229022

`A016788(2*n)/A016777(2*n)`
-/

namespace A016931.P4756686011312229022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016788 (2 * n) : ℚ) / (A016777 (2 * n) : ℚ)

end

end A016931.P4756686011312229022

namespace A016931

/-- `A016788(2*n)/A016777(2*n)` -/
def P4756686011312229022.Spec : Prop :=
  ∀ n, P4756686011312229022.a n = (A016931 n : ℚ)

theorem P4756686011312229022.correct : P4756686011312229022.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P4756686011312229022.a, A016931.P9569117993905758019.a, A016777, A016777.P9931792138852554157.a, A016788, A016788.P538685675464873772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P10590278870176570415

`A016781(2*n)²*A016777(2*n)`
-/

namespace A016931.P10590278870176570415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (2 * n) ^ 2 * A016777 (2 * n)

end

end A016931.P10590278870176570415

namespace A016931

/-- `A016781(2*n)²*A016777(2*n)` -/
def P10590278870176570415.Spec : Prop :=
  ∀ n, P10590278870176570415.a n = A016931 n

theorem P10590278870176570415.correct : P10590278870176570415.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P10590278870176570415.a, A016931.P9569117993905758019.a, A016777, A016777.P9931792138852554157.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P4882608649167962587

`A016782(2*n)²/A016777(2*n)`
-/

namespace A016931.P4882608649167962587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016782 (2 * n) ^ 2 : ℚ) / (A016777 (2 * n) : ℚ)

end

end A016931.P4882608649167962587

namespace A016931

/-- `A016782(2*n)²/A016777(2*n)` -/
def P4882608649167962587.Spec : Prop :=
  ∀ n, P4882608649167962587.a n = (A016931 n : ℚ)

theorem P4882608649167962587.correct : P4882608649167962587.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P4882608649167962587.a, A016931.P9569117993905758019.a, A016777, A016777.P9931792138852554157.a, A016782, A016782.P12520626953037923259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-! ## A016931.P8860533339853787397

`A007310(2*n+1)*A016930(n)`
-/

namespace A016931.P8860533339853787397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (2 * n + 1) * A016930 n

end

end A016931.P8860533339853787397

namespace A016931

/-- `A007310(2*n+1)*A016930(n)` -/
def P8860533339853787397.Spec : Prop :=
  ∀ n, P8860533339853787397.a n = A016931 n

end A016931

/-! ## A016931.P16640250004520612540

`A016926(n)²/A007310(2*n+1)`
-/

namespace A016931.P16640250004520612540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016926 n ^ 2 : ℚ) / (A007310 (2 * n + 1) : ℚ)

end

end A016931.P16640250004520612540

namespace A016931

/-- `A016926(n)²/A007310(2*n+1)` -/
def P16640250004520612540.Spec : Prop :=
  ∀ n, P16640250004520612540.a n = (A016931 n : ℚ)

end A016931

/-! ## A016931.P12808936585930816478

`A016763(3*n)`
-/

namespace A016931.P12808936585930816478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (3 * n)

end

end A016931.P12808936585930816478

namespace A016931

/-- `A016763(3*n)` -/
def P12808936585930816478.Spec : Prop :=
  ∀ n, P12808936585930816478.a n = A016931 n

theorem P12808936585930816478.correct : P12808936585930816478.Spec := by
  intro n
  simp only [A016931, Nat.add_sub_cancel, A016931.P12808936585930816478.a, A016931.P9569117993905758019.a, A016763, A016763.P10124515130881189729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016931

/-!
# A016932: 

The programs for A016932, there is no canonical definition to state claims against.
-/

/-! ## A016932.P3913389668168339981

`(6*n+1)^12`
-/

namespace A016932.P3913389668168339981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 1) ^ 12

end

end A016932.P3913389668168339981

/-! ## A016932.P17578125448851753035

`(or(1, 6*n)^6)²`
-/

namespace A016932.P17578125448851753035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (6 * n) ^ 6) ^ 2

end

end A016932.P17578125448851753035

/-! ## A016932.P17060787203465367540

`(xor(1, 6*n)^6)²`
-/

namespace A016932.P17060787203465367540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (6 * n) ^ 6) ^ 2

end

end A016932.P17060787203465367540

/-! ## A016932.P1193117793884042182

`A016926(n)²`
-/

namespace A016932.P1193117793884042182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016926 n ^ 2

end

end A016932.P1193117793884042182

/-! ## A016932.P8673942945087363181

`A016921(n)²*A016930(n)`
-/

namespace A016932.P8673942945087363181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n ^ 2 * A016930 n

end

end A016932.P8673942945087363181

/-! ## A016932.P1553073037902538009

`(A016927(n)/A016921(n))²`
-/

namespace A016932.P1553073037902538009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016927 n : ℚ) / (A016921 n : ℚ)) ^ 2

end

end A016932.P1553073037902538009

/-! ## A016932.P9458909571367636008

`A016788(2*n)`
-/

namespace A016932.P9458909571367636008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016788 (2 * n)

end

end A016932.P9458909571367636008

/-! ## A016932.P11392425105528153535

`A016782(2*n)²`
-/

namespace A016932.P11392425105528153535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 (2 * n) ^ 2

end

end A016932.P11392425105528153535

/-! ## A016932.P7200964031179771767

`A016764(3*n)`
-/

namespace A016932.P7200964031179771767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (3 * n)

end

end A016932.P7200964031179771767

/-! ## A016932.P797154291334821237

`A016758(3*n)²`
-/

namespace A016932.P797154291334821237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 (3 * n) ^ 2

end

end A016932.P797154291334821237

/-! ## A016932.P167509356788967931

`A016755(3*n)²²`
-/

namespace A016932.P167509356788967931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016755 (3 * n) ^ 2) ^ 2

end

end A016932.P167509356788967931

/-! ## A016932.P13428524696094825276

`sqrt(A016928(n)^3)`
-/

namespace A016932.P13428524696094825276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016928 n ^ 3 : ℝ)

end

end A016932.P13428524696094825276

/-! ## A016932.P2482045890116708121

`A000578(A008588(n)+1)²²`
-/

namespace A016932.P2482045890116708121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A008588 n + 1).toNat ^ 2) ^ 2

end

end A016932.P2482045890116708121

/-!
# A016933: a(n) = 6*n + 2.

The programs for A016933, the canonical program `A016933.P15647137774340761443` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016933 has offset 0).

The definition of A016933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n+2` (program `A016933.P15647137774340761443`, by `A016933.P15647137774340761443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016933.P15647137774340761443

`6*n+2`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016933

/-- `6*n+2` -/
def P15647137774340761443.Spec : Prop :=
  ∀ n, (P15647137774340761443.a n : ℤ) = A016933 n

theorem P15647137774340761443.correct : P15647137774340761443.Spec := by
  intro n
  simp only [A016933]

end A016933

/-!
# A016934: a(n) = (6*n + 2)^2.

The programs for A016934, the canonical program `A016934.P9224462813878172161` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016934 has offset 0).

The definition of A016934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)²` (program `A016934.P9224462813878172161`, by `A016934.P9224462813878172161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016934.P9224462813878172161

`(6*n+2)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016934

/-- `(6*n+2)²` -/
def P9224462813878172161.Spec : Prop :=
  ∀ n, (P9224462813878172161.a n : ℤ) = A016934 n

theorem P9224462813878172161.correct : P9224462813878172161.Spec := by
  intro n
  simp only [A016934]

end A016934

/-! ## A016934.P10635992869222734144

`record[(gcd(6, 2-n)+n)²]`
-/

namespace A016934.P10635992869222734144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (2 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016934.P10635992869222734144

namespace A016934

/-- `record[(gcd(6, 2-n)+n)²]` -/
def P10635992869222734144.Spec : Prop :=
  ∀ n, (P10635992869222734144.a n : ℤ) = A016934 n

end A016934

/-! ## A016934.P14581464166311790059

`record[gcd(n+2, n%6)²]`
-/

namespace A016934.P14581464166311790059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (n % 6) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016934.P14581464166311790059

namespace A016934

/-- `record[gcd(n+2, n%6)²]` -/
def P14581464166311790059.Spec : Prop :=
  ∀ n, (P14581464166311790059.a n : ℤ) = A016934 n

end A016934

/-! ## A016934.P3678660585420040921

`record[(lcm(2, xor(1, n))+n)²]`
-/

namespace A016934.P3678660585420040921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.xor 1 n) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016934.P3678660585420040921

namespace A016934

/-- `record[(lcm(2, xor(1, n))+n)²]` -/
def P3678660585420040921.Spec : Prop :=
  ∀ n, (P3678660585420040921.a n : ℤ) = A016934 n

end A016934

/-! ## A016934.P4239231008886993688

`ceil((sqrt(a(n-1))+6)²)` with `a(0)=4`
-/

namespace A016934.P4239231008886993688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 6) ^ 2⌉

end

end A016934.P4239231008886993688

namespace A016934

/-- `ceil((sqrt(a(n-1))+6)²)` -/
def P4239231008886993688.Spec : Prop :=
  ∀ n, P4239231008886993688.a n = A016934 n

end A016934

/-! ## A016934.P5855437485133328365

`record[(lcm(4, n+1)-(n+2))²]`
-/

namespace A016934.P5855437485133328365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016934.P5855437485133328365

namespace A016934

/-- `record[(lcm(4, n+1)-(n+2))²]` -/
def P5855437485133328365.Spec : Prop :=
  ∀ n, P5855437485133328365.a n = A016934 n

end A016934

/-! ## A016934.P994778184073405372

`record[(xor(2*n, -3)-(n-1))²]`
-/

namespace A016934.P994778184073405372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n : ℤ) (-3) - ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016934.P994778184073405372

namespace A016934

/-- `record[(xor(2*n, -3)-(n-1))²]` -/
def P994778184073405372.Spec : Prop :=
  ∀ n, P994778184073405372.a n = A016934 n

end A016934

/-! ## A016934.P13584278970806602992

`3*∑[a(n-1)+24]+1` with `a(0)=1, a(1)=20`
-/

namespace A016934.P13584278970806602992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A016934.P13584278970806602992

namespace A016934

/-- `3*∑[a(n-1)+24]+1` -/
def P13584278970806602992.Spec : Prop :=
  ∀ n, (P13584278970806602992.a n : ℤ) = A016934 n

end A016934

/-! ## A016934.P10470881044805358294

`4*(∑[ogf((15x+3x^2)/(1-2x+x^2))]+1)`
-/

namespace A016934.P10470881044805358294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A016934.P10470881044805358294

namespace A016934

/-- `4*(∑[ogf((15x+3x^2)/(1-2x+x^2))]+1)` -/
def P10470881044805358294.Spec : Prop :=
  ∀ n, P10470881044805358294.a n = A016934 n

end A016934

/-! ## A016934.P11706032141646055401

`record[(or(1, n)+2*n+1)^gcd(2, n)]`
-/

namespace A016934.P11706032141646055401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + (2 * n + 1)) ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016934.P11706032141646055401

namespace A016934

/-- `record[(or(1, n)+2*n+1)^gcd(2, n)]` -/
def P11706032141646055401.Spec : Prop :=
  ∀ n, (P11706032141646055401.a n : ℤ) = A016934 n

end A016934

/-! ## A016934.P2937379962988395260

`sqrt(A016936(n))`
-/

namespace A016934.P2937379962988395260
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016936 n : ℝ)

end

end A016934.P2937379962988395260

namespace A016934

/-- `sqrt(A016936(n))` -/
def P2937379962988395260.Spec : Prop :=
  ∀ n, P2937379962988395260.a n = (A016934 n : ℝ)

end A016934

/-! ## A016934.P14642831429945537313

`4*A016778(n)`
-/

namespace A016934.P14642831429945537313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016778 n

end

end A016934.P14642831429945537313

namespace A016934

/-- `4*A016778(n)` -/
def P14642831429945537313.Spec : Prop :=
  ∀ n, P14642831429945537313.a n = A016934 n

theorem P14642831429945537313.correct : P14642831429945537313.Spec := by
  intro n
  simp only [A016934, Nat.add_sub_cancel, A016934.P14642831429945537313.a, A016934.P9224462813878172161.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016934

/-! ## A016934.P6570219642736576282

`A017570(n)/4`
-/

namespace A016934.P6570219642736576282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017570 n : ℚ) / 4

end

end A016934.P6570219642736576282

namespace A016934

/-- `A017570(n)/4` -/
def P6570219642736576282.Spec : Prop :=
  ∀ n, P6570219642736576282.a n = (A016934 n : ℚ)

theorem P6570219642736576282.correct : P6570219642736576282.Spec := by
  intro n
  simp only [A016934, Nat.add_sub_cancel, A016934.P6570219642736576282.a, A016934.P9224462813878172161.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016934

/-! ## A016934.P10209652751322193719

`sqrt(sqrt(A016940(n)))`
-/

namespace A016934.P10209652751322193719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016940 n : ℝ))

end

end A016934.P10209652751322193719

namespace A016934

/-- `sqrt(sqrt(A016940(n)))` -/
def P10209652751322193719.Spec : Prop :=
  ∀ n, P10209652751322193719.a n = (A016934 n : ℝ)

end A016934

/-! ## A016934.P12183586222954244914

`4*A016777(n)²`
-/

namespace A016934.P12183586222954244914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016777 n ^ 2

end

end A016934.P12183586222954244914

namespace A016934

/-- `4*A016777(n)²` -/
def P12183586222954244914.Spec : Prop :=
  ∀ n, P12183586222954244914.a n = A016934 n

theorem P12183586222954244914.correct : P12183586222954244914.Spec := by
  intro n
  simp only [A016934, Nat.add_sub_cancel, A016934.P12183586222954244914.a, A016934.P9224462813878172161.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016934

/-! ## A016934.P13418441925023201700

`4*sqrt(A016780(n))`
-/

namespace A016934.P13418441925023201700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016780 n : ℝ)

end

end A016934.P13418441925023201700

namespace A016934

/-- `4*sqrt(A016780(n))` -/
def P13418441925023201700.Spec : Prop :=
  ∀ n, P13418441925023201700.a n = (A016934 n : ℝ)

end A016934

/-! ## A016934.P9924331930202522071

`sqrt(A017572(n))/4`
-/

namespace A016934.P9924331930202522071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017572 n : ℝ) / 4

end

end A016934.P9924331930202522071

namespace A016934

/-- `sqrt(A017572(n))/4` -/
def P9924331930202522071.Spec : Prop :=
  ∀ n, P9924331930202522071.a n = (A016934 n : ℝ)

end A016934

/-! ## A016934.P1790213472270384802

`2*(A081275(n)+1)`
-/

namespace A016934.P1790213472270384802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081275 n + 1)

end

end A016934.P1790213472270384802

namespace A016934

/-- `2*(A081275(n)+1)` -/
def P1790213472270384802.Spec : Prop :=
  ∀ n, P1790213472270384802.a n = A016934 n

theorem P1790213472270384802.correct : P1790213472270384802.Spec := by
  intro n
  simp only [A016934, Nat.add_sub_cancel, A016934.P1790213472270384802.a, A016934.P9224462813878172161.a, A081275, A081275.P11714172675934927490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016934

/-! ## A016934.P15424148839132388773

`3*A014641(n)+1`
-/

namespace A016934.P15424148839132388773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014641 n + 1

end

end A016934.P15424148839132388773

namespace A016934

/-- `3*A014641(n)+1` -/
def P15424148839132388773.Spec : Prop :=
  ∀ n, P15424148839132388773.a n = A016934 n

theorem P15424148839132388773.correct : P15424148839132388773.Spec := by
  intro n
  simp only [A016934, Nat.add_sub_cancel, A016934.P15424148839132388773.a, A016934.P9224462813878172161.a, A014641, A014641.P17401664217162026339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016934

/-!
# A016935: a(n) = (6*n + 2)^3.

The programs for A016935, the canonical program `A016935.P257911674419970010` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016935 has offset 0).

The definition of A016935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^3` (program `A016935.P257911674419970010`, by `A016935.P257911674419970010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016935.P257911674419970010

`(6*n+2)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016935

/-- `(6*n+2)^3` -/
def P257911674419970010.Spec : Prop :=
  ∀ n, (P257911674419970010.a n : ℤ) = A016935 n

theorem P257911674419970010.correct : P257911674419970010.Spec := by
  intro n
  simp only [A016935]

end A016935

/-! ## A016935.P14469405713944047258

`8*A016779(n)`
-/

namespace A016935.P14469405713944047258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016779 n

end

end A016935.P14469405713944047258

namespace A016935

/-- `8*A016779(n)` -/
def P14469405713944047258.Spec : Prop :=
  ∀ n, P14469405713944047258.a n = A016935 n

theorem P14469405713944047258.correct : P14469405713944047258.Spec := by
  intro n
  simp only [A016935, Nat.add_sub_cancel, A016935.P14469405713944047258.a, A016935.P257911674419970010.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016935

/-! ## A016935.P9092427670148297735

`record[(n+2+n)^gcd(3, n)]`
-/

namespace A016935.P9092427670148297735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2 + n) ^ Nat.gcd 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016935.P9092427670148297735

namespace A016935

/-- `record[(n+2+n)^gcd(3, n)]` -/
def P9092427670148297735.Spec : Prop :=
  ∀ n, (P9092427670148297735.a n : ℤ) = A016935 n

end A016935

/-! ## A016935.P13903403805169811394

`record[(lcm(4, n+1)-(n+2))^3]`
-/

namespace A016935.P13903403805169811394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 2 : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016935.P13903403805169811394

namespace A016935

/-- `record[(lcm(4, n+1)-(n+2))^3]` -/
def P13903403805169811394.Spec : Prop :=
  ∀ n, P13903403805169811394.a n = A016935 n

end A016935

/-! ## A016935.P7287403850798051648

`record[a(n-2)+12]^3/8` with `a(0)=4, a(1)=0`
-/

namespace A016935.P7287403850798051648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3 : ℚ) / 8

end

end A016935.P7287403850798051648

namespace A016935

/-- `record[a(n-2)+12]^3/8` -/
def P7287403850798051648.Spec : Prop :=
  ∀ n, P7287403850798051648.a n = (A016935 n : ℚ)

end A016935

/-! ## A016935.P2122505831983834841

`sqrt(A016938(n))`
-/

namespace A016935.P2122505831983834841
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016938 n : ℝ)

end

end A016935.P2122505831983834841

namespace A016935

/-- `sqrt(A016938(n))` -/
def P2122505831983834841.Spec : Prop :=
  ∀ n, P2122505831983834841.a n = (A016935 n : ℝ)

end A016935

/-! ## A016935.P1522408275177637589

`A017571(n)/8`
-/

namespace A016935.P1522408275177637589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017571 n : ℚ) / 8

end

end A016935.P1522408275177637589

namespace A016935

/-- `A017571(n)/8` -/
def P1522408275177637589.Spec : Prop :=
  ∀ n, P1522408275177637589.a n = (A016935 n : ℚ)

theorem P1522408275177637589.correct : P1522408275177637589.Spec := by
  intro n
  simp only [A016935, Nat.add_sub_cancel, A016935.P1522408275177637589.a, A016935.P257911674419970010.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016935

/-! ## A016935.P16348774500169236996

`8*sqrt(A016782(n))`
-/

namespace A016935.P16348774500169236996
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * Real.sqrt (A016782 n : ℝ)

end

end A016935.P16348774500169236996

namespace A016935

/-- `8*sqrt(A016782(n))` -/
def P16348774500169236996.Spec : Prop :=
  ∀ n, P16348774500169236996.a n = (A016935 n : ℝ)

end A016935

/-! ## A016935.P10270937642725138481

`sqrt(A016934(n)^3)`
-/

namespace A016935.P10270937642725138481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016934 n ^ 3 : ℝ)

end

end A016935.P10270937642725138481

namespace A016935

/-- `sqrt(A016934(n)^3)` -/
def P10270937642725138481.Spec : Prop :=
  ∀ n, P10270937642725138481.a n = (A016935 n : ℝ)

end A016935

/-! ## A016935.P4475375219253711813

`A016933(n)*A016934(n)`
-/

namespace A016935.P4475375219253711813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n * A016934 n

end

end A016935.P4475375219253711813

namespace A016935

/-- `A016933(n)*A016934(n)` -/
def P4475375219253711813.Spec : Prop :=
  ∀ n, P4475375219253711813.a n = A016935 n

theorem P4475375219253711813.correct : P4475375219253711813.Spec := by
  intro n
  simp only [A016935, Nat.add_sub_cancel, A016935.P4475375219253711813.a, A016935.P257911674419970010.a, A016933, A016933.P15647137774340761443.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016935

/-! ## A016935.P6114997237739567743

`A016936(n)/A016933(n)`
-/

namespace A016935.P6114997237739567743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 n : ℚ) / (A016933 n : ℚ)

end

end A016935.P6114997237739567743

namespace A016935

/-- `A016936(n)/A016933(n)` -/
def P6114997237739567743.Spec : Prop :=
  ∀ n, P6114997237739567743.a n = (A016935 n : ℚ)

end A016935

/-! ## A016935.P13588626094697323051

`A016937(n)/A016934(n)`
-/

namespace A016935.P13588626094697323051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016937 n : ℚ) / (A016934 n : ℚ)

end

end A016935.P13588626094697323051

namespace A016935

/-- `A016937(n)/A016934(n)` -/
def P13588626094697323051.Spec : Prop :=
  ∀ n, P13588626094697323051.a n = (A016935 n : ℚ)

end A016935

/-! ## A016935.P16214821841437010185

`A016939(n)/A016936(n)`
-/

namespace A016935.P16214821841437010185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016939 n : ℚ) / (A016936 n : ℚ)

end

end A016935.P16214821841437010185

namespace A016935

/-- `A016939(n)/A016936(n)` -/
def P16214821841437010185.Spec : Prop :=
  ∀ n, P16214821841437010185.a n = (A016935 n : ℚ)

end A016935

/-! ## A016935.P14723864619978808021

`A016940(n)/A016937(n)`
-/

namespace A016935.P14723864619978808021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016940 n : ℚ) / (A016937 n : ℚ)

end

end A016935.P14723864619978808021

namespace A016935

/-- `A016940(n)/A016937(n)` -/
def P14723864619978808021.Spec : Prop :=
  ∀ n, P14723864619978808021.a n = (A016935 n : ℚ)

end A016935

/-! ## A016935.P12263665691233410789

`A016941(n)/A016938(n)`
-/

namespace A016935.P12263665691233410789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016941 n : ℚ) / (A016938 n : ℚ)

end

end A016935.P12263665691233410789

namespace A016935

/-- `A016941(n)/A016938(n)` -/
def P12263665691233410789.Spec : Prop :=
  ∀ n, P12263665691233410789.a n = (A016935 n : ℚ)

end A016935

/-! ## A016935.P9507957510785015707

`A016942(n)/A016939(n)`
-/

namespace A016935.P9507957510785015707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016942 n : ℚ) / (A016939 n : ℚ)

end

end A016935.P9507957510785015707

namespace A016935

/-- `A016942(n)/A016939(n)` -/
def P9507957510785015707.Spec : Prop :=
  ∀ n, P9507957510785015707.a n = (A016935 n : ℚ)

end A016935

/-! ## A016935.P4138064995141600741

`A016943(n)/A016940(n)`
-/

namespace A016935.P4138064995141600741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016943 n : ℚ) / (A016940 n : ℚ)

end

end A016935.P4138064995141600741

namespace A016935

/-- `A016943(n)/A016940(n)` -/
def P4138064995141600741.Spec : Prop :=
  ∀ n, P4138064995141600741.a n = (A016935 n : ℚ)

end A016935

/-! ## A016935.P14785406590590556316

`∪[A017547(n), A017619(n)]`
-/

namespace A016935.P14785406590590556316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017547 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016935.P14785406590590556316

namespace A016935

/-- `∪[A017547(n), A017619(n)]` -/
def P14785406590590556316.Spec : Prop :=
  ∀ n, (P14785406590590556316.a n : ℤ) = A016935 n

end A016935

/-! ## A016935.P7163852952825939333

`A016936(n)²/A016937(n)`
-/

namespace A016935.P7163852952825939333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 n ^ 2 : ℚ) / (A016937 n : ℚ)

end

end A016935.P7163852952825939333

namespace A016935

/-- `A016936(n)²/A016937(n)` -/
def P7163852952825939333.Spec : Prop :=
  ∀ n, P7163852952825939333.a n = (A016935 n : ℚ)

end A016935

/-!
# A016936: a(n) = (6*n + 2)^4.

The programs for A016936, the canonical program `A016936.P18248798889067781136` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016936 has offset 0).

The definition of A016936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^4` (program `A016936.P18248798889067781136`, by `A016936.P18248798889067781136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016936.P18248798889067781136

`(6*n+2)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016936

/-- `(6*n+2)^4` -/
def P18248798889067781136.Spec : Prop :=
  ∀ n, (P18248798889067781136.a n : ℤ) = A016936 n

theorem P18248798889067781136.correct : P18248798889067781136.Spec := by
  intro n
  simp only [A016936]

end A016936

/-! ## A016936.P3195338724419952494

`A016934(n)²`
-/

namespace A016936.P3195338724419952494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 n ^ 2

end

end A016936.P3195338724419952494

namespace A016936

/-- `A016934(n)²` -/
def P3195338724419952494.Spec : Prop :=
  ∀ n, P3195338724419952494.a n = A016936 n

theorem P3195338724419952494.correct : P3195338724419952494.Spec := by
  intro n
  simp only [A016936, Nat.add_sub_cancel, A016936.P3195338724419952494.a, A016936.P18248798889067781136.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016936

/-! ## A016936.P3754591312111639532

`16*A016780(n)`
-/

namespace A016936.P3754591312111639532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016780 n

end

end A016936.P3754591312111639532

namespace A016936

/-- `16*A016780(n)` -/
def P3754591312111639532.Spec : Prop :=
  ∀ n, P3754591312111639532.a n = A016936 n

theorem P3754591312111639532.correct : P3754591312111639532.Spec := by
  intro n
  simp only [A016936, Nat.add_sub_cancel, A016936.P3754591312111639532.a, A016936.P18248798889067781136.a, A016780, A016780.P5276202049473501293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016936

/-! ## A016936.P5627918280566367162

`A016792(2*n)`
-/

namespace A016936.P5627918280566367162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016792 (2 * n)

end

end A016936.P5627918280566367162

namespace A016936

/-- `A016792(2*n)` -/
def P5627918280566367162.Spec : Prop :=
  ∀ n, P5627918280566367162.a n = A016936 n

theorem P5627918280566367162.correct : P5627918280566367162.Spec := by
  intro n
  simp only [A016936, Nat.add_sub_cancel, A016936.P5627918280566367162.a, A016936.P18248798889067781136.a, A016792, A016792.P16426647478479500699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016936

/-! ## A016936.P1826653105031573426

`xor(6*n, -2)²²`
-/

namespace A016936.P1826653105031573426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (6 * n : ℤ) (-2) ^ 2) ^ 2

end

end A016936.P1826653105031573426

namespace A016936

/-- `xor(6*n, -2)²²` -/
def P1826653105031573426.Spec : Prop :=
  ∀ n, P1826653105031573426.a n = A016936 n

end A016936

/-! ## A016936.P10601881712717087067

`lcm(2, (6*n+2)²²)`
-/

namespace A016936.P10601881712717087067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (((6 * n + 2) ^ 2) ^ 2)

end

end A016936.P10601881712717087067

namespace A016936

/-- `lcm(2, (6*n+2)²²)` -/
def P10601881712717087067.Spec : Prop :=
  ∀ n, (P10601881712717087067.a n : ℤ) = A016936 n

end A016936

/-! ## A016936.P3873044069716125449

`and(6*n+3, -2)²²`
-/

namespace A016936.P3873044069716125449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (6 * n + 3 : ℤ) (-2) ^ 2) ^ 2

end

end A016936.P3873044069716125449

namespace A016936

/-- `and(6*n+3, -2)²²` -/
def P3873044069716125449.Spec : Prop :=
  ∀ n, P3873044069716125449.a n = A016936 n

end A016936

/-! ## A016936.P3546314650231441355

`record[xor(1, 3*xor(1, n))²²]`
-/

namespace A016936.P3546314650231441355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * Nat.xor 1 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016936.P3546314650231441355

namespace A016936

/-- `record[xor(1, 3*xor(1, n))²²]` -/
def P3546314650231441355.Spec : Prop :=
  ∀ n, (P3546314650231441355.a n : ℤ) = A016936 n

end A016936

/-! ## A016936.P12135906840681700149

`Δ[C(2*n, 2)+n²]²²`
-/

namespace A016936.P12135906840681700149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016936.P12135906840681700149

namespace A016936

/-- `Δ[C(2*n, 2)+n²]²²` -/
def P12135906840681700149.Spec : Prop :=
  ∀ n, P12135906840681700149.a n = A016936 n

theorem P12135906840681700149.correct : P12135906840681700149.Spec := by
  intro n
  simp only [A016936, Nat.add_sub_cancel, A016936.P12135906840681700149.f1, A016936.P12135906840681700149.a, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016936

/-! ## A016936.P6926815259011622223

`record[(lcm(4, n+1)-(n+2))^4]`
-/

namespace A016936.P6926815259011622223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 2 : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016936.P6926815259011622223

namespace A016936

/-- `record[(lcm(4, n+1)-(n+2))^4]` -/
def P6926815259011622223.Spec : Prop :=
  ∀ n, P6926815259011622223.a n = A016936 n

end A016936

/-! ## A016936.P1492894598747734741

`(2*(C(n+1, n)+2*n))²²`
-/

namespace A016936.P1492894598747734741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.choose (n + 1) n + 2 * n)) ^ 2) ^ 2

end

end A016936.P1492894598747734741

namespace A016936

/-- `(2*(C(n+1, n)+2*n))²²` -/
def P1492894598747734741.Spec : Prop :=
  ∀ n, (P1492894598747734741.a n : ℤ) = A016936 n

theorem P1492894598747734741.correct : P1492894598747734741.Spec := by
  intro n
  simp only [A016936, Nat.add_sub_cancel, A016936.P1492894598747734741.a, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016936

/-! ## A016936.P3931428110494536753

`record[(gcd(n+3, n-3)+n-1)^4]`
-/

namespace A016936.P3931428110494536753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) : ℤ) + ((n : ℤ) - 1)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016936.P3931428110494536753

namespace A016936

/-- `record[(gcd(n+3, n-3)+n-1)^4]` -/
def P3931428110494536753.Spec : Prop :=
  ∀ n, P3931428110494536753.a n = A016936 n

end A016936

/-! ## A016936.P2443840588321344040

`∩[(2*n+n+2)², (2*n)²]²`
-/

namespace A016936.P2443840588321344040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 2)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2

end

end A016936.P2443840588321344040

namespace A016936

/-- `∩[(2*n+n+2)², (2*n)²]²` -/
def P2443840588321344040.Spec : Prop :=
  ∀ n, (P2443840588321344040.a n : ℤ) = A016936 n

end A016936

/-! ## A016936.P6647934480503205585

`(2*(and(2*n+1, 2*n)+n+1))²²`
-/

namespace A016936.P6647934480503205585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.land (2 * n + 1) (2 * n) + (n + 1))) ^ 2) ^ 2

end

end A016936.P6647934480503205585

namespace A016936

/-- `(2*(and(2*n+1, 2*n)+n+1))²²` -/
def P6647934480503205585.Spec : Prop :=
  ∀ n, (P6647934480503205585.a n : ℤ) = A016936 n

end A016936

/-! ## A016936.P3634563603188014805

`sqrt(A016940(n))`
-/

namespace A016936.P3634563603188014805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016940 n : ℝ)

end

end A016936.P3634563603188014805

namespace A016936

/-- `sqrt(A016940(n))` -/
def P3634563603188014805.Spec : Prop :=
  ∀ n, P3634563603188014805.a n = (A016936 n : ℝ)

end A016936

/-! ## A016936.P6567528307562179759

`A016933(n)²²`
-/

namespace A016936.P6567528307562179759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016933 n ^ 2) ^ 2

end

end A016936.P6567528307562179759

namespace A016936

/-- `A016933(n)²²` -/
def P6567528307562179759.Spec : Prop :=
  ∀ n, P6567528307562179759.a n = A016936 n

theorem P6567528307562179759.correct : P6567528307562179759.Spec := by
  intro n
  simp only [A016936, Nat.add_sub_cancel, A016936.P6567528307562179759.a, A016936.P18248798889067781136.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016936

/-! ## A016936.P5923674646345779557

`(4*A016778(n))²`
-/

namespace A016936.P5923674646345779557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016778 n) ^ 2

end

end A016936.P5923674646345779557

namespace A016936

/-- `(4*A016778(n))²` -/
def P5923674646345779557.Spec : Prop :=
  ∀ n, P5923674646345779557.a n = A016936 n

theorem P5923674646345779557.correct : P5923674646345779557.Spec := by
  intro n
  simp only [A016936, Nat.add_sub_cancel, A016936.P5923674646345779557.a, A016936.P18248798889067781136.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016936

/-! ## A016936.P1213443201749958909

`(A017570(n)/4)²`
-/

namespace A016936.P1213443201749958909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017570 n : ℚ) / 4) ^ 2

end

end A016936.P1213443201749958909

namespace A016936

/-- `(A017570(n)/4)²` -/
def P1213443201749958909.Spec : Prop :=
  ∀ n, P1213443201749958909.a n = (A016936 n : ℚ)

theorem P1213443201749958909.correct : P1213443201749958909.Spec := by
  intro n
  simp only [A016936, Nat.add_sub_cancel, A016936.P1213443201749958909.a, A016936.P18248798889067781136.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016936

/-!
# A016937: a(n) = (6*n + 2)^5.

The programs for A016937, the canonical program `A016937.P4646017052301238627` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016937 has offset 0).

The definition of A016937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^5` (program `A016937.P4646017052301238627`, by `A016937.P4646017052301238627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016937.P4646017052301238627

`(6*n+2)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016937

/-- `(6*n+2)^5` -/
def P4646017052301238627.Spec : Prop :=
  ∀ n, (P4646017052301238627.a n : ℤ) = A016937 n

theorem P4646017052301238627.correct : P4646017052301238627.Spec := by
  intro n
  simp only [A016937]

end A016937

/-! ## A016937.P6220688914411788366

`32*A016781(n)`
-/

namespace A016937.P6220688914411788366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016781 n

end

end A016937.P6220688914411788366

namespace A016937

/-- `32*A016781(n)` -/
def P6220688914411788366.Spec : Prop :=
  ∀ n, P6220688914411788366.a n = A016937 n

theorem P6220688914411788366.correct : P6220688914411788366.Spec := by
  intro n
  simp only [A016937, Nat.add_sub_cancel, A016937.P6220688914411788366.a, A016937.P4646017052301238627.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016937

/-! ## A016937.P6057641535253951457

`record[(lcm(4, n+1)-(n+2))^5]`
-/

namespace A016937.P6057641535253951457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 2 : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016937.P6057641535253951457

namespace A016937

/-- `record[(lcm(4, n+1)-(n+2))^5]` -/
def P6057641535253951457.Spec : Prop :=
  ∀ n, P6057641535253951457.a n = A016937 n

end A016937

/-! ## A016937.P13014290076322231118

`record[(gcd(n+3, n-3)+n-1)^5]`
-/

namespace A016937.P13014290076322231118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) : ℤ) + ((n : ℤ) - 1)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016937.P13014290076322231118

namespace A016937

/-- `record[(gcd(n+3, n-3)+n-1)^5]` -/
def P13014290076322231118.Spec : Prop :=
  ∀ n, P13014290076322231118.a n = A016937 n

end A016937

/-! ## A016937.P3418060805853986460

`sqrt(A016942(n))`
-/

namespace A016937.P3418060805853986460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016942 n : ℝ)

end

end A016937.P3418060805853986460

namespace A016937

/-- `sqrt(A016942(n))` -/
def P3418060805853986460.Spec : Prop :=
  ∀ n, P3418060805853986460.a n = (A016937 n : ℝ)

end A016937

/-! ## A016937.P12799910881077670890

`sqrt(A016934(n)^5)`
-/

namespace A016937.P12799910881077670890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016934 n ^ 5 : ℝ)

end

end A016937.P12799910881077670890

namespace A016937

/-- `sqrt(A016934(n)^5)` -/
def P12799910881077670890.Spec : Prop :=
  ∀ n, P12799910881077670890.a n = (A016937 n : ℝ)

end A016937

/-! ## A016937.P4788433328463008386

`32*sqrt(A016786(n))`
-/

namespace A016937.P4788433328463008386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  32 * Real.sqrt (A016786 n : ℝ)

end

end A016937.P4788433328463008386

namespace A016937

/-- `32*sqrt(A016786(n))` -/
def P4788433328463008386.Spec : Prop :=
  ∀ n, P4788433328463008386.a n = (A016937 n : ℝ)

end A016937

/-! ## A016937.P12461207871762511691

`abs((2-A016957(n))^5)`
-/

namespace A016937.P12461207871762511691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A016957 n) ^ 5|

end

end A016937.P12461207871762511691

namespace A016937

/-- `abs((2-A016957(n))^5)` -/
def P12461207871762511691.Spec : Prop :=
  ∀ n, P12461207871762511691.a n = A016937 n

end A016937

/-! ## A016937.P3176461611944004298

`4*(3*n+1)²*A016935(n)`
-/

namespace A016937.P3176461611944004298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (3 * n + 1) ^ 2 : ℤ) * A016935 n

end

end A016937.P3176461611944004298

namespace A016937

/-- `4*(3*n+1)²*A016935(n)` -/
def P3176461611944004298.Spec : Prop :=
  ∀ n, P3176461611944004298.a n = A016937 n

theorem P3176461611944004298.correct : P3176461611944004298.Spec := by
  intro n
  simp only [A016937, Nat.add_sub_cancel, A016937.P3176461611944004298.a, A016937.P4646017052301238627.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016937

/-! ## A016937.P7306765179011015743

`(8*A016779(n))²/sqrt(4*(3*n+1)²)`
-/

namespace A016937.P7306765179011015743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 * A016779 n) ^ 2 : ℝ) / Real.sqrt (4 * (3 * n + 1) ^ 2 : ℝ)

end

end A016937.P7306765179011015743

namespace A016937

/-- `(8*A016779(n))²/sqrt(4*(3*n+1)²)` -/
def P7306765179011015743.Spec : Prop :=
  ∀ n, P7306765179011015743.a n = (A016937 n : ℝ)

end A016937

/-! ## A016937.P8065276870034311585

`A016933(n)*A016936(n)`
-/

namespace A016937.P8065276870034311585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n * A016936 n

end

end A016937.P8065276870034311585

namespace A016937

/-- `A016933(n)*A016936(n)` -/
def P8065276870034311585.Spec : Prop :=
  ∀ n, P8065276870034311585.a n = A016937 n

theorem P8065276870034311585.correct : P8065276870034311585.Spec := by
  intro n
  simp only [A016937, Nat.add_sub_cancel, A016937.P8065276870034311585.a, A016937.P4646017052301238627.a, A016933, A016933.P15647137774340761443.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016937

/-! ## A016937.P7320991286878927029

`A016938(n)/A016933(n)`
-/

namespace A016937.P7320991286878927029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016938 n : ℚ) / (A016933 n : ℚ)

end

end A016937.P7320991286878927029

namespace A016937

/-- `A016938(n)/A016933(n)` -/
def P7320991286878927029.Spec : Prop :=
  ∀ n, P7320991286878927029.a n = (A016937 n : ℚ)

end A016937

/-! ## A016937.P13661959059270032051

`A016939(n)/A016934(n)`
-/

namespace A016937.P13661959059270032051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016939 n : ℚ) / (A016934 n : ℚ)

end

end A016937.P13661959059270032051

namespace A016937

/-- `A016939(n)/A016934(n)` -/
def P13661959059270032051.Spec : Prop :=
  ∀ n, P13661959059270032051.a n = (A016937 n : ℚ)

end A016937

/-! ## A016937.P3269957774043838141

`A016940(n)/A016935(n)`
-/

namespace A016937.P3269957774043838141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016940 n : ℚ) / (A016935 n : ℚ)

end

end A016937.P3269957774043838141

namespace A016937

/-- `A016940(n)/A016935(n)` -/
def P3269957774043838141.Spec : Prop :=
  ∀ n, P3269957774043838141.a n = (A016937 n : ℚ)

end A016937

/-! ## A016937.P6533083743974351572

`A016941(n)/A016936(n)`
-/

namespace A016937.P6533083743974351572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016941 n : ℚ) / (A016936 n : ℚ)

end

end A016937.P6533083743974351572

namespace A016937

/-- `A016941(n)/A016936(n)` -/
def P6533083743974351572.Spec : Prop :=
  ∀ n, P6533083743974351572.a n = (A016937 n : ℚ)

end A016937

/-! ## A016937.P8356514701686475755

`A016943(n)/A016938(n)`
-/

namespace A016937.P8356514701686475755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016943 n : ℚ) / (A016938 n : ℚ)

end

end A016937.P8356514701686475755

namespace A016937

/-- `A016943(n)/A016938(n)` -/
def P8356514701686475755.Spec : Prop :=
  ∀ n, P8356514701686475755.a n = (A016937 n : ℚ)

end A016937

/-! ## A016937.P4276564652674418311

`∪[A017549(n), A017621(n)]`
-/

namespace A016937.P4276564652674418311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017621 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016937.P4276564652674418311

namespace A016937

/-- `∪[A017549(n), A017621(n)]` -/
def P4276564652674418311.Spec : Prop :=
  ∀ n, (P4276564652674418311.a n : ℤ) = A016937 n

end A016937

/-! ## A016937.P15783492441836103556

`A016934(n)²*A016933(n)`
-/

namespace A016937.P15783492441836103556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 n ^ 2 * A016933 n

end

end A016937.P15783492441836103556

namespace A016937

/-- `A016934(n)²*A016933(n)` -/
def P15783492441836103556.Spec : Prop :=
  ∀ n, P15783492441836103556.a n = A016937 n

theorem P15783492441836103556.correct : P15783492441836103556.Spec := by
  intro n
  simp only [A016937, Nat.add_sub_cancel, A016937.P15783492441836103556.a, A016937.P4646017052301238627.a, A016933, A016933.P15647137774340761443.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016937

/-! ## A016937.P4997196878376303738

`A016936(n)²/A016935(n)`
-/

namespace A016937.P4997196878376303738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 n ^ 2 : ℚ) / (A016935 n : ℚ)

end

end A016937.P4997196878376303738

namespace A016937

/-- `A016936(n)²/A016935(n)` -/
def P4997196878376303738.Spec : Prop :=
  ∀ n, P4997196878376303738.a n = (A016937 n : ℚ)

end A016937

/-! ## A016937.P17220331888634141400

`A016939(n)/A016933(n)²`
-/

namespace A016937.P17220331888634141400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016939 n : ℚ) / (A016933 n ^ 2 : ℚ)

end

end A016937.P17220331888634141400

namespace A016937

/-- `A016939(n)/A016933(n)²` -/
def P17220331888634141400.Spec : Prop :=
  ∀ n, P17220331888634141400.a n = (A016937 n : ℚ)

end A016937

/-!
# A016938: a(n) = (6*n + 2)^6.

The programs for A016938, the canonical program `A016938.P15117638160680881893` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016938 has offset 0).

The definition of A016938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^6` (program `A016938.P15117638160680881893`, by `A016938.P15117638160680881893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016938.P15117638160680881893

`(6*n+2)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016938

/-- `(6*n+2)^6` -/
def P15117638160680881893.Spec : Prop :=
  ∀ n, (P15117638160680881893.a n : ℤ) = A016938 n

theorem P15117638160680881893.correct : P15117638160680881893.Spec := by
  intro n
  simp only [A016938]

end A016938

/-! ## A016938.P4048651171758544608

`A016935(n)²`
-/

namespace A016938.P4048651171758544608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n ^ 2

end

end A016938.P4048651171758544608

namespace A016938

/-- `A016935(n)²` -/
def P4048651171758544608.Spec : Prop :=
  ∀ n, P4048651171758544608.a n = A016938 n

theorem P4048651171758544608.correct : P4048651171758544608.Spec := by
  intro n
  simp only [A016938, Nat.add_sub_cancel, A016938.P4048651171758544608.a, A016938.P15117638160680881893.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016938

/-! ## A016938.P15432088027226292322

`64*A016782(n)`
-/

namespace A016938.P15432088027226292322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016782 n

end

end A016938.P15432088027226292322

namespace A016938

/-- `64*A016782(n)` -/
def P15432088027226292322.Spec : Prop :=
  ∀ n, P15432088027226292322.a n = A016938 n

theorem P15432088027226292322.correct : P15432088027226292322.Spec := by
  intro n
  simp only [A016938, Nat.add_sub_cancel, A016938.P15432088027226292322.a, A016938.P15117638160680881893.a, A016782, A016782.P12520626953037923259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016938

/-! ## A016938.P5307163490464092858

`record[(-(n+2))^gcd(6, n)]`
-/

namespace A016938.P5307163490464092858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ)) ^ Nat.gcd 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016938.P5307163490464092858

namespace A016938

/-- `record[(-(n+2))^gcd(6, n)]` -/
def P5307163490464092858.Spec : Prop :=
  ∀ n, P5307163490464092858.a n = A016938 n

end A016938

/-! ## A016938.P14401128714666557539

`(8*A016779(n))²`
-/

namespace A016938.P14401128714666557539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A016779 n) ^ 2

end

end A016938.P14401128714666557539

namespace A016938

/-- `(8*A016779(n))²` -/
def P14401128714666557539.Spec : Prop :=
  ∀ n, P14401128714666557539.a n = A016938 n

theorem P14401128714666557539.correct : P14401128714666557539.Spec := by
  intro n
  simp only [A016938, Nat.add_sub_cancel, A016938.P14401128714666557539.a, A016938.P15117638160680881893.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016938

/-! ## A016938.P17106513133668257447

`sqrt(A016936(n)^3)`
-/

namespace A016938.P17106513133668257447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016936 n ^ 3 : ℝ)

end

end A016938.P17106513133668257447

namespace A016938

/-- `sqrt(A016936(n)^3)` -/
def P17106513133668257447.Spec : Prop :=
  ∀ n, P17106513133668257447.a n = (A016938 n : ℝ)

end A016938

/-! ## A016938.P6883149003837940839

`(Δ[A056106(n)]^3)²`
-/

namespace A016938.P6883149003837940839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016938.P6883149003837940839

namespace A016938

/-- `(Δ[A056106(n)]^3)²` -/
def P6883149003837940839.Spec : Prop :=
  ∀ n, P6883149003837940839.a n = A016938 n

theorem P6883149003837940839.correct : P6883149003837940839.Spec := by
  intro n
  simp only [A016938, Nat.add_sub_cancel, A016938.P6883149003837940839.f1, A016938.P6883149003837940839.a, A016938.P15117638160680881893.a, A056106, A056106.P14646240334205012070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016938

/-! ## A016938.P1427762043114748752

`(Δ[A084060(n)]^3)²`
-/

namespace A016938.P1427762043114748752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016938.P1427762043114748752

namespace A016938

/-- `(Δ[A084060(n)]^3)²` -/
def P1427762043114748752.Spec : Prop :=
  ∀ n, P1427762043114748752.a n = A016938 n

end A016938

/-! ## A016938.P833889046594302147

`lcm(8, (1-A016945(n))^6)`
-/

namespace A016938.P833889046594302147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 ((1 - A016945 n) ^ 6)

end

end A016938.P833889046594302147

namespace A016938

/-- `lcm(8, (1-A016945(n))^6)` -/
def P833889046594302147.Spec : Prop :=
  ∀ n, (P833889046594302147.a n : ℤ) = A016938 n

end A016938

/-! ## A016938.P11801507431966744348

`A016933(n)*A016937(n)`
-/

namespace A016938.P11801507431966744348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n * A016937 n

end

end A016938.P11801507431966744348

namespace A016938

/-- `A016933(n)*A016937(n)` -/
def P11801507431966744348.Spec : Prop :=
  ∀ n, P11801507431966744348.a n = A016938 n

theorem P11801507431966744348.correct : P11801507431966744348.Spec := by
  intro n
  simp only [A016938, Nat.add_sub_cancel, A016938.P11801507431966744348.a, A016938.P15117638160680881893.a, A016933, A016933.P15647137774340761443.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016938

/-! ## A016938.P11631259287998699747

`A016934(n)*A016936(n)`
-/

namespace A016938.P11631259287998699747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 n * A016936 n

end

end A016938.P11631259287998699747

namespace A016938

/-- `A016934(n)*A016936(n)` -/
def P11631259287998699747.Spec : Prop :=
  ∀ n, P11631259287998699747.a n = A016938 n

theorem P11631259287998699747.correct : P11631259287998699747.Spec := by
  intro n
  simp only [A016938, Nat.add_sub_cancel, A016938.P11631259287998699747.a, A016938.P15117638160680881893.a, A016934, A016934.P9224462813878172161.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016938

/-! ## A016938.P1292862545806908340

`A016779(n)*A017571(n)`
-/

namespace A016938.P1292862545806908340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n * A017571 n

end

end A016938.P1292862545806908340

namespace A016938

/-- `A016779(n)*A017571(n)` -/
def P1292862545806908340.Spec : Prop :=
  ∀ n, P1292862545806908340.a n = A016938 n

theorem P1292862545806908340.correct : P1292862545806908340.Spec := by
  intro n
  simp only [A016938, Nat.add_sub_cancel, A016938.P1292862545806908340.a, A016938.P15117638160680881893.a, A016779, A016779.P12183208488872344435.a, A017571, A017571.P17779126235710720224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016938

/-! ## A016938.P17441255307866745257

`A016939(n)/A016933(n)`
-/

namespace A016938.P17441255307866745257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016939 n : ℚ) / (A016933 n : ℚ)

end

end A016938.P17441255307866745257

namespace A016938

/-- `A016939(n)/A016933(n)` -/
def P17441255307866745257.Spec : Prop :=
  ∀ n, P17441255307866745257.a n = (A016938 n : ℚ)

end A016938

/-! ## A016938.P17075385525511113196

`A016940(n)/A016934(n)`
-/

namespace A016938.P17075385525511113196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016940 n : ℚ) / (A016934 n : ℚ)

end

end A016938.P17075385525511113196

namespace A016938

/-- `A016940(n)/A016934(n)` -/
def P17075385525511113196.Spec : Prop :=
  ∀ n, P17075385525511113196.a n = (A016938 n : ℚ)

end A016938

/-! ## A016938.P5644710651972008588

`A016941(n)/A016935(n)`
-/

namespace A016938.P5644710651972008588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016941 n : ℚ) / (A016935 n : ℚ)

end

end A016938.P5644710651972008588

namespace A016938

/-- `A016941(n)/A016935(n)` -/
def P5644710651972008588.Spec : Prop :=
  ∀ n, P5644710651972008588.a n = (A016938 n : ℚ)

end A016938

/-! ## A016938.P12693310179483486062

`A016942(n)/A016936(n)`
-/

namespace A016938.P12693310179483486062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016942 n : ℚ) / (A016936 n : ℚ)

end

end A016938.P12693310179483486062

namespace A016938

/-- `A016942(n)/A016936(n)` -/
def P12693310179483486062.Spec : Prop :=
  ∀ n, P12693310179483486062.a n = (A016938 n : ℚ)

end A016938

/-! ## A016938.P3983053400711499645

`A016943(n)/A016937(n)`
-/

namespace A016938.P3983053400711499645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016943 n : ℚ) / (A016937 n : ℚ)

end

end A016938.P3983053400711499645

namespace A016938

/-- `A016943(n)/A016937(n)` -/
def P3983053400711499645.Spec : Prop :=
  ∀ n, P3983053400711499645.a n = (A016938 n : ℚ)

end A016938

/-! ## A016938.P11400061766270016887

`∪[A017550(n), A017622(n)]`
-/

namespace A016938.P11400061766270016887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017622 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016938.P11400061766270016887

namespace A016938

/-- `∪[A017550(n), A017622(n)]` -/
def P11400061766270016887.Spec : Prop :=
  ∀ n, (P11400061766270016887.a n : ℤ) = A016938 n

end A016938

/-! ## A016938.P2421248431780224544

`(A016933(n)*A016934(n))²`
-/

namespace A016938.P2421248431780224544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016933 n * A016934 n) ^ 2

end

end A016938.P2421248431780224544

namespace A016938

/-- `(A016933(n)*A016934(n))²` -/
def P2421248431780224544.Spec : Prop :=
  ∀ n, P2421248431780224544.a n = A016938 n

theorem P2421248431780224544.correct : P2421248431780224544.Spec := by
  intro n
  simp only [A016938, Nat.add_sub_cancel, A016938.P2421248431780224544.a, A016938.P15117638160680881893.a, A016933, A016933.P15647137774340761443.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016938

/-!
# A016939: a(n) = (6n+2)^7.

The programs for A016939, the canonical program `A016939.P10686673164026481289` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016939 has offset 0).

The definition of A016939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^7` (program `A016939.P10686673164026481289`, by `A016939.P10686673164026481289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016939.P10686673164026481289

`(6*n+2)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016939

/-- `(6*n+2)^7` -/
def P10686673164026481289.Spec : Prop :=
  ∀ n, (P10686673164026481289.a n : ℤ) = A016939 n

theorem P10686673164026481289.correct : P10686673164026481289.Spec := by
  intro n
  simp only [A016939]

end A016939

/-! ## A016939.P12753794344190915376

`128*A016783(n)`
-/

namespace A016939.P12753794344190915376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  128 * A016783 n

end

end A016939.P12753794344190915376

namespace A016939

/-- `128*A016783(n)` -/
def P12753794344190915376.Spec : Prop :=
  ∀ n, P12753794344190915376.a n = A016939 n

theorem P12753794344190915376.correct : P12753794344190915376.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P12753794344190915376.a, A016939.P10686673164026481289.a, A016783, A016783.P4851290957634662023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P4231478239179801367

`(6*n+2)*A016938(n)`
-/

namespace A016939.P4231478239179801367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) * A016938 n

end

end A016939.P4231478239179801367

namespace A016939

/-- `(6*n+2)*A016938(n)` -/
def P4231478239179801367.Spec : Prop :=
  ∀ n, P4231478239179801367.a n = A016939 n

theorem P4231478239179801367.correct : P4231478239179801367.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P4231478239179801367.a, A016939.P10686673164026481289.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P3404845280381189838

`(6*n+2)²*A016937(n)`
-/

namespace A016939.P3404845280381189838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 2) ^ 2 : ℤ) * A016937 n

end

end A016939.P3404845280381189838

namespace A016939

/-- `(6*n+2)²*A016937(n)` -/
def P3404845280381189838.Spec : Prop :=
  ∀ n, P3404845280381189838.a n = A016939 n

theorem P3404845280381189838.correct : P3404845280381189838.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P3404845280381189838.a, A016939.P10686673164026481289.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P2591183386564807856

`A016941(n)/(4*(3*n+1)²)`
-/

namespace A016939.P2591183386564807856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016941 n : ℚ) / (4 * (3 * n + 1) ^ 2 : ℚ)

end

end A016939.P2591183386564807856

namespace A016939

/-- `A016941(n)/(4*(3*n+1)²)` -/
def P2591183386564807856.Spec : Prop :=
  ∀ n, P2591183386564807856.a n = (A016939 n : ℚ)

theorem P2591183386564807856.correct : P2591183386564807856.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P2591183386564807856.a, A016939.P10686673164026481289.a, A016941, A016941.P12406819948871433003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P17382176961926523864

`(4*(3*n+1)²)²*A016935(n)`
-/

namespace A016939.P17382176961926523864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (3 * n + 1) ^ 2) ^ 2 : ℤ) * A016935 n

end

end A016939.P17382176961926523864

namespace A016939

/-- `(4*(3*n+1)²)²*A016935(n)` -/
def P17382176961926523864.Spec : Prop :=
  ∀ n, P17382176961926523864.a n = A016939 n

theorem P17382176961926523864.correct : P17382176961926523864.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P17382176961926523864.a, A016939.P10686673164026481289.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P16102448698812765897

`8*A016779(n)*(4*(3*n+1)²)²`
-/

namespace A016939.P16102448698812765897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016779 n * ((4 * (3 * n + 1) ^ 2) ^ 2 : ℤ)

end

end A016939.P16102448698812765897

namespace A016939

/-- `8*A016779(n)*(4*(3*n+1)²)²` -/
def P16102448698812765897.Spec : Prop :=
  ∀ n, P16102448698812765897.a n = A016939 n

theorem P16102448698812765897.correct : P16102448698812765897.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P16102448698812765897.a, A016939.P10686673164026481289.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P16590635551492468601

`A016935(n)*A016936(n)`
-/

namespace A016939.P16590635551492468601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n * A016936 n

end

end A016939.P16590635551492468601

namespace A016939

/-- `A016935(n)*A016936(n)` -/
def P16590635551492468601.Spec : Prop :=
  ∀ n, P16590635551492468601.a n = A016939 n

theorem P16590635551492468601.correct : P16590635551492468601.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P16590635551492468601.a, A016939.P10686673164026481289.a, A016935, A016935.P257911674419970010.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P1675183955906051870

`A016940(n)/A016933(n)`
-/

namespace A016939.P1675183955906051870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016940 n : ℚ) / (A016933 n : ℚ)

end

end A016939.P1675183955906051870

namespace A016939

/-- `A016940(n)/A016933(n)` -/
def P1675183955906051870.Spec : Prop :=
  ∀ n, P1675183955906051870.a n = (A016939 n : ℚ)

end A016939

/-! ## A016939.P3430337647890799608

`A016942(n)/A016935(n)`
-/

namespace A016939.P3430337647890799608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016942 n : ℚ) / (A016935 n : ℚ)

end

end A016939.P3430337647890799608

namespace A016939

/-- `A016942(n)/A016935(n)` -/
def P3430337647890799608.Spec : Prop :=
  ∀ n, P3430337647890799608.a n = (A016939 n : ℚ)

end A016939

/-! ## A016939.P17975579545116445307

`A016943(n)/A016936(n)`
-/

namespace A016939.P17975579545116445307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016943 n : ℚ) / (A016936 n : ℚ)

end

end A016939.P17975579545116445307

namespace A016939

/-- `A016943(n)/A016936(n)` -/
def P17975579545116445307.Spec : Prop :=
  ∀ n, P17975579545116445307.a n = (A016939 n : ℚ)

end A016939

/-! ## A016939.P11342923753851860133

`A016935(n)²*A016933(n)`
-/

namespace A016939.P11342923753851860133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n ^ 2 * A016933 n

end

end A016939.P11342923753851860133

namespace A016939

/-- `A016935(n)²*A016933(n)` -/
def P11342923753851860133.Spec : Prop :=
  ∀ n, P11342923753851860133.a n = A016939 n

theorem P11342923753851860133.correct : P11342923753851860133.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P11342923753851860133.a, A016939.P10686673164026481289.a, A016933, A016933.P15647137774340761443.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P1403588927012789896

`A016936(n)²/A016933(n)`
-/

namespace A016939.P1403588927012789896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 n ^ 2 : ℚ) / (A016933 n : ℚ)

end

end A016939.P1403588927012789896

namespace A016939

/-- `A016936(n)²/A016933(n)` -/
def P1403588927012789896.Spec : Prop :=
  ∀ n, P1403588927012789896.a n = (A016939 n : ℚ)

end A016939

/-! ## A016939.P16691044349774617679

`A016937(n)²/A016935(n)`
-/

namespace A016939.P16691044349774617679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016937 n ^ 2 : ℚ) / (A016935 n : ℚ)

end

end A016939.P16691044349774617679

namespace A016939

/-- `A016937(n)²/A016935(n)` -/
def P16691044349774617679.Spec : Prop :=
  ∀ n, P16691044349774617679.a n = (A016939 n : ℚ)

end A016939

/-! ## A016939.P2629725419959325725

`A016943(n)/A016934(n)²`
-/

namespace A016939.P2629725419959325725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016943 n : ℚ) / (A016934 n ^ 2 : ℚ)

end

end A016939.P2629725419959325725

namespace A016939

/-- `A016943(n)/A016934(n)²` -/
def P2629725419959325725.Spec : Prop :=
  ∀ n, P2629725419959325725.a n = (A016939 n : ℚ)

end A016939

/-! ## A016939.P11812563114850708085

`A016934(n)²²/A016933(n)`
-/

namespace A016939.P11812563114850708085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016934 n ^ 2) ^ 2 : ℚ) / (A016933 n : ℚ)

end

end A016939.P11812563114850708085

namespace A016939

/-- `A016934(n)²²/A016933(n)` -/
def P11812563114850708085.Spec : Prop :=
  ∀ n, P11812563114850708085.a n = (A016939 n : ℚ)

end A016939

/-! ## A016939.P3411197213731593705

`A016936(n)²/(A016921(n)+1)`
-/

namespace A016939.P3411197213731593705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 n ^ 2 : ℚ) / (A016921 n + 1 : ℚ)

end

end A016939.P3411197213731593705

namespace A016939

/-- `A016936(n)²/(A016921(n)+1)` -/
def P3411197213731593705.Spec : Prop :=
  ∀ n, P3411197213731593705.a n = (A016939 n : ℚ)

theorem P3411197213731593705.correct : P3411197213731593705.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P3411197213731593705.a, A016939.P10686673164026481289.a, A016921, A016921.P18318603358862595186.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P2729989590428798874

`A016933(n)*A016934(n)*A016936(n)`
-/

namespace A016939.P2729989590428798874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n * A016934 n * A016936 n

end

end A016939.P2729989590428798874

namespace A016939

/-- `A016933(n)*A016934(n)*A016936(n)` -/
def P2729989590428798874.Spec : Prop :=
  ∀ n, P2729989590428798874.a n = A016939 n

theorem P2729989590428798874.correct : P2729989590428798874.Spec := by
  intro n
  simp only [A016939, Nat.add_sub_cancel, A016939.P2729989590428798874.a, A016939.P10686673164026481289.a, A016933, A016933.P15647137774340761443.a, A016934, A016934.P9224462813878172161.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016939

/-! ## A016939.P7809362301462052931

`A016934(n)*A016938(n)/A016933(n)`
-/

namespace A016939.P7809362301462052931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016934 n * A016938 n : ℚ) / (A016933 n : ℚ)

end

end A016939.P7809362301462052931

namespace A016939

/-- `A016934(n)*A016938(n)/A016933(n)` -/
def P7809362301462052931.Spec : Prop :=
  ∀ n, P7809362301462052931.a n = (A016939 n : ℚ)

end A016939

/-! ## A016939.P2160287912293113231

`A016936(n)*A016937(n)/A016934(n)`
-/

namespace A016939.P2160287912293113231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 n * A016937 n : ℚ) / (A016934 n : ℚ)

end

end A016939.P2160287912293113231

namespace A016939

/-- `A016936(n)*A016937(n)/A016934(n)` -/
def P2160287912293113231.Spec : Prop :=
  ∀ n, P2160287912293113231.a n = (A016939 n : ℚ)

end A016939

/-!
# A016940: a(n) = (6*n + 2)^8.

The programs for A016940, the canonical program `A016940.P13150052677788130134` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016940 has offset 0).

The definition of A016940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^8` (program `A016940.P13150052677788130134`, by `A016940.P13150052677788130134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016940.P13150052677788130134

`(6*n+2)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016940

/-- `(6*n+2)^8` -/
def P13150052677788130134.Spec : Prop :=
  ∀ n, (P13150052677788130134.a n : ℤ) = A016940 n

theorem P13150052677788130134.correct : P13150052677788130134.Spec := by
  intro n
  simp only [A016940]

end A016940

/-! ## A016940.P6792907004554039746

`A016936(n)²`
-/

namespace A016940.P6792907004554039746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016936 n ^ 2

end

end A016940.P6792907004554039746

namespace A016940

/-- `A016936(n)²` -/
def P6792907004554039746.Spec : Prop :=
  ∀ n, P6792907004554039746.a n = A016940 n

theorem P6792907004554039746.correct : P6792907004554039746.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P6792907004554039746.a, A016940.P13150052677788130134.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P5702731373603834534

`xor(1, 3*(2*n+1))²²²`
-/

namespace A016940.P5702731373603834534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (3 * (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A016940.P5702731373603834534

namespace A016940

/-- `xor(1, 3*(2*n+1))²²²` -/
def P5702731373603834534.Spec : Prop :=
  ∀ n, (P5702731373603834534.a n : ℤ) = A016940 n

end A016940

/-! ## A016940.P528159688958959105

`(lcm(2, 2*n+1)+2*n)²²²`
-/

namespace A016940.P528159688958959105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 2 (2 * n + 1) + 2 * n) ^ 2) ^ 2) ^ 2

end

end A016940.P528159688958959105

namespace A016940

/-- `(lcm(2, 2*n+1)+2*n)²²²` -/
def P528159688958959105.Spec : Prop :=
  ∀ n, (P528159688958959105.a n : ℤ) = A016940 n

end A016940

/-! ## A016940.P1688532002945664240

`(Δ[C(2*n, 2)]+2*n+1)²²²`
-/

namespace A016940.P1688532002945664240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016940.P1688532002945664240

namespace A016940

/-- `(Δ[C(2*n, 2)]+2*n+1)²²²` -/
def P1688532002945664240.Spec : Prop :=
  ∀ n, P1688532002945664240.a n = A016940 n

end A016940

/-! ## A016940.P1076528727180610814

`A016934(n)²²`
-/

namespace A016940.P1076528727180610814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016934 n ^ 2) ^ 2

end

end A016940.P1076528727180610814

namespace A016940

/-- `A016934(n)²²` -/
def P1076528727180610814.Spec : Prop :=
  ∀ n, P1076528727180610814.a n = A016940 n

theorem P1076528727180610814.correct : P1076528727180610814.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P1076528727180610814.a, A016940.P13150052677788130134.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P16448038944132056000

`A016933(n)²²²`
-/

namespace A016940.P16448038944132056000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016933 n ^ 2) ^ 2) ^ 2

end

end A016940.P16448038944132056000

namespace A016940

/-- `A016933(n)²²²` -/
def P16448038944132056000.Spec : Prop :=
  ∀ n, P16448038944132056000.a n = A016940 n

theorem P16448038944132056000.correct : P16448038944132056000.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P16448038944132056000.a, A016940.P13150052677788130134.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P12891222681192226280

`(A017570(n)/4)²²`
-/

namespace A016940.P12891222681192226280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017570 n : ℚ) / 4) ^ 2) ^ 2

end

end A016940.P12891222681192226280

namespace A016940

/-- `(A017570(n)/4)²²` -/
def P12891222681192226280.Spec : Prop :=
  ∀ n, P12891222681192226280.a n = (A016940 n : ℚ)

theorem P12891222681192226280.correct : P12891222681192226280.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P12891222681192226280.a, A016940.P13150052677788130134.a, A017570, A017570.P8593875747358616596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P10854898245485547172

`Δ[A056106(n)]²²²`
-/

namespace A016940.P10854898245485547172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A016940.P10854898245485547172

namespace A016940

/-- `Δ[A056106(n)]²²²` -/
def P10854898245485547172.Spec : Prop :=
  ∀ n, P10854898245485547172.a n = A016940 n

theorem P10854898245485547172.correct : P10854898245485547172.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P10854898245485547172.f1, A016940.P10854898245485547172.a, A016940.P13150052677788130134.a, A056106, A056106.P14646240334205012070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P1086751824178229905

`Δ[A084060(n)]²²²`
-/

namespace A016940.P1086751824178229905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A016940.P1086751824178229905

namespace A016940

/-- `Δ[A084060(n)]²²²` -/
def P1086751824178229905.Spec : Prop :=
  ∀ n, P1086751824178229905.a n = A016940 n

end A016940

/-! ## A016940.P7960031391712568203

`(A016921(n)+1)²²²`
-/

namespace A016940.P7960031391712568203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016921 n + 1) ^ 2) ^ 2) ^ 2

end

end A016940.P7960031391712568203

namespace A016940

/-- `(A016921(n)+1)²²²` -/
def P7960031391712568203.Spec : Prop :=
  ∀ n, P7960031391712568203.a n = A016940 n

theorem P7960031391712568203.correct : P7960031391712568203.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P7960031391712568203.a, A016940.P13150052677788130134.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P13273141537122369248

`(A008588(n)+2)²²²`
-/

namespace A016940.P13273141537122369248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008588 n + 2) ^ 2) ^ 2) ^ 2

end

end A016940.P13273141537122369248

namespace A016940

/-- `(A008588(n)+2)²²²` -/
def P13273141537122369248.Spec : Prop :=
  ∀ n, P13273141537122369248.a n = A016940 n

theorem P13273141537122369248.correct : P13273141537122369248.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P13273141537122369248.a, A016940.P13150052677788130134.a, A008588, A008588.P12386450284809463491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P14093419259903576568

`(1-A016945(n))²²²`
-/

namespace A016940.P14093419259903576568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A016945 n) ^ 2) ^ 2) ^ 2

end

end A016940.P14093419259903576568

namespace A016940

/-- `(1-A016945(n))²²²` -/
def P14093419259903576568.Spec : Prop :=
  ∀ n, P14093419259903576568.a n = A016940 n

theorem P14093419259903576568.correct : P14093419259903576568.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P14093419259903576568.a, A016940.P13150052677788130134.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P15609949558220258645

`(2-A016957(n))²²²`
-/

namespace A016940.P15609949558220258645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A016957 n) ^ 2) ^ 2) ^ 2

end

end A016940.P15609949558220258645

namespace A016940

/-- `(2-A016957(n))²²²` -/
def P15609949558220258645.Spec : Prop :=
  ∀ n, P15609949558220258645.a n = A016940 n

theorem P15609949558220258645.correct : P15609949558220258645.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P15609949558220258645.a, A016940.P13150052677788130134.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P13971554147611194067

`(2*A016777(n))²²²`
-/

namespace A016940.P13971554147611194067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016777 n) ^ 2) ^ 2) ^ 2

end

end A016940.P13971554147611194067

namespace A016940

/-- `(2*A016777(n))²²²` -/
def P13971554147611194067.Spec : Prop :=
  ∀ n, P13971554147611194067.a n = A016940 n

theorem P13971554147611194067.correct : P13971554147611194067.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P13971554147611194067.a, A016940.P13150052677788130134.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P4057189393384528678

`(A017569(n)/2)²²²`
-/

namespace A016940.P4057189393384528678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A017569 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016940.P4057189393384528678

namespace A016940

/-- `(A017569(n)/2)²²²` -/
def P4057189393384528678.Spec : Prop :=
  ∀ n, P4057189393384528678.a n = (A016940 n : ℚ)

theorem P4057189393384528678.correct : P4057189393384528678.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P4057189393384528678.a, A016940.P13150052677788130134.a, A017569, A017569.P14340039372117997380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P8135348230742704893

`(A016873(n)+n)²²²`
-/

namespace A016940.P8135348230742704893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016873 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016940.P8135348230742704893

namespace A016940

/-- `(A016873(n)+n)²²²` -/
def P8135348230742704893.Spec : Prop :=
  ∀ n, P8135348230742704893.a n = A016940 n

theorem P8135348230742704893.correct : P8135348230742704893.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P8135348230742704893.a, A016940.P13150052677788130134.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P2868612970605535745

`(n-A017005(n))²²²`
-/

namespace A016940.P2868612970605535745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017005 n) ^ 2) ^ 2) ^ 2

end

end A016940.P2868612970605535745

namespace A016940

/-- `(n-A017005(n))²²²` -/
def P2868612970605535745.Spec : Prop :=
  ∀ n, P2868612970605535745.a n = A016940 n

theorem P2868612970605535745.correct : P2868612970605535745.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P2868612970605535745.a, A016940.P13150052677788130134.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-! ## A016940.P5942274901706188799

`(6*n+2)*A016939(n)`
-/

namespace A016940.P5942274901706188799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) * A016939 n

end

end A016940.P5942274901706188799

namespace A016940

/-- `(6*n+2)*A016939(n)` -/
def P5942274901706188799.Spec : Prop :=
  ∀ n, P5942274901706188799.a n = A016940 n

theorem P5942274901706188799.correct : P5942274901706188799.Spec := by
  intro n
  simp only [A016940, Nat.add_sub_cancel, A016940.P5942274901706188799.a, A016940.P13150052677788130134.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016940

/-!
# A016941: a(n) = (6*n + 2)^9.

The programs for A016941, the canonical program `A016941.P12406819948871433003` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016941 has offset 0).

The definition of A016941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^9` (program `A016941.P12406819948871433003`, by `A016941.P12406819948871433003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016941.P12406819948871433003

`(6*n+2)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016941

/-- `(6*n+2)^9` -/
def P12406819948871433003.Spec : Prop :=
  ∀ n, (P12406819948871433003.a n : ℤ) = A016941 n

theorem P12406819948871433003.correct : P12406819948871433003.Spec := by
  intro n
  simp only [A016941]

end A016941

/-! ## A016941.P16800424371725690901

`sqrt(A016938(n)^3)`
-/

namespace A016941.P16800424371725690901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016938 n ^ 3 : ℝ)

end

end A016941.P16800424371725690901

namespace A016941

/-- `sqrt(A016938(n)^3)` -/
def P16800424371725690901.Spec : Prop :=
  ∀ n, P16800424371725690901.a n = (A016941 n : ℝ)

end A016941

/-! ## A016941.P2569306773840234801

`(6*n+2)*A016940(n)`
-/

namespace A016941.P2569306773840234801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) * A016940 n

end

end A016941.P2569306773840234801

namespace A016941

/-- `(6*n+2)*A016940(n)` -/
def P2569306773840234801.Spec : Prop :=
  ∀ n, P2569306773840234801.a n = A016941 n

theorem P2569306773840234801.correct : P2569306773840234801.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P2569306773840234801.a, A016941.P12406819948871433003.a, A016940, A016940.P13150052677788130134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P1352734533319305589

`A016942(n)/(6*n+2)`
-/

namespace A016941.P1352734533319305589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016942 n : ℚ) / (6 * n + 2 : ℚ)

end

end A016941.P1352734533319305589

namespace A016941

/-- `A016942(n)/(6*n+2)` -/
def P1352734533319305589.Spec : Prop :=
  ∀ n, P1352734533319305589.a n = (A016941 n : ℚ)

end A016941

/-! ## A016941.P7383989676763211008

`4*(3*n+1)²*A016939(n)`
-/

namespace A016941.P7383989676763211008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (3 * n + 1) ^ 2 : ℤ) * A016939 n

end

end A016941.P7383989676763211008

namespace A016941

/-- `4*(3*n+1)²*A016939(n)` -/
def P7383989676763211008.Spec : Prop :=
  ∀ n, P7383989676763211008.a n = A016941 n

theorem P7383989676763211008.correct : P7383989676763211008.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P7383989676763211008.a, A016941.P12406819948871433003.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P12944128685595906589

`(4*(3*n+1)²)²*A016937(n)`
-/

namespace A016941.P12944128685595906589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (3 * n + 1) ^ 2) ^ 2 : ℤ) * A016937 n

end

end A016941.P12944128685595906589

namespace A016941

/-- `(4*(3*n+1)²)²*A016937(n)` -/
def P12944128685595906589.Spec : Prop :=
  ∀ n, P12944128685595906589.a n = A016941 n

theorem P12944128685595906589.correct : P12944128685595906589.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P12944128685595906589.a, A016941.P12406819948871433003.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P7265708903118411186

`A016935(n)*A016938(n)`
-/

namespace A016941.P7265708903118411186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n * A016938 n

end

end A016941.P7265708903118411186

namespace A016941

/-- `A016935(n)*A016938(n)` -/
def P7265708903118411186.Spec : Prop :=
  ∀ n, P7265708903118411186.a n = A016941 n

theorem P7265708903118411186.correct : P7265708903118411186.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P7265708903118411186.a, A016941.P12406819948871433003.a, A016935, A016935.P257911674419970010.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P14346318603337002282

`A016943(n)/A016934(n)`
-/

namespace A016941.P14346318603337002282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016943 n : ℚ) / (A016934 n : ℚ)

end

end A016941.P14346318603337002282

namespace A016941

/-- `A016943(n)/A016934(n)` -/
def P14346318603337002282.Spec : Prop :=
  ∀ n, P14346318603337002282.a n = (A016941 n : ℚ)

end A016941

/-! ## A016941.P16767033434318261128

`A016936(n)²*A016933(n)`
-/

namespace A016941.P16767033434318261128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016936 n ^ 2 * A016933 n

end

end A016941.P16767033434318261128

namespace A016941

/-- `A016936(n)²*A016933(n)` -/
def P16767033434318261128.Spec : Prop :=
  ∀ n, P16767033434318261128.a n = A016941 n

theorem P16767033434318261128.correct : P16767033434318261128.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P16767033434318261128.a, A016941.P12406819948871433003.a, A016933, A016933.P15647137774340761443.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P17569502866717404576

`A016937(n)²/A016933(n)`
-/

namespace A016941.P17569502866717404576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016937 n ^ 2 : ℚ) / (A016933 n : ℚ)

end

end A016941.P17569502866717404576

namespace A016941

/-- `A016937(n)²/A016933(n)` -/
def P17569502866717404576.Spec : Prop :=
  ∀ n, P17569502866717404576.a n = (A016941 n : ℚ)

end A016941

/-! ## A016941.P12057936391719013285

`A016943(n)/A016933(n)²`
-/

namespace A016941.P12057936391719013285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016943 n : ℚ) / (A016933 n ^ 2 : ℚ)

end

end A016941.P12057936391719013285

namespace A016941

/-- `A016943(n)/A016933(n)²` -/
def P12057936391719013285.Spec : Prop :=
  ∀ n, P12057936391719013285.a n = (A016941 n : ℚ)

end A016941

/-! ## A016941.P11168132625654950339

`A016934(n)²²*A016933(n)`
-/

namespace A016941.P11168132625654950339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016934 n ^ 2) ^ 2 * A016933 n

end

end A016941.P11168132625654950339

namespace A016941

/-- `A016934(n)²²*A016933(n)` -/
def P11168132625654950339.Spec : Prop :=
  ∀ n, P11168132625654950339.a n = A016941 n

theorem P11168132625654950339.correct : P11168132625654950339.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P11168132625654950339.a, A016941.P12406819948871433003.a, A016933, A016933.P15647137774340761443.a, A016934, A016934.P9224462813878172161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P15420974649519336665

`(A016921(n)+1)*A016936(n)²`
-/

namespace A016941.P15420974649519336665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n + 1) * A016936 n ^ 2

end

end A016941.P15420974649519336665

namespace A016941

/-- `(A016921(n)+1)*A016936(n)²` -/
def P15420974649519336665.Spec : Prop :=
  ∀ n, P15420974649519336665.a n = A016941 n

theorem P15420974649519336665.correct : P15420974649519336665.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P15420974649519336665.a, A016941.P12406819948871433003.a, A016921, A016921.P18318603358862595186.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P8830860469178259703

`A016937(n)²/(A016921(n)+1)`
-/

namespace A016941.P8830860469178259703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016937 n ^ 2 : ℚ) / (A016921 n + 1 : ℚ)

end

end A016941.P8830860469178259703

namespace A016941

/-- `A016937(n)²/(A016921(n)+1)` -/
def P8830860469178259703.Spec : Prop :=
  ∀ n, P8830860469178259703.a n = (A016941 n : ℚ)

theorem P8830860469178259703.correct : P8830860469178259703.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P8830860469178259703.a, A016941.P12406819948871433003.a, A016921, A016921.P18318603358862595186.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P1674994064952400297

`A016937(n)²/(2*A016777(n))`
-/

namespace A016941.P1674994064952400297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016937 n ^ 2 : ℚ) / (2 * A016777 n : ℚ)

end

end A016941.P1674994064952400297

namespace A016941

/-- `A016937(n)²/(2*A016777(n))` -/
def P1674994064952400297.Spec : Prop :=
  ∀ n, P1674994064952400297.a n = (A016941 n : ℚ)

theorem P1674994064952400297.correct : P1674994064952400297.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P1674994064952400297.a, A016941.P12406819948871433003.a, A016777, A016777.P9931792138852554157.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P512759498913389540

`A016933(n)*A016934(n)*A016938(n)`
-/

namespace A016941.P512759498913389540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n * A016934 n * A016938 n

end

end A016941.P512759498913389540

namespace A016941

/-- `A016933(n)*A016934(n)*A016938(n)` -/
def P512759498913389540.Spec : Prop :=
  ∀ n, P512759498913389540.a n = A016941 n

theorem P512759498913389540.correct : P512759498913389540.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P512759498913389540.a, A016941.P12406819948871433003.a, A016933, A016933.P15647137774340761443.a, A016934, A016934.P9224462813878172161.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P15811769878793639837

`A016934(n)*A016935(n)*A016936(n)`
-/

namespace A016941.P15811769878793639837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 n * A016935 n * A016936 n

end

end A016941.P15811769878793639837

namespace A016941

/-- `A016934(n)*A016935(n)*A016936(n)` -/
def P15811769878793639837.Spec : Prop :=
  ∀ n, P15811769878793639837.a n = A016941 n

theorem P15811769878793639837.correct : P15811769878793639837.Spec := by
  intro n
  simp only [A016941, Nat.add_sub_cancel, A016941.P15811769878793639837.a, A016941.P12406819948871433003.a, A016934, A016934.P9224462813878172161.a, A016935, A016935.P257911674419970010.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016941

/-! ## A016941.P12157944311268300809

`A016936(n)*A016938(n)/A016933(n)`
-/

namespace A016941.P12157944311268300809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016936 n * A016938 n : ℚ) / (A016933 n : ℚ)

end

end A016941.P12157944311268300809

namespace A016941

/-- `A016936(n)*A016938(n)/A016933(n)` -/
def P12157944311268300809.Spec : Prop :=
  ∀ n, P12157944311268300809.a n = (A016941 n : ℚ)

end A016941

/-! ## A016941.P10819952944749066927

`A016937(n)/A016938(n)*A016937(n)²`
-/

namespace A016941.P10819952944749066927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016937 n : ℚ) / (A016938 n : ℚ) * (A016937 n ^ 2 : ℚ)

end

end A016941.P10819952944749066927

namespace A016941

/-- `A016937(n)/A016938(n)*A016937(n)²` -/
def P10819952944749066927.Spec : Prop :=
  ∀ n, P10819952944749066927.a n = (A016941 n : ℚ)

end A016941

/-!
# A016942: a(n) = (6*n + 2)^10.

The programs for A016942, the canonical program `A016942.P12209540957497363050` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016942 has offset 0).

The definition of A016942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^10` (program `A016942.P12209540957497363050`, by `A016942.P12209540957497363050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016942.P12209540957497363050

`(6*n+2)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016942

/-- `(6*n+2)^10` -/
def P12209540957497363050.Spec : Prop :=
  ∀ n, (P12209540957497363050.a n : ℤ) = A016942 n

theorem P12209540957497363050.correct : P12209540957497363050.Spec := by
  intro n
  simp only [A016942]

end A016942

/-! ## A016942.P11510363909873515201

`A016937(n)²`
-/

namespace A016942.P11510363909873515201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016937 n ^ 2

end

end A016942.P11510363909873515201

namespace A016942

/-- `A016937(n)²` -/
def P11510363909873515201.Spec : Prop :=
  ∀ n, P11510363909873515201.a n = A016942 n

theorem P11510363909873515201.correct : P11510363909873515201.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P11510363909873515201.a, A016942.P12209540957497363050.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P17822899231317358103

`(A016933(n)^5)²`
-/

namespace A016942.P17822899231317358103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016933 n ^ 5) ^ 2

end

end A016942.P17822899231317358103

namespace A016942

/-- `(A016933(n)^5)²` -/
def P17822899231317358103.Spec : Prop :=
  ∀ n, P17822899231317358103.a n = A016942 n

theorem P17822899231317358103.correct : P17822899231317358103.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P17822899231317358103.a, A016942.P12209540957497363050.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P9909369412135158582

`sqrt(A016936(n)^5)`
-/

namespace A016942.P9909369412135158582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016936 n ^ 5 : ℝ)

end

end A016942.P9909369412135158582

namespace A016942

/-- `sqrt(A016936(n)^5)` -/
def P9909369412135158582.Spec : Prop :=
  ∀ n, P9909369412135158582.a n = (A016942 n : ℝ)

end A016942

/-! ## A016942.P4937522881696946749

`(6*n+2)*A016941(n)`
-/

namespace A016942.P4937522881696946749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) * A016941 n

end

end A016942.P4937522881696946749

namespace A016942

/-- `(6*n+2)*A016941(n)` -/
def P4937522881696946749.Spec : Prop :=
  ∀ n, P4937522881696946749.a n = A016942 n

theorem P4937522881696946749.correct : P4937522881696946749.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P4937522881696946749.a, A016942.P12209540957497363050.a, A016941, A016941.P12406819948871433003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P17162794054725925629

`A016934(n)*A016940(n)`
-/

namespace A016942.P17162794054725925629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 n * A016940 n

end

end A016942.P17162794054725925629

namespace A016942

/-- `A016934(n)*A016940(n)` -/
def P17162794054725925629.Spec : Prop :=
  ∀ n, P17162794054725925629.a n = A016942 n

theorem P17162794054725925629.correct : P17162794054725925629.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P17162794054725925629.a, A016942.P12209540957497363050.a, A016934, A016934.P9224462813878172161.a, A016940, A016940.P13150052677788130134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P13660859901149678065

`A016935(n)*A016939(n)`
-/

namespace A016942.P13660859901149678065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n * A016939 n

end

end A016942.P13660859901149678065

namespace A016942

/-- `A016935(n)*A016939(n)` -/
def P13660859901149678065.Spec : Prop :=
  ∀ n, P13660859901149678065.a n = A016942 n

theorem P13660859901149678065.correct : P13660859901149678065.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P13660859901149678065.a, A016942.P12209540957497363050.a, A016935, A016935.P257911674419970010.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P177976022223307902

`A016936(n)*A016938(n)`
-/

namespace A016942.P177976022223307902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016936 n * A016938 n

end

end A016942.P177976022223307902

namespace A016942

/-- `A016936(n)*A016938(n)` -/
def P177976022223307902.Spec : Prop :=
  ∀ n, P177976022223307902.a n = A016942 n

theorem P177976022223307902.correct : P177976022223307902.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P177976022223307902.a, A016942.P12209540957497363050.a, A016936, A016936.P18248798889067781136.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P18311352710644419772

`A016781(n)*A017573(n)`
-/

namespace A016942.P18311352710644419772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 n * A017573 n

end

end A016942.P18311352710644419772

namespace A016942

/-- `A016781(n)*A017573(n)` -/
def P18311352710644419772.Spec : Prop :=
  ∀ n, P18311352710644419772.a n = A016942 n

theorem P18311352710644419772.correct : P18311352710644419772.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P18311352710644419772.a, A016942.P12209540957497363050.a, A016781, A016781.P2935993440358225274.a, A017573, A017573.P15855649599427515520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P10005730041832336306

`A016943(n)/A016933(n)`
-/

namespace A016942.P10005730041832336306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016943 n : ℚ) / (A016933 n : ℚ)

end

end A016942.P10005730041832336306

namespace A016942

/-- `A016943(n)/A016933(n)` -/
def P10005730041832336306.Spec : Prop :=
  ∀ n, P10005730041832336306.a n = (A016942 n : ℚ)

end A016942

/-! ## A016942.P12650729901655278745

`(A016933(n)*A016936(n))²`
-/

namespace A016942.P12650729901655278745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016933 n * A016936 n) ^ 2

end

end A016942.P12650729901655278745

namespace A016942

/-- `(A016933(n)*A016936(n))²` -/
def P12650729901655278745.Spec : Prop :=
  ∀ n, P12650729901655278745.a n = A016942 n

theorem P12650729901655278745.correct : P12650729901655278745.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P12650729901655278745.a, A016942.P12209540957497363050.a, A016933, A016933.P15647137774340761443.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P2073481568367299698

`A016933(n)²*A016940(n)`
-/

namespace A016942.P2073481568367299698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n ^ 2 * A016940 n

end

end A016942.P2073481568367299698

namespace A016942

/-- `A016933(n)²*A016940(n)` -/
def P2073481568367299698.Spec : Prop :=
  ∀ n, P2073481568367299698.a n = A016942 n

theorem P2073481568367299698.correct : P2073481568367299698.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P2073481568367299698.a, A016942.P12209540957497363050.a, A016933, A016933.P15647137774340761443.a, A016940, A016940.P13150052677788130134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P8222333289416321098

`(A016934(n)*A016935(n))²`
-/

namespace A016942.P8222333289416321098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016934 n * A016935 n) ^ 2

end

end A016942.P8222333289416321098

namespace A016942

/-- `(A016934(n)*A016935(n))²` -/
def P8222333289416321098.Spec : Prop :=
  ∀ n, P8222333289416321098.a n = A016942 n

theorem P8222333289416321098.correct : P8222333289416321098.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P8222333289416321098.a, A016942.P12209540957497363050.a, A016934, A016934.P9224462813878172161.a, A016935, A016935.P257911674419970010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P9399829408333250889

`A016934(n)²*A016938(n)`
-/

namespace A016942.P9399829408333250889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 n ^ 2 * A016938 n

end

end A016942.P9399829408333250889

namespace A016942

/-- `A016934(n)²*A016938(n)` -/
def P9399829408333250889.Spec : Prop :=
  ∀ n, P9399829408333250889.a n = A016942 n

theorem P9399829408333250889.correct : P9399829408333250889.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P9399829408333250889.a, A016942.P12209540957497363050.a, A016934, A016934.P9224462813878172161.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P9977565657375239191

`A016935(n)²*A016936(n)`
-/

namespace A016942.P9977565657375239191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n ^ 2 * A016936 n

end

end A016942.P9977565657375239191

namespace A016942

/-- `A016935(n)²*A016936(n)` -/
def P9977565657375239191.Spec : Prop :=
  ∀ n, P9977565657375239191.a n = A016942 n

theorem P9977565657375239191.correct : P9977565657375239191.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P9977565657375239191.a, A016942.P12209540957497363050.a, A016935, A016935.P257911674419970010.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P2715329907350518113

`A016936(n)²*A016934(n)`
-/

namespace A016942.P2715329907350518113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016936 n ^ 2 * A016934 n

end

end A016942.P2715329907350518113

namespace A016942

/-- `A016936(n)²*A016934(n)` -/
def P2715329907350518113.Spec : Prop :=
  ∀ n, P2715329907350518113.a n = A016942 n

theorem P2715329907350518113.correct : P2715329907350518113.Spec := by
  intro n
  simp only [A016942, Nat.add_sub_cancel, A016942.P2715329907350518113.a, A016942.P12209540957497363050.a, A016934, A016934.P9224462813878172161.a, A016936, A016936.P18248798889067781136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016942

/-! ## A016942.P2441658779361297272

`(A016938(n)/A016933(n))²`
-/

namespace A016942.P2441658779361297272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016938 n : ℚ) / (A016933 n : ℚ)) ^ 2

end

end A016942.P2441658779361297272

namespace A016942

/-- `(A016938(n)/A016933(n))²` -/
def P2441658779361297272.Spec : Prop :=
  ∀ n, P2441658779361297272.a n = (A016942 n : ℚ)

end A016942

/-! ## A016942.P7174692150783713975

`(A016939(n)/A016934(n))²`
-/

namespace A016942.P7174692150783713975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016939 n : ℚ) / (A016934 n : ℚ)) ^ 2

end

end A016942.P7174692150783713975

namespace A016942

/-- `(A016939(n)/A016934(n))²` -/
def P7174692150783713975.Spec : Prop :=
  ∀ n, P7174692150783713975.a n = (A016942 n : ℚ)

end A016942

/-! ## A016942.P7285165838695561960

`(A016940(n)/A016935(n))²`
-/

namespace A016942.P7285165838695561960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016940 n : ℚ) / (A016935 n : ℚ)) ^ 2

end

end A016942.P7285165838695561960

namespace A016942

/-- `(A016940(n)/A016935(n))²` -/
def P7285165838695561960.Spec : Prop :=
  ∀ n, P7285165838695561960.a n = (A016942 n : ℚ)

end A016942

/-! ## A016942.P16202259050784514375

`(A016941(n)/A016936(n))²`
-/

namespace A016942.P16202259050784514375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016941 n : ℚ) / (A016936 n : ℚ)) ^ 2

end

end A016942.P16202259050784514375

namespace A016942

/-- `(A016941(n)/A016936(n))²` -/
def P16202259050784514375.Spec : Prop :=
  ∀ n, P16202259050784514375.a n = (A016942 n : ℚ)

end A016942

/-!
# A016943: a(n) = (6*n + 2)^11.

The programs for A016943, the canonical program `A016943.P7700578974998129496` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016943 has offset 0).

The definition of A016943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+2)^11` (program `A016943.P7700578974998129496`, by `A016943.P7700578974998129496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016943.P7700578974998129496

`(6*n+2)^11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016943

/-- `(6*n+2)^11` -/
def P7700578974998129496.Spec : Prop :=
  ∀ n, (P7700578974998129496.a n : ℤ) = A016943 n

theorem P7700578974998129496.correct : P7700578974998129496.Spec := by
  intro n
  simp only [A016943]

end A016943

/-! ## A016943.P10722738111079926791

`A016933(n)*A016942(n)`
-/

namespace A016943.P10722738111079926791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n * A016942 n

end

end A016943.P10722738111079926791

namespace A016943

/-- `A016933(n)*A016942(n)` -/
def P10722738111079926791.Spec : Prop :=
  ∀ n, P10722738111079926791.a n = A016943 n

theorem P10722738111079926791.correct : P10722738111079926791.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P10722738111079926791.a, A016943.P7700578974998129496.a, A016933, A016933.P15647137774340761443.a, A016942, A016942.P12209540957497363050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P8461964203943108448

`A016936(n)*A016939(n)`
-/

namespace A016943.P8461964203943108448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016936 n * A016939 n

end

end A016943.P8461964203943108448

namespace A016943

/-- `A016936(n)*A016939(n)` -/
def P8461964203943108448.Spec : Prop :=
  ∀ n, P8461964203943108448.a n = A016943 n

theorem P8461964203943108448.correct : P8461964203943108448.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P8461964203943108448.a, A016943.P7700578974998129496.a, A016936, A016936.P18248798889067781136.a, A016939, A016939.P10686673164026481289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P3442740841988328566

`A016937(n)*A016938(n)`
-/

namespace A016943.P3442740841988328566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016937 n * A016938 n

end

end A016943.P3442740841988328566

namespace A016943

/-- `A016937(n)*A016938(n)` -/
def P3442740841988328566.Spec : Prop :=
  ∀ n, P3442740841988328566.a n = A016943 n

theorem P3442740841988328566.correct : P3442740841988328566.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P3442740841988328566.a, A016943.P7700578974998129496.a, A016937, A016937.P4646017052301238627.a, A016938, A016938.P15117638160680881893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P12708981421728167817

`(A016921(n)+1)*A016937(n)²`
-/

namespace A016943.P12708981421728167817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n + 1) * A016937 n ^ 2

end

end A016943.P12708981421728167817

namespace A016943

/-- `(A016921(n)+1)*A016937(n)²` -/
def P12708981421728167817.Spec : Prop :=
  ∀ n, P12708981421728167817.a n = A016943 n

theorem P12708981421728167817.correct : P12708981421728167817.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P12708981421728167817.a, A016943.P7700578974998129496.a, A016921, A016921.P18318603358862595186.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P17032702213079689486

`2*A016777(n)*A016937(n)²`
-/

namespace A016943.P17032702213079689486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016777 n * A016937 n ^ 2

end

end A016943.P17032702213079689486

namespace A016943

/-- `2*A016777(n)*A016937(n)²` -/
def P17032702213079689486.Spec : Prop :=
  ∀ n, P17032702213079689486.a n = A016943 n

theorem P17032702213079689486.correct : P17032702213079689486.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P17032702213079689486.a, A016943.P7700578974998129496.a, A016777, A016777.P9931792138852554157.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P5477444753608477594

`A016937(n)²*A016789(2*n)`
-/

namespace A016943.P5477444753608477594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016937 n ^ 2 * A016789 (2 * n)

end

end A016943.P5477444753608477594

namespace A016943

/-- `A016937(n)²*A016789(2*n)` -/
def P5477444753608477594.Spec : Prop :=
  ∀ n, P5477444753608477594.a n = A016943 n

theorem P5477444753608477594.correct : P5477444753608477594.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P5477444753608477594.a, A016943.P7700578974998129496.a, A016789, A016789.P8277564872725303677.a, A016937, A016937.P4646017052301238627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P11308614932727353705

`A016799(2*n)`
-/

namespace A016943.P11308614932727353705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016799 (2 * n)

end

end A016943.P11308614932727353705

namespace A016943

/-- `A016799(2*n)` -/
def P11308614932727353705.Spec : Prop :=
  ∀ n, P11308614932727353705.a n = A016943 n

theorem P11308614932727353705.correct : P11308614932727353705.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P11308614932727353705.a, A016943.P7700578974998129496.a, A016799, A016799.P2519602072837116726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P6448366596433076113

`A016789(2*n)*A016798(2*n)`
-/

namespace A016943.P6448366596433076113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (2 * n) * A016798 (2 * n)

end

end A016943.P6448366596433076113

namespace A016943

/-- `A016789(2*n)*A016798(2*n)` -/
def P6448366596433076113.Spec : Prop :=
  ∀ n, P6448366596433076113.a n = A016943 n

theorem P6448366596433076113.correct : P6448366596433076113.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P6448366596433076113.a, A016943.P7700578974998129496.a, A016789, A016789.P8277564872725303677.a, A016798, A016798.P14907295202959180294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P9102022754873498700

`A016793(2*n)*A016794(2*n)`
-/

namespace A016943.P9102022754873498700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 (2 * n) * A016794 (2 * n)

end

end A016943.P9102022754873498700

namespace A016943

/-- `A016793(2*n)*A016794(2*n)` -/
def P9102022754873498700.Spec : Prop :=
  ∀ n, P9102022754873498700.a n = A016943 n

theorem P9102022754873498700.correct : P9102022754873498700.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P9102022754873498700.a, A016943.P7700578974998129496.a, A016793, A016793.P7571111589597192072.a, A016794, A016794.P16688178066975936005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P16118381537712577527

`A016791(2*n)²²/A016789(2*n)`
-/

namespace A016943.P16118381537712577527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016791 (2 * n) ^ 2) ^ 2 : ℚ) / (A016789 (2 * n) : ℚ)

end

end A016943.P16118381537712577527

namespace A016943

/-- `A016791(2*n)²²/A016789(2*n)` -/
def P16118381537712577527.Spec : Prop :=
  ∀ n, P16118381537712577527.a n = (A016943 n : ℚ)

theorem P16118381537712577527.correct : P16118381537712577527.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P16118381537712577527.a, A016943.P7700578974998129496.a, A016789, A016789.P8277564872725303677.a, A016791, A016791.P13208806347124039064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P13256527146599265102

`A016751(3*n+1)`
-/

namespace A016943.P13256527146599265102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016751 (3 * n + 1)

end

end A016943.P13256527146599265102

namespace A016943

/-- `A016751(3*n+1)` -/
def P13256527146599265102.Spec : Prop :=
  ∀ n, P13256527146599265102.a n = A016943 n

theorem P13256527146599265102.correct : P13256527146599265102.Spec := by
  intro n
  simp only [A016943, Nat.add_sub_cancel, A016943.P13256527146599265102.a, A016943.P7700578974998129496.a, A016751, A016751.P9182074990130146716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016943

/-! ## A016943.P17519571211651148445

`A008455(A016933(n))`
-/

namespace A016943.P17519571211651148445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016933 n).toNat

end

end A016943.P17519571211651148445

namespace A016943

/-- `A008455(A016933(n))` -/
def P17519571211651148445.Spec : Prop :=
  ∀ n, P17519571211651148445.a n = A016943 n

end A016943

/-! ## A016943.P16433293052965903516

`A008455(A008588(n)+2)`
-/

namespace A016943.P16433293052965903516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 n + 2).toNat

end

end A016943.P16433293052965903516

namespace A016943

/-- `A008455(A008588(n)+2)` -/
def P16433293052965903516.Spec : Prop :=
  ∀ n, P16433293052965903516.a n = A016943 n

end A016943

/-! ## A016943.P10619986210471581791

`A008455(2*(A008585(n)+1))`
-/

namespace A016943.P10619986210471581791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * (A008585 n + 1)).toNat

end

end A016943.P10619986210471581791

namespace A016943

/-- `A008455(2*(A008585(n)+1))` -/
def P10619986210471581791.Spec : Prop :=
  ∀ n, P10619986210471581791.a n = A016943 n

end A016943

/-! ## A016943.P9519026325653515902

`A008455(A008594(n)/2+2)`
-/

namespace A016943.P9519026325653515902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (SequenceMachineLib.roundAway ((A008594 n : ℚ) / 2 + 2)).toNat

end

end A016943.P9519026325653515902

namespace A016943

/-- `A008455(A008594(n)/2+2)` -/
def P9519026325653515902.Spec : Prop :=
  ∀ n, P9519026325653515902.a n = A016943 n

end A016943

/-! ## A016943.P3152594739581385544

`A008455(A017617(n)/2-2)`
-/

namespace A016943.P3152594739581385544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (SequenceMachineLib.roundAway ((A017617 n : ℚ) / 2 - 2)).toNat

end

end A016943.P3152594739581385544

namespace A016943

/-- `A008455(A017617(n)/2-2)` -/
def P3152594739581385544.Spec : Prop :=
  ∀ n, P3152594739581385544.a n = A016943 n

end A016943

/-! ## A016943.P227306458667863881

`A008455(2*(A016813(n)-n))`
-/

namespace A016943.P227306458667863881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * (A016813 n - (n : ℤ))).toNat

end

end A016943.P227306458667863881

namespace A016943

/-- `A008455(2*(A016813(n)-n))` -/
def P227306458667863881.Spec : Prop :=
  ∀ n, P227306458667863881.a n = A016943 n

end A016943

/-! ## A016943.P17242950163967098095

`A008455(A001651(2*(2*n+1)))`
-/

namespace A016943.P17242950163967098095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A001651 (2 * (2 * n + 1))).toNat

end

end A016943.P17242950163967098095

namespace A016943

/-- `A008455(A001651(2*(2*n+1)))` -/
def P17242950163967098095.Spec : Prop :=
  ∀ n, P17242950163967098095.a n = A016943 n

end A016943

/-!
# A016944: 

The programs for A016944, there is no canonical definition to state claims against.
-/

/-! ## A016944.P279167324164384827

`(6*n+2)^12`
-/

namespace A016944.P279167324164384827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 2) ^ 12

end

end A016944.P279167324164384827

/-! ## A016944.P9004844413026929675

`A016938(n)²`
-/

namespace A016944.P9004844413026929675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016938 n ^ 2

end

end A016944.P9004844413026929675

/-! ## A016944.P13875043677066621179

`A016752(3*n+1)`
-/

namespace A016944.P13875043677066621179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016752 (3 * n + 1)

end

end A016944.P13875043677066621179

/-! ## A016944.P12080155473576717202

`A016746(A016777(n))²`
-/

namespace A016944.P12080155473576717202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016746 (A016777 n).toNat ^ 2

end

end A016944.P12080155473576717202

/-! ## A016944.P18021866212151060379

`sqrt(A016940(n)^3)`
-/

namespace A016944.P18021866212151060379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016940 n ^ 3 : ℝ)

end

end A016944.P18021866212151060379

/-! ## A016944.P11430148142597241315

`A000578(A016921(n)+1)²²`
-/

namespace A016944.P11430148142597241315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016921 n + 1).toNat ^ 2) ^ 2

end

end A016944.P11430148142597241315

/-! ## A016944.P8514436824056182087

`A000578(A008588(n)+2)²²`
-/

namespace A016944.P8514436824056182087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A008588 n + 2).toNat ^ 2) ^ 2

end

end A016944.P8514436824056182087

/-! ## A016944.P9170632865790314399

`A000578(2*A016777(n))²²`
-/

namespace A016944.P9170632865790314399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (2 * A016777 n).toNat ^ 2) ^ 2

end

end A016944.P9170632865790314399

/-! ## A016944.P12543583805759030892

`A000578(A016789(2*n))²²`
-/

namespace A016944.P12543583805759030892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016789 (2 * n)).toNat ^ 2) ^ 2

end

end A016944.P12543583805759030892

/-! ## A016944.P3644725511589330512

`A000578(A017569(n)/2)²²`
-/

namespace A016944.P3644725511589330512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (SequenceMachineLib.roundAway ((A017569 n : ℚ) / 2)).toNat ^ 2) ^ 2

end

end A016944.P3644725511589330512

/-! ## A016944.P9740350192889433530

`A000578(A017005(n)-n)²²`
-/

namespace A016944.P9740350192889433530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017005 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A016944.P9740350192889433530

/-!
# A016945: a(n) = 6*n+3.

The programs for A016945, the canonical program `A016945.P12463160785118576711` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016945 has offset 0).

The definition of A016945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n+3` (program `A016945.P12463160785118576711`, by `A016945.P12463160785118576711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016945.P12463160785118576711

`6*n+3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016945

/-- `6*n+3` -/
def P12463160785118576711.Spec : Prop :=
  ∀ n, (P12463160785118576711.a n : ℤ) = A016945 n

theorem P12463160785118576711.correct : P12463160785118576711.Spec := by
  intro n
  simp only [A016945]

end A016945

/-!
# A016946: a(n) = (6*n+3)^2.

The programs for A016946, the canonical program `A016946.P16494615086453922637` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016946 has offset 0).

The definition of A016946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)²` (program `A016946.P16494615086453922637`, by `A016946.P16494615086453922637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016946.P16494615086453922637

`(6*n+3)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016946

/-- `(6*n+3)²` -/
def P16494615086453922637.Spec : Prop :=
  ∀ n, (P16494615086453922637.a n : ℤ) = A016946 n

theorem P16494615086453922637.correct : P16494615086453922637.Spec := by
  intro n
  simp only [A016946]

end A016946

/-! ## A016946.P12397321732481767019

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=9, a(1)=81, a(2)=225`
-/

namespace A016946.P12397321732481767019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 81, 225] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A016946.P12397321732481767019

namespace A016946

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12397321732481767019.Spec : Prop :=
  ∀ n, P12397321732481767019.a n = A016946 n

theorem P12397321732481767019.correct : P12397321732481767019.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A016946, Nat.add_sub_cancel, A016946.P12397321732481767019.a, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A016946, Nat.add_sub_cancel, A016946.P12397321732481767019.a, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016946

/-! ## A016946.P18198307215093235432

`9*A016754(n)`
-/

namespace A016946.P18198307215093235432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016754 n

end

end A016946.P18198307215093235432

namespace A016946

/-- `9*A016754(n)` -/
def P18198307215093235432.Spec : Prop :=
  ∀ n, P18198307215093235432.a n = A016946 n

theorem P18198307215093235432.correct : P18198307215093235432.Spec := by
  intro n
  simp only [A016946, Nat.add_sub_cancel, A016946.P18198307215093235432.a, A016946.P16494615086453922637.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016946

/-! ## A016946.P4598767388664381134

`36*A002378(n)+9`
-/

namespace A016946.P4598767388664381134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A002378 n + 9

end

end A016946.P4598767388664381134

namespace A016946

/-- `36*A002378(n)+9` -/
def P4598767388664381134.Spec : Prop :=
  ∀ n, P4598767388664381134.a n = A016946 n

theorem P4598767388664381134.correct : P4598767388664381134.Spec := by
  intro n
  simp only [A016946, Nat.add_sub_cancel, A016946.P4598767388664381134.a, A016946.P16494615086453922637.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016946

/-! ## A016946.P3793706800405881519

`record[(3*xor(1, n))²]`
-/

namespace A016946.P3793706800405881519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016946.P3793706800405881519

namespace A016946

/-- `record[(3*xor(1, n))²]` -/
def P3793706800405881519.Spec : Prop :=
  ∀ n, (P3793706800405881519.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P6670397580931443185

`9*or(1, 2*n)²`
-/

namespace A016946.P6670397580931443185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.lor 1 (2 * n) ^ 2

end

end A016946.P6670397580931443185

namespace A016946

/-- `9*or(1, 2*n)²` -/
def P6670397580931443185.Spec : Prop :=
  ∀ n, (P6670397580931443185.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P14370082947093085511

`9*xor(1, 2*n)²`
-/

namespace A016946.P14370082947093085511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.xor 1 (2 * n) ^ 2

end

end A016946.P14370082947093085511

namespace A016946

/-- `9*xor(1, 2*n)²` -/
def P14370082947093085511.Spec : Prop :=
  ∀ n, (P14370082947093085511.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P10289783779467534532

`or(1, ∑[72*n]+8)`
-/

namespace A016946.P10289783779467534532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A016946.P10289783779467534532

namespace A016946

/-- `or(1, ∑[72*n]+8)` -/
def P10289783779467534532.Spec : Prop :=
  ∀ n, (P10289783779467534532.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P13975536845201452183

`lcm(3, Δ[3*n²]²)`
-/

namespace A016946.P13975536845201452183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A016946.P13975536845201452183

namespace A016946

/-- `lcm(3, Δ[3*n²]²)` -/
def P13975536845201452183.Spec : Prop :=
  ∀ n, (P13975536845201452183.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P5248959060109169292

`a(n-1)+72*n` with `a(0)=9`
-/

namespace A016946.P5248959060109169292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 72 * n

end

end A016946.P5248959060109169292

namespace A016946

/-- `a(n-1)+72*n` -/
def P5248959060109169292.Spec : Prop :=
  ∀ n, (P5248959060109169292.a n : ℤ) = A016946 n

theorem P5248959060109169292.correct : P5248959060109169292.Spec := by
  intro n
  induction n with
  | zero => simp [A016946, A016946.P5248959060109169292.a, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A016946, Nat.add_sub_cancel, A016946.P5248959060109169292.a, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A016946

/-! ## A016946.P16451220714247163110

`record[(gcd(6, n+3)+n)²]`
-/

namespace A016946.P16451220714247163110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (n + 3) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016946.P16451220714247163110

namespace A016946

/-- `record[(gcd(6, n+3)+n)²]` -/
def P16451220714247163110.Spec : Prop :=
  ∀ n, (P16451220714247163110.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P1151904599193962404

`sqrt(or(1, (6*n+3)^4))`
-/

namespace A016946.P1151904599193962404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor 1 ((6 * n + 3) ^ 4) : ℝ)

end

end A016946.P1151904599193962404

namespace A016946

/-- `sqrt(or(1, (6*n+3)^4))` -/
def P1151904599193962404.Spec : Prop :=
  ∀ n, P1151904599193962404.a n = (A016946 n : ℝ)

end A016946

/-! ## A016946.P102171911379423075

`Δ[9*C(2*n+1, 3)]`
-/

namespace A016946.P102171911379423075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016946.P102171911379423075

namespace A016946

/-- `Δ[9*C(2*n+1, 3)]` -/
def P102171911379423075.Spec : Prop :=
  ∀ n, P102171911379423075.a n = A016946 n

theorem P102171911379423075.correct : P102171911379423075.Spec := by
  intro n
  simp only [A016946, Nat.add_sub_cancel, A016946.P102171911379423075.f1, A016946.P102171911379423075.a, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016946

/-! ## A016946.P5893257748844469475

`record[(3*(n+1))^gcd(2, n)]`
-/

namespace A016946.P5893257748844469475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1)) ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016946.P5893257748844469475

namespace A016946

/-- `record[(3*(n+1))^gcd(2, n)]` -/
def P5893257748844469475.Spec : Prop :=
  ∀ n, (P5893257748844469475.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P15972110749425204472

`(3*(2*n+1))^acos(cos(2))`
-/

namespace A016946.P15972110749425204472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * (2 * n + 1) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A016946.P15972110749425204472

namespace A016946

/-- `(3*(2*n+1))^acos(cos(2))` -/
def P15972110749425204472.Spec : Prop :=
  ∀ n, P15972110749425204472.a n = (A016946 n : ℝ)

end A016946

/-! ## A016946.P8399526879519287863

`record[(lcm(4, n+1)-(n+1))²]`
-/

namespace A016946.P8399526879519287863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016946.P8399526879519287863

namespace A016946

/-- `record[(lcm(4, n+1)-(n+1))²]` -/
def P8399526879519287863.Spec : Prop :=
  ∀ n, P8399526879519287863.a n = A016946 n

end A016946

/-! ## A016946.P13809667620701025848

`9*∑[ogf(8x/(1-2x+x^2))]+9`
-/

namespace A016946.P13809667620701025848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j) + 9

end

end A016946.P13809667620701025848

namespace A016946

/-- `9*∑[ogf(8x/(1-2x+x^2))]+9` -/
def P13809667620701025848.Spec : Prop :=
  ∀ n, P13809667620701025848.a n = A016946 n

end A016946

/-! ## A016946.P13958089575084073682

`(3*(2*n+1))^(2%(n+3))`
-/

namespace A016946.P13958089575084073682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (2 * n + 1)) ^ (2 % (n + 3))

end

end A016946.P13958089575084073682

namespace A016946

/-- `(3*(2*n+1))^(2%(n+3))` -/
def P13958089575084073682.Spec : Prop :=
  ∀ n, (P13958089575084073682.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P11078734205380836539

`(2*n+1)*9*or(1, 2*n)`
-/

namespace A016946.P11078734205380836539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (9 * Nat.lor 1 (2 * n))

end

end A016946.P11078734205380836539

namespace A016946

/-- `(2*n+1)*9*or(1, 2*n)` -/
def P11078734205380836539.Spec : Prop :=
  ∀ n, (P11078734205380836539.a n : ℤ) = A016946 n

end A016946

/-! ## A016946.P2042516694796946324

`A000290(A016945(n))`
-/

namespace A016946.P2042516694796946324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A016945 n).toNat

end

end A016946.P2042516694796946324

namespace A016946

/-- `A000290(A016945(n))` -/
def P2042516694796946324.Spec : Prop :=
  ∀ n, P2042516694796946324.a n = A016946 n

end A016946

/-!
# A016947: a(n) = (6*n + 3)^3.

The programs for A016947, the canonical program `A016947.P4365293070950782915` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016947 has offset 0).

The definition of A016947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^3` (program `A016947.P4365293070950782915`, by `A016947.P4365293070950782915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016947.P4365293070950782915

`(6*n+3)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016947

/-- `(6*n+3)^3` -/
def P4365293070950782915.Spec : Prop :=
  ∀ n, (P4365293070950782915.a n : ℤ) = A016947 n

theorem P4365293070950782915.correct : P4365293070950782915.Spec := by
  intro n
  simp only [A016947]

end A016947

/-! ## A016947.P10873955743781627124

`record[(3*xor(1, n))^3]`
-/

namespace A016947.P10873955743781627124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016947.P10873955743781627124

namespace A016947

/-- `record[(3*xor(1, n))^3]` -/
def P10873955743781627124.Spec : Prop :=
  ∀ n, (P10873955743781627124.a n : ℤ) = A016947 n

end A016947

/-! ## A016947.P814060767801168547

`record[(n+3+n)^gcd(3, n)]`
-/

namespace A016947.P814060767801168547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3 + n) ^ Nat.gcd 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016947.P814060767801168547

namespace A016947

/-- `record[(n+3+n)^gcd(3, n)]` -/
def P814060767801168547.Spec : Prop :=
  ∀ n, (P814060767801168547.a n : ℤ) = A016947 n

end A016947

/-! ## A016947.P1476913949743587050

`record[(lcm(4, n+1)-(n+1))^3]`
-/

namespace A016947.P1476913949743587050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 1 : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016947.P1476913949743587050

namespace A016947

/-- `record[(lcm(4, n+1)-(n+1))^3]` -/
def P1476913949743587050.Spec : Prop :=
  ∀ n, P1476913949743587050.a n = A016947 n

end A016947

/-! ## A016947.P5943692703775455484

`∏{d}[-a(n-1), #*(2*n+1)]` with `a(0)=9`
-/

namespace A016947.P5943692703775455484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d * (2 * n + 1)

end

end A016947.P5943692703775455484

namespace A016947

/-- `∏{d}[-a(n-1), #*(2*n+1)]` -/
def P5943692703775455484.Spec : Prop :=
  ∀ n, (P5943692703775455484.a n : ℤ) = A016947 n

end A016947

/-! ## A016947.P4917409779539581854

`sqrt(A016950(n))`
-/

namespace A016947.P4917409779539581854
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016950 n : ℝ)

end

end A016947.P4917409779539581854

namespace A016947

/-- `sqrt(A016950(n))` -/
def P4917409779539581854.Spec : Prop :=
  ∀ n, P4917409779539581854.a n = (A016947 n : ℝ)

end A016947

/-! ## A016947.P14605122457157078366

`A017595(n)/8`
-/

namespace A016947.P14605122457157078366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017595 n : ℚ) / 8

end

end A016947.P14605122457157078366

namespace A016947

/-- `A017595(n)/8` -/
def P14605122457157078366.Spec : Prop :=
  ∀ n, P14605122457157078366.a n = (A016947 n : ℚ)

theorem P14605122457157078366.correct : P14605122457157078366.Spec := by
  intro n
  simp only [A016947, Nat.add_sub_cancel, A016947.P14605122457157078366.a, A016947.P4365293070950782915.a, A017595, A017595.P5808580862531119874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016947

/-! ## A016947.P1978081706648806529

`27*A016755(n)`
-/

namespace A016947.P1978081706648806529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A016755 n

end

end A016947.P1978081706648806529

namespace A016947

/-- `27*A016755(n)` -/
def P1978081706648806529.Spec : Prop :=
  ∀ n, P1978081706648806529.a n = A016947 n

theorem P1978081706648806529.correct : P1978081706648806529.Spec := by
  intro n
  simp only [A016947, Nat.add_sub_cancel, A016947.P1978081706648806529.a, A016947.P4365293070950782915.a, A016755, A016755.P5941101717872313811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016947

/-! ## A016947.P3893541541910577730

`sqrt(A016946(n)^3)`
-/

namespace A016947.P3893541541910577730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016946 n ^ 3 : ℝ)

end

end A016947.P3893541541910577730

namespace A016947

/-- `sqrt(A016946(n)^3)` -/
def P3893541541910577730.Spec : Prop :=
  ∀ n, P3893541541910577730.a n = (A016947 n : ℝ)

end A016947

/-! ## A016947.P11802207612952592749

`∑[27*A010014(n)]`
-/

namespace A016947.P11802207612952592749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A010014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016947.P11802207612952592749

namespace A016947

/-- `∑[27*A010014(n)]` -/
def P11802207612952592749.Spec : Prop :=
  ∀ n, P11802207612952592749.a n = A016947 n

end A016947

/-! ## A016947.P852392290212089920

`A016945(n)*A016946(n)`
-/

namespace A016947.P852392290212089920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016946 n

end

end A016947.P852392290212089920

namespace A016947

/-- `A016945(n)*A016946(n)` -/
def P852392290212089920.Spec : Prop :=
  ∀ n, P852392290212089920.a n = A016947 n

theorem P852392290212089920.correct : P852392290212089920.Spec := by
  intro n
  simp only [A016947, Nat.add_sub_cancel, A016947.P852392290212089920.a, A016947.P4365293070950782915.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016947

/-! ## A016947.P6208599357904212293

`A016948(n)/A016945(n)`
-/

namespace A016947.P6208599357904212293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016948 n : ℚ) / (A016945 n : ℚ)

end

end A016947.P6208599357904212293

namespace A016947

/-- `A016948(n)/A016945(n)` -/
def P6208599357904212293.Spec : Prop :=
  ∀ n, P6208599357904212293.a n = (A016947 n : ℚ)

end A016947

/-! ## A016947.P14868194776532139687

`A016949(n)/A016946(n)`
-/

namespace A016947.P14868194776532139687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016949 n : ℚ) / (A016946 n : ℚ)

end

end A016947.P14868194776532139687

namespace A016947

/-- `A016949(n)/A016946(n)` -/
def P14868194776532139687.Spec : Prop :=
  ∀ n, P14868194776532139687.a n = (A016947 n : ℚ)

end A016947

/-! ## A016947.P7016406557693597338

`A016951(n)/A016948(n)`
-/

namespace A016947.P7016406557693597338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 n : ℚ) / (A016948 n : ℚ)

end

end A016947.P7016406557693597338

namespace A016947

/-- `A016951(n)/A016948(n)` -/
def P7016406557693597338.Spec : Prop :=
  ∀ n, P7016406557693597338.a n = (A016947 n : ℚ)

end A016947

/-! ## A016947.P1778688781454513395

`A016952(n)/A016949(n)`
-/

namespace A016947.P1778688781454513395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016952 n : ℚ) / (A016949 n : ℚ)

end

end A016947.P1778688781454513395

namespace A016947

/-- `A016952(n)/A016949(n)` -/
def P1778688781454513395.Spec : Prop :=
  ∀ n, P1778688781454513395.a n = (A016947 n : ℚ)

end A016947

/-! ## A016947.P3183741284579386570

`A016953(n)/A016950(n)`
-/

namespace A016947.P3183741284579386570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 n : ℚ) / (A016950 n : ℚ)

end

end A016947.P3183741284579386570

namespace A016947

/-- `A016953(n)/A016950(n)` -/
def P3183741284579386570.Spec : Prop :=
  ∀ n, P3183741284579386570.a n = (A016947 n : ℚ)

end A016947

/-! ## A016947.P10427853255977488301

`A016954(n)/A016951(n)`
-/

namespace A016947.P10427853255977488301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016954 n : ℚ) / (A016951 n : ℚ)

end

end A016947.P10427853255977488301

namespace A016947

/-- `A016954(n)/A016951(n)` -/
def P10427853255977488301.Spec : Prop :=
  ∀ n, P10427853255977488301.a n = (A016947 n : ℚ)

end A016947

/-! ## A016947.P11339226354946882137

`A016955(n)/A016952(n)`
-/

namespace A016947.P11339226354946882137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016955 n : ℚ) / (A016952 n : ℚ)

end

end A016947.P11339226354946882137

namespace A016947

/-- `A016955(n)/A016952(n)` -/
def P11339226354946882137.Spec : Prop :=
  ∀ n, P11339226354946882137.a n = (A016947 n : ℚ)

end A016947

/-! ## A016947.P10210552776498802222

`A016949(n)%A017595(n)`
-/

namespace A016947.P10210552776498802222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016949 n) (A017595 n)

end

end A016947.P10210552776498802222

namespace A016947

/-- `A016949(n)%A017595(n)` -/
def P10210552776498802222.Spec : Prop :=
  ∀ n, P10210552776498802222.a n = A016947 n

end A016947

/-!
# A016948: a(n) = (6*n + 3)^4.

The programs for A016948, the canonical program `A016948.P2499014121543189589` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016948 has offset 0).

The definition of A016948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^4` (program `A016948.P2499014121543189589`, by `A016948.P2499014121543189589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016948.P2499014121543189589

`(6*n+3)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016948

/-- `(6*n+3)^4` -/
def P2499014121543189589.Spec : Prop :=
  ∀ n, (P2499014121543189589.a n : ℤ) = A016948 n

theorem P2499014121543189589.correct : P2499014121543189589.Spec := by
  intro n
  simp only [A016948]

end A016948

/-! ## A016948.P4977236881656540794

`A016946(n)²`
-/

namespace A016948.P4977236881656540794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n ^ 2

end

end A016948.P4977236881656540794

namespace A016948

/-- `A016946(n)²` -/
def P4977236881656540794.Spec : Prop :=
  ∀ n, P4977236881656540794.a n = A016948 n

theorem P4977236881656540794.correct : P4977236881656540794.Spec := by
  intro n
  simp only [A016948, Nat.add_sub_cancel, A016948.P4977236881656540794.a, A016948.P2499014121543189589.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016948

/-! ## A016948.P325008790936690619

`record[(3*xor(1, n))^4]`
-/

namespace A016948.P325008790936690619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 1 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016948.P325008790936690619

namespace A016948

/-- `record[(3*xor(1, n))^4]` -/
def P325008790936690619.Spec : Prop :=
  ∀ n, (P325008790936690619.a n : ℤ) = A016948 n

end A016948

/-! ## A016948.P9347749758990269068

`record[(3*xor(1, n))²²]`
-/

namespace A016948.P9347749758990269068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.xor 1 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016948.P9347749758990269068

namespace A016948

/-- `record[(3*xor(1, n))²²]` -/
def P9347749758990269068.Spec : Prop :=
  ∀ n, (P9347749758990269068.a n : ℤ) = A016948 n

end A016948

/-! ## A016948.P17875695031181558390

`lcm(3, (6*n+3)²²)`
-/

namespace A016948.P17875695031181558390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (((6 * n + 3) ^ 2) ^ 2)

end

end A016948.P17875695031181558390

namespace A016948

/-- `lcm(3, (6*n+3)²²)` -/
def P17875695031181558390.Spec : Prop :=
  ∀ n, (P17875695031181558390.a n : ℤ) = A016948 n

end A016948

/-! ## A016948.P10788614677836121123

`(3*or(1, 2*n))²²`
-/

namespace A016948.P10788614677836121123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.lor 1 (2 * n)) ^ 2) ^ 2

end

end A016948.P10788614677836121123

namespace A016948

/-- `(3*or(1, 2*n))²²` -/
def P10788614677836121123.Spec : Prop :=
  ∀ n, (P10788614677836121123.a n : ℤ) = A016948 n

end A016948

/-! ## A016948.P7157759330470353152

`(3*xor(1, 2*n))²²`
-/

namespace A016948.P7157759330470353152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.xor 1 (2 * n)) ^ 2) ^ 2

end

end A016948.P7157759330470353152

namespace A016948

/-- `(3*xor(1, 2*n))²²` -/
def P7157759330470353152.Spec : Prop :=
  ∀ n, (P7157759330470353152.a n : ℤ) = A016948 n

end A016948

/-! ## A016948.P3378114768266611316

`and(-3, (6*n+3)²)²`
-/

namespace A016948.P3378114768266611316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((6 * n + 3) ^ 2 : ℤ) ^ 2

end

end A016948.P3378114768266611316

namespace A016948

/-- `and(-3, (6*n+3)²)²` -/
def P3378114768266611316.Spec : Prop :=
  ∀ n, P3378114768266611316.a n = A016948 n

end A016948

/-! ## A016948.P12095386918734417528

`Δ[9*C(2*n+1, 3)]²`
-/

namespace A016948.P12095386918734417528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A016948.P12095386918734417528

namespace A016948

/-- `Δ[9*C(2*n+1, 3)]²` -/
def P12095386918734417528.Spec : Prop :=
  ∀ n, P12095386918734417528.a n = A016948 n

theorem P12095386918734417528.correct : P12095386918734417528.Spec := by
  intro n
  simp only [A016948, Nat.add_sub_cancel, A016948.P12095386918734417528.f1, A016948.P12095386918734417528.a, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016948

/-! ## A016948.P2385591522443868655

`floor(3/acot(2*n+1))²²`
-/

namespace A016948.P2385591522443868655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊3 / SequenceMachineLib.acot (2 * n + 1 : ℝ)⌋ ^ 2) ^ 2

end

end A016948.P2385591522443868655

namespace A016948

/-- `floor(3/acot(2*n+1))²²` -/
def P2385591522443868655.Spec : Prop :=
  ∀ n, P2385591522443868655.a n = A016948 n

end A016948

/-! ## A016948.P15782378181707576041

`((2*n+1)*acos(cos(3)))²²`
-/

namespace A016948.P15782378181707576041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) * Real.arccos (Real.cos (3 : ℝ))) ^ 2) ^ 2

end

end A016948.P15782378181707576041

namespace A016948

/-- `((2*n+1)*acos(cos(3)))²²` -/
def P15782378181707576041.Spec : Prop :=
  ∀ n, P15782378181707576041.a n = (A016948 n : ℝ)

end A016948

/-! ## A016948.P2694828901529557557

`((2*n+1)/tan(acot(3)))²²`
-/

namespace A016948.P2694828901529557557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))) ^ 2) ^ 2

end

end A016948.P2694828901529557557

namespace A016948

/-- `((2*n+1)/tan(acot(3)))²²` -/
def P2694828901529557557.Spec : Prop :=
  ∀ n, P2694828901529557557.a n = (A016948 n : ℝ)

end A016948

/-! ## A016948.P8174156862687133873

`((2*n+1)/cot(atan(3)))²²`
-/

namespace A016948.P8174156862687133873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) / Real.cot (Real.arctan (3 : ℝ))) ^ 2) ^ 2

end

end A016948.P8174156862687133873

namespace A016948

/-- `((2*n+1)/cot(atan(3)))²²` -/
def P8174156862687133873.Spec : Prop :=
  ∀ n, P8174156862687133873.a n = (A016948 n : ℝ)

end A016948

/-! ## A016948.P1791847978078837191

`record[(lcm(4, n+1)-(n+1))^4]`
-/

namespace A016948.P1791847978078837191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 1 : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016948.P1791847978078837191

namespace A016948

/-- `record[(lcm(4, n+1)-(n+1))^4]` -/
def P1791847978078837191.Spec : Prop :=
  ∀ n, P1791847978078837191.a n = A016948 n

end A016948

/-! ## A016948.P949617406370036864

`record[(3*(n-1))^(2*gcd(2, n))]`
-/

namespace A016948.P949617406370036864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * ((n : ℤ) - 1)) ^ (2 * Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016948.P949617406370036864

namespace A016948

/-- `record[(3*(n-1))^(2*gcd(2, n))]` -/
def P949617406370036864.Spec : Prop :=
  ∀ n, P949617406370036864.a n = A016948 n

end A016948

/-! ## A016948.P6490811846191827510

`record[(gcd(n+3, n-3)+n)^4]`
-/

namespace A016948.P6490811846191827510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) + n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016948.P6490811846191827510

namespace A016948

/-- `record[(gcd(n+3, n-3)+n)^4]` -/
def P6490811846191827510.Spec : Prop :=
  ∀ n, (P6490811846191827510.a n : ℤ) = A016948 n

end A016948

/-! ## A016948.P5792162513246453779

`((n-1)²-record[(n-2)²])²²`
-/

namespace A016948.P5792162513246453779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - 1) ^ 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2) ^ 2

end

end A016948.P5792162513246453779

namespace A016948

/-- `((n-1)²-record[(n-2)²])²²` -/
def P5792162513246453779.Spec : Prop :=
  ∀ n, P5792162513246453779.a n = A016948 n

end A016948

/-! ## A016948.P3322440122232570214

`(3*C(2*n+1, 2*n))²²`
-/

namespace A016948.P3322440122232570214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.choose (2 * n + 1) (2 * n)) ^ 2) ^ 2

end

end A016948.P3322440122232570214

namespace A016948

/-- `(3*C(2*n+1, 2*n))²²` -/
def P3322440122232570214.Spec : Prop :=
  ∀ n, (P3322440122232570214.a n : ℤ) = A016948 n

theorem P3322440122232570214.correct : P3322440122232570214.Spec := by
  intro n
  simp only [A016948, Nat.add_sub_cancel, A016948.P3322440122232570214.a, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016948

/-! ## A016948.P3849403891162343599

`((1-n)²-C(n+2, n+1)²)²²`
-/

namespace A016948.P3849403891162343599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - (n : ℤ)) ^ 2 - (Nat.choose (n + 2) (n + 1) ^ 2 : ℤ)) ^ 2) ^ 2

end

end A016948.P3849403891162343599

namespace A016948

/-- `((1-n)²-C(n+2, n+1)²)²²` -/
def P3849403891162343599.Spec : Prop :=
  ∀ n, P3849403891162343599.a n = A016948 n

theorem P3849403891162343599.correct : P3849403891162343599.Spec := by
  intro n
  simp only [A016948, Nat.add_sub_cancel, A016948.P3849403891162343599.a, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016948

/-!
# A016949: a(n) = (6*n + 3)^5.

The programs for A016949, the canonical program `A016949.P7895979054807280839` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016949 has offset 0).

The definition of A016949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^5` (program `A016949.P7895979054807280839`, by `A016949.P7895979054807280839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016949.P7895979054807280839

`(6*n+3)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016949

/-- `(6*n+3)^5` -/
def P7895979054807280839.Spec : Prop :=
  ∀ n, (P7895979054807280839.a n : ℤ) = A016949 n

theorem P7895979054807280839.correct : P7895979054807280839.Spec := by
  intro n
  simp only [A016949]

end A016949

/-! ## A016949.P9812118929204397349

`record[(3*xor(1, n))^5]`
-/

namespace A016949.P9812118929204397349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016949.P9812118929204397349

namespace A016949

/-- `record[(3*xor(1, n))^5]` -/
def P9812118929204397349.Spec : Prop :=
  ∀ n, (P9812118929204397349.a n : ℤ) = A016949 n

end A016949

/-! ## A016949.P11515260211748714662

`record[(lcm(4, n+1)-(n+1))^5]`
-/

namespace A016949.P11515260211748714662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n + 1 : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016949.P11515260211748714662

namespace A016949

/-- `record[(lcm(4, n+1)-(n+1))^5]` -/
def P11515260211748714662.Spec : Prop :=
  ∀ n, P11515260211748714662.a n = A016949 n

end A016949

/-! ## A016949.P11585706489312155764

`sqrt(A016954(n))`
-/

namespace A016949.P11585706489312155764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016954 n : ℝ)

end

end A016949.P11585706489312155764

namespace A016949

/-- `sqrt(A016954(n))` -/
def P11585706489312155764.Spec : Prop :=
  ∀ n, P11585706489312155764.a n = (A016949 n : ℝ)

end A016949

/-! ## A016949.P12980702841736058147

`sqrt(A016946(n)^5)`
-/

namespace A016949.P12980702841736058147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016946 n ^ 5 : ℝ)

end

end A016949.P12980702841736058147

namespace A016949

/-- `sqrt(A016946(n)^5)` -/
def P12980702841736058147.Spec : Prop :=
  ∀ n, P12980702841736058147.a n = (A016949 n : ℝ)

end A016949

/-! ## A016949.P10093190815336065114

`abs((1-A016957(n))^5)`
-/

namespace A016949.P10093190815336065114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A016957 n) ^ 5|

end

end A016949.P10093190815336065114

namespace A016949

/-- `abs((1-A016957(n))^5)` -/
def P10093190815336065114.Spec : Prop :=
  ∀ n, P10093190815336065114.a n = A016949 n

end A016949

/-! ## A016949.P6412169356193627020

`A016945(n)*A016948(n)`
-/

namespace A016949.P6412169356193627020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016948 n

end

end A016949.P6412169356193627020

namespace A016949

/-- `A016945(n)*A016948(n)` -/
def P6412169356193627020.Spec : Prop :=
  ∀ n, P6412169356193627020.a n = A016949 n

theorem P6412169356193627020.correct : P6412169356193627020.Spec := by
  intro n
  simp only [A016949, Nat.add_sub_cancel, A016949.P6412169356193627020.a, A016949.P7895979054807280839.a, A016945, A016945.P12463160785118576711.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016949

/-! ## A016949.P3877296535153191025

`A016946(n)*A016947(n)`
-/

namespace A016949.P3877296535153191025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n * A016947 n

end

end A016949.P3877296535153191025

namespace A016949

/-- `A016946(n)*A016947(n)` -/
def P3877296535153191025.Spec : Prop :=
  ∀ n, P3877296535153191025.a n = A016949 n

theorem P3877296535153191025.correct : P3877296535153191025.Spec := by
  intro n
  simp only [A016949, Nat.add_sub_cancel, A016949.P3877296535153191025.a, A016949.P7895979054807280839.a, A016946, A016946.P16494615086453922637.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016949

/-! ## A016949.P10004529916567664577

`A016950(n)/A016945(n)`
-/

namespace A016949.P10004529916567664577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016950 n : ℚ) / (A016945 n : ℚ)

end

end A016949.P10004529916567664577

namespace A016949

/-- `A016950(n)/A016945(n)` -/
def P10004529916567664577.Spec : Prop :=
  ∀ n, P10004529916567664577.a n = (A016949 n : ℚ)

end A016949

/-! ## A016949.P6742132084032905060

`A016951(n)/A016946(n)`
-/

namespace A016949.P6742132084032905060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 n : ℚ) / (A016946 n : ℚ)

end

end A016949.P6742132084032905060

namespace A016949

/-- `A016951(n)/A016946(n)` -/
def P6742132084032905060.Spec : Prop :=
  ∀ n, P6742132084032905060.a n = (A016949 n : ℚ)

end A016949

/-! ## A016949.P14436422451419528772

`A016952(n)/A016947(n)`
-/

namespace A016949.P14436422451419528772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016952 n : ℚ) / (A016947 n : ℚ)

end

end A016949.P14436422451419528772

namespace A016949

/-- `A016952(n)/A016947(n)` -/
def P14436422451419528772.Spec : Prop :=
  ∀ n, P14436422451419528772.a n = (A016949 n : ℚ)

end A016949

/-! ## A016949.P1154907521024651588

`A016953(n)/A016948(n)`
-/

namespace A016949.P1154907521024651588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 n : ℚ) / (A016948 n : ℚ)

end

end A016949.P1154907521024651588

namespace A016949

/-- `A016953(n)/A016948(n)` -/
def P1154907521024651588.Spec : Prop :=
  ∀ n, P1154907521024651588.a n = (A016949 n : ℚ)

end A016949

/-! ## A016949.P11386513096185559654

`A016955(n)/A016950(n)`
-/

namespace A016949.P11386513096185559654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016955 n : ℚ) / (A016950 n : ℚ)

end

end A016949.P11386513096185559654

namespace A016949

/-- `A016955(n)/A016950(n)` -/
def P11386513096185559654.Spec : Prop :=
  ∀ n, P11386513096185559654.a n = (A016949 n : ℚ)

end A016949

/-! ## A016949.P9258395725674601487

`gcd(A016950(n), A017597(n))`
-/

namespace A016949.P9258395725674601487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016950 n) (A017597 n)

end

end A016949.P9258395725674601487

namespace A016949

/-- `gcd(A016950(n), A017597(n))` -/
def P9258395725674601487.Spec : Prop :=
  ∀ n, (P9258395725674601487.a n : ℤ) = A016949 n

end A016949

/-! ## A016949.P15402776555138941498

`∪[A017561(n), A017633(n)]`
-/

namespace A016949.P15402776555138941498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016949.P15402776555138941498

namespace A016949

/-- `∪[A017561(n), A017633(n)]` -/
def P15402776555138941498.Spec : Prop :=
  ∀ n, (P15402776555138941498.a n : ℤ) = A016949 n

end A016949

/-! ## A016949.P870273285690937973

`A016945(n)²*A016947(n)`
-/

namespace A016949.P870273285690937973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ 2 * A016947 n

end

end A016949.P870273285690937973

namespace A016949

/-- `A016945(n)²*A016947(n)` -/
def P870273285690937973.Spec : Prop :=
  ∀ n, P870273285690937973.a n = A016949 n

theorem P870273285690937973.correct : P870273285690937973.Spec := by
  intro n
  simp only [A016949, Nat.add_sub_cancel, A016949.P870273285690937973.a, A016949.P7895979054807280839.a, A016945, A016945.P12463160785118576711.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016949

/-! ## A016949.P11845788683835994668

`A016946(n)²*A016945(n)`
-/

namespace A016949.P11845788683835994668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n ^ 2 * A016945 n

end

end A016949.P11845788683835994668

namespace A016949

/-- `A016946(n)²*A016945(n)` -/
def P11845788683835994668.Spec : Prop :=
  ∀ n, P11845788683835994668.a n = A016949 n

theorem P11845788683835994668.correct : P11845788683835994668.Spec := by
  intro n
  simp only [A016949, Nat.add_sub_cancel, A016949.P11845788683835994668.a, A016949.P7895979054807280839.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016949

/-! ## A016949.P6019181101095155970

`A016948(n)²/A016947(n)`
-/

namespace A016949.P6019181101095155970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016948 n ^ 2 : ℚ) / (A016947 n : ℚ)

end

end A016949.P6019181101095155970

namespace A016949

/-- `A016948(n)²/A016947(n)` -/
def P6019181101095155970.Spec : Prop :=
  ∀ n, P6019181101095155970.a n = (A016949 n : ℚ)

end A016949

/-! ## A016949.P16484098779001334218

`A016951(n)/A016945(n)²`
-/

namespace A016949.P16484098779001334218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 n : ℚ) / (A016945 n ^ 2 : ℚ)

end

end A016949.P16484098779001334218

namespace A016949

/-- `A016951(n)/A016945(n)²` -/
def P16484098779001334218.Spec : Prop :=
  ∀ n, P16484098779001334218.a n = (A016949 n : ℚ)

end A016949

/-! ## A016949.P12180608861662488871

`A016953(n)/A016946(n)²`
-/

namespace A016949.P12180608861662488871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 n : ℚ) / (A016946 n ^ 2 : ℚ)

end

end A016949.P12180608861662488871

namespace A016949

/-- `A016953(n)/A016946(n)²` -/
def P12180608861662488871.Spec : Prop :=
  ∀ n, P12180608861662488871.a n = (A016949 n : ℚ)

end A016949

/-!
# A016950: a(n) = (6*n + 3)^6.

The programs for A016950, the canonical program `A016950.P12981427071470377345` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016950 has offset 0).

The definition of A016950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^6` (program `A016950.P12981427071470377345`, by `A016950.P12981427071470377345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016950.P12981427071470377345

`(6*n+3)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016950

/-- `(6*n+3)^6` -/
def P12981427071470377345.Spec : Prop :=
  ∀ n, (P12981427071470377345.a n : ℤ) = A016950 n

theorem P12981427071470377345.correct : P12981427071470377345.Spec := by
  intro n
  simp only [A016950]

end A016950

/-! ## A016950.P4181499222007246689

`A016947(n)²`
-/

namespace A016950.P4181499222007246689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n ^ 2

end

end A016950.P4181499222007246689

namespace A016950

/-- `A016947(n)²` -/
def P4181499222007246689.Spec : Prop :=
  ∀ n, P4181499222007246689.a n = A016950 n

theorem P4181499222007246689.correct : P4181499222007246689.Spec := by
  intro n
  simp only [A016950, Nat.add_sub_cancel, A016950.P4181499222007246689.a, A016950.P12981427071470377345.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016950

/-! ## A016950.P13254108275054664916

`record[(n+3)^gcd(6, n)]`
-/

namespace A016950.P13254108275054664916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.gcd 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016950.P13254108275054664916

namespace A016950

/-- `record[(n+3)^gcd(6, n)]` -/
def P13254108275054664916.Spec : Prop :=
  ∀ n, (P13254108275054664916.a n : ℤ) = A016950 n

end A016950

/-! ## A016950.P16343362538814634004

`((3*or(1, 2*n))^3)²`
-/

namespace A016950.P16343362538814634004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.lor 1 (2 * n)) ^ 3) ^ 2

end

end A016950.P16343362538814634004

namespace A016950

/-- `((3*or(1, 2*n))^3)²` -/
def P16343362538814634004.Spec : Prop :=
  ∀ n, (P16343362538814634004.a n : ℤ) = A016950 n

end A016950

/-! ## A016950.P188198653353698008

`((3*xor(1, 2*n))^3)²`
-/

namespace A016950.P188198653353698008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.xor 1 (2 * n)) ^ 3) ^ 2

end

end A016950.P188198653353698008

namespace A016950

/-- `((3*xor(1, 2*n))^3)²` -/
def P188198653353698008.Spec : Prop :=
  ∀ n, (P188198653353698008.a n : ℤ) = A016950 n

end A016950

/-! ## A016950.P6265620702837556779

`(A016945(n)^3)²`
-/

namespace A016950.P6265620702837556779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n ^ 3) ^ 2

end

end A016950.P6265620702837556779

namespace A016950

/-- `(A016945(n)^3)²` -/
def P6265620702837556779.Spec : Prop :=
  ∀ n, P6265620702837556779.a n = A016950 n

theorem P6265620702837556779.correct : P6265620702837556779.Spec := by
  intro n
  simp only [A016950, Nat.add_sub_cancel, A016950.P6265620702837556779.a, A016950.P12981427071470377345.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016950

/-! ## A016950.P13276651475013144588

`sqrt(A016948(n)^3)`
-/

namespace A016950.P13276651475013144588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016948 n ^ 3 : ℝ)

end

end A016950.P13276651475013144588

namespace A016950

/-- `sqrt(A016948(n)^3)` -/
def P13276651475013144588.Spec : Prop :=
  ∀ n, P13276651475013144588.a n = (A016950 n : ℝ)

end A016950

/-! ## A016950.P3329560036420810932

`(Δ[A033428(n)]^3)²`
-/

namespace A016950.P3329560036420810932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016950.P3329560036420810932

namespace A016950

/-- `(Δ[A033428(n)]^3)²` -/
def P3329560036420810932.Spec : Prop :=
  ∀ n, P3329560036420810932.a n = A016950 n

theorem P3329560036420810932.correct : P3329560036420810932.Spec := by
  intro n
  simp only [A016950, Nat.add_sub_cancel, A016950.P3329560036420810932.f1, A016950.P3329560036420810932.a, A016950.P12981427071470377345.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016950

/-! ## A016950.P5428720912743551500

`A016945(n)*A016949(n)`
-/

namespace A016950.P5428720912743551500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016949 n

end

end A016950.P5428720912743551500

namespace A016950

/-- `A016945(n)*A016949(n)` -/
def P5428720912743551500.Spec : Prop :=
  ∀ n, P5428720912743551500.a n = A016950 n

theorem P5428720912743551500.correct : P5428720912743551500.Spec := by
  intro n
  simp only [A016950, Nat.add_sub_cancel, A016950.P5428720912743551500.a, A016950.P12981427071470377345.a, A016945, A016945.P12463160785118576711.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016950

/-! ## A016950.P1471338805849027531

`A016946(n)*A016948(n)`
-/

namespace A016950.P1471338805849027531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n * A016948 n

end

end A016950.P1471338805849027531

namespace A016950

/-- `A016946(n)*A016948(n)` -/
def P1471338805849027531.Spec : Prop :=
  ∀ n, P1471338805849027531.a n = A016950 n

theorem P1471338805849027531.correct : P1471338805849027531.Spec := by
  intro n
  simp only [A016950, Nat.add_sub_cancel, A016950.P1471338805849027531.a, A016950.P12981427071470377345.a, A016946, A016946.P16494615086453922637.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016950

/-! ## A016950.P178665351108400760

`A016951(n)/A016945(n)`
-/

namespace A016950.P178665351108400760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016951 n : ℚ) / (A016945 n : ℚ)

end

end A016950.P178665351108400760

namespace A016950

/-- `A016951(n)/A016945(n)` -/
def P178665351108400760.Spec : Prop :=
  ∀ n, P178665351108400760.a n = (A016950 n : ℚ)

end A016950

/-! ## A016950.P9198134112336875771

`A016952(n)/A016946(n)`
-/

namespace A016950.P9198134112336875771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016952 n : ℚ) / (A016946 n : ℚ)

end

end A016950.P9198134112336875771

namespace A016950

/-- `A016952(n)/A016946(n)` -/
def P9198134112336875771.Spec : Prop :=
  ∀ n, P9198134112336875771.a n = (A016950 n : ℚ)

end A016950

/-! ## A016950.P2862619347892217438

`A016953(n)/A016947(n)`
-/

namespace A016950.P2862619347892217438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 n : ℚ) / (A016947 n : ℚ)

end

end A016950.P2862619347892217438

namespace A016950

/-- `A016953(n)/A016947(n)` -/
def P2862619347892217438.Spec : Prop :=
  ∀ n, P2862619347892217438.a n = (A016950 n : ℚ)

end A016950

/-! ## A016950.P18080089575164754958

`A016954(n)/A016948(n)`
-/

namespace A016950.P18080089575164754958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016954 n : ℚ) / (A016948 n : ℚ)

end

end A016950.P18080089575164754958

namespace A016950

/-- `A016954(n)/A016948(n)` -/
def P18080089575164754958.Spec : Prop :=
  ∀ n, P18080089575164754958.a n = (A016950 n : ℚ)

end A016950

/-! ## A016950.P1789656712950342064

`A016955(n)/A016949(n)`
-/

namespace A016950.P1789656712950342064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016955 n : ℚ) / (A016949 n : ℚ)

end

end A016950.P1789656712950342064

namespace A016950

/-- `A016955(n)/A016949(n)` -/
def P1789656712950342064.Spec : Prop :=
  ∀ n, P1789656712950342064.a n = (A016950 n : ℚ)

end A016950

/-! ## A016950.P7399986528222434831

`gcd(A016951(n), A017598(n))`
-/

namespace A016950.P7399986528222434831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016951 n) (A017598 n)

end

end A016950.P7399986528222434831

namespace A016950

/-- `gcd(A016951(n), A017598(n))` -/
def P7399986528222434831.Spec : Prop :=
  ∀ n, (P7399986528222434831.a n : ℤ) = A016950 n

end A016950

/-! ## A016950.P6110697557309881512

`∪[A017562(n), A017634(n)]`
-/

namespace A016950.P6110697557309881512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017634 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016950.P6110697557309881512

namespace A016950

/-- `∪[A017562(n), A017634(n)]` -/
def P6110697557309881512.Spec : Prop :=
  ∀ n, (P6110697557309881512.a n : ℤ) = A016950 n

end A016950

/-! ## A016950.P5776187236177545310

`(A016945(n)*A016946(n))²`
-/

namespace A016950.P5776187236177545310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n * A016946 n) ^ 2

end

end A016950.P5776187236177545310

namespace A016950

/-- `(A016945(n)*A016946(n))²` -/
def P5776187236177545310.Spec : Prop :=
  ∀ n, P5776187236177545310.a n = A016950 n

theorem P5776187236177545310.correct : P5776187236177545310.Spec := by
  intro n
  simp only [A016950, Nat.add_sub_cancel, A016950.P5776187236177545310.a, A016950.P12981427071470377345.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016950

/-! ## A016950.P14758714762777179562

`A016945(n)²*A016948(n)`
-/

namespace A016950.P14758714762777179562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ 2 * A016948 n

end

end A016950.P14758714762777179562

namespace A016950

/-- `A016945(n)²*A016948(n)` -/
def P14758714762777179562.Spec : Prop :=
  ∀ n, P14758714762777179562.a n = A016950 n

theorem P14758714762777179562.correct : P14758714762777179562.Spec := by
  intro n
  simp only [A016950, Nat.add_sub_cancel, A016950.P14758714762777179562.a, A016950.P12981427071470377345.a, A016945, A016945.P12463160785118576711.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016950

/-!
# A016951: a(n) = (6*n + 3)^7.

The programs for A016951, the canonical program `A016951.P324115468251133091` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016951 has offset 0).

The definition of A016951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^7` (program `A016951.P324115468251133091`, by `A016951.P324115468251133091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016951.P324115468251133091

`(6*n+3)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016951

/-- `(6*n+3)^7` -/
def P324115468251133091.Spec : Prop :=
  ∀ n, (P324115468251133091.a n : ℤ) = A016951 n

theorem P324115468251133091.correct : P324115468251133091.Spec := by
  intro n
  simp only [A016951]

end A016951

/-! ## A016951.P7958203639271361103

`or(1, A016945(n)^7)`
-/

namespace A016951.P7958203639271361103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A016945 n ^ 7)

end

end A016951.P7958203639271361103

namespace A016951

/-- `or(1, A016945(n)^7)` -/
def P7958203639271361103.Spec : Prop :=
  ∀ n, P7958203639271361103.a n = A016951 n

end A016951

/-! ## A016951.P13479154333693720578

`(6*n+3)*A016950(n)`
-/

namespace A016951.P13479154333693720578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) * A016950 n

end

end A016951.P13479154333693720578

namespace A016951

/-- `(6*n+3)*A016950(n)` -/
def P13479154333693720578.Spec : Prop :=
  ∀ n, P13479154333693720578.a n = A016951 n

theorem P13479154333693720578.correct : P13479154333693720578.Spec := by
  intro n
  simp only [A016951, Nat.add_sub_cancel, A016951.P13479154333693720578.a, A016951.P324115468251133091.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016951

/-! ## A016951.P1724932535130090123

`(6*n+3)²*A016949(n)`
-/

namespace A016951.P1724932535130090123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 3) ^ 2 : ℤ) * A016949 n

end

end A016951.P1724932535130090123

namespace A016951

/-- `(6*n+3)²*A016949(n)` -/
def P1724932535130090123.Spec : Prop :=
  ∀ n, P1724932535130090123.a n = A016951 n

theorem P1724932535130090123.correct : P1724932535130090123.Spec := by
  intro n
  simp only [A016951, Nat.add_sub_cancel, A016951.P1724932535130090123.a, A016951.P324115468251133091.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016951

/-! ## A016951.P9184603946294561730

`A016947(n)*A016948(n)`
-/

namespace A016951.P9184603946294561730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n * A016948 n

end

end A016951.P9184603946294561730

namespace A016951

/-- `A016947(n)*A016948(n)` -/
def P9184603946294561730.Spec : Prop :=
  ∀ n, P9184603946294561730.a n = A016951 n

theorem P9184603946294561730.correct : P9184603946294561730.Spec := by
  intro n
  simp only [A016951, Nat.add_sub_cancel, A016951.P9184603946294561730.a, A016951.P324115468251133091.a, A016947, A016947.P4365293070950782915.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016951

/-! ## A016951.P14941591110640410908

`A016952(n)/A016945(n)`
-/

namespace A016951.P14941591110640410908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016952 n : ℚ) / (A016945 n : ℚ)

end

end A016951.P14941591110640410908

namespace A016951

/-- `A016952(n)/A016945(n)` -/
def P14941591110640410908.Spec : Prop :=
  ∀ n, P14941591110640410908.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P16234719717171201860

`A016953(n)/A016946(n)`
-/

namespace A016951.P16234719717171201860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 n : ℚ) / (A016946 n : ℚ)

end

end A016951.P16234719717171201860

namespace A016951

/-- `A016953(n)/A016946(n)` -/
def P16234719717171201860.Spec : Prop :=
  ∀ n, P16234719717171201860.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P10621729795240781510

`A016954(n)/A016947(n)`
-/

namespace A016951.P10621729795240781510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016954 n : ℚ) / (A016947 n : ℚ)

end

end A016951.P10621729795240781510

namespace A016951

/-- `A016954(n)/A016947(n)` -/
def P10621729795240781510.Spec : Prop :=
  ∀ n, P10621729795240781510.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P11930788695484497403

`A016955(n)/A016948(n)`
-/

namespace A016951.P11930788695484497403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016955 n : ℚ) / (A016948 n : ℚ)

end

end A016951.P11930788695484497403

namespace A016951

/-- `A016955(n)/A016948(n)` -/
def P11930788695484497403.Spec : Prop :=
  ∀ n, P11930788695484497403.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P12560917731368535300

`A016946(n)²*A016947(n)`
-/

namespace A016951.P12560917731368535300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n ^ 2 * A016947 n

end

end A016951.P12560917731368535300

namespace A016951

/-- `A016946(n)²*A016947(n)` -/
def P12560917731368535300.Spec : Prop :=
  ∀ n, P12560917731368535300.a n = A016951 n

theorem P12560917731368535300.correct : P12560917731368535300.Spec := by
  intro n
  simp only [A016951, Nat.add_sub_cancel, A016951.P12560917731368535300.a, A016951.P324115468251133091.a, A016946, A016946.P16494615086453922637.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016951

/-! ## A016951.P2222948996394825427

`A016947(n)²*A016945(n)`
-/

namespace A016951.P2222948996394825427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n ^ 2 * A016945 n

end

end A016951.P2222948996394825427

namespace A016951

/-- `A016947(n)²*A016945(n)` -/
def P2222948996394825427.Spec : Prop :=
  ∀ n, P2222948996394825427.a n = A016951 n

theorem P2222948996394825427.correct : P2222948996394825427.Spec := by
  intro n
  simp only [A016951, Nat.add_sub_cancel, A016951.P2222948996394825427.a, A016951.P324115468251133091.a, A016945, A016945.P12463160785118576711.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016951

/-! ## A016951.P1249061608379985837

`A016948(n)²/A016945(n)`
-/

namespace A016951.P1249061608379985837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016948 n ^ 2 : ℚ) / (A016945 n : ℚ)

end

end A016951.P1249061608379985837

namespace A016951

/-- `A016948(n)²/A016945(n)` -/
def P1249061608379985837.Spec : Prop :=
  ∀ n, P1249061608379985837.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P16852483023222318234

`A016949(n)²/A016947(n)`
-/

namespace A016951.P16852483023222318234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016949 n ^ 2 : ℚ) / (A016947 n : ℚ)

end

end A016951.P16852483023222318234

namespace A016951

/-- `A016949(n)²/A016947(n)` -/
def P16852483023222318234.Spec : Prop :=
  ∀ n, P16852483023222318234.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P14195779349512771140

`A016953(n)/A016945(n)²`
-/

namespace A016951.P14195779349512771140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016953 n : ℚ) / (A016945 n ^ 2 : ℚ)

end

end A016951.P14195779349512771140

namespace A016951

/-- `A016953(n)/A016945(n)²` -/
def P14195779349512771140.Spec : Prop :=
  ∀ n, P14195779349512771140.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P2431343847767701692

`A016955(n)/A016946(n)²`
-/

namespace A016951.P2431343847767701692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016955 n : ℚ) / (A016946 n ^ 2 : ℚ)

end

end A016951.P2431343847767701692

namespace A016951

/-- `A016955(n)/A016946(n)²` -/
def P2431343847767701692.Spec : Prop :=
  ∀ n, P2431343847767701692.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P15230772919264120607

`A016946(n)²²/A016945(n)`
-/

namespace A016951.P15230772919264120607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016946 n ^ 2) ^ 2 : ℚ) / (A016945 n : ℚ)

end

end A016951.P15230772919264120607

namespace A016951

/-- `A016946(n)²²/A016945(n)` -/
def P15230772919264120607.Spec : Prop :=
  ∀ n, P15230772919264120607.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P8100932348891555142

`(A016947(n)/2)²*A073762(n+1)`
-/

namespace A016951.P8100932348891555142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016947 n : ℚ) / 2) ^ 2 * (A073762 (n + 1) : ℚ)

end

end A016951.P8100932348891555142

namespace A016951

/-- `(A016947(n)/2)²*A073762(n+1)` -/
def P8100932348891555142.Spec : Prop :=
  ∀ n, P8100932348891555142.a n = (A016951 n : ℚ)

theorem P8100932348891555142.correct : P8100932348891555142.Spec := by
  intro n
  simp only [A016951, Nat.add_sub_cancel, A016951.P8100932348891555142.a, A016951.P324115468251133091.a, A016947, A016947.P4365293070950782915.a, A073762, A073762.P2466953430987671134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016951

/-! ## A016951.P6350034455350601168

`A016945(n)*A016946(n)*A016948(n)`
-/

namespace A016951.P6350034455350601168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016946 n * A016948 n

end

end A016951.P6350034455350601168

namespace A016951

/-- `A016945(n)*A016946(n)*A016948(n)` -/
def P6350034455350601168.Spec : Prop :=
  ∀ n, P6350034455350601168.a n = A016951 n

theorem P6350034455350601168.correct : P6350034455350601168.Spec := by
  intro n
  simp only [A016951, Nat.add_sub_cancel, A016951.P6350034455350601168.a, A016951.P324115468251133091.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016951

/-! ## A016951.P940158051805647961

`A016946(n)*A016950(n)/A016945(n)`
-/

namespace A016951.P940158051805647961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016946 n * A016950 n : ℚ) / (A016945 n : ℚ)

end

end A016951.P940158051805647961

namespace A016951

/-- `A016946(n)*A016950(n)/A016945(n)` -/
def P940158051805647961.Spec : Prop :=
  ∀ n, P940158051805647961.a n = (A016951 n : ℚ)

end A016951

/-! ## A016951.P598689746314071846

`A016947(n)*A016949(n)/A016945(n)`
-/

namespace A016951.P598689746314071846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016947 n * A016949 n : ℚ) / (A016945 n : ℚ)

end

end A016951.P598689746314071846

namespace A016951

/-- `A016947(n)*A016949(n)/A016945(n)` -/
def P598689746314071846.Spec : Prop :=
  ∀ n, P598689746314071846.a n = (A016951 n : ℚ)

end A016951

/-!
# A016952: a(n) = (6*n + 3)^8.

The programs for A016952, the canonical program `A016952.P9247051116776005436` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016952 has offset 0).

The definition of A016952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^8` (program `A016952.P9247051116776005436`, by `A016952.P9247051116776005436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016952.P9247051116776005436

`(6*n+3)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016952

/-- `(6*n+3)^8` -/
def P9247051116776005436.Spec : Prop :=
  ∀ n, (P9247051116776005436.a n : ℤ) = A016952 n

theorem P9247051116776005436.correct : P9247051116776005436.Spec := by
  intro n
  simp only [A016952]

end A016952

/-! ## A016952.P23210685403766351

`A016948(n)²`
-/

namespace A016952.P23210685403766351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 n ^ 2

end

end A016952.P23210685403766351

namespace A016952

/-- `A016948(n)²` -/
def P23210685403766351.Spec : Prop :=
  ∀ n, P23210685403766351.a n = A016952 n

theorem P23210685403766351.correct : P23210685403766351.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P23210685403766351.a, A016952.P9247051116776005436.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P15921331545956907055

`((3*or(1, 2*n))^4)²`
-/

namespace A016952.P15921331545956907055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.lor 1 (2 * n)) ^ 4) ^ 2

end

end A016952.P15921331545956907055

namespace A016952

/-- `((3*or(1, 2*n))^4)²` -/
def P15921331545956907055.Spec : Prop :=
  ∀ n, (P15921331545956907055.a n : ℤ) = A016952 n

end A016952

/-! ## A016952.P15659834179319034451

`((3*xor(1, 2*n))^4)²`
-/

namespace A016952.P15659834179319034451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.xor 1 (2 * n)) ^ 4) ^ 2

end

end A016952.P15659834179319034451

namespace A016952

/-- `((3*xor(1, 2*n))^4)²` -/
def P15659834179319034451.Spec : Prop :=
  ∀ n, (P15659834179319034451.a n : ℤ) = A016952 n

end A016952

/-! ## A016952.P512901200519462376

`(3*or(1, 2*n))²²²`
-/

namespace A016952.P512901200519462376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((3 * Nat.lor 1 (2 * n)) ^ 2) ^ 2) ^ 2

end

end A016952.P512901200519462376

namespace A016952

/-- `(3*or(1, 2*n))²²²` -/
def P512901200519462376.Spec : Prop :=
  ∀ n, (P512901200519462376.a n : ℤ) = A016952 n

end A016952

/-! ## A016952.P6164593129107855393

`(3*xor(1, 2*n))²²²`
-/

namespace A016952.P6164593129107855393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((3 * Nat.xor 1 (2 * n)) ^ 2) ^ 2) ^ 2

end

end A016952.P6164593129107855393

namespace A016952

/-- `(3*xor(1, 2*n))²²²` -/
def P6164593129107855393.Spec : Prop :=
  ∀ n, (P6164593129107855393.a n : ℤ) = A016952 n

end A016952

/-! ## A016952.P15808713705250560609

`lcm(3, (3*(2*n+1))²²²)`
-/

namespace A016952.P15808713705250560609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 ((((3 * (2 * n + 1)) ^ 2) ^ 2) ^ 2)

end

end A016952.P15808713705250560609

namespace A016952

/-- `lcm(3, (3*(2*n+1))²²²)` -/
def P15808713705250560609.Spec : Prop :=
  ∀ n, (P15808713705250560609.a n : ℤ) = A016952 n

end A016952

/-! ## A016952.P2533251782149654964

`(3*C(2*n+1, 2*n))²²²`
-/

namespace A016952.P2533251782149654964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((3 * Nat.choose (2 * n + 1) (2 * n)) ^ 2) ^ 2) ^ 2

end

end A016952.P2533251782149654964

namespace A016952

/-- `(3*C(2*n+1, 2*n))²²²` -/
def P2533251782149654964.Spec : Prop :=
  ∀ n, (P2533251782149654964.a n : ℤ) = A016952 n

theorem P2533251782149654964.correct : P2533251782149654964.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P2533251782149654964.a, A016952.P9247051116776005436.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016952

/-! ## A016952.P7631085227518621738

`A016946(n)²²`
-/

namespace A016952.P7631085227518621738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016946 n ^ 2) ^ 2

end

end A016952.P7631085227518621738

namespace A016952

/-- `A016946(n)²²` -/
def P7631085227518621738.Spec : Prop :=
  ∀ n, P7631085227518621738.a n = A016952 n

theorem P7631085227518621738.correct : P7631085227518621738.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P7631085227518621738.a, A016952.P9247051116776005436.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P10297121475051118004

`(A016945(n)^4)²`
-/

namespace A016952.P10297121475051118004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n ^ 4) ^ 2

end

end A016952.P10297121475051118004

namespace A016952

/-- `(A016945(n)^4)²` -/
def P10297121475051118004.Spec : Prop :=
  ∀ n, P10297121475051118004.a n = A016952 n

theorem P10297121475051118004.correct : P10297121475051118004.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P10297121475051118004.a, A016952.P9247051116776005436.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P16980029262003436137

`(A144410(n)+1)²²`
-/

namespace A016952.P16980029262003436137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A144410 n + 1) ^ 2) ^ 2

end

end A016952.P16980029262003436137

namespace A016952

/-- `(A144410(n)+1)²²` -/
def P16980029262003436137.Spec : Prop :=
  ∀ n, P16980029262003436137.a n = A016952 n

theorem P16980029262003436137.correct : P16980029262003436137.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P16980029262003436137.a, A016952.P9247051116776005436.a, A144410, A144410.P8365255097243004447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P15079661733007202668

`Δ[A033428(n)]²²²`
-/

namespace A016952.P15079661733007202668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A016952.P15079661733007202668

namespace A016952

/-- `Δ[A033428(n)]²²²` -/
def P15079661733007202668.Spec : Prop :=
  ∀ n, P15079661733007202668.a n = A016952 n

theorem P15079661733007202668.correct : P15079661733007202668.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P15079661733007202668.f1, A016952.P15079661733007202668.a, A016952.P9247051116776005436.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P9491908786232885161

`((A016921(n)+2)^4)²`
-/

namespace A016952.P9491908786232885161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016921 n + 2) ^ 4) ^ 2

end

end A016952.P9491908786232885161

namespace A016952

/-- `((A016921(n)+2)^4)²` -/
def P9491908786232885161.Spec : Prop :=
  ∀ n, P9491908786232885161.a n = A016952 n

theorem P9491908786232885161.correct : P9491908786232885161.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P9491908786232885161.a, A016952.P9247051116776005436.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P16743184071945184044

`abs((2-A016969(n))^8)`
-/

namespace A016952.P16743184071945184044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A016969 n) ^ 8|

end

end A016952.P16743184071945184044

namespace A016952

/-- `abs((2-A016969(n))^8)` -/
def P16743184071945184044.Spec : Prop :=
  ∀ n, P16743184071945184044.a n = A016952 n

end A016952

/-! ## A016952.P11200773344845791142

`(A016933(n)+1)²²²`
-/

namespace A016952.P11200773344845791142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016933 n + 1) ^ 2) ^ 2) ^ 2

end

end A016952.P11200773344845791142

namespace A016952

/-- `(A016933(n)+1)²²²` -/
def P11200773344845791142.Spec : Prop :=
  ∀ n, P11200773344845791142.a n = A016952 n

theorem P11200773344845791142.correct : P11200773344845791142.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P11200773344845791142.a, A016952.P9247051116776005436.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P18120649162378490297

`(1-A016957(n))²²²`
-/

namespace A016952.P18120649162378490297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A016957 n) ^ 2) ^ 2) ^ 2

end

end A016952.P18120649162378490297

namespace A016952

/-- `(1-A016957(n))²²²` -/
def P18120649162378490297.Spec : Prop :=
  ∀ n, P18120649162378490297.a n = A016952 n

theorem P18120649162378490297.correct : P18120649162378490297.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P18120649162378490297.a, A016952.P9247051116776005436.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P10808211942557165034

`(A017593(n)/2)²²²`
-/

namespace A016952.P10808211942557165034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A017593 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016952.P10808211942557165034

namespace A016952

/-- `(A017593(n)/2)²²²` -/
def P10808211942557165034.Spec : Prop :=
  ∀ n, P10808211942557165034.a n = (A016952 n : ℚ)

theorem P10808211942557165034.correct : P10808211942557165034.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P10808211942557165034.a, A016952.P9247051116776005436.a, A017593, A017593.P13091213750843470751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P104539631176231046

`(A016885(n)+n)²²²`
-/

namespace A016952.P104539631176231046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016885 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016952.P104539631176231046

namespace A016952

/-- `(A016885(n)+n)²²²` -/
def P104539631176231046.Spec : Prop :=
  ∀ n, P104539631176231046.a n = A016952 n

theorem P104539631176231046.correct : P104539631176231046.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P104539631176231046.a, A016952.P9247051116776005436.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-! ## A016952.P17575180304472828088

`(n-A017017(n))²²²`
-/

namespace A016952.P17575180304472828088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017017 n) ^ 2) ^ 2) ^ 2

end

end A016952.P17575180304472828088

namespace A016952

/-- `(n-A017017(n))²²²` -/
def P17575180304472828088.Spec : Prop :=
  ∀ n, P17575180304472828088.a n = A016952 n

theorem P17575180304472828088.correct : P17575180304472828088.Spec := by
  intro n
  simp only [A016952, Nat.add_sub_cancel, A016952.P17575180304472828088.a, A016952.P9247051116776005436.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016952

/-!
# A016953: a(n) = (6*n + 3)^9.

The programs for A016953, the canonical program `A016953.P13755673835910557378` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016953 has offset 0).

The definition of A016953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^9` (program `A016953.P13755673835910557378`, by `A016953.P13755673835910557378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016953.P13755673835910557378

`(6*n+3)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016953

/-- `(6*n+3)^9` -/
def P13755673835910557378.Spec : Prop :=
  ∀ n, (P13755673835910557378.a n : ℤ) = A016953 n

theorem P13755673835910557378.correct : P13755673835910557378.Spec := by
  intro n
  simp only [A016953]

end A016953

/-! ## A016953.P11168376324847584835

`sqrt(A016950(n)^3)`
-/

namespace A016953.P11168376324847584835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016950 n ^ 3 : ℝ)

end

end A016953.P11168376324847584835

namespace A016953

/-- `sqrt(A016950(n)^3)` -/
def P11168376324847584835.Spec : Prop :=
  ∀ n, P11168376324847584835.a n = (A016953 n : ℝ)

end A016953

/-! ## A016953.P14214213367549602073

`lcm(3, A016945(n)^9)`
-/

namespace A016953.P14214213367549602073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A016945 n ^ 9)

end

end A016953.P14214213367549602073

namespace A016953

/-- `lcm(3, A016945(n)^9)` -/
def P14214213367549602073.Spec : Prop :=
  ∀ n, (P14214213367549602073.a n : ℤ) = A016953 n

end A016953

/-! ## A016953.P6302208140907214077

`(6*n+3)*A016952(n)`
-/

namespace A016953.P6302208140907214077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) * A016952 n

end

end A016953.P6302208140907214077

namespace A016953

/-- `(6*n+3)*A016952(n)` -/
def P6302208140907214077.Spec : Prop :=
  ∀ n, P6302208140907214077.a n = A016953 n

theorem P6302208140907214077.correct : P6302208140907214077.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P6302208140907214077.a, A016953.P13755673835910557378.a, A016952, A016952.P9247051116776005436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P10217643020635003126

`A016946(n)*A016951(n)`
-/

namespace A016953.P10217643020635003126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n * A016951 n

end

end A016953.P10217643020635003126

namespace A016953

/-- `A016946(n)*A016951(n)` -/
def P10217643020635003126.Spec : Prop :=
  ∀ n, P10217643020635003126.a n = A016953 n

theorem P10217643020635003126.correct : P10217643020635003126.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P10217643020635003126.a, A016953.P13755673835910557378.a, A016946, A016946.P16494615086453922637.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P16644417739190154623

`A016947(n)*A016950(n)`
-/

namespace A016953.P16644417739190154623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n * A016950 n

end

end A016953.P16644417739190154623

namespace A016953

/-- `A016947(n)*A016950(n)` -/
def P16644417739190154623.Spec : Prop :=
  ∀ n, P16644417739190154623.a n = A016953 n

theorem P16644417739190154623.correct : P16644417739190154623.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P16644417739190154623.a, A016953.P13755673835910557378.a, A016947, A016947.P4365293070950782915.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P15775840474313549242

`A016948(n)*A016949(n)`
-/

namespace A016953.P15775840474313549242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 n * A016949 n

end

end A016953.P15775840474313549242

namespace A016953

/-- `A016948(n)*A016949(n)` -/
def P15775840474313549242.Spec : Prop :=
  ∀ n, P15775840474313549242.a n = A016953 n

theorem P15775840474313549242.correct : P15775840474313549242.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P15775840474313549242.a, A016953.P13755673835910557378.a, A016948, A016948.P2499014121543189589.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P6378552499050479913

`A016954(n)/A016945(n)`
-/

namespace A016953.P6378552499050479913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016954 n : ℚ) / (A016945 n : ℚ)

end

end A016953.P6378552499050479913

namespace A016953

/-- `A016954(n)/A016945(n)` -/
def P6378552499050479913.Spec : Prop :=
  ∀ n, P6378552499050479913.a n = (A016953 n : ℚ)

end A016953

/-! ## A016953.P8051208028419036795

`A016955(n)/A016946(n)`
-/

namespace A016953.P8051208028419036795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016955 n : ℚ) / (A016946 n : ℚ)

end

end A016953.P8051208028419036795

namespace A016953

/-- `A016955(n)/A016946(n)` -/
def P8051208028419036795.Spec : Prop :=
  ∀ n, P8051208028419036795.a n = (A016953 n : ℚ)

end A016953

/-! ## A016953.P5242404164259835686

`A016945(n)²*A016951(n)`
-/

namespace A016953.P5242404164259835686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ 2 * A016951 n

end

end A016953.P5242404164259835686

namespace A016953

/-- `A016945(n)²*A016951(n)` -/
def P5242404164259835686.Spec : Prop :=
  ∀ n, P5242404164259835686.a n = A016953 n

theorem P5242404164259835686.correct : P5242404164259835686.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P5242404164259835686.a, A016953.P13755673835910557378.a, A016945, A016945.P12463160785118576711.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P10325654997761450713

`A016946(n)²*A016949(n)`
-/

namespace A016953.P10325654997761450713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n ^ 2 * A016949 n

end

end A016953.P10325654997761450713

namespace A016953

/-- `A016946(n)²*A016949(n)` -/
def P10325654997761450713.Spec : Prop :=
  ∀ n, P10325654997761450713.a n = A016953 n

theorem P10325654997761450713.correct : P10325654997761450713.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P10325654997761450713.a, A016953.P13755673835910557378.a, A016946, A016946.P16494615086453922637.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P2533874537022982523

`A016948(n)²*A016945(n)`
-/

namespace A016953.P2533874537022982523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 n ^ 2 * A016945 n

end

end A016953.P2533874537022982523

namespace A016953

/-- `A016948(n)²*A016945(n)` -/
def P2533874537022982523.Spec : Prop :=
  ∀ n, P2533874537022982523.a n = A016953 n

theorem P2533874537022982523.correct : P2533874537022982523.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P2533874537022982523.a, A016953.P13755673835910557378.a, A016945, A016945.P12463160785118576711.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P16060893719650181714

`A016949(n)²/A016945(n)`
-/

namespace A016953.P16060893719650181714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016949 n ^ 2 : ℚ) / (A016945 n : ℚ)

end

end A016953.P16060893719650181714

namespace A016953

/-- `A016949(n)²/A016945(n)` -/
def P16060893719650181714.Spec : Prop :=
  ∀ n, P16060893719650181714.a n = (A016953 n : ℚ)

end A016953

/-! ## A016953.P929418506914779635

`A016955(n)/A016945(n)²`
-/

namespace A016953.P929418506914779635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016955 n : ℚ) / (A016945 n ^ 2 : ℚ)

end

end A016953.P929418506914779635

namespace A016953

/-- `A016955(n)/A016945(n)²` -/
def P929418506914779635.Spec : Prop :=
  ∀ n, P929418506914779635.a n = (A016953 n : ℚ)

end A016953

/-! ## A016953.P6714161386570072960

`A016946(n)²²*A016945(n)`
-/

namespace A016953.P6714161386570072960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016946 n ^ 2) ^ 2 * A016945 n

end

end A016953.P6714161386570072960

namespace A016953

/-- `A016946(n)²²*A016945(n)` -/
def P6714161386570072960.Spec : Prop :=
  ∀ n, P6714161386570072960.a n = A016953 n

theorem P6714161386570072960.correct : P6714161386570072960.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P6714161386570072960.a, A016953.P13755673835910557378.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P9380295397227096635

`A016945(n)^9*A109613(n)%2`
-/

namespace A016953.P9380295397227096635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ 9 * Int.tmod (A109613 n) 2

end

end A016953.P9380295397227096635

namespace A016953

/-- `A016945(n)^9*A109613(n)%2` -/
def P9380295397227096635.Spec : Prop :=
  ∀ n, P9380295397227096635.a n = A016953 n

end A016953

/-! ## A016953.P11471399990714799690

`A016945(n)*A016946(n)*A016950(n)`
-/

namespace A016953.P11471399990714799690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016946 n * A016950 n

end

end A016953.P11471399990714799690

namespace A016953

/-- `A016945(n)*A016946(n)*A016950(n)` -/
def P11471399990714799690.Spec : Prop :=
  ∀ n, P11471399990714799690.a n = A016953 n

theorem P11471399990714799690.correct : P11471399990714799690.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P11471399990714799690.a, A016953.P13755673835910557378.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P11365548959475027671

`A016945(n)*A016947(n)*A016949(n)`
-/

namespace A016953.P11365548959475027671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016947 n * A016949 n

end

end A016953.P11365548959475027671

namespace A016953

/-- `A016945(n)*A016947(n)*A016949(n)` -/
def P11365548959475027671.Spec : Prop :=
  ∀ n, P11365548959475027671.a n = A016953 n

theorem P11365548959475027671.correct : P11365548959475027671.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P11365548959475027671.a, A016953.P13755673835910557378.a, A016945, A016945.P12463160785118576711.a, A016947, A016947.P4365293070950782915.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-! ## A016953.P9875409394358685597

`A016946(n)*A016947(n)*A016948(n)`
-/

namespace A016953.P9875409394358685597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n * A016947 n * A016948 n

end

end A016953.P9875409394358685597

namespace A016953

/-- `A016946(n)*A016947(n)*A016948(n)` -/
def P9875409394358685597.Spec : Prop :=
  ∀ n, P9875409394358685597.a n = A016953 n

theorem P9875409394358685597.correct : P9875409394358685597.Spec := by
  intro n
  simp only [A016953, Nat.add_sub_cancel, A016953.P9875409394358685597.a, A016953.P13755673835910557378.a, A016946, A016946.P16494615086453922637.a, A016947, A016947.P4365293070950782915.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016953

/-!
# A016954: a(n) = (6n+3)^10.

The programs for A016954, the canonical program `A016954.P9572574025296649151` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016954 has offset 0).

The definition of A016954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^10` (program `A016954.P9572574025296649151`, by `A016954.P9572574025296649151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016954.P9572574025296649151

`(6*n+3)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016954

/-- `(6*n+3)^10` -/
def P9572574025296649151.Spec : Prop :=
  ∀ n, (P9572574025296649151.a n : ℤ) = A016954 n

theorem P9572574025296649151.correct : P9572574025296649151.Spec := by
  intro n
  simp only [A016954]

end A016954

/-! ## A016954.P16101569602511132218

`A016949(n)²`
-/

namespace A016954.P16101569602511132218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016949 n ^ 2

end

end A016954.P16101569602511132218

namespace A016954

/-- `A016949(n)²` -/
def P16101569602511132218.Spec : Prop :=
  ∀ n, P16101569602511132218.a n = A016954 n

theorem P16101569602511132218.correct : P16101569602511132218.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P16101569602511132218.a, A016954.P9572574025296649151.a, A016949, A016949.P7895979054807280839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P10394035509620482513

`A008454(A016945(n))`
-/

namespace A016954.P10394035509620482513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016945 n).toNat

end

end A016954.P10394035509620482513

namespace A016954

/-- `A008454(A016945(n))` -/
def P10394035509620482513.Spec : Prop :=
  ∀ n, P10394035509620482513.a n = A016954 n

end A016954

/-! ## A016954.P7069444217264410043

`((3*or(1, 2*n))^5)²`
-/

namespace A016954.P7069444217264410043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.lor 1 (2 * n)) ^ 5) ^ 2

end

end A016954.P7069444217264410043

namespace A016954

/-- `((3*or(1, 2*n))^5)²` -/
def P7069444217264410043.Spec : Prop :=
  ∀ n, (P7069444217264410043.a n : ℤ) = A016954 n

end A016954

/-! ## A016954.P2711363468663889232

`((3*xor(1, 2*n))^5)²`
-/

namespace A016954.P2711363468663889232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.xor 1 (2 * n)) ^ 5) ^ 2

end

end A016954.P2711363468663889232

namespace A016954

/-- `((3*xor(1, 2*n))^5)²` -/
def P2711363468663889232.Spec : Prop :=
  ∀ n, (P2711363468663889232.a n : ℤ) = A016954 n

end A016954

/-! ## A016954.P15254256733044162630

`sqrt(A016948(n)^5)`
-/

namespace A016954.P15254256733044162630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016948 n ^ 5 : ℝ)

end

end A016954.P15254256733044162630

namespace A016954

/-- `sqrt(A016948(n)^5)` -/
def P15254256733044162630.Spec : Prop :=
  ∀ n, P15254256733044162630.a n = (A016954 n : ℝ)

end A016954

/-! ## A016954.P9232583020074468888

`((1-A016957(n))^5)²`
-/

namespace A016954.P9232583020074468888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A016957 n) ^ 5) ^ 2

end

end A016954.P9232583020074468888

namespace A016954

/-- `((1-A016957(n))^5)²` -/
def P9232583020074468888.Spec : Prop :=
  ∀ n, P9232583020074468888.a n = A016954 n

theorem P9232583020074468888.correct : P9232583020074468888.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P9232583020074468888.a, A016954.P9572574025296649151.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P13690866613034379755

`A016945(n)*A016953(n)`
-/

namespace A016954.P13690866613034379755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016953 n

end

end A016954.P13690866613034379755

namespace A016954

/-- `A016945(n)*A016953(n)` -/
def P13690866613034379755.Spec : Prop :=
  ∀ n, P13690866613034379755.a n = A016954 n

theorem P13690866613034379755.correct : P13690866613034379755.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P13690866613034379755.a, A016954.P9572574025296649151.a, A016945, A016945.P12463160785118576711.a, A016953, A016953.P13755673835910557378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P2454325675461216458

`A016946(n)*A016952(n)`
-/

namespace A016954.P2454325675461216458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n * A016952 n

end

end A016954.P2454325675461216458

namespace A016954

/-- `A016946(n)*A016952(n)` -/
def P2454325675461216458.Spec : Prop :=
  ∀ n, P2454325675461216458.a n = A016954 n

theorem P2454325675461216458.correct : P2454325675461216458.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P2454325675461216458.a, A016954.P9572574025296649151.a, A016946, A016946.P16494615086453922637.a, A016952, A016952.P9247051116776005436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P5515825539687125346

`A016947(n)*A016951(n)`
-/

namespace A016954.P5515825539687125346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n * A016951 n

end

end A016954.P5515825539687125346

namespace A016954

/-- `A016947(n)*A016951(n)` -/
def P5515825539687125346.Spec : Prop :=
  ∀ n, P5515825539687125346.a n = A016954 n

theorem P5515825539687125346.correct : P5515825539687125346.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P5515825539687125346.a, A016954.P9572574025296649151.a, A016947, A016947.P4365293070950782915.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P2197703349749787648

`A016948(n)*A016950(n)`
-/

namespace A016954.P2197703349749787648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 n * A016950 n

end

end A016954.P2197703349749787648

namespace A016954

/-- `A016948(n)*A016950(n)` -/
def P2197703349749787648.Spec : Prop :=
  ∀ n, P2197703349749787648.a n = A016954 n

theorem P2197703349749787648.correct : P2197703349749787648.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P2197703349749787648.a, A016954.P9572574025296649151.a, A016948, A016948.P2499014121543189589.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P12050873478657633688

`A016955(n)/A016945(n)`
-/

namespace A016954.P12050873478657633688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016955 n : ℚ) / (A016945 n : ℚ)

end

end A016954.P12050873478657633688

namespace A016954

/-- `A016955(n)/A016945(n)` -/
def P12050873478657633688.Spec : Prop :=
  ∀ n, P12050873478657633688.a n = (A016954 n : ℚ)

end A016954

/-! ## A016954.P13190352810726229630

`(A016945(n)*A016948(n))²`
-/

namespace A016954.P13190352810726229630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n * A016948 n) ^ 2

end

end A016954.P13190352810726229630

namespace A016954

/-- `(A016945(n)*A016948(n))²` -/
def P13190352810726229630.Spec : Prop :=
  ∀ n, P13190352810726229630.a n = A016954 n

theorem P13190352810726229630.correct : P13190352810726229630.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P13190352810726229630.a, A016954.P9572574025296649151.a, A016945, A016945.P12463160785118576711.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P1548924733456444641

`A016945(n)²*A016952(n)`
-/

namespace A016954.P1548924733456444641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ 2 * A016952 n

end

end A016954.P1548924733456444641

namespace A016954

/-- `A016945(n)²*A016952(n)` -/
def P1548924733456444641.Spec : Prop :=
  ∀ n, P1548924733456444641.a n = A016954 n

theorem P1548924733456444641.correct : P1548924733456444641.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P1548924733456444641.a, A016954.P9572574025296649151.a, A016945, A016945.P12463160785118576711.a, A016952, A016952.P9247051116776005436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P15982566225821476668

`(A016946(n)*A016947(n))²`
-/

namespace A016954.P15982566225821476668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016946 n * A016947 n) ^ 2

end

end A016954.P15982566225821476668

namespace A016954

/-- `(A016946(n)*A016947(n))²` -/
def P15982566225821476668.Spec : Prop :=
  ∀ n, P15982566225821476668.a n = A016954 n

theorem P15982566225821476668.correct : P15982566225821476668.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P15982566225821476668.a, A016954.P9572574025296649151.a, A016946, A016946.P16494615086453922637.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P7888517430450960981

`A016946(n)²*A016950(n)`
-/

namespace A016954.P7888517430450960981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n ^ 2 * A016950 n

end

end A016954.P7888517430450960981

namespace A016954

/-- `A016946(n)²*A016950(n)` -/
def P7888517430450960981.Spec : Prop :=
  ∀ n, P7888517430450960981.a n = A016954 n

theorem P7888517430450960981.correct : P7888517430450960981.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P7888517430450960981.a, A016954.P9572574025296649151.a, A016946, A016946.P16494615086453922637.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P1406673907549102607

`A016947(n)²*A016948(n)`
-/

namespace A016954.P1406673907549102607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n ^ 2 * A016948 n

end

end A016954.P1406673907549102607

namespace A016954

/-- `A016947(n)²*A016948(n)` -/
def P1406673907549102607.Spec : Prop :=
  ∀ n, P1406673907549102607.a n = A016954 n

theorem P1406673907549102607.correct : P1406673907549102607.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P1406673907549102607.a, A016954.P9572574025296649151.a, A016947, A016947.P4365293070950782915.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P17719707526782255042

`A016948(n)²*A016946(n)`
-/

namespace A016954.P17719707526782255042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 n ^ 2 * A016946 n

end

end A016954.P17719707526782255042

namespace A016954

/-- `A016948(n)²*A016946(n)` -/
def P17719707526782255042.Spec : Prop :=
  ∀ n, P17719707526782255042.a n = A016954 n

theorem P17719707526782255042.correct : P17719707526782255042.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P17719707526782255042.a, A016954.P9572574025296649151.a, A016946, A016946.P16494615086453922637.a, A016948, A016948.P2499014121543189589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-! ## A016954.P4937832030409435107

`(A016950(n)/A016945(n))²`
-/

namespace A016954.P4937832030409435107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016950 n : ℚ) / (A016945 n : ℚ)) ^ 2

end

end A016954.P4937832030409435107

namespace A016954

/-- `(A016950(n)/A016945(n))²` -/
def P4937832030409435107.Spec : Prop :=
  ∀ n, P4937832030409435107.a n = (A016954 n : ℚ)

end A016954

/-! ## A016954.P14603019788725779093

`A016945(n)*A016946(n)*A016951(n)`
-/

namespace A016954.P14603019788725779093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016946 n * A016951 n

end

end A016954.P14603019788725779093

namespace A016954

/-- `A016945(n)*A016946(n)*A016951(n)` -/
def P14603019788725779093.Spec : Prop :=
  ∀ n, P14603019788725779093.a n = A016954 n

theorem P14603019788725779093.correct : P14603019788725779093.Spec := by
  intro n
  simp only [A016954, Nat.add_sub_cancel, A016954.P14603019788725779093.a, A016954.P9572574025296649151.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016954

/-!
# A016955: a(n) = (6*n + 3)^11.

The programs for A016955, the canonical program `A016955.P16031905530996330252` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016955 has offset 0).

The definition of A016955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+3)^11` (program `A016955.P16031905530996330252`, by `A016955.P16031905530996330252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016955.P16031905530996330252

`(6*n+3)^11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016955

/-- `(6*n+3)^11` -/
def P16031905530996330252.Spec : Prop :=
  ∀ n, (P16031905530996330252.a n : ℤ) = A016955 n

theorem P16031905530996330252.correct : P16031905530996330252.Spec := by
  intro n
  simp only [A016955]

end A016955

/-! ## A016955.P9686555140809511135

`A016945(n)*A016954(n)`
-/

namespace A016955.P9686555140809511135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A016954 n

end

end A016955.P9686555140809511135

namespace A016955

/-- `A016945(n)*A016954(n)` -/
def P9686555140809511135.Spec : Prop :=
  ∀ n, P9686555140809511135.a n = A016955 n

theorem P9686555140809511135.correct : P9686555140809511135.Spec := by
  intro n
  simp only [A016955, Nat.add_sub_cancel, A016955.P9686555140809511135.a, A016955.P16031905530996330252.a, A016945, A016945.P12463160785118576711.a, A016954, A016954.P9572574025296649151.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016955

/-! ## A016955.P453312120233907404

`A016946(n)*A016953(n)`
-/

namespace A016955.P453312120233907404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n * A016953 n

end

end A016955.P453312120233907404

namespace A016955

/-- `A016946(n)*A016953(n)` -/
def P453312120233907404.Spec : Prop :=
  ∀ n, P453312120233907404.a n = A016955 n

theorem P453312120233907404.correct : P453312120233907404.Spec := by
  intro n
  simp only [A016955, Nat.add_sub_cancel, A016955.P453312120233907404.a, A016955.P16031905530996330252.a, A016946, A016946.P16494615086453922637.a, A016953, A016953.P13755673835910557378.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016955

/-! ## A016955.P1182192332921122054

`A016948(n)*A016951(n)`
-/

namespace A016955.P1182192332921122054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 n * A016951 n

end

end A016955.P1182192332921122054

namespace A016955

/-- `A016948(n)*A016951(n)` -/
def P1182192332921122054.Spec : Prop :=
  ∀ n, P1182192332921122054.a n = A016955 n

theorem P1182192332921122054.correct : P1182192332921122054.Spec := by
  intro n
  simp only [A016955, Nat.add_sub_cancel, A016955.P1182192332921122054.a, A016955.P16031905530996330252.a, A016948, A016948.P2499014121543189589.a, A016951, A016951.P324115468251133091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016955

/-! ## A016955.P6742802134392729513

`A016949(n)*A016950(n)`
-/

namespace A016955.P6742802134392729513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016949 n * A016950 n

end

end A016955.P6742802134392729513

namespace A016955

/-- `A016949(n)*A016950(n)` -/
def P6742802134392729513.Spec : Prop :=
  ∀ n, P6742802134392729513.a n = A016955 n

theorem P6742802134392729513.correct : P6742802134392729513.Spec := by
  intro n
  simp only [A016955, Nat.add_sub_cancel, A016955.P6742802134392729513.a, A016955.P16031905530996330252.a, A016949, A016949.P7895979054807280839.a, A016950, A016950.P12981427071470377345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016955

/-! ## A016955.P17084853878898015469

`A016775(2*n+1)`
-/

namespace A016955.P17084853878898015469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016775 (2 * n + 1)

end

end A016955.P17084853878898015469

namespace A016955

/-- `A016775(2*n+1)` -/
def P17084853878898015469.Spec : Prop :=
  ∀ n, P17084853878898015469.a n = A016955 n

theorem P17084853878898015469.correct : P17084853878898015469.Spec := by
  intro n
  simp only [A016955, Nat.add_sub_cancel, A016955.P17084853878898015469.a, A016955.P16031905530996330252.a, A016775, A016775.P6055154999730758988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016955

/-! ## A016955.P5576488186369334227

`A016768(2*n+1)²*A016767(2*n+1)`
-/

namespace A016955.P5576488186369334227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016768 (2 * n + 1) ^ 2 * A016767 (2 * n + 1)

end

end A016955.P5576488186369334227

namespace A016955

/-- `A016768(2*n+1)²*A016767(2*n+1)` -/
def P5576488186369334227.Spec : Prop :=
  ∀ n, P5576488186369334227.a n = A016955 n

theorem P5576488186369334227.correct : P5576488186369334227.Spec := by
  intro n
  simp only [A016955, Nat.add_sub_cancel, A016955.P5576488186369334227.a, A016955.P16031905530996330252.a, A016767, A016767.P3997155990818198274.a, A016768, A016768.P18056756270449586685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016955

/-! ## A016955.P16277709184093849519

`A016767(2*n+1)²²/A008585(2*n+1)`
-/

namespace A016955.P16277709184093849519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016767 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A008585 (2 * n + 1) : ℚ)

end

end A016955.P16277709184093849519

namespace A016955

/-- `A016767(2*n+1)²²/A008585(2*n+1)` -/
def P16277709184093849519.Spec : Prop :=
  ∀ n, P16277709184093849519.a n = (A016955 n : ℚ)

theorem P16277709184093849519.correct : P16277709184093849519.Spec := by
  intro n
  simp only [A016955, Nat.add_sub_cancel, A016955.P16277709184093849519.a, A016955.P16031905530996330252.a, A008585, A008585.P13732812384316341435.a, A016767, A016767.P3997155990818198274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016955

/-! ## A016955.P1720123074812829800

`A016763(3*n+1)`
-/

namespace A016955.P1720123074812829800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (3 * n + 1)

end

end A016955.P1720123074812829800

namespace A016955

/-- `A016763(3*n+1)` -/
def P1720123074812829800.Spec : Prop :=
  ∀ n, P1720123074812829800.a n = A016955 n

theorem P1720123074812829800.correct : P1720123074812829800.Spec := by
  intro n
  simp only [A016955, Nat.add_sub_cancel, A016955.P1720123074812829800.a, A016955.P16031905530996330252.a, A016763, A016763.P10124515130881189729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016955

/-! ## A016955.P2617315435913940717

`A008455(Δ[3*n²])`
-/

namespace A016955.P2617315435913940717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A016955.P2617315435913940717

namespace A016955

/-- `A008455(Δ[3*n²])` -/
def P2617315435913940717.Spec : Prop :=
  ∀ n, P2617315435913940717.a n = A016955 n

end A016955

/-!
# A016956: 

The programs for A016956, there is no canonical definition to state claims against.
-/

/-! ## A016956.P7790706444920548473

`(6*n+3)^12`
-/

namespace A016956.P7790706444920548473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 3) ^ 12

end

end A016956.P7790706444920548473

/-! ## A016956.P12254386933827361035

`A016950(n)²`
-/

namespace A016956.P12254386933827361035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016950 n ^ 2

end

end A016956.P12254386933827361035

/-! ## A016956.P11409413579675716798

`A016776(2*n+1)`
-/

namespace A016956.P11409413579675716798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016776 (2 * n + 1)

end

end A016956.P11409413579675716798

/-! ## A016956.P13642997818755363334

`A016770(2*n+1)²`
-/

namespace A016956.P13642997818755363334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016770 (2 * n + 1) ^ 2

end

end A016956.P13642997818755363334

/-! ## A016956.P3356153325823089102

`A016764(3*n+1)`
-/

namespace A016956.P3356153325823089102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (3 * n + 1)

end

end A016956.P3356153325823089102

/-! ## A016956.P14000659304963846111

`sqrt(A016952(n)^3)`
-/

namespace A016956.P14000659304963846111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016952 n ^ 3 : ℝ)

end

end A016956.P14000659304963846111

/-! ## A016956.P3561142145777375833

`A000578(A016921(n)+2)²²`
-/

namespace A016956.P3561142145777375833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016921 n + 2).toNat ^ 2) ^ 2

end

end A016956.P3561142145777375833

/-! ## A016956.P7800698654087340166

`A000578(A016969(n)-2)²²`
-/

namespace A016956.P7800698654087340166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016969 n - 2).toNat ^ 2) ^ 2

end

end A016956.P7800698654087340166

/-! ## A016956.P14093552721003819492

`A000578(A016885(n)+n)²²`
-/

namespace A016956.P14093552721003819492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016885 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A016956.P14093552721003819492

/-!
# A016957: a(n) = 6*n + 4.

The programs for A016957, the canonical program `A016957.P9941618694539595759` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016957 has offset 0).

The definition of A016957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n+4` (program `A016957.P9941618694539595759`, by `A016957.P9941618694539595759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016957.P9941618694539595759

`6*n+4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016957

/-- `6*n+4` -/
def P9941618694539595759.Spec : Prop :=
  ∀ n, (P9941618694539595759.a n : ℤ) = A016957 n

theorem P9941618694539595759.correct : P9941618694539595759.Spec := by
  intro n
  simp only [A016957]

end A016957

/-!
# A016958: a(n) = (6*n + 4)^2.

The programs for A016958, the canonical program `A016958.P743767780414774553` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016958 has offset 0).

The definition of A016958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)²` (program `A016958.P743767780414774553`, by `A016958.P743767780414774553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016958.P743767780414774553

`(6*n+4)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016958

/-- `(6*n+4)²` -/
def P743767780414774553.Spec : Prop :=
  ∀ n, (P743767780414774553.a n : ℤ) = A016958 n

theorem P743767780414774553.correct : P743767780414774553.Spec := by
  intro n
  simp only [A016958]

end A016958

/-! ## A016958.P544063189055671644

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=16, a(1)=100, a(2)=256`
-/

namespace A016958.P544063189055671644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 100, 256] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A016958.P544063189055671644

namespace A016958

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P544063189055671644.Spec : Prop :=
  ∀ n, P544063189055671644.a n = A016958 n

theorem P544063189055671644.correct : P544063189055671644.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A016958, Nat.add_sub_cancel, A016958.P544063189055671644.a, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A016958, Nat.add_sub_cancel, A016958.P544063189055671644.a, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016958

/-! ## A016958.P15232798947184038396

`A016778(2*n+1)`
-/

namespace A016958.P15232798947184038396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 (2 * n + 1)

end

end A016958.P15232798947184038396

namespace A016958

/-- `A016778(2*n+1)` -/
def P15232798947184038396.Spec : Prop :=
  ∀ n, P15232798947184038396.a n = A016958 n

theorem P15232798947184038396.correct : P15232798947184038396.Spec := by
  intro n
  simp only [A016958, Nat.add_sub_cancel, A016958.P15232798947184038396.a, A016958.P743767780414774553.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016958

/-! ## A016958.P16616391026361012403

`record[(lcm(4, n+1)-n)²]`
-/

namespace A016958.P16616391026361012403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016958.P16616391026361012403

namespace A016958

/-- `record[(lcm(4, n+1)-n)²]` -/
def P16616391026361012403.Spec : Prop :=
  ∀ n, P16616391026361012403.a n = A016958 n

end A016958

/-! ## A016958.P5067084927316711581

`record[(gcd(6, n)+n-2)²]`
-/

namespace A016958.P5067084927316711581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 6 n : ℤ) + ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016958.P5067084927316711581

namespace A016958

/-- `record[(gcd(6, n)+n-2)²]` -/
def P5067084927316711581.Spec : Prop :=
  ∀ n, P5067084927316711581.a n = A016958 n

end A016958

/-! ## A016958.P6469333164609731997

`record[(2*xor(n, -2)-n)²]`
-/

namespace A016958.P6469333164609731997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.xor (n : ℤ) (-2) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016958.P6469333164609731997

namespace A016958

/-- `record[(2*xor(n, -2)-n)²]` -/
def P6469333164609731997.Spec : Prop :=
  ∀ n, P6469333164609731997.a n = A016958 n

end A016958

/-! ## A016958.P1973735594539425814

`4*∑[a(n-1)+18]` with `a(0)=4, a(1)=21`
-/

namespace A016958.P1973735594539425814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 21] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016958.P1973735594539425814

namespace A016958

/-- `4*∑[a(n-1)+18]` -/
def P1973735594539425814.Spec : Prop :=
  ∀ n, (P1973735594539425814.a n : ℤ) = A016958 n

end A016958

/-! ## A016958.P13806235190477733449

`record[((n-2)*(n-2)%3)²]`
-/

namespace A016958.P13806235190477733449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * Int.tmod ((n : ℤ) - 2) 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016958.P13806235190477733449

namespace A016958

/-- `record[((n-2)*(n-2)%3)²]` -/
def P13806235190477733449.Spec : Prop :=
  ∀ n, P13806235190477733449.a n = A016958 n

end A016958

/-! ## A016958.P66615009569300339

`4*∑[ogf((4+13x+x^2)/(1-2x+x^2))]`
-/

namespace A016958.P66615009569300339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 13, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016958.P66615009569300339

namespace A016958

/-- `4*∑[ogf((4+13x+x^2)/(1-2x+x^2))]` -/
def P66615009569300339.Spec : Prop :=
  ∀ n, P66615009569300339.a n = A016958 n

end A016958

/-! ## A016958.P8314299169585381409

`lcm(2, (2*n-Δ[(2*n)²])²)`
-/

namespace A016958.P8314299169585381409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((2 * n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2)

end

end A016958.P8314299169585381409

namespace A016958

/-- `lcm(2, (2*n-Δ[(2*n)²])²)` -/
def P8314299169585381409.Spec : Prop :=
  ∀ n, (P8314299169585381409.a n : ℤ) = A016958 n

end A016958

/-! ## A016958.P15453895702067936113

`sqrt(A016960(n))`
-/

namespace A016958.P15453895702067936113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016960 n : ℝ)

end

end A016958.P15453895702067936113

namespace A016958

/-- `sqrt(A016960(n))` -/
def P15453895702067936113.Spec : Prop :=
  ∀ n, P15453895702067936113.a n = (A016958 n : ℝ)

end A016958

/-! ## A016958.P11233886947600254045

`A017618(n)/4`
-/

namespace A016958.P11233886947600254045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017618 n : ℚ) / 4

end

end A016958.P11233886947600254045

namespace A016958

/-- `A017618(n)/4` -/
def P11233886947600254045.Spec : Prop :=
  ∀ n, P11233886947600254045.a n = (A016958 n : ℚ)

theorem P11233886947600254045.correct : P11233886947600254045.Spec := by
  intro n
  simp only [A016958, Nat.add_sub_cancel, A016958.P11233886947600254045.a, A016958.P743767780414774553.a, A017618, A017618.P8158784063693686004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016958

/-! ## A016958.P17167316262181469979

`A085026(n)+9`
-/

namespace A016958.P17167316262181469979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085026 n + 9

end

end A016958.P17167316262181469979

namespace A016958

/-- `A085026(n)+9` -/
def P17167316262181469979.Spec : Prop :=
  ∀ n, P17167316262181469979.a n = A016958 n

theorem P17167316262181469979.correct : P17167316262181469979.Spec := by
  intro n
  simp only [A016958, Nat.add_sub_cancel, A016958.P17167316262181469979.a, A016958.P743767780414774553.a, A085026, A085026.P9623202091202696306.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016958

/-! ## A016958.P15033903548936412220

`sqrt(sqrt(A016964(n)))`
-/

namespace A016958.P15033903548936412220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016964 n : ℝ))

end

end A016958.P15033903548936412220

namespace A016958

/-- `sqrt(sqrt(A016964(n)))` -/
def P15033903548936412220.Spec : Prop :=
  ∀ n, P15033903548936412220.a n = (A016958 n : ℝ)

end A016958

/-! ## A016958.P10806917580204757148

`4*sqrt(A016792(n))`
-/

namespace A016958.P10806917580204757148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016792 n : ℝ)

end

end A016958.P10806917580204757148

namespace A016958

/-- `4*sqrt(A016792(n))` -/
def P10806917580204757148.Spec : Prop :=
  ∀ n, P10806917580204757148.a n = (A016958 n : ℝ)

end A016958

/-! ## A016958.P17538926969290020458

`sqrt(A017620(n))/4`
-/

namespace A016958.P17538926969290020458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017620 n : ℝ) / 4

end

end A016958.P17538926969290020458

namespace A016958

/-- `sqrt(A017620(n))/4` -/
def P17538926969290020458.Spec : Prop :=
  ∀ n, P17538926969290020458.a n = (A016958 n : ℝ)

end A016958

/-! ## A016958.P10043704227353981888

`A016962(n)^(1/3)`
-/

namespace A016958.P10043704227353981888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016962 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A016958.P10043704227353981888

namespace A016958

/-- `A016962(n)^(1/3)` -/
def P10043704227353981888.Spec : Prop :=
  ∀ n, P10043704227353981888.a n = (A016958 n : ℝ)

end A016958

/-! ## A016958.P8520641651404779714

`A016959(n)^(2/3)`
-/

namespace A016958.P8520641651404779714
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016959 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A016958.P8520641651404779714

namespace A016958

/-- `A016959(n)^(2/3)` -/
def P8520641651404779714.Spec : Prop :=
  ∀ n, P8520641651404779714.a n = (A016958 n : ℝ)

end A016958

/-!
# A016959: a(n) = (6*n + 4)^3.

The programs for A016959, the canonical program `A016959.P14858127207788600241` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016959 has offset 0).

The definition of A016959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^3` (program `A016959.P14858127207788600241`, by `A016959.P14858127207788600241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016959.P14858127207788600241

`(6*n+4)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016959

/-- `(6*n+4)^3` -/
def P14858127207788600241.Spec : Prop :=
  ∀ n, (P14858127207788600241.a n : ℤ) = A016959 n

theorem P14858127207788600241.correct : P14858127207788600241.Spec := by
  intro n
  simp only [A016959]

end A016959

/-! ## A016959.P17806389078554936844

`record[(lcm(4, n+1)-n)^3]`
-/

namespace A016959.P17806389078554936844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016959.P17806389078554936844

namespace A016959

/-- `record[(lcm(4, n+1)-n)^3]` -/
def P17806389078554936844.Spec : Prop :=
  ∀ n, P17806389078554936844.a n = A016959 n

end A016959

/-! ## A016959.P7130429541583815453

`record[(gcd(n+3, n-3)+n+1)^3]`
-/

namespace A016959.P7130429541583815453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) + (n + 1)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016959.P7130429541583815453

namespace A016959

/-- `record[(gcd(n+3, n-3)+n+1)^3]` -/
def P7130429541583815453.Spec : Prop :=
  ∀ n, (P7130429541583815453.a n : ℤ) = A016959 n

end A016959

/-! ## A016959.P7589184714155274955

`sqrt(A016962(n))`
-/

namespace A016959.P7589184714155274955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016962 n : ℝ)

end

end A016959.P7589184714155274955

namespace A016959

/-- `sqrt(A016962(n))` -/
def P7589184714155274955.Spec : Prop :=
  ∀ n, P7589184714155274955.a n = (A016959 n : ℝ)

end A016959

/-! ## A016959.P15163386177997174123

`8*A016791(n)`
-/

namespace A016959.P15163386177997174123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016791 n

end

end A016959.P15163386177997174123

namespace A016959

/-- `8*A016791(n)` -/
def P15163386177997174123.Spec : Prop :=
  ∀ n, P15163386177997174123.a n = A016959 n

theorem P15163386177997174123.correct : P15163386177997174123.Spec := by
  intro n
  simp only [A016959, Nat.add_sub_cancel, A016959.P15163386177997174123.a, A016959.P14858127207788600241.a, A016791, A016791.P13208806347124039064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016959

/-! ## A016959.P1868272437501369560

`A017619(n)/8`
-/

namespace A016959.P1868272437501369560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017619 n : ℚ) / 8

end

end A016959.P1868272437501369560

namespace A016959

/-- `A017619(n)/8` -/
def P1868272437501369560.Spec : Prop :=
  ∀ n, P1868272437501369560.a n = (A016959 n : ℚ)

theorem P1868272437501369560.correct : P1868272437501369560.Spec := by
  intro n
  simp only [A016959, Nat.add_sub_cancel, A016959.P1868272437501369560.a, A016959.P14858127207788600241.a, A017619, A017619.P1557982836546569315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016959

/-! ## A016959.P13518591036709297472

`sqrt(A016958(n)^3)`
-/

namespace A016959.P13518591036709297472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016958 n ^ 3 : ℝ)

end

end A016959.P13518591036709297472

namespace A016959

/-- `sqrt(A016958(n)^3)` -/
def P13518591036709297472.Spec : Prop :=
  ∀ n, P13518591036709297472.a n = (A016959 n : ℝ)

end A016959

/-! ## A016959.P8995844453283844338

`A016957(n)*A016958(n)`
-/

namespace A016959.P8995844453283844338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n * A016958 n

end

end A016959.P8995844453283844338

namespace A016959

/-- `A016957(n)*A016958(n)` -/
def P8995844453283844338.Spec : Prop :=
  ∀ n, P8995844453283844338.a n = A016959 n

theorem P8995844453283844338.correct : P8995844453283844338.Spec := by
  intro n
  simp only [A016959, Nat.add_sub_cancel, A016959.P8995844453283844338.a, A016959.P14858127207788600241.a, A016957, A016957.P9941618694539595759.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016959

/-! ## A016959.P9893979953804955593

`A016960(n)/A016957(n)`
-/

namespace A016959.P9893979953804955593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016960 n : ℚ) / (A016957 n : ℚ)

end

end A016959.P9893979953804955593

namespace A016959

/-- `A016960(n)/A016957(n)` -/
def P9893979953804955593.Spec : Prop :=
  ∀ n, P9893979953804955593.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P9422392008945585484

`A016961(n)/A016958(n)`
-/

namespace A016959.P9422392008945585484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016961 n : ℚ) / (A016958 n : ℚ)

end

end A016959.P9422392008945585484

namespace A016959

/-- `A016961(n)/A016958(n)` -/
def P9422392008945585484.Spec : Prop :=
  ∀ n, P9422392008945585484.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P11436137232985539140

`A016963(n)/A016960(n)`
-/

namespace A016959.P11436137232985539140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 n : ℚ) / (A016960 n : ℚ)

end

end A016959.P11436137232985539140

namespace A016959

/-- `A016963(n)/A016960(n)` -/
def P11436137232985539140.Spec : Prop :=
  ∀ n, P11436137232985539140.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P10935566730131357410

`A016964(n)/A016961(n)`
-/

namespace A016959.P10935566730131357410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016964 n : ℚ) / (A016961 n : ℚ)

end

end A016959.P10935566730131357410

namespace A016959

/-- `A016964(n)/A016961(n)` -/
def P10935566730131357410.Spec : Prop :=
  ∀ n, P10935566730131357410.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P2414260306482243759

`A016965(n)/A016962(n)`
-/

namespace A016959.P2414260306482243759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 n : ℚ) / (A016962 n : ℚ)

end

end A016959.P2414260306482243759

namespace A016959

/-- `A016965(n)/A016962(n)` -/
def P2414260306482243759.Spec : Prop :=
  ∀ n, P2414260306482243759.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P4617579990991103646

`A016966(n)/A016963(n)`
-/

namespace A016959.P4617579990991103646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016966 n : ℚ) / (A016963 n : ℚ)

end

end A016959.P4617579990991103646

namespace A016959

/-- `A016966(n)/A016963(n)` -/
def P4617579990991103646.Spec : Prop :=
  ∀ n, P4617579990991103646.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P1560332014550472163

`A016967(n)/A016964(n)`
-/

namespace A016959.P1560332014550472163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016967 n : ℚ) / (A016964 n : ℚ)

end

end A016959.P1560332014550472163

namespace A016959

/-- `A016967(n)/A016964(n)` -/
def P1560332014550472163.Spec : Prop :=
  ∀ n, P1560332014550472163.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P17690512735370733476

`∪[A017571(n), A017643(n)]`
-/

namespace A016959.P17690512735370733476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017571 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016959.P17690512735370733476

namespace A016959

/-- `∪[A017571(n), A017643(n)]` -/
def P17690512735370733476.Spec : Prop :=
  ∀ n, (P17690512735370733476.a n : ℤ) = A016959 n

end A016959

/-! ## A016959.P3486383603165139186

`A016960(n)²/A016961(n)`
-/

namespace A016959.P3486383603165139186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016960 n ^ 2 : ℚ) / (A016961 n : ℚ)

end

end A016959.P3486383603165139186

namespace A016959

/-- `A016960(n)²/A016961(n)` -/
def P3486383603165139186.Spec : Prop :=
  ∀ n, P3486383603165139186.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P9701340253396338301

`A016961(n)/A016957(n)²`
-/

namespace A016959.P9701340253396338301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016961 n : ℚ) / (A016957 n ^ 2 : ℚ)

end

end A016959.P9701340253396338301

namespace A016959

/-- `A016961(n)/A016957(n)²` -/
def P9701340253396338301.Spec : Prop :=
  ∀ n, P9701340253396338301.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P139713309017963251

`A016961(n)²/A016963(n)`
-/

namespace A016959.P139713309017963251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016961 n ^ 2 : ℚ) / (A016963 n : ℚ)

end

end A016959.P139713309017963251

namespace A016959

/-- `A016961(n)²/A016963(n)` -/
def P139713309017963251.Spec : Prop :=
  ∀ n, P139713309017963251.a n = (A016959 n : ℚ)

end A016959

/-! ## A016959.P14627973701592064604

`A016963(n)/A016958(n)²`
-/

namespace A016959.P14627973701592064604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 n : ℚ) / (A016958 n ^ 2 : ℚ)

end

end A016959.P14627973701592064604

namespace A016959

/-- `A016963(n)/A016958(n)²` -/
def P14627973701592064604.Spec : Prop :=
  ∀ n, P14627973701592064604.a n = (A016959 n : ℚ)

end A016959

/-!
# A016960: a(n) = (6*n + 4)^4.

The programs for A016960, the canonical program `A016960.P14442042451729592915` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016960 has offset 0).

The definition of A016960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^4` (program `A016960.P14442042451729592915`, by `A016960.P14442042451729592915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016960.P14442042451729592915

`(6*n+4)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016960

/-- `(6*n+4)^4` -/
def P14442042451729592915.Spec : Prop :=
  ∀ n, (P14442042451729592915.a n : ℤ) = A016960 n

theorem P14442042451729592915.correct : P14442042451729592915.Spec := by
  intro n
  simp only [A016960]

end A016960

/-! ## A016960.P2157389763187200192

`A016958(n)²`
-/

namespace A016960.P2157389763187200192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n ^ 2

end

end A016960.P2157389763187200192

namespace A016960

/-- `A016958(n)²` -/
def P2157389763187200192.Spec : Prop :=
  ∀ n, P2157389763187200192.a n = A016960 n

theorem P2157389763187200192.correct : P2157389763187200192.Spec := by
  intro n
  simp only [A016960, Nat.add_sub_cancel, A016960.P2157389763187200192.a, A016960.P14442042451729592915.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016960

/-! ## A016960.P11271698339810271255

`16*A016792(n)`
-/

namespace A016960.P11271698339810271255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016792 n

end

end A016960.P11271698339810271255

namespace A016960

/-- `16*A016792(n)` -/
def P11271698339810271255.Spec : Prop :=
  ∀ n, P11271698339810271255.a n = A016960 n

theorem P11271698339810271255.correct : P11271698339810271255.Spec := by
  intro n
  simp only [A016960, Nat.add_sub_cancel, A016960.P11271698339810271255.a, A016960.P14442042451729592915.a, A016792, A016792.P16426647478479500699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016960

/-! ## A016960.P10591916603068628983

`xor(1, -(6*n+3))²²`
-/

namespace A016960.P10591916603068628983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (-(6 * n + 3 : ℤ)) ^ 2) ^ 2

end

end A016960.P10591916603068628983

namespace A016960

/-- `xor(1, -(6*n+3))²²` -/
def P10591916603068628983.Spec : Prop :=
  ∀ n, P10591916603068628983.a n = A016960 n

end A016960

/-! ## A016960.P2453711122950603909

`record[(lcm(4, n+1)-n)^4]`
-/

namespace A016960.P2453711122950603909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016960.P2453711122950603909

namespace A016960

/-- `record[(lcm(4, n+1)-n)^4]` -/
def P2453711122950603909.Spec : Prop :=
  ∀ n, P2453711122950603909.a n = A016960 n

end A016960

/-! ## A016960.P10256055440438921538

`ceil(3/acot(2*n+1))²²`
-/

namespace A016960.P10256055440438921538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈3 / SequenceMachineLib.acot (2 * n + 1 : ℝ)⌉ ^ 2) ^ 2

end

end A016960.P10256055440438921538

namespace A016960

/-- `ceil(3/acot(2*n+1))²²` -/
def P10256055440438921538.Spec : Prop :=
  ∀ n, P10256055440438921538.a n = A016960 n

end A016960

/-! ## A016960.P11877596774172052699

`record[(2*xor(1, n)+n+2)²²]`
-/

namespace A016960.P11877596774172052699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.xor 1 n + (n + 2)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016960.P11877596774172052699

namespace A016960

/-- `record[(2*xor(1, n)+n+2)²²]` -/
def P11877596774172052699.Spec : Prop :=
  ∀ n, (P11877596774172052699.a n : ℤ) = A016960 n

end A016960

/-! ## A016960.P17711290979101479860

`Δ[lcm(n, 2*n+1+n)]²²`
-/

namespace A016960.P17711290979101479860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016960.P17711290979101479860

namespace A016960

/-- `Δ[lcm(n, 2*n+1+n)]²²` -/
def P17711290979101479860.Spec : Prop :=
  ∀ n, P17711290979101479860.a n = A016960 n

end A016960

/-! ## A016960.P4448240208575491158

`(2*(lcm(2, 2*n+1)-n))²²`
-/

namespace A016960.P4448240208575491158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * ((Nat.lcm 2 (2 * n + 1) : ℤ) - (n : ℤ))) ^ 2) ^ 2

end

end A016960.P4448240208575491158

namespace A016960

/-- `(2*(lcm(2, 2*n+1)-n))²²` -/
def P4448240208575491158.Spec : Prop :=
  ∀ n, P4448240208575491158.a n = A016960 n

end A016960

/-! ## A016960.P12590450666353314672

`Δ[C(2*n+1, 2)+n²]²²`
-/

namespace A016960.P12590450666353314672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A016960.P12590450666353314672

namespace A016960

/-- `Δ[C(2*n+1, 2)+n²]²²` -/
def P12590450666353314672.Spec : Prop :=
  ∀ n, P12590450666353314672.a n = A016960 n

theorem P12590450666353314672.correct : P12590450666353314672.Spec := by
  intro n
  simp only [A016960, Nat.add_sub_cancel, A016960.P12590450666353314672.f1, A016960.P12590450666353314672.a, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016960

/-! ## A016960.P14594477836669315649

`record[(gcd(n+3, n-3)+n+1)^4]`
-/

namespace A016960.P14594477836669315649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) + (n + 1)) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016960.P14594477836669315649

namespace A016960

/-- `record[(gcd(n+3, n-3)+n+1)^4]` -/
def P14594477836669315649.Spec : Prop :=
  ∀ n, (P14594477836669315649.a n : ℤ) = A016960 n

end A016960

/-! ## A016960.P16016535653327091244

`(2*(C(n+1, n)+2*n+1))²²`
-/

namespace A016960.P16016535653327091244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.choose (n + 1) n + (2 * n + 1))) ^ 2) ^ 2

end

end A016960.P16016535653327091244

namespace A016960

/-- `(2*(C(n+1, n)+2*n+1))²²` -/
def P16016535653327091244.Spec : Prop :=
  ∀ n, (P16016535653327091244.a n : ℤ) = A016960 n

theorem P16016535653327091244.correct : P16016535653327091244.Spec := by
  intro n
  simp only [A016960, Nat.add_sub_cancel, A016960.P16016535653327091244.a, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016960

/-! ## A016960.P15119890178746851526

`(2*(and(2*n+1, 2*n)+n+2))²²`
-/

namespace A016960.P15119890178746851526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.land (2 * n + 1) (2 * n) + (n + 2))) ^ 2) ^ 2

end

end A016960.P15119890178746851526

namespace A016960

/-- `(2*(and(2*n+1, 2*n)+n+2))²²` -/
def P15119890178746851526.Spec : Prop :=
  ∀ n, (P15119890178746851526.a n : ℤ) = A016960 n

end A016960

/-! ## A016960.P6082817271829000275

`sqrt(A016964(n))`
-/

namespace A016960.P6082817271829000275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016964 n : ℝ)

end

end A016960.P6082817271829000275

namespace A016960

/-- `sqrt(A016964(n))` -/
def P6082817271829000275.Spec : Prop :=
  ∀ n, P6082817271829000275.a n = (A016960 n : ℝ)

end A016960

/-! ## A016960.P2447274360910282054

`A016957(n)²²`
-/

namespace A016960.P2447274360910282054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016957 n ^ 2) ^ 2

end

end A016960.P2447274360910282054

namespace A016960

/-- `A016957(n)²²` -/
def P2447274360910282054.Spec : Prop :=
  ∀ n, P2447274360910282054.a n = A016960 n

theorem P2447274360910282054.correct : P2447274360910282054.Spec := by
  intro n
  simp only [A016960, Nat.add_sub_cancel, A016960.P2447274360910282054.a, A016960.P14442042451729592915.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016960

/-! ## A016960.P8109680780822690593

`(A017618(n)/4)²`
-/

namespace A016960.P8109680780822690593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017618 n : ℚ) / 4) ^ 2

end

end A016960.P8109680780822690593

namespace A016960

/-- `(A017618(n)/4)²` -/
def P8109680780822690593.Spec : Prop :=
  ∀ n, P8109680780822690593.a n = (A016960 n : ℚ)

theorem P8109680780822690593.correct : P8109680780822690593.Spec := by
  intro n
  simp only [A016960, Nat.add_sub_cancel, A016960.P8109680780822690593.a, A016960.P14442042451729592915.a, A017618, A017618.P8158784063693686004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016960

/-! ## A016960.P16065707425228025575

`(A016945(n)+1)²²`
-/

namespace A016960.P16065707425228025575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016945 n + 1) ^ 2) ^ 2

end

end A016960.P16065707425228025575

namespace A016960

/-- `(A016945(n)+1)²²` -/
def P16065707425228025575.Spec : Prop :=
  ∀ n, P16065707425228025575.a n = A016960 n

theorem P16065707425228025575.correct : P16065707425228025575.Spec := by
  intro n
  simp only [A016960, Nat.add_sub_cancel, A016960.P16065707425228025575.a, A016960.P14442042451729592915.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016960

/-! ## A016960.P1652282480560722323

`(A016933(n)+2)²²`
-/

namespace A016960.P1652282480560722323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016933 n + 2) ^ 2) ^ 2

end

end A016960.P1652282480560722323

namespace A016960

/-- `(A016933(n)+2)²²` -/
def P1652282480560722323.Spec : Prop :=
  ∀ n, P1652282480560722323.a n = A016960 n

theorem P1652282480560722323.correct : P1652282480560722323.Spec := by
  intro n
  simp only [A016960, Nat.add_sub_cancel, A016960.P1652282480560722323.a, A016960.P14442042451729592915.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016960

/-!
# A016961: a(n) = (6*n + 4)^5.

The programs for A016961, the canonical program `A016961.P3953090399951261462` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016961 has offset 0).

The definition of A016961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^5` (program `A016961.P3953090399951261462`, by `A016961.P3953090399951261462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016961.P3953090399951261462

`(6*n+4)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016961

/-- `(6*n+4)^5` -/
def P3953090399951261462.Spec : Prop :=
  ∀ n, (P3953090399951261462.a n : ℤ) = A016961 n

theorem P3953090399951261462.correct : P3953090399951261462.Spec := by
  intro n
  simp only [A016961]

end A016961

/-! ## A016961.P12666104010799727668

`32*A016793(n)`
-/

namespace A016961.P12666104010799727668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016793 n

end

end A016961.P12666104010799727668

namespace A016961

/-- `32*A016793(n)` -/
def P12666104010799727668.Spec : Prop :=
  ∀ n, P12666104010799727668.a n = A016961 n

theorem P12666104010799727668.correct : P12666104010799727668.Spec := by
  intro n
  simp only [A016961, Nat.add_sub_cancel, A016961.P12666104010799727668.a, A016961.P3953090399951261462.a, A016793, A016793.P7571111589597192072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016961

/-! ## A016961.P6000634892386327793

`record[(lcm(4, n+1)-n)^5]`
-/

namespace A016961.P6000634892386327793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - (n : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016961.P6000634892386327793

namespace A016961

/-- `record[(lcm(4, n+1)-n)^5]` -/
def P6000634892386327793.Spec : Prop :=
  ∀ n, P6000634892386327793.a n = A016961 n

end A016961

/-! ## A016961.P14164293512276992908

`record[(gcd(n+3, n-3)+n+1)^5]`
-/

namespace A016961.P14164293512276992908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) + (n + 1)) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016961.P14164293512276992908

namespace A016961

/-- `record[(gcd(n+3, n-3)+n+1)^5]` -/
def P14164293512276992908.Spec : Prop :=
  ∀ n, (P14164293512276992908.a n : ℤ) = A016961 n

end A016961

/-! ## A016961.P978180804112041698

`sqrt(A016966(n))`
-/

namespace A016961.P978180804112041698
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016966 n : ℝ)

end

end A016961.P978180804112041698

namespace A016961

/-- `sqrt(A016966(n))` -/
def P978180804112041698.Spec : Prop :=
  ∀ n, P978180804112041698.a n = (A016961 n : ℝ)

end A016961

/-! ## A016961.P7302278614779364790

`sqrt(A016958(n)^5)`
-/

namespace A016961.P7302278614779364790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016958 n ^ 5 : ℝ)

end

end A016961.P7302278614779364790

namespace A016961

/-- `sqrt(A016958(n)^5)` -/
def P7302278614779364790.Spec : Prop :=
  ∀ n, P7302278614779364790.a n = (A016961 n : ℝ)

end A016961

/-! ## A016961.P15307538427112165507

`A016957(n)*A016960(n)`
-/

namespace A016961.P15307538427112165507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n * A016960 n

end

end A016961.P15307538427112165507

namespace A016961

/-- `A016957(n)*A016960(n)` -/
def P15307538427112165507.Spec : Prop :=
  ∀ n, P15307538427112165507.a n = A016961 n

theorem P15307538427112165507.correct : P15307538427112165507.Spec := by
  intro n
  simp only [A016961, Nat.add_sub_cancel, A016961.P15307538427112165507.a, A016961.P3953090399951261462.a, A016957, A016957.P9941618694539595759.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016961

/-! ## A016961.P2870607950296153564

`A016958(n)*A016959(n)`
-/

namespace A016961.P2870607950296153564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n * A016959 n

end

end A016961.P2870607950296153564

namespace A016961

/-- `A016958(n)*A016959(n)` -/
def P2870607950296153564.Spec : Prop :=
  ∀ n, P2870607950296153564.a n = A016961 n

theorem P2870607950296153564.correct : P2870607950296153564.Spec := by
  intro n
  simp only [A016961, Nat.add_sub_cancel, A016961.P2870607950296153564.a, A016961.P3953090399951261462.a, A016958, A016958.P743767780414774553.a, A016959, A016959.P14858127207788600241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016961

/-! ## A016961.P2724152468007679747

`A016962(n)/A016957(n)`
-/

namespace A016961.P2724152468007679747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016962 n : ℚ) / (A016957 n : ℚ)

end

end A016961.P2724152468007679747

namespace A016961

/-- `A016962(n)/A016957(n)` -/
def P2724152468007679747.Spec : Prop :=
  ∀ n, P2724152468007679747.a n = (A016961 n : ℚ)

end A016961

/-! ## A016961.P12390314318527829549

`A016963(n)/A016958(n)`
-/

namespace A016961.P12390314318527829549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 n : ℚ) / (A016958 n : ℚ)

end

end A016961.P12390314318527829549

namespace A016961

/-- `A016963(n)/A016958(n)` -/
def P12390314318527829549.Spec : Prop :=
  ∀ n, P12390314318527829549.a n = (A016961 n : ℚ)

end A016961

/-! ## A016961.P7221677031164450336

`A016964(n)/A016959(n)`
-/

namespace A016961.P7221677031164450336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016964 n : ℚ) / (A016959 n : ℚ)

end

end A016961.P7221677031164450336

namespace A016961

/-- `A016964(n)/A016959(n)` -/
def P7221677031164450336.Spec : Prop :=
  ∀ n, P7221677031164450336.a n = (A016961 n : ℚ)

end A016961

/-! ## A016961.P3157653957553966581

`A016965(n)/A016960(n)`
-/

namespace A016961.P3157653957553966581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 n : ℚ) / (A016960 n : ℚ)

end

end A016961.P3157653957553966581

namespace A016961

/-- `A016965(n)/A016960(n)` -/
def P3157653957553966581.Spec : Prop :=
  ∀ n, P3157653957553966581.a n = (A016961 n : ℚ)

end A016961

/-! ## A016961.P13470682018825897135

`A016967(n)/A016962(n)`
-/

namespace A016961.P13470682018825897135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016967 n : ℚ) / (A016962 n : ℚ)

end

end A016961.P13470682018825897135

namespace A016961

/-- `A016967(n)/A016962(n)` -/
def P13470682018825897135.Spec : Prop :=
  ∀ n, P13470682018825897135.a n = (A016961 n : ℚ)

end A016961

/-! ## A016961.P2796069274938061032

`∪[A017573(n), A017645(n)]`
-/

namespace A016961.P2796069274938061032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016961.P2796069274938061032

namespace A016961

/-- `∪[A017573(n), A017645(n)]` -/
def P2796069274938061032.Spec : Prop :=
  ∀ n, (P2796069274938061032.a n : ℤ) = A016961 n

end A016961

/-! ## A016961.P6917653538906648791

`A016957(n)²*A016959(n)`
-/

namespace A016961.P6917653538906648791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n ^ 2 * A016959 n

end

end A016961.P6917653538906648791

namespace A016961

/-- `A016957(n)²*A016959(n)` -/
def P6917653538906648791.Spec : Prop :=
  ∀ n, P6917653538906648791.a n = A016961 n

theorem P6917653538906648791.correct : P6917653538906648791.Spec := by
  intro n
  simp only [A016961, Nat.add_sub_cancel, A016961.P6917653538906648791.a, A016961.P3953090399951261462.a, A016957, A016957.P9941618694539595759.a, A016959, A016959.P14858127207788600241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016961

/-! ## A016961.P6677728657652255682

`A016958(n)²*A016957(n)`
-/

namespace A016961.P6677728657652255682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n ^ 2 * A016957 n

end

end A016961.P6677728657652255682

namespace A016961

/-- `A016958(n)²*A016957(n)` -/
def P6677728657652255682.Spec : Prop :=
  ∀ n, P6677728657652255682.a n = A016961 n

theorem P6677728657652255682.correct : P6677728657652255682.Spec := by
  intro n
  simp only [A016961, Nat.add_sub_cancel, A016961.P6677728657652255682.a, A016961.P3953090399951261462.a, A016957, A016957.P9941618694539595759.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016961

/-! ## A016961.P11243000958613293953

`A016960(n)²/A016959(n)`
-/

namespace A016961.P11243000958613293953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016960 n ^ 2 : ℚ) / (A016959 n : ℚ)

end

end A016961.P11243000958613293953

namespace A016961

/-- `A016960(n)²/A016959(n)` -/
def P11243000958613293953.Spec : Prop :=
  ∀ n, P11243000958613293953.a n = (A016961 n : ℚ)

end A016961

/-! ## A016961.P66630909514147633

`A016963(n)/A016957(n)²`
-/

namespace A016961.P66630909514147633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 n : ℚ) / (A016957 n ^ 2 : ℚ)

end

end A016961.P66630909514147633

namespace A016961

/-- `A016963(n)/A016957(n)²` -/
def P66630909514147633.Spec : Prop :=
  ∀ n, P66630909514147633.a n = (A016961 n : ℚ)

end A016961

/-! ## A016961.P5042239684647941669

`A016965(n)/A016958(n)²`
-/

namespace A016961.P5042239684647941669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 n : ℚ) / (A016958 n ^ 2 : ℚ)

end

end A016961.P5042239684647941669

namespace A016961

/-- `A016965(n)/A016958(n)²` -/
def P5042239684647941669.Spec : Prop :=
  ∀ n, P5042239684647941669.a n = (A016961 n : ℚ)

end A016961

/-! ## A016961.P14268492671968659546

`A016967(n)/A016959(n)²`
-/

namespace A016961.P14268492671968659546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016967 n : ℚ) / (A016959 n ^ 2 : ℚ)

end

end A016961.P14268492671968659546

namespace A016961

/-- `A016967(n)/A016959(n)²` -/
def P14268492671968659546.Spec : Prop :=
  ∀ n, P14268492671968659546.a n = (A016961 n : ℚ)

end A016961

/-!
# A016962: a(n) = (6*n + 4)^6.

The programs for A016962, the canonical program `A016962.P16474642828663356160` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016962 has offset 0).

The definition of A016962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^6` (program `A016962.P16474642828663356160`, by `A016962.P16474642828663356160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016962.P16474642828663356160

`(6*n+4)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016962

/-- `(6*n+4)^6` -/
def P16474642828663356160.Spec : Prop :=
  ∀ n, (P16474642828663356160.a n : ℤ) = A016962 n

theorem P16474642828663356160.correct : P16474642828663356160.Spec := by
  intro n
  simp only [A016962]

end A016962

/-! ## A016962.P14093533096744703543

`A016959(n)²`
-/

namespace A016962.P14093533096744703543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 n ^ 2

end

end A016962.P14093533096744703543

namespace A016962

/-- `A016959(n)²` -/
def P14093533096744703543.Spec : Prop :=
  ∀ n, P14093533096744703543.a n = A016962 n

theorem P14093533096744703543.correct : P14093533096744703543.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P14093533096744703543.a, A016962.P16474642828663356160.a, A016959, A016959.P14858127207788600241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P514546342889919180

`64*A016794(n)`
-/

namespace A016962.P514546342889919180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016794 n

end

end A016962.P514546342889919180

namespace A016962

/-- `64*A016794(n)` -/
def P514546342889919180.Spec : Prop :=
  ∀ n, P514546342889919180.a n = A016962 n

theorem P514546342889919180.correct : P514546342889919180.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P514546342889919180.a, A016962.P16474642828663356160.a, A016794, A016794.P16688178066975936005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P346924408028602982

`(8*A016791(n))²`
-/

namespace A016962.P346924408028602982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A016791 n) ^ 2

end

end A016962.P346924408028602982

namespace A016962

/-- `(8*A016791(n))²` -/
def P346924408028602982.Spec : Prop :=
  ∀ n, P346924408028602982.a n = A016962 n

theorem P346924408028602982.correct : P346924408028602982.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P346924408028602982.a, A016962.P16474642828663356160.a, A016791, A016791.P13208806347124039064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P778545268432722524

`(A017619(n)/8)²`
-/

namespace A016962.P778545268432722524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017619 n : ℚ) / 8) ^ 2

end

end A016962.P778545268432722524

namespace A016962

/-- `(A017619(n)/8)²` -/
def P778545268432722524.Spec : Prop :=
  ∀ n, P778545268432722524.a n = (A016962 n : ℚ)

theorem P778545268432722524.correct : P778545268432722524.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P778545268432722524.a, A016962.P16474642828663356160.a, A017619, A017619.P1557982836546569315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P4568045703058548102

`sqrt(A016960(n)^3)`
-/

namespace A016962.P4568045703058548102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016960 n ^ 3 : ℝ)

end

end A016962.P4568045703058548102

namespace A016962

/-- `sqrt(A016960(n)^3)` -/
def P4568045703058548102.Spec : Prop :=
  ∀ n, P4568045703058548102.a n = (A016962 n : ℝ)

end A016962

/-! ## A016962.P17555169439583218669

`lcm(8, (A016945(n)+1)^6)`
-/

namespace A016962.P17555169439583218669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 ((A016945 n + 1) ^ 6)

end

end A016962.P17555169439583218669

namespace A016962

/-- `lcm(8, (A016945(n)+1)^6)` -/
def P17555169439583218669.Spec : Prop :=
  ∀ n, (P17555169439583218669.a n : ℤ) = A016962 n

end A016962

/-! ## A016962.P9421162124114555151

`A016957(n)*A016961(n)`
-/

namespace A016962.P9421162124114555151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n * A016961 n

end

end A016962.P9421162124114555151

namespace A016962

/-- `A016957(n)*A016961(n)` -/
def P9421162124114555151.Spec : Prop :=
  ∀ n, P9421162124114555151.a n = A016962 n

theorem P9421162124114555151.correct : P9421162124114555151.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P9421162124114555151.a, A016962.P16474642828663356160.a, A016957, A016957.P9941618694539595759.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P9998977399503453303

`A016958(n)*A016960(n)`
-/

namespace A016962.P9998977399503453303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n * A016960 n

end

end A016962.P9998977399503453303

namespace A016962

/-- `A016958(n)*A016960(n)` -/
def P9998977399503453303.Spec : Prop :=
  ∀ n, P9998977399503453303.a n = A016962 n

theorem P9998977399503453303.correct : P9998977399503453303.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P9998977399503453303.a, A016962.P16474642828663356160.a, A016958, A016958.P743767780414774553.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P12378136721090833319

`A016791(n)*A017619(n)`
-/

namespace A016962.P12378136721090833319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n * A017619 n

end

end A016962.P12378136721090833319

namespace A016962

/-- `A016791(n)*A017619(n)` -/
def P12378136721090833319.Spec : Prop :=
  ∀ n, P12378136721090833319.a n = A016962 n

theorem P12378136721090833319.correct : P12378136721090833319.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P12378136721090833319.a, A016962.P16474642828663356160.a, A016791, A016791.P13208806347124039064.a, A017619, A017619.P1557982836546569315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P5265085260006624523

`A016963(n)/A016957(n)`
-/

namespace A016962.P5265085260006624523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 n : ℚ) / (A016957 n : ℚ)

end

end A016962.P5265085260006624523

namespace A016962

/-- `A016963(n)/A016957(n)` -/
def P5265085260006624523.Spec : Prop :=
  ∀ n, P5265085260006624523.a n = (A016962 n : ℚ)

end A016962

/-! ## A016962.P11927967296070467990

`A016964(n)/A016958(n)`
-/

namespace A016962.P11927967296070467990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016964 n : ℚ) / (A016958 n : ℚ)

end

end A016962.P11927967296070467990

namespace A016962

/-- `A016964(n)/A016958(n)` -/
def P11927967296070467990.Spec : Prop :=
  ∀ n, P11927967296070467990.a n = (A016962 n : ℚ)

end A016962

/-! ## A016962.P14428089455317155594

`A016965(n)/A016959(n)`
-/

namespace A016962.P14428089455317155594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 n : ℚ) / (A016959 n : ℚ)

end

end A016962.P14428089455317155594

namespace A016962

/-- `A016965(n)/A016959(n)` -/
def P14428089455317155594.Spec : Prop :=
  ∀ n, P14428089455317155594.a n = (A016962 n : ℚ)

end A016962

/-! ## A016962.P12853618623048376236

`A016966(n)/A016960(n)`
-/

namespace A016962.P12853618623048376236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016966 n : ℚ) / (A016960 n : ℚ)

end

end A016962.P12853618623048376236

namespace A016962

/-- `A016966(n)/A016960(n)` -/
def P12853618623048376236.Spec : Prop :=
  ∀ n, P12853618623048376236.a n = (A016962 n : ℚ)

end A016962

/-! ## A016962.P17720349412154262639

`A016967(n)/A016961(n)`
-/

namespace A016962.P17720349412154262639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016967 n : ℚ) / (A016961 n : ℚ)

end

end A016962.P17720349412154262639

namespace A016962

/-- `A016967(n)/A016961(n)` -/
def P17720349412154262639.Spec : Prop :=
  ∀ n, P17720349412154262639.a n = (A016962 n : ℚ)

end A016962

/-! ## A016962.P16613666330412606678

`∪[A017574(n), A017646(n)]`
-/

namespace A016962.P16613666330412606678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016962.P16613666330412606678

namespace A016962

/-- `∪[A017574(n), A017646(n)]` -/
def P16613666330412606678.Spec : Prop :=
  ∀ n, (P16613666330412606678.a n : ℤ) = A016962 n

end A016962

/-! ## A016962.P5962694275771484777

`(A016957(n)*A016958(n))²`
-/

namespace A016962.P5962694275771484777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016957 n * A016958 n) ^ 2

end

end A016962.P5962694275771484777

namespace A016962

/-- `(A016957(n)*A016958(n))²` -/
def P5962694275771484777.Spec : Prop :=
  ∀ n, P5962694275771484777.a n = A016962 n

theorem P5962694275771484777.correct : P5962694275771484777.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P5962694275771484777.a, A016962.P16474642828663356160.a, A016957, A016957.P9941618694539595759.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P6272287891465953803

`A016957(n)²*A016960(n)`
-/

namespace A016962.P6272287891465953803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n ^ 2 * A016960 n

end

end A016962.P6272287891465953803

namespace A016962

/-- `A016957(n)²*A016960(n)` -/
def P6272287891465953803.Spec : Prop :=
  ∀ n, P6272287891465953803.a n = A016962 n

theorem P6272287891465953803.correct : P6272287891465953803.Spec := by
  intro n
  simp only [A016962, Nat.add_sub_cancel, A016962.P6272287891465953803.a, A016962.P16474642828663356160.a, A016957, A016957.P9941618694539595759.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016962

/-! ## A016962.P4172281646546630840

`(A016961(n)/A016958(n))²`
-/

namespace A016962.P4172281646546630840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016961 n : ℚ) / (A016958 n : ℚ)) ^ 2

end

end A016962.P4172281646546630840

namespace A016962

/-- `(A016961(n)/A016958(n))²` -/
def P4172281646546630840.Spec : Prop :=
  ∀ n, P4172281646546630840.a n = (A016962 n : ℚ)

end A016962

/-!
# A016963: a(n) = (6*n + 4)^7.

The programs for A016963, the canonical program `A016963.P2568350781963201980` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016963 has offset 0).

The definition of A016963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^7` (program `A016963.P2568350781963201980`, by `A016963.P2568350781963201980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016963.P2568350781963201980

`(6*n+4)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016963

/-- `(6*n+4)^7` -/
def P2568350781963201980.Spec : Prop :=
  ∀ n, (P2568350781963201980.a n : ℤ) = A016963 n

theorem P2568350781963201980.correct : P2568350781963201980.Spec := by
  intro n
  simp only [A016963]

end A016963

/-! ## A016963.P8062350173809775183

`abs((A016969(n)-1)^7)`
-/

namespace A016963.P8062350173809775183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016969 n - 1) ^ 7|

end

end A016963.P8062350173809775183

namespace A016963

/-- `abs((A016969(n)-1)^7)` -/
def P8062350173809775183.Spec : Prop :=
  ∀ n, P8062350173809775183.a n = A016963 n

end A016963

/-! ## A016963.P10466261518537416330

`(6*n+4)*A016962(n)`
-/

namespace A016963.P10466261518537416330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) * A016962 n

end

end A016963.P10466261518537416330

namespace A016963

/-- `(6*n+4)*A016962(n)` -/
def P10466261518537416330.Spec : Prop :=
  ∀ n, P10466261518537416330.a n = A016963 n

theorem P10466261518537416330.correct : P10466261518537416330.Spec := by
  intro n
  simp only [A016963, Nat.add_sub_cancel, A016963.P10466261518537416330.a, A016963.P2568350781963201980.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016963

/-! ## A016963.P5667382498735104283

`(6*n+4)²*A016961(n)`
-/

namespace A016963.P5667382498735104283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 4) ^ 2 : ℤ) * A016961 n

end

end A016963.P5667382498735104283

namespace A016963

/-- `(6*n+4)²*A016961(n)` -/
def P5667382498735104283.Spec : Prop :=
  ∀ n, P5667382498735104283.a n = A016963 n

theorem P5667382498735104283.correct : P5667382498735104283.Spec := by
  intro n
  simp only [A016963, Nat.add_sub_cancel, A016963.P5667382498735104283.a, A016963.P2568350781963201980.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016963

/-! ## A016963.P307724938510881575

`A016959(n)*A016960(n)`
-/

namespace A016963.P307724938510881575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 n * A016960 n

end

end A016963.P307724938510881575

namespace A016963

/-- `A016959(n)*A016960(n)` -/
def P307724938510881575.Spec : Prop :=
  ∀ n, P307724938510881575.a n = A016963 n

theorem P307724938510881575.correct : P307724938510881575.Spec := by
  intro n
  simp only [A016963, Nat.add_sub_cancel, A016963.P307724938510881575.a, A016963.P2568350781963201980.a, A016959, A016959.P14858127207788600241.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016963

/-! ## A016963.P15991561760496285026

`A016964(n)/A016957(n)`
-/

namespace A016963.P15991561760496285026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016964 n : ℚ) / (A016957 n : ℚ)

end

end A016963.P15991561760496285026

namespace A016963

/-- `A016964(n)/A016957(n)` -/
def P15991561760496285026.Spec : Prop :=
  ∀ n, P15991561760496285026.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P46575542783722801

`A016965(n)/A016958(n)`
-/

namespace A016963.P46575542783722801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 n : ℚ) / (A016958 n : ℚ)

end

end A016963.P46575542783722801

namespace A016963

/-- `A016965(n)/A016958(n)` -/
def P46575542783722801.Spec : Prop :=
  ∀ n, P46575542783722801.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P11793266825204601664

`A016966(n)/A016959(n)`
-/

namespace A016963.P11793266825204601664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016966 n : ℚ) / (A016959 n : ℚ)

end

end A016963.P11793266825204601664

namespace A016963

/-- `A016966(n)/A016959(n)` -/
def P11793266825204601664.Spec : Prop :=
  ∀ n, P11793266825204601664.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P4964968813299502952

`A016967(n)/A016960(n)`
-/

namespace A016963.P4964968813299502952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016967 n : ℚ) / (A016960 n : ℚ)

end

end A016963.P4964968813299502952

namespace A016963

/-- `A016967(n)/A016960(n)` -/
def P4964968813299502952.Spec : Prop :=
  ∀ n, P4964968813299502952.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P16634822250479187808

`A016958(n)²*A016959(n)`
-/

namespace A016963.P16634822250479187808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n ^ 2 * A016959 n

end

end A016963.P16634822250479187808

namespace A016963

/-- `A016958(n)²*A016959(n)` -/
def P16634822250479187808.Spec : Prop :=
  ∀ n, P16634822250479187808.a n = A016963 n

theorem P16634822250479187808.correct : P16634822250479187808.Spec := by
  intro n
  simp only [A016963, Nat.add_sub_cancel, A016963.P16634822250479187808.a, A016963.P2568350781963201980.a, A016958, A016958.P743767780414774553.a, A016959, A016959.P14858127207788600241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016963

/-! ## A016963.P17243867765564871412

`A016959(n)²*A016957(n)`
-/

namespace A016963.P17243867765564871412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 n ^ 2 * A016957 n

end

end A016963.P17243867765564871412

namespace A016963

/-- `A016959(n)²*A016957(n)` -/
def P17243867765564871412.Spec : Prop :=
  ∀ n, P17243867765564871412.a n = A016963 n

theorem P17243867765564871412.correct : P17243867765564871412.Spec := by
  intro n
  simp only [A016963, Nat.add_sub_cancel, A016963.P17243867765564871412.a, A016963.P2568350781963201980.a, A016957, A016957.P9941618694539595759.a, A016959, A016959.P14858127207788600241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016963

/-! ## A016963.P17743085007019968115

`A016960(n)²/A016957(n)`
-/

namespace A016963.P17743085007019968115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016960 n ^ 2 : ℚ) / (A016957 n : ℚ)

end

end A016963.P17743085007019968115

namespace A016963

/-- `A016960(n)²/A016957(n)` -/
def P17743085007019968115.Spec : Prop :=
  ∀ n, P17743085007019968115.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P2888679334320819546

`A016961(n)²/A016959(n)`
-/

namespace A016963.P2888679334320819546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016961 n ^ 2 : ℚ) / (A016959 n : ℚ)

end

end A016963.P2888679334320819546

namespace A016963

/-- `A016961(n)²/A016959(n)` -/
def P2888679334320819546.Spec : Prop :=
  ∀ n, P2888679334320819546.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P8836319419190051826

`A016965(n)/A016957(n)²`
-/

namespace A016963.P8836319419190051826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 n : ℚ) / (A016957 n ^ 2 : ℚ)

end

end A016963.P8836319419190051826

namespace A016963

/-- `A016965(n)/A016957(n)²` -/
def P8836319419190051826.Spec : Prop :=
  ∀ n, P8836319419190051826.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P14816117897079382297

`A016967(n)/A016958(n)²`
-/

namespace A016963.P14816117897079382297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016967 n : ℚ) / (A016958 n ^ 2 : ℚ)

end

end A016963.P14816117897079382297

namespace A016963

/-- `A016967(n)/A016958(n)²` -/
def P14816117897079382297.Spec : Prop :=
  ∀ n, P14816117897079382297.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P12898705764930329614

`A016958(n)²²/A016957(n)`
-/

namespace A016963.P12898705764930329614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016958 n ^ 2) ^ 2 : ℚ) / (A016957 n : ℚ)

end

end A016963.P12898705764930329614

namespace A016963

/-- `A016958(n)²²/A016957(n)` -/
def P12898705764930329614.Spec : Prop :=
  ∀ n, P12898705764930329614.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P2354236788106681496

`(A016897(n)+n)*A016959(n)²`
-/

namespace A016963.P2354236788106681496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n + (n : ℤ)) * A016959 n ^ 2

end

end A016963.P2354236788106681496

namespace A016963

/-- `(A016897(n)+n)*A016959(n)²` -/
def P2354236788106681496.Spec : Prop :=
  ∀ n, P2354236788106681496.a n = A016963 n

theorem P2354236788106681496.correct : P2354236788106681496.Spec := by
  intro n
  simp only [A016963, Nat.add_sub_cancel, A016963.P2354236788106681496.a, A016963.P2568350781963201980.a, A016897, A016897.P9287350145607759688.a, A016959, A016959.P14858127207788600241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016963

/-! ## A016963.P14051404391563988868

`A016957(n)*A016958(n)*A016960(n)`
-/

namespace A016963.P14051404391563988868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n * A016958 n * A016960 n

end

end A016963.P14051404391563988868

namespace A016963

/-- `A016957(n)*A016958(n)*A016960(n)` -/
def P14051404391563988868.Spec : Prop :=
  ∀ n, P14051404391563988868.a n = A016963 n

theorem P14051404391563988868.correct : P14051404391563988868.Spec := by
  intro n
  simp only [A016963, Nat.add_sub_cancel, A016963.P14051404391563988868.a, A016963.P2568350781963201980.a, A016957, A016957.P9941618694539595759.a, A016958, A016958.P743767780414774553.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016963

/-! ## A016963.P18119258896589294263

`A016958(n)*A016962(n)/A016957(n)`
-/

namespace A016963.P18119258896589294263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016958 n * A016962 n : ℚ) / (A016957 n : ℚ)

end

end A016963.P18119258896589294263

namespace A016963

/-- `A016958(n)*A016962(n)/A016957(n)` -/
def P18119258896589294263.Spec : Prop :=
  ∀ n, P18119258896589294263.a n = (A016963 n : ℚ)

end A016963

/-! ## A016963.P8558480145268019129

`A016959(n)*A016961(n)/A016957(n)`
-/

namespace A016963.P8558480145268019129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016959 n * A016961 n : ℚ) / (A016957 n : ℚ)

end

end A016963.P8558480145268019129

namespace A016963

/-- `A016959(n)*A016961(n)/A016957(n)` -/
def P8558480145268019129.Spec : Prop :=
  ∀ n, P8558480145268019129.a n = (A016963 n : ℚ)

end A016963

/-!
# A016964: a(n) = (6*n + 4)^8.

The programs for A016964, the canonical program `A016964.P4405314615304342496` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016964 has offset 0).

The definition of A016964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^8` (program `A016964.P4405314615304342496`, by `A016964.P4405314615304342496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016964.P4405314615304342496

`(6*n+4)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016964

/-- `(6*n+4)^8` -/
def P4405314615304342496.Spec : Prop :=
  ∀ n, (P4405314615304342496.a n : ℤ) = A016964 n

theorem P4405314615304342496.correct : P4405314615304342496.Spec := by
  intro n
  simp only [A016964]

end A016964

/-! ## A016964.P13334436307590096547

`A016960(n)²`
-/

namespace A016964.P13334436307590096547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016960 n ^ 2

end

end A016964.P13334436307590096547

namespace A016964

/-- `A016960(n)²` -/
def P13334436307590096547.Spec : Prop :=
  ∀ n, P13334436307590096547.a n = A016964 n

theorem P13334436307590096547.correct : P13334436307590096547.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P13334436307590096547.a, A016964.P4405314615304342496.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P10746412265269516202

`(record[xor(3, n)]+2*n+1)²²²`
-/

namespace A016964.P10746412265269516202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A016964.P10746412265269516202

namespace A016964

/-- `(record[xor(3, n)]+2*n+1)²²²` -/
def P10746412265269516202.Spec : Prop :=
  ∀ n, (P10746412265269516202.a n : ℤ) = A016964 n

end A016964

/-! ## A016964.P1783865268507151248

`Δ[lcm(n, 2*n+1+n)]²²²`
-/

namespace A016964.P1783865268507151248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016964.P1783865268507151248

namespace A016964

/-- `Δ[lcm(n, 2*n+1+n)]²²²` -/
def P1783865268507151248.Spec : Prop :=
  ∀ n, P1783865268507151248.a n = A016964 n

end A016964

/-! ## A016964.P17455816157569064154

`(2*n-lcm(4, 2*n+1))²²²`
-/

namespace A016964.P17455816157569064154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((2 * n : ℤ) - (Nat.lcm 4 (2 * n + 1) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016964.P17455816157569064154

namespace A016964

/-- `(2*n-lcm(4, 2*n+1))²²²` -/
def P17455816157569064154.Spec : Prop :=
  ∀ n, P17455816157569064154.a n = A016964 n

end A016964

/-! ## A016964.P12146031352384902566

`(Δ[C(2*n+1, 2)]+2*n+1)²²²`
-/

namespace A016964.P12146031352384902566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016964.P12146031352384902566

namespace A016964

/-- `(Δ[C(2*n+1, 2)]+2*n+1)²²²` -/
def P12146031352384902566.Spec : Prop :=
  ∀ n, P12146031352384902566.a n = A016964 n

end A016964

/-! ## A016964.P8363365019408245451

`A016958(n)²²`
-/

namespace A016964.P8363365019408245451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016958 n ^ 2) ^ 2

end

end A016964.P8363365019408245451

namespace A016964

/-- `A016958(n)²²` -/
def P8363365019408245451.Spec : Prop :=
  ∀ n, P8363365019408245451.a n = A016964 n

theorem P8363365019408245451.correct : P8363365019408245451.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P8363365019408245451.a, A016964.P4405314615304342496.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P3639511397967293789

`A016957(n)²²²`
-/

namespace A016964.P3639511397967293789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016957 n ^ 2) ^ 2) ^ 2

end

end A016964.P3639511397967293789

namespace A016964

/-- `A016957(n)²²²` -/
def P3639511397967293789.Spec : Prop :=
  ∀ n, P3639511397967293789.a n = A016964 n

theorem P3639511397967293789.correct : P3639511397967293789.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P3639511397967293789.a, A016964.P4405314615304342496.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P17180895551788848696

`(A016945(n)+1)²²²`
-/

namespace A016964.P17180895551788848696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016945 n + 1) ^ 2) ^ 2) ^ 2

end

end A016964.P17180895551788848696

namespace A016964

/-- `(A016945(n)+1)²²²` -/
def P17180895551788848696.Spec : Prop :=
  ∀ n, P17180895551788848696.a n = A016964 n

theorem P17180895551788848696.correct : P17180895551788848696.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P17180895551788848696.a, A016964.P4405314615304342496.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P14360484955806391822

`(A016933(n)+2)²²²`
-/

namespace A016964.P14360484955806391822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016933 n + 2) ^ 2) ^ 2) ^ 2

end

end A016964.P14360484955806391822

namespace A016964

/-- `(A016933(n)+2)²²²` -/
def P14360484955806391822.Spec : Prop :=
  ∀ n, P14360484955806391822.a n = A016964 n

theorem P14360484955806391822.correct : P14360484955806391822.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P14360484955806391822.a, A016964.P4405314615304342496.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P5420988893069158009

`(1-A016969(n))²²²`
-/

namespace A016964.P5420988893069158009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A016969 n) ^ 2) ^ 2) ^ 2

end

end A016964.P5420988893069158009

namespace A016964

/-- `(1-A016969(n))²²²` -/
def P5420988893069158009.Spec : Prop :=
  ∀ n, P5420988893069158009.a n = A016964 n

theorem P5420988893069158009.correct : P5420988893069158009.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P5420988893069158009.a, A016964.P4405314615304342496.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P6889332096904158502

`(2*A016789(n))²²²`
-/

namespace A016964.P6889332096904158502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016789 n) ^ 2) ^ 2) ^ 2

end

end A016964.P6889332096904158502

namespace A016964

/-- `(2*A016789(n))²²²` -/
def P6889332096904158502.Spec : Prop :=
  ∀ n, P6889332096904158502.a n = A016964 n

theorem P6889332096904158502.correct : P6889332096904158502.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P6889332096904158502.a, A016964.P4405314615304342496.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P8862657705669895312

`(A017617(n)/2)²²²`
-/

namespace A016964.P8862657705669895312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A017617 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016964.P8862657705669895312

namespace A016964

/-- `(A017617(n)/2)²²²` -/
def P8862657705669895312.Spec : Prop :=
  ∀ n, P8862657705669895312.a n = (A016964 n : ℚ)

theorem P8862657705669895312.correct : P8862657705669895312.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P8862657705669895312.a, A016964.P4405314615304342496.a, A017617, A017617.P15573883131522867575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P17794375822253549039

`(A016897(n)+n)²²²`
-/

namespace A016964.P17794375822253549039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016897 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016964.P17794375822253549039

namespace A016964

/-- `(A016897(n)+n)²²²` -/
def P17794375822253549039.Spec : Prop :=
  ∀ n, P17794375822253549039.a n = A016964 n

theorem P17794375822253549039.correct : P17794375822253549039.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P17794375822253549039.a, A016964.P4405314615304342496.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P13189250911242920568

`(n-A017029(n))²²²`
-/

namespace A016964.P13189250911242920568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017029 n) ^ 2) ^ 2) ^ 2

end

end A016964.P13189250911242920568

namespace A016964

/-- `(n-A017029(n))²²²` -/
def P13189250911242920568.Spec : Prop :=
  ∀ n, P13189250911242920568.a n = A016964 n

theorem P13189250911242920568.correct : P13189250911242920568.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P13189250911242920568.a, A016964.P4405314615304342496.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P7290631953951213777

`(6*n+4)*A016963(n)`
-/

namespace A016964.P7290631953951213777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) * A016963 n

end

end A016964.P7290631953951213777

namespace A016964

/-- `(6*n+4)*A016963(n)` -/
def P7290631953951213777.Spec : Prop :=
  ∀ n, P7290631953951213777.a n = A016964 n

theorem P7290631953951213777.correct : P7290631953951213777.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P7290631953951213777.a, A016964.P4405314615304342496.a, A016963, A016963.P2568350781963201980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P8182434264516770269

`A016965(n)/(6*n+4)`
-/

namespace A016964.P8182434264516770269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016965 n : ℚ) / (6 * n + 4 : ℚ)

end

end A016964.P8182434264516770269

namespace A016964

/-- `A016965(n)/(6*n+4)` -/
def P8182434264516770269.Spec : Prop :=
  ∀ n, P8182434264516770269.a n = (A016964 n : ℚ)

end A016964

/-! ## A016964.P5360429376891102900

`(A016873(n)+n+2)²²²`
-/

namespace A016964.P5360429376891102900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016873 n + (n + 2 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016964.P5360429376891102900

namespace A016964

/-- `(A016873(n)+n+2)²²²` -/
def P5360429376891102900.Spec : Prop :=
  ∀ n, P5360429376891102900.a n = A016964 n

theorem P5360429376891102900.correct : P5360429376891102900.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P5360429376891102900.a, A016964.P4405314615304342496.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-! ## A016964.P8405452270030121795

`A016958(n)*A016962(n)`
-/

namespace A016964.P8405452270030121795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n * A016962 n

end

end A016964.P8405452270030121795

namespace A016964

/-- `A016958(n)*A016962(n)` -/
def P8405452270030121795.Spec : Prop :=
  ∀ n, P8405452270030121795.a n = A016964 n

theorem P8405452270030121795.correct : P8405452270030121795.Spec := by
  intro n
  simp only [A016964, Nat.add_sub_cancel, A016964.P8405452270030121795.a, A016964.P4405314615304342496.a, A016958, A016958.P743767780414774553.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016964

/-!
# A016965: a(n) = (6*n + 4)^9.

The programs for A016965, the canonical program `A016965.P1751004118298795959` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016965 has offset 0).

The definition of A016965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^9` (program `A016965.P1751004118298795959`, by `A016965.P1751004118298795959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016965.P1751004118298795959

`(6*n+4)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016965

/-- `(6*n+4)^9` -/
def P1751004118298795959.Spec : Prop :=
  ∀ n, (P1751004118298795959.a n : ℤ) = A016965 n

theorem P1751004118298795959.correct : P1751004118298795959.Spec := by
  intro n
  simp only [A016965]

end A016965

/-! ## A016965.P14688064389195188917

`sqrt(A016962(n)^3)`
-/

namespace A016965.P14688064389195188917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016962 n ^ 3 : ℝ)

end

end A016965.P14688064389195188917

namespace A016965

/-- `sqrt(A016962(n)^3)` -/
def P14688064389195188917.Spec : Prop :=
  ∀ n, P14688064389195188917.a n = (A016965 n : ℝ)

end A016965

/-! ## A016965.P15380458330988623392

`(6*n+4)*A016964(n)`
-/

namespace A016965.P15380458330988623392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) * A016964 n

end

end A016965.P15380458330988623392

namespace A016965

/-- `(6*n+4)*A016964(n)` -/
def P15380458330988623392.Spec : Prop :=
  ∀ n, P15380458330988623392.a n = A016965 n

theorem P15380458330988623392.correct : P15380458330988623392.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P15380458330988623392.a, A016965.P1751004118298795959.a, A016964, A016964.P4405314615304342496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P10120216991124087666

`A016958(n)*A016963(n)`
-/

namespace A016965.P10120216991124087666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n * A016963 n

end

end A016965.P10120216991124087666

namespace A016965

/-- `A016958(n)*A016963(n)` -/
def P10120216991124087666.Spec : Prop :=
  ∀ n, P10120216991124087666.a n = A016965 n

theorem P10120216991124087666.correct : P10120216991124087666.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P10120216991124087666.a, A016965.P1751004118298795959.a, A016958, A016958.P743767780414774553.a, A016963, A016963.P2568350781963201980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P16660259913672875440

`A016959(n)*A016962(n)`
-/

namespace A016965.P16660259913672875440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 n * A016962 n

end

end A016965.P16660259913672875440

namespace A016965

/-- `A016959(n)*A016962(n)` -/
def P16660259913672875440.Spec : Prop :=
  ∀ n, P16660259913672875440.a n = A016965 n

theorem P16660259913672875440.correct : P16660259913672875440.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P16660259913672875440.a, A016965.P1751004118298795959.a, A016959, A016959.P14858127207788600241.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P15367115136604177862

`A016960(n)*A016961(n)`
-/

namespace A016965.P15367115136604177862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016960 n * A016961 n

end

end A016965.P15367115136604177862

namespace A016965

/-- `A016960(n)*A016961(n)` -/
def P15367115136604177862.Spec : Prop :=
  ∀ n, P15367115136604177862.a n = A016965 n

theorem P15367115136604177862.correct : P15367115136604177862.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P15367115136604177862.a, A016965.P1751004118298795959.a, A016960, A016960.P14442042451729592915.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P6935509744394431731

`A016966(n)/A016957(n)`
-/

namespace A016965.P6935509744394431731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016966 n : ℚ) / (A016957 n : ℚ)

end

end A016965.P6935509744394431731

namespace A016965

/-- `A016966(n)/A016957(n)` -/
def P6935509744394431731.Spec : Prop :=
  ∀ n, P6935509744394431731.a n = (A016965 n : ℚ)

end A016965

/-! ## A016965.P6358115918750007892

`A016967(n)/A016958(n)`
-/

namespace A016965.P6358115918750007892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016967 n : ℚ) / (A016958 n : ℚ)

end

end A016965.P6358115918750007892

namespace A016965

/-- `A016967(n)/A016958(n)` -/
def P6358115918750007892.Spec : Prop :=
  ∀ n, P6358115918750007892.a n = (A016965 n : ℚ)

end A016965

/-! ## A016965.P5241030942765272777

`A016957(n)²*A016963(n)`
-/

namespace A016965.P5241030942765272777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n ^ 2 * A016963 n

end

end A016965.P5241030942765272777

namespace A016965

/-- `A016957(n)²*A016963(n)` -/
def P5241030942765272777.Spec : Prop :=
  ∀ n, P5241030942765272777.a n = A016965 n

theorem P5241030942765272777.correct : P5241030942765272777.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P5241030942765272777.a, A016965.P1751004118298795959.a, A016957, A016957.P9941618694539595759.a, A016963, A016963.P2568350781963201980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P17474462966578649659

`A016958(n)²*A016961(n)`
-/

namespace A016965.P17474462966578649659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n ^ 2 * A016961 n

end

end A016965.P17474462966578649659

namespace A016965

/-- `A016958(n)²*A016961(n)` -/
def P17474462966578649659.Spec : Prop :=
  ∀ n, P17474462966578649659.a n = A016965 n

theorem P17474462966578649659.correct : P17474462966578649659.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P17474462966578649659.a, A016965.P1751004118298795959.a, A016958, A016958.P743767780414774553.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P8521775107636114097

`A016960(n)²*A016957(n)`
-/

namespace A016965.P8521775107636114097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016960 n ^ 2 * A016957 n

end

end A016965.P8521775107636114097

namespace A016965

/-- `A016960(n)²*A016957(n)` -/
def P8521775107636114097.Spec : Prop :=
  ∀ n, P8521775107636114097.a n = A016965 n

theorem P8521775107636114097.correct : P8521775107636114097.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P8521775107636114097.a, A016965.P1751004118298795959.a, A016957, A016957.P9941618694539595759.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P1084791276589555821

`A016961(n)²/A016957(n)`
-/

namespace A016965.P1084791276589555821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016961 n ^ 2 : ℚ) / (A016957 n : ℚ)

end

end A016965.P1084791276589555821

namespace A016965

/-- `A016961(n)²/A016957(n)` -/
def P1084791276589555821.Spec : Prop :=
  ∀ n, P1084791276589555821.a n = (A016965 n : ℚ)

end A016965

/-! ## A016965.P8427338948716776907

`A016958(n)²²*A016957(n)`
-/

namespace A016965.P8427338948716776907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016958 n ^ 2) ^ 2 * A016957 n

end

end A016965.P8427338948716776907

namespace A016965

/-- `A016958(n)²²*A016957(n)` -/
def P8427338948716776907.Spec : Prop :=
  ∀ n, P8427338948716776907.a n = A016965 n

theorem P8427338948716776907.correct : P8427338948716776907.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P8427338948716776907.a, A016965.P1751004118298795959.a, A016957, A016957.P9941618694539595759.a, A016958, A016958.P743767780414774553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P3186801710406944966

`A016957(n)*A016958(n)*A016962(n)`
-/

namespace A016965.P3186801710406944966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n * A016958 n * A016962 n

end

end A016965.P3186801710406944966

namespace A016965

/-- `A016957(n)*A016958(n)*A016962(n)` -/
def P3186801710406944966.Spec : Prop :=
  ∀ n, P3186801710406944966.a n = A016965 n

theorem P3186801710406944966.correct : P3186801710406944966.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P3186801710406944966.a, A016965.P1751004118298795959.a, A016957, A016957.P9941618694539595759.a, A016958, A016958.P743767780414774553.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P12382676415988782618

`A016957(n)*A016959(n)*A016961(n)`
-/

namespace A016965.P12382676415988782618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n * A016959 n * A016961 n

end

end A016965.P12382676415988782618

namespace A016965

/-- `A016957(n)*A016959(n)*A016961(n)` -/
def P12382676415988782618.Spec : Prop :=
  ∀ n, P12382676415988782618.a n = A016965 n

theorem P12382676415988782618.correct : P12382676415988782618.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P12382676415988782618.a, A016965.P1751004118298795959.a, A016957, A016957.P9941618694539595759.a, A016959, A016959.P14858127207788600241.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P16022134399005101024

`A016958(n)*A016959(n)*A016960(n)`
-/

namespace A016965.P16022134399005101024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016958 n * A016959 n * A016960 n

end

end A016965.P16022134399005101024

namespace A016965

/-- `A016958(n)*A016959(n)*A016960(n)` -/
def P16022134399005101024.Spec : Prop :=
  ∀ n, P16022134399005101024.a n = A016965 n

theorem P16022134399005101024.correct : P16022134399005101024.Spec := by
  intro n
  simp only [A016965, Nat.add_sub_cancel, A016965.P16022134399005101024.a, A016965.P1751004118298795959.a, A016958, A016958.P743767780414774553.a, A016959, A016959.P14858127207788600241.a, A016960, A016960.P14442042451729592915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016965

/-! ## A016965.P4458759943352495527

`A016962(n)/A016960(n)*A016963(n)`
-/

namespace A016965.P4458759943352495527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016962 n : ℚ) / (A016960 n : ℚ) * (A016963 n : ℚ)

end

end A016965.P4458759943352495527

namespace A016965

/-- `A016962(n)/A016960(n)*A016963(n)` -/
def P4458759943352495527.Spec : Prop :=
  ∀ n, P4458759943352495527.a n = (A016965 n : ℚ)

end A016965

/-! ## A016965.P4894443226770724172

`A016963(n)/A016961(n)*A016963(n)`
-/

namespace A016965.P4894443226770724172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016963 n : ℚ) / (A016961 n : ℚ) * (A016963 n : ℚ)

end

end A016965.P4894443226770724172

namespace A016965

/-- `A016963(n)/A016961(n)*A016963(n)` -/
def P4894443226770724172.Spec : Prop :=
  ∀ n, P4894443226770724172.a n = (A016965 n : ℚ)

end A016965

/-! ## A016965.P8446935315159369265

`A016785(Δ[n²])`
-/

namespace A016965.P8446935315159369265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016785 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A016965.P8446935315159369265

namespace A016965

/-- `A016785(Δ[n²])` -/
def P8446935315159369265.Spec : Prop :=
  ∀ n, P8446935315159369265.a n = A016965 n

end A016965

/-!
# A016966: a(n) = (6*n + 4)^10.

The programs for A016966, the canonical program `A016966.P16114451688447063325` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016966 has offset 0).

The definition of A016966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^10` (program `A016966.P16114451688447063325`, by `A016966.P16114451688447063325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016966.P16114451688447063325

`(6*n+4)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016966

/-- `(6*n+4)^10` -/
def P16114451688447063325.Spec : Prop :=
  ∀ n, (P16114451688447063325.a n : ℤ) = A016966 n

theorem P16114451688447063325.correct : P16114451688447063325.Spec := by
  intro n
  simp only [A016966]

end A016966

/-! ## A016966.P14201533384365026253

`A016961(n)²`
-/

namespace A016966.P14201533384365026253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016961 n ^ 2

end

end A016966.P14201533384365026253

namespace A016966

/-- `A016961(n)²` -/
def P14201533384365026253.Spec : Prop :=
  ∀ n, P14201533384365026253.a n = A016966 n

theorem P14201533384365026253.correct : P14201533384365026253.Spec := by
  intro n
  simp only [A016966, Nat.add_sub_cancel, A016966.P14201533384365026253.a, A016966.P16114451688447063325.a, A016961, A016961.P3953090399951261462.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016966

/-! ## A016966.P17379511512118419168

`sqrt(A016960(n)^5)`
-/

namespace A016966.P17379511512118419168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016960 n ^ 5 : ℝ)

end

end A016966.P17379511512118419168

namespace A016966

/-- `sqrt(A016960(n)^5)` -/
def P17379511512118419168.Spec : Prop :=
  ∀ n, P17379511512118419168.a n = (A016966 n : ℝ)

end A016966

/-! ## A016966.P18302463116761391275

`A016959(n)*A016963(n)`
-/

namespace A016966.P18302463116761391275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016959 n * A016963 n

end

end A016966.P18302463116761391275

namespace A016966

/-- `A016959(n)*A016963(n)` -/
def P18302463116761391275.Spec : Prop :=
  ∀ n, P18302463116761391275.a n = A016966 n

theorem P18302463116761391275.correct : P18302463116761391275.Spec := by
  intro n
  simp only [A016966, Nat.add_sub_cancel, A016966.P18302463116761391275.a, A016966.P16114451688447063325.a, A016959, A016959.P14858127207788600241.a, A016963, A016963.P2568350781963201980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016966

/-! ## A016966.P2899519177225170430

`A016960(n)*A016962(n)`
-/

namespace A016966.P2899519177225170430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016960 n * A016962 n

end

end A016966.P2899519177225170430

namespace A016966

/-- `A016960(n)*A016962(n)` -/
def P2899519177225170430.Spec : Prop :=
  ∀ n, P2899519177225170430.a n = A016966 n

theorem P2899519177225170430.correct : P2899519177225170430.Spec := by
  intro n
  simp only [A016966, Nat.add_sub_cancel, A016966.P2899519177225170430.a, A016966.P16114451688447063325.a, A016960, A016960.P14442042451729592915.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016966

/-! ## A016966.P15260163443352144341

`A016967(n)/A016957(n)`
-/

namespace A016966.P15260163443352144341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016967 n : ℚ) / (A016957 n : ℚ)

end

end A016966.P15260163443352144341

namespace A016966

/-- `A016967(n)/A016957(n)` -/
def P15260163443352144341.Spec : Prop :=
  ∀ n, P15260163443352144341.a n = (A016966 n : ℚ)

end A016966

/-! ## A016966.P8185977816202276718

`(A016967(n)/A016962(n))²`
-/

namespace A016966.P8185977816202276718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016967 n : ℚ) / (A016962 n : ℚ)) ^ 2

end

end A016966.P8185977816202276718

namespace A016966

/-- `(A016967(n)/A016962(n))²` -/
def P8185977816202276718.Spec : Prop :=
  ∀ n, P8185977816202276718.a n = (A016966 n : ℚ)

end A016966

/-! ## A016966.P11706365944414289379

`sqrt(sqrt(A016964(n)))*A016964(n)`
-/

namespace A016966.P11706365944414289379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016964 n : ℝ)) * (A016964 n : ℝ)

end

end A016966.P11706365944414289379

namespace A016966

/-- `sqrt(sqrt(A016964(n)))*A016964(n)` -/
def P11706365944414289379.Spec : Prop :=
  ∀ n, P11706365944414289379.a n = (A016966 n : ℝ)

end A016966

/-! ## A016966.P8989580525925255978

`A016786(2*n+1)`
-/

namespace A016966.P8989580525925255978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016786 (2 * n + 1)

end

end A016966.P8989580525925255978

namespace A016966

/-- `A016786(2*n+1)` -/
def P8989580525925255978.Spec : Prop :=
  ∀ n, P8989580525925255978.a n = A016966 n

theorem P8989580525925255978.correct : P8989580525925255978.Spec := by
  intro n
  simp only [A016966, Nat.add_sub_cancel, A016966.P8989580525925255978.a, A016966.P16114451688447063325.a, A016786, A016786.P17124437694900183996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016966

/-! ## A016966.P17450407584647959626

`A016781(2*n+1)²`
-/

namespace A016966.P17450407584647959626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (2 * n + 1) ^ 2

end

end A016966.P17450407584647959626

namespace A016966

/-- `A016781(2*n+1)²` -/
def P17450407584647959626.Spec : Prop :=
  ∀ n, P17450407584647959626.a n = A016966 n

theorem P17450407584647959626.correct : P17450407584647959626.Spec := by
  intro n
  simp only [A016966, Nat.add_sub_cancel, A016966.P17450407584647959626.a, A016966.P16114451688447063325.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016966

/-! ## A016966.P13729812045471955679

`A016787(2*n+1)/A016777(2*n+1)`
-/

namespace A016966.P13729812045471955679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016787 (2 * n + 1) : ℚ) / (A016777 (2 * n + 1) : ℚ)

end

end A016966.P13729812045471955679

namespace A016966

/-- `A016787(2*n+1)/A016777(2*n+1)` -/
def P13729812045471955679.Spec : Prop :=
  ∀ n, P13729812045471955679.a n = (A016966 n : ℚ)

theorem P13729812045471955679.correct : P13729812045471955679.Spec := by
  intro n
  simp only [A016966, Nat.add_sub_cancel, A016966.P13729812045471955679.a, A016966.P16114451688447063325.a, A016777, A016777.P9931792138852554157.a, A016787, A016787.P1597524615219779150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016966

/-! ## A016966.P17717239465462332256

`A016750(3*n+2)`
-/

namespace A016966.P17717239465462332256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016750 (3 * n + 2)

end

end A016966.P17717239465462332256

namespace A016966

/-- `A016750(3*n+2)` -/
def P17717239465462332256.Spec : Prop :=
  ∀ n, P17717239465462332256.a n = A016966 n

theorem P17717239465462332256.correct : P17717239465462332256.Spec := by
  intro n
  simp only [A016966, Nat.add_sub_cancel, A016966.P17717239465462332256.a, A016966.P16114451688447063325.a, A016750, A016750.P3077076585520264960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016966

/-! ## A016966.P1003480079445426682

`A008454(A016969(n)-1)`
-/

namespace A016966.P1003480079445426682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016969 n - 1).toNat

end

end A016966.P1003480079445426682

namespace A016966

/-- `A008454(A016969(n)-1)` -/
def P1003480079445426682.Spec : Prop :=
  ∀ n, P1003480079445426682.a n = A016966 n

end A016966

/-! ## A016966.P11518718453835934510

`A008454(A017617(n)/2)`
-/

namespace A016966.P11518718453835934510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (SequenceMachineLib.roundAway ((A017617 n : ℚ) / 2)).toNat

end

end A016966.P11518718453835934510

namespace A016966

/-- `A008454(A017617(n)/2)` -/
def P11518718453835934510.Spec : Prop :=
  ∀ n, P11518718453835934510.a n = A016966 n

end A016966

/-! ## A016966.P16585198688318316444

`A008454(2*(A008585(n)+2))`
-/

namespace A016966.P16585198688318316444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * (A008585 n + 2)).toNat

end

end A016966.P16585198688318316444

namespace A016966

/-- `A008454(2*(A008585(n)+2))` -/
def P16585198688318316444.Spec : Prop :=
  ∀ n, P16585198688318316444.a n = A016966 n

end A016966

/-! ## A016966.P10631281182694838880

`A008454(A016777(A016777(n)-n))`
-/

namespace A016966.P10631281182694838880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (A016777 n - (n : ℤ)).toNat).toNat

end

end A016966.P10631281182694838880

namespace A016966

/-- `A008454(A016777(A016777(n)-n))` -/
def P10631281182694838880.Spec : Prop :=
  ∀ n, P10631281182694838880.a n = A016966 n

end A016966

/-!
# A016967: a(n) = (6*n + 4)^11.

The programs for A016967, the canonical program `A016967.P85507053877119379` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016967 has offset 0).

The definition of A016967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+4)^11` (program `A016967.P85507053877119379`, by `A016967.P85507053877119379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016967.P85507053877119379

`(6*n+4)^11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016967

/-- `(6*n+4)^11` -/
def P85507053877119379.Spec : Prop :=
  ∀ n, (P85507053877119379.a n : ℤ) = A016967 n

theorem P85507053877119379.correct : P85507053877119379.Spec := by
  intro n
  simp only [A016967]

end A016967

/-! ## A016967.P2836268599735961405

`A016960(n)*A016963(n)`
-/

namespace A016967.P2836268599735961405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016960 n * A016963 n

end

end A016967.P2836268599735961405

namespace A016967

/-- `A016960(n)*A016963(n)` -/
def P2836268599735961405.Spec : Prop :=
  ∀ n, P2836268599735961405.a n = A016967 n

theorem P2836268599735961405.correct : P2836268599735961405.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P2836268599735961405.a, A016967.P85507053877119379.a, A016960, A016960.P14442042451729592915.a, A016963, A016963.P2568350781963201980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P5892891477924823958

`A016961(n)*A016962(n)`
-/

namespace A016967.P5892891477924823958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016961 n * A016962 n

end

end A016967.P5892891477924823958

namespace A016967

/-- `A016961(n)*A016962(n)` -/
def P5892891477924823958.Spec : Prop :=
  ∀ n, P5892891477924823958.a n = A016967 n

theorem P5892891477924823958.correct : P5892891477924823958.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P5892891477924823958.a, A016967.P85507053877119379.a, A016961, A016961.P3953090399951261462.a, A016962, A016962.P16474642828663356160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P342684485107303243

`A016787(2*n+1)`
-/

namespace A016967.P342684485107303243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016787 (2 * n + 1)

end

end A016967.P342684485107303243

namespace A016967

/-- `A016787(2*n+1)` -/
def P342684485107303243.Spec : Prop :=
  ∀ n, P342684485107303243.a n = A016967 n

theorem P342684485107303243.correct : P342684485107303243.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P342684485107303243.a, A016967.P85507053877119379.a, A016787, A016787.P1597524615219779150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P15080812474422090513

`A016777(2*n+1)*A016786(2*n+1)`
-/

namespace A016967.P15080812474422090513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n + 1) * A016786 (2 * n + 1)

end

end A016967.P15080812474422090513

namespace A016967

/-- `A016777(2*n+1)*A016786(2*n+1)` -/
def P15080812474422090513.Spec : Prop :=
  ∀ n, P15080812474422090513.a n = A016967 n

theorem P15080812474422090513.correct : P15080812474422090513.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P15080812474422090513.a, A016967.P85507053877119379.a, A016777, A016777.P9931792138852554157.a, A016786, A016786.P17124437694900183996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P11983881252088854549

`A016788(2*n+1)/A016777(2*n+1)`
-/

namespace A016967.P11983881252088854549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016788 (2 * n + 1) : ℚ) / (A016777 (2 * n + 1) : ℚ)

end

end A016967.P11983881252088854549

namespace A016967

/-- `A016788(2*n+1)/A016777(2*n+1)` -/
def P11983881252088854549.Spec : Prop :=
  ∀ n, P11983881252088854549.a n = (A016967 n : ℚ)

theorem P11983881252088854549.correct : P11983881252088854549.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P11983881252088854549.a, A016967.P85507053877119379.a, A016777, A016777.P9931792138852554157.a, A016788, A016788.P538685675464873772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P2813831212705511117

`A016779(2*n+1)²*A016781(2*n+1)`
-/

namespace A016967.P2813831212705511117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 (2 * n + 1) ^ 2 * A016781 (2 * n + 1)

end

end A016967.P2813831212705511117

namespace A016967

/-- `A016779(2*n+1)²*A016781(2*n+1)` -/
def P2813831212705511117.Spec : Prop :=
  ∀ n, P2813831212705511117.a n = A016967 n

theorem P2813831212705511117.correct : P2813831212705511117.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P2813831212705511117.a, A016967.P85507053877119379.a, A016779, A016779.P12183208488872344435.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P1832980311490596327

`A016780(2*n+1)²*A016779(2*n+1)`
-/

namespace A016967.P1832980311490596327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 (2 * n + 1) ^ 2 * A016779 (2 * n + 1)

end

end A016967.P1832980311490596327

namespace A016967

/-- `A016780(2*n+1)²*A016779(2*n+1)` -/
def P1832980311490596327.Spec : Prop :=
  ∀ n, P1832980311490596327.a n = A016967 n

theorem P1832980311490596327.correct : P1832980311490596327.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P1832980311490596327.a, A016967.P85507053877119379.a, A016779, A016779.P12183208488872344435.a, A016780, A016780.P5276202049473501293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P15538214511951854030

`A016781(2*n+1)²*A016777(2*n+1)`
-/

namespace A016967.P15538214511951854030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (2 * n + 1) ^ 2 * A016777 (2 * n + 1)

end

end A016967.P15538214511951854030

namespace A016967

/-- `A016781(2*n+1)²*A016777(2*n+1)` -/
def P15538214511951854030.Spec : Prop :=
  ∀ n, P15538214511951854030.a n = A016967 n

theorem P15538214511951854030.correct : P15538214511951854030.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P15538214511951854030.a, A016967.P85507053877119379.a, A016777, A016777.P9931792138852554157.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P10667826497519561833

`A016782(2*n+1)²/A016777(2*n+1)`
-/

namespace A016967.P10667826497519561833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016782 (2 * n + 1) ^ 2 : ℚ) / (A016777 (2 * n + 1) : ℚ)

end

end A016967.P10667826497519561833

namespace A016967

/-- `A016782(2*n+1)²/A016777(2*n+1)` -/
def P10667826497519561833.Spec : Prop :=
  ∀ n, P10667826497519561833.a n = (A016967 n : ℚ)

theorem P10667826497519561833.correct : P10667826497519561833.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P10667826497519561833.a, A016967.P85507053877119379.a, A016777, A016777.P9931792138852554157.a, A016782, A016782.P12520626953037923259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P2933822699452560550

`2*A016786(2*n+1)*A001651(2*n+2)`
-/

namespace A016967.P2933822699452560550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016786 (2 * n + 1) * A001651 (2 * n + 2)

end

end A016967.P2933822699452560550

namespace A016967

/-- `2*A016786(2*n+1)*A001651(2*n+2)` -/
def P2933822699452560550.Spec : Prop :=
  ∀ n, P2933822699452560550.a n = A016967 n

end A016967

/-! ## A016967.P6534732434007782268

`A016777(2*n+1)²²*A016783(2*n+1)`
-/

namespace A016967.P6534732434007782268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 (2 * n + 1) ^ 2) ^ 2 * A016783 (2 * n + 1)

end

end A016967.P6534732434007782268

namespace A016967

/-- `A016777(2*n+1)²²*A016783(2*n+1)` -/
def P6534732434007782268.Spec : Prop :=
  ∀ n, P6534732434007782268.a n = A016967 n

theorem P6534732434007782268.correct : P6534732434007782268.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P6534732434007782268.a, A016967.P85507053877119379.a, A016777, A016777.P9931792138852554157.a, A016783, A016783.P4851290957634662023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P18435869260167665548

`A016778(2*n+1)²²*A016779(2*n+1)`
-/

namespace A016967.P18435869260167665548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016778 (2 * n + 1) ^ 2) ^ 2 * A016779 (2 * n + 1)

end

end A016967.P18435869260167665548

namespace A016967

/-- `A016778(2*n+1)²²*A016779(2*n+1)` -/
def P18435869260167665548.Spec : Prop :=
  ∀ n, P18435869260167665548.a n = A016967 n

theorem P18435869260167665548.correct : P18435869260167665548.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P18435869260167665548.a, A016967.P85507053877119379.a, A016778, A016778.P16000663877604072744.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P9121179799591955247

`A016779(2*n+1)²²/A016777(2*n+1)`
-/

namespace A016967.P9121179799591955247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016779 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A016777 (2 * n + 1) : ℚ)

end

end A016967.P9121179799591955247

namespace A016967

/-- `A016779(2*n+1)²²/A016777(2*n+1)` -/
def P9121179799591955247.Spec : Prop :=
  ∀ n, P9121179799591955247.a n = (A016967 n : ℚ)

theorem P9121179799591955247.correct : P9121179799591955247.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P9121179799591955247.a, A016967.P85507053877119379.a, A016777, A016777.P9931792138852554157.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P4543675972175277963

`A016780(2*n+1)²²/A016781(2*n+1)`
-/

namespace A016967.P4543675972175277963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016780 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A016781 (2 * n + 1) : ℚ)

end

end A016967.P4543675972175277963

namespace A016967

/-- `A016780(2*n+1)²²/A016781(2*n+1)` -/
def P4543675972175277963.Spec : Prop :=
  ∀ n, P4543675972175277963.a n = (A016967 n : ℚ)

theorem P4543675972175277963.correct : P4543675972175277963.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P4543675972175277963.a, A016967.P85507053877119379.a, A016780, A016780.P5276202049473501293.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P12813759885161582586

`A016778(2*n+1)*A016780(2*n+1)*A016781(2*n+1)`
-/

namespace A016967.P12813759885161582586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 (2 * n + 1) * A016780 (2 * n + 1) * A016781 (2 * n + 1)

end

end A016967.P12813759885161582586

namespace A016967

/-- `A016778(2*n+1)*A016780(2*n+1)*A016781(2*n+1)` -/
def P12813759885161582586.Spec : Prop :=
  ∀ n, P12813759885161582586.a n = A016967 n

theorem P12813759885161582586.correct : P12813759885161582586.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P12813759885161582586.a, A016967.P85507053877119379.a, A016778, A016778.P16000663877604072744.a, A016780, A016780.P5276202049473501293.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P9128925424057994866

`A016751(3*n+2)`
-/

namespace A016967.P9128925424057994866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016751 (3 * n + 2)

end

end A016967.P9128925424057994866

namespace A016967

/-- `A016751(3*n+2)` -/
def P9128925424057994866.Spec : Prop :=
  ∀ n, P9128925424057994866.a n = A016967 n

theorem P9128925424057994866.correct : P9128925424057994866.Spec := by
  intro n
  simp only [A016967, Nat.add_sub_cancel, A016967.P9128925424057994866.a, A016967.P85507053877119379.a, A016751, A016751.P9182074990130146716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016967

/-! ## A016967.P2242897969789368813

`A008455(A016957(n))`
-/

namespace A016967.P2242897969789368813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016957 n).toNat

end

end A016967.P2242897969789368813

namespace A016967

/-- `A008455(A016957(n))` -/
def P2242897969789368813.Spec : Prop :=
  ∀ n, P2242897969789368813.a n = A016967 n

end A016967

/-! ## A016967.P12364683065742509063

`A008455(A016969(n)-1)`
-/

namespace A016967.P12364683065742509063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n - 1).toNat

end

end A016967.P12364683065742509063

namespace A016967

/-- `A008455(A016969(n)-1)` -/
def P12364683065742509063.Spec : Prop :=
  ∀ n, P12364683065742509063.a n = A016967 n

end A016967

/-!
# A016968: 

The programs for A016968, there is no canonical definition to state claims against.
-/

/-! ## A016968.P11017691736067139834

`(6*n+4)^12`
-/

namespace A016968.P11017691736067139834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 4) ^ 12

end

end A016968.P11017691736067139834

/-! ## A016968.P15653413366559340423

`A016962(n)²`
-/

namespace A016968.P15653413366559340423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016962 n ^ 2

end

end A016968.P15653413366559340423

/-! ## A016968.P12773574099022866363

`(A016791(n)*A017619(n))²`
-/

namespace A016968.P12773574099022866363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016791 n * A017619 n) ^ 2

end

end A016968.P12773574099022866363

/-! ## A016968.P17126598223145395499

`A016788(2*n+1)`
-/

namespace A016968.P17126598223145395499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016788 (2 * n + 1)

end

end A016968.P17126598223145395499

/-! ## A016968.P161187681658151618

`A016782(2*n+1)²`
-/

namespace A016968.P161187681658151618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 (2 * n + 1) ^ 2

end

end A016968.P161187681658151618

/-! ## A016968.P11232811956897525872

`A016752(3*n+2)`
-/

namespace A016968.P11232811956897525872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016752 (3 * n + 2)

end

end A016968.P11232811956897525872

/-! ## A016968.P5980205090364724498

`sqrt(A016964(n)^3)`
-/

namespace A016968.P5980205090364724498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016964 n ^ 3 : ℝ)

end

end A016968.P5980205090364724498

/-! ## A016968.P7766299648170671327

`A000578(A016969(n)-1)²²`
-/

namespace A016968.P7766299648170671327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016969 n - 1).toNat ^ 2) ^ 2

end

end A016968.P7766299648170671327

/-! ## A016968.P9255788057913676536

`A000578(2*A016789(n))²²`
-/

namespace A016968.P9255788057913676536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (2 * A016789 n).toNat ^ 2) ^ 2

end

end A016968.P9255788057913676536

/-!
# A016969: a(n) = 6*n + 5.

The programs for A016969, the canonical program `A016969.P9377817521032485226` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016969 has offset 0).

The definition of A016969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n+5` (program `A016969.P9377817521032485226`, by `A016969.P9377817521032485226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016969.P9377817521032485226

`6*n+5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016969

/-- `6*n+5` -/
def P9377817521032485226.Spec : Prop :=
  ∀ n, (P9377817521032485226.a n : ℤ) = A016969 n

theorem P9377817521032485226.correct : P9377817521032485226.Spec := by
  intro n
  simp only [A016969]

end A016969

/-!
# A016970: a(n) = (6*n + 5)^2.

The programs for A016970, the canonical program `A016970.P15900235009038966583` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016970 has offset 0).

The definition of A016970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)²` (program `A016970.P15900235009038966583`, by `A016970.P15900235009038966583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016970.P15900235009038966583

`(6*n+5)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016970

/-- `(6*n+5)²` -/
def P15900235009038966583.Spec : Prop :=
  ∀ n, (P15900235009038966583.a n : ℤ) = A016970 n

theorem P15900235009038966583.correct : P15900235009038966583.Spec := by
  intro n
  simp only [A016970]

end A016970

/-! ## A016970.P6873718302286683119

`24*A000326(n+1)+1`
-/

namespace A016970.P6873718302286683119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000326 (n + 1) + 1

end

end A016970.P6873718302286683119

namespace A016970

/-- `24*A000326(n+1)+1` -/
def P6873718302286683119.Spec : Prop :=
  ∀ n, P6873718302286683119.a n = A016970 n

theorem P6873718302286683119.correct : P6873718302286683119.Spec := by
  intro n
  simp only [A016970, Nat.add_sub_cancel, A016970.P6873718302286683119.a, A016970.P15900235009038966583.a, A000326, A000326.P15785277619453972366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016970

/-! ## A016970.P5911832365608863542

`6*A033579(n+1)+1`
-/

namespace A016970.P5911832365608863542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A033579 (n + 1) + 1

end

end A016970.P5911832365608863542

namespace A016970

/-- `6*A033579(n+1)+1` -/
def P5911832365608863542.Spec : Prop :=
  ∀ n, P5911832365608863542.a n = A016970 n

theorem P5911832365608863542.correct : P5911832365608863542.Spec := by
  intro n
  simp only [A016970, Nat.add_sub_cancel, A016970.P5911832365608863542.a, A016970.P15900235009038966583.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016970

/-! ## A016970.P16701943379849193041

`A003215(3*n+2)+A002378(3*n+2)`
-/

namespace A016970.P16701943379849193041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (3 * n + 2) + A002378 (3 * n + 2)

end

end A016970.P16701943379849193041

namespace A016970

/-- `A003215(3*n+2)+A002378(3*n+2)` -/
def P16701943379849193041.Spec : Prop :=
  ∀ n, P16701943379849193041.a n = A016970 n

theorem P16701943379849193041.correct : P16701943379849193041.Spec := by
  intro n
  simp only [A016970, Nat.add_sub_cancel, A016970.P16701943379849193041.a, A016970.P15900235009038966583.a, A002378, A002378.P6342434596694243671.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016970

/-! ## A016970.P6428599167546864253

`record[(gcd(6, n)+n-1)²]`
-/

namespace A016970.P6428599167546864253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 6 n : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016970.P6428599167546864253

namespace A016970

/-- `record[(gcd(6, n)+n-1)²]` -/
def P6428599167546864253.Spec : Prop :=
  ∀ n, P6428599167546864253.a n = A016970 n

end A016970

/-! ## A016970.P9886644774808027721

`8*C(3*(n+1), 2)+1`
-/

namespace A016970.P9886644774808027721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (3 * (n + 1)) 2 + 1

end

end A016970.P9886644774808027721

namespace A016970

/-- `8*C(3*(n+1), 2)+1` -/
def P9886644774808027721.Spec : Prop :=
  ∀ n, (P9886644774808027721.a n : ℤ) = A016970 n

theorem P9886644774808027721.correct : P9886644774808027721.Spec := by
  intro n
  simp only [A016970, Nat.add_sub_cancel, A016970.P9886644774808027721.a, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016970

/-! ## A016970.P15699288473878530978

`record[(lcm(2, n+3)+n-1)²]`
-/

namespace A016970.P15699288473878530978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 3) : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016970.P15699288473878530978

namespace A016970

/-- `record[(lcm(2, n+3)+n-1)²]` -/
def P15699288473878530978.Spec : Prop :=
  ∀ n, P15699288473878530978.a n = A016970 n

end A016970

/-! ## A016970.P14597774902119388071

`4*∑[a(n-1)+18]-3` with `a(0)=7, a(1)=24`
-/

namespace A016970.P14597774902119388071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 24] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 3

end

end A016970.P14597774902119388071

namespace A016970

/-- `4*∑[a(n-1)+18]-3` -/
def P14597774902119388071.Spec : Prop :=
  ∀ n, P14597774902119388071.a n = A016970 n

end A016970

/-! ## A016970.P435427006544057850

`floor((∑[a(n-1)+2]-n²)²)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A016970.P435427006544057850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)) ^ 2

end

end A016970.P435427006544057850

namespace A016970

/-- `floor((∑[a(n-1)+2]-n²)²)` -/
def P435427006544057850.Spec : Prop :=
  ∀ n, P435427006544057850.a n = A016970 n

end A016970

/-! ## A016970.P11285416001477905226

`4*∑[ogf((7+10x+x^2)/(1-2x+x^2))]-3`
-/

namespace A016970.P11285416001477905226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 10, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) - 3

end

end A016970.P11285416001477905226

namespace A016970

/-- `4*∑[ogf((7+10x+x^2)/(1-2x+x^2))]-3` -/
def P11285416001477905226.Spec : Prop :=
  ∀ n, P11285416001477905226.a n = A016970 n

end A016970

/-! ## A016970.P6459835171464924890

`6*4*∑[ogf((1+2x)/(1-2x+x^2))]+1`
-/

namespace A016970.P6459835171464924890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A016970.P6459835171464924890

namespace A016970

/-- `6*4*∑[ogf((1+2x)/(1-2x+x^2))]+1` -/
def P6459835171464924890.Spec : Prop :=
  ∀ n, P6459835171464924890.a n = A016970 n

end A016970

/-! ## A016970.P3044957345641528602

`sqrt(A016972(n))`
-/

namespace A016970.P3044957345641528602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016972 n : ℝ)

end

end A016970.P3044957345641528602

namespace A016970

/-- `sqrt(A016972(n))` -/
def P3044957345641528602.Spec : Prop :=
  ∀ n, P3044957345641528602.a n = (A016970 n : ℝ)

end A016970

/-! ## A016970.P12684882655473592752

`A017642(n)/4`
-/

namespace A016970.P12684882655473592752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017642 n : ℚ) / 4

end

end A016970.P12684882655473592752

namespace A016970

/-- `A017642(n)/4` -/
def P12684882655473592752.Spec : Prop :=
  ∀ n, P12684882655473592752.a n = (A016970 n : ℚ)

theorem P12684882655473592752.correct : P12684882655473592752.Spec := by
  intro n
  simp only [A016970, Nat.add_sub_cancel, A016970.P12684882655473592752.a, A016970.P15900235009038966583.a, A017642, A017642.P329126741911215366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016970

/-! ## A016970.P13714889197475107685

`A144449(n)+9`
-/

namespace A016970.P13714889197475107685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144449 n + 9

end

end A016970.P13714889197475107685

namespace A016970

/-- `A144449(n)+9` -/
def P13714889197475107685.Spec : Prop :=
  ∀ n, P13714889197475107685.a n = A016970 n

theorem P13714889197475107685.correct : P13714889197475107685.Spec := by
  intro n
  simp only [A016970, Nat.add_sub_cancel, A016970.P13714889197475107685.a, A016970.P15900235009038966583.a, A144449, A144449.P16112728441674391944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016970

/-! ## A016970.P3685472631067349664

`A016969(n)^2`
-/

namespace A016970.P3685472631067349664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n ^ 2

end

end A016970.P3685472631067349664

namespace A016970

/-- `A016969(n)^2` -/
def P3685472631067349664.Spec : Prop :=
  ∀ n, P3685472631067349664.a n = A016970 n

theorem P3685472631067349664.correct : P3685472631067349664.Spec := by
  intro n
  simp only [A016970, Nat.add_sub_cancel, A016970.P3685472631067349664.a, A016970.P15900235009038966583.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016970

/-! ## A016970.P7569297873128496405

`sqrt(sqrt(A016976(n)))`
-/

namespace A016970.P7569297873128496405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016976 n : ℝ))

end

end A016970.P7569297873128496405

namespace A016970

/-- `sqrt(sqrt(A016976(n)))` -/
def P7569297873128496405.Spec : Prop :=
  ∀ n, P7569297873128496405.a n = (A016970 n : ℝ)

end A016970

/-! ## A016970.P6384104670543642628

`A017641(n)²/4`
-/

namespace A016970.P6384104670543642628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017641 n ^ 2 : ℚ) / 4

end

end A016970.P6384104670543642628

namespace A016970

/-- `A017641(n)²/4` -/
def P6384104670543642628.Spec : Prop :=
  ∀ n, P6384104670543642628.a n = (A016970 n : ℚ)

theorem P6384104670543642628.correct : P6384104670543642628.Spec := by
  intro n
  simp only [A016970, Nat.add_sub_cancel, A016970.P6384104670543642628.a, A016970.P15900235009038966583.a, A017641, A017641.P7179824184075428685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016970

/-! ## A016970.P12315617319033199626

`sqrt(A017644(n))/4`
-/

namespace A016970.P12315617319033199626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017644 n : ℝ) / 4

end

end A016970.P12315617319033199626

namespace A016970

/-- `sqrt(A017644(n))/4` -/
def P12315617319033199626.Spec : Prop :=
  ∀ n, P12315617319033199626.a n = (A016970 n : ℝ)

end A016970

/-! ## A016970.P10645495997229341200

`A016974(n)^(1/3)`
-/

namespace A016970.P10645495997229341200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016974 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A016970.P10645495997229341200

namespace A016970

/-- `A016974(n)^(1/3)` -/
def P10645495997229341200.Spec : Prop :=
  ∀ n, P10645495997229341200.a n = (A016970 n : ℝ)

end A016970

/-! ## A016970.P10950924930097000687

`A016971(n)^(2/3)`
-/

namespace A016970.P10950924930097000687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016971 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A016970.P10950924930097000687

namespace A016970

/-- `A016971(n)^(2/3)` -/
def P10950924930097000687.Spec : Prop :=
  ∀ n, P10950924930097000687.a n = (A016970 n : ℝ)

end A016970

/-!
# A016971: a(n) = (6*n + 5)^3.

The programs for A016971, the canonical program `A016971.P16829329651816979839` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016971 has offset 0).

The definition of A016971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)^3` (program `A016971.P16829329651816979839`, by `A016971.P16829329651816979839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016971.P16829329651816979839

`(6*n+5)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016971

/-- `(6*n+5)^3` -/
def P16829329651816979839.Spec : Prop :=
  ∀ n, (P16829329651816979839.a n : ℤ) = A016971 n

theorem P16829329651816979839.correct : P16829329651816979839.Spec := by
  intro n
  simp only [A016971]

end A016971

/-! ## A016971.P14066649895301306136

`record[(lcm(2, n+3)+n-1)^3]`
-/

namespace A016971.P14066649895301306136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 3) : ℤ) + ((n : ℤ) - 1)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016971.P14066649895301306136

namespace A016971

/-- `record[(lcm(2, n+3)+n-1)^3]` -/
def P14066649895301306136.Spec : Prop :=
  ∀ n, P14066649895301306136.a n = A016971 n

end A016971

/-! ## A016971.P3115494191392922938

`record[a(n-2)+12]^3/8` with `a(0)=10, a(1)=1`
-/

namespace A016971.P3115494191392922938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3 : ℚ) / 8

end

end A016971.P3115494191392922938

namespace A016971

/-- `record[a(n-2)+12]^3/8` -/
def P3115494191392922938.Spec : Prop :=
  ∀ n, P3115494191392922938.a n = (A016971 n : ℚ)

end A016971

/-! ## A016971.P4119013658007777167

`record[(gcd(n+3, n-3)+n+2)^3]`
-/

namespace A016971.P4119013658007777167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) + (n + 2)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016971.P4119013658007777167

namespace A016971

/-- `record[(gcd(n+3, n-3)+n+2)^3]` -/
def P4119013658007777167.Spec : Prop :=
  ∀ n, (P4119013658007777167.a n : ℤ) = A016971 n

end A016971

/-! ## A016971.P2403810471365705339

`sqrt(A016974(n))`
-/

namespace A016971.P2403810471365705339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016974 n : ℝ)

end

end A016971.P2403810471365705339

namespace A016971

/-- `sqrt(A016974(n))` -/
def P2403810471365705339.Spec : Prop :=
  ∀ n, P2403810471365705339.a n = (A016971 n : ℝ)

end A016971

/-! ## A016971.P3703540434246604746

`A017643(n)/8`
-/

namespace A016971.P3703540434246604746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017643 n : ℚ) / 8

end

end A016971.P3703540434246604746

namespace A016971

/-- `A017643(n)/8` -/
def P3703540434246604746.Spec : Prop :=
  ∀ n, P3703540434246604746.a n = (A016971 n : ℚ)

theorem P3703540434246604746.correct : P3703540434246604746.Spec := by
  intro n
  simp only [A016971, Nat.add_sub_cancel, A016971.P3703540434246604746.a, A016971.P16829329651816979839.a, A017643, A017643.P6451620853756470988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016971

/-! ## A016971.P16243391240301232961

`sqrt(A016970(n)^3)`
-/

namespace A016971.P16243391240301232961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016970 n ^ 3 : ℝ)

end

end A016971.P16243391240301232961

namespace A016971

/-- `sqrt(A016970(n)^3)` -/
def P16243391240301232961.Spec : Prop :=
  ∀ n, P16243391240301232961.a n = (A016971 n : ℝ)

end A016971

/-! ## A016971.P10925907868249298561

`floor(sqrt(A016969(n)^6+1))`
-/

namespace A016971.P10925907868249298561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A016969 n ^ 6 + 1)

end

end A016971.P10925907868249298561

namespace A016971

/-- `floor(sqrt(A016969(n)^6+1))` -/
def P10925907868249298561.Spec : Prop :=
  ∀ n, P10925907868249298561.a n = A016971 n

end A016971

/-! ## A016971.P11548768692213752043

`A016969(n)*A016970(n)`
-/

namespace A016971.P11548768692213752043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n * A016970 n

end

end A016971.P11548768692213752043

namespace A016971

/-- `A016969(n)*A016970(n)` -/
def P11548768692213752043.Spec : Prop :=
  ∀ n, P11548768692213752043.a n = A016971 n

theorem P11548768692213752043.correct : P11548768692213752043.Spec := by
  intro n
  simp only [A016971, Nat.add_sub_cancel, A016971.P11548768692213752043.a, A016971.P16829329651816979839.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016971

/-! ## A016971.P10933861490331627460

`A016972(n)/A016969(n)`
-/

namespace A016971.P10933861490331627460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016972 n : ℚ) / (A016969 n : ℚ)

end

end A016971.P10933861490331627460

namespace A016971

/-- `A016972(n)/A016969(n)` -/
def P10933861490331627460.Spec : Prop :=
  ∀ n, P10933861490331627460.a n = (A016971 n : ℚ)

end A016971

/-! ## A016971.P7691765143010787242

`A016973(n)/A016970(n)`
-/

namespace A016971.P7691765143010787242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016973 n : ℚ) / (A016970 n : ℚ)

end

end A016971.P7691765143010787242

namespace A016971

/-- `A016973(n)/A016970(n)` -/
def P7691765143010787242.Spec : Prop :=
  ∀ n, P7691765143010787242.a n = (A016971 n : ℚ)

end A016971

/-! ## A016971.P2517864883148274552

`A016975(n)/A016972(n)`
-/

namespace A016971.P2517864883148274552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 n : ℚ) / (A016972 n : ℚ)

end

end A016971.P2517864883148274552

namespace A016971

/-- `A016975(n)/A016972(n)` -/
def P2517864883148274552.Spec : Prop :=
  ∀ n, P2517864883148274552.a n = (A016971 n : ℚ)

end A016971

/-! ## A016971.P12618605842773873396

`A016976(n)/A016973(n)`
-/

namespace A016971.P12618605842773873396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 n : ℚ) / (A016973 n : ℚ)

end

end A016971.P12618605842773873396

namespace A016971

/-- `A016976(n)/A016973(n)` -/
def P12618605842773873396.Spec : Prop :=
  ∀ n, P12618605842773873396.a n = (A016971 n : ℚ)

end A016971

/-! ## A016971.P14407798481355928571

`A016977(n)/A016974(n)`
-/

namespace A016971.P14407798481355928571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 n : ℚ) / (A016974 n : ℚ)

end

end A016971.P14407798481355928571

namespace A016971

/-- `A016977(n)/A016974(n)` -/
def P14407798481355928571.Spec : Prop :=
  ∀ n, P14407798481355928571.a n = (A016971 n : ℚ)

end A016971

/-! ## A016971.P3626604339216679829

`A016978(n)/A016975(n)`
-/

namespace A016971.P3626604339216679829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016978 n : ℚ) / (A016975 n : ℚ)

end

end A016971.P3626604339216679829

namespace A016971

/-- `A016978(n)/A016975(n)` -/
def P3626604339216679829.Spec : Prop :=
  ∀ n, P3626604339216679829.a n = (A016971 n : ℚ)

end A016971

/-! ## A016971.P4464636023365646988

`A016973(n)%A017643(n)`
-/

namespace A016971.P4464636023365646988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A017643 n)

end

end A016971.P4464636023365646988

namespace A016971

/-- `A016973(n)%A017643(n)` -/
def P4464636023365646988.Spec : Prop :=
  ∀ n, P4464636023365646988.a n = A016971 n

end A016971

/-! ## A016971.P11407349497238938784

`A016975(n)%A017643(n)`
-/

namespace A016971.P11407349497238938784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A017643 n)

end

end A016971.P11407349497238938784

namespace A016971

/-- `A016975(n)%A017643(n)` -/
def P11407349497238938784.Spec : Prop :=
  ∀ n, P11407349497238938784.a n = A016971 n

end A016971

/-! ## A016971.P9752605288598597391

`gcd(A016972(n), A017643(n))`
-/

namespace A016971.P9752605288598597391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016972 n) (A017643 n)

end

end A016971.P9752605288598597391

namespace A016971

/-- `gcd(A016972(n), A017643(n))` -/
def P9752605288598597391.Spec : Prop :=
  ∀ n, (P9752605288598597391.a n : ℤ) = A016971 n

end A016971

/-! ## A016971.P953238543339758970

`∪[A017583(n), A017655(n)]`
-/

namespace A016971.P953238543339758970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016971.P953238543339758970

namespace A016971

/-- `∪[A017583(n), A017655(n)]` -/
def P953238543339758970.Spec : Prop :=
  ∀ n, (P953238543339758970.a n : ℤ) = A016971 n

end A016971

/-!
# A016972: a(n) = (6*n + 5)^4.

The programs for A016972, the canonical program `A016972.P18248330829088465920` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016972 has offset 0).

The definition of A016972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)^4` (program `A016972.P18248330829088465920`, by `A016972.P18248330829088465920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016972.P18248330829088465920

`(6*n+5)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016972

/-- `(6*n+5)^4` -/
def P18248330829088465920.Spec : Prop :=
  ∀ n, (P18248330829088465920.a n : ℤ) = A016972 n

theorem P18248330829088465920.correct : P18248330829088465920.Spec := by
  intro n
  simp only [A016972]

end A016972

/-! ## A016972.P16119966538511509614

`A016970(n)²`
-/

namespace A016972.P16119966538511509614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n ^ 2

end

end A016972.P16119966538511509614

namespace A016972

/-- `A016970(n)²` -/
def P16119966538511509614.Spec : Prop :=
  ∀ n, P16119966538511509614.a n = A016972 n

theorem P16119966538511509614.correct : P16119966538511509614.Spec := by
  intro n
  simp only [A016972, Nat.add_sub_cancel, A016972.P16119966538511509614.a, A016972.P18248330829088465920.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016972

/-! ## A016972.P11192394488314521980

`record[(lcm(2, n+3)+n-1)^4]`
-/

namespace A016972.P11192394488314521980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 3) : ℤ) + ((n : ℤ) - 1)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016972.P11192394488314521980

namespace A016972

/-- `record[(lcm(2, n+3)+n-1)^4]` -/
def P11192394488314521980.Spec : Prop :=
  ∀ n, P11192394488314521980.a n = A016972 n

end A016972

/-! ## A016972.P814661851578393658

`record[(lcm(4, n+1)-(n-1))²²]`
-/

namespace A016972.P814661851578393658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 4 (n + 1) : ℤ) - ((n : ℤ) - 1)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016972.P814661851578393658

namespace A016972

/-- `record[(lcm(4, n+1)-(n-1))²²]` -/
def P814661851578393658.Spec : Prop :=
  ∀ n, P814661851578393658.a n = A016972 n

end A016972

/-! ## A016972.P14820725891859303093

`record[(2*xor(1, n)+n+3)²²]`
-/

namespace A016972.P14820725891859303093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.xor 1 n + (n + 3)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016972.P14820725891859303093

namespace A016972

/-- `record[(2*xor(1, n)+n+3)²²]` -/
def P14820725891859303093.Spec : Prop :=
  ∀ n, (P14820725891859303093.a n : ℤ) = A016972 n

end A016972

/-! ## A016972.P406532547876857540

`or(1, (3*(2*n+1)+2)²²)`
-/

namespace A016972.P406532547876857540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (((3 * (2 * n + 1) + 2) ^ 2) ^ 2)

end

end A016972.P406532547876857540

namespace A016972

/-- `or(1, (3*(2*n+1)+2)²²)` -/
def P406532547876857540.Spec : Prop :=
  ∀ n, (P406532547876857540.a n : ℤ) = A016972 n

end A016972

/-! ## A016972.P3289391818465573492

`(6*(n+1)-gcd(n, n+1))²²`
-/

namespace A016972.P3289391818465573492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((6 * (n + 1) : ℤ) - (Nat.gcd n (n + 1) : ℤ)) ^ 2) ^ 2

end

end A016972.P3289391818465573492

namespace A016972

/-- `(6*(n+1)-gcd(n, n+1))²²` -/
def P3289391818465573492.Spec : Prop :=
  ∀ n, P3289391818465573492.a n = A016972 n

theorem P3289391818465573492.correct : P3289391818465573492.Spec := by
  intro n
  simp only [A016972, Nat.add_sub_cancel, A016972.P3289391818465573492.a, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A016972

/-! ## A016972.P15511700646689668793

`(∑[a(n-1)+2]-n²)²²` with `a(0)=5`
-/

namespace A016972.P15511700646689668793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)) ^ 2) ^ 2

end

end A016972.P15511700646689668793

namespace A016972

/-- `(∑[a(n-1)+2]-n²)²²` -/
def P15511700646689668793.Spec : Prop :=
  ∀ n, P15511700646689668793.a n = A016972 n

end A016972

/-! ## A016972.P15779041924911046931

`record[(gcd(n+3, n-3)+n+2)^4]`
-/

namespace A016972.P15779041924911046931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) + (n + 2)) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016972.P15779041924911046931

namespace A016972

/-- `record[(gcd(n+3, n-3)+n+2)^4]` -/
def P15779041924911046931.Spec : Prop :=
  ∀ n, (P15779041924911046931.a n : ℤ) = A016972 n

end A016972

/-! ## A016972.P14834741541328590092

`Δ[lcm(2*n+1, 2*n)-n²]²²`
-/

namespace A016972.P14834741541328590092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (2 * n) : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A016972.P14834741541328590092

namespace A016972

/-- `Δ[lcm(2*n+1, 2*n)-n²]²²` -/
def P14834741541328590092.Spec : Prop :=
  ∀ n, P14834741541328590092.a n = A016972 n

end A016972

/-! ## A016972.P13025481623162106180

`∩[(2*n+1)², (2*n+n+2)²]²`
-/

namespace A016972.P13025481623162106180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 2)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2

end

end A016972.P13025481623162106180

namespace A016972

/-- `∩[(2*n+1)², (2*n+n+2)²]²` -/
def P13025481623162106180.Spec : Prop :=
  ∀ n, (P13025481623162106180.a n : ℤ) = A016972 n

end A016972

/-! ## A016972.P649873524683629124

`sqrt(A016976(n))`
-/

namespace A016972.P649873524683629124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016976 n : ℝ)

end

end A016972.P649873524683629124

namespace A016972

/-- `sqrt(A016976(n))` -/
def P649873524683629124.Spec : Prop :=
  ∀ n, P649873524683629124.a n = (A016972 n : ℝ)

end A016972

/-! ## A016972.P5587145557721725638

`A016969(n)²²`
-/

namespace A016972.P5587145557721725638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n ^ 2) ^ 2

end

end A016972.P5587145557721725638

namespace A016972

/-- `A016969(n)²²` -/
def P5587145557721725638.Spec : Prop :=
  ∀ n, P5587145557721725638.a n = A016972 n

theorem P5587145557721725638.correct : P5587145557721725638.Spec := by
  intro n
  simp only [A016972, Nat.add_sub_cancel, A016972.P5587145557721725638.a, A016972.P18248330829088465920.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016972

/-! ## A016972.P2009588475068585638

`(A017642(n)/4)²`
-/

namespace A016972.P2009588475068585638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017642 n : ℚ) / 4) ^ 2

end

end A016972.P2009588475068585638

namespace A016972

/-- `(A017642(n)/4)²` -/
def P2009588475068585638.Spec : Prop :=
  ∀ n, P2009588475068585638.a n = (A016972 n : ℚ)

theorem P2009588475068585638.correct : P2009588475068585638.Spec := by
  intro n
  simp only [A016972, Nat.add_sub_cancel, A016972.P2009588475068585638.a, A016972.P18248330829088465920.a, A017642, A017642.P329126741911215366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016972

/-! ## A016972.P16149737771766552652

`(A016957(n)+1)²²`
-/

namespace A016972.P16149737771766552652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016957 n + 1) ^ 2) ^ 2

end

end A016972.P16149737771766552652

namespace A016972

/-- `(A016957(n)+1)²²` -/
def P16149737771766552652.Spec : Prop :=
  ∀ n, P16149737771766552652.a n = A016972 n

theorem P16149737771766552652.correct : P16149737771766552652.Spec := by
  intro n
  simp only [A016972, Nat.add_sub_cancel, A016972.P16149737771766552652.a, A016972.P18248330829088465920.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016972

/-! ## A016972.P5940572866966536574

`(A016945(n)+2)²²`
-/

namespace A016972.P5940572866966536574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016945 n + 2) ^ 2) ^ 2

end

end A016972.P5940572866966536574

namespace A016972

/-- `(A016945(n)+2)²²` -/
def P5940572866966536574.Spec : Prop :=
  ∀ n, P5940572866966536574.a n = A016972 n

theorem P5940572866966536574.correct : P5940572866966536574.Spec := by
  intro n
  simp only [A016972, Nat.add_sub_cancel, A016972.P5940572866966536574.a, A016972.P18248330829088465920.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016972

/-! ## A016972.P816064799191685331

`(A016933(n)+3)²²`
-/

namespace A016972.P816064799191685331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016933 n + 3) ^ 2) ^ 2

end

end A016972.P816064799191685331

namespace A016972

/-- `(A016933(n)+3)²²` -/
def P816064799191685331.Spec : Prop :=
  ∀ n, P816064799191685331.a n = A016972 n

theorem P816064799191685331.correct : P816064799191685331.Spec := by
  intro n
  simp only [A016972, Nat.add_sub_cancel, A016972.P816064799191685331.a, A016972.P18248330829088465920.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016972

/-! ## A016972.P13158833392247480072

`(A017641(n)/2)²²`
-/

namespace A016972.P13158833392247480072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017641 n : ℚ) / 2) ^ 2) ^ 2

end

end A016972.P13158833392247480072

namespace A016972

/-- `(A017641(n)/2)²²` -/
def P13158833392247480072.Spec : Prop :=
  ∀ n, P13158833392247480072.a n = (A016972 n : ℚ)

theorem P13158833392247480072.correct : P13158833392247480072.Spec := by
  intro n
  simp only [A016972, Nat.add_sub_cancel, A016972.P13158833392247480072.a, A016972.P18248330829088465920.a, A017641, A017641.P7179824184075428685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016972

/-!
# A016973: a(n) = (6*n + 5)^5.

The programs for A016973, the canonical program `A016973.P651106833153438276` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016973 has offset 0).

The definition of A016973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)^5` (program `A016973.P651106833153438276`, by `A016973.P651106833153438276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016973.P651106833153438276

`(6*n+5)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016973

/-- `(6*n+5)^5` -/
def P651106833153438276.Spec : Prop :=
  ∀ n, (P651106833153438276.a n : ℤ) = A016973 n

theorem P651106833153438276.correct : P651106833153438276.Spec := by
  intro n
  simp only [A016973]

end A016973

/-! ## A016973.P13800707635823143578

`record[(lcm(2, n+3)+n-1)^5]`
-/

namespace A016973.P13800707635823143578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 3) : ℤ) + ((n : ℤ) - 1)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016973.P13800707635823143578

namespace A016973

/-- `record[(lcm(2, n+3)+n-1)^5]` -/
def P13800707635823143578.Spec : Prop :=
  ∀ n, P13800707635823143578.a n = A016973 n

end A016973

/-! ## A016973.P5310407882997456541

`record[(gcd(n+3, n-3)+n+2)^5]`
-/

namespace A016973.P5310407882997456541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 3) + (n + 2)) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016973.P5310407882997456541

namespace A016973

/-- `record[(gcd(n+3, n-3)+n+2)^5]` -/
def P5310407882997456541.Spec : Prop :=
  ∀ n, (P5310407882997456541.a n : ℤ) = A016973 n

end A016973

/-! ## A016973.P4759068948065018130

`sqrt(A016978(n))`
-/

namespace A016973.P4759068948065018130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016978 n : ℝ)

end

end A016973.P4759068948065018130

namespace A016973

/-- `sqrt(A016978(n))` -/
def P4759068948065018130.Spec : Prop :=
  ∀ n, P4759068948065018130.a n = (A016973 n : ℝ)

end A016973

/-! ## A016973.P15165033989717172663

`sqrt(A016970(n)^5)`
-/

namespace A016973.P15165033989717172663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016970 n ^ 5 : ℝ)

end

end A016973.P15165033989717172663

namespace A016973

/-- `sqrt(A016970(n)^5)` -/
def P15165033989717172663.Spec : Prop :=
  ∀ n, P15165033989717172663.a n = (A016973 n : ℝ)

end A016973

/-! ## A016973.P6336187165456842509

`or(1, A016969(n)^5)`
-/

namespace A016973.P6336187165456842509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A016969 n ^ 5)

end

end A016973.P6336187165456842509

namespace A016973

/-- `or(1, A016969(n)^5)` -/
def P6336187165456842509.Spec : Prop :=
  ∀ n, P6336187165456842509.a n = A016973 n

end A016973

/-! ## A016973.P2268628834636046906

`A016969(n)*A016972(n)`
-/

namespace A016973.P2268628834636046906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n * A016972 n

end

end A016973.P2268628834636046906

namespace A016973

/-- `A016969(n)*A016972(n)` -/
def P2268628834636046906.Spec : Prop :=
  ∀ n, P2268628834636046906.a n = A016973 n

theorem P2268628834636046906.correct : P2268628834636046906.Spec := by
  intro n
  simp only [A016973, Nat.add_sub_cancel, A016973.P2268628834636046906.a, A016973.P651106833153438276.a, A016969, A016969.P9377817521032485226.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016973

/-! ## A016973.P7687119397848932636

`A016970(n)*A016971(n)`
-/

namespace A016973.P7687119397848932636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n * A016971 n

end

end A016973.P7687119397848932636

namespace A016973

/-- `A016970(n)*A016971(n)` -/
def P7687119397848932636.Spec : Prop :=
  ∀ n, P7687119397848932636.a n = A016973 n

theorem P7687119397848932636.correct : P7687119397848932636.Spec := by
  intro n
  simp only [A016973, Nat.add_sub_cancel, A016973.P7687119397848932636.a, A016973.P651106833153438276.a, A016970, A016970.P15900235009038966583.a, A016971, A016971.P16829329651816979839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016973

/-! ## A016973.P16092464967945094474

`A016974(n)/A016969(n)`
-/

namespace A016973.P16092464967945094474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016974 n : ℚ) / (A016969 n : ℚ)

end

end A016973.P16092464967945094474

namespace A016973

/-- `A016974(n)/A016969(n)` -/
def P16092464967945094474.Spec : Prop :=
  ∀ n, P16092464967945094474.a n = (A016973 n : ℚ)

end A016973

/-! ## A016973.P3096053847060453572

`A016975(n)/A016970(n)`
-/

namespace A016973.P3096053847060453572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 n : ℚ) / (A016970 n : ℚ)

end

end A016973.P3096053847060453572

namespace A016973

/-- `A016975(n)/A016970(n)` -/
def P3096053847060453572.Spec : Prop :=
  ∀ n, P3096053847060453572.a n = (A016973 n : ℚ)

end A016973

/-! ## A016973.P2994247400775318313

`A016976(n)/A016971(n)`
-/

namespace A016973.P2994247400775318313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 n : ℚ) / (A016971 n : ℚ)

end

end A016973.P2994247400775318313

namespace A016973

/-- `A016976(n)/A016971(n)` -/
def P2994247400775318313.Spec : Prop :=
  ∀ n, P2994247400775318313.a n = (A016973 n : ℚ)

end A016973

/-! ## A016973.P4913677364407638850

`A016977(n)/A016972(n)`
-/

namespace A016973.P4913677364407638850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 n : ℚ) / (A016972 n : ℚ)

end

end A016973.P4913677364407638850

namespace A016973

/-- `A016977(n)/A016972(n)` -/
def P4913677364407638850.Spec : Prop :=
  ∀ n, P4913677364407638850.a n = (A016973 n : ℚ)

end A016973

/-! ## A016973.P909902437132305506

`gcd(A016974(n), A017645(n))`
-/

namespace A016973.P909902437132305506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016974 n) (A017645 n)

end

end A016973.P909902437132305506

namespace A016973

/-- `gcd(A016974(n), A017645(n))` -/
def P909902437132305506.Spec : Prop :=
  ∀ n, (P909902437132305506.a n : ℤ) = A016973 n

end A016973

/-! ## A016973.P3930423213664541028

`∪[A017585(n), A017657(n)]`
-/

namespace A016973.P3930423213664541028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016973.P3930423213664541028

namespace A016973

/-- `∪[A017585(n), A017657(n)]` -/
def P3930423213664541028.Spec : Prop :=
  ∀ n, (P3930423213664541028.a n : ℤ) = A016973 n

end A016973

/-! ## A016973.P17936260218780235150

`A016969(n)²*A016971(n)`
-/

namespace A016973.P17936260218780235150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n ^ 2 * A016971 n

end

end A016973.P17936260218780235150

namespace A016973

/-- `A016969(n)²*A016971(n)` -/
def P17936260218780235150.Spec : Prop :=
  ∀ n, P17936260218780235150.a n = A016973 n

theorem P17936260218780235150.correct : P17936260218780235150.Spec := by
  intro n
  simp only [A016973, Nat.add_sub_cancel, A016973.P17936260218780235150.a, A016973.P651106833153438276.a, A016969, A016969.P9377817521032485226.a, A016971, A016971.P16829329651816979839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016973

/-! ## A016973.P13621226615081156046

`A016970(n)²*A016969(n)`
-/

namespace A016973.P13621226615081156046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n ^ 2 * A016969 n

end

end A016973.P13621226615081156046

namespace A016973

/-- `A016970(n)²*A016969(n)` -/
def P13621226615081156046.Spec : Prop :=
  ∀ n, P13621226615081156046.a n = A016973 n

theorem P13621226615081156046.correct : P13621226615081156046.Spec := by
  intro n
  simp only [A016973, Nat.add_sub_cancel, A016973.P13621226615081156046.a, A016973.P651106833153438276.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016973

/-! ## A016973.P5612513869127820989

`A016972(n)²/A016971(n)`
-/

namespace A016973.P5612513869127820989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016972 n ^ 2 : ℚ) / (A016971 n : ℚ)

end

end A016973.P5612513869127820989

namespace A016973

/-- `A016972(n)²/A016971(n)` -/
def P5612513869127820989.Spec : Prop :=
  ∀ n, P5612513869127820989.a n = (A016973 n : ℚ)

end A016973

/-! ## A016973.P12233013166259136965

`A016975(n)/A016969(n)²`
-/

namespace A016973.P12233013166259136965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 n : ℚ) / (A016969 n ^ 2 : ℚ)

end

end A016973.P12233013166259136965

namespace A016973

/-- `A016975(n)/A016969(n)²` -/
def P12233013166259136965.Spec : Prop :=
  ∀ n, P12233013166259136965.a n = (A016973 n : ℚ)

end A016973

/-! ## A016973.P3465620911165380850

`A016977(n)/A016970(n)²`
-/

namespace A016973.P3465620911165380850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 n : ℚ) / (A016970 n ^ 2 : ℚ)

end

end A016973.P3465620911165380850

namespace A016973

/-- `A016977(n)/A016970(n)²` -/
def P3465620911165380850.Spec : Prop :=
  ∀ n, P3465620911165380850.a n = (A016973 n : ℚ)

end A016973

/-! ## A016973.P17328616411354299363

`A016977(n)/A016969(n)²²`
-/

namespace A016973.P17328616411354299363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 n : ℚ) / ((A016969 n ^ 2) ^ 2 : ℚ)

end

end A016973.P17328616411354299363

namespace A016973

/-- `A016977(n)/A016969(n)²²` -/
def P17328616411354299363.Spec : Prop :=
  ∀ n, P17328616411354299363.a n = (A016973 n : ℚ)

end A016973

/-!
# A016974: a(n) = (6*n + 5)^6.

The programs for A016974, the canonical program `A016974.P548464748958973466` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016974 has offset 0).

The definition of A016974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)^6` (program `A016974.P548464748958973466`, by `A016974.P548464748958973466.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016974.P548464748958973466

`(6*n+5)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016974

/-- `(6*n+5)^6` -/
def P548464748958973466.Spec : Prop :=
  ∀ n, (P548464748958973466.a n : ℤ) = A016974 n

theorem P548464748958973466.correct : P548464748958973466.Spec := by
  intro n
  simp only [A016974]

end A016974

/-! ## A016974.P5979906485319727772

`A016971(n)²`
-/

namespace A016974.P5979906485319727772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 n ^ 2

end

end A016974.P5979906485319727772

namespace A016974

/-- `A016971(n)²` -/
def P5979906485319727772.Spec : Prop :=
  ∀ n, P5979906485319727772.a n = A016974 n

theorem P5979906485319727772.correct : P5979906485319727772.Spec := by
  intro n
  simp only [A016974, Nat.add_sub_cancel, A016974.P5979906485319727772.a, A016974.P548464748958973466.a, A016971, A016971.P16829329651816979839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016974

/-! ## A016974.P16316556658837634200

`(A017643(n)/8)²`
-/

namespace A016974.P16316556658837634200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017643 n : ℚ) / 8) ^ 2

end

end A016974.P16316556658837634200

namespace A016974

/-- `(A017643(n)/8)²` -/
def P16316556658837634200.Spec : Prop :=
  ∀ n, P16316556658837634200.a n = (A016974 n : ℚ)

theorem P16316556658837634200.correct : P16316556658837634200.Spec := by
  intro n
  simp only [A016974, Nat.add_sub_cancel, A016974.P16316556658837634200.a, A016974.P548464748958973466.a, A017643, A017643.P6451620853756470988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016974

/-! ## A016974.P17774714195945793452

`sqrt(A016972(n)^3)`
-/

namespace A016974.P17774714195945793452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016972 n ^ 3 : ℝ)

end

end A016974.P17774714195945793452

namespace A016974

/-- `sqrt(A016972(n)^3)` -/
def P17774714195945793452.Spec : Prop :=
  ∀ n, P17774714195945793452.a n = (A016974 n : ℝ)

end A016974

/-! ## A016974.P559484489839367640

`A016969(n)*A016973(n)`
-/

namespace A016974.P559484489839367640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n * A016973 n

end

end A016974.P559484489839367640

namespace A016974

/-- `A016969(n)*A016973(n)` -/
def P559484489839367640.Spec : Prop :=
  ∀ n, P559484489839367640.a n = A016974 n

theorem P559484489839367640.correct : P559484489839367640.Spec := by
  intro n
  simp only [A016974, Nat.add_sub_cancel, A016974.P559484489839367640.a, A016974.P548464748958973466.a, A016969, A016969.P9377817521032485226.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016974

/-! ## A016974.P15275358497640462079

`A016970(n)*A016972(n)`
-/

namespace A016974.P15275358497640462079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n * A016972 n

end

end A016974.P15275358497640462079

namespace A016974

/-- `A016970(n)*A016972(n)` -/
def P15275358497640462079.Spec : Prop :=
  ∀ n, P15275358497640462079.a n = A016974 n

theorem P15275358497640462079.correct : P15275358497640462079.Spec := by
  intro n
  simp only [A016974, Nat.add_sub_cancel, A016974.P15275358497640462079.a, A016974.P548464748958973466.a, A016970, A016970.P15900235009038966583.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016974

/-! ## A016974.P2580493371969978656

`A016975(n)/A016969(n)`
-/

namespace A016974.P2580493371969978656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 n : ℚ) / (A016969 n : ℚ)

end

end A016974.P2580493371969978656

namespace A016974

/-- `A016975(n)/A016969(n)` -/
def P2580493371969978656.Spec : Prop :=
  ∀ n, P2580493371969978656.a n = (A016974 n : ℚ)

end A016974

/-! ## A016974.P8396333105742627901

`A016976(n)/A016970(n)`
-/

namespace A016974.P8396333105742627901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 n : ℚ) / (A016970 n : ℚ)

end

end A016974.P8396333105742627901

namespace A016974

/-- `A016976(n)/A016970(n)` -/
def P8396333105742627901.Spec : Prop :=
  ∀ n, P8396333105742627901.a n = (A016974 n : ℚ)

end A016974

/-! ## A016974.P18075473477905767300

`A016978(n)/A016972(n)`
-/

namespace A016974.P18075473477905767300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016978 n : ℚ) / (A016972 n : ℚ)

end

end A016974.P18075473477905767300

namespace A016974

/-- `A016978(n)/A016972(n)` -/
def P18075473477905767300.Spec : Prop :=
  ∀ n, P18075473477905767300.a n = (A016974 n : ℚ)

end A016974

/-! ## A016974.P8223983785850627122

`gcd(A016975(n), A017646(n))`
-/

namespace A016974.P8223983785850627122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016975 n) (A017646 n)

end

end A016974.P8223983785850627122

namespace A016974

/-- `gcd(A016975(n), A017646(n))` -/
def P8223983785850627122.Spec : Prop :=
  ∀ n, (P8223983785850627122.a n : ℤ) = A016974 n

end A016974

/-! ## A016974.P17855547300931114125

`∪[A017586(n), A017658(n)]`
-/

namespace A016974.P17855547300931114125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017658 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A016974.P17855547300931114125

namespace A016974

/-- `∪[A017586(n), A017658(n)]` -/
def P17855547300931114125.Spec : Prop :=
  ∀ n, (P17855547300931114125.a n : ℤ) = A016974 n

end A016974

/-! ## A016974.P8800011991830328209

`(A016969(n)*A016970(n))²`
-/

namespace A016974.P8800011991830328209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n * A016970 n) ^ 2

end

end A016974.P8800011991830328209

namespace A016974

/-- `(A016969(n)*A016970(n))²` -/
def P8800011991830328209.Spec : Prop :=
  ∀ n, P8800011991830328209.a n = A016974 n

theorem P8800011991830328209.correct : P8800011991830328209.Spec := by
  intro n
  simp only [A016974, Nat.add_sub_cancel, A016974.P8800011991830328209.a, A016974.P548464748958973466.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016974

/-! ## A016974.P8286296802185630998

`A016969(n)²*A016972(n)`
-/

namespace A016974.P8286296802185630998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n ^ 2 * A016972 n

end

end A016974.P8286296802185630998

namespace A016974

/-- `A016969(n)²*A016972(n)` -/
def P8286296802185630998.Spec : Prop :=
  ∀ n, P8286296802185630998.a n = A016974 n

theorem P8286296802185630998.correct : P8286296802185630998.Spec := by
  intro n
  simp only [A016974, Nat.add_sub_cancel, A016974.P8286296802185630998.a, A016974.P548464748958973466.a, A016969, A016969.P9377817521032485226.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016974

/-! ## A016974.P9685858176026234219

`(A016973(n)/A016970(n))²`
-/

namespace A016974.P9685858176026234219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016973 n : ℚ) / (A016970 n : ℚ)) ^ 2

end

end A016974.P9685858176026234219

namespace A016974

/-- `(A016973(n)/A016970(n))²` -/
def P9685858176026234219.Spec : Prop :=
  ∀ n, P9685858176026234219.a n = (A016974 n : ℚ)

end A016974

/-! ## A016974.P14259311365090365328

`A016973(n)²/A016972(n)`
-/

namespace A016974.P14259311365090365328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016973 n ^ 2 : ℚ) / (A016972 n : ℚ)

end

end A016974.P14259311365090365328

namespace A016974

/-- `A016973(n)²/A016972(n)` -/
def P14259311365090365328.Spec : Prop :=
  ∀ n, P14259311365090365328.a n = (A016974 n : ℚ)

end A016974

/-! ## A016974.P12432111024116555785

`(A016975(n)/A016972(n))²`
-/

namespace A016974.P12432111024116555785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016975 n : ℚ) / (A016972 n : ℚ)) ^ 2

end

end A016974.P12432111024116555785

namespace A016974

/-- `(A016975(n)/A016972(n))²` -/
def P12432111024116555785.Spec : Prop :=
  ∀ n, P12432111024116555785.a n = (A016974 n : ℚ)

end A016974

/-! ## A016974.P3019811029558048206

`A016976(n)/A016969(n)²`
-/

namespace A016974.P3019811029558048206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 n : ℚ) / (A016969 n ^ 2 : ℚ)

end

end A016974.P3019811029558048206

namespace A016974

/-- `A016976(n)/A016969(n)²` -/
def P3019811029558048206.Spec : Prop :=
  ∀ n, P3019811029558048206.a n = (A016974 n : ℚ)

end A016974

/-! ## A016974.P17983447200810282655

`(A016976(n)/A016973(n))²`
-/

namespace A016974.P17983447200810282655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016976 n : ℚ) / (A016973 n : ℚ)) ^ 2

end

end A016974.P17983447200810282655

namespace A016974

/-- `(A016976(n)/A016973(n))²` -/
def P17983447200810282655.Spec : Prop :=
  ∀ n, P17983447200810282655.a n = (A016974 n : ℚ)

end A016974

/-! ## A016974.P17697124290972121440

`A016978(n)/A016970(n)²`
-/

namespace A016974.P17697124290972121440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016978 n : ℚ) / (A016970 n ^ 2 : ℚ)

end

end A016974.P17697124290972121440

namespace A016974

/-- `A016978(n)/A016970(n)²` -/
def P17697124290972121440.Spec : Prop :=
  ∀ n, P17697124290972121440.a n = (A016974 n : ℚ)

end A016974

/-!
# A016975: a(n) = (6*n + 5)^7.

The programs for A016975, the canonical program `A016975.P2603086275989900620` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016975 has offset 0).

The definition of A016975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)^7` (program `A016975.P2603086275989900620`, by `A016975.P2603086275989900620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016975.P2603086275989900620

`(6*n+5)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016975

/-- `(6*n+5)^7` -/
def P2603086275989900620.Spec : Prop :=
  ∀ n, (P2603086275989900620.a n : ℤ) = A016975 n

theorem P2603086275989900620.correct : P2603086275989900620.Spec := by
  intro n
  simp only [A016975]

end A016975

/-! ## A016975.P14419860423115135519

`(6*n+5)*A016974(n)`
-/

namespace A016975.P14419860423115135519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 5 : ℤ) * A016974 n

end

end A016975.P14419860423115135519

namespace A016975

/-- `(6*n+5)*A016974(n)` -/
def P14419860423115135519.Spec : Prop :=
  ∀ n, P14419860423115135519.a n = A016975 n

theorem P14419860423115135519.correct : P14419860423115135519.Spec := by
  intro n
  simp only [A016975, Nat.add_sub_cancel, A016975.P14419860423115135519.a, A016975.P2603086275989900620.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016975

/-! ## A016975.P17357541247260001257

`A016970(n)*A016973(n)`
-/

namespace A016975.P17357541247260001257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n * A016973 n

end

end A016975.P17357541247260001257

namespace A016975

/-- `A016970(n)*A016973(n)` -/
def P17357541247260001257.Spec : Prop :=
  ∀ n, P17357541247260001257.a n = A016975 n

theorem P17357541247260001257.correct : P17357541247260001257.Spec := by
  intro n
  simp only [A016975, Nat.add_sub_cancel, A016975.P17357541247260001257.a, A016975.P2603086275989900620.a, A016970, A016970.P15900235009038966583.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016975

/-! ## A016975.P6538805007752674284

`A016971(n)*A016972(n)`
-/

namespace A016975.P6538805007752674284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 n * A016972 n

end

end A016975.P6538805007752674284

namespace A016975

/-- `A016971(n)*A016972(n)` -/
def P6538805007752674284.Spec : Prop :=
  ∀ n, P6538805007752674284.a n = A016975 n

theorem P6538805007752674284.correct : P6538805007752674284.Spec := by
  intro n
  simp only [A016975, Nat.add_sub_cancel, A016975.P6538805007752674284.a, A016975.P2603086275989900620.a, A016971, A016971.P16829329651816979839.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016975

/-! ## A016975.P4675623400482636953

`A016976(n)/A016969(n)`
-/

namespace A016975.P4675623400482636953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016976 n : ℚ) / (A016969 n : ℚ)

end

end A016975.P4675623400482636953

namespace A016975

/-- `A016976(n)/A016969(n)` -/
def P4675623400482636953.Spec : Prop :=
  ∀ n, P4675623400482636953.a n = (A016975 n : ℚ)

end A016975

/-! ## A016975.P15598255375466360838

`A016977(n)/A016970(n)`
-/

namespace A016975.P15598255375466360838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 n : ℚ) / (A016970 n : ℚ)

end

end A016975.P15598255375466360838

namespace A016975

/-- `A016977(n)/A016970(n)` -/
def P15598255375466360838.Spec : Prop :=
  ∀ n, P15598255375466360838.a n = (A016975 n : ℚ)

end A016975

/-! ## A016975.P667710109783567348

`A016978(n)/A016971(n)`
-/

namespace A016975.P667710109783567348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016978 n : ℚ) / (A016971 n : ℚ)

end

end A016975.P667710109783567348

namespace A016975

/-- `A016978(n)/A016971(n)` -/
def P667710109783567348.Spec : Prop :=
  ∀ n, P667710109783567348.a n = (A016975 n : ℚ)

end A016975

/-! ## A016975.P11231250228869373823

`A016969(n)²*A016973(n)`
-/

namespace A016975.P11231250228869373823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n ^ 2 * A016973 n

end

end A016975.P11231250228869373823

namespace A016975

/-- `A016969(n)²*A016973(n)` -/
def P11231250228869373823.Spec : Prop :=
  ∀ n, P11231250228869373823.a n = A016975 n

theorem P11231250228869373823.correct : P11231250228869373823.Spec := by
  intro n
  simp only [A016975, Nat.add_sub_cancel, A016975.P11231250228869373823.a, A016975.P2603086275989900620.a, A016969, A016969.P9377817521032485226.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016975

/-! ## A016975.P11930385120136505276

`A016970(n)²*A016971(n)`
-/

namespace A016975.P11930385120136505276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n ^ 2 * A016971 n

end

end A016975.P11930385120136505276

namespace A016975

/-- `A016970(n)²*A016971(n)` -/
def P11930385120136505276.Spec : Prop :=
  ∀ n, P11930385120136505276.a n = A016975 n

theorem P11930385120136505276.correct : P11930385120136505276.Spec := by
  intro n
  simp only [A016975, Nat.add_sub_cancel, A016975.P11930385120136505276.a, A016975.P2603086275989900620.a, A016970, A016970.P15900235009038966583.a, A016971, A016971.P16829329651816979839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016975

/-! ## A016975.P17792477688129245234

`A016971(n)²*A016969(n)`
-/

namespace A016975.P17792477688129245234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 n ^ 2 * A016969 n

end

end A016975.P17792477688129245234

namespace A016975

/-- `A016971(n)²*A016969(n)` -/
def P17792477688129245234.Spec : Prop :=
  ∀ n, P17792477688129245234.a n = A016975 n

theorem P17792477688129245234.correct : P17792477688129245234.Spec := by
  intro n
  simp only [A016975, Nat.add_sub_cancel, A016975.P17792477688129245234.a, A016975.P2603086275989900620.a, A016969, A016969.P9377817521032485226.a, A016971, A016971.P16829329651816979839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016975

/-! ## A016975.P7890446318090350851

`A016972(n)²/A016969(n)`
-/

namespace A016975.P7890446318090350851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016972 n ^ 2 : ℚ) / (A016969 n : ℚ)

end

end A016975.P7890446318090350851

namespace A016975

/-- `A016972(n)²/A016969(n)` -/
def P7890446318090350851.Spec : Prop :=
  ∀ n, P7890446318090350851.a n = (A016975 n : ℚ)

end A016975

/-! ## A016975.P13793231435352640621

`sqrt(A016972(n))*A016973(n)`
-/

namespace A016975.P13793231435352640621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016972 n : ℝ) * (A016973 n : ℝ)

end

end A016975.P13793231435352640621

namespace A016975

/-- `sqrt(A016972(n))*A016973(n)` -/
def P13793231435352640621.Spec : Prop :=
  ∀ n, P13793231435352640621.a n = (A016975 n : ℝ)

end A016975

/-! ## A016975.P3614917352850898888

`A016973(n)²/A016971(n)`
-/

namespace A016975.P3614917352850898888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016973 n ^ 2 : ℚ) / (A016971 n : ℚ)

end

end A016975.P3614917352850898888

namespace A016975

/-- `A016973(n)²/A016971(n)` -/
def P3614917352850898888.Spec : Prop :=
  ∀ n, P3614917352850898888.a n = (A016975 n : ℚ)

end A016975

/-! ## A016975.P7989542982613312662

`sqrt(A016974(n))*A016972(n)`
-/

namespace A016975.P7989542982613312662
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016974 n : ℝ) * (A016972 n : ℝ)

end

end A016975.P7989542982613312662

namespace A016975

/-- `sqrt(A016974(n))*A016972(n)` -/
def P7989542982613312662.Spec : Prop :=
  ∀ n, P7989542982613312662.a n = (A016975 n : ℝ)

end A016975

/-! ## A016975.P13455446771415164834

`A016977(n)/A016969(n)²`
-/

namespace A016975.P13455446771415164834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 n : ℚ) / (A016969 n ^ 2 : ℚ)

end

end A016975.P13455446771415164834

namespace A016975

/-- `A016977(n)/A016969(n)²` -/
def P13455446771415164834.Spec : Prop :=
  ∀ n, P13455446771415164834.a n = (A016975 n : ℚ)

end A016975

/-! ## A016975.P5371497926218750609

`A016970(n)²²/A016969(n)`
-/

namespace A016975.P5371497926218750609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016970 n ^ 2) ^ 2 : ℚ) / (A016969 n : ℚ)

end

end A016975.P5371497926218750609

namespace A016975

/-- `A016970(n)²²/A016969(n)` -/
def P5371497926218750609.Spec : Prop :=
  ∀ n, P5371497926218750609.a n = (A016975 n : ℚ)

end A016975

/-! ## A016975.P6637214596356372595

`A016969(n)*A016970(n)*A016972(n)`
-/

namespace A016975.P6637214596356372595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n * A016970 n * A016972 n

end

end A016975.P6637214596356372595

namespace A016975

/-- `A016969(n)*A016970(n)*A016972(n)` -/
def P6637214596356372595.Spec : Prop :=
  ∀ n, P6637214596356372595.a n = A016975 n

theorem P6637214596356372595.correct : P6637214596356372595.Spec := by
  intro n
  simp only [A016975, Nat.add_sub_cancel, A016975.P6637214596356372595.a, A016975.P2603086275989900620.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016975

/-! ## A016975.P15120157837366914256

`A016970(n)/A016971(n)*A016976(n)`
-/

namespace A016975.P15120157837366914256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016970 n : ℚ) / (A016971 n : ℚ) * (A016976 n : ℚ)

end

end A016975.P15120157837366914256

namespace A016975

/-- `A016970(n)/A016971(n)*A016976(n)` -/
def P15120157837366914256.Spec : Prop :=
  ∀ n, P15120157837366914256.a n = (A016975 n : ℚ)

end A016975

/-! ## A016975.P9098938017405833781

`A016970(n)*A016974(n)/A016969(n)`
-/

namespace A016975.P9098938017405833781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016970 n * A016974 n : ℚ) / (A016969 n : ℚ)

end

end A016975.P9098938017405833781

namespace A016975

/-- `A016970(n)*A016974(n)/A016969(n)` -/
def P9098938017405833781.Spec : Prop :=
  ∀ n, P9098938017405833781.a n = (A016975 n : ℚ)

end A016975

/-!
# A016976: a(n) = (6*n + 5)^8.

The programs for A016976, the canonical program `A016976.P4429947758327785608` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016976 has offset 0).

The definition of A016976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)^8` (program `A016976.P4429947758327785608`, by `A016976.P4429947758327785608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016976.P4429947758327785608

`(6*n+5)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016976

/-- `(6*n+5)^8` -/
def P4429947758327785608.Spec : Prop :=
  ∀ n, (P4429947758327785608.a n : ℤ) = A016976 n

theorem P4429947758327785608.correct : P4429947758327785608.Spec := by
  intro n
  simp only [A016976]

end A016976

/-! ## A016976.P15402488210118830934

`A016972(n)²`
-/

namespace A016976.P15402488210118830934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 n ^ 2

end

end A016976.P15402488210118830934

namespace A016976

/-- `A016972(n)²` -/
def P15402488210118830934.Spec : Prop :=
  ∀ n, P15402488210118830934.a n = A016976 n

theorem P15402488210118830934.correct : P15402488210118830934.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P15402488210118830934.a, A016976.P4429947758327785608.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P1020865679490117703

`(Δ[lcm(2*n+1, n+1)]+2*n)²²²`
-/

namespace A016976.P1020865679490117703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A016976.P1020865679490117703

namespace A016976

/-- `(Δ[lcm(2*n+1, n+1)]+2*n)²²²` -/
def P1020865679490117703.Spec : Prop :=
  ∀ n, P1020865679490117703.a n = A016976 n

end A016976

/-! ## A016976.P3732236724390276309

`A016970(n)²²`
-/

namespace A016976.P3732236724390276309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016970 n ^ 2) ^ 2

end

end A016976.P3732236724390276309

namespace A016976

/-- `A016970(n)²²` -/
def P3732236724390276309.Spec : Prop :=
  ∀ n, P3732236724390276309.a n = A016976 n

theorem P3732236724390276309.correct : P3732236724390276309.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P3732236724390276309.a, A016976.P4429947758327785608.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P2542259288446059198

`(A016969(n)^4)²`
-/

namespace A016976.P2542259288446059198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n ^ 4) ^ 2

end

end A016976.P2542259288446059198

namespace A016976

/-- `(A016969(n)^4)²` -/
def P2542259288446059198.Spec : Prop :=
  ∀ n, P2542259288446059198.a n = A016976 n

theorem P2542259288446059198.correct : P2542259288446059198.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P2542259288446059198.a, A016976.P4429947758327785608.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P1005446464564195527

`(A016957(n)+1)²²²`
-/

namespace A016976.P1005446464564195527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016957 n + 1) ^ 2) ^ 2) ^ 2

end

end A016976.P1005446464564195527

namespace A016976

/-- `(A016957(n)+1)²²²` -/
def P1005446464564195527.Spec : Prop :=
  ∀ n, P1005446464564195527.a n = A016976 n

theorem P1005446464564195527.correct : P1005446464564195527.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P1005446464564195527.a, A016976.P4429947758327785608.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P5973890061003423760

`(A016945(n)+2)²²²`
-/

namespace A016976.P5973890061003423760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016945 n + 2) ^ 2) ^ 2) ^ 2

end

end A016976.P5973890061003423760

namespace A016976

/-- `(A016945(n)+2)²²²` -/
def P5973890061003423760.Spec : Prop :=
  ∀ n, P5973890061003423760.a n = A016976 n

theorem P5973890061003423760.correct : P5973890061003423760.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P5973890061003423760.a, A016976.P4429947758327785608.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P18070878685211041174

`(A016921(n)+4)²²²`
-/

namespace A016976.P18070878685211041174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016921 n + 4) ^ 2) ^ 2) ^ 2

end

end A016976.P18070878685211041174

namespace A016976

/-- `(A016921(n)+4)²²²` -/
def P18070878685211041174.Spec : Prop :=
  ∀ n, P18070878685211041174.a n = A016976 n

theorem P18070878685211041174.correct : P18070878685211041174.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P18070878685211041174.a, A016976.P4429947758327785608.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P570730318897690494

`(A017641(n)/2)²²²`
-/

namespace A016976.P570730318897690494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A017641 n : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A016976.P570730318897690494

namespace A016976

/-- `(A017641(n)/2)²²²` -/
def P570730318897690494.Spec : Prop :=
  ∀ n, P570730318897690494.a n = (A016976 n : ℚ)

theorem P570730318897690494.correct : P570730318897690494.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P570730318897690494.a, A016976.P4429947758327785608.a, A017641, A017641.P7179824184075428685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P11799304171912837365

`(n-A017041(n))²²²`
-/

namespace A016976.P11799304171912837365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017041 n) ^ 2) ^ 2) ^ 2

end

end A016976.P11799304171912837365

namespace A016976

/-- `(n-A017041(n))²²²` -/
def P11799304171912837365.Spec : Prop :=
  ∀ n, P11799304171912837365.a n = A016976 n

theorem P11799304171912837365.correct : P11799304171912837365.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P11799304171912837365.a, A016976.P4429947758327785608.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P2191725374797421330

`(6*n+5)*A016975(n)`
-/

namespace A016976.P2191725374797421330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 5 : ℤ) * A016975 n

end

end A016976.P2191725374797421330

namespace A016976

/-- `(6*n+5)*A016975(n)` -/
def P2191725374797421330.Spec : Prop :=
  ∀ n, P2191725374797421330.a n = A016976 n

theorem P2191725374797421330.correct : P2191725374797421330.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P2191725374797421330.a, A016976.P4429947758327785608.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P13695986197402008860

`A016970(n)*A016974(n)`
-/

namespace A016976.P13695986197402008860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n * A016974 n

end

end A016976.P13695986197402008860

namespace A016976

/-- `A016970(n)*A016974(n)` -/
def P13695986197402008860.Spec : Prop :=
  ∀ n, P13695986197402008860.a n = A016976 n

theorem P13695986197402008860.correct : P13695986197402008860.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P13695986197402008860.a, A016976.P4429947758327785608.a, A016970, A016970.P15900235009038966583.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P4137341914883288429

`A016971(n)*A016973(n)`
-/

namespace A016976.P4137341914883288429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 n * A016973 n

end

end A016976.P4137341914883288429

namespace A016976

/-- `A016971(n)*A016973(n)` -/
def P4137341914883288429.Spec : Prop :=
  ∀ n, P4137341914883288429.a n = A016976 n

theorem P4137341914883288429.correct : P4137341914883288429.Spec := by
  intro n
  simp only [A016976, Nat.add_sub_cancel, A016976.P4137341914883288429.a, A016976.P4429947758327785608.a, A016971, A016971.P16829329651816979839.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016976

/-! ## A016976.P17470358646371591503

`A016977(n)/A016969(n)`
-/

namespace A016976.P17470358646371591503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016977 n : ℚ) / (A016969 n : ℚ)

end

end A016976.P17470358646371591503

namespace A016976

/-- `A016977(n)/A016969(n)` -/
def P17470358646371591503.Spec : Prop :=
  ∀ n, P17470358646371591503.a n = (A016976 n : ℚ)

end A016976

/-! ## A016976.P13279365852163910645

`A016978(n)/A016970(n)`
-/

namespace A016976.P13279365852163910645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016978 n : ℚ) / (A016970 n : ℚ)

end

end A016976.P13279365852163910645

namespace A016976

/-- `A016978(n)/A016970(n)` -/
def P13279365852163910645.Spec : Prop :=
  ∀ n, P13279365852163910645.a n = (A016976 n : ℚ)

end A016976

/-! ## A016976.P6865980230095779251

`(A016977(n)/A016973(n))²`
-/

namespace A016976.P6865980230095779251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016977 n : ℚ) / (A016973 n : ℚ)) ^ 2

end

end A016976.P6865980230095779251

namespace A016976

/-- `(A016977(n)/A016973(n))²` -/
def P6865980230095779251.Spec : Prop :=
  ∀ n, P6865980230095779251.a n = (A016976 n : ℚ)

end A016976

/-! ## A016976.P17093653440717940170

`(A016977(n)/A016975(n))²²`
-/

namespace A016976.P17093653440717940170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A016977 n : ℚ) / (A016975 n : ℚ)) ^ 2) ^ 2

end

end A016976.P17093653440717940170

namespace A016976

/-- `(A016977(n)/A016975(n))²²` -/
def P17093653440717940170.Spec : Prop :=
  ∀ n, P17093653440717940170.a n = (A016976 n : ℚ)

end A016976

/-! ## A016976.P10419130464624549077

`A016971(n)*A016974(n)/A016969(n)`
-/

namespace A016976.P10419130464624549077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016971 n * A016974 n : ℚ) / (A016969 n : ℚ)

end

end A016976.P10419130464624549077

namespace A016976

/-- `A016971(n)*A016974(n)/A016969(n)` -/
def P10419130464624549077.Spec : Prop :=
  ∀ n, P10419130464624549077.a n = (A016976 n : ℚ)

end A016976

/-! ## A016976.P3379629937182100910

`A016972(n)*A016973(n)/A016969(n)`
-/

namespace A016976.P3379629937182100910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016972 n * A016973 n : ℚ) / (A016969 n : ℚ)

end

end A016976.P3379629937182100910

namespace A016976

/-- `A016972(n)*A016973(n)/A016969(n)` -/
def P3379629937182100910.Spec : Prop :=
  ∀ n, P3379629937182100910.a n = (A016976 n : ℚ)

end A016976

/-!
# A016977: a(n) = (6*n + 5)^9.

The programs for A016977, the canonical program `A016977.P697263586240935608` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016977 has offset 0).

The definition of A016977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)^9` (program `A016977.P697263586240935608`, by `A016977.P697263586240935608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016977.P697263586240935608

`(6*n+5)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016977

/-- `(6*n+5)^9` -/
def P697263586240935608.Spec : Prop :=
  ∀ n, (P697263586240935608.a n : ℤ) = A016977 n

theorem P697263586240935608.correct : P697263586240935608.Spec := by
  intro n
  simp only [A016977]

end A016977

/-! ## A016977.P14262340703663788191

`sqrt(A016974(n)^3)`
-/

namespace A016977.P14262340703663788191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016974 n ^ 3 : ℝ)

end

end A016977.P14262340703663788191

namespace A016977

/-- `sqrt(A016974(n)^3)` -/
def P14262340703663788191.Spec : Prop :=
  ∀ n, P14262340703663788191.a n = (A016977 n : ℝ)

end A016977

/-! ## A016977.P9787785360628135307

`(6*n+5)*A016976(n)`
-/

namespace A016977.P9787785360628135307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 5 : ℤ) * A016976 n

end

end A016977.P9787785360628135307

namespace A016977

/-- `(6*n+5)*A016976(n)` -/
def P9787785360628135307.Spec : Prop :=
  ∀ n, P9787785360628135307.a n = A016977 n

theorem P9787785360628135307.correct : P9787785360628135307.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P9787785360628135307.a, A016977.P697263586240935608.a, A016976, A016976.P4429947758327785608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P6502605150499067051

`A016970(n)*A016975(n)`
-/

namespace A016977.P6502605150499067051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n * A016975 n

end

end A016977.P6502605150499067051

namespace A016977

/-- `A016970(n)*A016975(n)` -/
def P6502605150499067051.Spec : Prop :=
  ∀ n, P6502605150499067051.a n = A016977 n

theorem P6502605150499067051.correct : P6502605150499067051.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P6502605150499067051.a, A016977.P697263586240935608.a, A016970, A016970.P15900235009038966583.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P656897639060701146

`A016971(n)*A016974(n)`
-/

namespace A016977.P656897639060701146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 n * A016974 n

end

end A016977.P656897639060701146

namespace A016977

/-- `A016971(n)*A016974(n)` -/
def P656897639060701146.Spec : Prop :=
  ∀ n, P656897639060701146.a n = A016977 n

theorem P656897639060701146.correct : P656897639060701146.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P656897639060701146.a, A016977.P697263586240935608.a, A016971, A016971.P16829329651816979839.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P12697303282600014115

`A016972(n)*A016973(n)`
-/

namespace A016977.P12697303282600014115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 n * A016973 n

end

end A016977.P12697303282600014115

namespace A016977

/-- `A016972(n)*A016973(n)` -/
def P12697303282600014115.Spec : Prop :=
  ∀ n, P12697303282600014115.a n = A016977 n

theorem P12697303282600014115.correct : P12697303282600014115.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P12697303282600014115.a, A016977.P697263586240935608.a, A016972, A016972.P18248330829088465920.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P5568496647860600120

`A016978(n)/A016969(n)`
-/

namespace A016977.P5568496647860600120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016978 n : ℚ) / (A016969 n : ℚ)

end

end A016977.P5568496647860600120

namespace A016977

/-- `A016978(n)/A016969(n)` -/
def P5568496647860600120.Spec : Prop :=
  ∀ n, P5568496647860600120.a n = (A016977 n : ℚ)

end A016977

/-! ## A016977.P3210212628903968597

`A016969(n)²*A016975(n)`
-/

namespace A016977.P3210212628903968597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n ^ 2 * A016975 n

end

end A016977.P3210212628903968597

namespace A016977

/-- `A016969(n)²*A016975(n)` -/
def P3210212628903968597.Spec : Prop :=
  ∀ n, P3210212628903968597.a n = A016977 n

theorem P3210212628903968597.correct : P3210212628903968597.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P3210212628903968597.a, A016977.P697263586240935608.a, A016969, A016969.P9377817521032485226.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P11385629924503310450

`A016970(n)²*A016973(n)`
-/

namespace A016977.P11385629924503310450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n ^ 2 * A016973 n

end

end A016977.P11385629924503310450

namespace A016977

/-- `A016970(n)²*A016973(n)` -/
def P11385629924503310450.Spec : Prop :=
  ∀ n, P11385629924503310450.a n = A016977 n

theorem P11385629924503310450.correct : P11385629924503310450.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P11385629924503310450.a, A016977.P697263586240935608.a, A016970, A016970.P15900235009038966583.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P13800185323535952319

`A016972(n)²*A016969(n)`
-/

namespace A016977.P13800185323535952319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 n ^ 2 * A016969 n

end

end A016977.P13800185323535952319

namespace A016977

/-- `A016972(n)²*A016969(n)` -/
def P13800185323535952319.Spec : Prop :=
  ∀ n, P13800185323535952319.a n = A016977 n

theorem P13800185323535952319.correct : P13800185323535952319.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P13800185323535952319.a, A016977.P697263586240935608.a, A016969, A016969.P9377817521032485226.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P16503635965481804112

`A016973(n)²/A016969(n)`
-/

namespace A016977.P16503635965481804112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016973 n ^ 2 : ℚ) / (A016969 n : ℚ)

end

end A016977.P16503635965481804112

namespace A016977

/-- `A016973(n)²/A016969(n)` -/
def P16503635965481804112.Spec : Prop :=
  ∀ n, P16503635965481804112.a n = (A016977 n : ℚ)

end A016977

/-! ## A016977.P13169793974893270706

`A016970(n)²²*A016969(n)`
-/

namespace A016977.P13169793974893270706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016970 n ^ 2) ^ 2 * A016969 n

end

end A016977.P13169793974893270706

namespace A016977

/-- `A016970(n)²²*A016969(n)` -/
def P13169793974893270706.Spec : Prop :=
  ∀ n, P13169793974893270706.a n = A016977 n

theorem P13169793974893270706.correct : P13169793974893270706.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P13169793974893270706.a, A016977.P697263586240935608.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P2895913153819803892

`A016969(n)*A016970(n)*A016974(n)`
-/

namespace A016977.P2895913153819803892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n * A016970 n * A016974 n

end

end A016977.P2895913153819803892

namespace A016977

/-- `A016969(n)*A016970(n)*A016974(n)` -/
def P2895913153819803892.Spec : Prop :=
  ∀ n, P2895913153819803892.a n = A016977 n

theorem P2895913153819803892.correct : P2895913153819803892.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P2895913153819803892.a, A016977.P697263586240935608.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P2927359681414545390

`A016969(n)*A016971(n)*A016973(n)`
-/

namespace A016977.P2927359681414545390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n * A016971 n * A016973 n

end

end A016977.P2927359681414545390

namespace A016977

/-- `A016969(n)*A016971(n)*A016973(n)` -/
def P2927359681414545390.Spec : Prop :=
  ∀ n, P2927359681414545390.a n = A016977 n

theorem P2927359681414545390.correct : P2927359681414545390.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P2927359681414545390.a, A016977.P697263586240935608.a, A016969, A016969.P9377817521032485226.a, A016971, A016971.P16829329651816979839.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P17360780553763800656

`A016970(n)*A016971(n)*A016972(n)`
-/

namespace A016977.P17360780553763800656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n * A016971 n * A016972 n

end

end A016977.P17360780553763800656

namespace A016977

/-- `A016970(n)*A016971(n)*A016972(n)` -/
def P17360780553763800656.Spec : Prop :=
  ∀ n, P17360780553763800656.a n = A016977 n

theorem P17360780553763800656.correct : P17360780553763800656.Spec := by
  intro n
  simp only [A016977, Nat.add_sub_cancel, A016977.P17360780553763800656.a, A016977.P697263586240935608.a, A016970, A016970.P15900235009038966583.a, A016971, A016971.P16829329651816979839.a, A016972, A016972.P18248330829088465920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016977

/-! ## A016977.P4620968643603051859

`A016973(n)/A016971(n)*A016975(n)`
-/

namespace A016977.P4620968643603051859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016973 n : ℚ) / (A016971 n : ℚ) * (A016975 n : ℚ)

end

end A016977.P4620968643603051859

namespace A016977

/-- `A016973(n)/A016971(n)*A016975(n)` -/
def P4620968643603051859.Spec : Prop :=
  ∀ n, P4620968643603051859.a n = (A016977 n : ℚ)

end A016977

/-! ## A016977.P3023313635697425819

`A016974(n)/A016972(n)*A016975(n)`
-/

namespace A016977.P3023313635697425819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016974 n : ℚ) / (A016972 n : ℚ) * (A016975 n : ℚ)

end

end A016977.P3023313635697425819

namespace A016977

/-- `A016974(n)/A016972(n)*A016975(n)` -/
def P3023313635697425819.Spec : Prop :=
  ∀ n, P3023313635697425819.a n = (A016977 n : ℚ)

end A016977

/-! ## A016977.P10591046894672470681

`A016975(n)/(A016970(n)/A016971(n))²`
-/

namespace A016977.P10591046894672470681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 n : ℚ) / ((A016970 n : ℚ) / (A016971 n : ℚ)) ^ 2

end

end A016977.P10591046894672470681

namespace A016977

/-- `A016975(n)/(A016970(n)/A016971(n))²` -/
def P10591046894672470681.Spec : Prop :=
  ∀ n, P10591046894672470681.a n = (A016977 n : ℚ)

end A016977

/-! ## A016977.P11792000222320254552

`A016975(n)/(A016971(n)/A016972(n))²`
-/

namespace A016977.P11792000222320254552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016975 n : ℚ) / ((A016971 n : ℚ) / (A016972 n : ℚ)) ^ 2

end

end A016977.P11792000222320254552

namespace A016977

/-- `A016975(n)/(A016971(n)/A016972(n))²` -/
def P11792000222320254552.Spec : Prop :=
  ∀ n, P11792000222320254552.a n = (A016977 n : ℚ)

end A016977

/-!
# A016978: a(n) = (6*n + 5)^10.

The programs for A016978, the canonical program `A016978.P8973291223868451169` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016978 has offset 0).

The definition of A016978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*n+5)^10` (program `A016978.P8973291223868451169`, by `A016978.P8973291223868451169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016978.P8973291223868451169

`(6*n+5)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016978

/-- `(6*n+5)^10` -/
def P8973291223868451169.Spec : Prop :=
  ∀ n, (P8973291223868451169.a n : ℤ) = A016978 n

theorem P8973291223868451169.correct : P8973291223868451169.Spec := by
  intro n
  simp only [A016978]

end A016978

/-! ## A016978.P3355079588224496737

`A016973(n)²`
-/

namespace A016978.P3355079588224496737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016973 n ^ 2

end

end A016978.P3355079588224496737

namespace A016978

/-- `A016973(n)²` -/
def P3355079588224496737.Spec : Prop :=
  ∀ n, P3355079588224496737.a n = A016978 n

theorem P3355079588224496737.correct : P3355079588224496737.Spec := by
  intro n
  simp only [A016978, Nat.add_sub_cancel, A016978.P3355079588224496737.a, A016978.P8973291223868451169.a, A016973, A016973.P651106833153438276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016978

/-! ## A016978.P4370579659394838216

`sqrt(A016972(n)^5)`
-/

namespace A016978.P4370579659394838216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016972 n ^ 5 : ℝ)

end

end A016978.P4370579659394838216

namespace A016978

/-- `sqrt(A016972(n)^5)` -/
def P4370579659394838216.Spec : Prop :=
  ∀ n, P4370579659394838216.a n = (A016978 n : ℝ)

end A016978

/-! ## A016978.P8845572323274518542

`A016970(n)*A016976(n)`
-/

namespace A016978.P8845572323274518542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n * A016976 n

end

end A016978.P8845572323274518542

namespace A016978

/-- `A016970(n)*A016976(n)` -/
def P8845572323274518542.Spec : Prop :=
  ∀ n, P8845572323274518542.a n = A016978 n

theorem P8845572323274518542.correct : P8845572323274518542.Spec := by
  intro n
  simp only [A016978, Nat.add_sub_cancel, A016978.P8845572323274518542.a, A016978.P8973291223868451169.a, A016970, A016970.P15900235009038966583.a, A016976, A016976.P4429947758327785608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016978

/-! ## A016978.P10377117624966986453

`A016971(n)*A016975(n)`
-/

namespace A016978.P10377117624966986453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016971 n * A016975 n

end

end A016978.P10377117624966986453

namespace A016978

/-- `A016971(n)*A016975(n)` -/
def P10377117624966986453.Spec : Prop :=
  ∀ n, P10377117624966986453.a n = A016978 n

theorem P10377117624966986453.correct : P10377117624966986453.Spec := by
  intro n
  simp only [A016978, Nat.add_sub_cancel, A016978.P10377117624966986453.a, A016978.P8973291223868451169.a, A016971, A016971.P16829329651816979839.a, A016975, A016975.P2603086275989900620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016978

/-! ## A016978.P17933773147858824060

`A016972(n)*A016974(n)`
-/

namespace A016978.P17933773147858824060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 n * A016974 n

end

end A016978.P17933773147858824060

namespace A016978

/-- `A016972(n)*A016974(n)` -/
def P17933773147858824060.Spec : Prop :=
  ∀ n, P17933773147858824060.a n = A016978 n

theorem P17933773147858824060.correct : P17933773147858824060.Spec := by
  intro n
  simp only [A016978, Nat.add_sub_cancel, A016978.P17933773147858824060.a, A016978.P8973291223868451169.a, A016972, A016972.P18248330829088465920.a, A016974, A016974.P548464748958973466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016978

/-! ## A016978.P4005511938441506410

`A016969(n)²*A016976(n)`
-/

namespace A016978.P4005511938441506410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n ^ 2 * A016976 n

end

end A016978.P4005511938441506410

namespace A016978

/-- `A016969(n)²*A016976(n)` -/
def P4005511938441506410.Spec : Prop :=
  ∀ n, P4005511938441506410.a n = A016978 n

theorem P4005511938441506410.correct : P4005511938441506410.Spec := by
  intro n
  simp only [A016978, Nat.add_sub_cancel, A016978.P4005511938441506410.a, A016978.P8973291223868451169.a, A016969, A016969.P9377817521032485226.a, A016976, A016976.P4429947758327785608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016978

/-! ## A016978.P11129037163806889728

`(A016974(n)/A016969(n))²`
-/

namespace A016978.P11129037163806889728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016974 n : ℚ) / (A016969 n : ℚ)) ^ 2

end

end A016978.P11129037163806889728

namespace A016978

/-- `(A016974(n)/A016969(n))²` -/
def P11129037163806889728.Spec : Prop :=
  ∀ n, P11129037163806889728.a n = (A016978 n : ℚ)

end A016978

/-! ## A016978.P14737379451817770647

`(A016970(n)²*A016969(n))²`
-/

namespace A016978.P14737379451817770647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016970 n ^ 2 * A016969 n) ^ 2

end

end A016978.P14737379451817770647

namespace A016978

/-- `(A016970(n)²*A016969(n))²` -/
def P14737379451817770647.Spec : Prop :=
  ∀ n, P14737379451817770647.a n = A016978 n

theorem P14737379451817770647.correct : P14737379451817770647.Spec := by
  intro n
  simp only [A016978, Nat.add_sub_cancel, A016978.P14737379451817770647.a, A016978.P8973291223868451169.a, A016969, A016969.P9377817521032485226.a, A016970, A016970.P15900235009038966583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016978

/-! ## A016978.P10509557927625819871

`(A016975(n)/A016969(n)²)²`
-/

namespace A016978.P10509557927625819871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016975 n : ℚ) / (A016969 n ^ 2 : ℚ)) ^ 2

end

end A016978.P10509557927625819871

namespace A016978

/-- `(A016975(n)/A016969(n)²)²` -/
def P10509557927625819871.Spec : Prop :=
  ∀ n, P10509557927625819871.a n = (A016978 n : ℚ)

end A016978

/-! ## A016978.P12360356769149736373

`A016970(n)/(1/A016972(n))²`
-/

namespace A016978.P12360356769149736373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016970 n : ℚ) / (1 / (A016972 n : ℚ)) ^ 2

end

end A016978.P12360356769149736373

namespace A016978

/-- `A016970(n)/(1/A016972(n))²` -/
def P12360356769149736373.Spec : Prop :=
  ∀ n, P12360356769149736373.a n = (A016978 n : ℚ)

end A016978

/-! ## A016978.P11433007783624245829

`A016798(Δ[n²])`
-/

namespace A016978.P11433007783624245829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016798 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A016978.P11433007783624245829

namespace A016978

/-- `A016798(Δ[n²])` -/
def P11433007783624245829.Spec : Prop :=
  ∀ n, P11433007783624245829.a n = A016978 n

end A016978

/-! ## A016978.P17015750644776438797

`A016793(2*n+1)²`
-/

namespace A016978.P17015750644776438797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 (2 * n + 1) ^ 2

end

end A016978.P17015750644776438797

namespace A016978

/-- `A016793(2*n+1)²` -/
def P17015750644776438797.Spec : Prop :=
  ∀ n, P17015750644776438797.a n = A016978 n

theorem P17015750644776438797.correct : P17015750644776438797.Spec := by
  intro n
  simp only [A016978, Nat.add_sub_cancel, A016978.P17015750644776438797.a, A016978.P8973291223868451169.a, A016793, A016793.P7571111589597192072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016978

/-! ## A016978.P121536342754813537

`A104777(2*n+2)²²*A104777(2*n+2)`
-/

namespace A016978.P121536342754813537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104777 (2 * n + 2) ^ 2) ^ 2 * A104777 (2 * n + 2)

end

end A016978.P121536342754813537

namespace A016978

/-- `A104777(2*n+2)²²*A104777(2*n+2)` -/
def P121536342754813537.Spec : Prop :=
  ∀ n, P121536342754813537.a n = A016978 n

end A016978

/-! ## A016978.P10959195499962355290

`A016762(3*n+2)`
-/

namespace A016978.P10959195499962355290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016762 (3 * n + 2)

end

end A016978.P10959195499962355290

namespace A016978

/-- `A016762(3*n+2)` -/
def P10959195499962355290.Spec : Prop :=
  ∀ n, P10959195499962355290.a n = A016978 n

theorem P10959195499962355290.correct : P10959195499962355290.Spec := by
  intro n
  simp only [A016978, Nat.add_sub_cancel, A016978.P10959195499962355290.a, A016978.P8973291223868451169.a, A016762, A016762.P4277765179051944872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016978

/-!
# A016979: 

The programs for A016979, there is no canonical definition to state claims against.
-/

/-! ## A016979.P3535293426138463706

`(6*n+5)^11`
-/

namespace A016979.P3535293426138463706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 5) ^ 11

end

end A016979.P3535293426138463706

/-! ## A016979.P12209919913072095946

`A016969(n)*A016978(n)`
-/

namespace A016979.P12209919913072095946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n * A016978 n

end

end A016979.P12209919913072095946

/-! ## A016979.P3319689399241142869

`A016974(n)²/A016969(n)`
-/

namespace A016979.P3319689399241142869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016974 n ^ 2 : ℚ) / (A016969 n : ℚ)

end

end A016979.P3319689399241142869

/-! ## A016979.P2801602250243723038

`A016969(n)²²*A016975(n)`
-/

namespace A016979.P2801602250243723038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n ^ 2) ^ 2 * A016975 n

end

end A016979.P2801602250243723038

/-! ## A016979.P15721848606238155760

`A016969(n)*A016976(n)*A016969(n)²`
-/

namespace A016979.P15721848606238155760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n * A016976 n * A016969 n ^ 2

end

end A016979.P15721848606238155760

/-! ## A016979.P4148574906435203826

`A016799(2*n+1)`
-/

namespace A016979.P4148574906435203826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016799 (2 * n + 1)

end

end A016979.P4148574906435203826

/-! ## A016979.P10476146909159615453

`A016791(2*n+1)²²/A016789(2*n+1)`
-/

namespace A016979.P10476146909159615453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016791 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A016789 (2 * n + 1) : ℚ)

end

end A016979.P10476146909159615453

/-! ## A016979.P12467041876201775830

`A016763(3*n+2)`
-/

namespace A016979.P12467041876201775830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (3 * n + 2)

end

end A016979.P12467041876201775830

/-! ## A016979.P2852661446977540954

`A008455(A016969(n))`
-/

namespace A016979.P2852661446977540954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n).toNat

end

end A016979.P2852661446977540954

/-! ## A016979.P13561706228139001227

`A008455(A016921(n)+4)`
-/

namespace A016979.P13561706228139001227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016921 n + 4).toNat

end

end A016979.P13561706228139001227

/-! ## A016979.P6710632309743859578

`A008455(A008588(n+1)-1)`
-/

namespace A016979.P6710632309743859578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 (n + 1) - 1).toNat

end

end A016979.P6710632309743859578

/-! ## A016979.P3751667262796618835

`A008455(A017617(n)/2+1)`
-/

namespace A016979.P3751667262796618835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (SequenceMachineLib.roundAway ((A017617 n : ℚ) / 2 + 1)).toNat

end

end A016979.P3751667262796618835

/-! ## A016979.P9707431576772734306

`A008455(A008585(2*n+1)+2)`
-/

namespace A016979.P9707431576772734306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n + 1) + 2).toNat

end

end A016979.P9707431576772734306

/-!
# A016980: 

The programs for A016980, there is no canonical definition to state claims against.
-/

/-! ## A016980.P13235911878194339662

`(6*n+5)^12`
-/

namespace A016980.P13235911878194339662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 5) ^ 12

end

end A016980.P13235911878194339662

/-! ## A016980.P5687393455041089991

`A016974(n)²`
-/

namespace A016980.P5687393455041089991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016974 n ^ 2

end

end A016980.P5687393455041089991

/-! ## A016980.P12359770990998519908

`A016969(n)²*A016978(n)`
-/

namespace A016980.P12359770990998519908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n ^ 2 * A016978 n

end

end A016980.P12359770990998519908

/-! ## A016980.P8321136363481911459

`(A016975(n)/A016969(n))²`
-/

namespace A016980.P8321136363481911459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016975 n : ℚ) / (A016969 n : ℚ)) ^ 2

end

end A016980.P8321136363481911459

/-! ## A016980.P16930341665760334702

`(A016969(n)*A016970(n))²²`
-/

namespace A016980.P16930341665760334702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016969 n * A016970 n) ^ 2) ^ 2

end

end A016980.P16930341665760334702

/-! ## A016980.P9599775521760260889

`A016969(n)²²*A016976(n)`
-/

namespace A016980.P9599775521760260889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n ^ 2) ^ 2 * A016976 n

end

end A016980.P9599775521760260889

/-! ## A016980.P7100118525296198957

`A016791(2*n+1)²²`
-/

namespace A016980.P7100118525296198957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016791 (2 * n + 1) ^ 2) ^ 2

end

end A016980.P7100118525296198957

/-! ## A016980.P8793967511283551262

`(A104777(2*n+2)²*A104777(2*n+2))²`
-/

namespace A016980.P8793967511283551262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104777 (2 * n + 2) ^ 2 * A104777 (2 * n + 2)) ^ 2

end

end A016980.P8793967511283551262

/-! ## A016980.P4303880102054126930

`A016764(3*n+2)`
-/

namespace A016980.P4303880102054126930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (3 * n + 2)

end

end A016980.P4303880102054126930

/-! ## A016980.P10630676539323991380

`sqrt(A016976(n)^3)`
-/

namespace A016980.P10630676539323991380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016976 n ^ 3 : ℝ)

end

end A016980.P10630676539323991380

/-! ## A016980.P10946789839637799453

`A000578(A016789(2*n+1))²²`
-/

namespace A016980.P10946789839637799453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016789 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A016980.P10946789839637799453

/-!
# A016981: Expansion of 1/((1-3x)(1-4x)(1-10x)).

The programs for A016981, the canonical program `A016981.P15387433611499977652` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016981 has offset 0).

The definition of A016981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016981.P15387433611499977652

`14*a(n-1)-40*a(n-2)+3^n` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016981

/-- `14*a(n-1)-40*a(n-2)+3^n` -/
def P15387433611499977652.Spec : Prop :=
  ∀ n, P15387433611499977652.a n = A016981 n

theorem P15387433611499977652.correct : P15387433611499977652.Spec := by
  intro n
  simp only [A016981]

end A016981

/-! ## A016981.P4948406778895181051

`9*3^n/7-8*4^n/3+50*10^n/21`
-/

namespace A016981.P4948406778895181051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 3 ^ n : ℚ) / 7 - (8 * 4 ^ n : ℚ) / 3 + (50 * 10 ^ n : ℚ) / 21

end

end A016981.P4948406778895181051

namespace A016981

/-- `9*3^n/7-8*4^n/3+50*10^n/21` -/
def P4948406778895181051.Spec : Prop :=
  ∀ n, P4948406778895181051.a n = (A016981 n : ℚ)

theorem P4948406778895181051.correct : P4948406778895181051.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016981, Nat.add_sub_cancel, A016981.P4948406778895181051.a, A016981.P15387433611499977652.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016981, Nat.add_sub_cancel, A016981.P4948406778895181051.a, A016981.P15387433611499977652.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016981

/-! ## A016981.P9771223755938398167

`Δ[A016225(n)-A016215(n)]`
-/

namespace A016981.P9771223755938398167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016225 n - A016215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016981.P9771223755938398167

namespace A016981

/-- `Δ[A016225(n)-A016215(n)]` -/
def P9771223755938398167.Spec : Prop :=
  ∀ n, P9771223755938398167.a n = A016981 n

end A016981

/-! ## A016981.P5694885279247126104

`Δ[(A016215(n)-A016208(n))/6]`
-/

namespace A016981.P5694885279247126104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016215 n - A016208 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016981.P5694885279247126104

namespace A016981

/-- `Δ[(A016215(n)-A016208(n))/6]` -/
def P5694885279247126104.Spec : Prop :=
  ∀ n, P5694885279247126104.a n = (A016981 n : ℚ)

end A016981

/-!
# A016982: a(n) = (7*n)^2.

The programs for A016982, the canonical program `A016982.P14306478648458584256` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016982 has offset 0).

The definition of A016982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)²` (program `A016982.P14306478648458584256`, by `A016982.P14306478648458584256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016982.P14306478648458584256

`(7*n)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016982

/-- `(7*n)²` -/
def P14306478648458584256.Spec : Prop :=
  ∀ n, (P14306478648458584256.a n : ℤ) = A016982 n

theorem P14306478648458584256.correct : P14306478648458584256.Spec := by
  intro n
  simp only [A016982]

end A016982

/-!
# A016983: a(n) = (7*n)^3.

The programs for A016983, the canonical program `A016983.P6954455034770494991` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016983 has offset 0).

The definition of A016983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^3` (program `A016983.P6954455034770494991`, by `A016983.P6954455034770494991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016983.P6954455034770494991

`(7*n)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016983

/-- `(7*n)^3` -/
def P6954455034770494991.Spec : Prop :=
  ∀ n, (P6954455034770494991.a n : ℤ) = A016983 n

theorem P6954455034770494991.correct : P6954455034770494991.Spec := by
  intro n
  simp only [A016983]

end A016983

/-!
# A016984: a(n) = (7*n)^4.

The programs for A016984, the canonical program `A016984.P7237878965282736869` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016984 has offset 0).

The definition of A016984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^4` (program `A016984.P7237878965282736869`, by `A016984.P7237878965282736869.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016984.P7237878965282736869

`(7*n)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016984

/-- `(7*n)^4` -/
def P7237878965282736869.Spec : Prop :=
  ∀ n, (P7237878965282736869.a n : ℤ) = A016984 n

theorem P7237878965282736869.correct : P7237878965282736869.Spec := by
  intro n
  simp only [A016984]

end A016984

/-!
# A016985: a(n) = (7n)^5.

The programs for A016985, the canonical program `A016985.P10955113300691899170` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016985 has offset 0).

The definition of A016985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^5` (program `A016985.P10955113300691899170`, by `A016985.P10955113300691899170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016985.P10955113300691899170

`(7*n)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016985

/-- `(7*n)^5` -/
def P10955113300691899170.Spec : Prop :=
  ∀ n, (P10955113300691899170.a n : ℤ) = A016985 n

theorem P10955113300691899170.correct : P10955113300691899170.Spec := by
  intro n
  simp only [A016985]

end A016985

/-!
# A016986: a(n) = (7*n)^6.

The programs for A016986, the canonical program `A016986.P6321464722609700013` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016986 has offset 0).

The definition of A016986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^6` (program `A016986.P6321464722609700013`, by `A016986.P6321464722609700013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016986.P6321464722609700013

`(7*n)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016986

/-- `(7*n)^6` -/
def P6321464722609700013.Spec : Prop :=
  ∀ n, (P6321464722609700013.a n : ℤ) = A016986 n

theorem P6321464722609700013.correct : P6321464722609700013.Spec := by
  intro n
  simp only [A016986]

end A016986

/-!
# A016987: a(n) = (7*n)^7.

The programs for A016987, the canonical program `A016987.P5381904562503069336` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016987 has offset 0).

The definition of A016987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^7` (program `A016987.P5381904562503069336`, by `A016987.P5381904562503069336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016987.P5381904562503069336

`(7*n)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016987

/-- `(7*n)^7` -/
def P5381904562503069336.Spec : Prop :=
  ∀ n, (P5381904562503069336.a n : ℤ) = A016987 n

theorem P5381904562503069336.correct : P5381904562503069336.Spec := by
  intro n
  simp only [A016987]

end A016987

/-!
# A016988: a(n) = (7*n)^8.

The programs for A016988, the canonical program `A016988.P10324882181787856445` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016988 has offset 0).

The definition of A016988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^8` (program `A016988.P10324882181787856445`, by `A016988.P10324882181787856445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016988.P10324882181787856445

`(7*n)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016988

/-- `(7*n)^8` -/
def P10324882181787856445.Spec : Prop :=
  ∀ n, (P10324882181787856445.a n : ℤ) = A016988 n

theorem P10324882181787856445.correct : P10324882181787856445.Spec := by
  intro n
  simp only [A016988]

end A016988

/-!
# A016989: a(n) = (7*n)^9.

The programs for A016989, the canonical program `A016989.P9508496458062729238` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016989 has offset 0).

The definition of A016989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^9` (program `A016989.P9508496458062729238`, by `A016989.P9508496458062729238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016989.P9508496458062729238

`(7*n)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016989

/-- `(7*n)^9` -/
def P9508496458062729238.Spec : Prop :=
  ∀ n, (P9508496458062729238.a n : ℤ) = A016989 n

theorem P9508496458062729238.correct : P9508496458062729238.Spec := by
  intro n
  simp only [A016989]

end A016989

/-!
# A016990: a(n) = (7*n)^10.

The programs for A016990, the canonical program `A016990.P14628201914879680070` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016990 has offset 0).

The definition of A016990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^10` (program `A016990.P14628201914879680070`, by `A016990.P14628201914879680070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016990.P14628201914879680070

`(7*n)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016990

/-- `(7*n)^10` -/
def P14628201914879680070.Spec : Prop :=
  ∀ n, (P14628201914879680070.a n : ℤ) = A016990 n

theorem P14628201914879680070.correct : P14628201914879680070.Spec := by
  intro n
  simp only [A016990]

end A016990

/-!
# A016991: a(n) = (7*n)^11.

The programs for A016991, the canonical program `A016991.P16355245275521518276` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016991 has offset 0).

The definition of A016991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n)^11` (program `A016991.P16355245275521518276`, by `A016991.P16355245275521518276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016991.P16355245275521518276

`(7*n)^11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016991

/-- `(7*n)^11` -/
def P16355245275521518276.Spec : Prop :=
  ∀ n, (P16355245275521518276.a n : ℤ) = A016991 n

theorem P16355245275521518276.correct : P16355245275521518276.Spec := by
  intro n
  simp only [A016991]

end A016991

/-!
# A016992: 

The programs for A016992, there is no canonical definition to state claims against.
-/

/-! ## A016992.P2473848851357405356

`(7*n)^12`
-/

namespace A016992.P2473848851357405356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n) ^ 12

end

end A016992.P2473848851357405356

/-!
# A016993: a(n) = 7*n + 1.

The programs for A016993, the canonical program `A016993.P16783903167149097063` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016993 has offset 0).

The definition of A016993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n+1` (program `A016993.P16783903167149097063`, by `A016993.P16783903167149097063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016993.P16783903167149097063

`7*n+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016993

/-- `7*n+1` -/
def P16783903167149097063.Spec : Prop :=
  ∀ n, (P16783903167149097063.a n : ℤ) = A016993 n

theorem P16783903167149097063.correct : P16783903167149097063.Spec := by
  intro n
  simp only [A016993]

end A016993

/-!
# A016994: a(n) = (7*n + 1)^2.

The programs for A016994, the canonical program `A016994.P4148273372767867206` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016994 has offset 0).

The definition of A016994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)²` (program `A016994.P4148273372767867206`, by `A016994.P4148273372767867206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016994.P4148273372767867206

`(7*n+1)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016994

/-- `(7*n+1)²` -/
def P4148273372767867206.Spec : Prop :=
  ∀ n, (P4148273372767867206.a n : ℤ) = A016994 n

theorem P4148273372767867206.correct : P4148273372767867206.Spec := by
  intro n
  simp only [A016994]

end A016994

/-! ## A016994.P589321505904126693

`record[(gcd(7, 1-n)+n)²]`
-/

namespace A016994.P589321505904126693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016994.P589321505904126693

namespace A016994

/-- `record[(gcd(7, 1-n)+n)²]` -/
def P589321505904126693.Spec : Prop :=
  ∀ n, (P589321505904126693.a n : ℤ) = A016994 n

end A016994

/-! ## A016994.P3130586609959623112

`record[gcd(n+1, n%7)²]`
-/

namespace A016994.P3130586609959623112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 7) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016994.P3130586609959623112

namespace A016994

/-- `record[gcd(n+1, n%7)²]` -/
def P3130586609959623112.Spec : Prop :=
  ∀ n, (P3130586609959623112.a n : ℤ) = A016994 n

end A016994

/-! ## A016994.P1626797525295549121

`sqrt(A016996(n))`
-/

namespace A016994.P1626797525295549121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016996 n : ℝ)

end

end A016994.P1626797525295549121

namespace A016994

/-- `sqrt(A016996(n))` -/
def P1626797525295549121.Spec : Prop :=
  ∀ n, P1626797525295549121.a n = (A016994 n : ℝ)

end A016994

/-! ## A016994.P17763219514571513842

`A016993(n)^2`
-/

namespace A016994.P17763219514571513842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n ^ 2

end

end A016994.P17763219514571513842

namespace A016994

/-- `A016993(n)^2` -/
def P17763219514571513842.Spec : Prop :=
  ∀ n, P17763219514571513842.a n = A016994 n

theorem P17763219514571513842.correct : P17763219514571513842.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P17763219514571513842.a, A016994.P4148273372767867206.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P2342174131628975478

`sqrt(sqrt(A017000(n)))`
-/

namespace A016994.P2342174131628975478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017000 n : ℝ))

end

end A016994.P2342174131628975478

namespace A016994

/-- `sqrt(sqrt(A017000(n)))` -/
def P2342174131628975478.Spec : Prop :=
  ∀ n, P2342174131628975478.a n = (A016994 n : ℝ)

end A016994

/-! ## A016994.P89002981018025103

`A016998(n)^(1/3)`
-/

namespace A016994.P89002981018025103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016998 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A016994.P89002981018025103

namespace A016994

/-- `A016998(n)^(1/3)` -/
def P89002981018025103.Spec : Prop :=
  ∀ n, P89002981018025103.a n = (A016994 n : ℝ)

end A016994

/-! ## A016994.P14012826775544890828

`A016995(n)^(2/3)`
-/

namespace A016994.P14012826775544890828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016995 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A016994.P14012826775544890828

namespace A016994

/-- `A016995(n)^(2/3)` -/
def P14012826775544890828.Spec : Prop :=
  ∀ n, P14012826775544890828.a n = (A016994 n : ℝ)

end A016994

/-! ## A016994.P5150464848098510717

`A068628(n+1)+(n+1)²`
-/

namespace A016994.P5150464848098510717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068628 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A016994.P5150464848098510717

namespace A016994

/-- `A068628(n+1)+(n+1)²` -/
def P5150464848098510717.Spec : Prop :=
  ∀ n, P5150464848098510717.a n = A016994 n

theorem P5150464848098510717.correct : P5150464848098510717.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P5150464848098510717.a, A016994.P4148273372767867206.a, A068628, A068628.P15942527218144271604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P1132886809167372082

`(A016969(n)+n-3)*7*n+1`
-/

namespace A016994.P1132886809167372082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n + ((n : ℤ) - 3)) * (7 * n : ℤ) + 1

end

end A016994.P1132886809167372082

namespace A016994

/-- `(A016969(n)+n-3)*7*n+1` -/
def P1132886809167372082.Spec : Prop :=
  ∀ n, P1132886809167372082.a n = A016994 n

theorem P1132886809167372082.correct : P1132886809167372082.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P1132886809167372082.a, A016994.P4148273372767867206.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P10606774915223002200

`A033576(n)+A016850(n)`
-/

namespace A016994.P10606774915223002200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033576 n + A016850 n

end

end A016994.P10606774915223002200

namespace A016994

/-- `A033576(n)+A016850(n)` -/
def P10606774915223002200.Spec : Prop :=
  ∀ n, P10606774915223002200.a n = A016994 n

theorem P10606774915223002200.correct : P10606774915223002200.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P10606774915223002200.a, A016994.P4148273372767867206.a, A016850, A016850.P11162086959237364138.a, A033576, A033576.P4702801893956750476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P10813341649952877556

`A131877(n)+A016982(n)`
-/

namespace A016994.P10813341649952877556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + A016982 n

end

end A016994.P10813341649952877556

namespace A016994

/-- `A131877(n)+A016982(n)` -/
def P10813341649952877556.Spec : Prop :=
  ∀ n, P10813341649952877556.a n = A016994 n

theorem P10813341649952877556.correct : P10813341649952877556.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P10813341649952877556.a, A016994.P4148273372767867206.a, A016982, A016982.P14306478648458584256.a, A131877, A131877.P1991480590599804805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P5002733440322053640

`A162942(n)+A081591(n)`
-/

namespace A016994.P5002733440322053640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162942 n + A081591 n

end

end A016994.P5002733440322053640

namespace A016994

/-- `A162942(n)+A081591(n)` -/
def P5002733440322053640.Spec : Prop :=
  ∀ n, P5002733440322053640.a n = A016994 n

end A016994

/-! ## A016994.P17342955747772936656

`A158638(n)+A098848(n)`
-/

namespace A016994.P17342955747772936656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158638 n + A098848 n

end

end A016994.P17342955747772936656

namespace A016994

/-- `A158638(n)+A098848(n)` -/
def P17342955747772936656.Spec : Prop :=
  ∀ n, P17342955747772936656.a n = A016994 n

theorem P17342955747772936656.correct : P17342955747772936656.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P17342955747772936656.a, A016994.P4148273372767867206.a, A098848, A098848.P13089362090935355705.a, A158638, A158638.P7332495969947453421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P1991402583122116871

`A158632(n)+A140679(n)`
-/

namespace A016994.P1991402583122116871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158632 n + A140679 n

end

end A016994.P1991402583122116871

namespace A016994

/-- `A158632(n)+A140679(n)` -/
def P1991402583122116871.Spec : Prop :=
  ∀ n, P1991402583122116871.a n = A016994 n

theorem P1991402583122116871.correct : P1991402583122116871.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P1991402583122116871.a, A016994.P4148273372767867206.a, A140679, A140679.P16758500501928630565.a, A158632, A158632.P11291645308737386721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P18324504386351290971

`A017018(n)-A139608(n)`
-/

namespace A016994.P18324504386351290971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n - A139608 n

end

end A016994.P18324504386351290971

namespace A016994

/-- `A017018(n)-A139608(n)` -/
def P18324504386351290971.Spec : Prop :=
  ∀ n, P18324504386351290971.a n = A016994 n

theorem P18324504386351290971.correct : P18324504386351290971.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P18324504386351290971.a, A016994.P4148273372767867206.a, A017018, A017018.P18030190463073795086.a, A139608, A139608.P8254575958050881308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P3085984825777826244

`A158734(n)-A153797(n)`
-/

namespace A016994.P3085984825777826244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158734 n - A153797 n

end

end A016994.P3085984825777826244

namespace A016994

/-- `A158734(n)-A153797(n)` -/
def P3085984825777826244.Spec : Prop :=
  ∀ n, P3085984825777826244.a n = A016994 n

theorem P3085984825777826244.correct : P3085984825777826244.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P3085984825777826244.a, A016994.P4148273372767867206.a, A153797, A153797.P1020360065334955704.a, A158734, A158734.P2671319768889129314.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P13262962813326814556

`A158686(n)-A360436(n)`
-/

namespace A016994.P13262962813326814556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 n - A360436 n

end

end A016994.P13262962813326814556

namespace A016994

/-- `A158686(n)-A360436(n)` -/
def P13262962813326814556.Spec : Prop :=
  ∀ n, P13262962813326814556.a n = A016994 n

theorem P13262962813326814556.correct : P13262962813326814556.Spec := by
  intro n
  simp only [A016994, Nat.add_sub_cancel, A016994.P13262962813326814556.a, A016994.P4148273372767867206.a, A158686, A158686.P15625956396772246712.a, A360436, A360436.P9205183385112475839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016994

/-! ## A016994.P17267997778613245231

`A016995(n)/A016993(n)`
-/

namespace A016994.P17267997778613245231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016995 n : ℚ) / (A016993 n : ℚ)

end

end A016994.P17267997778613245231

namespace A016994

/-- `A016995(n)/A016993(n)` -/
def P17267997778613245231.Spec : Prop :=
  ∀ n, P17267997778613245231.a n = (A016994 n : ℚ)

end A016994

/-! ## A016994.P2958735509026724251

`A016997(n)/A016995(n)`
-/

namespace A016994.P2958735509026724251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 n : ℚ) / (A016995 n : ℚ)

end

end A016994.P2958735509026724251

namespace A016994

/-- `A016997(n)/A016995(n)` -/
def P2958735509026724251.Spec : Prop :=
  ∀ n, P2958735509026724251.a n = (A016994 n : ℚ)

end A016994

/-!
# A016995: a(n) = (7*n + 1)^3.

The programs for A016995, the canonical program `A016995.P16509442101657447251` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016995 has offset 0).

The definition of A016995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)^3` (program `A016995.P16509442101657447251`, by `A016995.P16509442101657447251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016995.P16509442101657447251

`(7*n+1)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016995

/-- `(7*n+1)^3` -/
def P16509442101657447251.Spec : Prop :=
  ∀ n, (P16509442101657447251.a n : ℤ) = A016995 n

theorem P16509442101657447251.correct : P16509442101657447251.Spec := by
  intro n
  simp only [A016995]

end A016995

/-! ## A016995.P2365699338270824868

`sqrt(A016998(n))`
-/

namespace A016995.P2365699338270824868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016998 n : ℝ)

end

end A016995.P2365699338270824868

namespace A016995

/-- `sqrt(A016998(n))` -/
def P2365699338270824868.Spec : Prop :=
  ∀ n, P2365699338270824868.a n = (A016995 n : ℝ)

end A016995

/-! ## A016995.P2719814469321747545

`sqrt(A016994(n)^3)`
-/

namespace A016995.P2719814469321747545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016994 n ^ 3 : ℝ)

end

end A016995.P2719814469321747545

namespace A016995

/-- `sqrt(A016994(n)^3)` -/
def P2719814469321747545.Spec : Prop :=
  ∀ n, P2719814469321747545.a n = (A016995 n : ℝ)

end A016995

/-! ## A016995.P13890800087378385813

`A016993(n)*A016994(n)`
-/

namespace A016995.P13890800087378385813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n * A016994 n

end

end A016995.P13890800087378385813

namespace A016995

/-- `A016993(n)*A016994(n)` -/
def P13890800087378385813.Spec : Prop :=
  ∀ n, P13890800087378385813.a n = A016995 n

theorem P13890800087378385813.correct : P13890800087378385813.Spec := by
  intro n
  simp only [A016995, Nat.add_sub_cancel, A016995.P13890800087378385813.a, A016995.P16509442101657447251.a, A016993, A016993.P16783903167149097063.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016995

/-! ## A016995.P16198830650513808115

`A016996(n)/A016993(n)`
-/

namespace A016995.P16198830650513808115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016996 n : ℚ) / (A016993 n : ℚ)

end

end A016995.P16198830650513808115

namespace A016995

/-- `A016996(n)/A016993(n)` -/
def P16198830650513808115.Spec : Prop :=
  ∀ n, P16198830650513808115.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P4677966029014251210

`A016997(n)/A016994(n)`
-/

namespace A016995.P4677966029014251210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 n : ℚ) / (A016994 n : ℚ)

end

end A016995.P4677966029014251210

namespace A016995

/-- `A016997(n)/A016994(n)` -/
def P4677966029014251210.Spec : Prop :=
  ∀ n, P4677966029014251210.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P3512788681382979168

`A016999(n)/A016996(n)`
-/

namespace A016995.P3512788681382979168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016999 n : ℚ) / (A016996 n : ℚ)

end

end A016995.P3512788681382979168

namespace A016995

/-- `A016999(n)/A016996(n)` -/
def P3512788681382979168.Spec : Prop :=
  ∀ n, P3512788681382979168.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P15263389344204318290

`sqrt(A016994(n)*A016996(n))`
-/

namespace A016995.P15263389344204318290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016994 n * A016996 n : ℝ)

end

end A016995.P15263389344204318290

namespace A016995

/-- `sqrt(A016994(n)*A016996(n))` -/
def P15263389344204318290.Spec : Prop :=
  ∀ n, P15263389344204318290.a n = (A016995 n : ℝ)

end A016995

/-! ## A016995.P6197926144117684301

`A016996(n)²/A016997(n)`
-/

namespace A016995.P6197926144117684301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016996 n ^ 2 : ℚ) / (A016997 n : ℚ)

end

end A016995.P6197926144117684301

namespace A016995

/-- `A016996(n)²/A016997(n)` -/
def P6197926144117684301.Spec : Prop :=
  ∀ n, P6197926144117684301.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P12520784939867771851

`A016997(n)/A016993(n)²`
-/

namespace A016995.P12520784939867771851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 n : ℚ) / (A016993 n ^ 2 : ℚ)

end

end A016995.P12520784939867771851

namespace A016995

/-- `A016997(n)/A016993(n)²` -/
def P12520784939867771851.Spec : Prop :=
  ∀ n, P12520784939867771851.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P12710794879262034589

`A016997(n)²/A016999(n)`
-/

namespace A016995.P12710794879262034589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 n ^ 2 : ℚ) / (A016999 n : ℚ)

end

end A016995.P12710794879262034589

namespace A016995

/-- `A016997(n)²/A016999(n)` -/
def P12710794879262034589.Spec : Prop :=
  ∀ n, P12710794879262034589.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P124332497484007506

`A016999(n)/A016994(n)²`
-/

namespace A016995.P124332497484007506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016999 n : ℚ) / (A016994 n ^ 2 : ℚ)

end

end A016995.P124332497484007506

namespace A016995

/-- `A016999(n)/A016994(n)²` -/
def P124332497484007506.Spec : Prop :=
  ∀ n, P124332497484007506.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P14255732459038196489

`(A017005(n)-1)*A016994(n)`
-/

namespace A016995.P14255732459038196489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017005 n - 1) * A016994 n

end

end A016995.P14255732459038196489

namespace A016995

/-- `(A017005(n)-1)*A016994(n)` -/
def P14255732459038196489.Spec : Prop :=
  ∀ n, P14255732459038196489.a n = A016995 n

theorem P14255732459038196489.correct : P14255732459038196489.Spec := by
  intro n
  simp only [A016995, Nat.add_sub_cancel, A016995.P14255732459038196489.a, A016995.P16509442101657447251.a, A016994, A016994.P4148273372767867206.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016995

/-! ## A016995.P5757167390187021028

`(A016921(n)+n)*A016994(n)`
-/

namespace A016995.P5757167390187021028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n + (n : ℤ)) * A016994 n

end

end A016995.P5757167390187021028

namespace A016995

/-- `(A016921(n)+n)*A016994(n)` -/
def P5757167390187021028.Spec : Prop :=
  ∀ n, P5757167390187021028.a n = A016995 n

theorem P5757167390187021028.correct : P5757167390187021028.Spec := by
  intro n
  simp only [A016995, Nat.add_sub_cancel, A016995.P5757167390187021028.a, A016995.P16509442101657447251.a, A016921, A016921.P18318603358862595186.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016995

/-! ## A016995.P17897184425764830626

`A016999(n)/A016993(n)²²`
-/

namespace A016995.P17897184425764830626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016999 n : ℚ) / ((A016993 n ^ 2) ^ 2 : ℚ)

end

end A016995.P17897184425764830626

namespace A016995

/-- `A016999(n)/A016993(n)²²` -/
def P17897184425764830626.Spec : Prop :=
  ∀ n, P17897184425764830626.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P16872268383254389988

`(A008589(n)+1)*A016993(n)²`
-/

namespace A016995.P16872268383254389988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008589 n + 1) * A016993 n ^ 2

end

end A016995.P16872268383254389988

namespace A016995

/-- `(A008589(n)+1)*A016993(n)²` -/
def P16872268383254389988.Spec : Prop :=
  ∀ n, P16872268383254389988.a n = A016995 n

theorem P16872268383254389988.correct : P16872268383254389988.Spec := by
  intro n
  simp only [A016995, Nat.add_sub_cancel, A016995.P16872268383254389988.a, A016995.P16509442101657447251.a, A008589, A008589.P8963889148823201939.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016995

/-! ## A016995.P2407152938178907548

`Δ[A001106(n)]²²/A016993(n)`
-/

namespace A016995.P2407152938178907548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2 : ℚ) / (A016993 n : ℚ)

end

end A016995.P2407152938178907548

namespace A016995

/-- `Δ[A001106(n)]²²/A016993(n)` -/
def P2407152938178907548.Spec : Prop :=
  ∀ n, P2407152938178907548.a n = (A016995 n : ℚ)

end A016995

/-! ## A016995.P12512529950217135003

`A017007(2*n)/8`
-/

namespace A016995.P12512529950217135003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017007 (2 * n) : ℚ) / 8

end

end A016995.P12512529950217135003

namespace A016995

/-- `A017007(2*n)/8` -/
def P12512529950217135003.Spec : Prop :=
  ∀ n, P12512529950217135003.a n = (A016995 n : ℚ)

theorem P12512529950217135003.correct : P12512529950217135003.Spec := by
  intro n
  simp only [A016995, Nat.add_sub_cancel, A016995.P12512529950217135003.a, A016995.P16509442101657447251.a, A017007, A017007.P13790534247703720753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016995

/-! ## A016995.P8589308305842297765

`record[A168337(n+1)^A168330(n+1)]`
-/

namespace A016995.P8589308305842297765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168337 (n + 1) : ℚ) ^ (A168330 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016995.P8589308305842297765

namespace A016995

/-- `record[A168337(n+1)^A168330(n+1)]` -/
def P8589308305842297765.Spec : Prop :=
  ∀ n, P8589308305842297765.a n = (A016995 n : ℚ)

end A016995

/-!
# A016996: a(n) = (7*n + 1)^4.

The programs for A016996, the canonical program `A016996.P10830569323110337120` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016996 has offset 0).

The definition of A016996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)^4` (program `A016996.P10830569323110337120`, by `A016996.P10830569323110337120.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016996.P10830569323110337120

`(7*n+1)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016996

/-- `(7*n+1)^4` -/
def P10830569323110337120.Spec : Prop :=
  ∀ n, (P10830569323110337120.a n : ℤ) = A016996 n

theorem P10830569323110337120.correct : P10830569323110337120.Spec := by
  intro n
  simp only [A016996]

end A016996

/-! ## A016996.P7288808348047101361

`(record[lcm(4, n+1)]-(n+3))²²`
-/

namespace A016996.P7288808348047101361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 3 : ℤ)) ^ 2) ^ 2

end

end A016996.P7288808348047101361

namespace A016996

/-- `(record[lcm(4, n+1)]-(n+3))²²` -/
def P7288808348047101361.Spec : Prop :=
  ∀ n, P7288808348047101361.a n = A016996 n

end A016996

/-! ## A016996.P10684813973825543801

`(lcm(3*n, 2*n)+n+1)²²`
-/

namespace A016996.P10684813973825543801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (3 * n) (2 * n) + (n + 1)) ^ 2) ^ 2

end

end A016996.P10684813973825543801

namespace A016996

/-- `(lcm(3*n, 2*n)+n+1)²²` -/
def P10684813973825543801.Spec : Prop :=
  ∀ n, (P10684813973825543801.a n : ℤ) = A016996 n

end A016996

/-! ## A016996.P14578971933977513024

`Δ[(2*n)²-C(n+3, 2)]²²`
-/

namespace A016996.P14578971933977513024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A016996.P14578971933977513024

namespace A016996

/-- `Δ[(2*n)²-C(n+3, 2)]²²` -/
def P14578971933977513024.Spec : Prop :=
  ∀ n, P14578971933977513024.a n = A016996 n

theorem P14578971933977513024.correct : P14578971933977513024.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P14578971933977513024.f1, A016996.P14578971933977513024.a, A016996.P10830569323110337120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P15750043920457877870

`(Δ[and(2*n+1, 2*n)²]-(n+3))²²`
-/

namespace A016996.P15750043920457877870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 3 : ℤ)) ^ 2) ^ 2

end

end A016996.P15750043920457877870

namespace A016996

/-- `(Δ[and(2*n+1, 2*n)²]-(n+3))²²` -/
def P15750043920457877870.Spec : Prop :=
  ∀ n, P15750043920457877870.a n = A016996 n

end A016996

/-! ## A016996.P16190037520684407427

`A016994(n)²`
-/

namespace A016996.P16190037520684407427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n ^ 2

end

end A016996.P16190037520684407427

namespace A016996

/-- `A016994(n)²` -/
def P16190037520684407427.Spec : Prop :=
  ∀ n, P16190037520684407427.a n = A016996 n

theorem P16190037520684407427.correct : P16190037520684407427.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P16190037520684407427.a, A016996.P10830569323110337120.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P10653529944456932795

`sqrt(A017000(n))`
-/

namespace A016996.P10653529944456932795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017000 n : ℝ)

end

end A016996.P10653529944456932795

namespace A016996

/-- `sqrt(A017000(n))` -/
def P10653529944456932795.Spec : Prop :=
  ∀ n, P10653529944456932795.a n = (A016996 n : ℝ)

end A016996

/-! ## A016996.P6401478045067198371

`A016993(n)²²`
-/

namespace A016996.P6401478045067198371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016993 n ^ 2) ^ 2

end

end A016996.P6401478045067198371

namespace A016996

/-- `A016993(n)²²` -/
def P6401478045067198371.Spec : Prop :=
  ∀ n, P6401478045067198371.a n = A016996 n

theorem P6401478045067198371.correct : P6401478045067198371.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P6401478045067198371.a, A016996.P10830569323110337120.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P13350262880835698145

`Δ[A001106(n)]²²`
-/

namespace A016996.P13350262880835698145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A016996.P13350262880835698145

namespace A016996

/-- `Δ[A001106(n)]²²` -/
def P13350262880835698145.Spec : Prop :=
  ∀ n, P13350262880835698145.a n = A016996 n

end A016996

/-! ## A016996.P14811611748131552284

`(A008589(n)+1)²²`
-/

namespace A016996.P14811611748131552284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008589 n + 1) ^ 2) ^ 2

end

end A016996.P14811611748131552284

namespace A016996

/-- `(A008589(n)+1)²²` -/
def P14811611748131552284.Spec : Prop :=
  ∀ n, P14811611748131552284.a n = A016996 n

theorem P14811611748131552284.correct : P14811611748131552284.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P14811611748131552284.a, A016996.P10830569323110337120.a, A008589, A008589.P8963889148823201939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P58168494462801741

`(1-A017005(n))²²`
-/

namespace A016996.P58168494462801741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017005 n) ^ 2) ^ 2

end

end A016996.P58168494462801741

namespace A016996

/-- `(1-A017005(n))²²` -/
def P58168494462801741.Spec : Prop :=
  ∀ n, P58168494462801741.a n = A016996 n

theorem P58168494462801741.correct : P58168494462801741.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P58168494462801741.a, A016996.P10830569323110337120.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P11843780295517550486

`(2-A017017(n))²²`
-/

namespace A016996.P11843780295517550486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017017 n) ^ 2) ^ 2

end

end A016996.P11843780295517550486

namespace A016996

/-- `(2-A017017(n))²²` -/
def P11843780295517550486.Spec : Prop :=
  ∀ n, P11843780295517550486.a n = A016996 n

theorem P11843780295517550486.correct : P11843780295517550486.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P11843780295517550486.a, A016996.P10830569323110337120.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P1749124318559241775

`(3-A017029(n))²²`
-/

namespace A016996.P1749124318559241775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017029 n) ^ 2) ^ 2

end

end A016996.P1749124318559241775

namespace A016996

/-- `(3-A017029(n))²²` -/
def P1749124318559241775.Spec : Prop :=
  ∀ n, P1749124318559241775.a n = A016996 n

theorem P1749124318559241775.correct : P1749124318559241775.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P1749124318559241775.a, A016996.P10830569323110337120.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P14484916568359186860

`(A016921(n)+n)²²`
-/

namespace A016996.P14484916568359186860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016921 n + (n : ℤ)) ^ 2) ^ 2

end

end A016996.P14484916568359186860

namespace A016996

/-- `(A016921(n)+n)²²` -/
def P14484916568359186860.Spec : Prop :=
  ∀ n, P14484916568359186860.a n = A016996 n

theorem P14484916568359186860.correct : P14484916568359186860.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P14484916568359186860.a, A016996.P10830569323110337120.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P16192994945830921315

`(n-A017077(n))²²`
-/

namespace A016996.P16192994945830921315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017077 n) ^ 2) ^ 2

end

end A016996.P16192994945830921315

namespace A016996

/-- `(n-A017077(n))²²` -/
def P16192994945830921315.Spec : Prop :=
  ∀ n, P16192994945830921315.a n = A016996 n

theorem P16192994945830921315.correct : P16192994945830921315.Spec := by
  intro n
  simp only [A016996, Nat.add_sub_cancel, A016996.P16192994945830921315.a, A016996.P10830569323110337120.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016996

/-! ## A016996.P8462694429706884772

`(sqrt(A016982(n))+1)²²`
-/

namespace A016996.P8462694429706884772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A016982 n : ℝ) + 1) ^ 2) ^ 2

end

end A016996.P8462694429706884772

namespace A016996

/-- `(sqrt(A016982(n))+1)²²` -/
def P8462694429706884772.Spec : Prop :=
  ∀ n, P8462694429706884772.a n = (A016996 n : ℝ)

end A016996

/-! ## A016996.P9158693325313892127

`(1-sqrt(A017006(n)))²²`
-/

namespace A016996.P9158693325313892127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017006 n : ℝ)) ^ 2) ^ 2

end

end A016996.P9158693325313892127

namespace A016996

/-- `(1-sqrt(A017006(n)))²²` -/
def P9158693325313892127.Spec : Prop :=
  ∀ n, P9158693325313892127.a n = (A016996 n : ℝ)

end A016996

/-! ## A016996.P13579568968481892676

`(2-sqrt(A017018(n)))²²`
-/

namespace A016996.P13579568968481892676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017018 n : ℝ)) ^ 2) ^ 2

end

end A016996.P13579568968481892676

namespace A016996

/-- `(2-sqrt(A017018(n)))²²` -/
def P13579568968481892676.Spec : Prop :=
  ∀ n, P13579568968481892676.a n = (A016996 n : ℝ)

end A016996

/-! ## A016996.P5053572896718305704

`(sqrt(A016922(n))+n)²²`
-/

namespace A016996.P5053572896718305704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A016922 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A016996.P5053572896718305704

namespace A016996

/-- `(sqrt(A016922(n))+n)²²` -/
def P5053572896718305704.Spec : Prop :=
  ∀ n, P5053572896718305704.a n = (A016996 n : ℝ)

end A016996

/-! ## A016996.P10846694377556875024

`(n-sqrt(A017078(n)))²²`
-/

namespace A016996.P10846694377556875024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017078 n : ℝ)) ^ 2) ^ 2

end

end A016996.P10846694377556875024

namespace A016996

/-- `(n-sqrt(A017078(n)))²²` -/
def P10846694377556875024.Spec : Prop :=
  ∀ n, P10846694377556875024.a n = (A016996 n : ℝ)

end A016996

/-!
# A016997: a(n) = (7*n + 1)^5.

The programs for A016997, the canonical program `A016997.P3873312097552342682` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016997 has offset 0).

The definition of A016997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)^5` (program `A016997.P3873312097552342682`, by `A016997.P3873312097552342682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016997.P3873312097552342682

`(7*n+1)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016997

/-- `(7*n+1)^5` -/
def P3873312097552342682.Spec : Prop :=
  ∀ n, (P3873312097552342682.a n : ℤ) = A016997 n

theorem P3873312097552342682.correct : P3873312097552342682.Spec := by
  intro n
  simp only [A016997]

end A016997

/-! ## A016997.P12371649614014332659

`record[(n+1)^(gcd(7, n)-2)]`
-/

namespace A016997.P12371649614014332659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 7 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016997.P12371649614014332659

namespace A016997

/-- `record[(n+1)^(gcd(7, n)-2)]` -/
def P12371649614014332659.Spec : Prop :=
  ∀ n, P12371649614014332659.a n = (A016997 n : ℚ)

end A016997

/-! ## A016997.P8795407344425839533

`sqrt(A017002(n))`
-/

namespace A016997.P8795407344425839533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017002 n : ℝ)

end

end A016997.P8795407344425839533

namespace A016997

/-- `sqrt(A017002(n))` -/
def P8795407344425839533.Spec : Prop :=
  ∀ n, P8795407344425839533.a n = (A016997 n : ℝ)

end A016997

/-! ## A016997.P9460228784083900211

`sqrt(A016994(n)^5)`
-/

namespace A016997.P9460228784083900211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016994 n ^ 5 : ℝ)

end

end A016997.P9460228784083900211

namespace A016997

/-- `sqrt(A016994(n)^5)` -/
def P9460228784083900211.Spec : Prop :=
  ∀ n, P9460228784083900211.a n = (A016997 n : ℝ)

end A016997

/-! ## A016997.P8999840155966244196

`(7*n+1)*A016996(n)`
-/

namespace A016997.P8999840155966244196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℤ) * A016996 n

end

end A016997.P8999840155966244196

namespace A016997

/-- `(7*n+1)*A016996(n)` -/
def P8999840155966244196.Spec : Prop :=
  ∀ n, P8999840155966244196.a n = A016997 n

theorem P8999840155966244196.correct : P8999840155966244196.Spec := by
  intro n
  simp only [A016997, Nat.add_sub_cancel, A016997.P8999840155966244196.a, A016997.P3873312097552342682.a, A016996, A016996.P10830569323110337120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016997

/-! ## A016997.P7681051164781372856

`abs((A016957(n)+n-3)^5)`
-/

namespace A016997.P7681051164781372856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016957 n + (n : ℤ) - 3) ^ 5|

end

end A016997.P7681051164781372856

namespace A016997

/-- `abs((A016957(n)+n-3)^5)` -/
def P7681051164781372856.Spec : Prop :=
  ∀ n, P7681051164781372856.a n = A016997 n

end A016997

/-! ## A016997.P4978966067444116110

`abs((4-(A016969(n)+n))^5)`
-/

namespace A016997.P4978966067444116110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 - (A016969 n + (n : ℤ))) ^ 5|

end

end A016997.P4978966067444116110

namespace A016997

/-- `abs((4-(A016969(n)+n))^5)` -/
def P4978966067444116110.Spec : Prop :=
  ∀ n, P4978966067444116110.a n = A016997 n

end A016997

/-! ## A016997.P14982152434797091862

`A016994(n)*A016995(n)`
-/

namespace A016997.P14982152434797091862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n * A016995 n

end

end A016997.P14982152434797091862

namespace A016997

/-- `A016994(n)*A016995(n)` -/
def P14982152434797091862.Spec : Prop :=
  ∀ n, P14982152434797091862.a n = A016997 n

theorem P14982152434797091862.correct : P14982152434797091862.Spec := by
  intro n
  simp only [A016997, Nat.add_sub_cancel, A016997.P14982152434797091862.a, A016997.P3873312097552342682.a, A016994, A016994.P4148273372767867206.a, A016995, A016995.P16509442101657447251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016997

/-! ## A016997.P16898939027117721502

`A016998(n)/A016993(n)`
-/

namespace A016997.P16898939027117721502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016998 n : ℚ) / (A016993 n : ℚ)

end

end A016997.P16898939027117721502

namespace A016997

/-- `A016998(n)/A016993(n)` -/
def P16898939027117721502.Spec : Prop :=
  ∀ n, P16898939027117721502.a n = (A016997 n : ℚ)

end A016997

/-! ## A016997.P16564820946231327211

`A016999(n)/A016994(n)`
-/

namespace A016997.P16564820946231327211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016999 n : ℚ) / (A016994 n : ℚ)

end

end A016997.P16564820946231327211

namespace A016997

/-- `A016999(n)/A016994(n)` -/
def P16564820946231327211.Spec : Prop :=
  ∀ n, P16564820946231327211.a n = (A016997 n : ℚ)

end A016997

/-! ## A016997.P8216579133305402213

`A016993(n)²*A016995(n)`
-/

namespace A016997.P8216579133305402213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n ^ 2 * A016995 n

end

end A016997.P8216579133305402213

namespace A016997

/-- `A016993(n)²*A016995(n)` -/
def P8216579133305402213.Spec : Prop :=
  ∀ n, P8216579133305402213.a n = A016997 n

theorem P8216579133305402213.correct : P8216579133305402213.Spec := by
  intro n
  simp only [A016997, Nat.add_sub_cancel, A016997.P8216579133305402213.a, A016997.P3873312097552342682.a, A016993, A016993.P16783903167149097063.a, A016995, A016995.P16509442101657447251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016997

/-! ## A016997.P4109214255883102560

`A016994(n)²*A016993(n)`
-/

namespace A016997.P4109214255883102560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n ^ 2 * A016993 n

end

end A016997.P4109214255883102560

namespace A016997

/-- `A016994(n)²*A016993(n)` -/
def P4109214255883102560.Spec : Prop :=
  ∀ n, P4109214255883102560.a n = A016997 n

theorem P4109214255883102560.correct : P4109214255883102560.Spec := by
  intro n
  simp only [A016997, Nat.add_sub_cancel, A016997.P4109214255883102560.a, A016997.P3873312097552342682.a, A016993, A016993.P16783903167149097063.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016997

/-! ## A016997.P7112462945621552042

`A016996(n)²/A016995(n)`
-/

namespace A016997.P7112462945621552042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016996 n ^ 2 : ℚ) / (A016995 n : ℚ)

end

end A016997.P7112462945621552042

namespace A016997

/-- `A016996(n)²/A016995(n)` -/
def P7112462945621552042.Spec : Prop :=
  ∀ n, P7112462945621552042.a n = (A016997 n : ℚ)

end A016997

/-! ## A016997.P2360422973010858905

`A016999(n)/A016993(n)²`
-/

namespace A016997.P2360422973010858905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016999 n : ℚ) / (A016993 n ^ 2 : ℚ)

end

end A016997.P2360422973010858905

namespace A016997

/-- `A016999(n)/A016993(n)²` -/
def P2360422973010858905.Spec : Prop :=
  ∀ n, P2360422973010858905.a n = (A016997 n : ℚ)

end A016997

/-! ## A016997.P3638408293951541058

`(A016921(n)+n)*A016994(n)²`
-/

namespace A016997.P3638408293951541058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016921 n + (n : ℤ)) * A016994 n ^ 2

end

end A016997.P3638408293951541058

namespace A016997

/-- `(A016921(n)+n)*A016994(n)²` -/
def P3638408293951541058.Spec : Prop :=
  ∀ n, P3638408293951541058.a n = A016997 n

theorem P3638408293951541058.correct : P3638408293951541058.Spec := by
  intro n
  simp only [A016997, Nat.add_sub_cancel, A016997.P3638408293951541058.a, A016997.P3873312097552342682.a, A016921, A016921.P18318603358862595186.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016997

/-! ## A016997.P15188046166789358555

`Δ[A001106(n)]²²*A016993(n)`
-/

namespace A016997.P15188046166789358555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2 * A016993 n

end

end A016997.P15188046166789358555

namespace A016997

/-- `Δ[A001106(n)]²²*A016993(n)` -/
def P15188046166789358555.Spec : Prop :=
  ∀ n, P15188046166789358555.a n = A016997 n

end A016997

/-! ## A016997.P2453023296107639705

`A016996(n)/A016999(n)*A016996(n)²`
-/

namespace A016997.P2453023296107639705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016996 n : ℚ) / (A016999 n : ℚ) * (A016996 n ^ 2 : ℚ)

end

end A016997.P2453023296107639705

namespace A016997

/-- `A016996(n)/A016999(n)*A016996(n)²` -/
def P2453023296107639705.Spec : Prop :=
  ∀ n, P2453023296107639705.a n = (A016997 n : ℚ)

end A016997

/-! ## A016997.P1573952716289607528

`A017000(n)/(A016993(n)²*A016993(n))`
-/

namespace A016997.P1573952716289607528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017000 n : ℚ) / (A016993 n ^ 2 * A016993 n : ℚ)

end

end A016997.P1573952716289607528

namespace A016997

/-- `A017000(n)/(A016993(n)²*A016993(n))` -/
def P1573952716289607528.Spec : Prop :=
  ∀ n, P1573952716289607528.a n = (A016997 n : ℚ)

end A016997

/-! ## A016997.P10116765435498057654

`A047336(2*n+1)²²*A047336(2*n+1)`
-/

namespace A016997.P10116765435498057654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047336 (2 * n + 1) ^ 2) ^ 2 * A047336 (2 * n + 1)

end

end A016997.P10116765435498057654

namespace A016997

/-- `A047336(2*n+1)²²*A047336(2*n+1)` -/
def P10116765435498057654.Spec : Prop :=
  ∀ n, P10116765435498057654.a n = A016997 n

end A016997

/-! ## A016997.P15738457343993690892

`A047346(2*n+1)²²*A047346(2*n+1)`
-/

namespace A016997.P15738457343993690892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047346 (2 * n + 1) ^ 2) ^ 2 * A047346 (2 * n + 1)

end

end A016997.P15738457343993690892

namespace A016997

/-- `A047346(2*n+1)²²*A047346(2*n+1)` -/
def P15738457343993690892.Spec : Prop :=
  ∀ n, P15738457343993690892.a n = A016997 n

end A016997

/-!
# A016998: a(n) = (7*n + 1)^6.

The programs for A016998, the canonical program `A016998.P13866036391130937511` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016998 has offset 0).

The definition of A016998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)^6` (program `A016998.P13866036391130937511`, by `A016998.P13866036391130937511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016998.P13866036391130937511

`(7*n+1)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016998

/-- `(7*n+1)^6` -/
def P13866036391130937511.Spec : Prop :=
  ∀ n, (P13866036391130937511.a n : ℤ) = A016998 n

theorem P13866036391130937511.correct : P13866036391130937511.Spec := by
  intro n
  simp only [A016998]

end A016998

/-! ## A016998.P2322981921739827419

`A016995(n)²`
-/

namespace A016998.P2322981921739827419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016995 n ^ 2

end

end A016998.P2322981921739827419

namespace A016998

/-- `A016995(n)²` -/
def P2322981921739827419.Spec : Prop :=
  ∀ n, P2322981921739827419.a n = A016998 n

theorem P2322981921739827419.correct : P2322981921739827419.Spec := by
  intro n
  simp only [A016998, Nat.add_sub_cancel, A016998.P2322981921739827419.a, A016998.P13866036391130937511.a, A016995, A016995.P16509442101657447251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016998

/-! ## A016998.P7843008850163653677

`(A016993(n)^3)²`
-/

namespace A016998.P7843008850163653677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016993 n ^ 3) ^ 2

end

end A016998.P7843008850163653677

namespace A016998

/-- `(A016993(n)^3)²` -/
def P7843008850163653677.Spec : Prop :=
  ∀ n, P7843008850163653677.a n = A016998 n

theorem P7843008850163653677.correct : P7843008850163653677.Spec := by
  intro n
  simp only [A016998, Nat.add_sub_cancel, A016998.P7843008850163653677.a, A016998.P13866036391130937511.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016998

/-! ## A016998.P6831001065522145355

`sqrt(A016996(n)^3)`
-/

namespace A016998.P6831001065522145355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016996 n ^ 3 : ℝ)

end

end A016998.P6831001065522145355

namespace A016998

/-- `sqrt(A016996(n)^3)` -/
def P6831001065522145355.Spec : Prop :=
  ∀ n, P6831001065522145355.a n = (A016998 n : ℝ)

end A016998

/-! ## A016998.P5512213015071717887

`(Δ[A001106(n)]^3)²`
-/

namespace A016998.P5512213015071717887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016998.P5512213015071717887

namespace A016998

/-- `(Δ[A001106(n)]^3)²` -/
def P5512213015071717887.Spec : Prop :=
  ∀ n, P5512213015071717887.a n = A016998 n

end A016998

/-! ## A016998.P10240436487945507215

`(Δ[A389608(n)]^3)²`
-/

namespace A016998.P10240436487945507215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A016998.P10240436487945507215

namespace A016998

/-- `(Δ[A389608(n)]^3)²` -/
def P10240436487945507215.Spec : Prop :=
  ∀ n, P10240436487945507215.a n = A016998 n

end A016998

/-! ## A016998.P846631968670487680

`((A016921(n)+n)^3)²`
-/

namespace A016998.P846631968670487680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016921 n + (n : ℤ)) ^ 3) ^ 2

end

end A016998.P846631968670487680

namespace A016998

/-- `((A016921(n)+n)^3)²` -/
def P846631968670487680.Spec : Prop :=
  ∀ n, P846631968670487680.a n = A016998 n

theorem P846631968670487680.correct : P846631968670487680.Spec := by
  intro n
  simp only [A016998, Nat.add_sub_cancel, A016998.P846631968670487680.a, A016998.P13866036391130937511.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016998

/-! ## A016998.P12998012702300865625

`(7*n+1)*A016997(n)`
-/

namespace A016998.P12998012702300865625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℤ) * A016997 n

end

end A016998.P12998012702300865625

namespace A016998

/-- `(7*n+1)*A016997(n)` -/
def P12998012702300865625.Spec : Prop :=
  ∀ n, P12998012702300865625.a n = A016998 n

theorem P12998012702300865625.correct : P12998012702300865625.Spec := by
  intro n
  simp only [A016998, Nat.add_sub_cancel, A016998.P12998012702300865625.a, A016998.P13866036391130937511.a, A016997, A016997.P3873312097552342682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016998

/-! ## A016998.P4626728030433906810

`A016994(n)*A016996(n)`
-/

namespace A016998.P4626728030433906810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n * A016996 n

end

end A016998.P4626728030433906810

namespace A016998

/-- `A016994(n)*A016996(n)` -/
def P4626728030433906810.Spec : Prop :=
  ∀ n, P4626728030433906810.a n = A016998 n

theorem P4626728030433906810.correct : P4626728030433906810.Spec := by
  intro n
  simp only [A016998, Nat.add_sub_cancel, A016998.P4626728030433906810.a, A016998.P13866036391130937511.a, A016994, A016994.P4148273372767867206.a, A016996, A016996.P10830569323110337120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016998

/-! ## A016998.P5190760926623520876

`A016999(n)/A016993(n)`
-/

namespace A016998.P5190760926623520876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016999 n : ℚ) / (A016993 n : ℚ)

end

end A016998.P5190760926623520876

namespace A016998

/-- `A016999(n)/A016993(n)` -/
def P5190760926623520876.Spec : Prop :=
  ∀ n, P5190760926623520876.a n = (A016998 n : ℚ)

end A016998

/-! ## A016998.P15543045889262199337

`(A016993(n)*A016994(n))²`
-/

namespace A016998.P15543045889262199337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016993 n * A016994 n) ^ 2

end

end A016998.P15543045889262199337

namespace A016998

/-- `(A016993(n)*A016994(n))²` -/
def P15543045889262199337.Spec : Prop :=
  ∀ n, P15543045889262199337.a n = A016998 n

theorem P15543045889262199337.correct : P15543045889262199337.Spec := by
  intro n
  simp only [A016998, Nat.add_sub_cancel, A016998.P15543045889262199337.a, A016998.P13866036391130937511.a, A016993, A016993.P16783903167149097063.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016998

/-! ## A016998.P1197298401969737914

`A016993(n)²*A016996(n)`
-/

namespace A016998.P1197298401969737914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n ^ 2 * A016996 n

end

end A016998.P1197298401969737914

namespace A016998

/-- `A016993(n)²*A016996(n)` -/
def P1197298401969737914.Spec : Prop :=
  ∀ n, P1197298401969737914.a n = A016998 n

theorem P1197298401969737914.correct : P1197298401969737914.Spec := by
  intro n
  simp only [A016998, Nat.add_sub_cancel, A016998.P1197298401969737914.a, A016998.P13866036391130937511.a, A016993, A016993.P16783903167149097063.a, A016996, A016996.P10830569323110337120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016998

/-! ## A016998.P9091550757392731624

`(A016997(n)/A016994(n))²`
-/

namespace A016998.P9091550757392731624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016997 n : ℚ) / (A016994 n : ℚ)) ^ 2

end

end A016998.P9091550757392731624

namespace A016998

/-- `(A016997(n)/A016994(n))²` -/
def P9091550757392731624.Spec : Prop :=
  ∀ n, P9091550757392731624.a n = (A016998 n : ℚ)

end A016998

/-! ## A016998.P6526594349374666753

`A016997(n)²/A016996(n)`
-/

namespace A016998.P6526594349374666753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 n ^ 2 : ℚ) / (A016996 n : ℚ)

end

end A016998.P6526594349374666753

namespace A016998

/-- `A016997(n)²/A016996(n)` -/
def P6526594349374666753.Spec : Prop :=
  ∀ n, P6526594349374666753.a n = (A016998 n : ℚ)

end A016998

/-! ## A016998.P16013525875649804302

`(A016999(n)/A016996(n))²`
-/

namespace A016998.P16013525875649804302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016999 n : ℚ) / (A016996 n : ℚ)) ^ 2

end

end A016998.P16013525875649804302

namespace A016998

/-- `(A016999(n)/A016996(n))²` -/
def P16013525875649804302.Spec : Prop :=
  ∀ n, P16013525875649804302.a n = (A016998 n : ℚ)

end A016998

/-! ## A016998.P7411651285923497483

`A017000(n)/A016993(n)²`
-/

namespace A016998.P7411651285923497483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017000 n : ℚ) / (A016993 n ^ 2 : ℚ)

end

end A016998.P7411651285923497483

namespace A016998

/-- `A017000(n)/A016993(n)²` -/
def P7411651285923497483.Spec : Prop :=
  ∀ n, P7411651285923497483.a n = (A016998 n : ℚ)

end A016998

/-! ## A016998.P8219622473128964365

`(A016999(n)/A016994(n)²)²`
-/

namespace A016998.P8219622473128964365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016999 n : ℚ) / (A016994 n ^ 2 : ℚ)) ^ 2

end

end A016998.P8219622473128964365

namespace A016998

/-- `(A016999(n)/A016994(n)²)²` -/
def P8219622473128964365.Spec : Prop :=
  ∀ n, P8219622473128964365.a n = (A016998 n : ℚ)

end A016998

/-! ## A016998.P659086861087338376

`(Δ[A001106(n)]²*A016993(n))²`
-/

namespace A016998.P659086861087338376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 * A016993 n) ^ 2

end

end A016998.P659086861087338376

namespace A016998

/-- `(Δ[A001106(n)]²*A016993(n))²` -/
def P659086861087338376.Spec : Prop :=
  ∀ n, P659086861087338376.a n = A016998 n

end A016998

/-! ## A016998.P8135532394735421502

`(A016997(n)/A016999(n)*A016997(n))²`
-/

namespace A016998.P8135532394735421502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016997 n : ℚ) / (A016999 n : ℚ) * (A016997 n : ℚ)) ^ 2

end

end A016998.P8135532394735421502

namespace A016998

/-- `(A016997(n)/A016999(n)*A016997(n))²` -/
def P8135532394735421502.Spec : Prop :=
  ∀ n, P8135532394735421502.a n = (A016998 n : ℚ)

end A016998

/-!
# A016999: a(n) = (7*n + 1)^7.

The programs for A016999, the canonical program `A016999.P15216311095890764319` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016999 has offset 0).

The definition of A016999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)^7` (program `A016999.P15216311095890764319`, by `A016999.P15216311095890764319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016999.P15216311095890764319

`(7*n+1)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A016999

/-- `(7*n+1)^7` -/
def P15216311095890764319.Spec : Prop :=
  ∀ n, (P15216311095890764319.a n : ℤ) = A016999 n

theorem P15216311095890764319.correct : P15216311095890764319.Spec := by
  intro n
  simp only [A016999]

end A016999

/-! ## A016999.P8816649349840109415

`(7*n+1)²*A016997(n)`
-/

namespace A016999.P8816649349840109415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * n + 1) ^ 2 : ℤ) * A016997 n

end

end A016999.P8816649349840109415

namespace A016999

/-- `(7*n+1)²*A016997(n)` -/
def P8816649349840109415.Spec : Prop :=
  ∀ n, P8816649349840109415.a n = A016999 n

theorem P8816649349840109415.correct : P8816649349840109415.Spec := by
  intro n
  simp only [A016999, Nat.add_sub_cancel, A016999.P8816649349840109415.a, A016999.P15216311095890764319.a, A016997, A016997.P3873312097552342682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016999

/-! ## A016999.P6788102301906804452

`A016993(n)*A016998(n)`
-/

namespace A016999.P6788102301906804452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n * A016998 n

end

end A016999.P6788102301906804452

namespace A016999

/-- `A016993(n)*A016998(n)` -/
def P6788102301906804452.Spec : Prop :=
  ∀ n, P6788102301906804452.a n = A016999 n

theorem P6788102301906804452.correct : P6788102301906804452.Spec := by
  intro n
  simp only [A016999, Nat.add_sub_cancel, A016999.P6788102301906804452.a, A016999.P15216311095890764319.a, A016993, A016993.P16783903167149097063.a, A016998, A016998.P13866036391130937511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016999

/-! ## A016999.P2127899301948874902

`A016995(n)*A016996(n)`
-/

namespace A016999.P2127899301948874902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016995 n * A016996 n

end

end A016999.P2127899301948874902

namespace A016999

/-- `A016995(n)*A016996(n)` -/
def P2127899301948874902.Spec : Prop :=
  ∀ n, P2127899301948874902.a n = A016999 n

theorem P2127899301948874902.correct : P2127899301948874902.Spec := by
  intro n
  simp only [A016999, Nat.add_sub_cancel, A016999.P2127899301948874902.a, A016999.P15216311095890764319.a, A016995, A016995.P16509442101657447251.a, A016996, A016996.P10830569323110337120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016999

/-! ## A016999.P10874303459752804227

`A017000(n)/A016993(n)`
-/

namespace A016999.P10874303459752804227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017000 n : ℚ) / (A016993 n : ℚ)

end

end A016999.P10874303459752804227

namespace A016999

/-- `A017000(n)/A016993(n)` -/
def P10874303459752804227.Spec : Prop :=
  ∀ n, P10874303459752804227.a n = (A016999 n : ℚ)

end A016999

/-! ## A016999.P3139992930827749403

`A016994(n)²*A016995(n)`
-/

namespace A016999.P3139992930827749403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n ^ 2 * A016995 n

end

end A016999.P3139992930827749403

namespace A016999

/-- `A016994(n)²*A016995(n)` -/
def P3139992930827749403.Spec : Prop :=
  ∀ n, P3139992930827749403.a n = A016999 n

theorem P3139992930827749403.correct : P3139992930827749403.Spec := by
  intro n
  simp only [A016999, Nat.add_sub_cancel, A016999.P3139992930827749403.a, A016999.P15216311095890764319.a, A016994, A016994.P4148273372767867206.a, A016995, A016995.P16509442101657447251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016999

/-! ## A016999.P5419884876064337183

`A016995(n)²*A016993(n)`
-/

namespace A016999.P5419884876064337183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016995 n ^ 2 * A016993 n

end

end A016999.P5419884876064337183

namespace A016999

/-- `A016995(n)²*A016993(n)` -/
def P5419884876064337183.Spec : Prop :=
  ∀ n, P5419884876064337183.a n = A016999 n

theorem P5419884876064337183.correct : P5419884876064337183.Spec := by
  intro n
  simp only [A016999, Nat.add_sub_cancel, A016999.P5419884876064337183.a, A016999.P15216311095890764319.a, A016993, A016993.P16783903167149097063.a, A016995, A016995.P16509442101657447251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A016999

/-! ## A016999.P8428187378460430871

`A016996(n)²/A016993(n)`
-/

namespace A016999.P8428187378460430871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016996 n ^ 2 : ℚ) / (A016993 n : ℚ)

end

end A016999.P8428187378460430871

namespace A016999

/-- `A016996(n)²/A016993(n)` -/
def P8428187378460430871.Spec : Prop :=
  ∀ n, P8428187378460430871.a n = (A016999 n : ℚ)

end A016999

/-! ## A016999.P15499570526705862091

`A016997(n)²/A016995(n)`
-/

namespace A016999.P15499570526705862091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 n ^ 2 : ℚ) / (A016995 n : ℚ)

end

end A016999.P15499570526705862091

namespace A016999

/-- `A016997(n)²/A016995(n)` -/
def P15499570526705862091.Spec : Prop :=
  ∀ n, P15499570526705862091.a n = (A016999 n : ℚ)

end A016999

/-! ## A016999.P7578101395887778692

`A016994(n)²²/A016993(n)`
-/

namespace A016999.P7578101395887778692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016994 n ^ 2) ^ 2 : ℚ) / (A016993 n : ℚ)

end

end A016999.P7578101395887778692

namespace A016999

/-- `A016994(n)²²/A016993(n)` -/
def P7578101395887778692.Spec : Prop :=
  ∀ n, P7578101395887778692.a n = (A016999 n : ℚ)

end A016999

/-! ## A016999.P14166555325610338415

`A016996(n)²/sqrt(A016994(n))`
-/

namespace A016999.P14166555325610338415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016996 n ^ 2 : ℝ) / Real.sqrt (A016994 n : ℝ)

end

end A016999.P14166555325610338415

namespace A016999

/-- `A016996(n)²/sqrt(A016994(n))` -/
def P14166555325610338415.Spec : Prop :=
  ∀ n, P14166555325610338415.a n = (A016999 n : ℝ)

end A016999

/-! ## A016999.P15110486310031910251

`A016997(n)/(1/A016993(n))²`
-/

namespace A016999.P15110486310031910251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 n : ℚ) / (1 / (A016993 n : ℚ)) ^ 2

end

end A016999.P15110486310031910251

namespace A016999

/-- `A016997(n)/(1/A016993(n))²` -/
def P15110486310031910251.Spec : Prop :=
  ∀ n, P15110486310031910251.a n = (A016999 n : ℚ)

end A016999

/-! ## A016999.P8379093389223322661

`A016996(n)/A016997(n)*A016996(n)²`
-/

namespace A016999.P8379093389223322661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016996 n : ℚ) / (A016997 n : ℚ) * (A016996 n ^ 2 : ℚ)

end

end A016999.P8379093389223322661

namespace A016999

/-- `A016996(n)/A016997(n)*A016996(n)²` -/
def P8379093389223322661.Spec : Prop :=
  ∀ n, P8379093389223322661.a n = (A016999 n : ℚ)

end A016999

/-! ## A016999.P1252158544459611102

`A001015(7*n+1)`
-/

namespace A016999.P1252158544459611102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (7 * n + 1)

end

end A016999.P1252158544459611102

namespace A016999

/-- `A001015(7*n+1)` -/
def P1252158544459611102.Spec : Prop :=
  ∀ n, P1252158544459611102.a n = A016999 n

end A016999

/-! ## A016999.P10170400765998003001

`1-A024005(A016921(n)+n)`
-/

namespace A016999.P10170400765998003001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024005 (A016921 n + (n : ℤ)).toNat

end

end A016999.P10170400765998003001

namespace A016999

/-- `1-A024005(A016921(n)+n)` -/
def P10170400765998003001.Spec : Prop :=
  ∀ n, P10170400765998003001.a n = A016999 n

end A016999

