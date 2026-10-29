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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B002.C000
import Seq.B002.C002
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C006
import Seq.Opaque.C010
import Seq.Opaque.C015
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A017100: 

The programs for A017100, there is no canonical definition to state claims against.
-/

/-! ## A017100.P4151558504561270218

`(8*n+2)^12`
-/

namespace A017100.P4151558504561270218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 2) ^ 12

end

end A017100.P4151558504561270218

/-! ## A017100.P2849420778634181724

`A017094(n)²`
-/

namespace A017100.P2849420778634181724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017094 n ^ 2

end

end A017100.P2849420778634181724

/-! ## A017100.P5881343515089820616

`(A017089(n)^6)²`
-/

namespace A017100.P5881343515089820616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n ^ 6) ^ 2

end

end A017100.P5881343515089820616

/-! ## A017100.P17508405142979962955

`(A017089(n)*A017093(n))²`
-/

namespace A017100.P17508405142979962955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n * A017093 n) ^ 2

end

end A017100.P17508405142979962955

/-! ## A017100.P11376562976276209792

`(A017095(n)/A017089(n))²`
-/

namespace A017100.P11376562976276209792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017095 n : ℚ) / (A017089 n : ℚ)) ^ 2

end

end A017100.P11376562976276209792

/-! ## A017100.P7654056375756097191

`sqrt(A017096(n))*A017096(n)`
-/

namespace A017100.P7654056375756097191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017096 n : ℝ) * (A017096 n : ℝ)

end

end A017100.P7654056375756097191

/-! ## A017100.P15625079190154639496

`(A017089(n)*A017090(n))²²`
-/

namespace A017100.P15625079190154639496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017089 n * A017090 n) ^ 2) ^ 2

end

end A017100.P15625079190154639496

/-! ## A017100.P18351268032178957456

`A016752(3*n+n+1)`
-/

namespace A017100.P18351268032178957456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016752 (3 * n + (n + 1))

end

end A017100.P18351268032178957456

/-! ## A017100.P9345243082799630111

`sqrt(A017096(n)^3)`
-/

namespace A017100.P9345243082799630111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017096 n ^ 3 : ℝ)

end

end A017100.P9345243082799630111

/-! ## A017100.P6889072245747604582

`A000578(2*A016813(n))²²`
-/

namespace A017100.P6889072245747604582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (2 * A016813 n).toNat ^ 2) ^ 2

end

end A017100.P6889072245747604582

/-! ## A017100.P1712399609218313085

`A000578(A016825(2*n))²²`
-/

namespace A017100.P1712399609218313085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016825 (2 * n)).toNat ^ 2) ^ 2

end

end A017100.P1712399609218313085

/-! ## A017100.P4502384582422604746

`A000578(A017005(n)+n)²²`
-/

namespace A017100.P4502384582422604746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017005 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A017100.P4502384582422604746

/-! ## A017100.P11016853325934615875

`A000578(A017185(n)-n)²²`
-/

namespace A017100.P11016853325934615875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017185 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017100.P11016853325934615875

/-!
# A017101: a(n) = 8n + 3.

The programs for A017101, the canonical program `A017101.P13562222580894225451` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017101 has offset 0).

The definition of A017101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+3` (program `A017101.P13562222580894225451`, by `A017101.P13562222580894225451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017101.P13562222580894225451

`8*n+3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017101

/-- `8*n+3` -/
def P13562222580894225451.Spec : Prop :=
  ∀ n, (P13562222580894225451.a n : ℤ) = A017101 n

theorem P13562222580894225451.correct : P13562222580894225451.Spec := by
  intro n
  simp only [A017101]

end A017101

/-!
# A017102: a(n) = (8n + 3)^2.

The programs for A017102, the canonical program `A017102.P4204805422831714047` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017102 has offset 0).

The definition of A017102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)²` (program `A017102.P4204805422831714047`, by `A017102.P4204805422831714047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017102.P4204805422831714047

`(8*n+3)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017102

/-- `(8*n+3)²` -/
def P4204805422831714047.Spec : Prop :=
  ∀ n, (P4204805422831714047.a n : ℤ) = A017102 n

theorem P4204805422831714047.correct : P4204805422831714047.Spec := by
  intro n
  simp only [A017102]

end A017102

/-! ## A017102.P13373578055604128385

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=9, a(1)=121, a(2)=361`
-/

namespace A017102.P13373578055604128385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 121, 361] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017102.P13373578055604128385

namespace A017102

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13373578055604128385.Spec : Prop :=
  ∀ n, P13373578055604128385.a n = A017102 n

theorem P13373578055604128385.correct : P13373578055604128385.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017102, Nat.add_sub_cancel, A017102.P13373578055604128385.a, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017102, Nat.add_sub_cancel, A017102.P13373578055604128385.a, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017102

/-! ## A017102.P3318881916270169754

`or(1, or(3, 8*n)²)`
-/

namespace A017102.P3318881916270169754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 3 (8 * n) ^ 2)

end

end A017102.P3318881916270169754

namespace A017102

/-- `or(1, or(3, 8*n)²)` -/
def P3318881916270169754.Spec : Prop :=
  ∀ n, (P3318881916270169754.a n : ℤ) = A017102 n

end A017102

/-! ## A017102.P347622138217982331

`record[(1-lcm(4, n+1))²]`
-/

namespace A017102.P347622138217982331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm 4 (n + 1) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017102.P347622138217982331

namespace A017102

/-- `record[(1-lcm(4, n+1))²]` -/
def P347622138217982331.Spec : Prop :=
  ∀ n, P347622138217982331.a n = A017102 n

end A017102

/-! ## A017102.P5705730262001310943

`record[(3-2*xor(3, n))²]`
-/

namespace A017102.P5705730262001310943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (2 * Nat.xor 3 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017102.P5705730262001310943

namespace A017102

/-- `record[(3-2*xor(3, n))²]` -/
def P5705730262001310943.Spec : Prop :=
  ∀ n, P5705730262001310943.a n = A017102 n

end A017102

/-! ## A017102.P3473493545470396754

`record[gcd(n+3, n%8)²]`
-/

namespace A017102.P3473493545470396754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (n % 8) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017102.P3473493545470396754

namespace A017102

/-- `record[gcd(n+3, n%8)²]` -/
def P3473493545470396754.Spec : Prop :=
  ∀ n, (P3473493545470396754.a n : ℤ) = A017102 n

end A017102

/-! ## A017102.P3748239587171494314

`round(Δ[C(4*n, 2)/2]²)`
-/

namespace A017102.P3748239587171494314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2)

end

end A017102.P3748239587171494314

namespace A017102

/-- `round(Δ[C(4*n, 2)/2]²)` -/
def P3748239587171494314.Spec : Prop :=
  ∀ n, P3748239587171494314.a n = A017102 n

end A017102

/-! ## A017102.P11455567445389010533

`record[(gcd(8, 1-n)+n+2)²]`
-/

namespace A017102.P11455567445389010533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 8 (1 - (n : ℤ)) + (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017102.P11455567445389010533

namespace A017102

/-- `record[(gcd(8, 1-n)+n+2)²]` -/
def P11455567445389010533.Spec : Prop :=
  ∀ n, (P11455567445389010533.a n : ℤ) = A017102 n

end A017102

/-! ## A017102.P2354697840701725058

`4*record[xor(1, n)*xor(2, n)]+1`
-/

namespace A017102.P2354697840701725058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A017102.P2354697840701725058

namespace A017102

/-- `4*record[xor(1, n)*xor(2, n)]+1` -/
def P2354697840701725058.Spec : Prop :=
  ∀ n, (P2354697840701725058.a n : ℤ) = A017102 n

end A017102

/-! ## A017102.P3879551732394095872

`16*∑[a(n-1)+8]-7` with `a(0)=1, a(1)=7`
-/

namespace A017102.P3879551732394095872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((16 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 7

end

end A017102.P3879551732394095872

namespace A017102

/-- `16*∑[a(n-1)+8]-7` -/
def P3879551732394095872.Spec : Prop :=
  ∀ n, P3879551732394095872.a n = A017102 n

end A017102

/-! ## A017102.P10596998530404219239

`4*2*C(2*(2*n+1), 2)+1`
-/

namespace A017102.P10596998530404219239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * Nat.choose (2 * (2 * n + 1)) 2) + 1

end

end A017102.P10596998530404219239

namespace A017102

/-- `4*2*C(2*(2*n+1), 2)+1` -/
def P10596998530404219239.Spec : Prop :=
  ∀ n, (P10596998530404219239.a n : ℤ) = A017102 n

theorem P10596998530404219239.correct : P10596998530404219239.Spec := by
  intro n
  simp only [A017102, Nat.add_sub_cancel, A017102.P10596998530404219239.a, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017102

/-! ## A017102.P6643650132092669146

`sqrt(A017104(n))`
-/

namespace A017102.P6643650132092669146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017104 n : ℝ)

end

end A017102.P6643650132092669146

namespace A017102

/-- `sqrt(A017104(n))` -/
def P6643650132092669146.Spec : Prop :=
  ∀ n, P6643650132092669146.a n = (A017102 n : ℝ)

end A017102

/-! ## A017102.P6887282346653576790

`sqrt(sqrt(A017108(n)))`
-/

namespace A017102.P6887282346653576790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017108 n : ℝ))

end

end A017102.P6887282346653576790

namespace A017102

/-- `sqrt(sqrt(A017108(n)))` -/
def P6887282346653576790.Spec : Prop :=
  ∀ n, P6887282346653576790.a n = (A017102 n : ℝ)

end A017102

/-! ## A017102.P7715132792355167117

`4*A157870(n)+1`
-/

namespace A017102.P7715132792355167117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A157870 n + 1

end

end A017102.P7715132792355167117

namespace A017102

/-- `4*A157870(n)+1` -/
def P7715132792355167117.Spec : Prop :=
  ∀ n, P7715132792355167117.a n = A017102 n

theorem P7715132792355167117.correct : P7715132792355167117.Spec := by
  intro n
  simp only [A017102, Nat.add_sub_cancel, A017102.P7715132792355167117.a, A017102.P4204805422831714047.a, A157870, A157870.P6469800247760931367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017102

/-! ## A017102.P16228879622267062183

`A017106(n)^(1/3)`
-/

namespace A017102.P16228879622267062183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017106 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017102.P16228879622267062183

namespace A017102

/-- `A017106(n)^(1/3)` -/
def P16228879622267062183.Spec : Prop :=
  ∀ n, P16228879622267062183.a n = (A017102 n : ℝ)

end A017102

/-! ## A017102.P4207440642294299775

`A017103(n)^(2/3)`
-/

namespace A017102.P4207440642294299775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017103 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017102.P4207440642294299775

namespace A017102

/-- `A017103(n)^(2/3)` -/
def P4207440642294299775.Spec : Prop :=
  ∀ n, P4207440642294299775.a n = (A017102 n : ℝ)

end A017102

/-! ## A017102.P739792134186258438

`2*A343578(n+1)+5`
-/

namespace A017102.P739792134186258438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343578 (n + 1) + 5

end

end A017102.P739792134186258438

namespace A017102

/-- `2*A343578(n+1)+5` -/
def P739792134186258438.Spec : Prop :=
  ∀ n, P739792134186258438.a n = A017102 n

theorem P739792134186258438.correct : P739792134186258438.Spec := by
  intro n
  simp only [A017102, Nat.add_sub_cancel, A017102.P739792134186258438.a, A017102.P4204805422831714047.a, A343578, A343578.P16102182765597494396.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017102

/-! ## A017102.P6709194768187133514

`8*(2*n*A004767(n)+1)+1`
-/

namespace A017102.P6709194768187133514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (2 * ((n : ℤ) * A004767 n) + 1) + 1

end

end A017102.P6709194768187133514

namespace A017102

/-- `8*(2*n*A004767(n)+1)+1` -/
def P6709194768187133514.Spec : Prop :=
  ∀ n, P6709194768187133514.a n = A017102 n

theorem P6709194768187133514.correct : P6709194768187133514.Spec := by
  intro n
  simp only [A017102, Nat.add_sub_cancel, A017102.P6709194768187133514.a, A017102.P4204805422831714047.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017102

/-! ## A017102.P1111304835851175444

`8*(2*n*Δ[A000217(2*n)]+1)+1`
-/

namespace A017102.P1111304835851175444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((2 * n : ℤ) * (f1 (n + 1) - f1 n) + 1) + 1

end

end A017102.P1111304835851175444

namespace A017102

/-- `8*(2*n*Δ[A000217(2*n)]+1)+1` -/
def P1111304835851175444.Spec : Prop :=
  ∀ n, P1111304835851175444.a n = A017102 n

theorem P1111304835851175444.correct : P1111304835851175444.Spec := by
  intro n
  simp only [A017102, Nat.add_sub_cancel, A017102.P1111304835851175444.f1, A017102.P1111304835851175444.a, A017102.P4204805422831714047.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017102

/-! ## A017102.P8417850498435593281

`A017330(n)-A304505(n)`
-/

namespace A017102.P8417850498435593281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n - A304505 n

end

end A017102.P8417850498435593281

namespace A017102

/-- `A017330(n)-A304505(n)` -/
def P8417850498435593281.Spec : Prop :=
  ∀ n, P8417850498435593281.a n = A017102 n

theorem P8417850498435593281.correct : P8417850498435593281.Spec := by
  intro n
  simp only [A017102, Nat.add_sub_cancel, A017102.P8417850498435593281.a, A017102.P4204805422831714047.a, A017330, A017330.P10434817311625232981.a, A304505, A304505.P6536953699317814335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017102

/-!
# A017103: a(n) = (8*n+3)^3.

The programs for A017103, the canonical program `A017103.P10632216755998559318` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017103 has offset 0).

The definition of A017103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)^3` (program `A017103.P10632216755998559318`, by `A017103.P10632216755998559318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017103.P10632216755998559318

`(8*n+3)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017103

/-- `(8*n+3)^3` -/
def P10632216755998559318.Spec : Prop :=
  ∀ n, (P10632216755998559318.a n : ℤ) = A017103 n

theorem P10632216755998559318.correct : P10632216755998559318.Spec := by
  intro n
  simp only [A017103]

end A017103

/-! ## A017103.P9829455070123815751

`record[(lcm(4, n+1)-1)^3]`
-/

namespace A017103.P9829455070123815751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017103.P9829455070123815751

namespace A017103

/-- `record[(lcm(4, n+1)-1)^3]` -/
def P9829455070123815751.Spec : Prop :=
  ∀ n, P9829455070123815751.a n = A017103 n

end A017103

/-! ## A017103.P10464549691050364811

`sqrt(A017106(n))`
-/

namespace A017103.P10464549691050364811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017106 n : ℝ)

end

end A017103.P10464549691050364811

namespace A017103

/-- `sqrt(A017106(n))` -/
def P10464549691050364811.Spec : Prop :=
  ∀ n, P10464549691050364811.a n = (A017103 n : ℝ)

end A017103

/-! ## A017103.P8715399191435021569

`sqrt(A017102(n)^3)`
-/

namespace A017103.P8715399191435021569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017102 n ^ 3 : ℝ)

end

end A017103.P8715399191435021569

namespace A017103

/-- `sqrt(A017102(n)^3)` -/
def P8715399191435021569.Spec : Prop :=
  ∀ n, P8715399191435021569.a n = (A017103 n : ℝ)

end A017103

/-! ## A017103.P10738713242102081609

`A017101(n)*A017102(n)`
-/

namespace A017103.P10738713242102081609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n * A017102 n

end

end A017103.P10738713242102081609

namespace A017103

/-- `A017101(n)*A017102(n)` -/
def P10738713242102081609.Spec : Prop :=
  ∀ n, P10738713242102081609.a n = A017103 n

theorem P10738713242102081609.correct : P10738713242102081609.Spec := by
  intro n
  simp only [A017103, Nat.add_sub_cancel, A017103.P10738713242102081609.a, A017103.P10632216755998559318.a, A017101, A017101.P13562222580894225451.a, A017102, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017103

/-! ## A017103.P12154968235609818717

`A017104(n)/A017101(n)`
-/

namespace A017103.P12154968235609818717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017104 n : ℚ) / (A017101 n : ℚ)

end

end A017103.P12154968235609818717

namespace A017103

/-- `A017104(n)/A017101(n)` -/
def P12154968235609818717.Spec : Prop :=
  ∀ n, P12154968235609818717.a n = (A017103 n : ℚ)

end A017103

/-! ## A017103.P1166888813583273143

`A017105(n)/A017102(n)`
-/

namespace A017103.P1166888813583273143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017105 n : ℚ) / (A017102 n : ℚ)

end

end A017103.P1166888813583273143

namespace A017103

/-- `A017105(n)/A017102(n)` -/
def P1166888813583273143.Spec : Prop :=
  ∀ n, P1166888813583273143.a n = (A017103 n : ℚ)

end A017103

/-! ## A017103.P272757890426806423

`A017105(n)/A017101(n)²`
-/

namespace A017103.P272757890426806423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017105 n : ℚ) / (A017101 n ^ 2 : ℚ)

end

end A017103.P272757890426806423

namespace A017103

/-- `A017105(n)/A017101(n)²` -/
def P272757890426806423.Spec : Prop :=
  ∀ n, P272757890426806423.a n = (A017103 n : ℚ)

end A017103

/-! ## A017103.P11172866575055055546

`A017104(n)²/A017105(n)`
-/

namespace A017103.P11172866575055055546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017104 n ^ 2 : ℚ) / (A017105 n : ℚ)

end

end A017103.P11172866575055055546

namespace A017103

/-- `A017104(n)²/A017105(n)` -/
def P11172866575055055546.Spec : Prop :=
  ∀ n, P11172866575055055546.a n = (A017103 n : ℚ)

end A017103

/-! ## A017103.P8318471558880755730

`record[A134429(n)²*A134429(n)]`
-/

namespace A017103.P8318471558880755730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134429 n ^ 2 * A134429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017103.P8318471558880755730

namespace A017103

/-- `record[A134429(n)²*A134429(n)]` -/
def P8318471558880755730.Spec : Prop :=
  ∀ n, P8318471558880755730.a n = A017103 n

end A017103

/-! ## A017103.P468188253553472871

`sqrt(A016842(2*n))`
-/

namespace A017103.P468188253553472871
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016842 (2 * n) : ℝ)

end

end A017103.P468188253553472871

namespace A017103

/-- `sqrt(A016842(2*n))` -/
def P468188253553472871.Spec : Prop :=
  ∀ n, P468188253553472871.a n = (A017103 n : ℝ)

end A017103

/-! ## A017103.P2602176222598317787

`A017139(2*n)/8`
-/

namespace A017103.P2602176222598317787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017139 (2 * n) : ℚ) / 8

end

end A017103.P2602176222598317787

namespace A017103

/-- `A017139(2*n)/8` -/
def P2602176222598317787.Spec : Prop :=
  ∀ n, P2602176222598317787.a n = (A017103 n : ℚ)

theorem P2602176222598317787.correct : P2602176222598317787.Spec := by
  intro n
  simp only [A017103, Nat.add_sub_cancel, A017103.P2602176222598317787.a, A017103.P10632216755998559318.a, A017139, A017139.P2470122089813157771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017103

/-! ## A017103.P4077142247116141209

`A016839(2*n)`
-/

namespace A017103.P4077142247116141209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 (2 * n)

end

end A017103.P4077142247116141209

namespace A017103

/-- `A016839(2*n)` -/
def P4077142247116141209.Spec : Prop :=
  ∀ n, P4077142247116141209.a n = A017103 n

theorem P4077142247116141209.correct : P4077142247116141209.Spec := by
  intro n
  simp only [A017103, Nat.add_sub_cancel, A017103.P4077142247116141209.a, A017103.P10632216755998559318.a, A016839, A016839.P3814509805116361627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017103

/-! ## A017103.P3999366353758876885

`sqrt(sqrt(A016848(2*n)))`
-/

namespace A017103.P3999366353758876885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016848 (2 * n) : ℝ))

end

end A017103.P3999366353758876885

namespace A017103

/-- `sqrt(sqrt(A016848(2*n)))` -/
def P3999366353758876885.Spec : Prop :=
  ∀ n, P3999366353758876885.a n = (A017103 n : ℝ)

end A017103

/-! ## A017103.P3757530087304193219

`A016838(2*n)*A017101(n)`
-/

namespace A017103.P3757530087304193219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 (2 * n) * A017101 n

end

end A017103.P3757530087304193219

namespace A017103

/-- `A016838(2*n)*A017101(n)` -/
def P3757530087304193219.Spec : Prop :=
  ∀ n, P3757530087304193219.a n = A017103 n

theorem P3757530087304193219.correct : P3757530087304193219.Spec := by
  intro n
  simp only [A017103, Nat.add_sub_cancel, A017103.P3757530087304193219.a, A017103.P10632216755998559318.a, A016838, A016838.P1946869396513697861.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017103

/-! ## A017103.P1547908042469304815

`A004767(2*n)*A016838(2*n)`
-/

namespace A017103.P1547908042469304815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n) * A016838 (2 * n)

end

end A017103.P1547908042469304815

namespace A017103

/-- `A004767(2*n)*A016838(2*n)` -/
def P1547908042469304815.Spec : Prop :=
  ∀ n, P1547908042469304815.a n = A017103 n

theorem P1547908042469304815.correct : P1547908042469304815.Spec := by
  intro n
  simp only [A017103, Nat.add_sub_cancel, A017103.P1547908042469304815.a, A017103.P10632216755998559318.a, A004767, A004767.P13352534504447192883.a, A016838, A016838.P1946869396513697861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017103

/-! ## A017103.P14292351404726838369

`A016840(2*n)/A004767(2*n)`
-/

namespace A017103.P14292351404726838369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016840 (2 * n) : ℚ) / (A004767 (2 * n) : ℚ)

end

end A017103.P14292351404726838369

namespace A017103

/-- `A016840(2*n)/A004767(2*n)` -/
def P14292351404726838369.Spec : Prop :=
  ∀ n, P14292351404726838369.a n = (A017103 n : ℚ)

theorem P14292351404726838369.correct : P14292351404726838369.Spec := by
  intro n
  simp only [A017103, Nat.add_sub_cancel, A017103.P14292351404726838369.a, A017103.P10632216755998559318.a, A004767, A004767.P13352534504447192883.a, A016840, A016840.P5994882750815029548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017103

/-! ## A017103.P5207830058350436266

`A016841(2*n)/A016838(2*n)`
-/

namespace A017103.P5207830058350436266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016841 (2 * n) : ℚ) / (A016838 (2 * n) : ℚ)

end

end A017103.P5207830058350436266

namespace A017103

/-- `A016841(2*n)/A016838(2*n)` -/
def P5207830058350436266.Spec : Prop :=
  ∀ n, P5207830058350436266.a n = (A017103 n : ℚ)

theorem P5207830058350436266.correct : P5207830058350436266.Spec := by
  intro n
  simp only [A017103, Nat.add_sub_cancel, A017103.P5207830058350436266.a, A017103.P10632216755998559318.a, A016838, A016838.P1946869396513697861.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017103

/-! ## A017103.P7561408524852734905

`A016843(2*n)/A016840(2*n)`
-/

namespace A017103.P7561408524852734905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016843 (2 * n) : ℚ) / (A016840 (2 * n) : ℚ)

end

end A017103.P7561408524852734905

namespace A017103

/-- `A016843(2*n)/A016840(2*n)` -/
def P7561408524852734905.Spec : Prop :=
  ∀ n, P7561408524852734905.a n = (A017103 n : ℚ)

theorem P7561408524852734905.correct : P7561408524852734905.Spec := by
  intro n
  simp only [A017103, Nat.add_sub_cancel, A017103.P7561408524852734905.a, A017103.P10632216755998559318.a, A016840, A016840.P5994882750815029548.a, A016843, A016843.P16205903007781834454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017103

/-!
# A017104: a(n) = (8*n+3)^4.

The programs for A017104, the canonical program `A017104.P17977159712110489110` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017104 has offset 0).

The definition of A017104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)^4` (program `A017104.P17977159712110489110`, by `A017104.P17977159712110489110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017104.P17977159712110489110

`(8*n+3)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017104

/-- `(8*n+3)^4` -/
def P17977159712110489110.Spec : Prop :=
  ∀ n, (P17977159712110489110.a n : ℤ) = A017104 n

theorem P17977159712110489110.correct : P17977159712110489110.Spec := by
  intro n
  simp only [A017104]

end A017104

/-! ## A017104.P5895629668723417795

`or(3, 8*n)²²`
-/

namespace A017104.P5895629668723417795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (8 * n) ^ 2) ^ 2

end

end A017104.P5895629668723417795

namespace A017104

/-- `or(3, 8*n)²²` -/
def P5895629668723417795.Spec : Prop :=
  ∀ n, (P5895629668723417795.a n : ℤ) = A017104 n

end A017104

/-! ## A017104.P17460342046835844268

`xor(3, 8*n)²²`
-/

namespace A017104.P17460342046835844268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (8 * n) ^ 2) ^ 2

end

end A017104.P17460342046835844268

namespace A017104

/-- `xor(3, 8*n)²²` -/
def P17460342046835844268.Spec : Prop :=
  ∀ n, (P17460342046835844268.a n : ℤ) = A017104 n

end A017104

/-! ## A017104.P12892091407293330142

`record[(1-lcm(4, n+1))^4]`
-/

namespace A017104.P12892091407293330142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm 4 (n + 1) : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017104.P12892091407293330142

namespace A017104

/-- `record[(1-lcm(4, n+1))^4]` -/
def P12892091407293330142.Spec : Prop :=
  ∀ n, P12892091407293330142.a n = A017104 n

end A017104

/-! ## A017104.P9253760681516742386

`record[(n+3+n)^gcd(4, n)]`
-/

namespace A017104.P9253760681516742386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3 + n) ^ Nat.gcd 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017104.P9253760681516742386

namespace A017104

/-- `record[(n+3+n)^gcd(4, n)]` -/
def P9253760681516742386.Spec : Prop :=
  ∀ n, (P9253760681516742386.a n : ℤ) = A017104 n

end A017104

/-! ## A017104.P13395119265466872642

`(1-Δ[lcm(2, (2*n)²)])²²`
-/

namespace A017104.P13395119265466872642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2) ^ 2

end

end A017104.P13395119265466872642

namespace A017104

/-- `(1-Δ[lcm(2, (2*n)²)])²²` -/
def P13395119265466872642.Spec : Prop :=
  ∀ n, P13395119265466872642.a n = A017104 n

end A017104

/-! ## A017104.P5821247604071622045

`Δ[(2*n)²-C(n+1, n)]²²`
-/

namespace A017104.P5821247604071622045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose (n + 1) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017104.P5821247604071622045

namespace A017104

/-- `Δ[(2*n)²-C(n+1, n)]²²` -/
def P5821247604071622045.Spec : Prop :=
  ∀ n, P5821247604071622045.a n = A017104 n

theorem P5821247604071622045.correct : P5821247604071622045.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P5821247604071622045.f1, A017104.P5821247604071622045.a, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017104

/-! ## A017104.P12144743397899410914

`(gcd(2, 2*n+1)-(8*n+4))²²`
-/

namespace A017104.P12144743397899410914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.gcd 2 (2 * n + 1) : ℤ) - (8 * n + 4 : ℤ)) ^ 2) ^ 2

end

end A017104.P12144743397899410914

namespace A017104

/-- `(gcd(2, 2*n+1)-(8*n+4))²²` -/
def P12144743397899410914.Spec : Prop :=
  ∀ n, P12144743397899410914.a n = A017104 n

theorem P12144743397899410914.correct : P12144743397899410914.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P12144743397899410914.a, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017104

/-! ## A017104.P14821725954045537296

`(1-Δ[and(2*n+1, 2*n)²])²²`
-/

namespace A017104.P14821725954045537296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2) ^ 2

end

end A017104.P14821725954045537296

namespace A017104

/-- `(1-Δ[and(2*n+1, 2*n)²])²²` -/
def P14821725954045537296.Spec : Prop :=
  ∀ n, P14821725954045537296.a n = A017104 n

end A017104

/-! ## A017104.P2739480091292927071

`((2*n+1)*(n+3)-C(2*n, 2))²²`
-/

namespace A017104.P2739480091292927071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((2 * n + 1) * (n + 3) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)) ^ 2) ^ 2

end

end A017104.P2739480091292927071

namespace A017104

/-- `((2*n+1)*(n+3)-C(2*n, 2))²²` -/
def P2739480091292927071.Spec : Prop :=
  ∀ n, P2739480091292927071.a n = A017104 n

theorem P2739480091292927071.correct : P2739480091292927071.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P2739480091292927071.a, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017104

/-! ## A017104.P16567373428910561267

`A017102(n)²`
-/

namespace A017104.P16567373428910561267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017102 n ^ 2

end

end A017104.P16567373428910561267

namespace A017104

/-- `A017102(n)²` -/
def P16567373428910561267.Spec : Prop :=
  ∀ n, P16567373428910561267.a n = A017104 n

theorem P16567373428910561267.correct : P16567373428910561267.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P16567373428910561267.a, A017104.P17977159712110489110.a, A017102, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017104

/-! ## A017104.P11180726932104047998

`sqrt(A017108(n))`
-/

namespace A017104.P11180726932104047998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017108 n : ℝ)

end

end A017104.P11180726932104047998

namespace A017104

/-- `sqrt(A017108(n))` -/
def P11180726932104047998.Spec : Prop :=
  ∀ n, P11180726932104047998.a n = (A017104 n : ℝ)

end A017104

/-! ## A017104.P15163718026060908419

`A017101(n)²²`
-/

namespace A017104.P15163718026060908419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017101 n ^ 2) ^ 2

end

end A017104.P15163718026060908419

namespace A017104

/-- `A017101(n)²²` -/
def P15163718026060908419.Spec : Prop :=
  ∀ n, P15163718026060908419.a n = A017104 n

theorem P15163718026060908419.correct : P15163718026060908419.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P15163718026060908419.a, A017104.P17977159712110489110.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017104

/-! ## A017104.P7497228063996181529

`record[A134429(n)]²²`
-/

namespace A017104.P7497228063996181529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A017104.P7497228063996181529

namespace A017104

/-- `record[A134429(n)]²²` -/
def P7497228063996181529.Spec : Prop :=
  ∀ n, P7497228063996181529.a n = A017104 n

end A017104

/-! ## A017104.P10909410664070073744

`(A017089(n)+1)²²`
-/

namespace A017104.P10909410664070073744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017089 n + 1) ^ 2) ^ 2

end

end A017104.P10909410664070073744

namespace A017104

/-- `(A017089(n)+1)²²` -/
def P10909410664070073744.Spec : Prop :=
  ∀ n, P10909410664070073744.a n = A017104 n

theorem P10909410664070073744.correct : P10909410664070073744.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P10909410664070073744.a, A017104.P17977159712110489110.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017104

/-! ## A017104.P6766142051162836373

`(A017077(n)+2)²²`
-/

namespace A017104.P6766142051162836373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017077 n + 2) ^ 2) ^ 2

end

end A017104.P6766142051162836373

namespace A017104

/-- `(A017077(n)+2)²²` -/
def P6766142051162836373.Spec : Prop :=
  ∀ n, P6766142051162836373.a n = A017104 n

theorem P6766142051162836373.correct : P6766142051162836373.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P6766142051162836373.a, A017104.P17977159712110489110.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017104

/-! ## A017104.P17420611273497459790

`(1-A017113(n))²²`
-/

namespace A017104.P17420611273497459790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017113 n) ^ 2) ^ 2

end

end A017104.P17420611273497459790

namespace A017104

/-- `(1-A017113(n))²²` -/
def P17420611273497459790.Spec : Prop :=
  ∀ n, P17420611273497459790.a n = A017104 n

theorem P17420611273497459790.correct : P17420611273497459790.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P17420611273497459790.a, A017104.P17977159712110489110.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017104

/-! ## A017104.P6371107986766216646

`(A008590(n)+3)²²`
-/

namespace A017104.P6371107986766216646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008590 n + 3) ^ 2) ^ 2

end

end A017104.P6371107986766216646

namespace A017104

/-- `(A008590(n)+3)²²` -/
def P6371107986766216646.Spec : Prop :=
  ∀ n, P6371107986766216646.a n = A017104 n

theorem P6371107986766216646.correct : P6371107986766216646.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P6371107986766216646.a, A017104.P17977159712110489110.a, A008590, A008590.P15621076316638553644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017104

/-! ## A017104.P6374740433412048714

`(3-A017137(n))²²`
-/

namespace A017104.P6374740433412048714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017137 n) ^ 2) ^ 2

end

end A017104.P6374740433412048714

namespace A017104

/-- `(3-A017137(n))²²` -/
def P6374740433412048714.Spec : Prop :=
  ∀ n, P6374740433412048714.a n = A017104 n

theorem P6374740433412048714.correct : P6374740433412048714.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P6374740433412048714.a, A017104.P17977159712110489110.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017104

/-! ## A017104.P1276302631890333092

`(A017017(n)+n)²²`
-/

namespace A017104.P1276302631890333092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017017 n + (n : ℤ)) ^ 2) ^ 2

end

end A017104.P1276302631890333092

namespace A017104

/-- `(A017017(n)+n)²²` -/
def P1276302631890333092.Spec : Prop :=
  ∀ n, P1276302631890333092.a n = A017104 n

theorem P1276302631890333092.correct : P1276302631890333092.Spec := by
  intro n
  simp only [A017104, Nat.add_sub_cancel, A017104.P1276302631890333092.a, A017104.P17977159712110489110.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017104

/-!
# A017105: a(n) = (8*n+3)^5.

The programs for A017105, the canonical program `A017105.P5139943378080408847` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017105 has offset 0).

The definition of A017105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)^5` (program `A017105.P5139943378080408847`, by `A017105.P5139943378080408847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017105.P5139943378080408847

`(8*n+3)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017105

/-- `(8*n+3)^5` -/
def P5139943378080408847.Spec : Prop :=
  ∀ n, (P5139943378080408847.a n : ℤ) = A017105 n

theorem P5139943378080408847.correct : P5139943378080408847.Spec := by
  intro n
  simp only [A017105]

end A017105

/-! ## A017105.P7468243440270324297

`record[(lcm(4, n+1)-1)^5]`
-/

namespace A017105.P7468243440270324297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017105.P7468243440270324297

namespace A017105

/-- `record[(lcm(4, n+1)-1)^5]` -/
def P7468243440270324297.Spec : Prop :=
  ∀ n, P7468243440270324297.a n = A017105 n

end A017105

/-! ## A017105.P18168339175985714635

`sqrt(A017110(n))`
-/

namespace A017105.P18168339175985714635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017110 n : ℝ)

end

end A017105.P18168339175985714635

namespace A017105

/-- `sqrt(A017110(n))` -/
def P18168339175985714635.Spec : Prop :=
  ∀ n, P18168339175985714635.a n = (A017105 n : ℝ)

end A017105

/-! ## A017105.P7713920421562519174

`sqrt(A017102(n)^5)`
-/

namespace A017105.P7713920421562519174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017102 n ^ 5 : ℝ)

end

end A017105.P7713920421562519174

namespace A017105

/-- `sqrt(A017102(n)^5)` -/
def P7713920421562519174.Spec : Prop :=
  ∀ n, P7713920421562519174.a n = (A017105 n : ℝ)

end A017105

/-! ## A017105.P5675723283360914252

`(8*n+3)*A017104(n)`
-/

namespace A017105.P5675723283360914252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 3 : ℤ) * A017104 n

end

end A017105.P5675723283360914252

namespace A017105

/-- `(8*n+3)*A017104(n)` -/
def P5675723283360914252.Spec : Prop :=
  ∀ n, P5675723283360914252.a n = A017105 n

theorem P5675723283360914252.correct : P5675723283360914252.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P5675723283360914252.a, A017105.P5139943378080408847.a, A017104, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P7186081811979825093

`A017102(n)*A017103(n)`
-/

namespace A017105.P7186081811979825093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017102 n * A017103 n

end

end A017105.P7186081811979825093

namespace A017105

/-- `A017102(n)*A017103(n)` -/
def P7186081811979825093.Spec : Prop :=
  ∀ n, P7186081811979825093.a n = A017105 n

theorem P7186081811979825093.correct : P7186081811979825093.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P7186081811979825093.a, A017105.P5139943378080408847.a, A017102, A017102.P4204805422831714047.a, A017103, A017103.P10632216755998559318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P1629253936751087167

`A017106(n)/A017101(n)`
-/

namespace A017105.P1629253936751087167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017106 n : ℚ) / (A017101 n : ℚ)

end

end A017105.P1629253936751087167

namespace A017105

/-- `A017106(n)/A017101(n)` -/
def P1629253936751087167.Spec : Prop :=
  ∀ n, P1629253936751087167.a n = (A017105 n : ℚ)

end A017105

/-! ## A017105.P14877735129844113702

`A017102(n)²*A017101(n)`
-/

namespace A017105.P14877735129844113702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017102 n ^ 2 * A017101 n

end

end A017105.P14877735129844113702

namespace A017105

/-- `A017102(n)²*A017101(n)` -/
def P14877735129844113702.Spec : Prop :=
  ∀ n, P14877735129844113702.a n = A017105 n

theorem P14877735129844113702.correct : P14877735129844113702.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P14877735129844113702.a, A017105.P5139943378080408847.a, A017101, A017101.P13562222580894225451.a, A017102, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P1789599014063061880

`A017101(n)²*A017103(n)`
-/

namespace A017105.P1789599014063061880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n ^ 2 * A017103 n

end

end A017105.P1789599014063061880

namespace A017105

/-- `A017101(n)²*A017103(n)` -/
def P1789599014063061880.Spec : Prop :=
  ∀ n, P1789599014063061880.a n = A017105 n

theorem P1789599014063061880.correct : P1789599014063061880.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P1789599014063061880.a, A017105.P5139943378080408847.a, A017101, A017101.P13562222580894225451.a, A017103, A017103.P10632216755998559318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P18201171254151289838

`A017104(n)²/A017103(n)`
-/

namespace A017105.P18201171254151289838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017104 n ^ 2 : ℚ) / (A017103 n : ℚ)

end

end A017105.P18201171254151289838

namespace A017105

/-- `A017104(n)²/A017103(n)` -/
def P18201171254151289838.Spec : Prop :=
  ∀ n, P18201171254151289838.a n = (A017105 n : ℚ)

end A017105

/-! ## A017105.P14767281995389268088

`record[A134429(n)²²*A134429(n)]`
-/

namespace A017105.P14767281995389268088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134429 n ^ 2) ^ 2 * A134429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017105.P14767281995389268088

namespace A017105

/-- `record[A134429(n)²²*A134429(n)]` -/
def P14767281995389268088.Spec : Prop :=
  ∀ n, P14767281995389268088.a n = A017105 n

end A017105

/-! ## A017105.P11554938856832078108

`sqrt(A016846(2*n))`
-/

namespace A017105.P11554938856832078108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016846 (2 * n) : ℝ)

end

end A017105.P11554938856832078108

namespace A017105

/-- `sqrt(A016846(2*n))` -/
def P11554938856832078108.Spec : Prop :=
  ∀ n, P11554938856832078108.a n = (A017105 n : ℝ)

end A017105

/-! ## A017105.P7935754076054199499

`gcd(A016842(2*n), A017141(2*n))`
-/

namespace A017105.P7935754076054199499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016842 (2 * n)) (A017141 (2 * n))

end

end A017105.P7935754076054199499

namespace A017105

/-- `gcd(A016842(2*n), A017141(2*n))` -/
def P7935754076054199499.Spec : Prop :=
  ∀ n, (P7935754076054199499.a n : ℤ) = A017105 n

end A017105

/-! ## A017105.P1301581908911039356

`A016841(2*n)`
-/

namespace A017105.P1301581908911039356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016841 (2 * n)

end

end A017105.P1301581908911039356

namespace A017105

/-- `A016841(2*n)` -/
def P1301581908911039356.Spec : Prop :=
  ∀ n, P1301581908911039356.a n = A017105 n

theorem P1301581908911039356.correct : P1301581908911039356.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P1301581908911039356.a, A017105.P5139943378080408847.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P60490425395927199

`record[A004767(n)^A176260(n)]`
-/

namespace A017105.P60490425395927199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004767 n : ℚ) ^ (A176260 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017105.P60490425395927199

namespace A017105

/-- `record[A004767(n)^A176260(n)]` -/
def P60490425395927199.Spec : Prop :=
  ∀ n, P60490425395927199.a n = (A017105 n : ℚ)

end A017105

/-! ## A017105.P10347375755233841007

`A004767(2*n)*A016840(2*n)`
-/

namespace A017105.P10347375755233841007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n) * A016840 (2 * n)

end

end A017105.P10347375755233841007

namespace A017105

/-- `A004767(2*n)*A016840(2*n)` -/
def P10347375755233841007.Spec : Prop :=
  ∀ n, P10347375755233841007.a n = A017105 n

theorem P10347375755233841007.correct : P10347375755233841007.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P10347375755233841007.a, A017105.P5139943378080408847.a, A004767, A004767.P13352534504447192883.a, A016840, A016840.P5994882750815029548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P18158880730247654233

`A016838(2*n)*A016839(2*n)`
-/

namespace A017105.P18158880730247654233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 (2 * n) * A016839 (2 * n)

end

end A017105.P18158880730247654233

namespace A017105

/-- `A016838(2*n)*A016839(2*n)` -/
def P18158880730247654233.Spec : Prop :=
  ∀ n, P18158880730247654233.a n = A017105 n

theorem P18158880730247654233.correct : P18158880730247654233.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P18158880730247654233.a, A017105.P5139943378080408847.a, A016838, A016838.P1946869396513697861.a, A016839, A016839.P3814509805116361627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P5745994627660700633

`A016842(2*n)/A004767(2*n)`
-/

namespace A017105.P5745994627660700633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016842 (2 * n) : ℚ) / (A004767 (2 * n) : ℚ)

end

end A017105.P5745994627660700633

namespace A017105

/-- `A016842(2*n)/A004767(2*n)` -/
def P5745994627660700633.Spec : Prop :=
  ∀ n, P5745994627660700633.a n = (A017105 n : ℚ)

theorem P5745994627660700633.correct : P5745994627660700633.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P5745994627660700633.a, A017105.P5139943378080408847.a, A004767, A004767.P13352534504447192883.a, A016842, A016842.P16499744308022796369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P10986680277155907073

`A016843(2*n)/A016838(2*n)`
-/

namespace A017105.P10986680277155907073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016843 (2 * n) : ℚ) / (A016838 (2 * n) : ℚ)

end

end A017105.P10986680277155907073

namespace A017105

/-- `A016843(2*n)/A016838(2*n)` -/
def P10986680277155907073.Spec : Prop :=
  ∀ n, P10986680277155907073.a n = (A017105 n : ℚ)

theorem P10986680277155907073.correct : P10986680277155907073.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P10986680277155907073.a, A017105.P5139943378080408847.a, A016838, A016838.P1946869396513697861.a, A016843, A016843.P16205903007781834454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-! ## A017105.P4493127461263921552

`A016845(2*n)/A016840(2*n)`
-/

namespace A017105.P4493127461263921552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016845 (2 * n) : ℚ) / (A016840 (2 * n) : ℚ)

end

end A017105.P4493127461263921552

namespace A017105

/-- `A016845(2*n)/A016840(2*n)` -/
def P4493127461263921552.Spec : Prop :=
  ∀ n, P4493127461263921552.a n = (A017105 n : ℚ)

theorem P4493127461263921552.correct : P4493127461263921552.Spec := by
  intro n
  simp only [A017105, Nat.add_sub_cancel, A017105.P4493127461263921552.a, A017105.P5139943378080408847.a, A016840, A016840.P5994882750815029548.a, A016845, A016845.P1544239424656120646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017105

/-!
# A017106: a(n) = (8*n+3)^6.

The programs for A017106, the canonical program `A017106.P5459309327598059575` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017106 has offset 0).

The definition of A017106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)^6` (program `A017106.P5459309327598059575`, by `A017106.P5459309327598059575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017106.P5459309327598059575

`(8*n+3)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017106

/-- `(8*n+3)^6` -/
def P5459309327598059575.Spec : Prop :=
  ∀ n, (P5459309327598059575.a n : ℤ) = A017106 n

theorem P5459309327598059575.correct : P5459309327598059575.Spec := by
  intro n
  simp only [A017106]

end A017106

/-! ## A017106.P2867878517697251312

`(or(3, 4*2*n)^3)²`
-/

namespace A017106.P2867878517697251312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (4 * (2 * n)) ^ 3) ^ 2

end

end A017106.P2867878517697251312

namespace A017106

/-- `(or(3, 4*2*n)^3)²` -/
def P2867878517697251312.Spec : Prop :=
  ∀ n, (P2867878517697251312.a n : ℤ) = A017106 n

end A017106

/-! ## A017106.P11733804391367022668

`(xor(3, 4*2*n)^3)²`
-/

namespace A017106.P11733804391367022668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (4 * (2 * n)) ^ 3) ^ 2

end

end A017106.P11733804391367022668

namespace A017106

/-- `(xor(3, 4*2*n)^3)²` -/
def P11733804391367022668.Spec : Prop :=
  ∀ n, (P11733804391367022668.a n : ℤ) = A017106 n

end A017106

/-! ## A017106.P12760820422610290558

`A017103(n)²`
-/

namespace A017106.P12760820422610290558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017103 n ^ 2

end

end A017106.P12760820422610290558

namespace A017106

/-- `A017103(n)²` -/
def P12760820422610290558.Spec : Prop :=
  ∀ n, P12760820422610290558.a n = A017106 n

theorem P12760820422610290558.correct : P12760820422610290558.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P12760820422610290558.a, A017106.P5459309327598059575.a, A017103, A017103.P10632216755998559318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P17874565525539451321

`sqrt(A017104(n)^3)`
-/

namespace A017106.P17874565525539451321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017104 n ^ 3 : ℝ)

end

end A017106.P17874565525539451321

namespace A017106

/-- `sqrt(A017104(n)^3)` -/
def P17874565525539451321.Spec : Prop :=
  ∀ n, P17874565525539451321.a n = (A017106 n : ℝ)

end A017106

/-! ## A017106.P10019096867408205795

`A017101(n)*A017105(n)`
-/

namespace A017106.P10019096867408205795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n * A017105 n

end

end A017106.P10019096867408205795

namespace A017106

/-- `A017101(n)*A017105(n)` -/
def P10019096867408205795.Spec : Prop :=
  ∀ n, P10019096867408205795.a n = A017106 n

theorem P10019096867408205795.correct : P10019096867408205795.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P10019096867408205795.a, A017106.P5459309327598059575.a, A017101, A017101.P13562222580894225451.a, A017105, A017105.P5139943378080408847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P1236922807628031856

`A017102(n)*A017104(n)`
-/

namespace A017106.P1236922807628031856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017102 n * A017104 n

end

end A017106.P1236922807628031856

namespace A017106

/-- `A017102(n)*A017104(n)` -/
def P1236922807628031856.Spec : Prop :=
  ∀ n, P1236922807628031856.a n = A017106 n

theorem P1236922807628031856.correct : P1236922807628031856.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P1236922807628031856.a, A017106.P5459309327598059575.a, A017102, A017102.P4204805422831714047.a, A017104, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P4765053070893314335

`(A017101(n)*A017102(n))²`
-/

namespace A017106.P4765053070893314335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017101 n * A017102 n) ^ 2

end

end A017106.P4765053070893314335

namespace A017106

/-- `(A017101(n)*A017102(n))²` -/
def P4765053070893314335.Spec : Prop :=
  ∀ n, P4765053070893314335.a n = A017106 n

theorem P4765053070893314335.correct : P4765053070893314335.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P4765053070893314335.a, A017106.P5459309327598059575.a, A017101, A017101.P13562222580894225451.a, A017102, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P14290454713487817851

`A017101(n)²*A017104(n)`
-/

namespace A017106.P14290454713487817851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n ^ 2 * A017104 n

end

end A017106.P14290454713487817851

namespace A017106

/-- `A017101(n)²*A017104(n)` -/
def P14290454713487817851.Spec : Prop :=
  ∀ n, P14290454713487817851.a n = A017106 n

theorem P14290454713487817851.correct : P14290454713487817851.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P14290454713487817851.a, A017106.P5459309327598059575.a, A017101, A017101.P13562222580894225451.a, A017104, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P349421666211253032

`(A017105(n)/A017102(n))²`
-/

namespace A017106.P349421666211253032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017105 n : ℚ) / (A017102 n : ℚ)) ^ 2

end

end A017106.P349421666211253032

namespace A017106

/-- `(A017105(n)/A017102(n))²` -/
def P349421666211253032.Spec : Prop :=
  ∀ n, P349421666211253032.a n = (A017106 n : ℚ)

end A017106

/-! ## A017106.P5973728852168781769

`A017105(n)²/A017104(n)`
-/

namespace A017106.P5973728852168781769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017105 n ^ 2 : ℚ) / (A017104 n : ℚ)

end

end A017106.P5973728852168781769

namespace A017106

/-- `A017105(n)²/A017104(n)` -/
def P5973728852168781769.Spec : Prop :=
  ∀ n, P5973728852168781769.a n = (A017106 n : ℚ)

end A017106

/-! ## A017106.P7509045842778440318

`sqrt(sqrt(A017108(n))*A017108(n))`
-/

namespace A017106.P7509045842778440318
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017108 n : ℝ) * (A017108 n : ℝ))

end

end A017106.P7509045842778440318

namespace A017106

/-- `sqrt(sqrt(A017108(n))*A017108(n))` -/
def P7509045842778440318.Spec : Prop :=
  ∀ n, P7509045842778440318.a n = (A017106 n : ℝ)

end A017106

/-! ## A017106.P5169297655454592909

`record[A134429(n)²*A134429(n)]²`
-/

namespace A017106.P5169297655454592909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134429 n ^ 2 * A134429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A017106.P5169297655454592909

namespace A017106

/-- `record[A134429(n)²*A134429(n)]²` -/
def P5169297655454592909.Spec : Prop :=
  ∀ n, P5169297655454592909.a n = A017106 n

end A017106

/-! ## A017106.P11499643996352398054

`(Δ[A033991(n)]^3)²`
-/

namespace A017106.P11499643996352398054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017106.P11499643996352398054

namespace A017106

/-- `(Δ[A033991(n)]^3)²` -/
def P11499643996352398054.Spec : Prop :=
  ∀ n, P11499643996352398054.a n = A017106 n

theorem P11499643996352398054.correct : P11499643996352398054.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P11499643996352398054.f1, A017106.P11499643996352398054.a, A017106.P5459309327598059575.a, A033991, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P12206188979432579914

`(Δ[A185950(n)]^3)²`
-/

namespace A017106.P12206188979432579914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017106.P12206188979432579914

namespace A017106

/-- `(Δ[A185950(n)]^3)²` -/
def P12206188979432579914.Spec : Prop :=
  ∀ n, P12206188979432579914.a n = A017106 n

theorem P12206188979432579914.correct : P12206188979432579914.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P12206188979432579914.f1, A017106.P12206188979432579914.a, A017106.P5459309327598059575.a, A185950, A185950.P3122566957057833889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P11514368017816486028

`(Δ[A054556(n+1)]^3)²`
-/

namespace A017106.P11514368017816486028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017106.P11514368017816486028

namespace A017106

/-- `(Δ[A054556(n+1)]^3)²` -/
def P11514368017816486028.Spec : Prop :=
  ∀ n, P11514368017816486028.a n = A017106 n

theorem P11514368017816486028.correct : P11514368017816486028.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P11514368017816486028.f1, A017106.P11514368017816486028.a, A017106.P5459309327598059575.a, A054556, A054556.P3593573316087169911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P4832827911566773508

`A016842(2*n)`
-/

namespace A017106.P4832827911566773508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016842 (2 * n)

end

end A017106.P4832827911566773508

namespace A017106

/-- `A016842(2*n)` -/
def P4832827911566773508.Spec : Prop :=
  ∀ n, P4832827911566773508.a n = A017106 n

theorem P4832827911566773508.correct : P4832827911566773508.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P4832827911566773508.a, A017106.P5459309327598059575.a, A016842, A016842.P16499744308022796369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P2261641746092131653

`A016839(2*n)²`
-/

namespace A017106.P2261641746092131653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 (2 * n) ^ 2

end

end A017106.P2261641746092131653

namespace A017106

/-- `A016839(2*n)²` -/
def P2261641746092131653.Spec : Prop :=
  ∀ n, P2261641746092131653.a n = A017106 n

theorem P2261641746092131653.correct : P2261641746092131653.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P2261641746092131653.a, A017106.P5459309327598059575.a, A016839, A016839.P3814509805116361627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-! ## A017106.P16341602276538201066

`A004767(2*n)*A016841(2*n)`
-/

namespace A017106.P16341602276538201066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n) * A016841 (2 * n)

end

end A017106.P16341602276538201066

namespace A017106

/-- `A004767(2*n)*A016841(2*n)` -/
def P16341602276538201066.Spec : Prop :=
  ∀ n, P16341602276538201066.a n = A017106 n

theorem P16341602276538201066.correct : P16341602276538201066.Spec := by
  intro n
  simp only [A017106, Nat.add_sub_cancel, A017106.P16341602276538201066.a, A017106.P5459309327598059575.a, A004767, A004767.P13352534504447192883.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017106

/-!
# A017107: a(n) = (8*n+3)^7.

The programs for A017107, the canonical program `A017107.P1894792303990384190` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017107 has offset 0).

The definition of A017107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)^7` (program `A017107.P1894792303990384190`, by `A017107.P1894792303990384190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017107.P1894792303990384190

`(8*n+3)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017107

/-- `(8*n+3)^7` -/
def P1894792303990384190.Spec : Prop :=
  ∀ n, (P1894792303990384190.a n : ℤ) = A017107 n

theorem P1894792303990384190.correct : P1894792303990384190.Spec := by
  intro n
  simp only [A017107]

end A017107

/-! ## A017107.P9026011298835619809

`A017101(n)*A017106(n)`
-/

namespace A017107.P9026011298835619809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n * A017106 n

end

end A017107.P9026011298835619809

namespace A017107

/-- `A017101(n)*A017106(n)` -/
def P9026011298835619809.Spec : Prop :=
  ∀ n, P9026011298835619809.a n = A017107 n

theorem P9026011298835619809.correct : P9026011298835619809.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P9026011298835619809.a, A017107.P1894792303990384190.a, A017101, A017101.P13562222580894225451.a, A017106, A017106.P5459309327598059575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P13211840790481474057

`A017102(n)*A017105(n)`
-/

namespace A017107.P13211840790481474057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017102 n * A017105 n

end

end A017107.P13211840790481474057

namespace A017107

/-- `A017102(n)*A017105(n)` -/
def P13211840790481474057.Spec : Prop :=
  ∀ n, P13211840790481474057.a n = A017107 n

theorem P13211840790481474057.correct : P13211840790481474057.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P13211840790481474057.a, A017107.P1894792303990384190.a, A017102, A017102.P4204805422831714047.a, A017105, A017105.P5139943378080408847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P13473757774841573472

`A017103(n)*A017104(n)`
-/

namespace A017107.P13473757774841573472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017103 n * A017104 n

end

end A017107.P13473757774841573472

namespace A017107

/-- `A017103(n)*A017104(n)` -/
def P13473757774841573472.Spec : Prop :=
  ∀ n, P13473757774841573472.a n = A017107 n

theorem P13473757774841573472.correct : P13473757774841573472.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P13473757774841573472.a, A017107.P1894792303990384190.a, A017103, A017103.P10632216755998559318.a, A017104, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P4621051065922542880

`A017103(n)²*A017101(n)`
-/

namespace A017107.P4621051065922542880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017103 n ^ 2 * A017101 n

end

end A017107.P4621051065922542880

namespace A017107

/-- `A017103(n)²*A017101(n)` -/
def P4621051065922542880.Spec : Prop :=
  ∀ n, P4621051065922542880.a n = A017107 n

theorem P4621051065922542880.correct : P4621051065922542880.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P4621051065922542880.a, A017107.P1894792303990384190.a, A017101, A017101.P13562222580894225451.a, A017103, A017103.P10632216755998559318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P12279897103911636391

`A017102(n)²*A017103(n)`
-/

namespace A017107.P12279897103911636391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017102 n ^ 2 * A017103 n

end

end A017107.P12279897103911636391

namespace A017107

/-- `A017102(n)²*A017103(n)` -/
def P12279897103911636391.Spec : Prop :=
  ∀ n, P12279897103911636391.a n = A017107 n

theorem P12279897103911636391.correct : P12279897103911636391.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P12279897103911636391.a, A017107.P1894792303990384190.a, A017102, A017102.P4204805422831714047.a, A017103, A017103.P10632216755998559318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P17203536888297876123

`A017101(n)²*A017105(n)`
-/

namespace A017107.P17203536888297876123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n ^ 2 * A017105 n

end

end A017107.P17203536888297876123

namespace A017107

/-- `A017101(n)²*A017105(n)` -/
def P17203536888297876123.Spec : Prop :=
  ∀ n, P17203536888297876123.a n = A017107 n

theorem P17203536888297876123.correct : P17203536888297876123.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P17203536888297876123.a, A017107.P1894792303990384190.a, A017101, A017101.P13562222580894225451.a, A017105, A017105.P5139943378080408847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P13015651398336220145

`A017104(n)²/A017101(n)`
-/

namespace A017107.P13015651398336220145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017104 n ^ 2 : ℚ) / (A017101 n : ℚ)

end

end A017107.P13015651398336220145

namespace A017107

/-- `A017104(n)²/A017101(n)` -/
def P13015651398336220145.Spec : Prop :=
  ∀ n, P13015651398336220145.a n = (A017107 n : ℚ)

end A017107

/-! ## A017107.P12763730077004681851

`A017105(n)²/A017103(n)`
-/

namespace A017107.P12763730077004681851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017105 n ^ 2 : ℚ) / (A017103 n : ℚ)

end

end A017107.P12763730077004681851

namespace A017107

/-- `A017105(n)²/A017103(n)` -/
def P12763730077004681851.Spec : Prop :=
  ∀ n, P12763730077004681851.a n = (A017107 n : ℚ)

end A017107

/-! ## A017107.P7292232820872170342

`A017102(n)²²/A017101(n)`
-/

namespace A017107.P7292232820872170342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017102 n ^ 2) ^ 2 : ℚ) / (A017101 n : ℚ)

end

end A017107.P7292232820872170342

namespace A017107

/-- `A017102(n)²²/A017101(n)` -/
def P7292232820872170342.Spec : Prop :=
  ∀ n, P7292232820872170342.a n = (A017107 n : ℚ)

end A017107

/-! ## A017107.P11122781593986523791

`A017104(n)/A017105(n)*A017104(n)²`
-/

namespace A017107.P11122781593986523791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017104 n : ℚ) / (A017105 n : ℚ) * (A017104 n ^ 2 : ℚ)

end

end A017107.P11122781593986523791

namespace A017107

/-- `A017104(n)/A017105(n)*A017104(n)²` -/
def P11122781593986523791.Spec : Prop :=
  ∀ n, P11122781593986523791.a n = (A017107 n : ℚ)

end A017107

/-! ## A017107.P6801766447342297021

`A016843(2*n)`
-/

namespace A017107.P6801766447342297021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016843 (2 * n)

end

end A017107.P6801766447342297021

namespace A017107

/-- `A016843(2*n)` -/
def P6801766447342297021.Spec : Prop :=
  ∀ n, P6801766447342297021.a n = A017107 n

theorem P6801766447342297021.correct : P6801766447342297021.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P6801766447342297021.a, A017107.P1894792303990384190.a, A016843, A016843.P16205903007781834454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P2680160715205420436

`A004767(2*n)*A016842(2*n)`
-/

namespace A017107.P2680160715205420436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n) * A016842 (2 * n)

end

end A017107.P2680160715205420436

namespace A017107

/-- `A004767(2*n)*A016842(2*n)` -/
def P2680160715205420436.Spec : Prop :=
  ∀ n, P2680160715205420436.a n = A017107 n

theorem P2680160715205420436.correct : P2680160715205420436.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P2680160715205420436.a, A017107.P1894792303990384190.a, A004767, A004767.P13352534504447192883.a, A016842, A016842.P16499744308022796369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P11077997928102145512

`A016838(2*n)*A016841(2*n)`
-/

namespace A017107.P11077997928102145512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 (2 * n) * A016841 (2 * n)

end

end A017107.P11077997928102145512

namespace A017107

/-- `A016838(2*n)*A016841(2*n)` -/
def P11077997928102145512.Spec : Prop :=
  ∀ n, P11077997928102145512.a n = A017107 n

theorem P11077997928102145512.correct : P11077997928102145512.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P11077997928102145512.a, A017107.P1894792303990384190.a, A016838, A016838.P1946869396513697861.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P15329835371650085809

`A016839(2*n)*A016840(2*n)`
-/

namespace A017107.P15329835371650085809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 (2 * n) * A016840 (2 * n)

end

end A017107.P15329835371650085809

namespace A017107

/-- `A016839(2*n)*A016840(2*n)` -/
def P15329835371650085809.Spec : Prop :=
  ∀ n, P15329835371650085809.a n = A017107 n

theorem P15329835371650085809.correct : P15329835371650085809.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P15329835371650085809.a, A017107.P1894792303990384190.a, A016839, A016839.P3814509805116361627.a, A016840, A016840.P5994882750815029548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P11862280905824273282

`A016845(2*n)/A016838(2*n)`
-/

namespace A017107.P11862280905824273282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016845 (2 * n) : ℚ) / (A016838 (2 * n) : ℚ)

end

end A017107.P11862280905824273282

namespace A017107

/-- `A016845(2*n)/A016838(2*n)` -/
def P11862280905824273282.Spec : Prop :=
  ∀ n, P11862280905824273282.a n = (A017107 n : ℚ)

theorem P11862280905824273282.correct : P11862280905824273282.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P11862280905824273282.a, A017107.P1894792303990384190.a, A016838, A016838.P1946869396513697861.a, A016845, A016845.P1544239424656120646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P17232532505273941667

`A016839(2*n)²*A004767(2*n)`
-/

namespace A017107.P17232532505273941667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 (2 * n) ^ 2 * A004767 (2 * n)

end

end A017107.P17232532505273941667

namespace A017107

/-- `A016839(2*n)²*A004767(2*n)` -/
def P17232532505273941667.Spec : Prop :=
  ∀ n, P17232532505273941667.a n = A017107 n

theorem P17232532505273941667.correct : P17232532505273941667.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P17232532505273941667.a, A017107.P1894792303990384190.a, A004767, A004767.P13352534504447192883.a, A016839, A016839.P3814509805116361627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P7207146686841331373

`A004767(2*n)²*A016841(2*n)`
-/

namespace A017107.P7207146686841331373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n) ^ 2 * A016841 (2 * n)

end

end A017107.P7207146686841331373

namespace A017107

/-- `A004767(2*n)²*A016841(2*n)` -/
def P7207146686841331373.Spec : Prop :=
  ∀ n, P7207146686841331373.a n = A017107 n

theorem P7207146686841331373.correct : P7207146686841331373.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P7207146686841331373.a, A017107.P1894792303990384190.a, A004767, A004767.P13352534504447192883.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P5896930572313684699

`A016838(2*n)²*A016839(2*n)`
-/

namespace A017107.P5896930572313684699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 (2 * n) ^ 2 * A016839 (2 * n)

end

end A017107.P5896930572313684699

namespace A017107

/-- `A016838(2*n)²*A016839(2*n)` -/
def P5896930572313684699.Spec : Prop :=
  ∀ n, P5896930572313684699.a n = A017107 n

theorem P5896930572313684699.correct : P5896930572313684699.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P5896930572313684699.a, A017107.P1894792303990384190.a, A016838, A016838.P1946869396513697861.a, A016839, A016839.P3814509805116361627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-! ## A017107.P8830527520399442513

`A016840(2*n)²/A004767(2*n)`
-/

namespace A017107.P8830527520399442513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016840 (2 * n) ^ 2 : ℚ) / (A004767 (2 * n) : ℚ)

end

end A017107.P8830527520399442513

namespace A017107

/-- `A016840(2*n)²/A004767(2*n)` -/
def P8830527520399442513.Spec : Prop :=
  ∀ n, P8830527520399442513.a n = (A017107 n : ℚ)

theorem P8830527520399442513.correct : P8830527520399442513.Spec := by
  intro n
  simp only [A017107, Nat.add_sub_cancel, A017107.P8830527520399442513.a, A017107.P1894792303990384190.a, A004767, A004767.P13352534504447192883.a, A016840, A016840.P5994882750815029548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017107

/-!
# A017108: a(n) = (8*n+3)^8.

The programs for A017108, the canonical program `A017108.P5633309342768333113` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017108 has offset 0).

The definition of A017108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)^8` (program `A017108.P5633309342768333113`, by `A017108.P5633309342768333113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017108.P5633309342768333113

`(8*n+3)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017108

/-- `(8*n+3)^8` -/
def P5633309342768333113.Spec : Prop :=
  ∀ n, (P5633309342768333113.a n : ℤ) = A017108 n

theorem P5633309342768333113.correct : P5633309342768333113.Spec := by
  intro n
  simp only [A017108]

end A017108

/-! ## A017108.P262914389447866664

`or(3, 8*n)²²²`
-/

namespace A017108.P262914389447866664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (8 * n) ^ 2) ^ 2) ^ 2

end

end A017108.P262914389447866664

namespace A017108

/-- `or(3, 8*n)²²²` -/
def P262914389447866664.Spec : Prop :=
  ∀ n, (P262914389447866664.a n : ℤ) = A017108 n

end A017108

/-! ## A017108.P15571215008419973870

`record[(n+3)^gcd(8, n)]`
-/

namespace A017108.P15571215008419973870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.gcd 8 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017108.P15571215008419973870

namespace A017108

/-- `record[(n+3)^gcd(8, n)]` -/
def P15571215008419973870.Spec : Prop :=
  ∀ n, (P15571215008419973870.a n : ℤ) = A017108 n

end A017108

/-! ## A017108.P9153308104193241724

`(xor(3, 4*2*n)^4)²`
-/

namespace A017108.P9153308104193241724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (4 * (2 * n)) ^ 4) ^ 2

end

end A017108.P9153308104193241724

namespace A017108

/-- `(xor(3, 4*2*n)^4)²` -/
def P9153308104193241724.Spec : Prop :=
  ∀ n, (P9153308104193241724.a n : ℤ) = A017108 n

end A017108

/-! ## A017108.P2230835966379205674

`xor(3, 4*2*n)²²²`
-/

namespace A017108.P2230835966379205674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 (4 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017108.P2230835966379205674

namespace A017108

/-- `xor(3, 4*2*n)²²²` -/
def P2230835966379205674.Spec : Prop :=
  ∀ n, (P2230835966379205674.a n : ℤ) = A017108 n

end A017108

/-! ## A017108.P4629407160232075359

`(1-lcm(4, 2*n+1))²²²`
-/

namespace A017108.P4629407160232075359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - (Nat.lcm 4 (2 * n + 1) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017108.P4629407160232075359

namespace A017108

/-- `(1-lcm(4, 2*n+1))²²²` -/
def P4629407160232075359.Spec : Prop :=
  ∀ n, P4629407160232075359.a n = A017108 n

end A017108

/-! ## A017108.P2874184788872703909

`A017104(n)²`
-/

namespace A017108.P2874184788872703909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017104 n ^ 2

end

end A017108.P2874184788872703909

namespace A017108

/-- `A017104(n)²` -/
def P2874184788872703909.Spec : Prop :=
  ∀ n, P2874184788872703909.a n = A017108 n

theorem P2874184788872703909.correct : P2874184788872703909.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P2874184788872703909.a, A017108.P5633309342768333113.a, A017104, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P4754510164754353108

`A017102(n)²²`
-/

namespace A017108.P4754510164754353108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017102 n ^ 2) ^ 2

end

end A017108.P4754510164754353108

namespace A017108

/-- `A017102(n)²²` -/
def P4754510164754353108.Spec : Prop :=
  ∀ n, P4754510164754353108.a n = A017108 n

theorem P4754510164754353108.correct : P4754510164754353108.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P4754510164754353108.a, A017108.P5633309342768333113.a, A017102, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P12585078314939494205

`A017101(n)²²²`
-/

namespace A017108.P12585078314939494205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017101 n ^ 2) ^ 2) ^ 2

end

end A017108.P12585078314939494205

namespace A017108

/-- `A017101(n)²²²` -/
def P12585078314939494205.Spec : Prop :=
  ∀ n, P12585078314939494205.a n = A017108 n

theorem P12585078314939494205.correct : P12585078314939494205.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P12585078314939494205.a, A017108.P5633309342768333113.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P9900599633090460241

`record[A134429(n)]²²²`
-/

namespace A017108.P9900599633090460241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2) ^ 2

end

end A017108.P9900599633090460241

namespace A017108

/-- `record[A134429(n)]²²²` -/
def P9900599633090460241.Spec : Prop :=
  ∀ n, P9900599633090460241.a n = A017108 n

end A017108

/-! ## A017108.P16758345425635971105

`(A017089(n)+1)²²²`
-/

namespace A017108.P16758345425635971105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017089 n + 1) ^ 2) ^ 2) ^ 2

end

end A017108.P16758345425635971105

namespace A017108

/-- `(A017089(n)+1)²²²` -/
def P16758345425635971105.Spec : Prop :=
  ∀ n, P16758345425635971105.a n = A017108 n

theorem P16758345425635971105.correct : P16758345425635971105.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P16758345425635971105.a, A017108.P5633309342768333113.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P18080194934637735287

`(A017077(n)+2)²²²`
-/

namespace A017108.P18080194934637735287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017077 n + 2) ^ 2) ^ 2) ^ 2

end

end A017108.P18080194934637735287

namespace A017108

/-- `(A017077(n)+2)²²²` -/
def P18080194934637735287.Spec : Prop :=
  ∀ n, P18080194934637735287.a n = A017108 n

theorem P18080194934637735287.correct : P18080194934637735287.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P18080194934637735287.a, A017108.P5633309342768333113.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P17801556038631798265

`(1-A017113(n))²²²`
-/

namespace A017108.P17801556038631798265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017113 n) ^ 2) ^ 2) ^ 2

end

end A017108.P17801556038631798265

namespace A017108

/-- `(1-A017113(n))²²²` -/
def P17801556038631798265.Spec : Prop :=
  ∀ n, P17801556038631798265.a n = A017108 n

theorem P17801556038631798265.correct : P17801556038631798265.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P17801556038631798265.a, A017108.P5633309342768333113.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P14271656907322596418

`(A017017(n)+n)²²²`
-/

namespace A017108.P14271656907322596418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017017 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017108.P14271656907322596418

namespace A017108

/-- `(A017017(n)+n)²²²` -/
def P14271656907322596418.Spec : Prop :=
  ∀ n, P14271656907322596418.a n = A017108 n

theorem P14271656907322596418.correct : P14271656907322596418.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P14271656907322596418.a, A017108.P5633309342768333113.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P614282922300099799

`(n-A017197(n))²²²`
-/

namespace A017108.P614282922300099799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017197 n) ^ 2) ^ 2) ^ 2

end

end A017108.P614282922300099799

namespace A017108

/-- `(n-A017197(n))²²²` -/
def P614282922300099799.Spec : Prop :=
  ∀ n, P614282922300099799.a n = A017108 n

theorem P614282922300099799.correct : P614282922300099799.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P614282922300099799.a, A017108.P5633309342768333113.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P10391541794347861342

`(2-A004770(n+1))²²²`
-/

namespace A017108.P10391541794347861342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A004770 (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017108.P10391541794347861342

namespace A017108

/-- `(2-A004770(n+1))²²²` -/
def P10391541794347861342.Spec : Prop :=
  ∀ n, P10391541794347861342.a n = A017108 n

theorem P10391541794347861342.correct : P10391541794347861342.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P10391541794347861342.a, A017108.P5633309342768333113.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P4076163270003405439

`(A016945(n)+2*n)²²²`
-/

namespace A017108.P4076163270003405439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016945 n + (2 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017108.P4076163270003405439

namespace A017108

/-- `(A016945(n)+2*n)²²²` -/
def P4076163270003405439.Spec : Prop :=
  ∀ n, P4076163270003405439.a n = A017108 n

theorem P4076163270003405439.correct : P4076163270003405439.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P4076163270003405439.a, A017108.P5633309342768333113.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P6359233932514032906

`A000027(3*n+5*n+3)²²²`
-/

namespace A017108.P6359233932514032906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000027 (3 * n + (5 * n + 3)) ^ 2) ^ 2) ^ 2

end

end A017108.P6359233932514032906

namespace A017108

/-- `A000027(3*n+5*n+3)²²²` -/
def P6359233932514032906.Spec : Prop :=
  ∀ n, P6359233932514032906.a n = A017108 n

end A017108

/-! ## A017108.P15873613317999414881

`A017102(n)*A017106(n)`
-/

namespace A017108.P15873613317999414881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017102 n * A017106 n

end

end A017108.P15873613317999414881

namespace A017108

/-- `A017102(n)*A017106(n)` -/
def P15873613317999414881.Spec : Prop :=
  ∀ n, P15873613317999414881.a n = A017108 n

theorem P15873613317999414881.correct : P15873613317999414881.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P15873613317999414881.a, A017108.P5633309342768333113.a, A017102, A017102.P4204805422831714047.a, A017106, A017106.P5459309327598059575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-! ## A017108.P5321374908578962383

`A017103(n)*A017105(n)`
-/

namespace A017108.P5321374908578962383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017103 n * A017105 n

end

end A017108.P5321374908578962383

namespace A017108

/-- `A017103(n)*A017105(n)` -/
def P5321374908578962383.Spec : Prop :=
  ∀ n, P5321374908578962383.a n = A017108 n

theorem P5321374908578962383.correct : P5321374908578962383.Spec := by
  intro n
  simp only [A017108, Nat.add_sub_cancel, A017108.P5321374908578962383.a, A017108.P5633309342768333113.a, A017103, A017103.P10632216755998559318.a, A017105, A017105.P5139943378080408847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017108

/-!
# A017109: a(n) = (8*n+3)^9.

The programs for A017109, the canonical program `A017109.P14647518558338473707` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017109 has offset 0).

The definition of A017109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)^9` (program `A017109.P14647518558338473707`, by `A017109.P14647518558338473707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017109.P14647518558338473707

`(8*n+3)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017109

/-- `(8*n+3)^9` -/
def P14647518558338473707.Spec : Prop :=
  ∀ n, (P14647518558338473707.a n : ℤ) = A017109 n

theorem P14647518558338473707.correct : P14647518558338473707.Spec := by
  intro n
  simp only [A017109]

end A017109

/-! ## A017109.P15345318182708899325

`sqrt(A017106(n)^3)`
-/

namespace A017109.P15345318182708899325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017106 n ^ 3 : ℝ)

end

end A017109.P15345318182708899325

namespace A017109

/-- `sqrt(A017106(n)^3)` -/
def P15345318182708899325.Spec : Prop :=
  ∀ n, P15345318182708899325.a n = (A017109 n : ℝ)

end A017109

/-! ## A017109.P11670394478131551474

`A017103(n)*A017106(n)`
-/

namespace A017109.P11670394478131551474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017103 n * A017106 n

end

end A017109.P11670394478131551474

namespace A017109

/-- `A017103(n)*A017106(n)` -/
def P11670394478131551474.Spec : Prop :=
  ∀ n, P11670394478131551474.a n = A017109 n

theorem P11670394478131551474.correct : P11670394478131551474.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P11670394478131551474.a, A017109.P14647518558338473707.a, A017103, A017103.P10632216755998559318.a, A017106, A017106.P5459309327598059575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P10588881824655433425

`A017104(n)*A017105(n)`
-/

namespace A017109.P10588881824655433425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017104 n * A017105 n

end

end A017109.P10588881824655433425

namespace A017109

/-- `A017104(n)*A017105(n)` -/
def P10588881824655433425.Spec : Prop :=
  ∀ n, P10588881824655433425.a n = A017109 n

theorem P10588881824655433425.correct : P10588881824655433425.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P10588881824655433425.a, A017109.P14647518558338473707.a, A017104, A017104.P17977159712110489110.a, A017105, A017105.P5139943378080408847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P4479416127988464893

`A017104(n)²*A017101(n)`
-/

namespace A017109.P4479416127988464893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017104 n ^ 2 * A017101 n

end

end A017109.P4479416127988464893

namespace A017109

/-- `A017104(n)²*A017101(n)` -/
def P4479416127988464893.Spec : Prop :=
  ∀ n, P4479416127988464893.a n = A017109 n

theorem P4479416127988464893.correct : P4479416127988464893.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P4479416127988464893.a, A017109.P14647518558338473707.a, A017101, A017101.P13562222580894225451.a, A017104, A017104.P17977159712110489110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P17746165895570381370

`A017102(n)²*A017105(n)`
-/

namespace A017109.P17746165895570381370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017102 n ^ 2 * A017105 n

end

end A017109.P17746165895570381370

namespace A017109

/-- `A017102(n)²*A017105(n)` -/
def P17746165895570381370.Spec : Prop :=
  ∀ n, P17746165895570381370.a n = A017109 n

theorem P17746165895570381370.correct : P17746165895570381370.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P17746165895570381370.a, A017109.P14647518558338473707.a, A017102, A017102.P4204805422831714047.a, A017105, A017105.P5139943378080408847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P10705788377653032655

`A017105(n)²/A017101(n)`
-/

namespace A017109.P10705788377653032655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017105 n ^ 2 : ℚ) / (A017101 n : ℚ)

end

end A017109.P10705788377653032655

namespace A017109

/-- `A017105(n)²/A017101(n)` -/
def P10705788377653032655.Spec : Prop :=
  ∀ n, P10705788377653032655.a n = (A017109 n : ℚ)

end A017109

/-! ## A017109.P12968176459408815170

`A017102(n)²²*A017101(n)`
-/

namespace A017109.P12968176459408815170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017102 n ^ 2) ^ 2 * A017101 n

end

end A017109.P12968176459408815170

namespace A017109

/-- `A017102(n)²²*A017101(n)` -/
def P12968176459408815170.Spec : Prop :=
  ∀ n, P12968176459408815170.a n = A017109 n

theorem P12968176459408815170.correct : P12968176459408815170.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P12968176459408815170.a, A017109.P14647518558338473707.a, A017101, A017101.P13562222580894225451.a, A017102, A017102.P4204805422831714047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P12041724804208826870

`A017101(n)*A017106(n)*A017101(n)²`
-/

namespace A017109.P12041724804208826870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n * A017106 n * A017101 n ^ 2

end

end A017109.P12041724804208826870

namespace A017109

/-- `A017101(n)*A017106(n)*A017101(n)²` -/
def P12041724804208826870.Spec : Prop :=
  ∀ n, P12041724804208826870.a n = A017109 n

theorem P12041724804208826870.correct : P12041724804208826870.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P12041724804208826870.a, A017109.P14647518558338473707.a, A017101, A017101.P13562222580894225451.a, A017106, A017106.P5459309327598059575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P10779517129037898775

`A016845(2*n)`
-/

namespace A017109.P10779517129037898775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016845 (2 * n)

end

end A017109.P10779517129037898775

namespace A017109

/-- `A016845(2*n)` -/
def P10779517129037898775.Spec : Prop :=
  ∀ n, P10779517129037898775.a n = A017109 n

theorem P10779517129037898775.correct : P10779517129037898775.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P10779517129037898775.a, A017109.P14647518558338473707.a, A016845, A016845.P1544239424656120646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P16872730330839430081

`record[A004767(n)^A010690(n+1)]`
-/

namespace A017109.P16872730330839430081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004767 n : ℚ) ^ (A010690 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017109.P16872730330839430081

namespace A017109

/-- `record[A004767(n)^A010690(n+1)]` -/
def P16872730330839430081.Spec : Prop :=
  ∀ n, P16872730330839430081.a n = (A017109 n : ℚ)

end A017109

/-! ## A017109.P3628501730197072566

`A016838(2*n)*A016843(2*n)`
-/

namespace A017109.P3628501730197072566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 (2 * n) * A016843 (2 * n)

end

end A017109.P3628501730197072566

namespace A017109

/-- `A016838(2*n)*A016843(2*n)` -/
def P3628501730197072566.Spec : Prop :=
  ∀ n, P3628501730197072566.a n = A017109 n

theorem P3628501730197072566.correct : P3628501730197072566.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P3628501730197072566.a, A017109.P14647518558338473707.a, A016838, A016838.P1946869396513697861.a, A016843, A016843.P16205903007781834454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P11335292995599734868

`A016839(2*n)*A016842(2*n)`
-/

namespace A017109.P11335292995599734868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 (2 * n) * A016842 (2 * n)

end

end A017109.P11335292995599734868

namespace A017109

/-- `A016839(2*n)*A016842(2*n)` -/
def P11335292995599734868.Spec : Prop :=
  ∀ n, P11335292995599734868.a n = A017109 n

theorem P11335292995599734868.correct : P11335292995599734868.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P11335292995599734868.a, A017109.P14647518558338473707.a, A016839, A016839.P3814509805116361627.a, A016842, A016842.P16499744308022796369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P343630786321481938

`A016840(2*n)*A016841(2*n)`
-/

namespace A017109.P343630786321481938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 (2 * n) * A016841 (2 * n)

end

end A017109.P343630786321481938

namespace A017109

/-- `A016840(2*n)*A016841(2*n)` -/
def P343630786321481938.Spec : Prop :=
  ∀ n, P343630786321481938.a n = A017109 n

theorem P343630786321481938.correct : P343630786321481938.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P343630786321481938.a, A017109.P14647518558338473707.a, A016840, A016840.P5994882750815029548.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P8360639401711147886

`A016848(2*n)/A016839(2*n)`
-/

namespace A017109.P8360639401711147886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 (2 * n) : ℚ) / (A016839 (2 * n) : ℚ)

end

end A017109.P8360639401711147886

namespace A017109

/-- `A016848(2*n)/A016839(2*n)` -/
def P8360639401711147886.Spec : Prop :=
  ∀ n, P8360639401711147886.a n = (A017109 n : ℚ)

theorem P8360639401711147886.correct : P8360639401711147886.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P8360639401711147886.a, A017109.P14647518558338473707.a, A016839, A016839.P3814509805116361627.a, A016848, A016848.P5204700266064583920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P11768637096799550477

`A016840(2*n)²*A004767(2*n)`
-/

namespace A017109.P11768637096799550477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 (2 * n) ^ 2 * A004767 (2 * n)

end

end A017109.P11768637096799550477

namespace A017109

/-- `A016840(2*n)²*A004767(2*n)` -/
def P11768637096799550477.Spec : Prop :=
  ∀ n, P11768637096799550477.a n = A017109 n

theorem P11768637096799550477.correct : P11768637096799550477.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P11768637096799550477.a, A017109.P14647518558338473707.a, A004767, A004767.P13352534504447192883.a, A016840, A016840.P5994882750815029548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P1531751519207527589

`A004767(2*n)²*A016843(2*n)`
-/

namespace A017109.P1531751519207527589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n) ^ 2 * A016843 (2 * n)

end

end A017109.P1531751519207527589

namespace A017109

/-- `A004767(2*n)²*A016843(2*n)` -/
def P1531751519207527589.Spec : Prop :=
  ∀ n, P1531751519207527589.a n = A017109 n

theorem P1531751519207527589.correct : P1531751519207527589.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P1531751519207527589.a, A017109.P14647518558338473707.a, A004767, A004767.P13352534504447192883.a, A016843, A016843.P16205903007781834454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P3126143597869582068

`A016838(2*n)²*A016841(2*n)`
-/

namespace A017109.P3126143597869582068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 (2 * n) ^ 2 * A016841 (2 * n)

end

end A017109.P3126143597869582068

namespace A017109

/-- `A016838(2*n)²*A016841(2*n)` -/
def P3126143597869582068.Spec : Prop :=
  ∀ n, P3126143597869582068.a n = A017109 n

theorem P3126143597869582068.correct : P3126143597869582068.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P3126143597869582068.a, A017109.P14647518558338473707.a, A016838, A016838.P1946869396513697861.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-! ## A017109.P11501243199160328863

`A016841(2*n)²/A004767(2*n)`
-/

namespace A017109.P11501243199160328863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016841 (2 * n) ^ 2 : ℚ) / (A004767 (2 * n) : ℚ)

end

end A017109.P11501243199160328863

namespace A017109

/-- `A016841(2*n)²/A004767(2*n)` -/
def P11501243199160328863.Spec : Prop :=
  ∀ n, P11501243199160328863.a n = (A017109 n : ℚ)

theorem P11501243199160328863.correct : P11501243199160328863.Spec := by
  intro n
  simp only [A017109, Nat.add_sub_cancel, A017109.P11501243199160328863.a, A017109.P14647518558338473707.a, A004767, A004767.P13352534504447192883.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017109

/-!
# A017110: a(n) = (8*n+3)^10.

The programs for A017110, the canonical program `A017110.P1995994226825250533` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017110 has offset 0).

The definition of A017110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)^10` (program `A017110.P1995994226825250533`, by `A017110.P1995994226825250533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017110.P1995994226825250533

`(8*n+3)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017110

/-- `(8*n+3)^10` -/
def P1995994226825250533.Spec : Prop :=
  ∀ n, (P1995994226825250533.a n : ℤ) = A017110 n

theorem P1995994226825250533.correct : P1995994226825250533.Spec := by
  intro n
  simp only [A017110]

end A017110

/-! ## A017110.P13911325541954916583

`A017105(n)²`
-/

namespace A017110.P13911325541954916583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017105 n ^ 2

end

end A017110.P13911325541954916583

namespace A017110

/-- `A017105(n)²` -/
def P13911325541954916583.Spec : Prop :=
  ∀ n, P13911325541954916583.a n = A017110 n

theorem P13911325541954916583.correct : P13911325541954916583.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P13911325541954916583.a, A017110.P1995994226825250533.a, A017105, A017105.P5139943378080408847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P362175595738260132

`sqrt(A017104(n)^5)`
-/

namespace A017110.P362175595738260132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017104 n ^ 5 : ℝ)

end

end A017110.P362175595738260132

namespace A017110

/-- `sqrt(A017104(n)^5)` -/
def P362175595738260132.Spec : Prop :=
  ∀ n, P362175595738260132.a n = (A017110 n : ℝ)

end A017110

/-! ## A017110.P8878837784339018167

`A017104(n)*A017106(n)`
-/

namespace A017110.P8878837784339018167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017104 n * A017106 n

end

end A017110.P8878837784339018167

namespace A017110

/-- `A017104(n)*A017106(n)` -/
def P8878837784339018167.Spec : Prop :=
  ∀ n, P8878837784339018167.a n = A017110 n

theorem P8878837784339018167.correct : P8878837784339018167.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P8878837784339018167.a, A017110.P1995994226825250533.a, A017104, A017104.P17977159712110489110.a, A017106, A017106.P5459309327598059575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P9901389036996726594

`sqrt(sqrt(A017108(n)))*A017108(n)`
-/

namespace A017110.P9901389036996726594
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017108 n : ℝ)) * (A017108 n : ℝ)

end

end A017110.P9901389036996726594

namespace A017110

/-- `sqrt(sqrt(A017108(n)))*A017108(n)` -/
def P9901389036996726594.Spec : Prop :=
  ∀ n, P9901389036996726594.a n = (A017110 n : ℝ)

end A017110

/-! ## A017110.P2715430087257096790

`A017102(n)/(1/A017104(n))²`
-/

namespace A017110.P2715430087257096790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017102 n : ℚ) / (1 / (A017104 n : ℚ)) ^ 2

end

end A017110.P2715430087257096790

namespace A017110

/-- `A017102(n)/(1/A017104(n))²` -/
def P2715430087257096790.Spec : Prop :=
  ∀ n, P2715430087257096790.a n = (A017110 n : ℚ)

end A017110

/-! ## A017110.P12337516505611688353

`A016846(2*n)`
-/

namespace A017110.P12337516505611688353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016846 (2 * n)

end

end A017110.P12337516505611688353

namespace A017110

/-- `A016846(2*n)` -/
def P12337516505611688353.Spec : Prop :=
  ∀ n, P12337516505611688353.a n = A017110 n

theorem P12337516505611688353.correct : P12337516505611688353.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P12337516505611688353.a, A017110.P1995994226825250533.a, A016846, A016846.P2352443008357000879.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P5629383442626980087

`A016841(2*n)²`
-/

namespace A017110.P5629383442626980087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016841 (2 * n) ^ 2

end

end A017110.P5629383442626980087

namespace A017110

/-- `A016841(2*n)²` -/
def P5629383442626980087.Spec : Prop :=
  ∀ n, P5629383442626980087.a n = A017110 n

theorem P5629383442626980087.correct : P5629383442626980087.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P5629383442626980087.a, A017110.P1995994226825250533.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P1001594692881666409

`A004767(2*n)*A016845(2*n)`
-/

namespace A017110.P1001594692881666409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n) * A016845 (2 * n)

end

end A017110.P1001594692881666409

namespace A017110

/-- `A004767(2*n)*A016845(2*n)` -/
def P1001594692881666409.Spec : Prop :=
  ∀ n, P1001594692881666409.a n = A017110 n

theorem P1001594692881666409.correct : P1001594692881666409.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P1001594692881666409.a, A017110.P1995994226825250533.a, A004767, A004767.P13352534504447192883.a, A016845, A016845.P1544239424656120646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P13154588563839170715

`A016847(2*n)/A004767(2*n)`
-/

namespace A017110.P13154588563839170715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 (2 * n) : ℚ) / (A004767 (2 * n) : ℚ)

end

end A017110.P13154588563839170715

namespace A017110

/-- `A016847(2*n)/A004767(2*n)` -/
def P13154588563839170715.Spec : Prop :=
  ∀ n, P13154588563839170715.a n = (A017110 n : ℚ)

theorem P13154588563839170715.correct : P13154588563839170715.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P13154588563839170715.a, A017110.P1995994226825250533.a, A004767, A004767.P13352534504447192883.a, A016847, A016847.P5321093100714514550.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P5539137114008620016

`A016848(2*n)/A016838(2*n)`
-/

namespace A017110.P5539137114008620016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 (2 * n) : ℚ) / (A016838 (2 * n) : ℚ)

end

end A017110.P5539137114008620016

namespace A017110

/-- `A016848(2*n)/A016838(2*n)` -/
def P5539137114008620016.Spec : Prop :=
  ∀ n, P5539137114008620016.a n = (A017110 n : ℚ)

theorem P5539137114008620016.correct : P5539137114008620016.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P5539137114008620016.a, A017110.P1995994226825250533.a, A016838, A016838.P1946869396513697861.a, A016848, A016848.P5204700266064583920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P470890377910996175

`A016847(2*n)/(A016825(2*n)+1)`
-/

namespace A017110.P470890377910996175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 (2 * n) : ℚ) / (A016825 (2 * n) + 1 : ℚ)

end

end A017110.P470890377910996175

namespace A017110

/-- `A016847(2*n)/(A016825(2*n)+1)` -/
def P470890377910996175.Spec : Prop :=
  ∀ n, P470890377910996175.a n = (A017110 n : ℚ)

theorem P470890377910996175.correct : P470890377910996175.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P470890377910996175.a, A017110.P1995994226825250533.a, A016825, A016825.P4712696052905976233.a, A016847, A016847.P5321093100714514550.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P8454218500300008163

`A016762(3*n+n+1)`
-/

namespace A017110.P8454218500300008163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016762 (3 * n + (n + 1))

end

end A017110.P8454218500300008163

namespace A017110

/-- `A016762(3*n+n+1)` -/
def P8454218500300008163.Spec : Prop :=
  ∀ n, P8454218500300008163.a n = A017110 n

theorem P8454218500300008163.correct : P8454218500300008163.Spec := by
  intro n
  simp only [A017110, Nat.add_sub_cancel, A017110.P8454218500300008163.a, A017110.P1995994226825250533.a, A016762, A016762.P4277765179051944872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017110

/-! ## A017110.P16772950968073767097

`A008454(A017101(n))`
-/

namespace A017110.P16772950968073767097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017101 n).toNat

end

end A017110.P16772950968073767097

namespace A017110

/-- `A008454(A017101(n))` -/
def P16772950968073767097.Spec : Prop :=
  ∀ n, P16772950968073767097.a n = A017110 n

end A017110

/-! ## A017110.P11391158228500767007

`A008454(A017089(n)+1)`
-/

namespace A017110.P11391158228500767007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017089 n + 1).toNat

end

end A017110.P11391158228500767007

namespace A017110

/-- `A008454(A017089(n)+1)` -/
def P11391158228500767007.Spec : Prop :=
  ∀ n, P11391158228500767007.a n = A017110 n

end A017110

/-! ## A017110.P470697382835268276

`A008454(2*A016813(n)+1)`
-/

namespace A017110.P470697382835268276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016813 n + 1).toNat

end

end A017110.P470697382835268276

namespace A017110

/-- `A008454(2*A016813(n)+1)` -/
def P470697382835268276.Spec : Prop :=
  ∀ n, P470697382835268276.a n = A017110 n

end A017110

/-! ## A017110.P6665549109909340861

`A008454(A008586(2*n+1)-1)`
-/

namespace A017110.P6665549109909340861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008586 (2 * n + 1) - 1).toNat

end

end A017110.P6665549109909340861

namespace A017110

/-- `A008454(A008586(2*n+1)-1)` -/
def P6665549109909340861.Spec : Prop :=
  ∀ n, P6665549109909340861.a n = A017110 n

end A017110

/-! ## A017110.P2842194629043249398

`A008454(A008585(2*n+1)+2*n)`
-/

namespace A017110.P2842194629043249398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008585 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A017110.P2842194629043249398

namespace A017110

/-- `A008454(A008585(2*n+1)+2*n)` -/
def P2842194629043249398.Spec : Prop :=
  ∀ n, P2842194629043249398.a n = A017110 n

end A017110

/-! ## A017110.P15944824547212832629

`A008454(A016813(n)+A016813(n)+1)`
-/

namespace A017110.P15944824547212832629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 n + (A016813 n + 1)).toNat

end

end A017110.P15944824547212832629

namespace A017110

/-- `A008454(A016813(n)+A016813(n)+1)` -/
def P15944824547212832629.Spec : Prop :=
  ∀ n, P15944824547212832629.a n = A017110 n

end A017110

/-! ## A017110.P12851049927483526346

`A008454(A016777(A016777(n))-(n+1))`
-/

namespace A017110.P12851049927483526346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (A016777 n).toNat - (n + 1 : ℤ)).toNat

end

end A017110.P12851049927483526346

namespace A017110

/-- `A008454(A016777(A016777(n))-(n+1))` -/
def P12851049927483526346.Spec : Prop :=
  ∀ n, P12851049927483526346.a n = A017110 n

end A017110

/-!
# A017111: 

The programs for A017111, there is no canonical definition to state claims against.
-/

/-! ## A017111.P2261552636323940985

`(8*n+3)^11`
-/

namespace A017111.P2261552636323940985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 3) ^ 11

end

end A017111.P2261552636323940985

/-! ## A017111.P12961289792103451881

`record[A134429(n)^11]`
-/

namespace A017111.P12961289792103451881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134429 n ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017111.P12961289792103451881

/-! ## A017111.P5258141989343848954

`A016847(2*n)`
-/

namespace A017111.P5258141989343848954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016847 (2 * n)

end

end A017111.P5258141989343848954

/-! ## A017111.P8658072214436735875

`A016848(2*n)/A004767(2*n)`
-/

namespace A017111.P8658072214436735875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 (2 * n) : ℚ) / (A004767 (2 * n) : ℚ)

end

end A017111.P8658072214436735875

/-! ## A017111.P11860995560274013894

`A016838(2*n)²²*A016839(2*n)`
-/

namespace A017111.P11860995560274013894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016838 (2 * n) ^ 2) ^ 2 * A016839 (2 * n)

end

end A017111.P11860995560274013894

/-! ## A017111.P16879981682130207733

`A016839(2*n)²²/A004767(2*n)`
-/

namespace A017111.P16879981682130207733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016839 (2 * n) ^ 2) ^ 2 : ℚ) / (A004767 (2 * n) : ℚ)

end

end A017111.P16879981682130207733

/-! ## A017111.P16035603474691023471

`A016838(2*n)/A016839(2*n)*A016848(2*n)`
-/

namespace A017111.P16035603474691023471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016838 (2 * n) : ℚ) / (A016839 (2 * n) : ℚ) * (A016848 (2 * n) : ℚ)

end

end A017111.P16035603474691023471

/-! ## A017111.P8631871786780246335

`A016763(3*n+n+1)`
-/

namespace A017111.P8631871786780246335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (3 * n + (n + 1))

end

end A017111.P8631871786780246335

/-! ## A017111.P10312982961386154571

`A008455(A017101(n))`
-/

namespace A017111.P10312982961386154571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017101 n).toNat

end

end A017111.P10312982961386154571

/-! ## A017111.P5657060867816271774

`A008455(A017113(n)-1)`
-/

namespace A017111.P5657060867816271774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017113 n - 1).toNat

end

end A017111.P5657060867816271774

/-! ## A017111.P10405919150698277242

`A008455(2*A016813(n)+1)`
-/

namespace A017111.P10405919150698277242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * A016813 n + 1).toNat

end

end A017111.P10405919150698277242

/-! ## A017111.P17880566779017101636

`A008455(A008585(2*n+1)+2*n)`
-/

namespace A017111.P17880566779017101636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A017111.P17880566779017101636

/-! ## A017111.P11675845494867846622

`A008455(A016813(n)+A016813(n)+1)`
-/

namespace A017111.P11675845494867846622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 n + (A016813 n + 1)).toNat

end

end A017111.P11675845494867846622

/-!
# A017112: 

The programs for A017112, there is no canonical definition to state claims against.
-/

/-! ## A017112.P7161101252371430343

`(8*n+3)^12`
-/

namespace A017112.P7161101252371430343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 3) ^ 12

end

end A017112.P7161101252371430343

/-! ## A017112.P12329344151921178704

`A017106(n)²`
-/

namespace A017112.P12329344151921178704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017106 n ^ 2

end

end A017112.P12329344151921178704

/-! ## A017112.P16938478543120252790

`(A017101(n)^6)²`
-/

namespace A017112.P16938478543120252790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017101 n ^ 6) ^ 2

end

end A017112.P16938478543120252790

/-! ## A017112.P5758884759188594349

`sqrt(A017108(n))*A017108(n)`
-/

namespace A017112.P5758884759188594349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017108 n : ℝ) * (A017108 n : ℝ)

end

end A017112.P5758884759188594349

/-! ## A017112.P15425141438901408120

`A016848(2*n)`
-/

namespace A017112.P15425141438901408120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016848 (2 * n)

end

end A017112.P15425141438901408120

/-! ## A017112.P337991355942664358

`(A016825(2*n)+1)*A016847(2*n)`
-/

namespace A017112.P337991355942664358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 (2 * n) + 1) * A016847 (2 * n)

end

end A017112.P337991355942664358

/-! ## A017112.P7265263400508032288

`A016764(3*n+n+1)`
-/

namespace A017112.P7265263400508032288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (3 * n + (n + 1))

end

end A017112.P7265263400508032288

/-! ## A017112.P7785021476562397084

`A016755(3*n+n+1)²²`
-/

namespace A017112.P7785021476562397084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016755 (3 * n + (n + 1)) ^ 2) ^ 2

end

end A017112.P7785021476562397084

/-! ## A017112.P12422398558996000663

`sqrt(A017108(n)^3)`
-/

namespace A017112.P12422398558996000663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017108 n ^ 3 : ℝ)

end

end A017112.P12422398558996000663

/-! ## A017112.P13630549689326810570

`A008456(A004767(2*n))`
-/

namespace A017112.P13630549689326810570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 (2 * n)).toNat

end

end A017112.P13630549689326810570

/-! ## A017112.P1923906438540131418

`A008456(A017209(n)-(n+1))`
-/

namespace A017112.P1923906438540131418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017209 n - (n + 1 : ℤ)).toNat

end

end A017112.P1923906438540131418

/-! ## A017112.P2233894955605412430

`A008456(A017209(n)-1-n)`
-/

namespace A017112.P2233894955605412430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017209 n - 1 - (n : ℤ)).toNat

end

end A017112.P2233894955605412430

/-! ## A017112.P6191003823722487931

`A000578(A017089(n)+1)²²`
-/

namespace A017112.P6191003823722487931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017089 n + 1).toNat ^ 2) ^ 2

end

end A017112.P6191003823722487931

/-! ## A017112.P1859999580001319848

`A008456(A016777(A016777(n))-(n+1))`
-/

namespace A017112.P1859999580001319848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016777 (A016777 n).toNat - (n + 1 : ℤ)).toNat

end

end A017112.P1859999580001319848

/-!
# A017113: a(n) = 8*n + 4.

The programs for A017113, the canonical program `A017113.P3624354701485579327` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017113 has offset 0).

The definition of A017113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+4` (program `A017113.P3624354701485579327`, by `A017113.P3624354701485579327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017113.P3624354701485579327

`8*n+4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017113

/-- `8*n+4` -/
def P3624354701485579327.Spec : Prop :=
  ∀ n, (P3624354701485579327.a n : ℤ) = A017113 n

theorem P3624354701485579327.correct : P3624354701485579327.Spec := by
  intro n
  simp only [A017113]

end A017113

/-!
# A017114: a(n) = (8*n + 4)^2.

The programs for A017114, the canonical program `A017114.P12795076234335230901` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017114 has offset 0).

The definition of A017114 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)²` (program `A017114.P12795076234335230901`, by `A017114.P12795076234335230901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017114.P12795076234335230901

`(8*n+4)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017114

/-- `(8*n+4)²` -/
def P12795076234335230901.Spec : Prop :=
  ∀ n, (P12795076234335230901.a n : ℤ) = A017114 n

theorem P12795076234335230901.correct : P12795076234335230901.Spec := by
  intro n
  simp only [A017114]

end A017114

/-! ## A017114.P6635893821298920264

`ogf((16+96x+16x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017114.P6635893821298920264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 96, 16] [1, -3, 3, -1] n

end

end A017114.P6635893821298920264

namespace A017114

/-- `ogf((16+96x+16x^2)/(1-3x+3x^2-x^3))` -/
def P6635893821298920264.Spec : Prop :=
  ∀ n, P6635893821298920264.a n = A017114 n

end A017114

/-! ## A017114.P17477207852812146911

`16*A016754(n)`
-/

namespace A017114.P17477207852812146911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016754 n

end

end A017114.P17477207852812146911

namespace A017114

/-- `16*A016754(n)` -/
def P17477207852812146911.Spec : Prop :=
  ∀ n, P17477207852812146911.a n = A017114 n

theorem P17477207852812146911.correct : P17477207852812146911.Spec := by
  intro n
  simp only [A017114, Nat.add_sub_cancel, A017114.P17477207852812146911.a, A017114.P12795076234335230901.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017114

/-! ## A017114.P13166367484464972793

`lcm(16, Δ[n²]²)`
-/

namespace A017114.P13166367484464972793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 16 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A017114.P13166367484464972793

namespace A017114

/-- `lcm(16, Δ[n²]²)` -/
def P13166367484464972793.Spec : Prop :=
  ∀ n, (P13166367484464972793.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P2902551801047352769

`record[lcm(4, n+1)²]`
-/

namespace A017114.P2902551801047352769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017114.P2902551801047352769

namespace A017114

/-- `record[lcm(4, n+1)²]` -/
def P2902551801047352769.Spec : Prop :=
  ∀ n, (P2902551801047352769.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P10857808161341605604

`record[(4*xor(1, n))²]`
-/

namespace A017114.P10857808161341605604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017114.P10857808161341605604

namespace A017114

/-- `record[(4*xor(1, n))²]` -/
def P10857808161341605604.Spec : Prop :=
  ∀ n, (P10857808161341605604.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P8816381089536117574

`record[(3-xor(7, n))²]`
-/

namespace A017114.P8816381089536117574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.xor 7 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017114.P8816381089536117574

namespace A017114

/-- `record[(3-xor(7, n))²]` -/
def P8816381089536117574.Spec : Prop :=
  ∀ n, P8816381089536117574.a n = A017114 n

end A017114

/-! ## A017114.P7073433992551834058

`4*or(2, 4*n)²`
-/

namespace A017114.P7073433992551834058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 2 (4 * n) ^ 2

end

end A017114.P7073433992551834058

namespace A017114

/-- `4*or(2, 4*n)²` -/
def P7073433992551834058.Spec : Prop :=
  ∀ n, (P7073433992551834058.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P14110813781021587815

`4*xor(2, 4*n)²`
-/

namespace A017114.P14110813781021587815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 2 (4 * n) ^ 2

end

end A017114.P14110813781021587815

namespace A017114

/-- `4*xor(2, 4*n)²` -/
def P14110813781021587815.Spec : Prop :=
  ∀ n, (P14110813781021587815.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P4453561352385915954

`filter[(n+1)², val(#, 8)]`
-/

namespace A017114.P4453561352385915954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j) 8 = 1) n)

end

end A017114.P4453561352385915954

namespace A017114

/-- `filter[(n+1)², val(#, 8)]` -/
def P4453561352385915954.Spec : Prop :=
  ∀ n, (P4453561352385915954.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P6404415656804799091

`and(-2, Δ[(2*n)²]²)`
-/

namespace A017114.P6404415656804799091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A017114.P6404415656804799091

namespace A017114

/-- `and(-2, Δ[(2*n)²]²)` -/
def P6404415656804799091.Spec : Prop :=
  ∀ n, P6404415656804799091.a n = A017114 n

end A017114

/-! ## A017114.P5635899755616128069

`(2*sqrt(or(1, 2*n)))^4`
-/

namespace A017114.P5635899755616128069
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * Real.sqrt (Nat.lor 1 (2 * n) : ℝ)) ^ 4

end

end A017114.P5635899755616128069

namespace A017114

/-- `(2*sqrt(or(1, 2*n)))^4` -/
def P5635899755616128069.Spec : Prop :=
  ∀ n, P5635899755616128069.a n = (A017114 n : ℝ)

end A017114

/-! ## A017114.P17298744395489009814

`(2*sqrt(xor(1, 2*n)))^4`
-/

namespace A017114.P17298744395489009814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * Real.sqrt (Nat.xor 1 (2 * n) : ℝ)) ^ 4

end

end A017114.P17298744395489009814

namespace A017114

/-- `(2*sqrt(xor(1, 2*n)))^4` -/
def P17298744395489009814.Spec : Prop :=
  ∀ n, P17298744395489009814.a n = (A017114 n : ℝ)

end A017114

/-! ## A017114.P1080967570800041427

`record[(4*(n+1))^gcd(2, n)]`
-/

namespace A017114.P1080967570800041427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1)) ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017114.P1080967570800041427

namespace A017114

/-- `record[(4*(n+1))^gcd(2, n)]` -/
def P1080967570800041427.Spec : Prop :=
  ∀ n, (P1080967570800041427.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P13594841900685666131

`record[((n-1)*gcd(4, n²))²]`
-/

namespace A017114.P13594841900685666131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (Nat.gcd 4 (n ^ 2) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017114.P13594841900685666131

namespace A017114

/-- `record[((n-1)*gcd(4, n²))²]` -/
def P13594841900685666131.Spec : Prop :=
  ∀ n, P13594841900685666131.a n = A017114 n

end A017114

/-! ## A017114.P14217546108190729907

`(4*(2*n+1))^acos(cos(2))`
-/

namespace A017114.P14217546108190729907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * (2 * n + 1) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A017114.P14217546108190729907

namespace A017114

/-- `(4*(2*n+1))^acos(cos(2))` -/
def P14217546108190729907.Spec : Prop :=
  ∀ n, P14217546108190729907.a n = (A017114 n : ℝ)

end A017114

/-! ## A017114.P5016625121326622275

`record[(gcd(8, 1-n)+n+3)²]`
-/

namespace A017114.P5016625121326622275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 8 (1 - (n : ℤ)) + (n + 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017114.P5016625121326622275

namespace A017114

/-- `record[(gcd(8, 1-n)+n+3)²]` -/
def P5016625121326622275.Spec : Prop :=
  ∀ n, (P5016625121326622275.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P14943242345846575422

`Δ[(2*n)²]²-and(2, n²)`
-/

namespace A017114.P14943242345846575422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (Nat.land 2 (n ^ 2) : ℤ)

end

end A017114.P14943242345846575422

namespace A017114

/-- `Δ[(2*n)²]²-and(2, n²)` -/
def P14943242345846575422.Spec : Prop :=
  ∀ n, P14943242345846575422.a n = A017114 n

end A017114

/-! ## A017114.P9525763333094262632

`gcd(Δ[(2*n)²]², and(2, n²))`
-/

namespace A017114.P9525763333094262632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (Nat.land 2 (n ^ 2) : ℤ)

end

end A017114.P9525763333094262632

namespace A017114

/-- `gcd(Δ[(2*n)²]², and(2, n²))` -/
def P9525763333094262632.Spec : Prop :=
  ∀ n, (P9525763333094262632.a n : ℤ) = A017114 n

end A017114

/-! ## A017114.P2633361825408774717

`C(Δ[(2*n)²]², ϕ²-ϕ)`
-/

namespace A017114.P2633361825408774717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A017114.P2633361825408774717

namespace A017114

/-- `C(Δ[(2*n)²]², ϕ²-ϕ)` -/
def P2633361825408774717.Spec : Prop :=
  ∀ n, (P2633361825408774717.a n : ℤ) = A017114 n

end A017114

/-!
# A017115: a(n) = (8*n + 4)^3.

The programs for A017115, the canonical program `A017115.P13001504716068077086` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017115 has offset 0).

The definition of A017115 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)^3` (program `A017115.P13001504716068077086`, by `A017115.P13001504716068077086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017115.P13001504716068077086

`(8*n+4)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017115

/-- `(8*n+4)^3` -/
def P13001504716068077086.Spec : Prop :=
  ∀ n, (P13001504716068077086.a n : ℤ) = A017115 n

theorem P13001504716068077086.correct : P13001504716068077086.Spec := by
  intro n
  simp only [A017115]

end A017115

/-! ## A017115.P9417529553666749355

`record[lcm(4, n+1)^3]`
-/

namespace A017115.P9417529553666749355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017115.P9417529553666749355

namespace A017115

/-- `record[lcm(4, n+1)^3]` -/
def P9417529553666749355.Spec : Prop :=
  ∀ n, (P9417529553666749355.a n : ℤ) = A017115 n

end A017115

/-! ## A017115.P17238378058008426457

`record[(4*xor(1, n))^3]`
-/

namespace A017115.P17238378058008426457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017115.P17238378058008426457

namespace A017115

/-- `record[(4*xor(1, n))^3]` -/
def P17238378058008426457.Spec : Prop :=
  ∀ n, (P17238378058008426457.a n : ℤ) = A017115 n

end A017115

/-! ## A017115.P9653848895385754416

`lcm(2, Δ[(2*n)²]^3)`
-/

namespace A017115.P9653848895385754416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3)

end

end A017115.P9653848895385754416

namespace A017115

/-- `lcm(2, Δ[(2*n)²]^3)` -/
def P9653848895385754416.Spec : Prop :=
  ∀ n, (P9653848895385754416.a n : ℤ) = A017115 n

end A017115

/-! ## A017115.P4009649575712447084

`and(-2, Δ[(2*n)²]^3)`
-/

namespace A017115.P4009649575712447084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3)

end

end A017115.P4009649575712447084

namespace A017115

/-- `and(-2, Δ[(2*n)²]^3)` -/
def P4009649575712447084.Spec : Prop :=
  ∀ n, P4009649575712447084.a n = A017115 n

end A017115

/-! ## A017115.P18086232191928474114

`∏{d}[-a(n-1), (2*n+1)*#²]` with `a(0)=4`
-/

namespace A017115.P18086232191928474114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (2 * n + 1) * d ^ 2

end

end A017115.P18086232191928474114

namespace A017115

/-- `∏{d}[-a(n-1), (2*n+1)*#²]` -/
def P18086232191928474114.Spec : Prop :=
  ∀ n, (P18086232191928474114.a n : ℤ) = A017115 n

end A017115

/-! ## A017115.P8541204300715537533

`sqrt(A017118(n))`
-/

namespace A017115.P8541204300715537533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017118 n : ℝ)

end

end A017115.P8541204300715537533

namespace A017115

/-- `sqrt(A017118(n))` -/
def P8541204300715537533.Spec : Prop :=
  ∀ n, P8541204300715537533.a n = (A017115 n : ℝ)

end A017115

/-! ## A017115.P1761403359155303009

`8*A016827(n)`
-/

namespace A017115.P1761403359155303009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016827 n

end

end A017115.P1761403359155303009

namespace A017115

/-- `8*A016827(n)` -/
def P1761403359155303009.Spec : Prop :=
  ∀ n, P1761403359155303009.a n = A017115 n

theorem P1761403359155303009.correct : P1761403359155303009.Spec := by
  intro n
  simp only [A017115, Nat.add_sub_cancel, A017115.P1761403359155303009.a, A017115.P13001504716068077086.a, A016827, A016827.P15145738709688113993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017115

/-! ## A017115.P15616477664464077027

`sqrt(A017114(n)^3)`
-/

namespace A017115.P15616477664464077027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017114 n ^ 3 : ℝ)

end

end A017115.P15616477664464077027

namespace A017115

/-- `sqrt(A017114(n)^3)` -/
def P15616477664464077027.Spec : Prop :=
  ∀ n, P15616477664464077027.a n = (A017115 n : ℝ)

end A017115

/-! ## A017115.P5430496148696864527

`A017113(n)*A017114(n)`
-/

namespace A017115.P5430496148696864527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n * A017114 n

end

end A017115.P5430496148696864527

namespace A017115

/-- `A017113(n)*A017114(n)` -/
def P5430496148696864527.Spec : Prop :=
  ∀ n, P5430496148696864527.a n = A017115 n

theorem P5430496148696864527.correct : P5430496148696864527.Spec := by
  intro n
  simp only [A017115, Nat.add_sub_cancel, A017115.P5430496148696864527.a, A017115.P13001504716068077086.a, A017113, A017113.P3624354701485579327.a, A017114, A017114.P12795076234335230901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017115

/-! ## A017115.P13911744757984567055

`A016830(n)/A016755(n)`
-/

namespace A017115.P13911744757984567055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016830 n : ℚ) / (A016755 n : ℚ)

end

end A017115.P13911744757984567055

namespace A017115

/-- `A016830(n)/A016755(n)` -/
def P13911744757984567055.Spec : Prop :=
  ∀ n, P13911744757984567055.a n = (A017115 n : ℚ)

theorem P13911744757984567055.correct : P13911744757984567055.Spec := by
  intro n
  simp only [A017115, Nat.add_sub_cancel, A017115.P13911744757984567055.a, A017115.P13001504716068077086.a, A016755, A016755.P5941101717872313811.a, A016830, A016830.P16460860161337745608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017115

/-! ## A017115.P9043173861492382025

`A017116(n)/A017113(n)`
-/

namespace A017115.P9043173861492382025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017116 n : ℚ) / (A017113 n : ℚ)

end

end A017115.P9043173861492382025

namespace A017115

/-- `A017116(n)/A017113(n)` -/
def P9043173861492382025.Spec : Prop :=
  ∀ n, P9043173861492382025.a n = (A017115 n : ℚ)

end A017115

/-! ## A017115.P9704594540490361169

`A017117(n)/A017114(n)`
-/

namespace A017115.P9704594540490361169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017117 n : ℚ) / (A017114 n : ℚ)

end

end A017115.P9704594540490361169

namespace A017115

/-- `A017117(n)/A017114(n)` -/
def P9704594540490361169.Spec : Prop :=
  ∀ n, P9704594540490361169.a n = (A017115 n : ℚ)

end A017115

/-! ## A017115.P7841381514672943034

`A017119(n)/A017116(n)`
-/

namespace A017115.P7841381514672943034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017119 n : ℚ) / (A017116 n : ℚ)

end

end A017115.P7841381514672943034

namespace A017115

/-- `A017119(n)/A017116(n)` -/
def P7841381514672943034.Spec : Prop :=
  ∀ n, P7841381514672943034.a n = (A017115 n : ℚ)

end A017115

/-! ## A017115.P6084918794822783658

`A016827(n)²/A016755(n)`
-/

namespace A017115.P6084918794822783658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016827 n ^ 2 : ℚ) / (A016755 n : ℚ)

end

end A017115.P6084918794822783658

namespace A017115

/-- `A016827(n)²/A016755(n)` -/
def P6084918794822783658.Spec : Prop :=
  ∀ n, P6084918794822783658.a n = (A017115 n : ℚ)

theorem P6084918794822783658.correct : P6084918794822783658.Spec := by
  intro n
  simp only [A017115, Nat.add_sub_cancel, A017115.P6084918794822783658.a, A017115.P13001504716068077086.a, A016755, A016755.P5941101717872313811.a, A016827, A016827.P15145738709688113993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017115

/-! ## A017115.P15833030442769340809

`A017117(n)/A017113(n)²`
-/

namespace A017115.P15833030442769340809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017117 n : ℚ) / (A017113 n ^ 2 : ℚ)

end

end A017115.P15833030442769340809

namespace A017115

/-- `A017117(n)/A017113(n)²` -/
def P15833030442769340809.Spec : Prop :=
  ∀ n, P15833030442769340809.a n = (A017115 n : ℚ)

end A017115

/-! ## A017115.P1743331935927616221

`A017116(n)²/A017117(n)`
-/

namespace A017115.P1743331935927616221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017116 n ^ 2 : ℚ) / (A017117 n : ℚ)

end

end A017115.P1743331935927616221

namespace A017115

/-- `A017116(n)²/A017117(n)` -/
def P1743331935927616221.Spec : Prop :=
  ∀ n, P1743331935927616221.a n = (A017115 n : ℚ)

end A017115

/-! ## A017115.P10043895937542838729

`sqrt(A017122(n)/A017116(n))`
-/

namespace A017115.P10043895937542838729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A017122 n : ℚ) / (A017116 n : ℚ) : ℝ)

end

end A017115.P10043895937542838729

namespace A017115

/-- `sqrt(A017122(n)/A017116(n))` -/
def P10043895937542838729.Spec : Prop :=
  ∀ n, P10043895937542838729.a n = (A017115 n : ℝ)

end A017115

/-! ## A017115.P4336216664140632886

`A017119(n)/A017113(n)²²`
-/

namespace A017115.P4336216664140632886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017119 n : ℚ) / ((A017113 n ^ 2) ^ 2 : ℚ)

end

end A017115.P4336216664140632886

namespace A017115

/-- `A017119(n)/A017113(n)²²` -/
def P4336216664140632886.Spec : Prop :=
  ∀ n, P4336216664140632886.a n = (A017115 n : ℚ)

end A017115

/-!
# A017116: a(n) = (8*n + 4)^4.

The programs for A017116, the canonical program `A017116.P17039600374842277978` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017116 has offset 0).

The definition of A017116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)^4` (program `A017116.P17039600374842277978`, by `A017116.P17039600374842277978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017116.P17039600374842277978

`(8*n+4)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017116

/-- `(8*n+4)^4` -/
def P17039600374842277978.Spec : Prop :=
  ∀ n, (P17039600374842277978.a n : ℤ) = A017116 n

theorem P17039600374842277978.correct : P17039600374842277978.Spec := by
  intro n
  simp only [A017116]

end A017116

/-! ## A017116.P14521231471825751678

`or(4, 8*n)²²`
-/

namespace A017116.P14521231471825751678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 (8 * n) ^ 2) ^ 2

end

end A017116.P14521231471825751678

namespace A017116

/-- `or(4, 8*n)²²` -/
def P14521231471825751678.Spec : Prop :=
  ∀ n, (P14521231471825751678.a n : ℤ) = A017116 n

end A017116

/-! ## A017116.P16667815275650885242

`xor(4, 8*n)²²`
-/

namespace A017116.P16667815275650885242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 4 (8 * n) ^ 2) ^ 2

end

end A017116.P16667815275650885242

namespace A017116

/-- `xor(4, 8*n)²²` -/
def P16667815275650885242.Spec : Prop :=
  ∀ n, (P16667815275650885242.a n : ℤ) = A017116 n

end A017116

/-! ## A017116.P14568874886230530066

`lcm(4, Δ[n²])²²`
-/

namespace A017116.P14568874886230530066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017116.P14568874886230530066

namespace A017116

/-- `lcm(4, Δ[n²])²²` -/
def P14568874886230530066.Spec : Prop :=
  ∀ n, (P14568874886230530066.a n : ℤ) = A017116 n

end A017116

/-! ## A017116.P12924891679441730974

`record[(4*xor(1, n))^4]`
-/

namespace A017116.P12924891679441730974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * Nat.xor 1 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017116.P12924891679441730974

namespace A017116

/-- `record[(4*xor(1, n))^4]` -/
def P12924891679441730974.Spec : Prop :=
  ∀ n, (P12924891679441730974.a n : ℤ) = A017116 n

end A017116

/-! ## A017116.P9179085396311420929

`filter[(n+1)², val(#, 8)]²`
-/

namespace A017116.P9179085396311420929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j) 8 = 1) n) ^ 2

end

end A017116.P9179085396311420929

namespace A017116

/-- `filter[(n+1)², val(#, 8)]²` -/
def P9179085396311420929.Spec : Prop :=
  ∀ n, (P9179085396311420929.a n : ℤ) = A017116 n

end A017116

/-! ## A017116.P3185564047467421946

`record[(2*lcm(2, 1-n))^4]`
-/

namespace A017116.P3185564047467421946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Int.lcm 2 (1 - (n : ℤ))) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017116.P3185564047467421946

namespace A017116

/-- `record[(2*lcm(2, 1-n))^4]` -/
def P3185564047467421946.Spec : Prop :=
  ∀ n, (P3185564047467421946.a n : ℤ) = A017116 n

end A017116

/-! ## A017116.P16590301738285746883

`and(-2, (8*n+4)²)²`
-/

namespace A017116.P16590301738285746883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((8 * n + 4) ^ 2 : ℤ) ^ 2

end

end A017116.P16590301738285746883

namespace A017116

/-- `and(-2, (8*n+4)²)²` -/
def P16590301738285746883.Spec : Prop :=
  ∀ n, P16590301738285746883.a n = A017116 n

end A017116

/-! ## A017116.P1879103601736689155

`record[(2*(n-2))^gcd(4, n)]`
-/

namespace A017116.P1879103601736689155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 2)) ^ Nat.gcd 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017116.P1879103601736689155

namespace A017116

/-- `record[(2*(n-2))^gcd(4, n)]` -/
def P1879103601736689155.Spec : Prop :=
  ∀ n, P1879103601736689155.a n = A017116 n

end A017116

/-! ## A017116.P3088252946999325668

`and(-2, Δ[(2*n)²]^4)`
-/

namespace A017116.P3088252946999325668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4)

end

end A017116.P3088252946999325668

namespace A017116

/-- `and(-2, Δ[(2*n)²]^4)` -/
def P3088252946999325668.Spec : Prop :=
  ∀ n, P3088252946999325668.a n = A017116 n

end A017116

/-! ## A017116.P17605825859899265208

`Δ[and(2*n, -2)²]²²`
-/

namespace A017116.P17605825859899265208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017116.P17605825859899265208

namespace A017116

/-- `Δ[and(2*n, -2)²]²²` -/
def P17605825859899265208.Spec : Prop :=
  ∀ n, P17605825859899265208.a n = A017116 n

end A017116

/-! ## A017116.P15116236680970151042

`(lcm(8, 2*n+1)/2)²²`
-/

namespace A017116.P15116236680970151042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 8 (2 * n + 1) : ℚ) / 2) ^ 2) ^ 2

end

end A017116.P15116236680970151042

namespace A017116

/-- `(lcm(8, 2*n+1)/2)²²` -/
def P15116236680970151042.Spec : Prop :=
  ∀ n, P15116236680970151042.a n = (A017116 n : ℚ)

end A017116

/-! ## A017116.P18255199196993462256

`(8*n%(n+1)+4)²²`
-/

namespace A017116.P18255199196993462256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((8 * (n % (n + 1)) + 4) ^ 2) ^ 2

end

end A017116.P18255199196993462256

namespace A017116

/-- `(8*n%(n+1)+4)²²` -/
def P18255199196993462256.Spec : Prop :=
  ∀ n, (P18255199196993462256.a n : ℤ) = A017116 n

theorem P18255199196993462256.correct : P18255199196993462256.Spec := by
  intro n
  simp only [A017116, Nat.add_sub_cancel, A017116.P18255199196993462256.a, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017116

/-! ## A017116.P15263142137714058152

`((2*n+1)/tan(acot(4)))²²`
-/

namespace A017116.P15263142137714058152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot (4 : ℝ))) ^ 2) ^ 2

end

end A017116.P15263142137714058152

namespace A017116

/-- `((2*n+1)/tan(acot(4)))²²` -/
def P15263142137714058152.Spec : Prop :=
  ∀ n, P15263142137714058152.a n = (A017116 n : ℝ)

end A017116

/-! ## A017116.P9473539330847294441

`((2*n+1)/cot(atan(4)))²²`
-/

namespace A017116.P9473539330847294441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) / Real.cot (Real.arctan (4 : ℝ))) ^ 2) ^ 2

end

end A017116.P9473539330847294441

namespace A017116

/-- `((2*n+1)/cot(atan(4)))²²` -/
def P9473539330847294441.Spec : Prop :=
  ∀ n, P9473539330847294441.a n = (A017116 n : ℝ)

end A017116

/-! ## A017116.P16341957870740261525

`Δ[(n*gcd(2, 2*n))²]²²`
-/

namespace A017116.P16341957870740261525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.gcd 2 (2 * n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017116.P16341957870740261525

namespace A017116

/-- `Δ[(n*gcd(2, 2*n))²]²²` -/
def P16341957870740261525.Spec : Prop :=
  ∀ n, P16341957870740261525.a n = A017116 n

theorem P16341957870740261525.correct : P16341957870740261525.Spec := by
  intro n
  simp only [A017116, Nat.add_sub_cancel, A017116.P16341957870740261525.f1, A017116.P16341957870740261525.a, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017116

/-! ## A017116.P5939406400419551834

`(4*C(2*n+1, 2*n))²²`
-/

namespace A017116.P5939406400419551834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((4 * Nat.choose (2 * n + 1) (2 * n)) ^ 2) ^ 2

end

end A017116.P5939406400419551834

namespace A017116

/-- `(4*C(2*n+1, 2*n))²²` -/
def P5939406400419551834.Spec : Prop :=
  ∀ n, (P5939406400419551834.a n : ℤ) = A017116 n

theorem P5939406400419551834.correct : P5939406400419551834.Spec := by
  intro n
  simp only [A017116, Nat.add_sub_cancel, A017116.P5939406400419551834.a, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017116

/-! ## A017116.P8079536463742924020

`Δ[(and(1, 2*n)+2*n)²]²²`
-/

namespace A017116.P8079536463742924020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 * n) + 2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017116.P8079536463742924020

namespace A017116

/-- `Δ[(and(1, 2*n)+2*n)²]²²` -/
def P8079536463742924020.Spec : Prop :=
  ∀ n, P8079536463742924020.a n = A017116 n

theorem P8079536463742924020.correct : P8079536463742924020.Spec := by
  intro n
  simp only [A017116, Nat.add_sub_cancel, A017116.P8079536463742924020.f1, A017116.P8079536463742924020.a, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017116

/-! ## A017116.P1480522810690185989

`Δ[and(1, 2*n)-(2*n)²]²²`
-/

namespace A017116.P1480522810690185989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 * n) : ℤ) - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017116.P1480522810690185989

namespace A017116

/-- `Δ[and(1, 2*n)-(2*n)²]²²` -/
def P1480522810690185989.Spec : Prop :=
  ∀ n, P1480522810690185989.a n = A017116 n

theorem P1480522810690185989.correct : P1480522810690185989.Spec := by
  intro n
  simp only [A017116, Nat.add_sub_cancel, A017116.P1480522810690185989.f1, A017116.P1480522810690185989.a, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017116

/-! ## A017116.P12293710221019197529

`Δ[(C(n+1, n)+n-1)²]²²`
-/

namespace A017116.P12293710221019197529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017116.P12293710221019197529

namespace A017116

/-- `Δ[(C(n+1, n)+n-1)²]²²` -/
def P12293710221019197529.Spec : Prop :=
  ∀ n, P12293710221019197529.a n = A017116 n

theorem P12293710221019197529.correct : P12293710221019197529.Spec := by
  intro n
  simp only [A017116, Nat.add_sub_cancel, A017116.P12293710221019197529.f1, A017116.P12293710221019197529.a, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017116

/-!
# A017117: a(n) = (8*n + 4)^5.

The programs for A017117, the canonical program `A017117.P14133807568632679952` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017117 has offset 0).

The definition of A017117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)^5` (program `A017117.P14133807568632679952`, by `A017117.P14133807568632679952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017117.P14133807568632679952

`(8*n+4)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017117

/-- `(8*n+4)^5` -/
def P14133807568632679952.Spec : Prop :=
  ∀ n, (P14133807568632679952.a n : ℤ) = A017117 n

theorem P14133807568632679952.correct : P14133807568632679952.Spec := by
  intro n
  simp only [A017117]

end A017117

/-! ## A017117.P1261258190767910953

`record[lcm(4, n+1)^5]`
-/

namespace A017117.P1261258190767910953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017117.P1261258190767910953

namespace A017117

/-- `record[lcm(4, n+1)^5]` -/
def P1261258190767910953.Spec : Prop :=
  ∀ n, (P1261258190767910953.a n : ℤ) = A017117 n

end A017117

/-! ## A017117.P14233420882928643037

`record[(4*xor(1, n))^5]`
-/

namespace A017117.P14233420882928643037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * Nat.xor 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017117.P14233420882928643037

namespace A017117

/-- `record[(4*xor(1, n))^5]` -/
def P14233420882928643037.Spec : Prop :=
  ∀ n, (P14233420882928643037.a n : ℤ) = A017117 n

end A017117

/-! ## A017117.P14029287787933125361

`lcm(2, Δ[(2*n)²]^5)`
-/

namespace A017117.P14029287787933125361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5)

end

end A017117.P14029287787933125361

namespace A017117

/-- `lcm(2, Δ[(2*n)²]^5)` -/
def P14029287787933125361.Spec : Prop :=
  ∀ n, (P14029287787933125361.a n : ℤ) = A017117 n

end A017117

/-! ## A017117.P6289048297156362864

`and(-2, Δ[(2*n)²]^5)`
-/

namespace A017117.P6289048297156362864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5)

end

end A017117.P6289048297156362864

namespace A017117

/-- `and(-2, Δ[(2*n)²]^5)` -/
def P6289048297156362864.Spec : Prop :=
  ∀ n, P6289048297156362864.a n = A017117 n

end A017117

/-! ## A017117.P2719799500817058913

`sqrt(A017122(n))`
-/

namespace A017117.P2719799500817058913
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017122 n : ℝ)

end

end A017117.P2719799500817058913

namespace A017117

/-- `sqrt(A017122(n))` -/
def P2719799500817058913.Spec : Prop :=
  ∀ n, P2719799500817058913.a n = (A017117 n : ℝ)

end A017117

/-! ## A017117.P17380087744891336875

`32*A016829(n)`
-/

namespace A017117.P17380087744891336875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016829 n

end

end A017117.P17380087744891336875

namespace A017117

/-- `32*A016829(n)` -/
def P17380087744891336875.Spec : Prop :=
  ∀ n, P17380087744891336875.a n = A017117 n

theorem P17380087744891336875.correct : P17380087744891336875.Spec := by
  intro n
  simp only [A017117, Nat.add_sub_cancel, A017117.P17380087744891336875.a, A017117.P14133807568632679952.a, A016829, A016829.P4272908375837523993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017117

/-! ## A017117.P5650773014835975144

`sqrt(A017114(n)^5)`
-/

namespace A017117.P5650773014835975144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017114 n ^ 5 : ℝ)

end

end A017117.P5650773014835975144

namespace A017117

/-- `sqrt(A017114(n)^5)` -/
def P5650773014835975144.Spec : Prop :=
  ∀ n, P5650773014835975144.a n = (A017117 n : ℝ)

end A017117

/-! ## A017117.P3329451411692122233

`(8*n+4)*A017116(n)`
-/

namespace A017117.P3329451411692122233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) * A017116 n

end

end A017117.P3329451411692122233

namespace A017117

/-- `(8*n+4)*A017116(n)` -/
def P3329451411692122233.Spec : Prop :=
  ∀ n, P3329451411692122233.a n = A017117 n

theorem P3329451411692122233.correct : P3329451411692122233.Spec := by
  intro n
  simp only [A017117, Nat.add_sub_cancel, A017117.P3329451411692122233.a, A017117.P14133807568632679952.a, A017116, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017117

/-! ## A017117.P6311418075446421288

`A017118(n)/(8*n+4)`
-/

namespace A017117.P6311418075446421288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017118 n : ℚ) / (8 * n + 4 : ℚ)

end

end A017117.P6311418075446421288

namespace A017117

/-- `A017118(n)/(8*n+4)` -/
def P6311418075446421288.Spec : Prop :=
  ∀ n, P6311418075446421288.a n = (A017117 n : ℚ)

end A017117

/-! ## A017117.P11948712851067298944

`A017114(n)*A017115(n)`
-/

namespace A017117.P11948712851067298944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n * A017115 n

end

end A017117.P11948712851067298944

namespace A017117

/-- `A017114(n)*A017115(n)` -/
def P11948712851067298944.Spec : Prop :=
  ∀ n, P11948712851067298944.a n = A017117 n

theorem P11948712851067298944.correct : P11948712851067298944.Spec := by
  intro n
  simp only [A017117, Nat.add_sub_cancel, A017117.P11948712851067298944.a, A017117.P14133807568632679952.a, A017114, A017114.P12795076234335230901.a, A017115, A017115.P13001504716068077086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017117

/-! ## A017117.P8544408620741857917

`A017120(n)/A017115(n)`
-/

namespace A017117.P8544408620741857917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017120 n : ℚ) / (A017115 n : ℚ)

end

end A017117.P8544408620741857917

namespace A017117

/-- `A017120(n)/A017115(n)` -/
def P8544408620741857917.Spec : Prop :=
  ∀ n, P8544408620741857917.a n = (A017117 n : ℚ)

end A017117

/-! ## A017117.P4544417883604121286

`A017121(n)/A017116(n)`
-/

namespace A017117.P4544417883604121286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017121 n : ℚ) / (A017116 n : ℚ)

end

end A017117.P4544417883604121286

namespace A017117

/-- `A017121(n)/A017116(n)` -/
def P4544417883604121286.Spec : Prop :=
  ∀ n, P4544417883604121286.a n = (A017117 n : ℚ)

end A017117

/-! ## A017117.P10294614768203013618

`A017114(n)²*A017113(n)`
-/

namespace A017117.P10294614768203013618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n ^ 2 * A017113 n

end

end A017117.P10294614768203013618

namespace A017117

/-- `A017114(n)²*A017113(n)` -/
def P10294614768203013618.Spec : Prop :=
  ∀ n, P10294614768203013618.a n = A017117 n

theorem P10294614768203013618.correct : P10294614768203013618.Spec := by
  intro n
  simp only [A017117, Nat.add_sub_cancel, A017117.P10294614768203013618.a, A017117.P14133807568632679952.a, A017113, A017113.P3624354701485579327.a, A017114, A017114.P12795076234335230901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017117

/-! ## A017117.P11436712127899482142

`A017113(n)²*A017115(n)`
-/

namespace A017117.P11436712127899482142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n ^ 2 * A017115 n

end

end A017117.P11436712127899482142

namespace A017117

/-- `A017113(n)²*A017115(n)` -/
def P11436712127899482142.Spec : Prop :=
  ∀ n, P11436712127899482142.a n = A017117 n

theorem P11436712127899482142.correct : P11436712127899482142.Spec := by
  intro n
  simp only [A017117, Nat.add_sub_cancel, A017117.P11436712127899482142.a, A017117.P14133807568632679952.a, A017113, A017113.P3624354701485579327.a, A017115, A017115.P13001504716068077086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017117

/-! ## A017117.P12770751478422116094

`A017116(n)²/A017115(n)`
-/

namespace A017117.P12770751478422116094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017116 n ^ 2 : ℚ) / (A017115 n : ℚ)

end

end A017117.P12770751478422116094

namespace A017117

/-- `A017116(n)²/A017115(n)` -/
def P12770751478422116094.Spec : Prop :=
  ∀ n, P12770751478422116094.a n = (A017117 n : ℚ)

end A017117

/-! ## A017117.P1423038214500909833

`A017119(n)/A017113(n)²`
-/

namespace A017117.P1423038214500909833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017119 n : ℚ) / (A017113 n ^ 2 : ℚ)

end

end A017117.P1423038214500909833

namespace A017117

/-- `A017119(n)/A017113(n)²` -/
def P1423038214500909833.Spec : Prop :=
  ∀ n, P1423038214500909833.a n = (A017117 n : ℚ)

end A017117

/-! ## A017117.P13662516662576599079

`sqrt(A017116(n)*A017118(n))`
-/

namespace A017117.P13662516662576599079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017116 n * A017118 n : ℝ)

end

end A017117.P13662516662576599079

namespace A017117

/-- `sqrt(A017116(n)*A017118(n))` -/
def P13662516662576599079.Spec : Prop :=
  ∀ n, P13662516662576599079.a n = (A017117 n : ℝ)

end A017117

/-! ## A017117.P13474699731607554477

`A017121(n)/A017114(n)²`
-/

namespace A017117.P13474699731607554477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017121 n : ℚ) / (A017114 n ^ 2 : ℚ)

end

end A017117.P13474699731607554477

namespace A017117

/-- `A017121(n)/A017114(n)²` -/
def P13474699731607554477.Spec : Prop :=
  ∀ n, P13474699731607554477.a n = (A017117 n : ℚ)

end A017117

/-! ## A017117.P6252953661879232493

`A017119(n)/sqrt(A017116(n))`
-/

namespace A017117.P6252953661879232493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017119 n : ℝ) / Real.sqrt (A017116 n : ℝ)

end

end A017117.P6252953661879232493

namespace A017117

/-- `A017119(n)/sqrt(A017116(n))` -/
def P6252953661879232493.Spec : Prop :=
  ∀ n, P6252953661879232493.a n = (A017117 n : ℝ)

end A017117

/-!
# A017118: a(n) = (8*n + 4)^6.

The programs for A017118, the canonical program `A017118.P3856150237333647498` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017118 has offset 0).

The definition of A017118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)^6` (program `A017118.P3856150237333647498`, by `A017118.P3856150237333647498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017118.P3856150237333647498

`(8*n+4)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017118

/-- `(8*n+4)^6` -/
def P3856150237333647498.Spec : Prop :=
  ∀ n, (P3856150237333647498.a n : ℤ) = A017118 n

theorem P3856150237333647498.correct : P3856150237333647498.Spec := by
  intro n
  simp only [A017118]

end A017118

/-! ## A017118.P12034250434747117954

`record[lcm(4, n+1)^6]`
-/

namespace A017118.P12034250434747117954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017118.P12034250434747117954

namespace A017118

/-- `record[lcm(4, n+1)^6]` -/
def P12034250434747117954.Spec : Prop :=
  ∀ n, (P12034250434747117954.a n : ℤ) = A017118 n

end A017118

/-! ## A017118.P13346495218793899753

`lcm(8, Δ[(2*n)²]^6)`
-/

namespace A017118.P13346495218793899753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 6)

end

end A017118.P13346495218793899753

namespace A017118

/-- `lcm(8, Δ[(2*n)²]^6)` -/
def P13346495218793899753.Spec : Prop :=
  ∀ n, (P13346495218793899753.a n : ℤ) = A017118 n

end A017118

/-! ## A017118.P6359393393908977611

`((4*or(1, 2*n))^3)²`
-/

namespace A017118.P6359393393908977611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((4 * Nat.lor 1 (2 * n)) ^ 3) ^ 2

end

end A017118.P6359393393908977611

namespace A017118

/-- `((4*or(1, 2*n))^3)²` -/
def P6359393393908977611.Spec : Prop :=
  ∀ n, (P6359393393908977611.a n : ℤ) = A017118 n

end A017118

/-! ## A017118.P13145731766548201297

`((4*xor(1, 2*n))^3)²`
-/

namespace A017118.P13145731766548201297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((4 * Nat.xor 1 (2 * n)) ^ 3) ^ 2

end

end A017118.P13145731766548201297

namespace A017118

/-- `((4*xor(1, 2*n))^3)²` -/
def P13145731766548201297.Spec : Prop :=
  ∀ n, (P13145731766548201297.a n : ℤ) = A017118 n

end A017118

/-! ## A017118.P50455107758219328

`A017115(n)²`
-/

namespace A017118.P50455107758219328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017115 n ^ 2

end

end A017118.P50455107758219328

namespace A017118

/-- `A017115(n)²` -/
def P50455107758219328.Spec : Prop :=
  ∀ n, P50455107758219328.a n = A017118 n

theorem P50455107758219328.correct : P50455107758219328.Spec := by
  intro n
  simp only [A017118, Nat.add_sub_cancel, A017118.P50455107758219328.a, A017118.P3856150237333647498.a, A017115, A017115.P13001504716068077086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017118

/-! ## A017118.P9212839114194743722

`64*A016830(n)`
-/

namespace A017118.P9212839114194743722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016830 n

end

end A017118.P9212839114194743722

namespace A017118

/-- `64*A016830(n)` -/
def P9212839114194743722.Spec : Prop :=
  ∀ n, P9212839114194743722.a n = A017118 n

theorem P9212839114194743722.correct : P9212839114194743722.Spec := by
  intro n
  simp only [A017118, Nat.add_sub_cancel, A017118.P9212839114194743722.a, A017118.P3856150237333647498.a, A016830, A016830.P16460860161337745608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017118

/-! ## A017118.P6456239570957515149

`(A017113(n)^3)²`
-/

namespace A017118.P6456239570957515149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017113 n ^ 3) ^ 2

end

end A017118.P6456239570957515149

namespace A017118

/-- `(A017113(n)^3)²` -/
def P6456239570957515149.Spec : Prop :=
  ∀ n, P6456239570957515149.a n = A017118 n

theorem P6456239570957515149.correct : P6456239570957515149.Spec := by
  intro n
  simp only [A017118, Nat.add_sub_cancel, A017118.P6456239570957515149.a, A017118.P3856150237333647498.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017118

/-! ## A017118.P8437717218083559017

`sqrt(A017116(n)^3)`
-/

namespace A017118.P8437717218083559017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017116 n ^ 3 : ℝ)

end

end A017118.P8437717218083559017

namespace A017118

/-- `sqrt(A017116(n)^3)` -/
def P8437717218083559017.Spec : Prop :=
  ∀ n, P8437717218083559017.a n = (A017118 n : ℝ)

end A017118

/-! ## A017118.P16866740238428624633

`∑[64*A010014(n)]²`
-/

namespace A017118.P16866740238428624633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A010014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A017118.P16866740238428624633

namespace A017118

/-- `∑[64*A010014(n)]²` -/
def P16866740238428624633.Spec : Prop :=
  ∀ n, P16866740238428624633.a n = A017118 n

end A017118

/-! ## A017118.P13761845934031541540

`((2*A016825(n))^3)²`
-/

namespace A017118.P13761845934031541540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016825 n) ^ 3) ^ 2

end

end A017118.P13761845934031541540

namespace A017118

/-- `((2*A016825(n))^3)²` -/
def P13761845934031541540.Spec : Prop :=
  ∀ n, P13761845934031541540.a n = A017118 n

theorem P13761845934031541540.correct : P13761845934031541540.Spec := by
  intro n
  simp only [A017118, Nat.add_sub_cancel, A017118.P13761845934031541540.a, A017118.P3856150237333647498.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017118

/-! ## A017118.P6422209359907799943

`(Δ[A005843(n)²]^3)²`
-/

namespace A017118.P6422209359907799943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017118.P6422209359907799943

namespace A017118

/-- `(Δ[A005843(n)²]^3)²` -/
def P6422209359907799943.Spec : Prop :=
  ∀ n, P6422209359907799943.a n = A017118 n

theorem P6422209359907799943.correct : P6422209359907799943.Spec := by
  intro n
  simp only [A017118, Nat.add_sub_cancel, A017118.P6422209359907799943.f1, A017118.P6422209359907799943.a, A017118.P3856150237333647498.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017118

/-! ## A017118.P6165996847282255407

`(8*n+4)*A017117(n)`
-/

namespace A017118.P6165996847282255407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) * A017117 n

end

end A017118.P6165996847282255407

namespace A017118

/-- `(8*n+4)*A017117(n)` -/
def P6165996847282255407.Spec : Prop :=
  ∀ n, P6165996847282255407.a n = A017118 n

theorem P6165996847282255407.correct : P6165996847282255407.Spec := by
  intro n
  simp only [A017118, Nat.add_sub_cancel, A017118.P6165996847282255407.a, A017118.P3856150237333647498.a, A017117, A017117.P14133807568632679952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017118

/-! ## A017118.P11946324225155036008

`A017119(n)/(8*n+4)`
-/

namespace A017118.P11946324225155036008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017119 n : ℚ) / (8 * n + 4 : ℚ)

end

end A017118.P11946324225155036008

namespace A017118

/-- `A017119(n)/(8*n+4)` -/
def P11946324225155036008.Spec : Prop :=
  ∀ n, P11946324225155036008.a n = (A017118 n : ℚ)

end A017118

/-! ## A017118.P323440600312967894

`(8*n+4)²*A017114(n)²`
-/

namespace A017118.P323440600312967894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((8 * n + 4) ^ 2 : ℤ) * A017114 n ^ 2

end

end A017118.P323440600312967894

namespace A017118

/-- `(8*n+4)²*A017114(n)²` -/
def P323440600312967894.Spec : Prop :=
  ∀ n, P323440600312967894.a n = A017118 n

theorem P323440600312967894.correct : P323440600312967894.Spec := by
  intro n
  simp only [A017118, Nat.add_sub_cancel, A017118.P323440600312967894.a, A017118.P3856150237333647498.a, A017114, A017114.P12795076234335230901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017118

/-! ## A017118.P4532173900721997928

`A017114(n)*A017116(n)`
-/

namespace A017118.P4532173900721997928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n * A017116 n

end

end A017118.P4532173900721997928

namespace A017118

/-- `A017114(n)*A017116(n)` -/
def P4532173900721997928.Spec : Prop :=
  ∀ n, P4532173900721997928.a n = A017118 n

theorem P4532173900721997928.correct : P4532173900721997928.Spec := by
  intro n
  simp only [A017118, Nat.add_sub_cancel, A017118.P4532173900721997928.a, A017118.P3856150237333647498.a, A017114, A017114.P12795076234335230901.a, A017116, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017118

/-! ## A017118.P11450186216916758120

`A017120(n)/A017114(n)`
-/

namespace A017118.P11450186216916758120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017120 n : ℚ) / (A017114 n : ℚ)

end

end A017118.P11450186216916758120

namespace A017118

/-- `A017120(n)/A017114(n)` -/
def P11450186216916758120.Spec : Prop :=
  ∀ n, P11450186216916758120.a n = (A017118 n : ℚ)

end A017118

/-! ## A017118.P16555610796461931792

`A017122(n)/A017116(n)`
-/

namespace A017118.P16555610796461931792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017122 n : ℚ) / (A017116 n : ℚ)

end

end A017118.P16555610796461931792

namespace A017118

/-- `A017122(n)/A017116(n)` -/
def P16555610796461931792.Spec : Prop :=
  ∀ n, P16555610796461931792.a n = (A017118 n : ℚ)

end A017118

/-!
# A017119: a(n) = (8*n + 4)^7 = 4^7*(2*n + 1)^7.

The programs for A017119, the canonical program `A017119.P15712220127836664613` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017119 has offset 0).

The definition of A017119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)^7` (program `A017119.P15712220127836664613`, by `A017119.P15712220127836664613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017119.P15712220127836664613

`(8*n+4)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017119

/-- `(8*n+4)^7` -/
def P15712220127836664613.Spec : Prop :=
  ∀ n, (P15712220127836664613.a n : ℤ) = A017119 n

theorem P15712220127836664613.correct : P15712220127836664613.Spec := by
  intro n
  simp only [A017119]

end A017119

/-! ## A017119.P1287591756065431914

`4^7*(2*n+1)^7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A017119.P1287591756065431914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ 7 * (2 * n + 1) ^ 7

end

end A017119.P1287591756065431914

namespace A017119

/-- `4^7*(2*n+1)^7` -/
def P1287591756065431914.Spec : Prop :=
  ∀ n, (P1287591756065431914.a n : ℤ) = A017119 n

theorem P1287591756065431914.correct : P1287591756065431914.Spec := by
  intro n
  simp only [A017119, Nat.add_sub_cancel, A017119.P1287591756065431914.a, A017119.P15712220127836664613.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A017119

/-! ## A017119.P12863906723142031844

`A001015(A017113(n))`
-/

namespace A017119.P12863906723142031844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A017113 n).toNat

end

end A017119.P12863906723142031844

namespace A017119

/-- `A001015(A017113(n))` -/
def P12863906723142031844.Spec : Prop :=
  ∀ n, P12863906723142031844.a n = A017119 n

end A017119

/-! ## A017119.P12474390146139445486

`record[lcm(4, n+1)^7]`
-/

namespace A017119.P12474390146139445486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017119.P12474390146139445486

namespace A017119

/-- `record[lcm(4, n+1)^7]` -/
def P12474390146139445486.Spec : Prop :=
  ∀ n, (P12474390146139445486.a n : ℤ) = A017119 n

end A017119

/-! ## A017119.P13148266949526131965

`lcm(8, Δ[(2*n)²]^7)`
-/

namespace A017119.P13148266949526131965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 7)

end

end A017119.P13148266949526131965

namespace A017119

/-- `lcm(8, Δ[(2*n)²]^7)` -/
def P13148266949526131965.Spec : Prop :=
  ∀ n, (P13148266949526131965.a n : ℤ) = A017119 n

end A017119

/-! ## A017119.P14866164177666552500

`A017120(n)/(8*n+4)`
-/

namespace A017119.P14866164177666552500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017120 n : ℚ) / (8 * n + 4 : ℚ)

end

end A017119.P14866164177666552500

namespace A017119

/-- `A017120(n)/(8*n+4)` -/
def P14866164177666552500.Spec : Prop :=
  ∀ n, P14866164177666552500.a n = (A017119 n : ℚ)

end A017119

/-! ## A017119.P478877064697816840

`A017121(n)/A017114(n)`
-/

namespace A017119.P478877064697816840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017121 n : ℚ) / (A017114 n : ℚ)

end

end A017119.P478877064697816840

namespace A017119

/-- `A017121(n)/A017114(n)` -/
def P478877064697816840.Spec : Prop :=
  ∀ n, P478877064697816840.a n = (A017119 n : ℚ)

end A017119

/-! ## A017119.P4343627389601165028

`A017116(n)²/A017113(n)`
-/

namespace A017119.P4343627389601165028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017116 n ^ 2 : ℚ) / (A017113 n : ℚ)

end

end A017119.P4343627389601165028

namespace A017119

/-- `A017116(n)²/A017113(n)` -/
def P4343627389601165028.Spec : Prop :=
  ∀ n, P4343627389601165028.a n = (A017119 n : ℚ)

end A017119

/-! ## A017119.P10344717323827363880

`A017117(n)²/A017115(n)`
-/

namespace A017119.P10344717323827363880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017117 n ^ 2 : ℚ) / (A017115 n : ℚ)

end

end A017119.P10344717323827363880

namespace A017119

/-- `A017117(n)²/A017115(n)` -/
def P10344717323827363880.Spec : Prop :=
  ∀ n, P10344717323827363880.a n = (A017119 n : ℚ)

end A017119

/-! ## A017119.P14896260194273237831

`A017121(n)/sqrt(A017116(n))`
-/

namespace A017119.P14896260194273237831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017121 n : ℝ) / Real.sqrt (A017116 n : ℝ)

end

end A017119.P14896260194273237831

namespace A017119

/-- `A017121(n)/sqrt(A017116(n))` -/
def P14896260194273237831.Spec : Prop :=
  ∀ n, P14896260194273237831.a n = (A017119 n : ℝ)

end A017119

/-! ## A017119.P15723552259506059806

`A017122(n)/sqrt(A017118(n))`
-/

namespace A017119.P15723552259506059806
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017122 n : ℝ) / Real.sqrt (A017118 n : ℝ)

end

end A017119.P15723552259506059806

namespace A017119

/-- `A017122(n)/sqrt(A017118(n))` -/
def P15723552259506059806.Spec : Prop :=
  ∀ n, P15723552259506059806.a n = (A017119 n : ℝ)

end A017119

/-! ## A017119.P4195362103395300973

`A017114(n)²²/A017113(n)`
-/

namespace A017119.P4195362103395300973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017114 n ^ 2) ^ 2 : ℚ) / (A017113 n : ℚ)

end

end A017119.P4195362103395300973

namespace A017119

/-- `A017114(n)²²/A017113(n)` -/
def P4195362103395300973.Spec : Prop :=
  ∀ n, P4195362103395300973.a n = (A017119 n : ℚ)

end A017119

/-! ## A017119.P14190597037074292468

`A016759(n)*A016807(n+1)/A001015(n+1)`
-/

namespace A017119.P14190597037074292468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016759 n * A016807 (n + 1) : ℚ) / (A001015 (n + 1) : ℚ)

end

end A017119.P14190597037074292468

namespace A017119

/-- `A016759(n)*A016807(n+1)/A001015(n+1)` -/
def P14190597037074292468.Spec : Prop :=
  ∀ n, P14190597037074292468.a n = (A017119 n : ℚ)

theorem P14190597037074292468.correct : P14190597037074292468.Spec := by
  intro n
  simp only [A017119, Nat.add_sub_cancel, A017119.P14190597037074292468.a, A017119.P15712220127836664613.a, A001015, A001015.P16876498052081657174.a, A016759, A016759.P1108963978635063233.a, A016807, A016807.P3617930477537150980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017119

/-! ## A017119.P9915408259666726137

`A016807(Δ[n²])`
-/

namespace A017119.P9915408259666726137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016807 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017119.P9915408259666726137

namespace A017119

/-- `A016807(Δ[n²])` -/
def P9915408259666726137.Spec : Prop :=
  ∀ n, P9915408259666726137.a n = A017119 n

end A017119

/-! ## A017119.P16634292814617682570

`A016808(2*n+1)/A008586(2*n+1)`
-/

namespace A017119.P16634292814617682570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016808 (2 * n + 1) : ℚ) / (A008586 (2 * n + 1) : ℚ)

end

end A017119.P16634292814617682570

namespace A017119

/-- `A016808(2*n+1)/A008586(2*n+1)` -/
def P16634292814617682570.Spec : Prop :=
  ∀ n, P16634292814617682570.a n = (A017119 n : ℚ)

theorem P16634292814617682570.correct : P16634292814617682570.Spec := by
  intro n
  simp only [A017119, Nat.add_sub_cancel, A017119.P16634292814617682570.a, A017119.P15712220127836664613.a, A008586, A008586.P15642444062404201100.a, A016808, A016808.P6212473385868604025.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017119

/-! ## A017119.P872018494373049219

`A016747(4*n+2)`
-/

namespace A017119.P872018494373049219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016747 (4 * n + 2)

end

end A017119.P872018494373049219

namespace A017119

/-- `A016747(4*n+2)` -/
def P872018494373049219.Spec : Prop :=
  ∀ n, P872018494373049219.a n = A017119 n

theorem P872018494373049219.correct : P872018494373049219.Spec := by
  intro n
  simp only [A017119, Nat.add_sub_cancel, A017119.P872018494373049219.a, A017119.P15712220127836664613.a, A016747, A016747.P10712690314001872389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017119

/-! ## A017119.P8746218866444334971

`A001015(8*n+4)`
-/

namespace A017119.P8746218866444334971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (8 * n + 4)

end

end A017119.P8746218866444334971

namespace A017119

/-- `A001015(8*n+4)` -/
def P8746218866444334971.Spec : Prop :=
  ∀ n, P8746218866444334971.a n = A017119 n

end A017119

/-! ## A017119.P16907292694179421279

`A257069(A017581(n))`
-/

namespace A017119.P16907292694179421279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257069 (A017581 n).toNat

end

end A017119.P16907292694179421279

namespace A017119

/-- `A257069(A017581(n))` -/
def P16907292694179421279.Spec : Prop :=
  ∀ n, P16907292694179421279.a n = A017119 n

end A017119

/-!
# A017120: a(n) = (8*n + 4)^8.

The programs for A017120, the canonical program `A017120.P4791932854760474528` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017120 has offset 0).

The definition of A017120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)^8` (program `A017120.P4791932854760474528`, by `A017120.P4791932854760474528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017120.P4791932854760474528

`(8*n+4)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017120

/-- `(8*n+4)^8` -/
def P4791932854760474528.Spec : Prop :=
  ∀ n, (P4791932854760474528.a n : ℤ) = A017120 n

theorem P4791932854760474528.correct : P4791932854760474528.Spec := by
  intro n
  simp only [A017120]

end A017120

/-! ## A017120.P2443414788976215331

`record[lcm(4, n+1)^8]`
-/

namespace A017120.P2443414788976215331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017120.P2443414788976215331

namespace A017120

/-- `record[lcm(4, n+1)^8]` -/
def P2443414788976215331.Spec : Prop :=
  ∀ n, (P2443414788976215331.a n : ℤ) = A017120 n

end A017120

/-! ## A017120.P11737226046703721558

`lcm(16, Δ[n²]²)²²`
-/

namespace A017120.P11737226046703721558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm 16 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017120.P11737226046703721558

namespace A017120

/-- `lcm(16, Δ[n²]²)²²` -/
def P11737226046703721558.Spec : Prop :=
  ∀ n, (P11737226046703721558.a n : ℤ) = A017120 n

end A017120

/-! ## A017120.P11191905942832972210

`record[(4*xor(1, n))²]²²`
-/

namespace A017120.P11191905942832972210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A017120.P11191905942832972210

namespace A017120

/-- `record[(4*xor(1, n))²]²²` -/
def P11191905942832972210.Spec : Prop :=
  ∀ n, (P11191905942832972210.a n : ℤ) = A017120 n

end A017120

/-! ## A017120.P13959013524059791274

`((4*or(1, 2*n))^4)²`
-/

namespace A017120.P13959013524059791274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((4 * Nat.lor 1 (2 * n)) ^ 4) ^ 2

end

end A017120.P13959013524059791274

namespace A017120

/-- `((4*or(1, 2*n))^4)²` -/
def P13959013524059791274.Spec : Prop :=
  ∀ n, (P13959013524059791274.a n : ℤ) = A017120 n

end A017120

/-! ## A017120.P756314555317760725

`((4*xor(1, 2*n))^4)²`
-/

namespace A017120.P756314555317760725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((4 * Nat.xor 1 (2 * n)) ^ 4) ^ 2

end

end A017120.P756314555317760725

namespace A017120

/-- `((4*xor(1, 2*n))^4)²` -/
def P756314555317760725.Spec : Prop :=
  ∀ n, (P756314555317760725.a n : ℤ) = A017120 n

end A017120

/-! ## A017120.P12554700626556408008

`(4*or(1, 2*n))²²²`
-/

namespace A017120.P12554700626556408008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((4 * Nat.lor 1 (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017120.P12554700626556408008

namespace A017120

/-- `(4*or(1, 2*n))²²²` -/
def P12554700626556408008.Spec : Prop :=
  ∀ n, (P12554700626556408008.a n : ℤ) = A017120 n

end A017120

/-! ## A017120.P12731241391932733258

`(4*xor(1, 2*n))²²²`
-/

namespace A017120.P12731241391932733258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((4 * Nat.xor 1 (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017120.P12731241391932733258

namespace A017120

/-- `(4*xor(1, 2*n))²²²` -/
def P12731241391932733258.Spec : Prop :=
  ∀ n, (P12731241391932733258.a n : ℤ) = A017120 n

end A017120

/-! ## A017120.P8739202361548585164

`(4*C(2*n+1, 2*n))²²²`
-/

namespace A017120.P8739202361548585164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((4 * Nat.choose (2 * n + 1) (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017120.P8739202361548585164

namespace A017120

/-- `(4*C(2*n+1, 2*n))²²²` -/
def P8739202361548585164.Spec : Prop :=
  ∀ n, (P8739202361548585164.a n : ℤ) = A017120 n

theorem P8739202361548585164.correct : P8739202361548585164.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P8739202361548585164.a, A017120.P4791932854760474528.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017120

/-! ## A017120.P2506195249722500141

`Δ[and(2*n+1, 2*n)²]²²²`
-/

namespace A017120.P2506195249722500141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017120.P2506195249722500141

namespace A017120

/-- `Δ[and(2*n+1, 2*n)²]²²²` -/
def P2506195249722500141.Spec : Prop :=
  ∀ n, P2506195249722500141.a n = A017120 n

end A017120

/-! ## A017120.P17198890035946690000

`((2*n+1)*gcd(2, 2*n)²)²²²`
-/

namespace A017120.P17198890035946690000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((((2 * n + 1) * Nat.gcd 2 (2 * n) ^ 2) ^ 2) ^ 2) ^ 2

end

end A017120.P17198890035946690000

namespace A017120

/-- `((2*n+1)*gcd(2, 2*n)²)²²²` -/
def P17198890035946690000.Spec : Prop :=
  ∀ n, (P17198890035946690000.a n : ℤ) = A017120 n

theorem P17198890035946690000.correct : P17198890035946690000.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P17198890035946690000.a, A017120.P4791932854760474528.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017120

/-! ## A017120.P12635677492233294526

`lcm(2*n+1, (4*(2*n+1))²²)²`
-/

namespace A017120.P12635677492233294526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (((4 * (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A017120.P12635677492233294526

namespace A017120

/-- `lcm(2*n+1, (4*(2*n+1))²²)²` -/
def P12635677492233294526.Spec : Prop :=
  ∀ n, (P12635677492233294526.a n : ℤ) = A017120 n

end A017120

/-! ## A017120.P7871509112467892641

`A017116(n)²`
-/

namespace A017120.P7871509112467892641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017116 n ^ 2

end

end A017120.P7871509112467892641

namespace A017120

/-- `A017116(n)²` -/
def P7871509112467892641.Spec : Prop :=
  ∀ n, P7871509112467892641.a n = A017120 n

theorem P7871509112467892641.correct : P7871509112467892641.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P7871509112467892641.a, A017120.P4791932854760474528.a, A017116, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017120

/-! ## A017120.P337018754572899800

`A017114(n)²²`
-/

namespace A017120.P337018754572899800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017114 n ^ 2) ^ 2

end

end A017120.P337018754572899800

namespace A017120

/-- `A017114(n)²²` -/
def P337018754572899800.Spec : Prop :=
  ∀ n, P337018754572899800.a n = A017120 n

theorem P337018754572899800.correct : P337018754572899800.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P337018754572899800.a, A017120.P4791932854760474528.a, A017114, A017114.P12795076234335230901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017120

/-! ## A017120.P5678808280693262223

`A017113(n)²²²`
-/

namespace A017120.P5678808280693262223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017113 n ^ 2) ^ 2) ^ 2

end

end A017120.P5678808280693262223

namespace A017120

/-- `A017113(n)²²²` -/
def P5678808280693262223.Spec : Prop :=
  ∀ n, P5678808280693262223.a n = A017120 n

theorem P5678808280693262223.correct : P5678808280693262223.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P5678808280693262223.a, A017120.P4791932854760474528.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017120

/-! ## A017120.P12579247514788448823

`(A177065(n)+1)²²`
-/

namespace A017120.P12579247514788448823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A177065 n + 1) ^ 2) ^ 2

end

end A017120.P12579247514788448823

namespace A017120

/-- `(A177065(n)+1)²²` -/
def P12579247514788448823.Spec : Prop :=
  ∀ n, P12579247514788448823.a n = A017120 n

theorem P12579247514788448823.correct : P12579247514788448823.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P12579247514788448823.a, A017120.P4791932854760474528.a, A177065, A177065.P13952455461040547032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017120

/-! ## A017120.P7482658696157213275

`(A017101(n)+1)²²²`
-/

namespace A017120.P7482658696157213275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017101 n + 1) ^ 2) ^ 2) ^ 2

end

end A017120.P7482658696157213275

namespace A017120

/-- `(A017101(n)+1)²²²` -/
def P7482658696157213275.Spec : Prop :=
  ∀ n, P7482658696157213275.a n = A017120 n

theorem P7482658696157213275.correct : P7482658696157213275.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P7482658696157213275.a, A017120.P4791932854760474528.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017120

/-! ## A017120.P16955670676802962449

`(A017089(n)+2)²²²`
-/

namespace A017120.P16955670676802962449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017089 n + 2) ^ 2) ^ 2) ^ 2

end

end A017120.P16955670676802962449

namespace A017120

/-- `(A017089(n)+2)²²²` -/
def P16955670676802962449.Spec : Prop :=
  ∀ n, P16955670676802962449.a n = A017120 n

theorem P16955670676802962449.correct : P16955670676802962449.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P16955670676802962449.a, A017120.P4791932854760474528.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017120

/-! ## A017120.P6347700921979380251

`A017113(n)*A017119(n)`
-/

namespace A017120.P6347700921979380251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n * A017119 n

end

end A017120.P6347700921979380251

namespace A017120

/-- `A017113(n)*A017119(n)` -/
def P6347700921979380251.Spec : Prop :=
  ∀ n, P6347700921979380251.a n = A017120 n

theorem P6347700921979380251.correct : P6347700921979380251.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P6347700921979380251.a, A017120.P4791932854760474528.a, A017113, A017113.P3624354701485579327.a, A017119, A017119.P15712220127836664613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017120

/-! ## A017120.P16437875248993211613

`A017114(n)*A017118(n)`
-/

namespace A017120.P16437875248993211613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n * A017118 n

end

end A017120.P16437875248993211613

namespace A017120

/-- `A017114(n)*A017118(n)` -/
def P16437875248993211613.Spec : Prop :=
  ∀ n, P16437875248993211613.a n = A017120 n

theorem P16437875248993211613.correct : P16437875248993211613.Spec := by
  intro n
  simp only [A017120, Nat.add_sub_cancel, A017120.P16437875248993211613.a, A017120.P4791932854760474528.a, A017114, A017114.P12795076234335230901.a, A017118, A017118.P3856150237333647498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017120

/-!
# A017121: a(n) = (8*n + 4)^9.

The programs for A017121, the canonical program `A017121.P3992395101494127045` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017121 has offset 0).

The definition of A017121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)^9` (program `A017121.P3992395101494127045`, by `A017121.P3992395101494127045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017121.P3992395101494127045

`(8*n+4)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017121

/-- `(8*n+4)^9` -/
def P3992395101494127045.Spec : Prop :=
  ∀ n, (P3992395101494127045.a n : ℤ) = A017121 n

theorem P3992395101494127045.correct : P3992395101494127045.Spec := by
  intro n
  simp only [A017121]

end A017121

/-! ## A017121.P7946121454133107328

`record[lcm(4, n+1)^9]`
-/

namespace A017121.P7946121454133107328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017121.P7946121454133107328

namespace A017121

/-- `record[lcm(4, n+1)^9]` -/
def P7946121454133107328.Spec : Prop :=
  ∀ n, (P7946121454133107328.a n : ℤ) = A017121 n

end A017121

/-! ## A017121.P10574031627138757972

`lcm(8, Δ[(2*n)²]^9)`
-/

namespace A017121.P10574031627138757972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 9)

end

end A017121.P10574031627138757972

namespace A017121

/-- `lcm(8, Δ[(2*n)²]^9)` -/
def P10574031627138757972.Spec : Prop :=
  ∀ n, (P10574031627138757972.a n : ℤ) = A017121 n

end A017121

/-! ## A017121.P1996029815733545791

`sqrt(A017118(n)^3)`
-/

namespace A017121.P1996029815733545791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017118 n ^ 3 : ℝ)

end

end A017121.P1996029815733545791

namespace A017121

/-- `sqrt(A017118(n)^3)` -/
def P1996029815733545791.Spec : Prop :=
  ∀ n, P1996029815733545791.a n = (A017121 n : ℝ)

end A017121

/-! ## A017121.P15897796128534534897

`(8*n+4)*A017120(n)`
-/

namespace A017121.P15897796128534534897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) * A017120 n

end

end A017121.P15897796128534534897

namespace A017121

/-- `(8*n+4)*A017120(n)` -/
def P15897796128534534897.Spec : Prop :=
  ∀ n, P15897796128534534897.a n = A017121 n

theorem P15897796128534534897.correct : P15897796128534534897.Spec := by
  intro n
  simp only [A017121, Nat.add_sub_cancel, A017121.P15897796128534534897.a, A017121.P3992395101494127045.a, A017120, A017120.P4791932854760474528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017121

/-! ## A017121.P18429425603555094494

`A017115(n)*A017118(n)`
-/

namespace A017121.P18429425603555094494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017115 n * A017118 n

end

end A017121.P18429425603555094494

namespace A017121

/-- `A017115(n)*A017118(n)` -/
def P18429425603555094494.Spec : Prop :=
  ∀ n, P18429425603555094494.a n = A017121 n

theorem P18429425603555094494.correct : P18429425603555094494.Spec := by
  intro n
  simp only [A017121, Nat.add_sub_cancel, A017121.P18429425603555094494.a, A017121.P3992395101494127045.a, A017115, A017115.P13001504716068077086.a, A017118, A017118.P3856150237333647498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017121

/-! ## A017121.P8945066174935868538

`A017116(n)*A017117(n)`
-/

namespace A017121.P8945066174935868538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017116 n * A017117 n

end

end A017121.P8945066174935868538

namespace A017121

/-- `A017116(n)*A017117(n)` -/
def P8945066174935868538.Spec : Prop :=
  ∀ n, P8945066174935868538.a n = A017121 n

theorem P8945066174935868538.correct : P8945066174935868538.Spec := by
  intro n
  simp only [A017121, Nat.add_sub_cancel, A017121.P8945066174935868538.a, A017121.P3992395101494127045.a, A017116, A017116.P17039600374842277978.a, A017117, A017117.P14133807568632679952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017121

/-! ## A017121.P2972064042636972613

`A017122(n)/A017113(n)`
-/

namespace A017121.P2972064042636972613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017122 n : ℚ) / (A017113 n : ℚ)

end

end A017121.P2972064042636972613

namespace A017121

/-- `A017122(n)/A017113(n)` -/
def P2972064042636972613.Spec : Prop :=
  ∀ n, P2972064042636972613.a n = (A017121 n : ℚ)

end A017121

/-! ## A017121.P13889115207725225868

`A017116(n)²*A017113(n)`
-/

namespace A017121.P13889115207725225868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017116 n ^ 2 * A017113 n

end

end A017121.P13889115207725225868

namespace A017121

/-- `A017116(n)²*A017113(n)` -/
def P13889115207725225868.Spec : Prop :=
  ∀ n, P13889115207725225868.a n = A017121 n

theorem P13889115207725225868.correct : P13889115207725225868.Spec := by
  intro n
  simp only [A017121, Nat.add_sub_cancel, A017121.P13889115207725225868.a, A017121.P3992395101494127045.a, A017113, A017113.P3624354701485579327.a, A017116, A017116.P17039600374842277978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017121

/-! ## A017121.P14219991779759878731

`A017114(n)²*A017117(n)`
-/

namespace A017121.P14219991779759878731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n ^ 2 * A017117 n

end

end A017121.P14219991779759878731

namespace A017121

/-- `A017114(n)²*A017117(n)` -/
def P14219991779759878731.Spec : Prop :=
  ∀ n, P14219991779759878731.a n = A017121 n

theorem P14219991779759878731.correct : P14219991779759878731.Spec := by
  intro n
  simp only [A017121, Nat.add_sub_cancel, A017121.P14219991779759878731.a, A017121.P3992395101494127045.a, A017114, A017114.P12795076234335230901.a, A017117, A017117.P14133807568632679952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017121

/-! ## A017121.P11759939707425067962

`A017113(n)²*A017119(n)`
-/

namespace A017121.P11759939707425067962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n ^ 2 * A017119 n

end

end A017121.P11759939707425067962

namespace A017121

/-- `A017113(n)²*A017119(n)` -/
def P11759939707425067962.Spec : Prop :=
  ∀ n, P11759939707425067962.a n = A017121 n

theorem P11759939707425067962.correct : P11759939707425067962.Spec := by
  intro n
  simp only [A017121, Nat.add_sub_cancel, A017121.P11759939707425067962.a, A017121.P3992395101494127045.a, A017113, A017113.P3624354701485579327.a, A017119, A017119.P15712220127836664613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017121

/-! ## A017121.P9898646709192291060

`A017117(n)²/A017113(n)`
-/

namespace A017121.P9898646709192291060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017117 n ^ 2 : ℚ) / (A017113 n : ℚ)

end

end A017121.P9898646709192291060

namespace A017121

/-- `A017117(n)²/A017113(n)` -/
def P9898646709192291060.Spec : Prop :=
  ∀ n, P9898646709192291060.a n = (A017121 n : ℚ)

end A017121

/-! ## A017121.P14365857080943937044

`sqrt(A017116(n))*A017119(n)`
-/

namespace A017121.P14365857080943937044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017116 n : ℝ) * (A017119 n : ℝ)

end

end A017121.P14365857080943937044

namespace A017121

/-- `sqrt(A017116(n))*A017119(n)` -/
def P14365857080943937044.Spec : Prop :=
  ∀ n, P14365857080943937044.a n = (A017121 n : ℝ)

end A017121

/-! ## A017121.P11115085086924774894

`sqrt(A017122(n))*A017116(n)`
-/

namespace A017121.P11115085086924774894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017122 n : ℝ) * (A017116 n : ℝ)

end

end A017121.P11115085086924774894

namespace A017121

/-- `sqrt(A017122(n))*A017116(n)` -/
def P11115085086924774894.Spec : Prop :=
  ∀ n, P11115085086924774894.a n = (A017121 n : ℝ)

end A017121

/-! ## A017121.P4841463586694123638

`A017114(n)²²*A017113(n)`
-/

namespace A017121.P4841463586694123638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017114 n ^ 2) ^ 2 * A017113 n

end

end A017121.P4841463586694123638

namespace A017121

/-- `A017114(n)²²*A017113(n)` -/
def P4841463586694123638.Spec : Prop :=
  ∀ n, P4841463586694123638.a n = A017121 n

theorem P4841463586694123638.correct : P4841463586694123638.Spec := by
  intro n
  simp only [A017121, Nat.add_sub_cancel, A017121.P4841463586694123638.a, A017121.P3992395101494127045.a, A017113, A017113.P3624354701485579327.a, A017114, A017114.P12795076234335230901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017121

/-! ## A017121.P14179975763916827176

`A016833(n)/A016761(n)*A016833(n)`
-/

namespace A017121.P14179975763916827176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016833 n : ℚ) / (A016761 n : ℚ) * (A016833 n : ℚ)

end

end A017121.P14179975763916827176

namespace A017121

/-- `A016833(n)/A016761(n)*A016833(n)` -/
def P14179975763916827176.Spec : Prop :=
  ∀ n, P14179975763916827176.a n = (A017121 n : ℚ)

theorem P14179975763916827176.correct : P14179975763916827176.Spec := by
  intro n
  simp only [A017121, Nat.add_sub_cancel, A017121.P14179975763916827176.a, A017121.P3992395101494127045.a, A016761, A016761.P2892480136193022373.a, A016833, A016833.P12755141053771216048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017121

/-! ## A017121.P4139229413990806634

`A017116(n)*A017118(n)/A017113(n)`
-/

namespace A017121.P4139229413990806634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017116 n * A017118 n : ℚ) / (A017113 n : ℚ)

end

end A017121.P4139229413990806634

namespace A017121

/-- `A017116(n)*A017118(n)/A017113(n)` -/
def P4139229413990806634.Spec : Prop :=
  ∀ n, P4139229413990806634.a n = (A017121 n : ℚ)

end A017121

/-! ## A017121.P14216606681329076352

`A016809(Δ[n²])`
-/

namespace A017121.P14216606681329076352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017121.P14216606681329076352

namespace A017121

/-- `A016809(Δ[n²])` -/
def P14216606681329076352.Spec : Prop :=
  ∀ n, P14216606681329076352.a n = A017121 n

end A017121

/-!
# A017122: a(n) = (8*n + 4)^10.

The programs for A017122, the canonical program `A017122.P722781649000319729` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017122 has offset 0).

The definition of A017122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+4)^10` (program `A017122.P722781649000319729`, by `A017122.P722781649000319729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017122.P722781649000319729

`(8*n+4)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017122

/-- `(8*n+4)^10` -/
def P722781649000319729.Spec : Prop :=
  ∀ n, (P722781649000319729.a n : ℤ) = A017122 n

theorem P722781649000319729.correct : P722781649000319729.Spec := by
  intro n
  simp only [A017122]

end A017122

/-! ## A017122.P9903883675833083487

`record[lcm(4, n+1)^10]`
-/

namespace A017122.P9903883675833083487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1) ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017122.P9903883675833083487

namespace A017122

/-- `record[lcm(4, n+1)^10]` -/
def P9903883675833083487.Spec : Prop :=
  ∀ n, (P9903883675833083487.a n : ℤ) = A017122 n

end A017122

/-! ## A017122.P4473756565545951239

`A017117(n)²`
-/

namespace A017122.P4473756565545951239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017117 n ^ 2

end

end A017122.P4473756565545951239

namespace A017122

/-- `A017117(n)²` -/
def P4473756565545951239.Spec : Prop :=
  ∀ n, P4473756565545951239.a n = A017122 n

theorem P4473756565545951239.correct : P4473756565545951239.Spec := by
  intro n
  simp only [A017122, Nat.add_sub_cancel, A017122.P4473756565545951239.a, A017122.P722781649000319729.a, A017117, A017117.P14133807568632679952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017122

/-! ## A017122.P6827186028868782982

`sqrt(A017116(n)^5)`
-/

namespace A017122.P6827186028868782982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017116 n ^ 5 : ℝ)

end

end A017122.P6827186028868782982

namespace A017122

/-- `sqrt(A017116(n)^5)` -/
def P6827186028868782982.Spec : Prop :=
  ∀ n, P6827186028868782982.a n = (A017122 n : ℝ)

end A017122

/-! ## A017122.P16944434868008134806

`A017116(n)*A017118(n)`
-/

namespace A017122.P16944434868008134806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017116 n * A017118 n

end

end A017122.P16944434868008134806

namespace A017122

/-- `A017116(n)*A017118(n)` -/
def P16944434868008134806.Spec : Prop :=
  ∀ n, P16944434868008134806.a n = A017122 n

theorem P16944434868008134806.correct : P16944434868008134806.Spec := by
  intro n
  simp only [A017122, Nat.add_sub_cancel, A017122.P16944434868008134806.a, A017122.P722781649000319729.a, A017116, A017116.P17039600374842277978.a, A017118, A017118.P3856150237333647498.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017122

/-! ## A017122.P13329526184474390921

`(A017119(n)/A017113(n)²)²`
-/

namespace A017122.P13329526184474390921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017119 n : ℚ) / (A017113 n ^ 2 : ℚ)) ^ 2

end

end A017122.P13329526184474390921

namespace A017122

/-- `(A017119(n)/A017113(n)²)²` -/
def P13329526184474390921.Spec : Prop :=
  ∀ n, P13329526184474390921.a n = (A017122 n : ℚ)

end A017122

/-! ## A017122.P3343611924638278273

`sqrt(sqrt(A017120(n)))*A017120(n)`
-/

namespace A017122.P3343611924638278273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017120 n : ℝ)) * (A017120 n : ℝ)

end

end A017122.P3343611924638278273

namespace A017122

/-- `sqrt(sqrt(A017120(n)))*A017120(n)` -/
def P3343611924638278273.Spec : Prop :=
  ∀ n, P3343611924638278273.a n = (A017122 n : ℝ)

end A017122

/-! ## A017122.P2113678651351222017

`A017116(n)/(1/A017115(n))²`
-/

namespace A017122.P2113678651351222017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017116 n : ℚ) / (1 / (A017115 n : ℚ)) ^ 2

end

end A017122.P2113678651351222017

namespace A017122

/-- `A017116(n)/(1/A017115(n))²` -/
def P2113678651351222017.Spec : Prop :=
  ∀ n, P2113678651351222017.a n = (A017122 n : ℚ)

end A017122

/-! ## A017122.P14612393074358373001

`A016810(2*n+1)`
-/

namespace A017122.P14612393074358373001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016810 (2 * n + 1)

end

end A017122.P14612393074358373001

namespace A017122

/-- `A016810(2*n+1)` -/
def P14612393074358373001.Spec : Prop :=
  ∀ n, P14612393074358373001.a n = A017122 n

theorem P14612393074358373001.correct : P14612393074358373001.Spec := by
  intro n
  simp only [A017122, Nat.add_sub_cancel, A017122.P14612393074358373001.a, A017122.P722781649000319729.a, A016810, A016810.P2792318698775462708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017122

/-! ## A017122.P7520907265646117453

`A016805(2*n+1)²`
-/

namespace A017122.P7520907265646117453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016805 (2 * n + 1) ^ 2

end

end A017122.P7520907265646117453

namespace A017122

/-- `A016805(2*n+1)²` -/
def P7520907265646117453.Spec : Prop :=
  ∀ n, P7520907265646117453.a n = A017122 n

theorem P7520907265646117453.correct : P7520907265646117453.Spec := by
  intro n
  simp only [A017122, Nat.add_sub_cancel, A017122.P7520907265646117453.a, A017122.P722781649000319729.a, A016805, A016805.P8243654431301060818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017122

/-! ## A017122.P13658048864031151825

`A008454(2*n+1)*A008454(A020639(2*n+2)²)`
-/

namespace A017122.P13658048864031151825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * n + 1) * A008454 (A020639 (2 * n + 2) ^ 2).toNat

end

end A017122.P13658048864031151825

namespace A017122

/-- `A008454(2*n+1)*A008454(A020639(2*n+2)²)` -/
def P13658048864031151825.Spec : Prop :=
  ∀ n, P13658048864031151825.a n = A017122 n

end A017122

/-! ## A017122.P4747516077229884985

`A016750(2*(2*n+1))`
-/

namespace A017122.P4747516077229884985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016750 (2 * (2 * n + 1))

end

end A017122.P4747516077229884985

namespace A017122

/-- `A016750(2*(2*n+1))` -/
def P4747516077229884985.Spec : Prop :=
  ∀ n, P4747516077229884985.a n = A017122 n

theorem P4747516077229884985.correct : P4747516077229884985.Spec := by
  intro n
  simp only [A017122, Nat.add_sub_cancel, A017122.P4747516077229884985.a, A017122.P722781649000319729.a, A016750, A016750.P3077076585520264960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017122

/-! ## A017122.P217944386023137763

`A016745(A016825(n))²`
-/

namespace A017122.P217944386023137763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016745 (A016825 n).toNat ^ 2

end

end A017122.P217944386023137763

namespace A017122

/-- `A016745(A016825(n))²` -/
def P217944386023137763.Spec : Prop :=
  ∀ n, P217944386023137763.a n = A017122 n

end A017122

/-! ## A017122.P10932053306990071196

`A008454(4*(2*n+1))`
-/

namespace A017122.P10932053306990071196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (4 * (2 * n + 1))

end

end A017122.P10932053306990071196

namespace A017122

/-- `A008454(4*(2*n+1))` -/
def P10932053306990071196.Spec : Prop :=
  ∀ n, P10932053306990071196.a n = A017122 n

theorem P10932053306990071196.correct : P10932053306990071196.Spec := by
  intro n
  simp only [A017122, Nat.add_sub_cancel, A017122.P10932053306990071196.a, A017122.P722781649000319729.a, A008454, A008454.P6486498320967950731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017122

/-!
# A017123: 

The programs for A017123, there is no canonical definition to state claims against.
-/

/-! ## A017123.P93267304492180386

`(8*n+4)^11`
-/

namespace A017123.P93267304492180386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 4) ^ 11

end

end A017123.P93267304492180386

/-! ## A017123.P8515601939910997993

`A017113(n)²²*A017119(n)`
-/

namespace A017123.P8515601939910997993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017113 n ^ 2) ^ 2 * A017119 n

end

end A017123.P8515601939910997993

/-! ## A017123.P10625301020511398332

`A016811(2*n+1)`
-/

namespace A017123.P10625301020511398332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016811 (2 * n + 1)

end

end A017123.P10625301020511398332

/-! ## A017123.P4561417036997764794

`record[A178182(n+1)^11]`
-/

namespace A017123.P4561417036997764794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178182 (n + 1) ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017123.P4561417036997764794

/-! ## A017123.P4118120817553116616

`A008455(2*n+1)*A008455(A020639(2*n+2)²)`
-/

namespace A017123.P4118120817553116616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * n + 1) * A008455 (A020639 (2 * n + 2) ^ 2).toNat

end

end A017123.P4118120817553116616

/-! ## A017123.P5467931197401032366

`A016751(2*(2*n+1))`
-/

namespace A017123.P5467931197401032366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016751 (2 * (2 * n + 1))

end

end A017123.P5467931197401032366

/-! ## A017123.P7105347760885090654

`A008455(4*(2*n+1))`
-/

namespace A017123.P7105347760885090654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (4 * (2 * n + 1))

end

end A017123.P7105347760885090654

/-! ## A017123.P10112124828882095910

`A008454(A008586(2*n+1))*A008586(2*n+1)`
-/

namespace A017123.P10112124828882095910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008586 (2 * n + 1)).toNat * A008586 (2 * n + 1)

end

end A017123.P10112124828882095910

/-!
# A017124: 

The programs for A017124, there is no canonical definition to state claims against.
-/

/-! ## A017124.P10760545750830631432

`(8*n+4)^12`
-/

namespace A017124.P10760545750830631432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 4) ^ 12

end

end A017124.P10760545750830631432

/-! ## A017124.P4519511878905092572

`record[(lcm(4, n+1)^6)²]`
-/

namespace A017124.P4519511878905092572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) ^ 6) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017124.P4519511878905092572

/-! ## A017124.P1487091705943709328

`A017118(n)²`
-/

namespace A017124.P1487091705943709328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017118 n ^ 2

end

end A017124.P1487091705943709328

/-! ## A017124.P10707595381806909939

`(A017113(n)^3)²²`
-/

namespace A017124.P10707595381806909939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017113 n ^ 3) ^ 2) ^ 2

end

end A017124.P10707595381806909939

/-! ## A017124.P10707018965564797488

`(A017119(n)/A017113(n))²`
-/

namespace A017124.P10707018965564797488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017119 n : ℚ) / (A017113 n : ℚ)) ^ 2

end

end A017124.P10707018965564797488

/-! ## A017124.P11578755081789497865

`sqrt(A017120(n))*A017120(n)`
-/

namespace A017124.P11578755081789497865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017120 n : ℝ) * (A017120 n : ℝ)

end

end A017124.P11578755081789497865

/-! ## A017124.P17233575399350675315

`A016752(2*(2*n+1))`
-/

namespace A017124.P17233575399350675315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016752 (2 * (2 * n + 1))

end

end A017124.P17233575399350675315

/-! ## A017124.P8377438670613868262

`A016746(A016825(n))²`
-/

namespace A017124.P8377438670613868262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016746 (A016825 n).toNat ^ 2

end

end A017124.P8377438670613868262

/-! ## A017124.P11507244390328976262

`sqrt(A017120(n)^3)`
-/

namespace A017124.P11507244390328976262
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017120 n ^ 3 : ℝ)

end

end A017124.P11507244390328976262

/-! ## A017124.P4972494285950724720

`A000578(A017089(n)+2)²²`
-/

namespace A017124.P4972494285950724720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017089 n + 2).toNat ^ 2) ^ 2

end

end A017124.P4972494285950724720

/-! ## A017124.P13893913898042804906

`A000578(A017137(n)-2)²²`
-/

namespace A017124.P13893913898042804906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017137 n - 2).toNat ^ 2) ^ 2

end

end A017124.P13893913898042804906

/-! ## A017124.P283642318123975617

`A000578(2*A016825(n))²²`
-/

namespace A017124.P283642318123975617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (2 * A016825 n).toNat ^ 2) ^ 2

end

end A017124.P283642318123975617

/-! ## A017124.P11704377054537200904

`A000578(A017209(n)-n)²²`
-/

namespace A017124.P11704377054537200904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017209 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017124.P11704377054537200904

/-!
# A017125: Table read by antidiagonals of Fibonacci-type sequences.

The programs for A017125, there is no canonical definition to state claims against.
-/

/-! ## A017125.P14669726572159204080

`A353595(∑[2*n]%comp[∑[n]])`
-/

namespace A017125.P14669726572159204080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A017125.P14669726572159204080

/-! ## A017125.P8403262699742100957

`A353595(∑[char[∑[n]]]²-n-1)`
-/

namespace A017125.P8403262699742100957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A017125.P8403262699742100957

/-! ## A017125.P5992505481534658185

`A054977(n)*A353595(A061579(n))`
-/

namespace A017125.P5992505481534658185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A353595 (A061579 n).toNat

end

end A017125.P5992505481534658185

/-! ## A017125.P12430666122328905149

`A057427(n)*A353595(A061579(n))`
-/

namespace A017125.P12430666122328905149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A353595 (A061579 n).toNat

end

end A017125.P12430666122328905149

/-! ## A017125.P13236300860076520592

`A158388(n)*A353595(A061579(n))`
-/

namespace A017125.P13236300860076520592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A353595 (A061579 n).toNat

end

end A017125.P13236300860076520592

/-!
# A017126: a(n) = (8*n + 5)^2.

The programs for A017126, the canonical program `A017126.P14543019865094346056` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017126 has offset 0).

The definition of A017126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)²` (program `A017126.P14543019865094346056`, by `A017126.P14543019865094346056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017126.P14543019865094346056

`(8*n+5)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017126

/-- `(8*n+5)²` -/
def P14543019865094346056.Spec : Prop :=
  ∀ n, (P14543019865094346056.a n : ℤ) = A017126 n

theorem P14543019865094346056.correct : P14543019865094346056.Spec := by
  intro n
  simp only [A017126]

end A017126

/-! ## A017126.P4560807109340324269

`ogf((25+94x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017126.P4560807109340324269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [25, 94, 9] [1, -3, 3, -1] n

end

end A017126.P4560807109340324269

namespace A017126

/-- `ogf((25+94x+9x^2)/(1-3x+3x^2-x^3))` -/
def P4560807109340324269.Spec : Prop :=
  ∀ n, P4560807109340324269.a n = A017126 n

end A017126

/-! ## A017126.P13104221443991249388

`record[(2-xor(7, n))²]`
-/

namespace A017126.P13104221443991249388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.xor 7 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017126.P13104221443991249388

namespace A017126

/-- `record[(2-xor(7, n))²]` -/
def P13104221443991249388.Spec : Prop :=
  ∀ n, P13104221443991249388.a n = A017126 n

end A017126

/-! ## A017126.P7350061664386296921

`record[xor(5, 4*n)²]`
-/

namespace A017126.P7350061664386296921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (4 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017126.P7350061664386296921

namespace A017126

/-- `record[xor(5, 4*n)²]` -/
def P7350061664386296921.Spec : Prop :=
  ∀ n, (P7350061664386296921.a n : ℤ) = A017126 n

end A017126

/-! ## A017126.P17315286239109305283

`or(1, or(5, 8*n)²)`
-/

namespace A017126.P17315286239109305283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 5 (8 * n) ^ 2)

end

end A017126.P17315286239109305283

namespace A017126

/-- `or(1, or(5, 8*n)²)` -/
def P17315286239109305283.Spec : Prop :=
  ∀ n, (P17315286239109305283.a n : ℤ) = A017126 n

end A017126

/-! ## A017126.P5069050034483624125

`record[(lcm(4, n+1)+1)²]`
-/

namespace A017126.P5069050034483624125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017126.P5069050034483624125

namespace A017126

/-- `record[(lcm(4, n+1)+1)²]` -/
def P5069050034483624125.Spec : Prop :=
  ∀ n, (P5069050034483624125.a n : ℤ) = A017126 n

end A017126

/-! ## A017126.P4686776033699255905

`record[(gcd(8, n)+n-3)²]`
-/

namespace A017126.P4686776033699255905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 8 n : ℤ) + ((n : ℤ) - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017126.P4686776033699255905

namespace A017126

/-- `record[(gcd(8, n)+n-3)²]` -/
def P4686776033699255905.Spec : Prop :=
  ∀ n, P4686776033699255905.a n = A017126 n

end A017126

/-! ## A017126.P13491032194114766449

`4*record[(n+2)*xor(3, n)]+1`
-/

namespace A017126.P13491032194114766449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A017126.P13491032194114766449

namespace A017126

/-- `4*record[(n+2)*xor(3, n)]+1` -/
def P13491032194114766449.Spec : Prop :=
  ∀ n, (P13491032194114766449.a n : ℤ) = A017126 n

end A017126

/-! ## A017126.P3157700515534664120

`sqrt(A017128(n))`
-/

namespace A017126.P3157700515534664120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017128 n : ℝ)

end

end A017126.P3157700515534664120

namespace A017126

/-- `sqrt(A017128(n))` -/
def P3157700515534664120.Spec : Prop :=
  ∀ n, P3157700515534664120.a n = (A017126 n : ℝ)

end A017126

/-! ## A017126.P1380538007307296898

`A146301(n)+4`
-/

namespace A017126.P1380538007307296898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146301 n + 4

end

end A017126.P1380538007307296898

namespace A017126

/-- `A146301(n)+4` -/
def P1380538007307296898.Spec : Prop :=
  ∀ n, P1380538007307296898.a n = A017126 n

theorem P1380538007307296898.correct : P1380538007307296898.Spec := by
  intro n
  simp only [A017126, Nat.add_sub_cancel, A017126.P1380538007307296898.a, A017126.P14543019865094346056.a, A146301, A146301.P6561632266534080762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017126

/-! ## A017126.P10178446064908772497

`sqrt(sqrt(A017132(n)))`
-/

namespace A017126.P10178446064908772497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017132 n : ℝ))

end

end A017126.P10178446064908772497

namespace A017126

/-- `sqrt(sqrt(A017132(n)))` -/
def P10178446064908772497.Spec : Prop :=
  ∀ n, P10178446064908772497.a n = (A017126 n : ℝ)

end A017126

/-! ## A017126.P12555391387337203044

`4*A256833(n)+1`
-/

namespace A017126.P12555391387337203044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A256833 n + 1

end

end A017126.P12555391387337203044

namespace A017126

/-- `4*A256833(n)+1` -/
def P12555391387337203044.Spec : Prop :=
  ∀ n, P12555391387337203044.a n = A017126 n

theorem P12555391387337203044.correct : P12555391387337203044.Spec := by
  intro n
  simp only [A017126, Nat.add_sub_cancel, A017126.P12555391387337203044.a, A017126.P14543019865094346056.a, A256833, A256833.P10297936977861740275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017126

/-! ## A017126.P2590113768940252494

`A017130(n)^(1/3)`
-/

namespace A017126.P2590113768940252494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017130 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017126.P2590113768940252494

namespace A017126

/-- `A017130(n)^(1/3)` -/
def P2590113768940252494.Spec : Prop :=
  ∀ n, P2590113768940252494.a n = (A017126 n : ℝ)

end A017126

/-! ## A017126.P4116326363899609568

`A017127(n)^(2/3)`
-/

namespace A017126.P4116326363899609568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017127 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017126.P4116326363899609568

namespace A017126

/-- `A017127(n)^(2/3)` -/
def P4116326363899609568.Spec : Prop :=
  ∀ n, P4116326363899609568.a n = (A017126 n : ℝ)

end A017126

/-! ## A017126.P10112207037614179304

`A017138(n)-A106839(n)`
-/

namespace A017126.P10112207037614179304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n - A106839 n

end

end A017126.P10112207037614179304

namespace A017126

/-- `A017138(n)-A106839(n)` -/
def P10112207037614179304.Spec : Prop :=
  ∀ n, P10112207037614179304.a n = A017126 n

theorem P10112207037614179304.correct : P10112207037614179304.Spec := by
  intro n
  simp only [A017126, Nat.add_sub_cancel, A017126.P10112207037614179304.a, A017126.P14543019865094346056.a, A017138, A017138.P15439890238184103571.a, A106839, A106839.P12314086640576211792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017126

/-! ## A017126.P7441623459302429246

`A017129(n)/A017127(n)`
-/

namespace A017126.P7441623459302429246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017129 n : ℚ) / (A017127 n : ℚ)

end

end A017126.P7441623459302429246

namespace A017126

/-- `A017129(n)/A017127(n)` -/
def P7441623459302429246.Spec : Prop :=
  ∀ n, P7441623459302429246.a n = (A017126 n : ℚ)

end A017126

/-! ## A017126.P8613365638130080952

`A017130(n)/A017128(n)`
-/

namespace A017126.P8613365638130080952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017130 n : ℚ) / (A017128 n : ℚ)

end

end A017126.P8613365638130080952

namespace A017126

/-- `A017130(n)/A017128(n)` -/
def P8613365638130080952.Spec : Prop :=
  ∀ n, P8613365638130080952.a n = (A017126 n : ℚ)

end A017126

/-! ## A017126.P9775941617915104893

`A017132(n)/A017127(n)²`
-/

namespace A017126.P9775941617915104893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017132 n : ℚ) / (A017127 n ^ 2 : ℚ)

end

end A017126.P9775941617915104893

namespace A017126

/-- `A017132(n)/A017127(n)²` -/
def P9775941617915104893.Spec : Prop :=
  ∀ n, P9775941617915104893.a n = (A017126 n : ℚ)

end A017126

/-! ## A017126.P15599356212782149597

`A017127(n)/A004770(n+1)`
-/

namespace A017126.P15599356212782149597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017127 n : ℚ) / (A004770 (n + 1) : ℚ)

end

end A017126.P15599356212782149597

namespace A017126

/-- `A017127(n)/A004770(n+1)` -/
def P15599356212782149597.Spec : Prop :=
  ∀ n, P15599356212782149597.a n = (A017126 n : ℚ)

end A017126

/-! ## A017126.P1938274914802271671

`A016840(n)%A158487(n+1)`
-/

namespace A017126.P1938274914802271671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016840 n) (A158487 (n + 1))

end

end A017126.P1938274914802271671

namespace A017126

/-- `A016840(n)%A158487(n+1)` -/
def P1938274914802271671.Spec : Prop :=
  ∀ n, P1938274914802271671.a n = A017126 n

end A017126

/-!
# A017127: a(n) = (8*n + 5)^3.

The programs for A017127, the canonical program `A017127.P2978331054928800610` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017127 has offset 0).

The definition of A017127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)^3` (program `A017127.P2978331054928800610`, by `A017127.P2978331054928800610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017127.P2978331054928800610

`(8*n+5)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017127

/-- `(8*n+5)^3` -/
def P2978331054928800610.Spec : Prop :=
  ∀ n, (P2978331054928800610.a n : ℤ) = A017127 n

theorem P2978331054928800610.correct : P2978331054928800610.Spec := by
  intro n
  simp only [A017127]

end A017127

/-! ## A017127.P737299123913335749

`record[xor(5, 4*n)^3]`
-/

namespace A017127.P737299123913335749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (4 * n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017127.P737299123913335749

namespace A017127

/-- `record[xor(5, 4*n)^3]` -/
def P737299123913335749.Spec : Prop :=
  ∀ n, (P737299123913335749.a n : ℤ) = A017127 n

end A017127

/-! ## A017127.P16769134268200013576

`record[(lcm(4, n+1)+1)^3]`
-/

namespace A017127.P16769134268200013576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017127.P16769134268200013576

namespace A017127

/-- `record[(lcm(4, n+1)+1)^3]` -/
def P16769134268200013576.Spec : Prop :=
  ∀ n, (P16769134268200013576.a n : ℤ) = A017127 n

end A017127

/-! ## A017127.P6982651394784014985

`sqrt(A017130(n))`
-/

namespace A017127.P6982651394784014985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017130 n : ℝ)

end

end A017127.P6982651394784014985

namespace A017127

/-- `sqrt(A017130(n))` -/
def P6982651394784014985.Spec : Prop :=
  ∀ n, P6982651394784014985.a n = (A017127 n : ℝ)

end A017127

/-! ## A017127.P11362975336704851336

`sqrt(A017126(n)^3)`
-/

namespace A017127.P11362975336704851336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017126 n ^ 3 : ℝ)

end

end A017127.P11362975336704851336

namespace A017127

/-- `sqrt(A017126(n)^3)` -/
def P11362975336704851336.Spec : Prop :=
  ∀ n, P11362975336704851336.a n = (A017127 n : ℝ)

end A017127

/-! ## A017127.P11443229470798354938

`A017128(n)/Δ[(2*n)²+n]`
-/

namespace A017127.P11443229470798354938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017128 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A017127.P11443229470798354938

namespace A017127

/-- `A017128(n)/Δ[(2*n)²+n]` -/
def P11443229470798354938.Spec : Prop :=
  ∀ n, P11443229470798354938.a n = (A017127 n : ℚ)

end A017127

/-! ## A017127.P4637609929276995209

`A017129(n)/A017126(n)`
-/

namespace A017127.P4637609929276995209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017129 n : ℚ) / (A017126 n : ℚ)

end

end A017127.P4637609929276995209

namespace A017127

/-- `A017129(n)/A017126(n)` -/
def P4637609929276995209.Spec : Prop :=
  ∀ n, P4637609929276995209.a n = (A017127 n : ℚ)

end A017127

/-! ## A017127.P870210304019022947

`A017131(n)/A017128(n)`
-/

namespace A017127.P870210304019022947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017131 n : ℚ) / (A017128 n : ℚ)

end

end A017127.P870210304019022947

namespace A017127

/-- `A017131(n)/A017128(n)` -/
def P870210304019022947.Spec : Prop :=
  ∀ n, P870210304019022947.a n = (A017127 n : ℚ)

end A017127

/-! ## A017127.P13766557690730850052

`A017128(n)²/A017129(n)`
-/

namespace A017127.P13766557690730850052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017128 n ^ 2 : ℚ) / (A017129 n : ℚ)

end

end A017127.P13766557690730850052

namespace A017127

/-- `A017128(n)²/A017129(n)` -/
def P13766557690730850052.Spec : Prop :=
  ∀ n, P13766557690730850052.a n = (A017127 n : ℚ)

end A017127

/-! ## A017127.P10903252476160463365

`A017131(n)/A017126(n)²`
-/

namespace A017127.P10903252476160463365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017131 n : ℚ) / (A017126 n ^ 2 : ℚ)

end

end A017127.P10903252476160463365

namespace A017127

/-- `A017131(n)/A017126(n)²` -/
def P10903252476160463365.Spec : Prop :=
  ∀ n, P10903252476160463365.a n = (A017127 n : ℚ)

end A017127

/-! ## A017127.P10029560521693999827

`A004770(n+1)*A017126(n)`
-/

namespace A017127.P10029560521693999827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) * A017126 n

end

end A017127.P10029560521693999827

namespace A017127

/-- `A004770(n+1)*A017126(n)` -/
def P10029560521693999827.Spec : Prop :=
  ∀ n, P10029560521693999827.a n = A017127 n

theorem P10029560521693999827.correct : P10029560521693999827.Spec := by
  intro n
  simp only [A017127, Nat.add_sub_cancel, A017127.P10029560521693999827.a, A017127.P2978331054928800610.a, A004770, A004770.P3348596714663788795.a, A017126, A017126.P14543019865094346056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017127

/-! ## A017127.P16850660250006806729

`(A017137(n)-1)*A017126(n)`
-/

namespace A017127.P16850660250006806729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n - 1) * A017126 n

end

end A017127.P16850660250006806729

namespace A017127

/-- `(A017137(n)-1)*A017126(n)` -/
def P16850660250006806729.Spec : Prop :=
  ∀ n, P16850660250006806729.a n = A017127 n

theorem P16850660250006806729.correct : P16850660250006806729.Spec := by
  intro n
  simp only [A017127, Nat.add_sub_cancel, A017127.P16850660250006806729.a, A017127.P2978331054928800610.a, A017126, A017126.P14543019865094346056.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017127

/-! ## A017127.P15129096407577137345

`A017129(n)/A004770(n+1)²`
-/

namespace A017127.P15129096407577137345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017129 n : ℚ) / (A004770 (n + 1) ^ 2 : ℚ)

end

end A017127.P15129096407577137345

namespace A017127

/-- `A017129(n)/A004770(n+1)²` -/
def P15129096407577137345.Spec : Prop :=
  ∀ n, P15129096407577137345.a n = (A017127 n : ℚ)

end A017127

/-! ## A017127.P1987596103507737529

`Δ[A007742(n)]²*Δ[A007742(n)]`
-/

namespace A017127.P1987596103507737529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017127.P1987596103507737529

namespace A017127

/-- `Δ[A007742(n)]²*Δ[A007742(n)]` -/
def P1987596103507737529.Spec : Prop :=
  ∀ n, P1987596103507737529.a n = A017127 n

theorem P1987596103507737529.correct : P1987596103507737529.Spec := by
  intro n
  simp only [A017127, Nat.add_sub_cancel, A017127.P1987596103507737529.f1, A017127.P1987596103507737529.f2, A017127.P1987596103507737529.a, A017127.P2978331054928800610.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017127

/-! ## A017127.P16348785596888916450

`floor(A010060(n)/4)+A004770(n+1)^3`
-/

namespace A017127.P16348785596888916450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010060 n : ℚ) / 4⌋ + A004770 (n + 1) ^ 3

end

end A017127.P16348785596888916450

namespace A017127

/-- `floor(A010060(n)/4)+A004770(n+1)^3` -/
def P16348785596888916450.Spec : Prop :=
  ∀ n, P16348785596888916450.a n = A017127 n

end A017127

/-! ## A017127.P16345294419039179844

`A017133(n)/(A017126(n)²*A017126(n))`
-/

namespace A017127.P16345294419039179844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017133 n : ℚ) / (A017126 n ^ 2 * A017126 n : ℚ)

end

end A017127.P16345294419039179844

namespace A017127

/-- `A017133(n)/(A017126(n)²*A017126(n))` -/
def P16345294419039179844.Spec : Prop :=
  ∀ n, P16345294419039179844.a n = (A017127 n : ℚ)

end A017127

/-! ## A017127.P14334061038816353594

`A017128(n)/A017133(n)*A017128(n)²`
-/

namespace A017127.P14334061038816353594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017128 n : ℚ) / (A017133 n : ℚ) * (A017128 n ^ 2 : ℚ)

end

end A017127.P14334061038816353594

namespace A017127

/-- `A017128(n)/A017133(n)*A017128(n)²` -/
def P14334061038816353594.Spec : Prop :=
  ∀ n, P14334061038816353594.a n = (A017127 n : ℚ)

end A017127

/-! ## A017127.P15902816887575211931

`A016151(A105375(n+1))+A004770(n+1)^3`
-/

namespace A017127.P15902816887575211931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (A105375 (n + 1)).toNat + A004770 (n + 1) ^ 3

end

end A017127.P15902816887575211931

namespace A017127

/-- `A016151(A105375(n+1))+A004770(n+1)^3` -/
def P15902816887575211931.Spec : Prop :=
  ∀ n, P15902816887575211931.a n = A017127 n

end A017127

/-! ## A017127.P11384721554822306868

`A016815(Δ[n²])`
-/

namespace A017127.P11384721554822306868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017127.P11384721554822306868

namespace A017127

/-- `A016815(Δ[n²])` -/
def P11384721554822306868.Spec : Prop :=
  ∀ n, P11384721554822306868.a n = A017127 n

end A017127

/-!
# A017128: a(n) = (8*n + 5)^4.

The programs for A017128, the canonical program `A017128.P3580533372398413610` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017128 has offset 0).

The definition of A017128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)^4` (program `A017128.P3580533372398413610`, by `A017128.P3580533372398413610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017128.P3580533372398413610

`(8*n+5)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017128

/-- `(8*n+5)^4` -/
def P3580533372398413610.Spec : Prop :=
  ∀ n, (P3580533372398413610.a n : ℤ) = A017128 n

theorem P3580533372398413610.correct : P3580533372398413610.Spec := by
  intro n
  simp only [A017128]

end A017128

/-! ## A017128.P4849328329265116399

`or(5, 8*n)²²`
-/

namespace A017128.P4849328329265116399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 (8 * n) ^ 2) ^ 2

end

end A017128.P4849328329265116399

namespace A017128

/-- `or(5, 8*n)²²` -/
def P4849328329265116399.Spec : Prop :=
  ∀ n, (P4849328329265116399.a n : ℤ) = A017128 n

end A017128

/-! ## A017128.P16582121304010832240

`xor(5, 8*n)²²`
-/

namespace A017128.P16582121304010832240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 (8 * n) ^ 2) ^ 2

end

end A017128.P16582121304010832240

namespace A017128

/-- `xor(5, 8*n)²²` -/
def P16582121304010832240.Spec : Prop :=
  ∀ n, (P16582121304010832240.a n : ℤ) = A017128 n

end A017128

/-! ## A017128.P5741580818776305275

`record[xor(5, 4*n)^4]`
-/

namespace A017128.P5741580818776305275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (4 * n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017128.P5741580818776305275

namespace A017128

/-- `record[xor(5, 4*n)^4]` -/
def P5741580818776305275.Spec : Prop :=
  ∀ n, (P5741580818776305275.a n : ℤ) = A017128 n

end A017128

/-! ## A017128.P7261729843324719199

`record[(lcm(4, n+1)+1)^4]`
-/

namespace A017128.P7261729843324719199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017128.P7261729843324719199

namespace A017128

/-- `record[(lcm(4, n+1)+1)^4]` -/
def P7261729843324719199.Spec : Prop :=
  ∀ n, (P7261729843324719199.a n : ℤ) = A017128 n

end A017128

/-! ## A017128.P5167619987851663950

`(8*n%(n+1)+5)²²`
-/

namespace A017128.P5167619987851663950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((8 * (n % (n + 1)) + 5) ^ 2) ^ 2

end

end A017128.P5167619987851663950

namespace A017128

/-- `(8*n%(n+1)+5)²²` -/
def P5167619987851663950.Spec : Prop :=
  ∀ n, (P5167619987851663950.a n : ℤ) = A017128 n

theorem P5167619987851663950.correct : P5167619987851663950.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P5167619987851663950.a, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017128

/-! ## A017128.P5691052086522998325

`(Δ[lcm(2, (2*n)²)]+1)²²`
-/

namespace A017128.P5691052086522998325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2) ^ 2

end

end A017128.P5691052086522998325

namespace A017128

/-- `(Δ[lcm(2, (2*n)²)]+1)²²` -/
def P5691052086522998325.Spec : Prop :=
  ∀ n, P5691052086522998325.a n = A017128 n

end A017128

/-! ## A017128.P8637623218807327652

`(Δ[(2*n)²]+gcd(n, n+1))²²`
-/

namespace A017128.P8637623218807327652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.gcd n (n + 1) : ℤ)) ^ 2) ^ 2

end

end A017128.P8637623218807327652

namespace A017128

/-- `(Δ[(2*n)²]+gcd(n, n+1))²²` -/
def P8637623218807327652.Spec : Prop :=
  ∀ n, P8637623218807327652.a n = A017128 n

theorem P8637623218807327652.correct : P8637623218807327652.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P8637623218807327652.f1, A017128.P8637623218807327652.a, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017128

/-! ## A017128.P5547814573713614667

`Δ[C(n+1, n)+(2*n)²]²²`
-/

namespace A017128.P5547814573713614667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017128.P5547814573713614667

namespace A017128

/-- `Δ[C(n+1, n)+(2*n)²]²²` -/
def P5547814573713614667.Spec : Prop :=
  ∀ n, P5547814573713614667.a n = A017128 n

theorem P5547814573713614667.correct : P5547814573713614667.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P5547814573713614667.f1, A017128.P5547814573713614667.a, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017128

/-! ## A017128.P5935264678368233835

`(Δ[and(2*n+1, 2*n)²]+1)²²`
-/

namespace A017128.P5935264678368233835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2) ^ 2

end

end A017128.P5935264678368233835

namespace A017128

/-- `(Δ[and(2*n+1, 2*n)²]+1)²²` -/
def P5935264678368233835.Spec : Prop :=
  ∀ n, P5935264678368233835.a n = A017128 n

end A017128

/-! ## A017128.P414562490491265934

`A017126(n)²`
-/

namespace A017128.P414562490491265934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n ^ 2

end

end A017128.P414562490491265934

namespace A017128

/-- `A017126(n)²` -/
def P414562490491265934.Spec : Prop :=
  ∀ n, P414562490491265934.a n = A017128 n

theorem P414562490491265934.correct : P414562490491265934.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P414562490491265934.a, A017128.P3580533372398413610.a, A017126, A017126.P14543019865094346056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-! ## A017128.P15733922789340883592

`sqrt(A017132(n))`
-/

namespace A017128.P15733922789340883592
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017132 n : ℝ)

end

end A017128.P15733922789340883592

namespace A017128

/-- `sqrt(A017132(n))` -/
def P15733922789340883592.Spec : Prop :=
  ∀ n, P15733922789340883592.a n = (A017128 n : ℝ)

end A017128

/-! ## A017128.P13115938424057575379

`(A146301(n)+4)²`
-/

namespace A017128.P13115938424057575379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146301 n + 4) ^ 2

end

end A017128.P13115938424057575379

namespace A017128

/-- `(A146301(n)+4)²` -/
def P13115938424057575379.Spec : Prop :=
  ∀ n, P13115938424057575379.a n = A017128 n

theorem P13115938424057575379.correct : P13115938424057575379.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P13115938424057575379.a, A017128.P3580533372398413610.a, A146301, A146301.P6561632266534080762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-! ## A017128.P12532235297017901958

`Δ[A007742(n)]²²`
-/

namespace A017128.P12532235297017901958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017128.P12532235297017901958

namespace A017128

/-- `Δ[A007742(n)]²²` -/
def P12532235297017901958.Spec : Prop :=
  ∀ n, P12532235297017901958.a n = A017128 n

theorem P12532235297017901958.correct : P12532235297017901958.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P12532235297017901958.f1, A017128.P12532235297017901958.a, A017128.P3580533372398413610.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-! ## A017128.P13466547161913976425

`A004770(n+1)²²`
-/

namespace A017128.P13466547161913976425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004770 (n + 1) ^ 2) ^ 2

end

end A017128.P13466547161913976425

namespace A017128

/-- `A004770(n+1)²²` -/
def P13466547161913976425.Spec : Prop :=
  ∀ n, P13466547161913976425.a n = A017128 n

theorem P13466547161913976425.correct : P13466547161913976425.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P13466547161913976425.a, A017128.P3580533372398413610.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-! ## A017128.P14386153399580026296

`(A017113(n)+1)²²`
-/

namespace A017128.P14386153399580026296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017113 n + 1) ^ 2) ^ 2

end

end A017128.P14386153399580026296

namespace A017128

/-- `(A017113(n)+1)²²` -/
def P14386153399580026296.Spec : Prop :=
  ∀ n, P14386153399580026296.a n = A017128 n

theorem P14386153399580026296.correct : P14386153399580026296.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P14386153399580026296.a, A017128.P3580533372398413610.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-! ## A017128.P7666030464861859300

`(A017101(n)+2)²²`
-/

namespace A017128.P7666030464861859300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017101 n + 2) ^ 2) ^ 2

end

end A017128.P7666030464861859300

namespace A017128

/-- `(A017101(n)+2)²²` -/
def P7666030464861859300.Spec : Prop :=
  ∀ n, P7666030464861859300.a n = A017128 n

theorem P7666030464861859300.correct : P7666030464861859300.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P7666030464861859300.a, A017128.P3580533372398413610.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-! ## A017128.P13905926899382075191

`(1-A017137(n))²²`
-/

namespace A017128.P13905926899382075191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017137 n) ^ 2) ^ 2

end

end A017128.P13905926899382075191

namespace A017128

/-- `(1-A017137(n))²²` -/
def P13905926899382075191.Spec : Prop :=
  ∀ n, P13905926899382075191.a n = A017128 n

theorem P13905926899382075191.correct : P13905926899382075191.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P13905926899382075191.a, A017128.P3580533372398413610.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-! ## A017128.P6142525471001610521

`(2-A004771(n))²²`
-/

namespace A017128.P6142525471001610521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A004771 n) ^ 2) ^ 2

end

end A017128.P6142525471001610521

namespace A017128

/-- `(2-A004771(n))²²` -/
def P6142525471001610521.Spec : Prop :=
  ∀ n, P6142525471001610521.a n = A017128 n

theorem P6142525471001610521.correct : P6142525471001610521.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P6142525471001610521.a, A017128.P3580533372398413610.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-! ## A017128.P1621382239894271209

`(A017089(n)+3)²²`
-/

namespace A017128.P1621382239894271209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017089 n + 3) ^ 2) ^ 2

end

end A017128.P1621382239894271209

namespace A017128

/-- `(A017089(n)+3)²²` -/
def P1621382239894271209.Spec : Prop :=
  ∀ n, P1621382239894271209.a n = A017128 n

theorem P1621382239894271209.correct : P1621382239894271209.Spec := by
  intro n
  simp only [A017128, Nat.add_sub_cancel, A017128.P1621382239894271209.a, A017128.P3580533372398413610.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017128

/-!
# A017129: a(n) = (8*n + 5)^5.

The programs for A017129, the canonical program `A017129.P17622217984534649912` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017129 has offset 0).

The definition of A017129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)^5` (program `A017129.P17622217984534649912`, by `A017129.P17622217984534649912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017129.P17622217984534649912

`(8*n+5)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017129

/-- `(8*n+5)^5` -/
def P17622217984534649912.Spec : Prop :=
  ∀ n, (P17622217984534649912.a n : ℤ) = A017129 n

theorem P17622217984534649912.correct : P17622217984534649912.Spec := by
  intro n
  simp only [A017129]

end A017129

/-! ## A017129.P4869186033326451116

`record[xor(5, 4*n)^5]`
-/

namespace A017129.P4869186033326451116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (4 * n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017129.P4869186033326451116

namespace A017129

/-- `record[xor(5, 4*n)^5]` -/
def P4869186033326451116.Spec : Prop :=
  ∀ n, (P4869186033326451116.a n : ℤ) = A017129 n

end A017129

/-! ## A017129.P11575378597363660722

`record[(lcm(4, n+1)+1)^5]`
-/

namespace A017129.P11575378597363660722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017129.P11575378597363660722

namespace A017129

/-- `record[(lcm(4, n+1)+1)^5]` -/
def P11575378597363660722.Spec : Prop :=
  ∀ n, (P11575378597363660722.a n : ℤ) = A017129 n

end A017129

/-! ## A017129.P2558863069572844570

`sqrt(A017134(n))`
-/

namespace A017129.P2558863069572844570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017134 n : ℝ)

end

end A017129.P2558863069572844570

namespace A017129

/-- `sqrt(A017134(n))` -/
def P2558863069572844570.Spec : Prop :=
  ∀ n, P2558863069572844570.a n = (A017129 n : ℝ)

end A017129

/-! ## A017129.P15627244689131821336

`sqrt(A017126(n)^5)`
-/

namespace A017129.P15627244689131821336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017126 n ^ 5 : ℝ)

end

end A017129.P15627244689131821336

namespace A017129

/-- `sqrt(A017126(n)^5)` -/
def P15627244689131821336.Spec : Prop :=
  ∀ n, P15627244689131821336.a n = (A017129 n : ℝ)

end A017129

/-! ## A017129.P14581149730680176822

`(8*n+5)*A017128(n)`
-/

namespace A017129.P14581149730680176822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 5 : ℤ) * A017128 n

end

end A017129.P14581149730680176822

namespace A017129

/-- `(8*n+5)*A017128(n)` -/
def P14581149730680176822.Spec : Prop :=
  ∀ n, P14581149730680176822.a n = A017129 n

theorem P14581149730680176822.correct : P14581149730680176822.Spec := by
  intro n
  simp only [A017129, Nat.add_sub_cancel, A017129.P14581149730680176822.a, A017129.P17622217984534649912.a, A017128, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017129

/-! ## A017129.P4789522637852938013

`A017126(n)*A017127(n)`
-/

namespace A017129.P4789522637852938013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n * A017127 n

end

end A017129.P4789522637852938013

namespace A017129

/-- `A017126(n)*A017127(n)` -/
def P4789522637852938013.Spec : Prop :=
  ∀ n, P4789522637852938013.a n = A017129 n

theorem P4789522637852938013.correct : P4789522637852938013.Spec := by
  intro n
  simp only [A017129, Nat.add_sub_cancel, A017129.P4789522637852938013.a, A017129.P17622217984534649912.a, A017126, A017126.P14543019865094346056.a, A017127, A017127.P2978331054928800610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017129

/-! ## A017129.P6611834295424994325

`A017131(n)/A017126(n)`
-/

namespace A017129.P6611834295424994325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017131 n : ℚ) / (A017126 n : ℚ)

end

end A017129.P6611834295424994325

namespace A017129

/-- `A017131(n)/A017126(n)` -/
def P6611834295424994325.Spec : Prop :=
  ∀ n, P6611834295424994325.a n = (A017129 n : ℚ)

end A017129

/-! ## A017129.P9243715638485892147

`A017132(n)/A017127(n)`
-/

namespace A017129.P9243715638485892147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017132 n : ℚ) / (A017127 n : ℚ)

end

end A017129.P9243715638485892147

namespace A017129

/-- `A017132(n)/A017127(n)` -/
def P9243715638485892147.Spec : Prop :=
  ∀ n, P9243715638485892147.a n = (A017129 n : ℚ)

end A017129

/-! ## A017129.P366484695592724637

`A017133(n)/A017128(n)`
-/

namespace A017129.P366484695592724637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017133 n : ℚ) / (A017128 n : ℚ)

end

end A017129.P366484695592724637

namespace A017129

/-- `A017133(n)/A017128(n)` -/
def P366484695592724637.Spec : Prop :=
  ∀ n, P366484695592724637.a n = (A017129 n : ℚ)

end A017129

/-! ## A017129.P18381845360491452739

`A017128(n)²/A017127(n)`
-/

namespace A017129.P18381845360491452739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017128 n ^ 2 : ℚ) / (A017127 n : ℚ)

end

end A017129.P18381845360491452739

namespace A017129

/-- `A017128(n)²/A017127(n)` -/
def P18381845360491452739.Spec : Prop :=
  ∀ n, P18381845360491452739.a n = (A017129 n : ℚ)

end A017129

/-! ## A017129.P2923654335247751573

`sqrt(A017130(n))*A017126(n)`
-/

namespace A017129.P2923654335247751573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017130 n : ℝ) * (A017126 n : ℝ)

end

end A017129.P2923654335247751573

namespace A017129

/-- `sqrt(A017130(n))*A017126(n)` -/
def P2923654335247751573.Spec : Prop :=
  ∀ n, P2923654335247751573.a n = (A017129 n : ℝ)

end A017129

/-! ## A017129.P13349055423213383769

`A017133(n)/A017126(n)²`
-/

namespace A017129.P13349055423213383769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017133 n : ℚ) / (A017126 n ^ 2 : ℚ)

end

end A017129.P13349055423213383769

namespace A017129

/-- `A017133(n)/A017126(n)²` -/
def P13349055423213383769.Spec : Prop :=
  ∀ n, P13349055423213383769.a n = (A017129 n : ℚ)

end A017129

/-! ## A017129.P6977094146205947204

`A017131(n)/sqrt(A017128(n))`
-/

namespace A017129.P6977094146205947204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017131 n : ℝ) / Real.sqrt (A017128 n : ℝ)

end

end A017129.P6977094146205947204

namespace A017129

/-- `A017131(n)/sqrt(A017128(n))` -/
def P6977094146205947204.Spec : Prop :=
  ∀ n, P6977094146205947204.a n = (A017129 n : ℝ)

end A017129

/-! ## A017129.P323240799927963695

`A017130(n)/A004770(n+1)`
-/

namespace A017129.P323240799927963695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017130 n : ℚ) / (A004770 (n + 1) : ℚ)

end

end A017129.P323240799927963695

namespace A017129

/-- `A017130(n)/A004770(n+1)` -/
def P323240799927963695.Spec : Prop :=
  ∀ n, P323240799927963695.a n = (A017129 n : ℚ)

end A017129

/-! ## A017129.P15679890436574868023

`A017126(n)²*A004770(n+1)`
-/

namespace A017129.P15679890436574868023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n ^ 2 * A004770 (n + 1)

end

end A017129.P15679890436574868023

namespace A017129

/-- `A017126(n)²*A004770(n+1)` -/
def P15679890436574868023.Spec : Prop :=
  ∀ n, P15679890436574868023.a n = A017129 n

theorem P15679890436574868023.correct : P15679890436574868023.Spec := by
  intro n
  simp only [A017129, Nat.add_sub_cancel, A017129.P15679890436574868023.a, A017129.P17622217984534649912.a, A004770, A004770.P3348596714663788795.a, A017126, A017126.P14543019865094346056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017129

/-! ## A017129.P12933407774140396096

`A004770(n+1)²*A017127(n)`
-/

namespace A017129.P12933407774140396096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) ^ 2 * A017127 n

end

end A017129.P12933407774140396096

namespace A017129

/-- `A004770(n+1)²*A017127(n)` -/
def P12933407774140396096.Spec : Prop :=
  ∀ n, P12933407774140396096.a n = A017129 n

theorem P12933407774140396096.correct : P12933407774140396096.Spec := by
  intro n
  simp only [A017129, Nat.add_sub_cancel, A017129.P12933407774140396096.a, A017129.P17622217984534649912.a, A004770, A004770.P3348596714663788795.a, A017127, A017127.P2978331054928800610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017129

/-! ## A017129.P14732693917657126833

`(A017137(n)-1)*A017126(n)²`
-/

namespace A017129.P14732693917657126833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n - 1) * A017126 n ^ 2

end

end A017129.P14732693917657126833

namespace A017129

/-- `(A017137(n)-1)*A017126(n)²` -/
def P14732693917657126833.Spec : Prop :=
  ∀ n, P14732693917657126833.a n = A017129 n

theorem P14732693917657126833.correct : P14732693917657126833.Spec := by
  intro n
  simp only [A017129, Nat.add_sub_cancel, A017129.P14732693917657126833.a, A017129.P17622217984534649912.a, A017126, A017126.P14543019865094346056.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017129

/-! ## A017129.P4390454692948854230

`A016817(Δ[n²])`
-/

namespace A017129.P4390454692948854230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017129.P4390454692948854230

namespace A017129

/-- `A016817(Δ[n²])` -/
def P4390454692948854230.Spec : Prop :=
  ∀ n, P4390454692948854230.a n = A017129 n

end A017129

/-! ## A017129.P2949963091103369946

`sqrt(A016822(2*n+1))`
-/

namespace A017129.P2949963091103369946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016822 (2 * n + 1) : ℝ)

end

end A017129.P2949963091103369946

namespace A017129

/-- `sqrt(A016822(2*n+1))` -/
def P2949963091103369946.Spec : Prop :=
  ∀ n, P2949963091103369946.a n = (A017129 n : ℝ)

end A017129

/-!
# A017130: a(n) = (8*n + 5)^6.

The programs for A017130, the canonical program `A017130.P18025281713738148250` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017130 has offset 0).

The definition of A017130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)^6` (program `A017130.P18025281713738148250`, by `A017130.P18025281713738148250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017130.P18025281713738148250

`(8*n+5)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017130

/-- `(8*n+5)^6` -/
def P18025281713738148250.Spec : Prop :=
  ∀ n, (P18025281713738148250.a n : ℤ) = A017130 n

theorem P18025281713738148250.correct : P18025281713738148250.Spec := by
  intro n
  simp only [A017130]

end A017130

/-! ## A017130.P6738395001143000176

`(or(5, 4*2*n)^3)²`
-/

namespace A017130.P6738395001143000176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 (4 * (2 * n)) ^ 3) ^ 2

end

end A017130.P6738395001143000176

namespace A017130

/-- `(or(5, 4*2*n)^3)²` -/
def P6738395001143000176.Spec : Prop :=
  ∀ n, (P6738395001143000176.a n : ℤ) = A017130 n

end A017130

/-! ## A017130.P18043277787956324088

`(xor(5, 4*2*n)^3)²`
-/

namespace A017130.P18043277787956324088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 (4 * (2 * n)) ^ 3) ^ 2

end

end A017130.P18043277787956324088

namespace A017130

/-- `(xor(5, 4*2*n)^3)²` -/
def P18043277787956324088.Spec : Prop :=
  ∀ n, (P18043277787956324088.a n : ℤ) = A017130 n

end A017130

/-! ## A017130.P1903101577794094665

`A017127(n)²`
-/

namespace A017130.P1903101577794094665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017127 n ^ 2

end

end A017130.P1903101577794094665

namespace A017130

/-- `A017127(n)²` -/
def P1903101577794094665.Spec : Prop :=
  ∀ n, P1903101577794094665.a n = A017130 n

theorem P1903101577794094665.correct : P1903101577794094665.Spec := by
  intro n
  simp only [A017130, Nat.add_sub_cancel, A017130.P1903101577794094665.a, A017130.P18025281713738148250.a, A017127, A017127.P2978331054928800610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017130

/-! ## A017130.P8497915218932364614

`sqrt(A017128(n)^3)`
-/

namespace A017130.P8497915218932364614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017128 n ^ 3 : ℝ)

end

end A017130.P8497915218932364614

namespace A017130

/-- `sqrt(A017128(n)^3)` -/
def P8497915218932364614.Spec : Prop :=
  ∀ n, P8497915218932364614.a n = (A017130 n : ℝ)

end A017130

/-! ## A017130.P14221364532113410157

`(Δ[A007742(n)]^3)²`
-/

namespace A017130.P14221364532113410157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017130.P14221364532113410157

namespace A017130

/-- `(Δ[A007742(n)]^3)²` -/
def P14221364532113410157.Spec : Prop :=
  ∀ n, P14221364532113410157.a n = A017130 n

theorem P14221364532113410157.correct : P14221364532113410157.Spec := by
  intro n
  simp only [A017130, Nat.add_sub_cancel, A017130.P14221364532113410157.f1, A017130.P14221364532113410157.a, A017130.P18025281713738148250.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017130

/-! ## A017130.P15913054391228755354

`(A004770(n+1)^3)²`
-/

namespace A017130.P15913054391228755354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004770 (n + 1) ^ 3) ^ 2

end

end A017130.P15913054391228755354

namespace A017130

/-- `(A004770(n+1)^3)²` -/
def P15913054391228755354.Spec : Prop :=
  ∀ n, P15913054391228755354.a n = A017130 n

theorem P15913054391228755354.correct : P15913054391228755354.Spec := by
  intro n
  simp only [A017130, Nat.add_sub_cancel, A017130.P15913054391228755354.a, A017130.P18025281713738148250.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017130

/-! ## A017130.P5330238389148458563

`A017126(n)*A017128(n)`
-/

namespace A017130.P5330238389148458563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n * A017128 n

end

end A017130.P5330238389148458563

namespace A017130

/-- `A017126(n)*A017128(n)` -/
def P5330238389148458563.Spec : Prop :=
  ∀ n, P5330238389148458563.a n = A017130 n

theorem P5330238389148458563.correct : P5330238389148458563.Spec := by
  intro n
  simp only [A017130, Nat.add_sub_cancel, A017130.P5330238389148458563.a, A017130.P18025281713738148250.a, A017126, A017126.P14543019865094346056.a, A017128, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017130

/-! ## A017130.P14110802506011816254

`(A017129(n)/A017126(n))²`
-/

namespace A017130.P14110802506011816254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017129 n : ℚ) / (A017126 n : ℚ)) ^ 2

end

end A017130.P14110802506011816254

namespace A017130

/-- `(A017129(n)/A017126(n))²` -/
def P14110802506011816254.Spec : Prop :=
  ∀ n, P14110802506011816254.a n = (A017130 n : ℚ)

end A017130

/-! ## A017130.P1853234437031296955

`A017129(n)²/A017128(n)`
-/

namespace A017130.P1853234437031296955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017129 n ^ 2 : ℚ) / (A017128 n : ℚ)

end

end A017130.P1853234437031296955

namespace A017130

/-- `A017129(n)²/A017128(n)` -/
def P1853234437031296955.Spec : Prop :=
  ∀ n, P1853234437031296955.a n = (A017130 n : ℚ)

end A017130

/-! ## A017130.P12898123886427404338

`(A017131(n)/A017128(n))²`
-/

namespace A017130.P12898123886427404338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017131 n : ℚ) / (A017128 n : ℚ)) ^ 2

end

end A017130.P12898123886427404338

namespace A017130

/-- `(A017131(n)/A017128(n))²` -/
def P12898123886427404338.Spec : Prop :=
  ∀ n, P12898123886427404338.a n = (A017130 n : ℚ)

end A017130

/-! ## A017130.P9432414402000539659

`A017134(n)/A017126(n)²`
-/

namespace A017130.P9432414402000539659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017134 n : ℚ) / (A017126 n ^ 2 : ℚ)

end

end A017130.P9432414402000539659

namespace A017130

/-- `A017134(n)/A017126(n)²` -/
def P9432414402000539659.Spec : Prop :=
  ∀ n, P9432414402000539659.a n = (A017130 n : ℚ)

end A017130

/-! ## A017130.P11775685220183041255

`A004770(n+1)*A017129(n)`
-/

namespace A017130.P11775685220183041255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) * A017129 n

end

end A017130.P11775685220183041255

namespace A017130

/-- `A004770(n+1)*A017129(n)` -/
def P11775685220183041255.Spec : Prop :=
  ∀ n, P11775685220183041255.a n = A017130 n

theorem P11775685220183041255.correct : P11775685220183041255.Spec := by
  intro n
  simp only [A017130, Nat.add_sub_cancel, A017130.P11775685220183041255.a, A017130.P18025281713738148250.a, A004770, A004770.P3348596714663788795.a, A017129, A017129.P17622217984534649912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017130

/-! ## A017130.P2727474421276624895

`(A017131(n)/A017126(n)²)²`
-/

namespace A017130.P2727474421276624895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017131 n : ℚ) / (A017126 n ^ 2 : ℚ)) ^ 2

end

end A017130.P2727474421276624895

namespace A017130

/-- `(A017131(n)/A017126(n)²)²` -/
def P2727474421276624895.Spec : Prop :=
  ∀ n, P2727474421276624895.a n = (A017130 n : ℚ)

end A017130

/-! ## A017130.P18010890428588090487

`sqrt(sqrt(A017132(n))*A017132(n))`
-/

namespace A017130.P18010890428588090487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017132 n : ℝ) * (A017132 n : ℝ))

end

end A017130.P18010890428588090487

namespace A017130

/-- `sqrt(sqrt(A017132(n))*A017132(n))` -/
def P18010890428588090487.Spec : Prop :=
  ∀ n, P18010890428588090487.a n = (A017130 n : ℝ)

end A017130

/-! ## A017130.P6270081077903024291

`A004770(n+1)²*A017128(n)`
-/

namespace A017130.P6270081077903024291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) ^ 2 * A017128 n

end

end A017130.P6270081077903024291

namespace A017130

/-- `A004770(n+1)²*A017128(n)` -/
def P6270081077903024291.Spec : Prop :=
  ∀ n, P6270081077903024291.a n = A017130 n

theorem P6270081077903024291.correct : P6270081077903024291.Spec := by
  intro n
  simp only [A017130, Nat.add_sub_cancel, A017130.P6270081077903024291.a, A017130.P18025281713738148250.a, A004770, A004770.P3348596714663788795.a, A017128, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017130

/-! ## A017130.P13882607915178963250

`(A017126(n)²/A004770(n+1))²`
-/

namespace A017130.P13882607915178963250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017126 n ^ 2 : ℚ) / (A004770 (n + 1) : ℚ)) ^ 2

end

end A017130.P13882607915178963250

namespace A017130

/-- `(A017126(n)²/A004770(n+1))²` -/
def P13882607915178963250.Spec : Prop :=
  ∀ n, P13882607915178963250.a n = (A017130 n : ℚ)

end A017130

/-! ## A017130.P15401980216018938123

`(Δ[A182868(n)]^3)²`
-/

namespace A017130.P15401980216018938123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017130.P15401980216018938123

namespace A017130

/-- `(Δ[A182868(n)]^3)²` -/
def P15401980216018938123.Spec : Prop :=
  ∀ n, P15401980216018938123.a n = A017130 n

theorem P15401980216018938123.correct : P15401980216018938123.Spec := by
  intro n
  simp only [A017130, Nat.add_sub_cancel, A017130.P15401980216018938123.f1, A017130.P15401980216018938123.a, A017130.P18025281713738148250.a, A182868, A182868.P7978343847695056203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017130

/-! ## A017130.P5984992410018080021

`(Δ[A054567(n+1)]^3)²`
-/

namespace A017130.P5984992410018080021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017130.P5984992410018080021

namespace A017130

/-- `(Δ[A054567(n+1)]^3)²` -/
def P5984992410018080021.Spec : Prop :=
  ∀ n, P5984992410018080021.a n = A017130 n

theorem P5984992410018080021.correct : P5984992410018080021.Spec := by
  intro n
  simp only [A017130, Nat.add_sub_cancel, A017130.P5984992410018080021.f1, A017130.P5984992410018080021.a, A017130.P18025281713738148250.a, A054567, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017130

/-!
# A017131: a(n) = (8*n + 5)^7.

The programs for A017131, the canonical program `A017131.P14564759948389424998` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017131 has offset 0).

The definition of A017131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)^7` (program `A017131.P14564759948389424998`, by `A017131.P14564759948389424998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017131.P14564759948389424998

`(8*n+5)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017131

/-- `(8*n+5)^7` -/
def P14564759948389424998.Spec : Prop :=
  ∀ n, (P14564759948389424998.a n : ℤ) = A017131 n

theorem P14564759948389424998.correct : P14564759948389424998.Spec := by
  intro n
  simp only [A017131]

end A017131

/-! ## A017131.P18017798893973252500

`A017126(n)*A017129(n)`
-/

namespace A017131.P18017798893973252500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n * A017129 n

end

end A017131.P18017798893973252500

namespace A017131

/-- `A017126(n)*A017129(n)` -/
def P18017798893973252500.Spec : Prop :=
  ∀ n, P18017798893973252500.a n = A017131 n

theorem P18017798893973252500.correct : P18017798893973252500.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P18017798893973252500.a, A017131.P14564759948389424998.a, A017126, A017126.P14543019865094346056.a, A017129, A017129.P17622217984534649912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P16833844604564530005

`A017127(n)*A017128(n)`
-/

namespace A017131.P16833844604564530005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017127 n * A017128 n

end

end A017131.P16833844604564530005

namespace A017131

/-- `A017127(n)*A017128(n)` -/
def P16833844604564530005.Spec : Prop :=
  ∀ n, P16833844604564530005.a n = A017131 n

theorem P16833844604564530005.correct : P16833844604564530005.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P16833844604564530005.a, A017131.P14564759948389424998.a, A017127, A017127.P2978331054928800610.a, A017128, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P17860265312516221094

`A017133(n)/A017126(n)`
-/

namespace A017131.P17860265312516221094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017133 n : ℚ) / (A017126 n : ℚ)

end

end A017131.P17860265312516221094

namespace A017131

/-- `A017133(n)/A017126(n)` -/
def P17860265312516221094.Spec : Prop :=
  ∀ n, P17860265312516221094.a n = (A017131 n : ℚ)

end A017131

/-! ## A017131.P4008546084280137984

`A017134(n)/A017127(n)`
-/

namespace A017131.P4008546084280137984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017134 n : ℚ) / (A017127 n : ℚ)

end

end A017131.P4008546084280137984

namespace A017131

/-- `A017134(n)/A017127(n)` -/
def P4008546084280137984.Spec : Prop :=
  ∀ n, P4008546084280137984.a n = (A017131 n : ℚ)

end A017131

/-! ## A017131.P17005422782132714073

`A017126(n)²*A017127(n)`
-/

namespace A017131.P17005422782132714073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n ^ 2 * A017127 n

end

end A017131.P17005422782132714073

namespace A017131

/-- `A017126(n)²*A017127(n)` -/
def P17005422782132714073.Spec : Prop :=
  ∀ n, P17005422782132714073.a n = A017131 n

theorem P17005422782132714073.correct : P17005422782132714073.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P17005422782132714073.a, A017131.P14564759948389424998.a, A017126, A017126.P14543019865094346056.a, A017127, A017127.P2978331054928800610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P506990184755021902

`sqrt(A017126(n))*A017130(n)`
-/

namespace A017131.P506990184755021902
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017126 n : ℝ) * (A017130 n : ℝ)

end

end A017131.P506990184755021902

namespace A017131

/-- `sqrt(A017126(n))*A017130(n)` -/
def P506990184755021902.Spec : Prop :=
  ∀ n, P506990184755021902.a n = (A017131 n : ℝ)

end A017131

/-! ## A017131.P9653638497440695480

`A017129(n)²/A017127(n)`
-/

namespace A017131.P9653638497440695480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017129 n ^ 2 : ℚ) / (A017127 n : ℚ)

end

end A017131.P9653638497440695480

namespace A017131

/-- `A017129(n)²/A017127(n)` -/
def P9653638497440695480.Spec : Prop :=
  ∀ n, P9653638497440695480.a n = (A017131 n : ℚ)

end A017131

/-! ## A017131.P7584035475671962681

`sqrt(A017128(n))*A017129(n)`
-/

namespace A017131.P7584035475671962681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017128 n : ℝ) * (A017129 n : ℝ)

end

end A017131.P7584035475671962681

namespace A017131

/-- `sqrt(A017128(n))*A017129(n)` -/
def P7584035475671962681.Spec : Prop :=
  ∀ n, P7584035475671962681.a n = (A017131 n : ℝ)

end A017131

/-! ## A017131.P5771408995322547946

`A004770(n+1)*A017130(n)`
-/

namespace A017131.P5771408995322547946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) * A017130 n

end

end A017131.P5771408995322547946

namespace A017131

/-- `A004770(n+1)*A017130(n)` -/
def P5771408995322547946.Spec : Prop :=
  ∀ n, P5771408995322547946.a n = A017131 n

theorem P5771408995322547946.correct : P5771408995322547946.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P5771408995322547946.a, A017131.P14564759948389424998.a, A004770, A004770.P3348596714663788795.a, A017130, A017130.P18025281713738148250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P12579859649528021405

`A017127(n)²*A004770(n+1)`
-/

namespace A017131.P12579859649528021405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017127 n ^ 2 * A004770 (n + 1)

end

end A017131.P12579859649528021405

namespace A017131

/-- `A017127(n)²*A004770(n+1)` -/
def P12579859649528021405.Spec : Prop :=
  ∀ n, P12579859649528021405.a n = A017131 n

theorem P12579859649528021405.correct : P12579859649528021405.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P12579859649528021405.a, A017131.P14564759948389424998.a, A004770, A004770.P3348596714663788795.a, A017127, A017127.P2978331054928800610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P3444762947171269241

`A004770(n+1)²*A017129(n)`
-/

namespace A017131.P3444762947171269241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1) ^ 2 * A017129 n

end

end A017131.P3444762947171269241

namespace A017131

/-- `A004770(n+1)²*A017129(n)` -/
def P3444762947171269241.Spec : Prop :=
  ∀ n, P3444762947171269241.a n = A017131 n

theorem P3444762947171269241.correct : P3444762947171269241.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P3444762947171269241.a, A017131.P14564759948389424998.a, A004770, A004770.P3348596714663788795.a, A017129, A017129.P17622217984534649912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P2634590744660820346

`A017128(n)²/A004770(n+1)`
-/

namespace A017131.P2634590744660820346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017128 n ^ 2 : ℚ) / (A004770 (n + 1) : ℚ)

end

end A017131.P2634590744660820346

namespace A017131

/-- `A017128(n)²/A004770(n+1)` -/
def P2634590744660820346.Spec : Prop :=
  ∀ n, P2634590744660820346.a n = (A017131 n : ℚ)

end A017131

/-! ## A017131.P3785019460533815183

`A017126(n)²²/A004770(n+1)`
-/

namespace A017131.P3785019460533815183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017126 n ^ 2) ^ 2 : ℚ) / (A004770 (n + 1) : ℚ)

end

end A017131.P3785019460533815183

namespace A017131

/-- `A017126(n)²²/A004770(n+1)` -/
def P3785019460533815183.Spec : Prop :=
  ∀ n, P3785019460533815183.a n = (A017131 n : ℚ)

end A017131

/-! ## A017131.P14536963378065343271

`A016819(Δ[n²])`
-/

namespace A017131.P14536963378065343271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016819 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017131.P14536963378065343271

namespace A017131

/-- `A016819(Δ[n²])` -/
def P14536963378065343271.Spec : Prop :=
  ∀ n, P14536963378065343271.a n = A017131 n

end A017131

/-! ## A017131.P15828144801214600296

`(8*n+5)*A016818(2*n+1)`
-/

namespace A017131.P15828144801214600296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 5 : ℤ) * A016818 (2 * n + 1)

end

end A017131.P15828144801214600296

namespace A017131

/-- `(8*n+5)*A016818(2*n+1)` -/
def P15828144801214600296.Spec : Prop :=
  ∀ n, P15828144801214600296.a n = A017131 n

theorem P15828144801214600296.correct : P15828144801214600296.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P15828144801214600296.a, A017131.P14564759948389424998.a, A016818, A016818.P990759581079900138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P11631870239402388228

`A016820(2*n+1)/(8*n+5)`
-/

namespace A017131.P11631870239402388228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016820 (2 * n + 1) : ℚ) / (8 * n + 5 : ℚ)

end

end A017131.P11631870239402388228

namespace A017131

/-- `A016820(2*n+1)/(8*n+5)` -/
def P11631870239402388228.Spec : Prop :=
  ∀ n, P11631870239402388228.a n = (A017131 n : ℚ)

theorem P11631870239402388228.correct : P11631870239402388228.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P11631870239402388228.a, A017131.P14564759948389424998.a, A016820, A016820.P15491023708518114857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P15582987946494398097

`(8*n+5)²*A016817(2*n+1)`
-/

namespace A017131.P15582987946494398097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((8 * n + 5) ^ 2 : ℤ) * A016817 (2 * n + 1)

end

end A017131.P15582987946494398097

namespace A017131

/-- `(8*n+5)²*A016817(2*n+1)` -/
def P15582987946494398097.Spec : Prop :=
  ∀ n, P15582987946494398097.a n = A017131 n

theorem P15582987946494398097.correct : P15582987946494398097.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P15582987946494398097.a, A017131.P14564759948389424998.a, A016817, A016817.P16524033213654524335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P3209676786694393012

`A016816(2*n+1)²/(8*n+5)`
-/

namespace A017131.P3209676786694393012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016816 (2 * n + 1) ^ 2 : ℚ) / (8 * n + 5 : ℚ)

end

end A017131.P3209676786694393012

namespace A017131

/-- `A016816(2*n+1)²/(8*n+5)` -/
def P3209676786694393012.Spec : Prop :=
  ∀ n, P3209676786694393012.a n = (A017131 n : ℚ)

theorem P3209676786694393012.correct : P3209676786694393012.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P3209676786694393012.a, A017131.P14564759948389424998.a, A016816, A016816.P12433774529613122654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-! ## A017131.P8772430096444546759

`A016823(2*n+1)/(8*n+5)²²`
-/

namespace A017131.P8772430096444546759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016823 (2 * n + 1) : ℚ) / (((8 * n + 5) ^ 2) ^ 2 : ℚ)

end

end A017131.P8772430096444546759

namespace A017131

/-- `A016823(2*n+1)/(8*n+5)²²` -/
def P8772430096444546759.Spec : Prop :=
  ∀ n, P8772430096444546759.a n = (A017131 n : ℚ)

theorem P8772430096444546759.correct : P8772430096444546759.Spec := by
  intro n
  simp only [A017131, Nat.add_sub_cancel, A017131.P8772430096444546759.a, A017131.P14564759948389424998.a, A016823, A016823.P8133131490654501830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017131

/-!
# A017132: a(n) = (8*n + 5)^8.

The programs for A017132, the canonical program `A017132.P7405578533340086820` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017132 has offset 0).

The definition of A017132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)^8` (program `A017132.P7405578533340086820`, by `A017132.P7405578533340086820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017132.P7405578533340086820

`(8*n+5)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017132

/-- `(8*n+5)^8` -/
def P7405578533340086820.Spec : Prop :=
  ∀ n, (P7405578533340086820.a n : ℤ) = A017132 n

theorem P7405578533340086820.correct : P7405578533340086820.Spec := by
  intro n
  simp only [A017132]

end A017132

/-! ## A017132.P14094104981257686645

`(or(5, 4*2*n)^4)²`
-/

namespace A017132.P14094104981257686645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 (4 * (2 * n)) ^ 4) ^ 2

end

end A017132.P14094104981257686645

namespace A017132

/-- `(or(5, 4*2*n)^4)²` -/
def P14094104981257686645.Spec : Prop :=
  ∀ n, (P14094104981257686645.a n : ℤ) = A017132 n

end A017132

/-! ## A017132.P4235991094470853695

`(xor(5, 4*2*n)^4)²`
-/

namespace A017132.P4235991094470853695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 (4 * (2 * n)) ^ 4) ^ 2

end

end A017132.P4235991094470853695

namespace A017132

/-- `(xor(5, 4*2*n)^4)²` -/
def P4235991094470853695.Spec : Prop :=
  ∀ n, (P4235991094470853695.a n : ℤ) = A017132 n

end A017132

/-! ## A017132.P15599832691581175154

`or(5, 4*2*n)²²²`
-/

namespace A017132.P15599832691581175154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 5 (4 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017132.P15599832691581175154

namespace A017132

/-- `or(5, 4*2*n)²²²` -/
def P15599832691581175154.Spec : Prop :=
  ∀ n, (P15599832691581175154.a n : ℤ) = A017132 n

end A017132

/-! ## A017132.P3495162312163242609

`xor(5, 4*2*n)²²²`
-/

namespace A017132.P3495162312163242609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 5 (4 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017132.P3495162312163242609

namespace A017132

/-- `xor(5, 4*2*n)²²²` -/
def P3495162312163242609.Spec : Prop :=
  ∀ n, (P3495162312163242609.a n : ℤ) = A017132 n

end A017132

/-! ## A017132.P10035527388707867551

`(lcm(4, 2*n+1)+1)²²²`
-/

namespace A017132.P10035527388707867551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 4 (2 * n + 1) + 1) ^ 2) ^ 2) ^ 2

end

end A017132.P10035527388707867551

namespace A017132

/-- `(lcm(4, 2*n+1)+1)²²²` -/
def P10035527388707867551.Spec : Prop :=
  ∀ n, (P10035527388707867551.a n : ℤ) = A017132 n

end A017132

/-! ## A017132.P10939672991062780970

`A017128(n)²`
-/

namespace A017132.P10939672991062780970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017128 n ^ 2

end

end A017132.P10939672991062780970

namespace A017132

/-- `A017128(n)²` -/
def P10939672991062780970.Spec : Prop :=
  ∀ n, P10939672991062780970.a n = A017132 n

theorem P10939672991062780970.correct : P10939672991062780970.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P10939672991062780970.a, A017132.P7405578533340086820.a, A017128, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P11713915034035904236

`A017126(n)²²`
-/

namespace A017132.P11713915034035904236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017126 n ^ 2) ^ 2

end

end A017132.P11713915034035904236

namespace A017132

/-- `A017126(n)²²` -/
def P11713915034035904236.Spec : Prop :=
  ∀ n, P11713915034035904236.a n = A017132 n

theorem P11713915034035904236.correct : P11713915034035904236.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P11713915034035904236.a, A017132.P7405578533340086820.a, A017126, A017126.P14543019865094346056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P4121691821268514906

`Δ[A007742(n)]²²²`
-/

namespace A017132.P4121691821268514906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017132.P4121691821268514906

namespace A017132

/-- `Δ[A007742(n)]²²²` -/
def P4121691821268514906.Spec : Prop :=
  ∀ n, P4121691821268514906.a n = A017132 n

theorem P4121691821268514906.correct : P4121691821268514906.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P4121691821268514906.f1, A017132.P4121691821268514906.a, A017132.P7405578533340086820.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P9940853174733126138

`A004770(n+1)²²²`
-/

namespace A017132.P9940853174733126138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004770 (n + 1) ^ 2) ^ 2) ^ 2

end

end A017132.P9940853174733126138

namespace A017132

/-- `A004770(n+1)²²²` -/
def P9940853174733126138.Spec : Prop :=
  ∀ n, P9940853174733126138.a n = A017132 n

theorem P9940853174733126138.correct : P9940853174733126138.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P9940853174733126138.a, A017132.P7405578533340086820.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P18382898838006191539

`(A017113(n)+1)²²²`
-/

namespace A017132.P18382898838006191539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017113 n + 1) ^ 2) ^ 2) ^ 2

end

end A017132.P18382898838006191539

namespace A017132

/-- `(A017113(n)+1)²²²` -/
def P18382898838006191539.Spec : Prop :=
  ∀ n, P18382898838006191539.a n = A017132 n

theorem P18382898838006191539.correct : P18382898838006191539.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P18382898838006191539.a, A017132.P7405578533340086820.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P7181804580062108109

`(A017101(n)+2)²²²`
-/

namespace A017132.P7181804580062108109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017101 n + 2) ^ 2) ^ 2) ^ 2

end

end A017132.P7181804580062108109

namespace A017132

/-- `(A017101(n)+2)²²²` -/
def P7181804580062108109.Spec : Prop :=
  ∀ n, P7181804580062108109.a n = A017132 n

theorem P7181804580062108109.correct : P7181804580062108109.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P7181804580062108109.a, A017132.P7405578533340086820.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P2746433148449979612

`(1-A017137(n))²²²`
-/

namespace A017132.P2746433148449979612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017137 n) ^ 2) ^ 2) ^ 2

end

end A017132.P2746433148449979612

namespace A017132

/-- `(1-A017137(n))²²²` -/
def P2746433148449979612.Spec : Prop :=
  ∀ n, P2746433148449979612.a n = A017132 n

theorem P2746433148449979612.correct : P2746433148449979612.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P2746433148449979612.a, A017132.P7405578533340086820.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P10255070503141385282

`(2-A004771(n))²²²`
-/

namespace A017132.P10255070503141385282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A004771 n) ^ 2) ^ 2) ^ 2

end

end A017132.P10255070503141385282

namespace A017132

/-- `(2-A004771(n))²²²` -/
def P10255070503141385282.Spec : Prop :=
  ∀ n, P10255070503141385282.a n = A017132 n

theorem P10255070503141385282.correct : P10255070503141385282.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P10255070503141385282.a, A017132.P7405578533340086820.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P1460408288094838449

`(A017041(n)+n)²²²`
-/

namespace A017132.P1460408288094838449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017041 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017132.P1460408288094838449

namespace A017132

/-- `(A017041(n)+n)²²²` -/
def P1460408288094838449.Spec : Prop :=
  ∀ n, P1460408288094838449.a n = A017132 n

theorem P1460408288094838449.correct : P1460408288094838449.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P1460408288094838449.a, A017132.P7405578533340086820.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P3594219787823143718

`(n-A017221(n))²²²`
-/

namespace A017132.P3594219787823143718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017221 n) ^ 2) ^ 2) ^ 2

end

end A017132.P3594219787823143718

namespace A017132

/-- `(n-A017221(n))²²²` -/
def P3594219787823143718.Spec : Prop :=
  ∀ n, P3594219787823143718.a n = A017132 n

theorem P3594219787823143718.correct : P3594219787823143718.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P3594219787823143718.a, A017132.P7405578533340086820.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P8503863391205840241

`A017126(n)*A017130(n)`
-/

namespace A017132.P8503863391205840241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n * A017130 n

end

end A017132.P8503863391205840241

namespace A017132

/-- `A017126(n)*A017130(n)` -/
def P8503863391205840241.Spec : Prop :=
  ∀ n, P8503863391205840241.a n = A017132 n

theorem P8503863391205840241.correct : P8503863391205840241.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P8503863391205840241.a, A017132.P7405578533340086820.a, A017126, A017126.P14543019865094346056.a, A017130, A017130.P18025281713738148250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P15057645928395634941

`A017127(n)*A017129(n)`
-/

namespace A017132.P15057645928395634941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017127 n * A017129 n

end

end A017132.P15057645928395634941

namespace A017132

/-- `A017127(n)*A017129(n)` -/
def P15057645928395634941.Spec : Prop :=
  ∀ n, P15057645928395634941.a n = A017132 n

theorem P15057645928395634941.correct : P15057645928395634941.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P15057645928395634941.a, A017132.P7405578533340086820.a, A017127, A017127.P2978331054928800610.a, A017129, A017129.P17622217984534649912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-! ## A017132.P15892097613460305160

`A017134(n)/A017126(n)`
-/

namespace A017132.P15892097613460305160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017134 n : ℚ) / (A017126 n : ℚ)

end

end A017132.P15892097613460305160

namespace A017132

/-- `A017134(n)/A017126(n)` -/
def P15892097613460305160.Spec : Prop :=
  ∀ n, P15892097613460305160.a n = (A017132 n : ℚ)

end A017132

/-! ## A017132.P17487728715383559752

`Δ[A182868(n)]²²²`
-/

namespace A017132.P17487728715383559752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017132.P17487728715383559752

namespace A017132

/-- `Δ[A182868(n)]²²²` -/
def P17487728715383559752.Spec : Prop :=
  ∀ n, P17487728715383559752.a n = A017132 n

theorem P17487728715383559752.correct : P17487728715383559752.Spec := by
  intro n
  simp only [A017132, Nat.add_sub_cancel, A017132.P17487728715383559752.f1, A017132.P17487728715383559752.a, A017132.P7405578533340086820.a, A182868, A182868.P7978343847695056203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017132

/-!
# A017133: a(n) = (8*n + 5)^9.

The programs for A017133, the canonical program `A017133.P3382980428053796743` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017133 has offset 0).

The definition of A017133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)^9` (program `A017133.P3382980428053796743`, by `A017133.P3382980428053796743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017133.P3382980428053796743

`(8*n+5)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017133

/-- `(8*n+5)^9` -/
def P3382980428053796743.Spec : Prop :=
  ∀ n, (P3382980428053796743.a n : ℤ) = A017133 n

theorem P3382980428053796743.correct : P3382980428053796743.Spec := by
  intro n
  simp only [A017133]

end A017133

/-! ## A017133.P11731626985527033417

`sqrt(A017130(n)^3)`
-/

namespace A017133.P11731626985527033417
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017130 n ^ 3 : ℝ)

end

end A017133.P11731626985527033417

namespace A017133

/-- `sqrt(A017130(n)^3)` -/
def P11731626985527033417.Spec : Prop :=
  ∀ n, P11731626985527033417.a n = (A017133 n : ℝ)

end A017133

/-! ## A017133.P8424858424757642992

`A017126(n)*A017131(n)`
-/

namespace A017133.P8424858424757642992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n * A017131 n

end

end A017133.P8424858424757642992

namespace A017133

/-- `A017126(n)*A017131(n)` -/
def P8424858424757642992.Spec : Prop :=
  ∀ n, P8424858424757642992.a n = A017133 n

theorem P8424858424757642992.correct : P8424858424757642992.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P8424858424757642992.a, A017133.P3382980428053796743.a, A017126, A017126.P14543019865094346056.a, A017131, A017131.P14564759948389424998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P15014218328606093960

`A017127(n)*A017130(n)`
-/

namespace A017133.P15014218328606093960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017127 n * A017130 n

end

end A017133.P15014218328606093960

namespace A017133

/-- `A017127(n)*A017130(n)` -/
def P15014218328606093960.Spec : Prop :=
  ∀ n, P15014218328606093960.a n = A017133 n

theorem P15014218328606093960.correct : P15014218328606093960.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P15014218328606093960.a, A017133.P3382980428053796743.a, A017127, A017127.P2978331054928800610.a, A017130, A017130.P18025281713738148250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P3470106196433500674

`A017128(n)*A017129(n)`
-/

namespace A017133.P3470106196433500674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017128 n * A017129 n

end

end A017133.P3470106196433500674

namespace A017133

/-- `A017128(n)*A017129(n)` -/
def P3470106196433500674.Spec : Prop :=
  ∀ n, P3470106196433500674.a n = A017133 n

theorem P3470106196433500674.correct : P3470106196433500674.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P3470106196433500674.a, A017133.P3382980428053796743.a, A017128, A017128.P3580533372398413610.a, A017129, A017129.P17622217984534649912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P10130628440143825910

`A017126(n)²*A017129(n)`
-/

namespace A017133.P10130628440143825910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n ^ 2 * A017129 n

end

end A017133.P10130628440143825910

namespace A017133

/-- `A017126(n)²*A017129(n)` -/
def P10130628440143825910.Spec : Prop :=
  ∀ n, P10130628440143825910.a n = A017133 n

theorem P10130628440143825910.correct : P10130628440143825910.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P10130628440143825910.a, A017133.P3382980428053796743.a, A017126, A017126.P14543019865094346056.a, A017129, A017129.P17622217984534649912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P11768764914507424190

`sqrt(A017128(n))*A017131(n)`
-/

namespace A017133.P11768764914507424190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017128 n : ℝ) * (A017131 n : ℝ)

end

end A017133.P11768764914507424190

namespace A017133

/-- `sqrt(A017128(n))*A017131(n)` -/
def P11768764914507424190.Spec : Prop :=
  ∀ n, P11768764914507424190.a n = (A017133 n : ℝ)

end A017133

/-! ## A017133.P16104783052508142127

`A017128(n)²*A004770(n+1)`
-/

namespace A017133.P16104783052508142127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017128 n ^ 2 * A004770 (n + 1)

end

end A017133.P16104783052508142127

namespace A017133

/-- `A017128(n)²*A004770(n+1)` -/
def P16104783052508142127.Spec : Prop :=
  ∀ n, P16104783052508142127.a n = A017133 n

theorem P16104783052508142127.correct : P16104783052508142127.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P16104783052508142127.a, A017133.P3382980428053796743.a, A004770, A004770.P3348596714663788795.a, A017128, A017128.P3580533372398413610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P14250691748049641174

`A017129(n)²/A004770(n+1)`
-/

namespace A017133.P14250691748049641174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017129 n ^ 2 : ℚ) / (A004770 (n + 1) : ℚ)

end

end A017133.P14250691748049641174

namespace A017133

/-- `A017129(n)²/A004770(n+1)` -/
def P14250691748049641174.Spec : Prop :=
  ∀ n, P14250691748049641174.a n = (A017133 n : ℚ)

end A017133

/-! ## A017133.P16251897031546248026

`A017126(n)²²*A004770(n+1)`
-/

namespace A017133.P16251897031546248026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017126 n ^ 2) ^ 2 * A004770 (n + 1)

end

end A017133.P16251897031546248026

namespace A017133

/-- `A017126(n)²²*A004770(n+1)` -/
def P16251897031546248026.Spec : Prop :=
  ∀ n, P16251897031546248026.a n = A017133 n

theorem P16251897031546248026.correct : P16251897031546248026.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P16251897031546248026.a, A017133.P3382980428053796743.a, A004770, A004770.P3348596714663788795.a, A017126, A017126.P14543019865094346056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P16496190393417032886

`A016821(Δ[n²])`
-/

namespace A017133.P16496190393417032886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016821 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017133.P16496190393417032886

namespace A017133

/-- `A016821(Δ[n²])` -/
def P16496190393417032886.Spec : Prop :=
  ∀ n, P16496190393417032886.a n = A017133 n

end A017133

/-! ## A017133.P12635802017630626795

`(8*n+5)*A016820(2*n+1)`
-/

namespace A017133.P12635802017630626795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 5 : ℤ) * A016820 (2 * n + 1)

end

end A017133.P12635802017630626795

namespace A017133

/-- `(8*n+5)*A016820(2*n+1)` -/
def P12635802017630626795.Spec : Prop :=
  ∀ n, P12635802017630626795.a n = A017133 n

theorem P12635802017630626795.correct : P12635802017630626795.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P12635802017630626795.a, A017133.P3382980428053796743.a, A016820, A016820.P15491023708518114857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P16616140708318679901

`A016822(2*n+1)/(8*n+5)`
-/

namespace A017133.P16616140708318679901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016822 (2 * n + 1) : ℚ) / (8 * n + 5 : ℚ)

end

end A017133.P16616140708318679901

namespace A017133

/-- `A016822(2*n+1)/(8*n+5)` -/
def P16616140708318679901.Spec : Prop :=
  ∀ n, P16616140708318679901.a n = (A017133 n : ℚ)

theorem P16616140708318679901.correct : P16616140708318679901.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P16616140708318679901.a, A017133.P3382980428053796743.a, A016822, A016822.P5486575791904332238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P4057595002158466222

`A016816(2*n+1)²*(8*n+5)`
-/

namespace A017133.P4057595002158466222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016816 (2 * n + 1) ^ 2 * (8 * n + 5 : ℤ)

end

end A017133.P4057595002158466222

namespace A017133

/-- `A016816(2*n+1)²*(8*n+5)` -/
def P4057595002158466222.Spec : Prop :=
  ∀ n, P4057595002158466222.a n = A017133 n

theorem P4057595002158466222.correct : P4057595002158466222.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P4057595002158466222.a, A017133.P3382980428053796743.a, A016816, A016816.P12433774529613122654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P13613264216198151857

`(8*n+5)²*A016819(2*n+1)`
-/

namespace A017133.P13613264216198151857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((8 * n + 5) ^ 2 : ℤ) * A016819 (2 * n + 1)

end

end A017133.P13613264216198151857

namespace A017133

/-- `(8*n+5)²*A016819(2*n+1)` -/
def P13613264216198151857.Spec : Prop :=
  ∀ n, P13613264216198151857.a n = A017133 n

theorem P13613264216198151857.correct : P13613264216198151857.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P13613264216198151857.a, A017133.P3382980428053796743.a, A016819, A016819.P8718668467099107420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P12339469599622691232

`A016823(2*n+1)/(8*n+5)²`
-/

namespace A017133.P12339469599622691232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016823 (2 * n + 1) : ℚ) / ((8 * n + 5) ^ 2 : ℚ)

end

end A017133.P12339469599622691232

namespace A017133

/-- `A016823(2*n+1)/(8*n+5)²` -/
def P12339469599622691232.Spec : Prop :=
  ∀ n, P12339469599622691232.a n = (A017133 n : ℚ)

theorem P12339469599622691232.correct : P12339469599622691232.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P12339469599622691232.a, A017133.P3382980428053796743.a, A016823, A016823.P8133131490654501830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P16905390242271228490

`(8*n+5)²²*A016817(2*n+1)`
-/

namespace A017133.P16905390242271228490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((8 * n + 5) ^ 2) ^ 2 : ℤ) * A016817 (2 * n + 1)

end

end A017133.P16905390242271228490

namespace A017133

/-- `(8*n+5)²²*A016817(2*n+1)` -/
def P16905390242271228490.Spec : Prop :=
  ∀ n, P16905390242271228490.a n = A017133 n

theorem P16905390242271228490.correct : P16905390242271228490.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P16905390242271228490.a, A017133.P3382980428053796743.a, A016817, A016817.P16524033213654524335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P3918504764417566576

`A016815(2*n+1)*A016818(2*n+1)`
-/

namespace A017133.P3918504764417566576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 (2 * n + 1) * A016818 (2 * n + 1)

end

end A017133.P3918504764417566576

namespace A017133

/-- `A016815(2*n+1)*A016818(2*n+1)` -/
def P3918504764417566576.Spec : Prop :=
  ∀ n, P3918504764417566576.a n = A017133 n

theorem P3918504764417566576.correct : P3918504764417566576.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P3918504764417566576.a, A017133.P3382980428053796743.a, A016815, A016815.P10670090077902171970.a, A016818, A016818.P990759581079900138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-! ## A017133.P1186845678172622226

`A016761(4*n+2)`
-/

namespace A017133.P1186845678172622226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (4 * n + 2)

end

end A017133.P1186845678172622226

namespace A017133

/-- `A016761(4*n+2)` -/
def P1186845678172622226.Spec : Prop :=
  ∀ n, P1186845678172622226.a n = A017133 n

theorem P1186845678172622226.correct : P1186845678172622226.Spec := by
  intro n
  simp only [A017133, Nat.add_sub_cancel, A017133.P1186845678172622226.a, A017133.P3382980428053796743.a, A016761, A016761.P2892480136193022373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017133

/-!
# A017134: a(n) = (8*n + 5)^10.

The programs for A017134, the canonical program `A017134.P523002817920356879` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017134 has offset 0).

The definition of A017134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+5)^10` (program `A017134.P523002817920356879`, by `A017134.P523002817920356879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017134.P523002817920356879

`(8*n+5)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017134

/-- `(8*n+5)^10` -/
def P523002817920356879.Spec : Prop :=
  ∀ n, (P523002817920356879.a n : ℤ) = A017134 n

theorem P523002817920356879.correct : P523002817920356879.Spec := by
  intro n
  simp only [A017134]

end A017134

/-! ## A017134.P26667792699841857

`(or(5, 8*n)^5)²`
-/

namespace A017134.P26667792699841857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 (8 * n) ^ 5) ^ 2

end

end A017134.P26667792699841857

namespace A017134

/-- `(or(5, 8*n)^5)²` -/
def P26667792699841857.Spec : Prop :=
  ∀ n, (P26667792699841857.a n : ℤ) = A017134 n

end A017134

/-! ## A017134.P3825848681897968928

`A017129(n)²`
-/

namespace A017134.P3825848681897968928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017129 n ^ 2

end

end A017134.P3825848681897968928

namespace A017134

/-- `A017129(n)²` -/
def P3825848681897968928.Spec : Prop :=
  ∀ n, P3825848681897968928.a n = A017134 n

theorem P3825848681897968928.correct : P3825848681897968928.Spec := by
  intro n
  simp only [A017134, Nat.add_sub_cancel, A017134.P3825848681897968928.a, A017134.P523002817920356879.a, A017129, A017129.P17622217984534649912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017134

/-! ## A017134.P14271826832187162581

`sqrt(A017128(n)^5)`
-/

namespace A017134.P14271826832187162581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017128 n ^ 5 : ℝ)

end

end A017134.P14271826832187162581

namespace A017134

/-- `sqrt(A017128(n)^5)` -/
def P14271826832187162581.Spec : Prop :=
  ∀ n, P14271826832187162581.a n = (A017134 n : ℝ)

end A017134

/-! ## A017134.P1940699508496019352

`(A004770(n+1)^5)²`
-/

namespace A017134.P1940699508496019352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004770 (n + 1) ^ 5) ^ 2

end

end A017134.P1940699508496019352

namespace A017134

/-- `(A004770(n+1)^5)²` -/
def P1940699508496019352.Spec : Prop :=
  ∀ n, P1940699508496019352.a n = A017134 n

theorem P1940699508496019352.correct : P1940699508496019352.Spec := by
  intro n
  simp only [A017134, Nat.add_sub_cancel, A017134.P1940699508496019352.a, A017134.P523002817920356879.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017134

/-! ## A017134.P10398293096723834154

`A017128(n)*A017130(n)`
-/

namespace A017134.P10398293096723834154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017128 n * A017130 n

end

end A017134.P10398293096723834154

namespace A017134

/-- `A017128(n)*A017130(n)` -/
def P10398293096723834154.Spec : Prop :=
  ∀ n, P10398293096723834154.a n = A017134 n

theorem P10398293096723834154.correct : P10398293096723834154.Spec := by
  intro n
  simp only [A017134, Nat.add_sub_cancel, A017134.P10398293096723834154.a, A017134.P523002817920356879.a, A017128, A017128.P3580533372398413610.a, A017130, A017130.P18025281713738148250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017134

/-! ## A017134.P3767997445352432234

`sqrt(sqrt(A017132(n)))*A017132(n)`
-/

namespace A017134.P3767997445352432234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017132 n : ℝ)) * (A017132 n : ℝ)

end

end A017134.P3767997445352432234

namespace A017134

/-- `sqrt(sqrt(A017132(n)))*A017132(n)` -/
def P3767997445352432234.Spec : Prop :=
  ∀ n, P3767997445352432234.a n = (A017134 n : ℝ)

end A017134

/-! ## A017134.P13805283917092026399

`A016822(2*n+1)`
-/

namespace A017134.P13805283917092026399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016822 (2 * n + 1)

end

end A017134.P13805283917092026399

namespace A017134

/-- `A016822(2*n+1)` -/
def P13805283917092026399.Spec : Prop :=
  ∀ n, P13805283917092026399.a n = A017134 n

theorem P13805283917092026399.correct : P13805283917092026399.Spec := by
  intro n
  simp only [A017134, Nat.add_sub_cancel, A017134.P13805283917092026399.a, A017134.P523002817920356879.a, A016822, A016822.P5486575791904332238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017134

/-! ## A017134.P12441294288170169088

`A016814(2*n+1)*A016820(2*n+1)`
-/

namespace A017134.P12441294288170169088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (2 * n + 1) * A016820 (2 * n + 1)

end

end A017134.P12441294288170169088

namespace A017134

/-- `A016814(2*n+1)*A016820(2*n+1)` -/
def P12441294288170169088.Spec : Prop :=
  ∀ n, P12441294288170169088.a n = A017134 n

theorem P12441294288170169088.correct : P12441294288170169088.Spec := by
  intro n
  simp only [A017134, Nat.add_sub_cancel, A017134.P12441294288170169088.a, A017134.P523002817920356879.a, A016814, A016814.P5668709183610020667.a, A016820, A016820.P15491023708518114857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017134

/-! ## A017134.P1222076140919103710

`A016823(2*n+1)/A016813(2*n+1)`
-/

namespace A017134.P1222076140919103710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016823 (2 * n + 1) : ℚ) / (A016813 (2 * n + 1) : ℚ)

end

end A017134.P1222076140919103710

namespace A017134

/-- `A016823(2*n+1)/A016813(2*n+1)` -/
def P1222076140919103710.Spec : Prop :=
  ∀ n, P1222076140919103710.a n = (A017134 n : ℚ)

theorem P1222076140919103710.correct : P1222076140919103710.Spec := by
  intro n
  simp only [A017134, Nat.add_sub_cancel, A017134.P1222076140919103710.a, A017134.P523002817920356879.a, A016813, A016813.P15626904835145642280.a, A016823, A016823.P8133131490654501830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017134

/-! ## A017134.P3364846148314993955

`A016813(2*n+1)²*A016820(2*n+1)`
-/

namespace A017134.P3364846148314993955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n + 1) ^ 2 * A016820 (2 * n + 1)

end

end A017134.P3364846148314993955

namespace A017134

/-- `A016813(2*n+1)²*A016820(2*n+1)` -/
def P3364846148314993955.Spec : Prop :=
  ∀ n, P3364846148314993955.a n = A017134 n

theorem P3364846148314993955.correct : P3364846148314993955.Spec := by
  intro n
  simp only [A017134, Nat.add_sub_cancel, A017134.P3364846148314993955.a, A017134.P523002817920356879.a, A016813, A016813.P15626904835145642280.a, A016820, A016820.P15491023708518114857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017134

/-! ## A017134.P10843213042494078281

`A016762(2*(2*n+1))`
-/

namespace A017134.P10843213042494078281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016762 (2 * (2 * n + 1))

end

end A017134.P10843213042494078281

namespace A017134

/-- `A016762(2*(2*n+1))` -/
def P10843213042494078281.Spec : Prop :=
  ∀ n, P10843213042494078281.a n = A017134 n

theorem P10843213042494078281.correct : P10843213042494078281.Spec := by
  intro n
  simp only [A017134, Nat.add_sub_cancel, A017134.P10843213042494078281.a, A017134.P523002817920356879.a, A016762, A016762.P4277765179051944872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017134

/-! ## A017134.P3473468435832479156

`A008454(A004770(n+1))`
-/

namespace A017134.P3473468435832479156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A004770 (n + 1)).toNat

end

end A017134.P3473468435832479156

namespace A017134

/-- `A008454(A004770(n+1))` -/
def P3473468435832479156.Spec : Prop :=
  ∀ n, P3473468435832479156.a n = A017134 n

end A017134

/-! ## A017134.P3341401353578272306

`A008454(A017221(n)-n)`
-/

namespace A017134.P3341401353578272306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017221 n - (n : ℤ)).toNat

end

end A017134.P3341401353578272306

namespace A017134

/-- `A008454(A017221(n)-n)` -/
def P3341401353578272306.Spec : Prop :=
  ∀ n, P3341401353578272306.a n = A017134 n

end A017134

/-! ## A017134.P16384842607162063590

`A008454(A016813(2*n+1))`
-/

namespace A017134.P16384842607162063590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n + 1)).toNat

end

end A017134.P16384842607162063590

namespace A017134

/-- `A008454(A016813(2*n+1))` -/
def P16384842607162063590.Spec : Prop :=
  ∀ n, P16384842607162063590.a n = A017134 n

end A017134

/-! ## A017134.P16840130484126045991

`A008454(A016969(n)+2*n)`
-/

namespace A017134.P16840130484126045991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016969 n + (2 * n : ℤ)).toNat

end

end A017134.P16840130484126045991

namespace A017134

/-- `A008454(A016969(n)+2*n)` -/
def P16840130484126045991.Spec : Prop :=
  ∀ n, P16840130484126045991.a n = A017134 n

end A017134

/-! ## A017134.P5315055130890025523

`A008454(A016969(n)+n+n)`
-/

namespace A017134.P5315055130890025523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016969 n + (n : ℤ) + (n : ℤ)).toNat

end

end A017134.P5315055130890025523

namespace A017134

/-- `A008454(A016969(n)+n+n)` -/
def P5315055130890025523.Spec : Prop :=
  ∀ n, P5315055130890025523.a n = A017134 n

end A017134

/-!
# A017135: 

The programs for A017135, there is no canonical definition to state claims against.
-/

/-! ## A017135.P13280658877116933536

`(8*n+5)^11`
-/

namespace A017135.P13280658877116933536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 5) ^ 11

end

end A017135.P13280658877116933536

/-! ## A017135.P15154324904880173444

`A016823(2*n+1)`
-/

namespace A017135.P15154324904880173444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016823 (2 * n + 1)

end

end A017135.P15154324904880173444

/-! ## A017135.P9317631994464160241

`A016813(2*n+1)*A016822(2*n+1)`
-/

namespace A017135.P9317631994464160241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n + 1) * A016822 (2 * n + 1)

end

end A017135.P9317631994464160241

/-! ## A017135.P9335986157672606174

`A016813(2*n+1)*A016814(2*n+1)*A016820(2*n+1)`
-/

namespace A017135.P9335986157672606174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n + 1) * A016814 (2 * n + 1) * A016820 (2 * n + 1)

end

end A017135.P9335986157672606174

/-! ## A017135.P13583685901823980739

`A016763(2*(2*n+1))`
-/

namespace A017135.P13583685901823980739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (2 * (2 * n + 1))

end

end A017135.P13583685901823980739

/-! ## A017135.P5858554895665030732

`A008455(A016813(2*n+1))`
-/

namespace A017135.P5858554895665030732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1)).toNat

end

end A017135.P5858554895665030732

/-! ## A017135.P10801315540635898129

`A008455(A016969(n)+2*n)`
-/

namespace A017135.P10801315540635898129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n + (2 * n : ℤ)).toNat

end

end A017135.P10801315540635898129

/-! ## A017135.P18337907692400519150

`A008455(A016969(n)+n+n)`
-/

namespace A017135.P18337907692400519150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n + (n : ℤ) + (n : ℤ)).toNat

end

end A017135.P18337907692400519150

/-!
# A017136: 

The programs for A017136, there is no canonical definition to state claims against.
-/

/-! ## A017136.P2836429619687993290

`(8*n+5)^12`
-/

namespace A017136.P2836429619687993290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 5) ^ 12

end

end A017136.P2836429619687993290

/-! ## A017136.P6744619608219931930

`A017130(n)²`
-/

namespace A017136.P6744619608219931930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017130 n ^ 2

end

end A017136.P6744619608219931930

/-! ## A017136.P931208353269302074

`(A004770(n+1)^3)²²`
-/

namespace A017136.P931208353269302074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004770 (n + 1) ^ 3) ^ 2) ^ 2

end

end A017136.P931208353269302074

/-! ## A017136.P18180008155564118326

`sqrt(A017132(n))*A017132(n)`
-/

namespace A017136.P18180008155564118326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017132 n : ℝ) * (A017132 n : ℝ)

end

end A017136.P18180008155564118326

/-! ## A017136.P17276830158408224968

`A016813(2*n+1)*A016823(2*n+1)`
-/

namespace A017136.P17276830158408224968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n + 1) * A016823 (2 * n + 1)

end

end A017136.P17276830158408224968

/-! ## A017136.P6090013544381243050

`A016764(2*(2*n+1))`
-/

namespace A017136.P6090013544381243050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (2 * (2 * n + 1))

end

end A017136.P6090013544381243050

/-! ## A017136.P16680711898566764963

`A016755(2*(n+1+n))²²`
-/

namespace A017136.P16680711898566764963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016755 (2 * (n + 1 + n)) ^ 2) ^ 2

end

end A017136.P16680711898566764963

/-! ## A017136.P8314623957443982048

`A016758(A016825(n))²`
-/

namespace A017136.P8314623957443982048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 (A016825 n).toNat ^ 2

end

end A017136.P8314623957443982048

/-! ## A017136.P13940586731104202753

`sqrt(A017132(n)^3)`
-/

namespace A017136.P13940586731104202753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017132 n ^ 3 : ℝ)

end

end A017136.P13940586731104202753

/-! ## A017136.P4830588306127897531

`A008456(2*A004767(n)-1)`
-/

namespace A017136.P4830588306127897531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 * A004767 n - 1).toNat

end

end A017136.P4830588306127897531

/-! ## A017136.P18018916902781061503

`A008456(A016969(n)+2*n)`
-/

namespace A017136.P18018916902781061503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016969 n + (2 * n : ℤ)).toNat

end

end A017136.P18018916902781061503

/-! ## A017136.P11519357145014052712

`A000578(A017137(n)-1)²²`
-/

namespace A017136.P11519357145014052712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017137 n - 1).toNat ^ 2) ^ 2

end

end A017136.P11519357145014052712

/-! ## A017136.P9070432786825892708

`A000578(A004771(n)-2)²²`
-/

namespace A017136.P9070432786825892708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A004771 n - 2).toNat ^ 2) ^ 2

end

end A017136.P9070432786825892708

/-! ## A017136.P1361399370022083101

`A000578(A017221(n)-n)²²`
-/

namespace A017136.P1361399370022083101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017221 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017136.P1361399370022083101

/-! ## A017136.P12925962611024652958

`A000578(A016813(2*n+1))²²`
-/

namespace A017136.P12925962611024652958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016813 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A017136.P12925962611024652958

/-!
# A017137: a(n) = 8*n + 6.

The programs for A017137, the canonical program `A017137.P18352355205687682311` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017137 has offset 0).

The definition of A017137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+6` (program `A017137.P18352355205687682311`, by `A017137.P18352355205687682311.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017137.P18352355205687682311

`8*n+6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017137

/-- `8*n+6` -/
def P18352355205687682311.Spec : Prop :=
  ∀ n, (P18352355205687682311.a n : ℤ) = A017137 n

theorem P18352355205687682311.correct : P18352355205687682311.Spec := by
  intro n
  simp only [A017137]

end A017137

/-!
# A017138: a(n) = (8*n+6)^2.

The programs for A017138, the canonical program `A017138.P15439890238184103571` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017138 has offset 0).

The definition of A017138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)²` (program `A017138.P15439890238184103571`, by `A017138.P15439890238184103571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017138.P15439890238184103571

`(8*n+6)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017138

/-- `(8*n+6)²` -/
def P15439890238184103571.Spec : Prop :=
  ∀ n, (P15439890238184103571.a n : ℤ) = A017138 n

theorem P15439890238184103571.correct : P15439890238184103571.Spec := by
  intro n
  simp only [A017138]

end A017138

/-! ## A017138.P3212189393562842282

`ogf((36+88x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017138.P3212189393562842282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [36, 88, 4] [1, -3, 3, -1] n

end

end A017138.P3212189393562842282

namespace A017138

/-- `ogf((36+88x+4x^2)/(1-3x+3x^2-x^3))` -/
def P3212189393562842282.Spec : Prop :=
  ∀ n, P3212189393562842282.a n = A017138 n

end A017138

/-! ## A017138.P1612040905011123538

`record[(lcm(4, n)-6)²]`
-/

namespace A017138.P1612040905011123538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 n : ℤ) - 6) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017138.P1612040905011123538

namespace A017138

/-- `record[(lcm(4, n)-6)²]` -/
def P1612040905011123538.Spec : Prop :=
  ∀ n, P1612040905011123538.a n = A017138 n

end A017138

/-! ## A017138.P18438573434784911107

`record[(2*xor(3, n))²]`
-/

namespace A017138.P18438573434784911107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017138.P18438573434784911107

namespace A017138

/-- `record[(2*xor(3, n))²]` -/
def P18438573434784911107.Spec : Prop :=
  ∀ n, (P18438573434784911107.a n : ℤ) = A017138 n

end A017138

/-! ## A017138.P12507851588681664547

`record[(1-xor(7, n))²]`
-/

namespace A017138.P12507851588681664547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.xor 7 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017138.P12507851588681664547

namespace A017138

/-- `record[(1-xor(7, n))²]` -/
def P12507851588681664547.Spec : Prop :=
  ∀ n, P12507851588681664547.a n = A017138 n

end A017138

/-! ## A017138.P11350914710725716378

`4*or(3, 4*n)²`
-/

namespace A017138.P11350914710725716378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 3 (4 * n) ^ 2

end

end A017138.P11350914710725716378

namespace A017138

/-- `4*or(3, 4*n)²` -/
def P11350914710725716378.Spec : Prop :=
  ∀ n, (P11350914710725716378.a n : ℤ) = A017138 n

end A017138

/-! ## A017138.P1137352451939859712

`4*xor(3, 4*n)²`
-/

namespace A017138.P1137352451939859712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 3 (4 * n) ^ 2

end

end A017138.P1137352451939859712

namespace A017138

/-- `4*xor(3, 4*n)²` -/
def P1137352451939859712.Spec : Prop :=
  ∀ n, (P1137352451939859712.a n : ℤ) = A017138 n

end A017138

/-! ## A017138.P3843525931842229167

`4*sqrt(record[xor(3, n)^4])`
-/

namespace A017138.P3843525931842229167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A017138.P3843525931842229167

namespace A017138

/-- `4*sqrt(record[xor(3, n)^4])` -/
def P3843525931842229167.Spec : Prop :=
  ∀ n, P3843525931842229167.a n = (A017138 n : ℝ)

end A017138

/-! ## A017138.P7195664461740680798

`record[(gcd(8, n)+n-2)²]`
-/

namespace A017138.P7195664461740680798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 8 n : ℤ) + ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017138.P7195664461740680798

namespace A017138

/-- `record[(gcd(8, n)+n-2)²]` -/
def P7195664461740680798.Spec : Prop :=
  ∀ n, P7195664461740680798.a n = A017138 n

end A017138

/-! ## A017138.P8072808498296269661

`record[xor(7, n+1+n)²]`
-/

namespace A017138.P8072808498296269661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017138.P8072808498296269661

namespace A017138

/-- `record[xor(7, n+1+n)²]` -/
def P8072808498296269661.Spec : Prop :=
  ∀ n, (P8072808498296269661.a n : ℤ) = A017138 n

end A017138

/-! ## A017138.P8236738498107323273

`or(4, 32*∑[4*n+1])`
-/

namespace A017138.P8236738498107323273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (32 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A017138.P8236738498107323273

namespace A017138

/-- `or(4, 32*∑[4*n+1])` -/
def P8236738498107323273.Spec : Prop :=
  ∀ n, (P8236738498107323273.a n : ℤ) = A017138 n

end A017138

/-! ## A017138.P6690977525145125025

`record[4*(n+3)*xor(3, n)]`
-/

namespace A017138.P6690977525145125025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 3) * Nat.xor 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017138.P6690977525145125025

namespace A017138

/-- `record[4*(n+3)*xor(3, n)]` -/
def P6690977525145125025.Spec : Prop :=
  ∀ n, (P6690977525145125025.a n : ℤ) = A017138 n

end A017138

/-! ## A017138.P12337861603031064045

`Δ[lcm(2*n+1, 2*n)]^2`
-/

namespace A017138.P12337861603031064045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A017138.P12337861603031064045

namespace A017138

/-- `Δ[lcm(2*n+1, 2*n)]^2` -/
def P12337861603031064045.Spec : Prop :=
  ∀ n, P12337861603031064045.a n = A017138 n

end A017138

/-! ## A017138.P10327576603745030231

`Δ[(2*n+1)*2*n]^gcd(2, 2*n)`
-/

namespace A017138.P10327576603745030231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ Nat.gcd 2 (2 * n)

end

end A017138.P10327576603745030231

namespace A017138

/-- `Δ[(2*n+1)*2*n]^gcd(2, 2*n)` -/
def P10327576603745030231.Spec : Prop :=
  ∀ n, P10327576603745030231.a n = A017138 n

theorem P10327576603745030231.correct : P10327576603745030231.Spec := by
  intro n
  simp only [A017138, Nat.add_sub_cancel, A017138.P10327576603745030231.f1, A017138.P10327576603745030231.a, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017138

/-! ## A017138.P3612401489581767683

`sqrt(A017140(n))`
-/

namespace A017138.P3612401489581767683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017140 n : ℝ)

end

end A017138.P3612401489581767683

namespace A017138

/-- `sqrt(A017140(n))` -/
def P3612401489581767683.Spec : Prop :=
  ∀ n, P3612401489581767683.a n = (A017138 n : ℝ)

end A017138

/-! ## A017138.P16761532107550877597

`4*A016838(n)`
-/

namespace A017138.P16761532107550877597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016838 n

end

end A017138.P16761532107550877597

namespace A017138

/-- `4*A016838(n)` -/
def P16761532107550877597.Spec : Prop :=
  ∀ n, P16761532107550877597.a n = A017138 n

theorem P16761532107550877597.correct : P16761532107550877597.Spec := by
  intro n
  simp only [A017138, Nat.add_sub_cancel, A017138.P16761532107550877597.a, A017138.P15439890238184103571.a, A016838, A016838.P1946869396513697861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017138

/-! ## A017138.P9503023836954370806

`sqrt(sqrt(A017144(n)))`
-/

namespace A017138.P9503023836954370806
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017144 n : ℝ))

end

end A017138.P9503023836954370806

namespace A017138

/-- `sqrt(sqrt(A017144(n)))` -/
def P9503023836954370806.Spec : Prop :=
  ∀ n, P9503023836954370806.a n = (A017138 n : ℝ)

end A017138

/-! ## A017138.P5462596267107997374

`4*A004767(n)²`
-/

namespace A017138.P5462596267107997374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004767 n ^ 2

end

end A017138.P5462596267107997374

namespace A017138

/-- `4*A004767(n)²` -/
def P5462596267107997374.Spec : Prop :=
  ∀ n, P5462596267107997374.a n = A017138 n

theorem P5462596267107997374.correct : P5462596267107997374.Spec := by
  intro n
  simp only [A017138, Nat.add_sub_cancel, A017138.P5462596267107997374.a, A017138.P15439890238184103571.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017138

/-! ## A017138.P13349259086953726293

`4*sqrt(A016840(n))`
-/

namespace A017138.P13349259086953726293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016840 n : ℝ)

end

end A017138.P13349259086953726293

namespace A017138

/-- `4*sqrt(A016840(n))` -/
def P13349259086953726293.Spec : Prop :=
  ∀ n, P13349259086953726293.a n = (A017138 n : ℝ)

end A017138

/-! ## A017138.P2307349121252593087

`4*(A003185(n)+4)`
-/

namespace A017138.P2307349121252593087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A003185 n + 4)

end

end A017138.P2307349121252593087

namespace A017138

/-- `4*(A003185(n)+4)` -/
def P2307349121252593087.Spec : Prop :=
  ∀ n, P2307349121252593087.a n = A017138 n

theorem P2307349121252593087.correct : P2307349121252593087.Spec := by
  intro n
  simp only [A017138, Nat.add_sub_cancel, A017138.P2307349121252593087.a, A017138.P15439890238184103571.a, A003185, A003185.P5564052402226372071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017138

/-!
# A017139: a(n) = (8*n + 6)^3.

The programs for A017139, the canonical program `A017139.P2470122089813157771` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017139 has offset 0).

The definition of A017139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)^3` (program `A017139.P2470122089813157771`, by `A017139.P2470122089813157771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017139.P2470122089813157771

`(8*n+6)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017139

/-- `(8*n+6)^3` -/
def P2470122089813157771.Spec : Prop :=
  ∀ n, (P2470122089813157771.a n : ℤ) = A017139 n

theorem P2470122089813157771.correct : P2470122089813157771.Spec := by
  intro n
  simp only [A017139]

end A017139

/-! ## A017139.P10193388105452759355

`8*A016839(n)`
-/

namespace A017139.P10193388105452759355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016839 n

end

end A017139.P10193388105452759355

namespace A017139

/-- `8*A016839(n)` -/
def P10193388105452759355.Spec : Prop :=
  ∀ n, P10193388105452759355.a n = A017139 n

theorem P10193388105452759355.correct : P10193388105452759355.Spec := by
  intro n
  simp only [A017139, Nat.add_sub_cancel, A017139.P10193388105452759355.a, A017139.P2470122089813157771.a, A016839, A016839.P3814509805116361627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017139

/-! ## A017139.P16831684005229422392

`A000578(A017137(n))`
-/

namespace A017139.P16831684005229422392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017137 n).toNat

end

end A017139.P16831684005229422392

namespace A017139

/-- `A000578(A017137(n))` -/
def P16831684005229422392.Spec : Prop :=
  ∀ n, P16831684005229422392.a n = A017139 n

end A017139

/-! ## A017139.P5464644485594233091

`record[(2*xor(3, n))^3]`
-/

namespace A017139.P5464644485594233091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017139.P5464644485594233091

namespace A017139

/-- `record[(2*xor(3, n))^3]` -/
def P5464644485594233091.Spec : Prop :=
  ∀ n, (P5464644485594233091.a n : ℤ) = A017139 n

end A017139

/-! ## A017139.P16323320305038740025

`lcm(8, record[xor(3, n)^3])`
-/

namespace A017139.P16323320305038740025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A017139.P16323320305038740025

namespace A017139

/-- `lcm(8, record[xor(3, n)^3])` -/
def P16323320305038740025.Spec : Prop :=
  ∀ n, (P16323320305038740025.a n : ℤ) = A017139 n

end A017139

/-! ## A017139.P5751040869964492539

`record[(lcm(4, n+1)+2)^3]`
-/

namespace A017139.P5751040869964492539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 2) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017139.P5751040869964492539

namespace A017139

/-- `record[(lcm(4, n+1)+2)^3]` -/
def P5751040869964492539.Spec : Prop :=
  ∀ n, (P5751040869964492539.a n : ℤ) = A017139 n

end A017139

/-! ## A017139.P8405013997996378801

`8*root(record[xor(3, n)], 1/3)`
-/

namespace A017139.P8405013997996378801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A017139.P8405013997996378801

namespace A017139

/-- `8*root(record[xor(3, n)], 1/3)` -/
def P8405013997996378801.Spec : Prop :=
  ∀ n, P8405013997996378801.a n = (A017139 n : ℝ)

end A017139

/-! ## A017139.P14368357408282122418

`sqrt(A017142(n))`
-/

namespace A017139.P14368357408282122418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017142 n : ℝ)

end

end A017139.P14368357408282122418

namespace A017139

/-- `sqrt(A017142(n))` -/
def P14368357408282122418.Spec : Prop :=
  ∀ n, P14368357408282122418.a n = (A017139 n : ℝ)

end A017139

/-! ## A017139.P1142685893758530929

`sqrt(A017138(n)^3)`
-/

namespace A017139.P1142685893758530929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017138 n ^ 3 : ℝ)

end

end A017139.P1142685893758530929

namespace A017139

/-- `sqrt(A017138(n)^3)` -/
def P1142685893758530929.Spec : Prop :=
  ∀ n, P1142685893758530929.a n = (A017139 n : ℝ)

end A017139

/-! ## A017139.P3474284204167287749

`A017140(n)/(8*n+6)`
-/

namespace A017139.P3474284204167287749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017140 n : ℚ) / (8 * n + 6 : ℚ)

end

end A017139.P3474284204167287749

namespace A017139

/-- `A017140(n)/(8*n+6)` -/
def P3474284204167287749.Spec : Prop :=
  ∀ n, P3474284204167287749.a n = (A017139 n : ℚ)

end A017139

/-! ## A017139.P4282175299100393930

`A017137(n)*A017138(n)`
-/

namespace A017139.P4282175299100393930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n * A017138 n

end

end A017139.P4282175299100393930

namespace A017139

/-- `A017137(n)*A017138(n)` -/
def P4282175299100393930.Spec : Prop :=
  ∀ n, P4282175299100393930.a n = A017139 n

theorem P4282175299100393930.correct : P4282175299100393930.Spec := by
  intro n
  simp only [A017139, Nat.add_sub_cancel, A017139.P4282175299100393930.a, A017139.P2470122089813157771.a, A017137, A017137.P18352355205687682311.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017139

/-! ## A017139.P8027602951128526839

`A017141(n)/A017138(n)`
-/

namespace A017139.P8027602951128526839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017141 n : ℚ) / (A017138 n : ℚ)

end

end A017139.P8027602951128526839

namespace A017139

/-- `A017141(n)/A017138(n)` -/
def P8027602951128526839.Spec : Prop :=
  ∀ n, P8027602951128526839.a n = (A017139 n : ℚ)

end A017139

/-! ## A017139.P932421235496226130

`sqrt(A017138(n)*A017140(n))`
-/

namespace A017139.P932421235496226130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017138 n * A017140 n : ℝ)

end

end A017139.P932421235496226130

namespace A017139

/-- `sqrt(A017138(n)*A017140(n))` -/
def P932421235496226130.Spec : Prop :=
  ∀ n, P932421235496226130.a n = (A017139 n : ℝ)

end A017139

/-! ## A017139.P11333038137378983831

`A017141(n)/A017137(n)²`
-/

namespace A017139.P11333038137378983831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017141 n : ℚ) / (A017137 n ^ 2 : ℚ)

end

end A017139.P11333038137378983831

namespace A017139

/-- `A017141(n)/A017137(n)²` -/
def P11333038137378983831.Spec : Prop :=
  ∀ n, P11333038137378983831.a n = (A017139 n : ℚ)

end A017139

/-! ## A017139.P10412116153432110750

`A017140(n)²/A017141(n)`
-/

namespace A017139.P10412116153432110750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017140 n ^ 2 : ℚ) / (A017141 n : ℚ)

end

end A017139.P10412116153432110750

namespace A017139

/-- `A017140(n)²/A017141(n)` -/
def P10412116153432110750.Spec : Prop :=
  ∀ n, P10412116153432110750.a n = (A017139 n : ℚ)

end A017139

/-! ## A017139.P17276377471663072805

`A017143(n)/A017138(n)²`
-/

namespace A017139.P17276377471663072805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017143 n : ℚ) / (A017138 n ^ 2 : ℚ)

end

end A017139.P17276377471663072805

namespace A017139

/-- `A017143(n)/A017138(n)²` -/
def P17276377471663072805.Spec : Prop :=
  ∀ n, P17276377471663072805.a n = (A017139 n : ℚ)

end A017139

/-! ## A017139.P1350416891585044895

`(A004771(n)-1)*A017138(n)`
-/

namespace A017139.P1350416891585044895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n - 1) * A017138 n

end

end A017139.P1350416891585044895

namespace A017139

/-- `(A004771(n)-1)*A017138(n)` -/
def P1350416891585044895.Spec : Prop :=
  ∀ n, P1350416891585044895.a n = A017139 n

theorem P1350416891585044895.correct : P1350416891585044895.Spec := by
  intro n
  simp only [A017139, Nat.add_sub_cancel, A017139.P1350416891585044895.a, A017139.P2470122089813157771.a, A004771, A004771.P15562682025386998074.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017139

/-! ## A017139.P15606396412876157576

`8*A016838(n)*A004767(n)`
-/

namespace A017139.P15606396412876157576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016838 n * A004767 n

end

end A017139.P15606396412876157576

namespace A017139

/-- `8*A016838(n)*A004767(n)` -/
def P15606396412876157576.Spec : Prop :=
  ∀ n, P15606396412876157576.a n = A017139 n

theorem P15606396412876157576.correct : P15606396412876157576.Spec := by
  intro n
  simp only [A017139, Nat.add_sub_cancel, A017139.P15606396412876157576.a, A017139.P2470122089813157771.a, A004767, A004767.P13352534504447192883.a, A016838, A016838.P1946869396513697861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017139

/-! ## A017139.P15214538453822262154

`A017143(n)/A017137(n)²²`
-/

namespace A017139.P15214538453822262154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017143 n : ℚ) / ((A017137 n ^ 2) ^ 2 : ℚ)

end

end A017139.P15214538453822262154

namespace A017139

/-- `A017143(n)/A017137(n)²²` -/
def P15214538453822262154.Spec : Prop :=
  ∀ n, P15214538453822262154.a n = (A017139 n : ℚ)

end A017139

/-!
# A017140: a(n) = (8*n+6)^4.

The programs for A017140, the canonical program `A017140.P6808946279125408055` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017140 has offset 0).

The definition of A017140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)^4` (program `A017140.P6808946279125408055`, by `A017140.P6808946279125408055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017140.P6808946279125408055

`(8*n+6)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017140

/-- `(8*n+6)^4` -/
def P6808946279125408055.Spec : Prop :=
  ∀ n, (P6808946279125408055.a n : ℤ) = A017140 n

theorem P6808946279125408055.correct : P6808946279125408055.Spec := by
  intro n
  simp only [A017140]

end A017140

/-! ## A017140.P842826003269399513

`16*A016840(n)`
-/

namespace A017140.P842826003269399513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016840 n

end

end A017140.P842826003269399513

namespace A017140

/-- `16*A016840(n)` -/
def P842826003269399513.Spec : Prop :=
  ∀ n, P842826003269399513.a n = A017140 n

theorem P842826003269399513.correct : P842826003269399513.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P842826003269399513.a, A017140.P6808946279125408055.a, A016840, A016840.P5994882750815029548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P6416600400859120703

`or(6, 8*n)²²`
-/

namespace A017140.P6416600400859120703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 (8 * n) ^ 2) ^ 2

end

end A017140.P6416600400859120703

namespace A017140

/-- `or(6, 8*n)²²` -/
def P6416600400859120703.Spec : Prop :=
  ∀ n, (P6416600400859120703.a n : ℤ) = A017140 n

end A017140

/-! ## A017140.P13934359566827765471

`xor(6, 8*n)²²`
-/

namespace A017140.P13934359566827765471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 (8 * n) ^ 2) ^ 2

end

end A017140.P13934359566827765471

namespace A017140

/-- `xor(6, 8*n)²²` -/
def P13934359566827765471.Spec : Prop :=
  ∀ n, (P13934359566827765471.a n : ℤ) = A017140 n

end A017140

/-! ## A017140.P8122087049457166659

`record[(2*xor(3, n))^4]`
-/

namespace A017140.P8122087049457166659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017140.P8122087049457166659

namespace A017140

/-- `record[(2*xor(3, n))^4]` -/
def P8122087049457166659.Spec : Prop :=
  ∀ n, (P8122087049457166659.a n : ℤ) = A017140 n

end A017140

/-! ## A017140.P7604862175644675386

`record[(lcm(4, n+1)+2)^4]`
-/

namespace A017140.P7604862175644675386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 2) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017140.P7604862175644675386

namespace A017140

/-- `record[(lcm(4, n+1)+2)^4]` -/
def P7604862175644675386.Spec : Prop :=
  ∀ n, (P7604862175644675386.a n : ℤ) = A017140 n

end A017140

/-! ## A017140.P7349900678947680384

`(8*n%(n+1)+6)²²`
-/

namespace A017140.P7349900678947680384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((8 * (n % (n + 1)) + 6) ^ 2) ^ 2

end

end A017140.P7349900678947680384

namespace A017140

/-- `(8*n%(n+1)+6)²²` -/
def P7349900678947680384.Spec : Prop :=
  ∀ n, (P7349900678947680384.a n : ℤ) = A017140 n

theorem P7349900678947680384.correct : P7349900678947680384.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P7349900678947680384.a, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017140

/-! ## A017140.P11732855402976022216

`(Δ[lcm(2, (2*n)²)]+2)²²`
-/

namespace A017140.P11732855402976022216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2) ^ 2) ^ 2

end

end A017140.P11732855402976022216

namespace A017140

/-- `(Δ[lcm(2, (2*n)²)]+2)²²` -/
def P11732855402976022216.Spec : Prop :=
  ∀ n, P11732855402976022216.a n = A017140 n

end A017140

/-! ## A017140.P5769907285219133948

`Δ[2*C(2*n+1, 2)]²²`
-/

namespace A017140.P5769907285219133948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017140.P5769907285219133948

namespace A017140

/-- `Δ[2*C(2*n+1, 2)]²²` -/
def P5769907285219133948.Spec : Prop :=
  ∀ n, P5769907285219133948.a n = A017140 n

theorem P5769907285219133948.correct : P5769907285219133948.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P5769907285219133948.f1, A017140.P5769907285219133948.a, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P13817132976337934624

`(Δ[(2*n)²]+gcd(2, 2*n))²²`
-/

namespace A017140.P13817132976337934624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.gcd 2 (2 * n) : ℤ)) ^ 2) ^ 2

end

end A017140.P13817132976337934624

namespace A017140

/-- `(Δ[(2*n)²]+gcd(2, 2*n))²²` -/
def P13817132976337934624.Spec : Prop :=
  ∀ n, P13817132976337934624.a n = A017140 n

theorem P13817132976337934624.correct : P13817132976337934624.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P13817132976337934624.f1, A017140.P13817132976337934624.a, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017140

/-! ## A017140.P12198693945116513524

`(Δ[and(2*n+1, 2*n)²]+2)²²`
-/

namespace A017140.P12198693945116513524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2) ^ 2) ^ 2

end

end A017140.P12198693945116513524

namespace A017140

/-- `(Δ[and(2*n+1, 2*n)²]+2)²²` -/
def P12198693945116513524.Spec : Prop :=
  ∀ n, P12198693945116513524.a n = A017140 n

end A017140

/-! ## A017140.P1969199354901796585

`A017138(n)²`
-/

namespace A017140.P1969199354901796585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n ^ 2

end

end A017140.P1969199354901796585

namespace A017140

/-- `A017138(n)²` -/
def P1969199354901796585.Spec : Prop :=
  ∀ n, P1969199354901796585.a n = A017140 n

theorem P1969199354901796585.correct : P1969199354901796585.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P1969199354901796585.a, A017140.P6808946279125408055.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P6439343428957440798

`sqrt(A017144(n))`
-/

namespace A017140.P6439343428957440798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017144 n : ℝ)

end

end A017140.P6439343428957440798

namespace A017140

/-- `sqrt(A017144(n))` -/
def P6439343428957440798.Spec : Prop :=
  ∀ n, P6439343428957440798.a n = (A017140 n : ℝ)

end A017140

/-! ## A017140.P5082985106272138658

`A017137(n)²²`
-/

namespace A017140.P5082985106272138658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n ^ 2) ^ 2

end

end A017140.P5082985106272138658

namespace A017140

/-- `A017137(n)²²` -/
def P5082985106272138658.Spec : Prop :=
  ∀ n, P5082985106272138658.a n = A017140 n

theorem P5082985106272138658.correct : P5082985106272138658.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P5082985106272138658.a, A017140.P6808946279125408055.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P10366479935458552045

`(4*A016838(n))²`
-/

namespace A017140.P10366479935458552045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016838 n) ^ 2

end

end A017140.P10366479935458552045

namespace A017140

/-- `(4*A016838(n))²` -/
def P10366479935458552045.Spec : Prop :=
  ∀ n, P10366479935458552045.a n = A017140 n

theorem P10366479935458552045.correct : P10366479935458552045.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P10366479935458552045.a, A017140.P6808946279125408055.a, A016838, A016838.P1946869396513697861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P17217087325278152873

`(1-A004771(n))²²`
-/

namespace A017140.P17217087325278152873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A004771 n) ^ 2) ^ 2

end

end A017140.P17217087325278152873

namespace A017140

/-- `(1-A004771(n))²²` -/
def P17217087325278152873.Spec : Prop :=
  ∀ n, P17217087325278152873.a n = A017140 n

theorem P17217087325278152873.correct : P17217087325278152873.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P17217087325278152873.a, A017140.P6808946279125408055.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P7828200436578327301

`(A017113(n)+2)²²`
-/

namespace A017140.P7828200436578327301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017113 n + 2) ^ 2) ^ 2

end

end A017140.P7828200436578327301

namespace A017140

/-- `(A017113(n)+2)²²` -/
def P7828200436578327301.Spec : Prop :=
  ∀ n, P7828200436578327301.a n = A017140 n

theorem P7828200436578327301.correct : P7828200436578327301.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P7828200436578327301.a, A017140.P6808946279125408055.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P1543227045912316741

`(A017101(n)+3)²²`
-/

namespace A017140.P1543227045912316741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017101 n + 3) ^ 2) ^ 2

end

end A017140.P1543227045912316741

namespace A017140

/-- `(A017101(n)+3)²²` -/
def P1543227045912316741.Spec : Prop :=
  ∀ n, P1543227045912316741.a n = A017140 n

theorem P1543227045912316741.correct : P1543227045912316741.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P1543227045912316741.a, A017140.P6808946279125408055.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P11664423697376599596

`(2*A004767(n))²²`
-/

namespace A017140.P11664423697376599596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A004767 n) ^ 2) ^ 2

end

end A017140.P11664423697376599596

namespace A017140

/-- `(2*A004767(n))²²` -/
def P11664423697376599596.Spec : Prop :=
  ∀ n, P11664423697376599596.a n = A017140 n

theorem P11664423697376599596.correct : P11664423697376599596.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P11664423697376599596.a, A017140.P6808946279125408055.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-! ## A017140.P4352166146178729617

`(A004768(n)-3)²²`
-/

namespace A017140.P4352166146178729617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A004768 n - 3) ^ 2) ^ 2

end

end A017140.P4352166146178729617

namespace A017140

/-- `(A004768(n)-3)²²` -/
def P4352166146178729617.Spec : Prop :=
  ∀ n, P4352166146178729617.a n = A017140 n

theorem P4352166146178729617.correct : P4352166146178729617.Spec := by
  intro n
  simp only [A017140, Nat.add_sub_cancel, A017140.P4352166146178729617.a, A017140.P6808946279125408055.a, A004768, A004768.P10813831617649309423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017140

/-!
# A017141: a(n) = (8*n+6)^5.

The programs for A017141, the canonical program `A017141.P9636719671152154103` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017141 has offset 0).

The definition of A017141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)^5` (program `A017141.P9636719671152154103`, by `A017141.P9636719671152154103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017141.P9636719671152154103

`(8*n+6)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017141

/-- `(8*n+6)^5` -/
def P9636719671152154103.Spec : Prop :=
  ∀ n, (P9636719671152154103.a n : ℤ) = A017141 n

theorem P9636719671152154103.correct : P9636719671152154103.Spec := by
  intro n
  simp only [A017141]

end A017141

/-! ## A017141.P14176910465792447

`record[(2*xor(3, n))^5]`
-/

namespace A017141.P14176910465792447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017141.P14176910465792447

namespace A017141

/-- `record[(2*xor(3, n))^5]` -/
def P14176910465792447.Spec : Prop :=
  ∀ n, (P14176910465792447.a n : ℤ) = A017141 n

end A017141

/-! ## A017141.P2130568605824582612

`record[(lcm(4, n+1)+2)^5]`
-/

namespace A017141.P2130568605824582612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 2) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017141.P2130568605824582612

namespace A017141

/-- `record[(lcm(4, n+1)+2)^5]` -/
def P2130568605824582612.Spec : Prop :=
  ∀ n, (P2130568605824582612.a n : ℤ) = A017141 n

end A017141

/-! ## A017141.P7585779752485111941

`sqrt(A017146(n))`
-/

namespace A017141.P7585779752485111941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017146 n : ℝ)

end

end A017141.P7585779752485111941

namespace A017141

/-- `sqrt(A017146(n))` -/
def P7585779752485111941.Spec : Prop :=
  ∀ n, P7585779752485111941.a n = (A017141 n : ℝ)

end A017141

/-! ## A017141.P2382777857339498213

`sqrt(A017138(n)^5)`
-/

namespace A017141.P2382777857339498213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017138 n ^ 5 : ℝ)

end

end A017141.P2382777857339498213

namespace A017141

/-- `sqrt(A017138(n)^5)` -/
def P2382777857339498213.Spec : Prop :=
  ∀ n, P2382777857339498213.a n = (A017141 n : ℝ)

end A017141

/-! ## A017141.P12400779481673019364

`(8*n+6)*A017140(n)`
-/

namespace A017141.P12400779481673019364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 6 : ℤ) * A017140 n

end

end A017141.P12400779481673019364

namespace A017141

/-- `(8*n+6)*A017140(n)` -/
def P12400779481673019364.Spec : Prop :=
  ∀ n, P12400779481673019364.a n = A017141 n

theorem P12400779481673019364.correct : P12400779481673019364.Spec := by
  intro n
  simp only [A017141, Nat.add_sub_cancel, A017141.P12400779481673019364.a, A017141.P9636719671152154103.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017141

/-! ## A017141.P31808810143551967

`A017138(n)*A017139(n)`
-/

namespace A017141.P31808810143551967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n * A017139 n

end

end A017141.P31808810143551967

namespace A017141

/-- `A017138(n)*A017139(n)` -/
def P31808810143551967.Spec : Prop :=
  ∀ n, P31808810143551967.a n = A017141 n

theorem P31808810143551967.correct : P31808810143551967.Spec := by
  intro n
  simp only [A017141, Nat.add_sub_cancel, A017141.P31808810143551967.a, A017141.P9636719671152154103.a, A017138, A017138.P15439890238184103571.a, A017139, A017139.P2470122089813157771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017141

/-! ## A017141.P12293746821152938443

`A017142(n)/A017137(n)`
-/

namespace A017141.P12293746821152938443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017142 n : ℚ) / (A017137 n : ℚ)

end

end A017141.P12293746821152938443

namespace A017141

/-- `A017142(n)/A017137(n)` -/
def P12293746821152938443.Spec : Prop :=
  ∀ n, P12293746821152938443.a n = (A017141 n : ℚ)

end A017141

/-! ## A017141.P2854518686367573298

`A017143(n)/A017138(n)`
-/

namespace A017141.P2854518686367573298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017143 n : ℚ) / (A017138 n : ℚ)

end

end A017141.P2854518686367573298

namespace A017141

/-- `A017143(n)/A017138(n)` -/
def P2854518686367573298.Spec : Prop :=
  ∀ n, P2854518686367573298.a n = (A017141 n : ℚ)

end A017141

/-! ## A017141.P3128866055680772132

`A017138(n)²*A017137(n)`
-/

namespace A017141.P3128866055680772132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n ^ 2 * A017137 n

end

end A017141.P3128866055680772132

namespace A017141

/-- `A017138(n)²*A017137(n)` -/
def P3128866055680772132.Spec : Prop :=
  ∀ n, P3128866055680772132.a n = A017141 n

theorem P3128866055680772132.correct : P3128866055680772132.Spec := by
  intro n
  simp only [A017141, Nat.add_sub_cancel, A017141.P3128866055680772132.a, A017141.P9636719671152154103.a, A017137, A017137.P18352355205687682311.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017141

/-! ## A017141.P13485583596500655874

`A017137(n)²*A017139(n)`
-/

namespace A017141.P13485583596500655874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n ^ 2 * A017139 n

end

end A017141.P13485583596500655874

namespace A017141

/-- `A017137(n)²*A017139(n)` -/
def P13485583596500655874.Spec : Prop :=
  ∀ n, P13485583596500655874.a n = A017141 n

theorem P13485583596500655874.correct : P13485583596500655874.Spec := by
  intro n
  simp only [A017141, Nat.add_sub_cancel, A017141.P13485583596500655874.a, A017141.P9636719671152154103.a, A017137, A017137.P18352355205687682311.a, A017139, A017139.P2470122089813157771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017141

/-! ## A017141.P2011712530257198993

`A017140(n)²/A017139(n)`
-/

namespace A017141.P2011712530257198993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017140 n ^ 2 : ℚ) / (A017139 n : ℚ)

end

end A017141.P2011712530257198993

namespace A017141

/-- `A017140(n)²/A017139(n)` -/
def P2011712530257198993.Spec : Prop :=
  ∀ n, P2011712530257198993.a n = (A017141 n : ℚ)

end A017141

/-! ## A017141.P3187773663662119361

`A017143(n)/A017137(n)²`
-/

namespace A017141.P3187773663662119361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017143 n : ℚ) / (A017137 n ^ 2 : ℚ)

end

end A017141.P3187773663662119361

namespace A017141

/-- `A017143(n)/A017137(n)²` -/
def P3187773663662119361.Spec : Prop :=
  ∀ n, P3187773663662119361.a n = (A017141 n : ℚ)

end A017141

/-! ## A017141.P17911630655539220458

`A017145(n)/A017137(n)²²`
-/

namespace A017141.P17911630655539220458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017145 n : ℚ) / ((A017137 n ^ 2) ^ 2 : ℚ)

end

end A017141.P17911630655539220458

namespace A017141

/-- `A017145(n)/A017137(n)²²` -/
def P17911630655539220458.Spec : Prop :=
  ∀ n, P17911630655539220458.a n = (A017141 n : ℚ)

end A017141

/-! ## A017141.P3914783981028852312

`(A004771(n)-1)*A017138(n)²`
-/

namespace A017141.P3914783981028852312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n - 1) * A017138 n ^ 2

end

end A017141.P3914783981028852312

namespace A017141

/-- `(A004771(n)-1)*A017138(n)²` -/
def P3914783981028852312.Spec : Prop :=
  ∀ n, P3914783981028852312.a n = A017141 n

theorem P3914783981028852312.correct : P3914783981028852312.Spec := by
  intro n
  simp only [A017141, Nat.add_sub_cancel, A017141.P3914783981028852312.a, A017141.P9636719671152154103.a, A004771, A004771.P15562682025386998074.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017141

/-! ## A017141.P13685839571742853270

`(A004770(n+1)+1)*A017138(n)²`
-/

namespace A017141.P13685839571742853270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004770 (n + 1) + 1) * A017138 n ^ 2

end

end A017141.P13685839571742853270

namespace A017141

/-- `(A004770(n+1)+1)*A017138(n)²` -/
def P13685839571742853270.Spec : Prop :=
  ∀ n, P13685839571742853270.a n = A017141 n

theorem P13685839571742853270.correct : P13685839571742853270.Spec := by
  intro n
  simp only [A017141, Nat.add_sub_cancel, A017141.P13685839571742853270.a, A017141.P9636719671152154103.a, A004770, A004770.P3348596714663788795.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017141

/-! ## A017141.P14136789895685556021

`A016825(2*n+1)²²*A016825(2*n+1)`
-/

namespace A017141.P14136789895685556021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 (2 * n + 1) ^ 2) ^ 2 * A016825 (2 * n + 1)

end

end A017141.P14136789895685556021

namespace A017141

/-- `A016825(2*n+1)²²*A016825(2*n+1)` -/
def P14136789895685556021.Spec : Prop :=
  ∀ n, P14136789895685556021.a n = A017141 n

theorem P14136789895685556021.correct : P14136789895685556021.Spec := by
  intro n
  simp only [A017141, Nat.add_sub_cancel, A017141.P14136789895685556021.a, A017141.P9636719671152154103.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017141

/-! ## A017141.P11164038974785333240

`A017145(n)/(A017137(n)*A017139(n))`
-/

namespace A017141.P11164038974785333240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017145 n : ℚ) / (A017137 n * A017139 n : ℚ)

end

end A017141.P11164038974785333240

namespace A017141

/-- `A017145(n)/(A017137(n)*A017139(n))` -/
def P11164038974785333240.Spec : Prop :=
  ∀ n, P11164038974785333240.a n = (A017141 n : ℚ)

end A017141

/-! ## A017141.P15433070989909345740

`A017144(n)/(A017137(n)²*A017137(n))`
-/

namespace A017141.P15433070989909345740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017144 n : ℚ) / (A017137 n ^ 2 * A017137 n : ℚ)

end

end A017141.P15433070989909345740

namespace A017141

/-- `A017144(n)/(A017137(n)²*A017137(n))` -/
def P15433070989909345740.Spec : Prop :=
  ∀ n, P15433070989909345740.a n = (A017141 n : ℚ)

end A017141

/-! ## A017141.P15060443357742662516

`A016829(Δ[n²])`
-/

namespace A017141.P15060443357742662516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017141.P15060443357742662516

namespace A017141

/-- `A016829(Δ[n²])` -/
def P15060443357742662516.Spec : Prop :=
  ∀ n, P15060443357742662516.a n = A017141 n

end A017141

/-!
# A017142: a(n) = (8*n + 6)^6.

The programs for A017142, the canonical program `A017142.P3600866153314483307` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017142 has offset 0).

The definition of A017142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)^6` (program `A017142.P3600866153314483307`, by `A017142.P3600866153314483307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017142.P3600866153314483307

`(8*n+6)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017142

/-- `(8*n+6)^6` -/
def P3600866153314483307.Spec : Prop :=
  ∀ n, (P3600866153314483307.a n : ℤ) = A017142 n

theorem P3600866153314483307.correct : P3600866153314483307.Spec := by
  intro n
  simp only [A017142]

end A017142

/-! ## A017142.P17936081215319454943

`64*A016842(n)`
-/

namespace A017142.P17936081215319454943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016842 n

end

end A017142.P17936081215319454943

namespace A017142

/-- `64*A016842(n)` -/
def P17936081215319454943.Spec : Prop :=
  ∀ n, P17936081215319454943.a n = A017142 n

theorem P17936081215319454943.correct : P17936081215319454943.Spec := by
  intro n
  simp only [A017142, Nat.add_sub_cancel, A017142.P17936081215319454943.a, A017142.P3600866153314483307.a, A016842, A016842.P16499744308022796369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017142

/-! ## A017142.P14714085843915417020

`record[(2*xor(3, n))^6]`
-/

namespace A017142.P14714085843915417020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017142.P14714085843915417020

namespace A017142

/-- `record[(2*xor(3, n))^6]` -/
def P14714085843915417020.Spec : Prop :=
  ∀ n, (P14714085843915417020.a n : ℤ) = A017142 n

end A017142

/-! ## A017142.P4193007665711556357

`(or(2, Δ[(2*n)²])^3)²`
-/

namespace A017142.P4193007665711556357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3) ^ 2

end

end A017142.P4193007665711556357

namespace A017142

/-- `(or(2, Δ[(2*n)²])^3)²` -/
def P4193007665711556357.Spec : Prop :=
  ∀ n, P4193007665711556357.a n = A017142 n

end A017142

/-! ## A017142.P7630922568393894182

`(xor(2, Δ[(2*n)²])^3)²`
-/

namespace A017142.P7630922568393894182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3) ^ 2

end

end A017142.P7630922568393894182

namespace A017142

/-- `(xor(2, Δ[(2*n)²])^3)²` -/
def P7630922568393894182.Spec : Prop :=
  ∀ n, P7630922568393894182.a n = A017142 n

end A017142

/-! ## A017142.P9710787646867959723

`A017139(n)²`
-/

namespace A017142.P9710787646867959723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017139 n ^ 2

end

end A017142.P9710787646867959723

namespace A017142

/-- `A017139(n)²` -/
def P9710787646867959723.Spec : Prop :=
  ∀ n, P9710787646867959723.a n = A017142 n

theorem P9710787646867959723.correct : P9710787646867959723.Spec := by
  intro n
  simp only [A017142, Nat.add_sub_cancel, A017142.P9710787646867959723.a, A017142.P3600866153314483307.a, A017139, A017139.P2470122089813157771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017142

/-! ## A017142.P3144401707351659859

`sqrt(A017140(n)^3)`
-/

namespace A017142.P3144401707351659859
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017140 n ^ 3 : ℝ)

end

end A017142.P3144401707351659859

namespace A017142

/-- `sqrt(A017140(n)^3)` -/
def P3144401707351659859.Spec : Prop :=
  ∀ n, P3144401707351659859.a n = (A017142 n : ℝ)

end A017142

/-! ## A017142.P16882021326976375589

`(8*n+6)*A017141(n)`
-/

namespace A017142.P16882021326976375589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 6 : ℤ) * A017141 n

end

end A017142.P16882021326976375589

namespace A017142

/-- `(8*n+6)*A017141(n)` -/
def P16882021326976375589.Spec : Prop :=
  ∀ n, P16882021326976375589.a n = A017142 n

theorem P16882021326976375589.correct : P16882021326976375589.Spec := by
  intro n
  simp only [A017142, Nat.add_sub_cancel, A017142.P16882021326976375589.a, A017142.P3600866153314483307.a, A017141, A017141.P9636719671152154103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017142

/-! ## A017142.P10316935385519422206

`A017143(n)/(8*n+6)`
-/

namespace A017142.P10316935385519422206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017143 n : ℚ) / (8 * n + 6 : ℚ)

end

end A017142.P10316935385519422206

namespace A017142

/-- `A017143(n)/(8*n+6)` -/
def P10316935385519422206.Spec : Prop :=
  ∀ n, P10316935385519422206.a n = (A017142 n : ℚ)

end A017142

/-! ## A017142.P18129953452344021014

`A017138(n)*A017140(n)`
-/

namespace A017142.P18129953452344021014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n * A017140 n

end

end A017142.P18129953452344021014

namespace A017142

/-- `A017138(n)*A017140(n)` -/
def P18129953452344021014.Spec : Prop :=
  ∀ n, P18129953452344021014.a n = A017142 n

theorem P18129953452344021014.correct : P18129953452344021014.Spec := by
  intro n
  simp only [A017142, Nat.add_sub_cancel, A017142.P18129953452344021014.a, A017142.P3600866153314483307.a, A017138, A017138.P15439890238184103571.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017142

/-! ## A017142.P10389601538605921831

`A017145(n)/A017139(n)`
-/

namespace A017142.P10389601538605921831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017145 n : ℚ) / (A017139 n : ℚ)

end

end A017142.P10389601538605921831

namespace A017142

/-- `A017145(n)/A017139(n)` -/
def P10389601538605921831.Spec : Prop :=
  ∀ n, P10389601538605921831.a n = (A017142 n : ℚ)

end A017142

/-! ## A017142.P3690017707817406876

`(A017137(n)*A017138(n))²`
-/

namespace A017142.P3690017707817406876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n * A017138 n) ^ 2

end

end A017142.P3690017707817406876

namespace A017142

/-- `(A017137(n)*A017138(n))²` -/
def P3690017707817406876.Spec : Prop :=
  ∀ n, P3690017707817406876.a n = A017142 n

theorem P3690017707817406876.correct : P3690017707817406876.Spec := by
  intro n
  simp only [A017142, Nat.add_sub_cancel, A017142.P3690017707817406876.a, A017142.P3600866153314483307.a, A017137, A017137.P18352355205687682311.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017142

/-! ## A017142.P16847421002498030273

`A017137(n)²*A017140(n)`
-/

namespace A017142.P16847421002498030273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n ^ 2 * A017140 n

end

end A017142.P16847421002498030273

namespace A017142

/-- `A017137(n)²*A017140(n)` -/
def P16847421002498030273.Spec : Prop :=
  ∀ n, P16847421002498030273.a n = A017142 n

theorem P16847421002498030273.correct : P16847421002498030273.Spec := by
  intro n
  simp only [A017142, Nat.add_sub_cancel, A017142.P16847421002498030273.a, A017142.P3600866153314483307.a, A017137, A017137.P18352355205687682311.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017142

/-! ## A017142.P16267526858758473372

`(A017141(n)/A017138(n))²`
-/

namespace A017142.P16267526858758473372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017141 n : ℚ) / (A017138 n : ℚ)) ^ 2

end

end A017142.P16267526858758473372

namespace A017142

/-- `(A017141(n)/A017138(n))²` -/
def P16267526858758473372.Spec : Prop :=
  ∀ n, P16267526858758473372.a n = (A017142 n : ℚ)

end A017142

/-! ## A017142.P10288020718820389852

`A017141(n)²/A017140(n)`
-/

namespace A017142.P10288020718820389852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017141 n ^ 2 : ℚ) / (A017140 n : ℚ)

end

end A017142.P10288020718820389852

namespace A017142

/-- `A017141(n)²/A017140(n)` -/
def P10288020718820389852.Spec : Prop :=
  ∀ n, P10288020718820389852.a n = (A017142 n : ℚ)

end A017142

/-! ## A017142.P7505942595738427824

`A017144(n)/A017137(n)²`
-/

namespace A017142.P7505942595738427824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017144 n : ℚ) / (A017137 n ^ 2 : ℚ)

end

end A017142.P7505942595738427824

namespace A017142

/-- `A017144(n)/A017137(n)²` -/
def P7505942595738427824.Spec : Prop :=
  ∀ n, P7505942595738427824.a n = (A017142 n : ℚ)

end A017142

/-! ## A017142.P3922704531122281805

`(A017143(n)/A017138(n)²)²`
-/

namespace A017142.P3922704531122281805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017143 n : ℚ) / (A017138 n ^ 2 : ℚ)) ^ 2

end

end A017142.P3922704531122281805

namespace A017142

/-- `(A017143(n)/A017138(n)²)²` -/
def P3922704531122281805.Spec : Prop :=
  ∀ n, P3922704531122281805.a n = (A017142 n : ℚ)

end A017142

/-! ## A017142.P10706943522553191647

`A017139(n)*A017140(n)/A017137(n)`
-/

namespace A017142.P10706943522553191647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017139 n * A017140 n : ℚ) / (A017137 n : ℚ)

end

end A017142.P10706943522553191647

namespace A017142

/-- `A017139(n)*A017140(n)/A017137(n)` -/
def P10706943522553191647.Spec : Prop :=
  ∀ n, P10706943522553191647.a n = (A017142 n : ℚ)

end A017142

/-! ## A017142.P17477764345114837187

`(Δ[A002943(n)]^3)²`
-/

namespace A017142.P17477764345114837187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017142.P17477764345114837187

namespace A017142

/-- `(Δ[A002943(n)]^3)²` -/
def P17477764345114837187.Spec : Prop :=
  ∀ n, P17477764345114837187.a n = A017142 n

theorem P17477764345114837187.correct : P17477764345114837187.Spec := by
  intro n
  simp only [A017142, Nat.add_sub_cancel, A017142.P17477764345114837187.f1, A017142.P17477764345114837187.a, A017142.P3600866153314483307.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017142

/-!
# A017143: a(n) = (8*n+6)^7.

The programs for A017143, the canonical program `A017143.P12439189864582272447` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017143 has offset 0).

The definition of A017143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)^7` (program `A017143.P12439189864582272447`, by `A017143.P12439189864582272447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017143.P12439189864582272447

`(8*n+6)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017143

/-- `(8*n+6)^7` -/
def P12439189864582272447.Spec : Prop :=
  ∀ n, (P12439189864582272447.a n : ℤ) = A017143 n

theorem P12439189864582272447.correct : P12439189864582272447.Spec := by
  intro n
  simp only [A017143]

end A017143

/-! ## A017143.P8479822627733469896

`128*A016843(n)`
-/

namespace A017143.P8479822627733469896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  128 * A016843 n

end

end A017143.P8479822627733469896

namespace A017143

/-- `128*A016843(n)` -/
def P8479822627733469896.Spec : Prop :=
  ∀ n, P8479822627733469896.a n = A017143 n

theorem P8479822627733469896.correct : P8479822627733469896.Spec := by
  intro n
  simp only [A017143, Nat.add_sub_cancel, A017143.P8479822627733469896.a, A017143.P12439189864582272447.a, A016843, A016843.P16205903007781834454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017143

/-! ## A017143.P10595620043062580226

`record[(2*xor(3, n))^7]`
-/

namespace A017143.P10595620043062580226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017143.P10595620043062580226

namespace A017143

/-- `record[(2*xor(3, n))^7]` -/
def P10595620043062580226.Spec : Prop :=
  ∀ n, (P10595620043062580226.a n : ℤ) = A017143 n

end A017143

/-! ## A017143.P4795626934581687774

`A017137(n)*A017142(n)`
-/

namespace A017143.P4795626934581687774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n * A017142 n

end

end A017143.P4795626934581687774

namespace A017143

/-- `A017137(n)*A017142(n)` -/
def P4795626934581687774.Spec : Prop :=
  ∀ n, P4795626934581687774.a n = A017143 n

theorem P4795626934581687774.correct : P4795626934581687774.Spec := by
  intro n
  simp only [A017143, Nat.add_sub_cancel, A017143.P4795626934581687774.a, A017143.P12439189864582272447.a, A017137, A017137.P18352355205687682311.a, A017142, A017142.P3600866153314483307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017143

/-! ## A017143.P269251969435250578

`A017138(n)*A017141(n)`
-/

namespace A017143.P269251969435250578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n * A017141 n

end

end A017143.P269251969435250578

namespace A017143

/-- `A017138(n)*A017141(n)` -/
def P269251969435250578.Spec : Prop :=
  ∀ n, P269251969435250578.a n = A017143 n

theorem P269251969435250578.correct : P269251969435250578.Spec := by
  intro n
  simp only [A017143, Nat.add_sub_cancel, A017143.P269251969435250578.a, A017143.P12439189864582272447.a, A017138, A017138.P15439890238184103571.a, A017141, A017141.P9636719671152154103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017143

/-! ## A017143.P7572348174215939170

`A017139(n)*A017140(n)`
-/

namespace A017143.P7572348174215939170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017139 n * A017140 n

end

end A017143.P7572348174215939170

namespace A017143

/-- `A017139(n)*A017140(n)` -/
def P7572348174215939170.Spec : Prop :=
  ∀ n, P7572348174215939170.a n = A017143 n

theorem P7572348174215939170.correct : P7572348174215939170.Spec := by
  intro n
  simp only [A017143, Nat.add_sub_cancel, A017143.P7572348174215939170.a, A017143.P12439189864582272447.a, A017139, A017139.P2470122089813157771.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017143

/-! ## A017143.P8025057468868913326

`A017144(n)/A017137(n)`
-/

namespace A017143.P8025057468868913326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017144 n : ℚ) / (A017137 n : ℚ)

end

end A017143.P8025057468868913326

namespace A017143

/-- `A017144(n)/A017137(n)` -/
def P8025057468868913326.Spec : Prop :=
  ∀ n, P8025057468868913326.a n = (A017143 n : ℚ)

end A017143

/-! ## A017143.P12245060691419750102

`A017139(n)²*A017137(n)`
-/

namespace A017143.P12245060691419750102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017139 n ^ 2 * A017137 n

end

end A017143.P12245060691419750102

namespace A017143

/-- `A017139(n)²*A017137(n)` -/
def P12245060691419750102.Spec : Prop :=
  ∀ n, P12245060691419750102.a n = A017143 n

theorem P12245060691419750102.correct : P12245060691419750102.Spec := by
  intro n
  simp only [A017143, Nat.add_sub_cancel, A017143.P12245060691419750102.a, A017143.P12439189864582272447.a, A017137, A017137.P18352355205687682311.a, A017139, A017139.P2470122089813157771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017143

/-! ## A017143.P12436801257852124117

`A017138(n)²*A017139(n)`
-/

namespace A017143.P12436801257852124117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n ^ 2 * A017139 n

end

end A017143.P12436801257852124117

namespace A017143

/-- `A017138(n)²*A017139(n)` -/
def P12436801257852124117.Spec : Prop :=
  ∀ n, P12436801257852124117.a n = A017143 n

theorem P12436801257852124117.correct : P12436801257852124117.Spec := by
  intro n
  simp only [A017143, Nat.add_sub_cancel, A017143.P12436801257852124117.a, A017143.P12439189864582272447.a, A017138, A017138.P15439890238184103571.a, A017139, A017139.P2470122089813157771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017143

/-! ## A017143.P2238037415188740043

`A017137(n)²*A017141(n)`
-/

namespace A017143.P2238037415188740043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n ^ 2 * A017141 n

end

end A017143.P2238037415188740043

namespace A017143

/-- `A017137(n)²*A017141(n)` -/
def P2238037415188740043.Spec : Prop :=
  ∀ n, P2238037415188740043.a n = A017143 n

theorem P2238037415188740043.correct : P2238037415188740043.Spec := by
  intro n
  simp only [A017143, Nat.add_sub_cancel, A017143.P2238037415188740043.a, A017143.P12439189864582272447.a, A017137, A017137.P18352355205687682311.a, A017141, A017141.P9636719671152154103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017143

/-! ## A017143.P7001567692559578943

`A017140(n)²/A017137(n)`
-/

namespace A017143.P7001567692559578943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017140 n ^ 2 : ℚ) / (A017137 n : ℚ)

end

end A017143.P7001567692559578943

namespace A017143

/-- `A017140(n)²/A017137(n)` -/
def P7001567692559578943.Spec : Prop :=
  ∀ n, P7001567692559578943.a n = (A017143 n : ℚ)

end A017143

/-! ## A017143.P2830381300357494548

`A017141(n)²/A017139(n)`
-/

namespace A017143.P2830381300357494548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017141 n ^ 2 : ℚ) / (A017139 n : ℚ)

end

end A017143.P2830381300357494548

namespace A017143

/-- `A017141(n)²/A017139(n)` -/
def P2830381300357494548.Spec : Prop :=
  ∀ n, P2830381300357494548.a n = (A017143 n : ℚ)

end A017143

/-! ## A017143.P15088526708708503555

`A017145(n)/A017137(n)²`
-/

namespace A017143.P15088526708708503555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017145 n : ℚ) / (A017137 n ^ 2 : ℚ)

end

end A017143.P15088526708708503555

namespace A017143

/-- `A017145(n)/A017137(n)²` -/
def P15088526708708503555.Spec : Prop :=
  ∀ n, P15088526708708503555.a n = (A017143 n : ℚ)

end A017143

/-! ## A017143.P14515681482806617176

`A017138(n)²²/A017137(n)`
-/

namespace A017143.P14515681482806617176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017138 n ^ 2) ^ 2 : ℚ) / (A017137 n : ℚ)

end

end A017143.P14515681482806617176

namespace A017143

/-- `A017138(n)²²/A017137(n)` -/
def P14515681482806617176.Spec : Prop :=
  ∀ n, P14515681482806617176.a n = (A017143 n : ℚ)

end A017143

/-! ## A017143.P12316460066855343248

`A017140(n)²/sqrt(A017138(n))`
-/

namespace A017143.P12316460066855343248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017140 n ^ 2 : ℝ) / Real.sqrt (A017138 n : ℝ)

end

end A017143.P12316460066855343248

namespace A017143

/-- `A017140(n)²/sqrt(A017138(n))` -/
def P12316460066855343248.Spec : Prop :=
  ∀ n, P12316460066855343248.a n = (A017143 n : ℝ)

end A017143

/-! ## A017143.P13834789773073266195

`A017137(n)*A017138(n)*A017140(n)`
-/

namespace A017143.P13834789773073266195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n * A017138 n * A017140 n

end

end A017143.P13834789773073266195

namespace A017143

/-- `A017137(n)*A017138(n)*A017140(n)` -/
def P13834789773073266195.Spec : Prop :=
  ∀ n, P13834789773073266195.a n = A017143 n

theorem P13834789773073266195.correct : P13834789773073266195.Spec := by
  intro n
  simp only [A017143, Nat.add_sub_cancel, A017143.P13834789773073266195.a, A017143.P12439189864582272447.a, A017137, A017137.P18352355205687682311.a, A017138, A017138.P15439890238184103571.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017143

/-! ## A017143.P15586348916143869148

`A017137(n)/A017139(n)*A017145(n)`
-/

namespace A017143.P15586348916143869148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017137 n : ℚ) / (A017139 n : ℚ) * (A017145 n : ℚ)

end

end A017143.P15586348916143869148

namespace A017143

/-- `A017137(n)/A017139(n)*A017145(n)` -/
def P15586348916143869148.Spec : Prop :=
  ∀ n, P15586348916143869148.a n = (A017143 n : ℚ)

end A017143

/-! ## A017143.P14463346849218899404

`A017140(n)/A017141(n)*A017140(n)²`
-/

namespace A017143.P14463346849218899404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017140 n : ℚ) / (A017141 n : ℚ) * (A017140 n ^ 2 : ℚ)

end

end A017143.P14463346849218899404

namespace A017143

/-- `A017140(n)/A017141(n)*A017140(n)²` -/
def P14463346849218899404.Spec : Prop :=
  ∀ n, P14463346849218899404.a n = (A017143 n : ℚ)

end A017143

/-! ## A017143.P16708141667909829379

`A016831(Δ[n²])`
-/

namespace A017143.P16708141667909829379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016831 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017143.P16708141667909829379

namespace A017143

/-- `A016831(Δ[n²])` -/
def P16708141667909829379.Spec : Prop :=
  ∀ n, P16708141667909829379.a n = A017143 n

end A017143

/-!
# A017144: a(n) = (8*n + 6)^8.

The programs for A017144, the canonical program `A017144.P10716432729814050572` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017144 has offset 0).

The definition of A017144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)^8` (program `A017144.P10716432729814050572`, by `A017144.P10716432729814050572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017144.P10716432729814050572

`(8*n+6)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017144

/-- `(8*n+6)^8` -/
def P10716432729814050572.Spec : Prop :=
  ∀ n, (P10716432729814050572.a n : ℤ) = A017144 n

theorem P10716432729814050572.correct : P10716432729814050572.Spec := by
  intro n
  simp only [A017144]

end A017144

/-! ## A017144.P13218640698692435110

`256*A016844(n)`
-/

namespace A017144.P13218640698692435110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  256 * A016844 n

end

end A017144.P13218640698692435110

namespace A017144

/-- `256*A016844(n)` -/
def P13218640698692435110.Spec : Prop :=
  ∀ n, P13218640698692435110.a n = A017144 n

theorem P13218640698692435110.correct : P13218640698692435110.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P13218640698692435110.a, A017144.P10716432729814050572.a, A016844, A016844.P8533359676361553551.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P9839852305597374270

`record[(2*xor(3, n))^8]`
-/

namespace A017144.P9839852305597374270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017144.P9839852305597374270

namespace A017144

/-- `record[(2*xor(3, n))^8]` -/
def P9839852305597374270.Spec : Prop :=
  ∀ n, (P9839852305597374270.a n : ℤ) = A017144 n

end A017144

/-! ## A017144.P12177964286151783894

`record[(2*xor(3, n))²²²]`
-/

namespace A017144.P12177964286151783894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((2 * Nat.xor 3 n) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017144.P12177964286151783894

namespace A017144

/-- `record[(2*xor(3, n))²²²]` -/
def P12177964286151783894.Spec : Prop :=
  ∀ n, (P12177964286151783894.a n : ℤ) = A017144 n

end A017144

/-! ## A017144.P7130620930332352355

`or(2, 8*n+4)²²²`
-/

namespace A017144.P7130620930332352355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (8 * n + 4) ^ 2) ^ 2) ^ 2

end

end A017144.P7130620930332352355

namespace A017144

/-- `or(2, 8*n+4)²²²` -/
def P7130620930332352355.Spec : Prop :=
  ∀ n, (P7130620930332352355.a n : ℤ) = A017144 n

end A017144

/-! ## A017144.P318438944452911136

`xor(2, 8*n+4)²²²`
-/

namespace A017144.P318438944452911136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (8 * n + 4) ^ 2) ^ 2) ^ 2

end

end A017144.P318438944452911136

namespace A017144

/-- `xor(2, 8*n+4)²²²` -/
def P318438944452911136.Spec : Prop :=
  ∀ n, (P318438944452911136.a n : ℤ) = A017144 n

end A017144

/-! ## A017144.P17221560151781626670

`(or(2, Δ[(2*n)²])^4)²`
-/

namespace A017144.P17221560151781626670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4) ^ 2

end

end A017144.P17221560151781626670

namespace A017144

/-- `(or(2, Δ[(2*n)²])^4)²` -/
def P17221560151781626670.Spec : Prop :=
  ∀ n, P17221560151781626670.a n = A017144 n

end A017144

/-! ## A017144.P9941144095621649762

`(xor(2, Δ[(2*n)²])^4)²`
-/

namespace A017144.P9941144095621649762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4) ^ 2

end

end A017144.P9941144095621649762

namespace A017144

/-- `(xor(2, Δ[(2*n)²])^4)²` -/
def P9941144095621649762.Spec : Prop :=
  ∀ n, P9941144095621649762.a n = A017144 n

end A017144

/-! ## A017144.P17393352025554582846

`(lcm(4, 2*n+1)+2)²²²`
-/

namespace A017144.P17393352025554582846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 4 (2 * n + 1) + 2) ^ 2) ^ 2) ^ 2

end

end A017144.P17393352025554582846

namespace A017144

/-- `(lcm(4, 2*n+1)+2)²²²` -/
def P17393352025554582846.Spec : Prop :=
  ∀ n, (P17393352025554582846.a n : ℤ) = A017144 n

end A017144

/-! ## A017144.P3815745896660381385

`Δ[2*C(2*n+1, 2)]²²²`
-/

namespace A017144.P3815745896660381385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017144.P3815745896660381385

namespace A017144

/-- `Δ[2*C(2*n+1, 2)]²²²` -/
def P3815745896660381385.Spec : Prop :=
  ∀ n, P3815745896660381385.a n = A017144 n

theorem P3815745896660381385.correct : P3815745896660381385.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P3815745896660381385.f1, A017144.P3815745896660381385.a, A017144.P10716432729814050572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P17733489946731861115

`Δ[(2*n+1)*and(2*n+1, 2*n)]²²²`
-/

namespace A017144.P17733489946731861115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017144.P17733489946731861115

namespace A017144

/-- `Δ[(2*n+1)*and(2*n+1, 2*n)]²²²` -/
def P17733489946731861115.Spec : Prop :=
  ∀ n, P17733489946731861115.a n = A017144 n

end A017144

/-! ## A017144.P16405448913717348756

`A017140(n)²`
-/

namespace A017144.P16405448913717348756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017140 n ^ 2

end

end A017144.P16405448913717348756

namespace A017144

/-- `A017140(n)²` -/
def P16405448913717348756.Spec : Prop :=
  ∀ n, P16405448913717348756.a n = A017144 n

theorem P16405448913717348756.correct : P16405448913717348756.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P16405448913717348756.a, A017144.P10716432729814050572.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P16380127765505320726

`A017138(n)²²`
-/

namespace A017144.P16380127765505320726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017138 n ^ 2) ^ 2

end

end A017144.P16380127765505320726

namespace A017144

/-- `A017138(n)²²` -/
def P16380127765505320726.Spec : Prop :=
  ∀ n, P16380127765505320726.a n = A017144 n

theorem P16380127765505320726.correct : P16380127765505320726.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P16380127765505320726.a, A017144.P10716432729814050572.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P5258155029840399373

`A017137(n)²²²`
-/

namespace A017144.P5258155029840399373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017137 n ^ 2) ^ 2) ^ 2

end

end A017144.P5258155029840399373

namespace A017144

/-- `A017137(n)²²²` -/
def P5258155029840399373.Spec : Prop :=
  ∀ n, P5258155029840399373.a n = A017144 n

theorem P5258155029840399373.correct : P5258155029840399373.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P5258155029840399373.a, A017144.P10716432729814050572.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P8530358147151986186

`(1-A004771(n))²²²`
-/

namespace A017144.P8530358147151986186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A004771 n) ^ 2) ^ 2) ^ 2

end

end A017144.P8530358147151986186

namespace A017144

/-- `(1-A004771(n))²²²` -/
def P8530358147151986186.Spec : Prop :=
  ∀ n, P8530358147151986186.a n = A017144 n

theorem P8530358147151986186.correct : P8530358147151986186.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P8530358147151986186.a, A017144.P10716432729814050572.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P7666871983923262325

`(A017113(n)+2)²²²`
-/

namespace A017144.P7666871983923262325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017113 n + 2) ^ 2) ^ 2) ^ 2

end

end A017144.P7666871983923262325

namespace A017144

/-- `(A017113(n)+2)²²²` -/
def P7666871983923262325.Spec : Prop :=
  ∀ n, P7666871983923262325.a n = A017144 n

theorem P7666871983923262325.correct : P7666871983923262325.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P7666871983923262325.a, A017144.P10716432729814050572.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P6556561034509595617

`(2*A004767(n))²²²`
-/

namespace A017144.P6556561034509595617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A004767 n) ^ 2) ^ 2) ^ 2

end

end A017144.P6556561034509595617

namespace A017144

/-- `(2*A004767(n))²²²` -/
def P6556561034509595617.Spec : Prop :=
  ∀ n, P6556561034509595617.a n = A017144 n

theorem P6556561034509595617.correct : P6556561034509595617.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P6556561034509595617.a, A017144.P10716432729814050572.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P10966709751850439906

`(A017053(n)+n)²²²`
-/

namespace A017144.P10966709751850439906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017053 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017144.P10966709751850439906

namespace A017144

/-- `(A017053(n)+n)²²²` -/
def P10966709751850439906.Spec : Prop :=
  ∀ n, P10966709751850439906.a n = A017144 n

theorem P10966709751850439906.correct : P10966709751850439906.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P10966709751850439906.a, A017144.P10716432729814050572.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P18351551204988376380

`(n-A017233(n))²²²`
-/

namespace A017144.P18351551204988376380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017233 n) ^ 2) ^ 2) ^ 2

end

end A017144.P18351551204988376380

namespace A017144

/-- `(n-A017233(n))²²²` -/
def P18351551204988376380.Spec : Prop :=
  ∀ n, P18351551204988376380.a n = A017144 n

theorem P18351551204988376380.correct : P18351551204988376380.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P18351551204988376380.a, A017144.P10716432729814050572.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-! ## A017144.P4910518146120153332

`(8*n+6)*A017143(n)`
-/

namespace A017144.P4910518146120153332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 6 : ℤ) * A017143 n

end

end A017144.P4910518146120153332

namespace A017144

/-- `(8*n+6)*A017143(n)` -/
def P4910518146120153332.Spec : Prop :=
  ∀ n, P4910518146120153332.a n = A017144 n

theorem P4910518146120153332.correct : P4910518146120153332.Spec := by
  intro n
  simp only [A017144, Nat.add_sub_cancel, A017144.P4910518146120153332.a, A017144.P10716432729814050572.a, A017143, A017143.P12439189864582272447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017144

/-!
# A017145: a(n) = (8*n+6)^9.

The programs for A017145, the canonical program `A017145.P15441136242258702266` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017145 has offset 0).

The definition of A017145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)^9` (program `A017145.P15441136242258702266`, by `A017145.P15441136242258702266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017145.P15441136242258702266

`(8*n+6)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017145

/-- `(8*n+6)^9` -/
def P15441136242258702266.Spec : Prop :=
  ∀ n, (P15441136242258702266.a n : ℤ) = A017145 n

theorem P15441136242258702266.correct : P15441136242258702266.Spec := by
  intro n
  simp only [A017145]

end A017145

/-! ## A017145.P4775478254687682364

`512*A016845(n)`
-/

namespace A017145.P4775478254687682364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  512 * A016845 n

end

end A017145.P4775478254687682364

namespace A017145

/-- `512*A016845(n)` -/
def P4775478254687682364.Spec : Prop :=
  ∀ n, P4775478254687682364.a n = A017145 n

theorem P4775478254687682364.correct : P4775478254687682364.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P4775478254687682364.a, A017145.P15441136242258702266.a, A016845, A016845.P1544239424656120646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P9139800772912920276

`record[(2*xor(3, n))^9]`
-/

namespace A017145.P9139800772912920276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017145.P9139800772912920276

namespace A017145

/-- `record[(2*xor(3, n))^9]` -/
def P9139800772912920276.Spec : Prop :=
  ∀ n, (P9139800772912920276.a n : ℤ) = A017145 n

end A017145

/-! ## A017145.P11184243845764654021

`sqrt(A017142(n)^3)`
-/

namespace A017145.P11184243845764654021
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017142 n ^ 3 : ℝ)

end

end A017145.P11184243845764654021

namespace A017145

/-- `sqrt(A017142(n)^3)` -/
def P11184243845764654021.Spec : Prop :=
  ∀ n, P11184243845764654021.a n = (A017145 n : ℝ)

end A017145

/-! ## A017145.P13344364308272532989

`A017137(n)*A017144(n)`
-/

namespace A017145.P13344364308272532989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n * A017144 n

end

end A017145.P13344364308272532989

namespace A017145

/-- `A017137(n)*A017144(n)` -/
def P13344364308272532989.Spec : Prop :=
  ∀ n, P13344364308272532989.a n = A017145 n

theorem P13344364308272532989.correct : P13344364308272532989.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P13344364308272532989.a, A017145.P15441136242258702266.a, A017137, A017137.P18352355205687682311.a, A017144, A017144.P10716432729814050572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P968494859096997456

`A017138(n)*A017143(n)`
-/

namespace A017145.P968494859096997456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n * A017143 n

end

end A017145.P968494859096997456

namespace A017145

/-- `A017138(n)*A017143(n)` -/
def P968494859096997456.Spec : Prop :=
  ∀ n, P968494859096997456.a n = A017145 n

theorem P968494859096997456.correct : P968494859096997456.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P968494859096997456.a, A017145.P15441136242258702266.a, A017138, A017138.P15439890238184103571.a, A017143, A017143.P12439189864582272447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P7256900593061511450

`A017139(n)*A017142(n)`
-/

namespace A017145.P7256900593061511450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017139 n * A017142 n

end

end A017145.P7256900593061511450

namespace A017145

/-- `A017139(n)*A017142(n)` -/
def P7256900593061511450.Spec : Prop :=
  ∀ n, P7256900593061511450.a n = A017145 n

theorem P7256900593061511450.correct : P7256900593061511450.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P7256900593061511450.a, A017145.P15441136242258702266.a, A017139, A017139.P2470122089813157771.a, A017142, A017142.P3600866153314483307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P12909366657643761444

`A017140(n)*A017141(n)`
-/

namespace A017145.P12909366657643761444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017140 n * A017141 n

end

end A017145.P12909366657643761444

namespace A017145

/-- `A017140(n)*A017141(n)` -/
def P12909366657643761444.Spec : Prop :=
  ∀ n, P12909366657643761444.a n = A017145 n

theorem P12909366657643761444.correct : P12909366657643761444.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P12909366657643761444.a, A017145.P15441136242258702266.a, A017140, A017140.P6808946279125408055.a, A017141, A017141.P9636719671152154103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P648672126716826136

`A017140(n)²*A017137(n)`
-/

namespace A017145.P648672126716826136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017140 n ^ 2 * A017137 n

end

end A017145.P648672126716826136

namespace A017145

/-- `A017140(n)²*A017137(n)` -/
def P648672126716826136.Spec : Prop :=
  ∀ n, P648672126716826136.a n = A017145 n

theorem P648672126716826136.correct : P648672126716826136.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P648672126716826136.a, A017145.P15441136242258702266.a, A017137, A017137.P18352355205687682311.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P1911965593832203818

`A017138(n)²*A017141(n)`
-/

namespace A017145.P1911965593832203818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n ^ 2 * A017141 n

end

end A017145.P1911965593832203818

namespace A017145

/-- `A017138(n)²*A017141(n)` -/
def P1911965593832203818.Spec : Prop :=
  ∀ n, P1911965593832203818.a n = A017145 n

theorem P1911965593832203818.correct : P1911965593832203818.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P1911965593832203818.a, A017145.P15441136242258702266.a, A017138, A017138.P15439890238184103571.a, A017141, A017141.P9636719671152154103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P7526084136170575626

`A017137(n)²*A017143(n)`
-/

namespace A017145.P7526084136170575626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n ^ 2 * A017143 n

end

end A017145.P7526084136170575626

namespace A017145

/-- `A017137(n)²*A017143(n)` -/
def P7526084136170575626.Spec : Prop :=
  ∀ n, P7526084136170575626.a n = A017145 n

theorem P7526084136170575626.correct : P7526084136170575626.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P7526084136170575626.a, A017145.P15441136242258702266.a, A017137, A017137.P18352355205687682311.a, A017143, A017143.P12439189864582272447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P10630055740304916652

`A017141(n)²/A017137(n)`
-/

namespace A017145.P10630055740304916652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017141 n ^ 2 : ℚ) / (A017137 n : ℚ)

end

end A017145.P10630055740304916652

namespace A017145

/-- `A017141(n)²/A017137(n)` -/
def P10630055740304916652.Spec : Prop :=
  ∀ n, P10630055740304916652.a n = (A017145 n : ℚ)

end A017145

/-! ## A017145.P7768273888002589720

`A017138(n)²²*A017137(n)`
-/

namespace A017145.P7768273888002589720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017138 n ^ 2) ^ 2 * A017137 n

end

end A017145.P7768273888002589720

namespace A017145

/-- `A017138(n)²²*A017137(n)` -/
def P7768273888002589720.Spec : Prop :=
  ∀ n, P7768273888002589720.a n = A017145 n

theorem P7768273888002589720.correct : P7768273888002589720.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P7768273888002589720.a, A017145.P15441136242258702266.a, A017137, A017137.P18352355205687682311.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P14574437593002761118

`A017140(n)²*sqrt(A017138(n))`
-/

namespace A017145.P14574437593002761118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017140 n ^ 2 : ℝ) * Real.sqrt (A017138 n : ℝ)

end

end A017145.P14574437593002761118

namespace A017145

/-- `A017140(n)²*sqrt(A017138(n))` -/
def P14574437593002761118.Spec : Prop :=
  ∀ n, P14574437593002761118.a n = (A017145 n : ℝ)

end A017145

/-! ## A017145.P11819977766121475895

`A017138(n)*A017139(n)*A017140(n)`
-/

namespace A017145.P11819977766121475895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017138 n * A017139 n * A017140 n

end

end A017145.P11819977766121475895

namespace A017145

/-- `A017138(n)*A017139(n)*A017140(n)` -/
def P11819977766121475895.Spec : Prop :=
  ∀ n, P11819977766121475895.a n = A017145 n

theorem P11819977766121475895.correct : P11819977766121475895.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P11819977766121475895.a, A017145.P15441136242258702266.a, A017138, A017138.P15439890238184103571.a, A017139, A017139.P2470122089813157771.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-! ## A017145.P10432353707973784367

`A016833(Δ[n²])`
-/

namespace A017145.P10432353707973784367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016833 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017145.P10432353707973784367

namespace A017145

/-- `A016833(Δ[n²])` -/
def P10432353707973784367.Spec : Prop :=
  ∀ n, P10432353707973784367.a n = A017145 n

end A017145

/-! ## A017145.P4325244318147285127

`lcm(2, A016833(2*n+1))`
-/

namespace A017145.P4325244318147285127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016833 (2 * n + 1))

end

end A017145.P4325244318147285127

namespace A017145

/-- `lcm(2, A016833(2*n+1))` -/
def P4325244318147285127.Spec : Prop :=
  ∀ n, (P4325244318147285127.a n : ℤ) = A017145 n

end A017145

/-! ## A017145.P16139985571906777248

`(8*n+6)*A016832(2*n+1)`
-/

namespace A017145.P16139985571906777248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 6 : ℤ) * A016832 (2 * n + 1)

end

end A017145.P16139985571906777248

namespace A017145

/-- `(8*n+6)*A016832(2*n+1)` -/
def P16139985571906777248.Spec : Prop :=
  ∀ n, P16139985571906777248.a n = A017145 n

theorem P16139985571906777248.correct : P16139985571906777248.Spec := by
  intro n
  simp only [A017145, Nat.add_sub_cancel, A017145.P16139985571906777248.a, A017145.P15441136242258702266.a, A016832, A016832.P2951353771397420253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017145

/-!
# A017146: a(n) = (8*n + 6)^10.

The programs for A017146, the canonical program `A017146.P14477009966984338055` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017146 has offset 0).

The definition of A017146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+6)^10` (program `A017146.P14477009966984338055`, by `A017146.P14477009966984338055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017146.P14477009966984338055

`(8*n+6)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017146

/-- `(8*n+6)^10` -/
def P14477009966984338055.Spec : Prop :=
  ∀ n, (P14477009966984338055.a n : ℤ) = A017146 n

theorem P14477009966984338055.correct : P14477009966984338055.Spec := by
  intro n
  simp only [A017146]

end A017146

/-! ## A017146.P3405625406508127586

`record[xor(6, 2*n)^10]`
-/

namespace A017146.P3405625406508127586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (2 * n) ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017146.P3405625406508127586

namespace A017146

/-- `record[xor(6, 2*n)^10]` -/
def P3405625406508127586.Spec : Prop :=
  ∀ n, (P3405625406508127586.a n : ℤ) = A017146 n

end A017146

/-! ## A017146.P17264678653073597816

`(or(2, Δ[(2*n)²])^5)²`
-/

namespace A017146.P17264678653073597816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5) ^ 2

end

end A017146.P17264678653073597816

namespace A017146

/-- `(or(2, Δ[(2*n)²])^5)²` -/
def P17264678653073597816.Spec : Prop :=
  ∀ n, P17264678653073597816.a n = A017146 n

end A017146

/-! ## A017146.P14315080675773719990

`(xor(2, Δ[(2*n)²])^5)²`
-/

namespace A017146.P14315080675773719990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5) ^ 2

end

end A017146.P14315080675773719990

namespace A017146

/-- `(xor(2, Δ[(2*n)²])^5)²` -/
def P14315080675773719990.Spec : Prop :=
  ∀ n, P14315080675773719990.a n = A017146 n

end A017146

/-! ## A017146.P7770472714560105492

`A017141(n)²`
-/

namespace A017146.P7770472714560105492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017141 n ^ 2

end

end A017146.P7770472714560105492

namespace A017146

/-- `A017141(n)²` -/
def P7770472714560105492.Spec : Prop :=
  ∀ n, P7770472714560105492.a n = A017146 n

theorem P7770472714560105492.correct : P7770472714560105492.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P7770472714560105492.a, A017146.P14477009966984338055.a, A017141, A017141.P9636719671152154103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P5581985626929583659

`sqrt(A017140(n)^5)`
-/

namespace A017146.P5581985626929583659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017140 n ^ 5 : ℝ)

end

end A017146.P5581985626929583659

namespace A017146

/-- `sqrt(A017140(n)^5)` -/
def P5581985626929583659.Spec : Prop :=
  ∀ n, P5581985626929583659.a n = (A017146 n : ℝ)

end A017146

/-! ## A017146.P1660016863409609881

`A017137(n)*A017145(n)`
-/

namespace A017146.P1660016863409609881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n * A017145 n

end

end A017146.P1660016863409609881

namespace A017146

/-- `A017137(n)*A017145(n)` -/
def P1660016863409609881.Spec : Prop :=
  ∀ n, P1660016863409609881.a n = A017146 n

theorem P1660016863409609881.correct : P1660016863409609881.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P1660016863409609881.a, A017146.P14477009966984338055.a, A017137, A017137.P18352355205687682311.a, A017145, A017145.P15441136242258702266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P15934657872106655819

`A017140(n)*A017142(n)`
-/

namespace A017146.P15934657872106655819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017140 n * A017142 n

end

end A017146.P15934657872106655819

namespace A017146

/-- `A017140(n)*A017142(n)` -/
def P15934657872106655819.Spec : Prop :=
  ∀ n, P15934657872106655819.a n = A017146 n

theorem P15934657872106655819.correct : P15934657872106655819.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P15934657872106655819.a, A017146.P14477009966984338055.a, A017140, A017140.P6808946279125408055.a, A017142, A017142.P3600866153314483307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P11538312279835366764

`(A017137(n)*A017140(n))²`
-/

namespace A017146.P11538312279835366764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n * A017140 n) ^ 2

end

end A017146.P11538312279835366764

namespace A017146

/-- `(A017137(n)*A017140(n))²` -/
def P11538312279835366764.Spec : Prop :=
  ∀ n, P11538312279835366764.a n = A017146 n

theorem P11538312279835366764.correct : P11538312279835366764.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P11538312279835366764.a, A017146.P14477009966984338055.a, A017137, A017137.P18352355205687682311.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P10888830350956405832

`(A017138(n)*A017139(n))²`
-/

namespace A017146.P10888830350956405832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017138 n * A017139 n) ^ 2

end

end A017146.P10888830350956405832

namespace A017146

/-- `(A017138(n)*A017139(n))²` -/
def P10888830350956405832.Spec : Prop :=
  ∀ n, P10888830350956405832.a n = A017146 n

theorem P10888830350956405832.correct : P10888830350956405832.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P10888830350956405832.a, A017146.P14477009966984338055.a, A017138, A017138.P15439890238184103571.a, A017139, A017139.P2470122089813157771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P12730645849065731782

`A017140(n)²*A017138(n)`
-/

namespace A017146.P12730645849065731782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017140 n ^ 2 * A017138 n

end

end A017146.P12730645849065731782

namespace A017146

/-- `A017140(n)²*A017138(n)` -/
def P12730645849065731782.Spec : Prop :=
  ∀ n, P12730645849065731782.a n = A017146 n

theorem P12730645849065731782.correct : P12730645849065731782.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P12730645849065731782.a, A017146.P14477009966984338055.a, A017138, A017138.P15439890238184103571.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P9502562435304822879

`A017139(n)²*A017140(n)`
-/

namespace A017146.P9502562435304822879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017139 n ^ 2 * A017140 n

end

end A017146.P9502562435304822879

namespace A017146

/-- `A017139(n)²*A017140(n)` -/
def P9502562435304822879.Spec : Prop :=
  ∀ n, P9502562435304822879.a n = A017146 n

theorem P9502562435304822879.correct : P9502562435304822879.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P9502562435304822879.a, A017146.P14477009966984338055.a, A017139, A017139.P2470122089813157771.a, A017140, A017140.P6808946279125408055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P13323254496225144762

`(A017138(n)²*A017137(n))²`
-/

namespace A017146.P13323254496225144762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017138 n ^ 2 * A017137 n) ^ 2

end

end A017146.P13323254496225144762

namespace A017146

/-- `(A017138(n)²*A017137(n))²` -/
def P13323254496225144762.Spec : Prop :=
  ∀ n, P13323254496225144762.a n = A017146 n

theorem P13323254496225144762.correct : P13323254496225144762.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P13323254496225144762.a, A017146.P14477009966984338055.a, A017137, A017137.P18352355205687682311.a, A017138, A017138.P15439890238184103571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P13586371727939676101

`(A017137(n)²*A017139(n))²`
-/

namespace A017146.P13586371727939676101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n ^ 2 * A017139 n) ^ 2

end

end A017146.P13586371727939676101

namespace A017146

/-- `(A017137(n)²*A017139(n))²` -/
def P13586371727939676101.Spec : Prop :=
  ∀ n, P13586371727939676101.a n = A017146 n

theorem P13586371727939676101.correct : P13586371727939676101.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P13586371727939676101.a, A017146.P14477009966984338055.a, A017137, A017137.P18352355205687682311.a, A017139, A017139.P2470122089813157771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P2428206670715575431

`(A017143(n)/A017137(n)²)²`
-/

namespace A017146.P2428206670715575431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017143 n : ℚ) / (A017137 n ^ 2 : ℚ)) ^ 2

end

end A017146.P2428206670715575431

namespace A017146

/-- `(A017143(n)/A017137(n)²)²` -/
def P2428206670715575431.Spec : Prop :=
  ∀ n, P2428206670715575431.a n = (A017146 n : ℚ)

end A017146

/-! ## A017146.P17742319785196353187

`sqrt(sqrt(A017144(n)))*A017144(n)`
-/

namespace A017146.P17742319785196353187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017144 n : ℝ)) * (A017144 n : ℝ)

end

end A017146.P17742319785196353187

namespace A017146

/-- `sqrt(sqrt(A017144(n)))*A017144(n)` -/
def P17742319785196353187.Spec : Prop :=
  ∀ n, P17742319785196353187.a n = (A017146 n : ℝ)

end A017146

/-! ## A017146.P216336208765440579

`A016834(2*n+1)`
-/

namespace A017146.P216336208765440579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016834 (2 * n + 1)

end

end A017146.P216336208765440579

namespace A017146

/-- `A016834(2*n+1)` -/
def P216336208765440579.Spec : Prop :=
  ∀ n, P216336208765440579.a n = A017146 n

theorem P216336208765440579.correct : P216336208765440579.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P216336208765440579.a, A017146.P14477009966984338055.a, A016834, A016834.P8357198670827523963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-! ## A017146.P8065251964591300074

`A016829(2*n+1)²`
-/

namespace A017146.P8065251964591300074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 (2 * n + 1) ^ 2

end

end A017146.P8065251964591300074

namespace A017146

/-- `A016829(2*n+1)²` -/
def P8065251964591300074.Spec : Prop :=
  ∀ n, P8065251964591300074.a n = A017146 n

theorem P8065251964591300074.correct : P8065251964591300074.Spec := by
  intro n
  simp only [A017146, Nat.add_sub_cancel, A017146.P8065251964591300074.a, A017146.P14477009966984338055.a, A016829, A016829.P4272908375837523993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017146

/-!
# A017147: 

The programs for A017147, there is no canonical definition to state claims against.
-/

/-! ## A017147.P560574295820234927

`(8*n+6)^11`
-/

namespace A017147.P560574295820234927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 6) ^ 11

end

end A017147.P560574295820234927

/-! ## A017147.P11274817349311784750

`A017140(n)²*A017139(n)`
-/

namespace A017147.P11274817349311784750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017140 n ^ 2 * A017139 n

end

end A017147.P11274817349311784750

/-! ## A017147.P12112376351221587127

`A017138(n)²²*A017139(n)`
-/

namespace A017147.P12112376351221587127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017138 n ^ 2) ^ 2 * A017139 n

end

end A017147.P12112376351221587127

/-! ## A017147.P400550997464104041

`A017137(n)²²*A017143(n)`
-/

namespace A017147.P400550997464104041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n ^ 2) ^ 2 * A017143 n

end

end A017147.P400550997464104041

/-! ## A017147.P7804569707270596490

`A017139(n)²²/A017137(n)`
-/

namespace A017147.P7804569707270596490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017139 n ^ 2) ^ 2 : ℚ) / (A017137 n : ℚ)

end

end A017147.P7804569707270596490

/-! ## A017147.P16421856815468593208

`A016751(3*(n+1)+n)`
-/

namespace A017147.P16421856815468593208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016751 (3 * (n + 1) + n)

end

end A017147.P16421856815468593208

/-! ## A017147.P1918602336377047911

`A008455(2*(A016813(n)+2))`
-/

namespace A017147.P1918602336377047911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * (A016813 n + 2)).toNat

end

end A017147.P1918602336377047911

/-! ## A017147.P4143126194679823521

`A008455(A008588(n+1)+2*n)`
-/

namespace A017147.P4143126194679823521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 (n + 1) + (2 * n : ℤ)).toNat

end

end A017147.P4143126194679823521

/-! ## A017147.P11691827757186244651

`A008455(A016969(n)+2*n+1)`
-/

namespace A017147.P11691827757186244651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n + (2 * n + 1 : ℤ)).toNat

end

end A017147.P11691827757186244651

/-! ## A017147.P2575272580802087330

`A017140(n)²*A000578(A017137(n))`
-/

namespace A017147.P2575272580802087330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017140 n ^ 2 * A000578 (A017137 n).toNat

end

end A017147.P2575272580802087330

/-! ## A017147.P8470450253624406659

`A008455(A016813(n+1)+A016813(n))`
-/

namespace A017147.P8470450253624406659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (n + 1) + A016813 n).toNat

end

end A017147.P8470450253624406659

/-! ## A017147.P2654404179522116033

`A017138(n)²²*A000578(A017137(n))`
-/

namespace A017147.P2654404179522116033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017138 n ^ 2) ^ 2 * A000578 (A017137 n).toNat

end

end A017147.P2654404179522116033

/-!
# A017148: 

The programs for A017148, there is no canonical definition to state claims against.
-/

/-! ## A017148.P17657978306751668288

`(8*n+6)^12`
-/

namespace A017148.P17657978306751668288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 6) ^ 12

end

end A017148.P17657978306751668288

/-! ## A017148.P4416100894734625336

`record[(2*xor(3, n))^12]`
-/

namespace A017148.P4416100894734625336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 3 n) ^ 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017148.P4416100894734625336

/-! ## A017148.P6052416341340365548

`A017142(n)²`
-/

namespace A017148.P6052416341340365548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017142 n ^ 2

end

end A017148.P6052416341340365548

/-! ## A017148.P2487002600255342637

`(A017137(n)^6)²`
-/

namespace A017148.P2487002600255342637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n ^ 6) ^ 2

end

end A017148.P2487002600255342637

/-! ## A017148.P18378317091392306601

`(A017138(n)*A017140(n))²`
-/

namespace A017148.P18378317091392306601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017138 n * A017140 n) ^ 2

end

end A017148.P18378317091392306601

/-! ## A017148.P8191131157376824500

`(A017143(n)/A017137(n))²`
-/

namespace A017148.P8191131157376824500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017143 n : ℚ) / (A017137 n : ℚ)) ^ 2

end

end A017148.P8191131157376824500

/-! ## A017148.P8526462999313615608

`sqrt(A017144(n))*A017144(n)`
-/

namespace A017148.P8526462999313615608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017144 n : ℝ) * (A017144 n : ℝ)

end

end A017148.P8526462999313615608

/-! ## A017148.P12756625766083007513

`(A017137(n)*A017138(n))²²`
-/

namespace A017148.P12756625766083007513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017137 n * A017138 n) ^ 2) ^ 2

end

end A017148.P12756625766083007513

/-! ## A017148.P12356000693890300607

`(A017137(n)²*A017140(n))²`
-/

namespace A017148.P12356000693890300607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 n ^ 2 * A017140 n) ^ 2

end

end A017148.P12356000693890300607

/-! ## A017148.P14653136067692139614

`A016827(2*n+1)²²`
-/

namespace A017148.P14653136067692139614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016827 (2 * n + 1) ^ 2) ^ 2

end

end A017148.P14653136067692139614

/-! ## A017148.P7445010684075911723

`A016752(3*(n+1)+n)`
-/

namespace A017148.P7445010684075911723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016752 (3 * (n + 1) + n)

end

end A017148.P7445010684075911723

/-! ## A017148.P578419056814926153

`sqrt(A017144(n)^3)`
-/

namespace A017148.P578419056814926153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017144 n ^ 3 : ℝ)

end

end A017148.P578419056814926153

/-!
# A017150: a(n) = (8*n + 7)^2.

The programs for A017150, the canonical program `A017150.P5455253405257364887` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017150 has offset 0).

The definition of A017150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)²` (program `A017150.P5455253405257364887`, by `A017150.P5455253405257364887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017150.P5455253405257364887

`(8*n+7)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017150

/-- `(8*n+7)²` -/
def P5455253405257364887.Spec : Prop :=
  ∀ n, (P5455253405257364887.a n : ℤ) = A017150 n

theorem P5455253405257364887.correct : P5455253405257364887.Spec := by
  intro n
  simp only [A017150]

end A017150

/-! ## A017150.P298048291550673716

`ogf((49+78x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017150.P298048291550673716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [49, 78, 1] [1, -3, 3, -1] n

end

end A017150.P298048291550673716

namespace A017150

/-- `ogf((49+78x+x^2)/(1-3x+3x^2-x^3))` -/
def P298048291550673716.Spec : Prop :=
  ∀ n, P298048291550673716.a n = A017150 n

end A017150

/-! ## A017150.P17927741827543733735

`record[xor(7, n)²]`
-/

namespace A017150.P17927741827543733735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017150.P17927741827543733735

namespace A017150

/-- `record[xor(7, n)²]` -/
def P17927741827543733735.Spec : Prop :=
  ∀ n, (P17927741827543733735.a n : ℤ) = A017150 n

end A017150

/-! ## A017150.P11845275135589457362

`record[xor(7, n)]^2`
-/

namespace A017150.P11845275135589457362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A017150.P11845275135589457362

namespace A017150

/-- `record[xor(7, n)]^2` -/
def P11845275135589457362.Spec : Prop :=
  ∀ n, (P11845275135589457362.a n : ℤ) = A017150 n

end A017150

/-! ## A017150.P16687829204045342081

`record[(lcm(4, n+1)+3)²]`
-/

namespace A017150.P16687829204045342081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017150.P16687829204045342081

namespace A017150

/-- `record[(lcm(4, n+1)+3)²]` -/
def P16687829204045342081.Spec : Prop :=
  ∀ n, (P16687829204045342081.a n : ℤ) = A017150 n

end A017150

/-! ## A017150.P17481307167501661962

`record[(gcd(8, n)+n-1)²]`
-/

namespace A017150.P17481307167501661962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 8 n : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017150.P17481307167501661962

namespace A017150

/-- `record[(gcd(8, n)+n-1)²]` -/
def P17481307167501661962.Spec : Prop :=
  ∀ n, P17481307167501661962.a n = A017150 n

end A017150

/-! ## A017150.P11466516134688707177

`8*C(4*(n+1), 2)+1`
-/

namespace A017150.P11466516134688707177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (4 * (n + 1)) 2 + 1

end

end A017150.P11466516134688707177

namespace A017150

/-- `8*C(4*(n+1), 2)+1` -/
def P11466516134688707177.Spec : Prop :=
  ∀ n, (P11466516134688707177.a n : ℤ) = A017150 n

theorem P11466516134688707177.correct : P11466516134688707177.Spec := by
  intro n
  simp only [A017150, Nat.add_sub_cancel, A017150.P11466516134688707177.a, A017150.P5455253405257364887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017150

/-! ## A017150.P1777774698373647758

`record[or(7, (n-2)%(n+1))²]`
-/

namespace A017150.P1777774698373647758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017150.P1777774698373647758

namespace A017150

/-- `record[or(7, (n-2)%(n+1))²]` -/
def P1777774698373647758.Spec : Prop :=
  ∀ n, P1777774698373647758.a n = A017150 n

end A017150

/-! ## A017150.P15917337095714807860

`sqrt(A017152(n))`
-/

namespace A017150.P15917337095714807860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017152 n : ℝ)

end

end A017150.P15917337095714807860

namespace A017150

/-- `sqrt(A017152(n))` -/
def P15917337095714807860.Spec : Prop :=
  ∀ n, P15917337095714807860.a n = (A017150 n : ℝ)

end A017150

/-! ## A017150.P15773419385394749723

`A146302(n)+4`
-/

namespace A017150.P15773419385394749723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146302 n + 4

end

end A017150.P15773419385394749723

namespace A017150

/-- `A146302(n)+4` -/
def P15773419385394749723.Spec : Prop :=
  ∀ n, P15773419385394749723.a n = A017150 n

theorem P15773419385394749723.correct : P15773419385394749723.Spec := by
  intro n
  simp only [A017150, Nat.add_sub_cancel, A017150.P15773419385394749723.a, A017150.P5455253405257364887.a, A146302, A146302.P1162815202033706259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017150

/-! ## A017150.P13402267713247730587

`sqrt(sqrt(A017156(n)))`
-/

namespace A017150.P13402267713247730587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017156 n : ℝ))

end

end A017150.P13402267713247730587

namespace A017150

/-- `sqrt(sqrt(A017156(n)))` -/
def P13402267713247730587.Spec : Prop :=
  ∀ n, P13402267713247730587.a n = (A017150 n : ℝ)

end A017150

/-! ## A017150.P10695701669784725859

`A017154(n)^(1/3)`
-/

namespace A017150.P10695701669784725859
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017154 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017150.P10695701669784725859

namespace A017150

/-- `A017154(n)^(1/3)` -/
def P10695701669784725859.Spec : Prop :=
  ∀ n, P10695701669784725859.a n = (A017150 n : ℝ)

end A017150

/-! ## A017150.P17669426194236316669

`A017151(n)^(2/3)`
-/

namespace A017150.P17669426194236316669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017151 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017150.P17669426194236316669

namespace A017150

/-- `A017151(n)^(2/3)` -/
def P17669426194236316669.Spec : Prop :=
  ∀ n, P17669426194236316669.a n = (A017150 n : ℝ)

end A017150

/-! ## A017150.P15761908111957072287

`(A157331(n+1)+1)/2`
-/

namespace A017150.P15761908111957072287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157331 (n + 1) + 1 : ℚ) / 2

end

end A017150.P15761908111957072287

namespace A017150

/-- `(A157331(n+1)+1)/2` -/
def P15761908111957072287.Spec : Prop :=
  ∀ n, P15761908111957072287.a n = (A017150 n : ℚ)

theorem P15761908111957072287.correct : P15761908111957072287.Spec := by
  intro n
  simp only [A017150, Nat.add_sub_cancel, A017150.P15761908111957072287.a, A017150.P5455253405257364887.a, A157331, A157331.P15354641868334867170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017150

/-! ## A017150.P1001300083332205865

`A082285(n)+A017138(n)`
-/

namespace A017150.P1001300083332205865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n + A017138 n

end

end A017150.P1001300083332205865

namespace A017150

/-- `A082285(n)+A017138(n)` -/
def P1001300083332205865.Spec : Prop :=
  ∀ n, P1001300083332205865.a n = A017150 n

theorem P1001300083332205865.correct : P1001300083332205865.Spec := by
  intro n
  simp only [A017150, Nat.add_sub_cancel, A017150.P1001300083332205865.a, A017150.P5455253405257364887.a, A017138, A017138.P15439890238184103571.a, A082285, A082285.P16772271562907915058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017150

/-! ## A017150.P5753448285632615206

`A004771(n)*A004771(n)`
-/

namespace A017150.P5753448285632615206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n * A004771 n

end

end A017150.P5753448285632615206

namespace A017150

/-- `A004771(n)*A004771(n)` -/
def P5753448285632615206.Spec : Prop :=
  ∀ n, P5753448285632615206.a n = A017150 n

theorem P5753448285632615206.correct : P5753448285632615206.Spec := by
  intro n
  simp only [A017150, Nat.add_sub_cancel, A017150.P5753448285632615206.a, A017150.P5455253405257364887.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017150

/-! ## A017150.P7166167756921714389

`A017151(n)/A004771(n)`
-/

namespace A017150.P7166167756921714389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017151 n : ℚ) / (A004771 n : ℚ)

end

end A017150.P7166167756921714389

namespace A017150

/-- `A017151(n)/A004771(n)` -/
def P7166167756921714389.Spec : Prop :=
  ∀ n, P7166167756921714389.a n = (A017150 n : ℚ)

end A017150

/-! ## A017150.P18440575667049125411

`A017153(n)/A017151(n)`
-/

namespace A017150.P18440575667049125411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017153 n : ℚ) / (A017151 n : ℚ)

end

end A017150.P18440575667049125411

namespace A017150

/-- `A017153(n)/A017151(n)` -/
def P18440575667049125411.Spec : Prop :=
  ∀ n, P18440575667049125411.a n = (A017150 n : ℚ)

end A017150

/-! ## A017150.P11839439889465515759

`A017154(n)/A017152(n)`
-/

namespace A017150.P11839439889465515759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017154 n : ℚ) / (A017152 n : ℚ)

end

end A017150.P11839439889465515759

namespace A017150

/-- `A017154(n)/A017152(n)` -/
def P11839439889465515759.Spec : Prop :=
  ∀ n, P11839439889465515759.a n = (A017150 n : ℚ)

end A017150

/-! ## A017150.P18412404397837060462

`A017156(n)/A017151(n)²`
-/

namespace A017150.P18412404397837060462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017156 n : ℚ) / (A017151 n ^ 2 : ℚ)

end

end A017150.P18412404397837060462

namespace A017150

/-- `A017156(n)/A017151(n)²` -/
def P18412404397837060462.Spec : Prop :=
  ∀ n, P18412404397837060462.a n = (A017150 n : ℚ)

end A017150

/-!
# A017151: a(n) = (8*n + 7)^3.

The programs for A017151, the canonical program `A017151.P13179376739553888366` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017151 has offset 0).

The definition of A017151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)^3` (program `A017151.P13179376739553888366`, by `A017151.P13179376739553888366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017151.P13179376739553888366

`(8*n+7)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017151

/-- `(8*n+7)^3` -/
def P13179376739553888366.Spec : Prop :=
  ∀ n, (P13179376739553888366.a n : ℤ) = A017151 n

theorem P13179376739553888366.correct : P13179376739553888366.Spec := by
  intro n
  simp only [A017151]

end A017151

/-! ## A017151.P7334016490620484926

`record[xor(7, n)^3]`
-/

namespace A017151.P7334016490620484926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017151.P7334016490620484926

namespace A017151

/-- `record[xor(7, n)^3]` -/
def P7334016490620484926.Spec : Prop :=
  ∀ n, (P7334016490620484926.a n : ℤ) = A017151 n

end A017151

/-! ## A017151.P8420625122701123547

`record[(lcm(4, n+1)+3)^3]`
-/

namespace A017151.P8420625122701123547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 3) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017151.P8420625122701123547

namespace A017151

/-- `record[(lcm(4, n+1)+3)^3]` -/
def P8420625122701123547.Spec : Prop :=
  ∀ n, (P8420625122701123547.a n : ℤ) = A017151 n

end A017151

/-! ## A017151.P13189486063124469335

`record[xor(7, n)²]*record[xor(7, n)]`
-/

namespace A017151.P13189486063124469335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A017151.P13189486063124469335

namespace A017151

/-- `record[xor(7, n)²]*record[xor(7, n)]` -/
def P13189486063124469335.Spec : Prop :=
  ∀ n, (P13189486063124469335.a n : ℤ) = A017151 n

end A017151

/-! ## A017151.P14649052649948685181

`sqrt(A017154(n))`
-/

namespace A017151.P14649052649948685181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017154 n : ℝ)

end

end A017151.P14649052649948685181

namespace A017151

/-- `sqrt(A017154(n))` -/
def P14649052649948685181.Spec : Prop :=
  ∀ n, P14649052649948685181.a n = (A017151 n : ℝ)

end A017151

/-! ## A017151.P7467272280517974425

`sqrt(A017150(n)^3)`
-/

namespace A017151.P7467272280517974425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017150 n ^ 3 : ℝ)

end

end A017151.P7467272280517974425

namespace A017151

/-- `sqrt(A017150(n)^3)` -/
def P7467272280517974425.Spec : Prop :=
  ∀ n, P7467272280517974425.a n = (A017151 n : ℝ)

end A017151

/-! ## A017151.P2940661771860867034

`record[xor(7, n)²]*A004771(n)`
-/

namespace A017151.P2940661771860867034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A004771 n

end

end A017151.P2940661771860867034

namespace A017151

/-- `record[xor(7, n)²]*A004771(n)` -/
def P2940661771860867034.Spec : Prop :=
  ∀ n, P2940661771860867034.a n = A017151 n

end A017151

/-! ## A017151.P9800762658253333659

`A004771(n)*A017150(n)`
-/

namespace A017151.P9800762658253333659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n * A017150 n

end

end A017151.P9800762658253333659

namespace A017151

/-- `A004771(n)*A017150(n)` -/
def P9800762658253333659.Spec : Prop :=
  ∀ n, P9800762658253333659.a n = A017151 n

theorem P9800762658253333659.correct : P9800762658253333659.Spec := by
  intro n
  simp only [A017151, Nat.add_sub_cancel, A017151.P9800762658253333659.a, A017151.P13179376739553888366.a, A004771, A004771.P15562682025386998074.a, A017150, A017150.P5455253405257364887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017151

/-! ## A017151.P2445793436686064899

`A017152(n)/A004771(n)`
-/

namespace A017151.P2445793436686064899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017152 n : ℚ) / (A004771 n : ℚ)

end

end A017151.P2445793436686064899

namespace A017151

/-- `A017152(n)/A004771(n)` -/
def P2445793436686064899.Spec : Prop :=
  ∀ n, P2445793436686064899.a n = (A017151 n : ℚ)

end A017151

/-! ## A017151.P8493445953253388895

`A017153(n)/A017150(n)`
-/

namespace A017151.P8493445953253388895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017153 n : ℚ) / (A017150 n : ℚ)

end

end A017151.P8493445953253388895

namespace A017151

/-- `A017153(n)/A017150(n)` -/
def P8493445953253388895.Spec : Prop :=
  ∀ n, P8493445953253388895.a n = (A017151 n : ℚ)

end A017151

/-! ## A017151.P9842317242744892365

`A017153(n)/A004771(n)²`
-/

namespace A017151.P9842317242744892365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017153 n : ℚ) / (A004771 n ^ 2 : ℚ)

end

end A017151.P9842317242744892365

namespace A017151

/-- `A017153(n)/A004771(n)²` -/
def P9842317242744892365.Spec : Prop :=
  ∀ n, P9842317242744892365.a n = (A017151 n : ℚ)

end A017151

/-! ## A017151.P9971193014194834474

`sqrt(A017150(n)*A017152(n))`
-/

namespace A017151.P9971193014194834474
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017150 n * A017152 n : ℝ)

end

end A017151.P9971193014194834474

namespace A017151

/-- `sqrt(A017150(n)*A017152(n))` -/
def P9971193014194834474.Spec : Prop :=
  ∀ n, P9971193014194834474.a n = (A017151 n : ℝ)

end A017151

/-! ## A017151.P6745508995230279152

`A017152(n)²/A017153(n)`
-/

namespace A017151.P6745508995230279152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017152 n ^ 2 : ℚ) / (A017153 n : ℚ)

end

end A017151.P6745508995230279152

namespace A017151

/-- `A017152(n)²/A017153(n)` -/
def P6745508995230279152.Spec : Prop :=
  ∀ n, P6745508995230279152.a n = (A017151 n : ℚ)

end A017151

/-! ## A017151.P18112748710687798489

`A017155(n)/A017150(n)²`
-/

namespace A017151.P18112748710687798489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017155 n : ℚ) / (A017150 n ^ 2 : ℚ)

end

end A017151.P18112748710687798489

namespace A017151

/-- `A017155(n)/A017150(n)²` -/
def P18112748710687798489.Spec : Prop :=
  ∀ n, P18112748710687798489.a n = (A017151 n : ℚ)

end A017151

/-! ## A017151.P3622238211161802236

`sqrt(A017158(n)/A017152(n))`
-/

namespace A017151.P3622238211161802236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A017158 n : ℚ) / (A017152 n : ℚ) : ℝ)

end

end A017151.P3622238211161802236

namespace A017151

/-- `sqrt(A017158(n)/A017152(n))` -/
def P3622238211161802236.Spec : Prop :=
  ∀ n, P3622238211161802236.a n = (A017151 n : ℝ)

end A017151

/-! ## A017151.P10138239310441895203

`A017157(n)/(A017150(n)²*A017150(n))`
-/

namespace A017151.P10138239310441895203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017157 n : ℚ) / (A017150 n ^ 2 * A017150 n : ℚ)

end

end A017151.P10138239310441895203

namespace A017151

/-- `A017157(n)/(A017150(n)²*A017150(n))` -/
def P10138239310441895203.Spec : Prop :=
  ∀ n, P10138239310441895203.a n = (A017151 n : ℚ)

end A017151

/-! ## A017151.P9365839384866855259

`Δ[A033951(n)]²*Δ[A033951(n)]`
-/

namespace A017151.P9365839384866855259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017151.P9365839384866855259

namespace A017151

/-- `Δ[A033951(n)]²*Δ[A033951(n)]` -/
def P9365839384866855259.Spec : Prop :=
  ∀ n, P9365839384866855259.a n = A017151 n

theorem P9365839384866855259.correct : P9365839384866855259.Spec := by
  intro n
  simp only [A017151, Nat.add_sub_cancel, A017151.P9365839384866855259.f1, A017151.P9365839384866855259.f2, A017151.P9365839384866855259.a, A017151.P13179376739553888366.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017151

/-! ## A017151.P375837892674598600

`Δ[A033954(n)]²*Δ[A033954(n)]`
-/

namespace A017151.P375837892674598600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017151.P375837892674598600

namespace A017151

/-- `Δ[A033954(n)]²*Δ[A033954(n)]` -/
def P375837892674598600.Spec : Prop :=
  ∀ n, P375837892674598600.a n = A017151 n

theorem P375837892674598600.correct : P375837892674598600.Spec := by
  intro n
  simp only [A017151, Nat.add_sub_cancel, A017151.P375837892674598600.f1, A017151.P375837892674598600.f2, A017151.P375837892674598600.a, A017151.P13179376739553888366.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017151

/-! ## A017151.P389981880566970377

`Δ[A185669(n)]²*Δ[A185669(n)]`
-/

namespace A017151.P389981880566970377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017151.P389981880566970377

namespace A017151

/-- `Δ[A185669(n)]²*Δ[A185669(n)]` -/
def P389981880566970377.Spec : Prop :=
  ∀ n, P389981880566970377.a n = A017151 n

theorem P389981880566970377.correct : P389981880566970377.Spec := by
  intro n
  simp only [A017151, Nat.add_sub_cancel, A017151.P389981880566970377.f1, A017151.P389981880566970377.f2, A017151.P389981880566970377.a, A017151.P13179376739553888366.a, A185669, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017151

/-!
# A017152: a(n) = (8*n + 7)^4.

The programs for A017152, the canonical program `A017152.P9456559348915766175` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017152 has offset 0).

The definition of A017152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)^4` (program `A017152.P9456559348915766175`, by `A017152.P9456559348915766175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017152.P9456559348915766175

`(8*n+7)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017152

/-- `(8*n+7)^4` -/
def P9456559348915766175.Spec : Prop :=
  ∀ n, (P9456559348915766175.a n : ℤ) = A017152 n

theorem P9456559348915766175.correct : P9456559348915766175.Spec := by
  intro n
  simp only [A017152]

end A017152

/-! ## A017152.P8459017045248742591

`record[xor(7, n)^4]`
-/

namespace A017152.P8459017045248742591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017152.P8459017045248742591

namespace A017152

/-- `record[xor(7, n)^4]` -/
def P8459017045248742591.Spec : Prop :=
  ∀ n, (P8459017045248742591.a n : ℤ) = A017152 n

end A017152

/-! ## A017152.P4860483858117132046

`record[xor(7, n)²²]`
-/

namespace A017152.P4860483858117132046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 7 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017152.P4860483858117132046

namespace A017152

/-- `record[xor(7, n)²²]` -/
def P4860483858117132046.Spec : Prop :=
  ∀ n, (P4860483858117132046.a n : ℤ) = A017152 n

end A017152

/-! ## A017152.P16247411848942572860

`or(7, 8*n)²²`
-/

namespace A017152.P16247411848942572860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 7 (8 * n) ^ 2) ^ 2

end

end A017152.P16247411848942572860

namespace A017152

/-- `or(7, 8*n)²²` -/
def P16247411848942572860.Spec : Prop :=
  ∀ n, (P16247411848942572860.a n : ℤ) = A017152 n

end A017152

/-! ## A017152.P7160938146396500083

`xor(7, 8*n)²²`
-/

namespace A017152.P7160938146396500083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 7 (8 * n) ^ 2) ^ 2

end

end A017152.P7160938146396500083

namespace A017152

/-- `xor(7, 8*n)²²` -/
def P7160938146396500083.Spec : Prop :=
  ∀ n, (P7160938146396500083.a n : ℤ) = A017152 n

end A017152

/-! ## A017152.P14713623613793031592

`record[(lcm(4, n+1)+3)^4]`
-/

namespace A017152.P14713623613793031592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 3) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017152.P14713623613793031592

namespace A017152

/-- `record[(lcm(4, n+1)+3)^4]` -/
def P14713623613793031592.Spec : Prop :=
  ∀ n, (P14713623613793031592.a n : ℤ) = A017152 n

end A017152

/-! ## A017152.P2442758817572794736

`(1-lcm(2, Δ[(2*n+1)²]))²²`
-/

namespace A017152.P2442758817572794736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)) ^ 2) ^ 2

end

end A017152.P2442758817572794736

namespace A017152

/-- `(1-lcm(2, Δ[(2*n+1)²]))²²` -/
def P2442758817572794736.Spec : Prop :=
  ∀ n, P2442758817572794736.a n = A017152 n

end A017152

/-! ## A017152.P3678371017439643583

`(8*(n+1)-gcd(n, n+1))²²`
-/

namespace A017152.P3678371017439643583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((8 * (n + 1) : ℤ) - (Nat.gcd n (n + 1) : ℤ)) ^ 2) ^ 2

end

end A017152.P3678371017439643583

namespace A017152

/-- `(8*(n+1)-gcd(n, n+1))²²` -/
def P3678371017439643583.Spec : Prop :=
  ∀ n, P3678371017439643583.a n = A017152 n

theorem P3678371017439643583.correct : P3678371017439643583.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P3678371017439643583.a, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017152

/-! ## A017152.P12279566872512814896

`(Δ[lcm(2*n+1, 2*n)]+1)²²`
-/

namespace A017152.P12279566872512814896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2) ^ 2

end

end A017152.P12279566872512814896

namespace A017152

/-- `(Δ[lcm(2*n+1, 2*n)]+1)²²` -/
def P12279566872512814896.Spec : Prop :=
  ∀ n, P12279566872512814896.a n = A017152 n

end A017152

/-! ## A017152.P11573795280443977272

`(1-Δ[C(2*n+1, 2*n)²])²²`
-/

namespace A017152.P11573795280443977272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2) ^ 2

end

end A017152.P11573795280443977272

namespace A017152

/-- `(1-Δ[C(2*n+1, 2*n)²])²²` -/
def P11573795280443977272.Spec : Prop :=
  ∀ n, P11573795280443977272.a n = A017152 n

theorem P11573795280443977272.correct : P11573795280443977272.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P11573795280443977272.f1, A017152.P11573795280443977272.a, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017152

/-! ## A017152.P8688959583860431488

`(and(1, 2*n+1)-Δ[(2*n+1)²])²²`
-/

namespace A017152.P8688959583860431488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.land 1 (2 * n + 1) : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2) ^ 2

end

end A017152.P8688959583860431488

namespace A017152

/-- `(and(1, 2*n+1)-Δ[(2*n+1)²])²²` -/
def P8688959583860431488.Spec : Prop :=
  ∀ n, P8688959583860431488.a n = A017152 n

theorem P8688959583860431488.correct : P8688959583860431488.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P8688959583860431488.f1, A017152.P8688959583860431488.a, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017152

/-! ## A017152.P12886543967963229784

`A017150(n)²`
-/

namespace A017152.P12886543967963229784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n ^ 2

end

end A017152.P12886543967963229784

namespace A017152

/-- `A017150(n)²` -/
def P12886543967963229784.Spec : Prop :=
  ∀ n, P12886543967963229784.a n = A017152 n

theorem P12886543967963229784.correct : P12886543967963229784.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P12886543967963229784.a, A017152.P9456559348915766175.a, A017150, A017150.P5455253405257364887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017152

/-! ## A017152.P13547847563184893581

`sqrt(A017156(n))`
-/

namespace A017152.P13547847563184893581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017156 n : ℝ)

end

end A017152.P13547847563184893581

namespace A017152

/-- `sqrt(A017156(n))` -/
def P13547847563184893581.Spec : Prop :=
  ∀ n, P13547847563184893581.a n = (A017152 n : ℝ)

end A017152

/-! ## A017152.P12336325008587259639

`A004771(n)²²`
-/

namespace A017152.P12336325008587259639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n ^ 2) ^ 2

end

end A017152.P12336325008587259639

namespace A017152

/-- `A004771(n)²²` -/
def P12336325008587259639.Spec : Prop :=
  ∀ n, P12336325008587259639.a n = A017152 n

theorem P12336325008587259639.correct : P12336325008587259639.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P12336325008587259639.a, A017152.P9456559348915766175.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017152

/-! ## A017152.P1429398352199649122

`(A146302(n)+4)²`
-/

namespace A017152.P1429398352199649122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146302 n + 4) ^ 2

end

end A017152.P1429398352199649122

namespace A017152

/-- `(A146302(n)+4)²` -/
def P1429398352199649122.Spec : Prop :=
  ∀ n, P1429398352199649122.a n = A017152 n

theorem P1429398352199649122.correct : P1429398352199649122.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P1429398352199649122.a, A017152.P9456559348915766175.a, A146302, A146302.P1162815202033706259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017152

/-! ## A017152.P4605763421710527616

`(A017137(n)+1)²²`
-/

namespace A017152.P4605763421710527616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017137 n + 1) ^ 2) ^ 2

end

end A017152.P4605763421710527616

namespace A017152

/-- `(A017137(n)+1)²²` -/
def P4605763421710527616.Spec : Prop :=
  ∀ n, P4605763421710527616.a n = A017152 n

theorem P4605763421710527616.correct : P4605763421710527616.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P4605763421710527616.a, A017152.P9456559348915766175.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017152

/-! ## A017152.P5769812734473467195

`(2-A004768(n))²²`
-/

namespace A017152.P5769812734473467195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A004768 n) ^ 2) ^ 2

end

end A017152.P5769812734473467195

namespace A017152

/-- `(2-A004768(n))²²` -/
def P5769812734473467195.Spec : Prop :=
  ∀ n, P5769812734473467195.a n = A017152 n

theorem P5769812734473467195.correct : P5769812734473467195.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P5769812734473467195.a, A017152.P9456559348915766175.a, A004768, A004768.P10813831617649309423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017152

/-! ## A017152.P16187304592583323575

`(A017113(n)+3)²²`
-/

namespace A017152.P16187304592583323575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017113 n + 3) ^ 2) ^ 2

end

end A017152.P16187304592583323575

namespace A017152

/-- `(A017113(n)+3)²²` -/
def P16187304592583323575.Spec : Prop :=
  ∀ n, P16187304592583323575.a n = A017152 n

theorem P16187304592583323575.correct : P16187304592583323575.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P16187304592583323575.a, A017152.P9456559348915766175.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017152

/-! ## A017152.P4215455789697898813

`(A102603(n)/3)²²`
-/

namespace A017152.P4215455789697898813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A102603 n : ℚ) / 3) ^ 2) ^ 2

end

end A017152.P4215455789697898813

namespace A017152

/-- `(A102603(n)/3)²²` -/
def P4215455789697898813.Spec : Prop :=
  ∀ n, P4215455789697898813.a n = (A017152 n : ℚ)

theorem P4215455789697898813.correct : P4215455789697898813.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P4215455789697898813.a, A017152.P9456559348915766175.a, A102603, A102603.P3247987965860974134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017152

/-! ## A017152.P9379252470376857861

`(n-A017245(n))²²`
-/

namespace A017152.P9379252470376857861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017245 n) ^ 2) ^ 2

end

end A017152.P9379252470376857861

namespace A017152

/-- `(n-A017245(n))²²` -/
def P9379252470376857861.Spec : Prop :=
  ∀ n, P9379252470376857861.a n = A017152 n

theorem P9379252470376857861.correct : P9379252470376857861.Spec := by
  intro n
  simp only [A017152, Nat.add_sub_cancel, A017152.P9379252470376857861.a, A017152.P9456559348915766175.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017152

/-!
# A017153: a(n) = (8*n + 7)^5.

The programs for A017153, the canonical program `A017153.P6335539472878830473` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017153 has offset 0).

The definition of A017153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)^5` (program `A017153.P6335539472878830473`, by `A017153.P6335539472878830473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017153.P6335539472878830473

`(8*n+7)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017153

/-- `(8*n+7)^5` -/
def P6335539472878830473.Spec : Prop :=
  ∀ n, (P6335539472878830473.a n : ℤ) = A017153 n

theorem P6335539472878830473.correct : P6335539472878830473.Spec := by
  intro n
  simp only [A017153]

end A017153

/-! ## A017153.P5971189784884964405

`record[xor(7, n)^5]`
-/

namespace A017153.P5971189784884964405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017153.P5971189784884964405

namespace A017153

/-- `record[xor(7, n)^5]` -/
def P5971189784884964405.Spec : Prop :=
  ∀ n, (P5971189784884964405.a n : ℤ) = A017153 n

end A017153

/-! ## A017153.P10051352432835755448

`record[(lcm(4, n+1)+3)^5]`
-/

namespace A017153.P10051352432835755448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 3) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017153.P10051352432835755448

namespace A017153

/-- `record[(lcm(4, n+1)+3)^5]` -/
def P10051352432835755448.Spec : Prop :=
  ∀ n, (P10051352432835755448.a n : ℤ) = A017153 n

end A017153

/-! ## A017153.P14603309737380321561

`sqrt(A017158(n))`
-/

namespace A017153.P14603309737380321561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017158 n : ℝ)

end

end A017153.P14603309737380321561

namespace A017153

/-- `sqrt(A017158(n))` -/
def P14603309737380321561.Spec : Prop :=
  ∀ n, P14603309737380321561.a n = (A017153 n : ℝ)

end A017153

/-! ## A017153.P17622405734502221796

`sqrt(A017150(n)^5)`
-/

namespace A017153.P17622405734502221796
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017150 n ^ 5 : ℝ)

end

end A017153.P17622405734502221796

namespace A017153

/-- `sqrt(A017150(n)^5)` -/
def P17622405734502221796.Spec : Prop :=
  ∀ n, P17622405734502221796.a n = (A017153 n : ℝ)

end A017153

/-! ## A017153.P200964058865844907

`(8*n+7)*A017152(n)`
-/

namespace A017153.P200964058865844907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) * A017152 n

end

end A017153.P200964058865844907

namespace A017153

/-- `(8*n+7)*A017152(n)` -/
def P200964058865844907.Spec : Prop :=
  ∀ n, P200964058865844907.a n = A017153 n

theorem P200964058865844907.correct : P200964058865844907.Spec := by
  intro n
  simp only [A017153, Nat.add_sub_cancel, A017153.P200964058865844907.a, A017153.P6335539472878830473.a, A017152, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017153

/-! ## A017153.P7774796360462644999

`A017150(n)*A017151(n)`
-/

namespace A017153.P7774796360462644999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n * A017151 n

end

end A017153.P7774796360462644999

namespace A017153

/-- `A017150(n)*A017151(n)` -/
def P7774796360462644999.Spec : Prop :=
  ∀ n, P7774796360462644999.a n = A017153 n

theorem P7774796360462644999.correct : P7774796360462644999.Spec := by
  intro n
  simp only [A017153, Nat.add_sub_cancel, A017153.P7774796360462644999.a, A017153.P6335539472878830473.a, A017150, A017150.P5455253405257364887.a, A017151, A017151.P13179376739553888366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017153

/-! ## A017153.P18155752770422155581

`A017154(n)/A004771(n)`
-/

namespace A017153.P18155752770422155581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017154 n : ℚ) / (A004771 n : ℚ)

end

end A017153.P18155752770422155581

namespace A017153

/-- `A017154(n)/A004771(n)` -/
def P18155752770422155581.Spec : Prop :=
  ∀ n, P18155752770422155581.a n = (A017153 n : ℚ)

end A017153

/-! ## A017153.P13209014012099490671

`A017155(n)/A017150(n)`
-/

namespace A017153.P13209014012099490671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017155 n : ℚ) / (A017150 n : ℚ)

end

end A017153.P13209014012099490671

namespace A017153

/-- `A017155(n)/A017150(n)` -/
def P13209014012099490671.Spec : Prop :=
  ∀ n, P13209014012099490671.a n = (A017153 n : ℚ)

end A017153

/-! ## A017153.P8934966117433639663

`A017156(n)/A017151(n)`
-/

namespace A017153.P8934966117433639663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017156 n : ℚ) / (A017151 n : ℚ)

end

end A017153.P8934966117433639663

namespace A017153

/-- `A017156(n)/A017151(n)` -/
def P8934966117433639663.Spec : Prop :=
  ∀ n, P8934966117433639663.a n = (A017153 n : ℚ)

end A017153

/-! ## A017153.P13717490771879467994

`A017150(n)²*A004771(n)`
-/

namespace A017153.P13717490771879467994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n ^ 2 * A004771 n

end

end A017153.P13717490771879467994

namespace A017153

/-- `A017150(n)²*A004771(n)` -/
def P13717490771879467994.Spec : Prop :=
  ∀ n, P13717490771879467994.a n = A017153 n

theorem P13717490771879467994.correct : P13717490771879467994.Spec := by
  intro n
  simp only [A017153, Nat.add_sub_cancel, A017153.P13717490771879467994.a, A017153.P6335539472878830473.a, A004771, A004771.P15562682025386998074.a, A017150, A017150.P5455253405257364887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017153

/-! ## A017153.P18285619300867110325

`A004771(n)²*A017151(n)`
-/

namespace A017153.P18285619300867110325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n ^ 2 * A017151 n

end

end A017153.P18285619300867110325

namespace A017153

/-- `A004771(n)²*A017151(n)` -/
def P18285619300867110325.Spec : Prop :=
  ∀ n, P18285619300867110325.a n = A017153 n

theorem P18285619300867110325.correct : P18285619300867110325.Spec := by
  intro n
  simp only [A017153, Nat.add_sub_cancel, A017153.P18285619300867110325.a, A017153.P6335539472878830473.a, A004771, A004771.P15562682025386998074.a, A017151, A017151.P13179376739553888366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017153

/-! ## A017153.P3584178206173808164

`A017152(n)²/A017151(n)`
-/

namespace A017153.P3584178206173808164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017152 n ^ 2 : ℚ) / (A017151 n : ℚ)

end

end A017153.P3584178206173808164

namespace A017153

/-- `A017152(n)²/A017151(n)` -/
def P3584178206173808164.Spec : Prop :=
  ∀ n, P3584178206173808164.a n = (A017153 n : ℚ)

end A017153

/-! ## A017153.P5801692900667369647

`sqrt(A017154(n))*A017150(n)`
-/

namespace A017153.P5801692900667369647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017154 n : ℝ) * (A017150 n : ℝ)

end

end A017153.P5801692900667369647

namespace A017153

/-- `sqrt(A017154(n))*A017150(n)` -/
def P5801692900667369647.Spec : Prop :=
  ∀ n, P5801692900667369647.a n = (A017153 n : ℝ)

end A017153

/-! ## A017153.P15868482566451692000

`A017157(n)/A017150(n)²`
-/

namespace A017153.P15868482566451692000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017157 n : ℚ) / (A017150 n ^ 2 : ℚ)

end

end A017153.P15868482566451692000

namespace A017153

/-- `A017157(n)/A017150(n)²` -/
def P15868482566451692000.Spec : Prop :=
  ∀ n, P15868482566451692000.a n = (A017153 n : ℚ)

end A017153

/-! ## A017153.P2150122701126650309

`A133655(n+1)²²*A133655(n+1)`
-/

namespace A017153.P2150122701126650309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133655 (n + 1) ^ 2) ^ 2 * A133655 (n + 1)

end

end A017153.P2150122701126650309

namespace A017153

/-- `A133655(n+1)²²*A133655(n+1)` -/
def P2150122701126650309.Spec : Prop :=
  ∀ n, P2150122701126650309.a n = A017153 n

end A017153

/-! ## A017153.P8549945807128284602

`A016841(Δ[n²])`
-/

namespace A017153.P8549945807128284602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016841 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017153.P8549945807128284602

namespace A017153

/-- `A016841(Δ[n²])` -/
def P8549945807128284602.Spec : Prop :=
  ∀ n, P8549945807128284602.a n = A017153 n

end A017153

/-! ## A017153.P369367005153160114

`sqrt(A016846(2*n+1))`
-/

namespace A017153.P369367005153160114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016846 (2 * n + 1) : ℝ)

end

end A017153.P369367005153160114

namespace A017153

/-- `sqrt(A016846(2*n+1))` -/
def P369367005153160114.Spec : Prop :=
  ∀ n, P369367005153160114.a n = (A017153 n : ℝ)

end A017153

/-! ## A017153.P12344587878645373258

`(8*n+7)*A016840(2*n+1)`
-/

namespace A017153.P12344587878645373258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) * A016840 (2 * n + 1)

end

end A017153.P12344587878645373258

namespace A017153

/-- `(8*n+7)*A016840(2*n+1)` -/
def P12344587878645373258.Spec : Prop :=
  ∀ n, P12344587878645373258.a n = A017153 n

theorem P12344587878645373258.correct : P12344587878645373258.Spec := by
  intro n
  simp only [A017153, Nat.add_sub_cancel, A017153.P12344587878645373258.a, A017153.P6335539472878830473.a, A016840, A016840.P5994882750815029548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017153

/-! ## A017153.P4882485262545443410

`A016842(2*n+1)/(8*n+7)`
-/

namespace A017153.P4882485262545443410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016842 (2 * n + 1) : ℚ) / (8 * n + 7 : ℚ)

end

end A017153.P4882485262545443410

namespace A017153

/-- `A016842(2*n+1)/(8*n+7)` -/
def P4882485262545443410.Spec : Prop :=
  ∀ n, P4882485262545443410.a n = (A017153 n : ℚ)

theorem P4882485262545443410.correct : P4882485262545443410.Spec := by
  intro n
  simp only [A017153, Nat.add_sub_cancel, A017153.P4882485262545443410.a, A017153.P6335539472878830473.a, A016842, A016842.P16499744308022796369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017153

/-!
# A017154: a(n) = (8*n + 7)^6.

The programs for A017154, the canonical program `A017154.P5965567948319497112` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017154 has offset 0).

The definition of A017154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)^6` (program `A017154.P5965567948319497112`, by `A017154.P5965567948319497112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017154.P5965567948319497112

`(8*n+7)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017154

/-- `(8*n+7)^6` -/
def P5965567948319497112.Spec : Prop :=
  ∀ n, (P5965567948319497112.a n : ℤ) = A017154 n

theorem P5965567948319497112.correct : P5965567948319497112.Spec := by
  intro n
  simp only [A017154]

end A017154

/-! ## A017154.P3900607331936382161

`record[xor(7, n)^6]`
-/

namespace A017154.P3900607331936382161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017154.P3900607331936382161

namespace A017154

/-- `record[xor(7, n)^6]` -/
def P3900607331936382161.Spec : Prop :=
  ∀ n, (P3900607331936382161.a n : ℤ) = A017154 n

end A017154

/-! ## A017154.P7188517182202691697

`(or(3, Δ[(2*n)²])^3)²`
-/

namespace A017154.P7188517182202691697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3) ^ 2

end

end A017154.P7188517182202691697

namespace A017154

/-- `(or(3, Δ[(2*n)²])^3)²` -/
def P7188517182202691697.Spec : Prop :=
  ∀ n, P7188517182202691697.a n = A017154 n

end A017154

/-! ## A017154.P2024902789157791427

`(xor(3, Δ[(2*n)²])^3)²`
-/

namespace A017154.P2024902789157791427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3) ^ 2

end

end A017154.P2024902789157791427

namespace A017154

/-- `(xor(3, Δ[(2*n)²])^3)²` -/
def P2024902789157791427.Spec : Prop :=
  ∀ n, P2024902789157791427.a n = A017154 n

end A017154

/-! ## A017154.P10406701974691644165

`A017151(n)²`
-/

namespace A017154.P10406701974691644165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017151 n ^ 2

end

end A017154.P10406701974691644165

namespace A017154

/-- `A017151(n)²` -/
def P10406701974691644165.Spec : Prop :=
  ∀ n, P10406701974691644165.a n = A017154 n

theorem P10406701974691644165.correct : P10406701974691644165.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P10406701974691644165.a, A017154.P5965567948319497112.a, A017151, A017151.P13179376739553888366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-! ## A017154.P3235008133010275646

`(A004771(n)^3)²`
-/

namespace A017154.P3235008133010275646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n ^ 3) ^ 2

end

end A017154.P3235008133010275646

namespace A017154

/-- `(A004771(n)^3)²` -/
def P3235008133010275646.Spec : Prop :=
  ∀ n, P3235008133010275646.a n = A017154 n

theorem P3235008133010275646.correct : P3235008133010275646.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P3235008133010275646.a, A017154.P5965567948319497112.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-! ## A017154.P15655017378873860786

`sqrt(A017152(n)^3)`
-/

namespace A017154.P15655017378873860786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017152 n ^ 3 : ℝ)

end

end A017154.P15655017378873860786

namespace A017154

/-- `sqrt(A017152(n)^3)` -/
def P15655017378873860786.Spec : Prop :=
  ∀ n, P15655017378873860786.a n = (A017154 n : ℝ)

end A017154

/-! ## A017154.P10240545277805569538

`(8*n+7)*A017153(n)`
-/

namespace A017154.P10240545277805569538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) * A017153 n

end

end A017154.P10240545277805569538

namespace A017154

/-- `(8*n+7)*A017153(n)` -/
def P10240545277805569538.Spec : Prop :=
  ∀ n, P10240545277805569538.a n = A017154 n

theorem P10240545277805569538.correct : P10240545277805569538.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P10240545277805569538.a, A017154.P5965567948319497112.a, A017153, A017153.P6335539472878830473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-! ## A017154.P16209908039458624814

`A017150(n)*A017152(n)`
-/

namespace A017154.P16209908039458624814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n * A017152 n

end

end A017154.P16209908039458624814

namespace A017154

/-- `A017150(n)*A017152(n)` -/
def P16209908039458624814.Spec : Prop :=
  ∀ n, P16209908039458624814.a n = A017154 n

theorem P16209908039458624814.correct : P16209908039458624814.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P16209908039458624814.a, A017154.P5965567948319497112.a, A017150, A017150.P5455253405257364887.a, A017152, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-! ## A017154.P16200726427748640806

`A017158(n)/A017152(n)`
-/

namespace A017154.P16200726427748640806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017158 n : ℚ) / (A017152 n : ℚ)

end

end A017154.P16200726427748640806

namespace A017154

/-- `A017158(n)/A017152(n)` -/
def P16200726427748640806.Spec : Prop :=
  ∀ n, P16200726427748640806.a n = (A017154 n : ℚ)

end A017154

/-! ## A017154.P3296307510118425365

`(A004771(n)*A017150(n))²`
-/

namespace A017154.P3296307510118425365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n * A017150 n) ^ 2

end

end A017154.P3296307510118425365

namespace A017154

/-- `(A004771(n)*A017150(n))²` -/
def P3296307510118425365.Spec : Prop :=
  ∀ n, P3296307510118425365.a n = A017154 n

theorem P3296307510118425365.correct : P3296307510118425365.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P3296307510118425365.a, A017154.P5965567948319497112.a, A004771, A004771.P15562682025386998074.a, A017150, A017150.P5455253405257364887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-! ## A017154.P12719212353882986767

`A004771(n)²*A017152(n)`
-/

namespace A017154.P12719212353882986767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n ^ 2 * A017152 n

end

end A017154.P12719212353882986767

namespace A017154

/-- `A004771(n)²*A017152(n)` -/
def P12719212353882986767.Spec : Prop :=
  ∀ n, P12719212353882986767.a n = A017154 n

theorem P12719212353882986767.correct : P12719212353882986767.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P12719212353882986767.a, A017154.P5965567948319497112.a, A004771, A004771.P15562682025386998074.a, A017152, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-! ## A017154.P16351775304470461257

`(A017153(n)/A017150(n))²`
-/

namespace A017154.P16351775304470461257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017153 n : ℚ) / (A017150 n : ℚ)) ^ 2

end

end A017154.P16351775304470461257

namespace A017154

/-- `(A017153(n)/A017150(n))²` -/
def P16351775304470461257.Spec : Prop :=
  ∀ n, P16351775304470461257.a n = (A017154 n : ℚ)

end A017154

/-! ## A017154.P17757644789713381031

`A017153(n)²/A017152(n)`
-/

namespace A017154.P17757644789713381031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017153 n ^ 2 : ℚ) / (A017152 n : ℚ)

end

end A017154.P17757644789713381031

namespace A017154

/-- `A017153(n)²/A017152(n)` -/
def P17757644789713381031.Spec : Prop :=
  ∀ n, P17757644789713381031.a n = (A017154 n : ℚ)

end A017154

/-! ## A017154.P17016831110652410743

`(A017155(n)/A017150(n)²)²`
-/

namespace A017154.P17016831110652410743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017155 n : ℚ) / (A017150 n ^ 2 : ℚ)) ^ 2

end

end A017154.P17016831110652410743

namespace A017154

/-- `(A017155(n)/A017150(n)²)²` -/
def P17016831110652410743.Spec : Prop :=
  ∀ n, P17016831110652410743.a n = (A017154 n : ℚ)

end A017154

/-! ## A017154.P10259538440701536041

`sqrt(sqrt(A017156(n))*A017156(n))`
-/

namespace A017154.P10259538440701536041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017156 n : ℝ) * (A017156 n : ℝ))

end

end A017154.P10259538440701536041

namespace A017154

/-- `sqrt(sqrt(A017156(n))*A017156(n))` -/
def P10259538440701536041.Spec : Prop :=
  ∀ n, P10259538440701536041.a n = (A017154 n : ℝ)

end A017154

/-! ## A017154.P37499656607209272

`(Δ[A033951(n)]^3)²`
-/

namespace A017154.P37499656607209272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017154.P37499656607209272

namespace A017154

/-- `(Δ[A033951(n)]^3)²` -/
def P37499656607209272.Spec : Prop :=
  ∀ n, P37499656607209272.a n = A017154 n

theorem P37499656607209272.correct : P37499656607209272.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P37499656607209272.f1, A017154.P37499656607209272.a, A017154.P5965567948319497112.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-! ## A017154.P10412059942482709983

`(Δ[A033954(n)]^3)²`
-/

namespace A017154.P10412059942482709983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017154.P10412059942482709983

namespace A017154

/-- `(Δ[A033954(n)]^3)²` -/
def P10412059942482709983.Spec : Prop :=
  ∀ n, P10412059942482709983.a n = A017154 n

theorem P10412059942482709983.correct : P10412059942482709983.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P10412059942482709983.f1, A017154.P10412059942482709983.a, A017154.P5965567948319497112.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-! ## A017154.P5594897935549898310

`(Δ[A185669(n)]^3)²`
-/

namespace A017154.P5594897935549898310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017154.P5594897935549898310

namespace A017154

/-- `(Δ[A185669(n)]^3)²` -/
def P5594897935549898310.Spec : Prop :=
  ∀ n, P5594897935549898310.a n = A017154 n

theorem P5594897935549898310.correct : P5594897935549898310.Spec := by
  intro n
  simp only [A017154, Nat.add_sub_cancel, A017154.P5594897935549898310.f1, A017154.P5594897935549898310.a, A017154.P5965567948319497112.a, A185669, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017154

/-!
# A017155: a(n) = (8*n + 7)^7.

The programs for A017155, the canonical program `A017155.P1787646949839604791` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017155 has offset 0).

The definition of A017155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)^7` (program `A017155.P1787646949839604791`, by `A017155.P1787646949839604791.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017155.P1787646949839604791

`(8*n+7)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017155

/-- `(8*n+7)^7` -/
def P1787646949839604791.Spec : Prop :=
  ∀ n, (P1787646949839604791.a n : ℤ) = A017155 n

theorem P1787646949839604791.correct : P1787646949839604791.Spec := by
  intro n
  simp only [A017155]

end A017155

/-! ## A017155.P4716925423777227957

`record[xor(7, n)^7]`
-/

namespace A017155.P4716925423777227957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017155.P4716925423777227957

namespace A017155

/-- `record[xor(7, n)^7]` -/
def P4716925423777227957.Spec : Prop :=
  ∀ n, (P4716925423777227957.a n : ℤ) = A017155 n

end A017155

/-! ## A017155.P11999028905492848635

`record[A000265(or(6, n)+1)^7]`
-/

namespace A017155.P11999028905492848635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.lor 6 n + 1) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017155.P11999028905492848635

namespace A017155

/-- `record[A000265(or(6, n)+1)^7]` -/
def P11999028905492848635.Spec : Prop :=
  ∀ n, P11999028905492848635.a n = A017155 n

end A017155

/-! ## A017155.P2738974419009308214

`A004771(n)*A017154(n)`
-/

namespace A017155.P2738974419009308214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n * A017154 n

end

end A017155.P2738974419009308214

namespace A017155

/-- `A004771(n)*A017154(n)` -/
def P2738974419009308214.Spec : Prop :=
  ∀ n, P2738974419009308214.a n = A017155 n

theorem P2738974419009308214.correct : P2738974419009308214.Spec := by
  intro n
  simp only [A017155, Nat.add_sub_cancel, A017155.P2738974419009308214.a, A017155.P1787646949839604791.a, A004771, A004771.P15562682025386998074.a, A017154, A017154.P5965567948319497112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017155

/-! ## A017155.P17360377364516407649

`A017150(n)*A017153(n)`
-/

namespace A017155.P17360377364516407649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n * A017153 n

end

end A017155.P17360377364516407649

namespace A017155

/-- `A017150(n)*A017153(n)` -/
def P17360377364516407649.Spec : Prop :=
  ∀ n, P17360377364516407649.a n = A017155 n

theorem P17360377364516407649.correct : P17360377364516407649.Spec := by
  intro n
  simp only [A017155, Nat.add_sub_cancel, A017155.P17360377364516407649.a, A017155.P1787646949839604791.a, A017150, A017150.P5455253405257364887.a, A017153, A017153.P6335539472878830473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017155

/-! ## A017155.P1189226050001227925

`A017151(n)*A017152(n)`
-/

namespace A017155.P1189226050001227925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017151 n * A017152 n

end

end A017155.P1189226050001227925

namespace A017155

/-- `A017151(n)*A017152(n)` -/
def P1189226050001227925.Spec : Prop :=
  ∀ n, P1189226050001227925.a n = A017155 n

theorem P1189226050001227925.correct : P1189226050001227925.Spec := by
  intro n
  simp only [A017155, Nat.add_sub_cancel, A017155.P1189226050001227925.a, A017155.P1787646949839604791.a, A017151, A017151.P13179376739553888366.a, A017152, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017155

/-! ## A017155.P18281774891000284133

`A017157(n)/A017150(n)`
-/

namespace A017155.P18281774891000284133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017157 n : ℚ) / (A017150 n : ℚ)

end

end A017155.P18281774891000284133

namespace A017155

/-- `A017157(n)/A017150(n)` -/
def P18281774891000284133.Spec : Prop :=
  ∀ n, P18281774891000284133.a n = (A017155 n : ℚ)

end A017155

/-! ## A017155.P14157316370377158892

`A017151(n)²*A004771(n)`
-/

namespace A017155.P14157316370377158892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017151 n ^ 2 * A004771 n

end

end A017155.P14157316370377158892

namespace A017155

/-- `A017151(n)²*A004771(n)` -/
def P14157316370377158892.Spec : Prop :=
  ∀ n, P14157316370377158892.a n = A017155 n

theorem P14157316370377158892.correct : P14157316370377158892.Spec := by
  intro n
  simp only [A017155, Nat.add_sub_cancel, A017155.P14157316370377158892.a, A017155.P1787646949839604791.a, A004771, A004771.P15562682025386998074.a, A017151, A017151.P13179376739553888366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017155

/-! ## A017155.P1701593871497059575

`A004771(n)²*A017153(n)`
-/

namespace A017155.P1701593871497059575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n ^ 2 * A017153 n

end

end A017155.P1701593871497059575

namespace A017155

/-- `A004771(n)²*A017153(n)` -/
def P1701593871497059575.Spec : Prop :=
  ∀ n, P1701593871497059575.a n = A017155 n

theorem P1701593871497059575.correct : P1701593871497059575.Spec := by
  intro n
  simp only [A017155, Nat.add_sub_cancel, A017155.P1701593871497059575.a, A017155.P1787646949839604791.a, A004771, A004771.P15562682025386998074.a, A017153, A017153.P6335539472878830473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017155

/-! ## A017155.P16105579643061030344

`A017150(n)²*A017151(n)`
-/

namespace A017155.P16105579643061030344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n ^ 2 * A017151 n

end

end A017155.P16105579643061030344

namespace A017155

/-- `A017150(n)²*A017151(n)` -/
def P16105579643061030344.Spec : Prop :=
  ∀ n, P16105579643061030344.a n = A017155 n

theorem P16105579643061030344.correct : P16105579643061030344.Spec := by
  intro n
  simp only [A017155, Nat.add_sub_cancel, A017155.P16105579643061030344.a, A017155.P1787646949839604791.a, A017150, A017150.P5455253405257364887.a, A017151, A017151.P13179376739553888366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017155

/-! ## A017155.P8647780620970128363

`A017152(n)²/A004771(n)`
-/

namespace A017155.P8647780620970128363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017152 n ^ 2 : ℚ) / (A004771 n : ℚ)

end

end A017155.P8647780620970128363

namespace A017155

/-- `A017152(n)²/A004771(n)` -/
def P8647780620970128363.Spec : Prop :=
  ∀ n, P8647780620970128363.a n = (A017155 n : ℚ)

end A017155

/-! ## A017155.P6570310336094739373

`sqrt(A017150(n))*A017154(n)`
-/

namespace A017155.P6570310336094739373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017150 n : ℝ) * (A017154 n : ℝ)

end

end A017155.P6570310336094739373

namespace A017155

/-- `sqrt(A017150(n))*A017154(n)` -/
def P6570310336094739373.Spec : Prop :=
  ∀ n, P6570310336094739373.a n = (A017155 n : ℝ)

end A017155

/-! ## A017155.P10082859934427076055

`A017153(n)²/A017151(n)`
-/

namespace A017155.P10082859934427076055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017153 n ^ 2 : ℚ) / (A017151 n : ℚ)

end

end A017155.P10082859934427076055

namespace A017155

/-- `A017153(n)²/A017151(n)` -/
def P10082859934427076055.Spec : Prop :=
  ∀ n, P10082859934427076055.a n = (A017155 n : ℚ)

end A017155

/-! ## A017155.P4288123854033543201

`A017150(n)²²/A004771(n)`
-/

namespace A017155.P4288123854033543201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017150 n ^ 2) ^ 2 : ℚ) / (A004771 n : ℚ)

end

end A017155.P4288123854033543201

namespace A017155

/-- `A017150(n)²²/A004771(n)` -/
def P4288123854033543201.Spec : Prop :=
  ∀ n, P4288123854033543201.a n = (A017155 n : ℚ)

end A017155

/-! ## A017155.P7241193733604537530

`A017152(n)²/sqrt(A017150(n))`
-/

namespace A017155.P7241193733604537530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017152 n ^ 2 : ℝ) / Real.sqrt (A017150 n : ℝ)

end

end A017155.P7241193733604537530

namespace A017155

/-- `A017152(n)²/sqrt(A017150(n))` -/
def P7241193733604537530.Spec : Prop :=
  ∀ n, P7241193733604537530.a n = (A017155 n : ℝ)

end A017155

/-! ## A017155.P16912935666767720842

`sqrt(A017152(n))*sqrt(A017158(n))`
-/

namespace A017155.P16912935666767720842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017152 n : ℝ) * Real.sqrt (A017158 n : ℝ)

end

end A017155.P16912935666767720842

namespace A017155

/-- `sqrt(A017152(n))*sqrt(A017158(n))` -/
def P16912935666767720842.Spec : Prop :=
  ∀ n, P16912935666767720842.a n = (A017155 n : ℝ)

end A017155

/-! ## A017155.P17336808280719200445

`A017152(n)/A017153(n)*A017152(n)²`
-/

namespace A017155.P17336808280719200445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017152 n : ℚ) / (A017153 n : ℚ) * (A017152 n ^ 2 : ℚ)

end

end A017155.P17336808280719200445

namespace A017155

/-- `A017152(n)/A017153(n)*A017152(n)²` -/
def P17336808280719200445.Spec : Prop :=
  ∀ n, P17336808280719200445.a n = (A017155 n : ℚ)

end A017155

/-! ## A017155.P8478856142429834829

`A016843(Δ[n²])`
-/

namespace A017155.P8478856142429834829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016843 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017155.P8478856142429834829

namespace A017155

/-- `A016843(Δ[n²])` -/
def P8478856142429834829.Spec : Prop :=
  ∀ n, P8478856142429834829.a n = A017155 n

end A017155

/-! ## A017155.P1957520162055734730

`(8*n+7)*A016842(2*n+1)`
-/

namespace A017155.P1957520162055734730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) * A016842 (2 * n + 1)

end

end A017155.P1957520162055734730

namespace A017155

/-- `(8*n+7)*A016842(2*n+1)` -/
def P1957520162055734730.Spec : Prop :=
  ∀ n, P1957520162055734730.a n = A017155 n

theorem P1957520162055734730.correct : P1957520162055734730.Spec := by
  intro n
  simp only [A017155, Nat.add_sub_cancel, A017155.P1957520162055734730.a, A017155.P1787646949839604791.a, A016842, A016842.P16499744308022796369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017155

/-! ## A017155.P10653651495032990574

`A016839(2*n+1)²*(8*n+7)`
-/

namespace A017155.P10653651495032990574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 (2 * n + 1) ^ 2 * (8 * n + 7 : ℤ)

end

end A017155.P10653651495032990574

namespace A017155

/-- `A016839(2*n+1)²*(8*n+7)` -/
def P10653651495032990574.Spec : Prop :=
  ∀ n, P10653651495032990574.a n = A017155 n

theorem P10653651495032990574.correct : P10653651495032990574.Spec := by
  intro n
  simp only [A017155, Nat.add_sub_cancel, A017155.P10653651495032990574.a, A017155.P1787646949839604791.a, A016839, A016839.P3814509805116361627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017155

/-!
# A017156: a(n) = (8*n + 7)^8.

The programs for A017156, the canonical program `A017156.P13997126266251337187` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017156 has offset 0).

The definition of A017156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)^8` (program `A017156.P13997126266251337187`, by `A017156.P13997126266251337187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017156.P13997126266251337187

`(8*n+7)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017156

/-- `(8*n+7)^8` -/
def P13997126266251337187.Spec : Prop :=
  ∀ n, (P13997126266251337187.a n : ℤ) = A017156 n

theorem P13997126266251337187.correct : P13997126266251337187.Spec := by
  intro n
  simp only [A017156]

end A017156

/-! ## A017156.P5624691945608389762

`record[xor(7, n)^8]`
-/

namespace A017156.P5624691945608389762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017156.P5624691945608389762

namespace A017156

/-- `record[xor(7, n)^8]` -/
def P5624691945608389762.Spec : Prop :=
  ∀ n, (P5624691945608389762.a n : ℤ) = A017156 n

end A017156

/-! ## A017156.P9647272258415741551

`record[xor(7, n)²²²]`
-/

namespace A017156.P9647272258415741551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 7 n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017156.P9647272258415741551

namespace A017156

/-- `record[xor(7, n)²²²]` -/
def P9647272258415741551.Spec : Prop :=
  ∀ n, (P9647272258415741551.a n : ℤ) = A017156 n

end A017156

/-! ## A017156.P4905549787376447351

`or(3, 8*n+4)²²²`
-/

namespace A017156.P4905549787376447351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (8 * n + 4) ^ 2) ^ 2) ^ 2

end

end A017156.P4905549787376447351

namespace A017156

/-- `or(3, 8*n+4)²²²` -/
def P4905549787376447351.Spec : Prop :=
  ∀ n, (P4905549787376447351.a n : ℤ) = A017156 n

end A017156

/-! ## A017156.P14404545557228659554

`xor(3, 8*n+4)²²²`
-/

namespace A017156.P14404545557228659554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 (8 * n + 4) ^ 2) ^ 2) ^ 2

end

end A017156.P14404545557228659554

namespace A017156

/-- `xor(3, 8*n+4)²²²` -/
def P14404545557228659554.Spec : Prop :=
  ∀ n, (P14404545557228659554.a n : ℤ) = A017156 n

end A017156

/-! ## A017156.P1776015829900049602

`(or(3, Δ[(2*n)²])^4)²`
-/

namespace A017156.P1776015829900049602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4) ^ 2

end

end A017156.P1776015829900049602

namespace A017156

/-- `(or(3, Δ[(2*n)²])^4)²` -/
def P1776015829900049602.Spec : Prop :=
  ∀ n, P1776015829900049602.a n = A017156 n

end A017156

/-! ## A017156.P9321426934321605230

`(xor(3, Δ[(2*n)²])^4)²`
-/

namespace A017156.P9321426934321605230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 4) ^ 2

end

end A017156.P9321426934321605230

namespace A017156

/-- `(xor(3, Δ[(2*n)²])^4)²` -/
def P9321426934321605230.Spec : Prop :=
  ∀ n, P9321426934321605230.a n = A017156 n

end A017156

/-! ## A017156.P11774993916964626380

`(lcm(4, 2*n+1)+3)²²²`
-/

namespace A017156.P11774993916964626380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 4 (2 * n + 1) + 3) ^ 2) ^ 2) ^ 2

end

end A017156.P11774993916964626380

namespace A017156

/-- `(lcm(4, 2*n+1)+3)²²²` -/
def P11774993916964626380.Spec : Prop :=
  ∀ n, (P11774993916964626380.a n : ℤ) = A017156 n

end A017156

/-! ## A017156.P13059451059667016203

`A017152(n)²`
-/

namespace A017156.P13059451059667016203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017152 n ^ 2

end

end A017156.P13059451059667016203

namespace A017156

/-- `A017152(n)²` -/
def P13059451059667016203.Spec : Prop :=
  ∀ n, P13059451059667016203.a n = A017156 n

theorem P13059451059667016203.correct : P13059451059667016203.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P13059451059667016203.a, A017156.P13997126266251337187.a, A017152, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P11965653267629403803

`A017150(n)²²`
-/

namespace A017156.P11965653267629403803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017150 n ^ 2) ^ 2

end

end A017156.P11965653267629403803

namespace A017156

/-- `A017150(n)²²` -/
def P11965653267629403803.Spec : Prop :=
  ∀ n, P11965653267629403803.a n = A017156 n

theorem P11965653267629403803.correct : P11965653267629403803.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P11965653267629403803.a, A017156.P13997126266251337187.a, A017150, A017150.P5455253405257364887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P15205322128228324205

`(A004771(n)^4)²`
-/

namespace A017156.P15205322128228324205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n ^ 4) ^ 2

end

end A017156.P15205322128228324205

namespace A017156

/-- `(A004771(n)^4)²` -/
def P15205322128228324205.Spec : Prop :=
  ∀ n, P15205322128228324205.a n = A017156 n

theorem P15205322128228324205.correct : P15205322128228324205.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P15205322128228324205.a, A017156.P13997126266251337187.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P13590538958079265487

`(A017137(n)+1)²²²`
-/

namespace A017156.P13590538958079265487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017137 n + 1) ^ 2) ^ 2) ^ 2

end

end A017156.P13590538958079265487

namespace A017156

/-- `(A017137(n)+1)²²²` -/
def P13590538958079265487.Spec : Prop :=
  ∀ n, P13590538958079265487.a n = A017156 n

theorem P13590538958079265487.correct : P13590538958079265487.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P13590538958079265487.a, A017156.P13997126266251337187.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P6306312019978077294

`(2-A004768(n))²²²`
-/

namespace A017156.P6306312019978077294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A004768 n) ^ 2) ^ 2) ^ 2

end

end A017156.P6306312019978077294

namespace A017156

/-- `(2-A004768(n))²²²` -/
def P6306312019978077294.Spec : Prop :=
  ∀ n, P6306312019978077294.a n = A017156 n

theorem P6306312019978077294.correct : P6306312019978077294.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P6306312019978077294.a, A017156.P13997126266251337187.a, A004768, A004768.P10813831617649309423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P1486381122976819590

`(n-A017245(n))²²²`
-/

namespace A017156.P1486381122976819590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017245 n) ^ 2) ^ 2) ^ 2

end

end A017156.P1486381122976819590

namespace A017156

/-- `(n-A017245(n))²²²` -/
def P1486381122976819590.Spec : Prop :=
  ∀ n, P1486381122976819590.a n = A017156 n

theorem P1486381122976819590.correct : P1486381122976819590.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P1486381122976819590.a, A017156.P13997126266251337187.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P4379971054041627919

`(A004770(n+1)+2)²²²`
-/

namespace A017156.P4379971054041627919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004770 (n + 1) + 2) ^ 2) ^ 2) ^ 2

end

end A017156.P4379971054041627919

namespace A017156

/-- `(A004770(n+1)+2)²²²` -/
def P4379971054041627919.Spec : Prop :=
  ∀ n, P4379971054041627919.a n = A017156 n

theorem P4379971054041627919.correct : P4379971054041627919.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P4379971054041627919.a, A017156.P13997126266251337187.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P14218724328697287567

`A017150(n)*A017154(n)`
-/

namespace A017156.P14218724328697287567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n * A017154 n

end

end A017156.P14218724328697287567

namespace A017156

/-- `A017150(n)*A017154(n)` -/
def P14218724328697287567.Spec : Prop :=
  ∀ n, P14218724328697287567.a n = A017156 n

theorem P14218724328697287567.correct : P14218724328697287567.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P14218724328697287567.a, A017156.P13997126266251337187.a, A017150, A017150.P5455253405257364887.a, A017154, A017154.P5965567948319497112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P15057634602425498824

`A017151(n)*A017153(n)`
-/

namespace A017156.P15057634602425498824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017151 n * A017153 n

end

end A017156.P15057634602425498824

namespace A017156

/-- `A017151(n)*A017153(n)` -/
def P15057634602425498824.Spec : Prop :=
  ∀ n, P15057634602425498824.a n = A017156 n

theorem P15057634602425498824.correct : P15057634602425498824.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P15057634602425498824.a, A017156.P13997126266251337187.a, A017151, A017151.P13179376739553888366.a, A017153, A017153.P6335539472878830473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P8472536221416804940

`A017151(n)²*A017151(n)/A004771(n)`
-/

namespace A017156.P8472536221416804940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017151 n ^ 2 * A017151 n : ℚ) / (A004771 n : ℚ)

end

end A017156.P8472536221416804940

namespace A017156

/-- `A017151(n)²*A017151(n)/A004771(n)` -/
def P8472536221416804940.Spec : Prop :=
  ∀ n, P8472536221416804940.a n = (A017156 n : ℚ)

end A017156

/-! ## A017156.P1752715469350846588

`Δ[A033951(n)]²²²`
-/

namespace A017156.P1752715469350846588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017156.P1752715469350846588

namespace A017156

/-- `Δ[A033951(n)]²²²` -/
def P1752715469350846588.Spec : Prop :=
  ∀ n, P1752715469350846588.a n = A017156 n

theorem P1752715469350846588.correct : P1752715469350846588.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P1752715469350846588.f1, A017156.P1752715469350846588.a, A017156.P13997126266251337187.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-! ## A017156.P6302518468902081462

`Δ[A033954(n)]²²²`
-/

namespace A017156.P6302518468902081462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017156.P6302518468902081462

namespace A017156

/-- `Δ[A033954(n)]²²²` -/
def P6302518468902081462.Spec : Prop :=
  ∀ n, P6302518468902081462.a n = A017156 n

theorem P6302518468902081462.correct : P6302518468902081462.Spec := by
  intro n
  simp only [A017156, Nat.add_sub_cancel, A017156.P6302518468902081462.f1, A017156.P6302518468902081462.a, A017156.P13997126266251337187.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017156

/-!
# A017157: a(n) = (8*n + 7)^9.

The programs for A017157, the canonical program `A017157.P15206872874905280677` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017157 has offset 0).

The definition of A017157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)^9` (program `A017157.P15206872874905280677`, by `A017157.P15206872874905280677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017157.P15206872874905280677

`(8*n+7)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017157

/-- `(8*n+7)^9` -/
def P15206872874905280677.Spec : Prop :=
  ∀ n, (P15206872874905280677.a n : ℤ) = A017157 n

theorem P15206872874905280677.correct : P15206872874905280677.Spec := by
  intro n
  simp only [A017157]

end A017157

/-! ## A017157.P7870106557996547867

`record[xor(7, n)^9]`
-/

namespace A017157.P7870106557996547867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017157.P7870106557996547867

namespace A017157

/-- `record[xor(7, n)^9]` -/
def P7870106557996547867.Spec : Prop :=
  ∀ n, (P7870106557996547867.a n : ℤ) = A017157 n

end A017157

/-! ## A017157.P5412081656710568583

`sqrt(A017154(n)^3)`
-/

namespace A017157.P5412081656710568583
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017154 n ^ 3 : ℝ)

end

end A017157.P5412081656710568583

namespace A017157

/-- `sqrt(A017154(n)^3)` -/
def P5412081656710568583.Spec : Prop :=
  ∀ n, P5412081656710568583.a n = (A017157 n : ℝ)

end A017157

/-! ## A017157.P9541053126027303313

`A017150(n)*A017155(n)`
-/

namespace A017157.P9541053126027303313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n * A017155 n

end

end A017157.P9541053126027303313

namespace A017157

/-- `A017150(n)*A017155(n)` -/
def P9541053126027303313.Spec : Prop :=
  ∀ n, P9541053126027303313.a n = A017157 n

theorem P9541053126027303313.correct : P9541053126027303313.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P9541053126027303313.a, A017157.P15206872874905280677.a, A017150, A017150.P5455253405257364887.a, A017155, A017155.P1787646949839604791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P885272835788816373

`A017151(n)*A017154(n)`
-/

namespace A017157.P885272835788816373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017151 n * A017154 n

end

end A017157.P885272835788816373

namespace A017157

/-- `A017151(n)*A017154(n)` -/
def P885272835788816373.Spec : Prop :=
  ∀ n, P885272835788816373.a n = A017157 n

theorem P885272835788816373.correct : P885272835788816373.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P885272835788816373.a, A017157.P15206872874905280677.a, A017151, A017151.P13179376739553888366.a, A017154, A017154.P5965567948319497112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P11331237297144511995

`A017152(n)*A017153(n)`
-/

namespace A017157.P11331237297144511995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017152 n * A017153 n

end

end A017157.P11331237297144511995

namespace A017157

/-- `A017152(n)*A017153(n)` -/
def P11331237297144511995.Spec : Prop :=
  ∀ n, P11331237297144511995.a n = A017157 n

theorem P11331237297144511995.correct : P11331237297144511995.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P11331237297144511995.a, A017157.P15206872874905280677.a, A017152, A017152.P9456559348915766175.a, A017153, A017153.P6335539472878830473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P10502996726501742253

`A017152(n)²*A004771(n)`
-/

namespace A017157.P10502996726501742253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017152 n ^ 2 * A004771 n

end

end A017157.P10502996726501742253

namespace A017157

/-- `A017152(n)²*A004771(n)` -/
def P10502996726501742253.Spec : Prop :=
  ∀ n, P10502996726501742253.a n = A017157 n

theorem P10502996726501742253.correct : P10502996726501742253.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P10502996726501742253.a, A017157.P15206872874905280677.a, A004771, A004771.P15562682025386998074.a, A017152, A017152.P9456559348915766175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P829159637939873224

`A017150(n)²*A017153(n)`
-/

namespace A017157.P829159637939873224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017150 n ^ 2 * A017153 n

end

end A017157.P829159637939873224

namespace A017157

/-- `A017150(n)²*A017153(n)` -/
def P829159637939873224.Spec : Prop :=
  ∀ n, P829159637939873224.a n = A017157 n

theorem P829159637939873224.correct : P829159637939873224.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P829159637939873224.a, A017157.P15206872874905280677.a, A017150, A017150.P5455253405257364887.a, A017153, A017153.P6335539472878830473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P11901495705605011253

`A017153(n)²/A004771(n)`
-/

namespace A017157.P11901495705605011253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017153 n ^ 2 : ℚ) / (A004771 n : ℚ)

end

end A017157.P11901495705605011253

namespace A017157

/-- `A017153(n)²/A004771(n)` -/
def P11901495705605011253.Spec : Prop :=
  ∀ n, P11901495705605011253.a n = (A017157 n : ℚ)

end A017157

/-! ## A017157.P13975226292244245472

`sqrt(A017158(n))*A017152(n)`
-/

namespace A017157.P13975226292244245472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017158 n : ℝ) * (A017152 n : ℝ)

end

end A017157.P13975226292244245472

namespace A017157

/-- `sqrt(A017158(n))*A017152(n)` -/
def P13975226292244245472.Spec : Prop :=
  ∀ n, P13975226292244245472.a n = (A017157 n : ℝ)

end A017157

/-! ## A017157.P553789234016986993

`A017150(n)²²*A004771(n)`
-/

namespace A017157.P553789234016986993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017150 n ^ 2) ^ 2 * A004771 n

end

end A017157.P553789234016986993

namespace A017157

/-- `A017150(n)²²*A004771(n)` -/
def P553789234016986993.Spec : Prop :=
  ∀ n, P553789234016986993.a n = A017157 n

theorem P553789234016986993.correct : P553789234016986993.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P553789234016986993.a, A017157.P15206872874905280677.a, A004771, A004771.P15562682025386998074.a, A017150, A017150.P5455253405257364887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P12750104076470236921

`A017152(n)²*sqrt(A017150(n))`
-/

namespace A017157.P12750104076470236921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017152 n ^ 2 : ℝ) * Real.sqrt (A017150 n : ℝ)

end

end A017157.P12750104076470236921

namespace A017157

/-- `A017152(n)²*sqrt(A017150(n))` -/
def P12750104076470236921.Spec : Prop :=
  ∀ n, P12750104076470236921.a n = (A017157 n : ℝ)

end A017157

/-! ## A017157.P11556189048502358145

`A016845(Δ[n²])`
-/

namespace A017157.P11556189048502358145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016845 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017157.P11556189048502358145

namespace A017157

/-- `A016845(Δ[n²])` -/
def P11556189048502358145.Spec : Prop :=
  ∀ n, P11556189048502358145.a n = A017157 n

end A017157

/-! ## A017157.P15129363312978692643

`A016840(2*n+1)²*(8*n+7)`
-/

namespace A017157.P15129363312978692643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 (2 * n + 1) ^ 2 * (8 * n + 7 : ℤ)

end

end A017157.P15129363312978692643

namespace A017157

/-- `A016840(2*n+1)²*(8*n+7)` -/
def P15129363312978692643.Spec : Prop :=
  ∀ n, P15129363312978692643.a n = A017157 n

theorem P15129363312978692643.correct : P15129363312978692643.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P15129363312978692643.a, A017157.P15206872874905280677.a, A016840, A016840.P5994882750815029548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P13034382980949048854

`(8*n+7)²*A016843(2*n+1)`
-/

namespace A017157.P13034382980949048854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((8 * n + 7) ^ 2 : ℤ) * A016843 (2 * n + 1)

end

end A017157.P13034382980949048854

namespace A017157

/-- `(8*n+7)²*A016843(2*n+1)` -/
def P13034382980949048854.Spec : Prop :=
  ∀ n, P13034382980949048854.a n = A017157 n

theorem P13034382980949048854.correct : P13034382980949048854.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P13034382980949048854.a, A017157.P15206872874905280677.a, A016843, A016843.P16205903007781834454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P6674233368265105833

`A016847(2*n+1)/(8*n+7)²`
-/

namespace A017157.P6674233368265105833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 (2 * n + 1) : ℚ) / ((8 * n + 7) ^ 2 : ℚ)

end

end A017157.P6674233368265105833

namespace A017157

/-- `A016847(2*n+1)/(8*n+7)²` -/
def P6674233368265105833.Spec : Prop :=
  ∀ n, P6674233368265105833.a n = (A017157 n : ℚ)

theorem P6674233368265105833.correct : P6674233368265105833.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P6674233368265105833.a, A017157.P15206872874905280677.a, A016847, A016847.P5321093100714514550.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P8510437397041859718

`A016839(2*n+1)*A016842(2*n+1)`
-/

namespace A017157.P8510437397041859718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 (2 * n + 1) * A016842 (2 * n + 1)

end

end A017157.P8510437397041859718

namespace A017157

/-- `A016839(2*n+1)*A016842(2*n+1)` -/
def P8510437397041859718.Spec : Prop :=
  ∀ n, P8510437397041859718.a n = A017157 n

theorem P8510437397041859718.correct : P8510437397041859718.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P8510437397041859718.a, A017157.P15206872874905280677.a, A016839, A016839.P3814509805116361627.a, A016842, A016842.P16499744308022796369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P8222051660750210315

`A016840(2*n+1)*A016841(2*n+1)`
-/

namespace A017157.P8222051660750210315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016840 (2 * n + 1) * A016841 (2 * n + 1)

end

end A017157.P8222051660750210315

namespace A017157

/-- `A016840(2*n+1)*A016841(2*n+1)` -/
def P8222051660750210315.Spec : Prop :=
  ∀ n, P8222051660750210315.a n = A017157 n

theorem P8222051660750210315.correct : P8222051660750210315.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P8222051660750210315.a, A017157.P15206872874905280677.a, A016840, A016840.P5994882750815029548.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-! ## A017157.P15189235236244112567

`A016848(2*n+1)/A016839(2*n+1)`
-/

namespace A017157.P15189235236244112567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 (2 * n + 1) : ℚ) / (A016839 (2 * n + 1) : ℚ)

end

end A017157.P15189235236244112567

namespace A017157

/-- `A016848(2*n+1)/A016839(2*n+1)` -/
def P15189235236244112567.Spec : Prop :=
  ∀ n, P15189235236244112567.a n = (A017157 n : ℚ)

theorem P15189235236244112567.correct : P15189235236244112567.Spec := by
  intro n
  simp only [A017157, Nat.add_sub_cancel, A017157.P15189235236244112567.a, A017157.P15206872874905280677.a, A016839, A016839.P3814509805116361627.a, A016848, A016848.P5204700266064583920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017157

/-!
# A017158: a(n) = (8*n + 7)^10.

The programs for A017158, the canonical program `A017158.P12513206715104130306` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017158 has offset 0).

The definition of A017158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+7)^10` (program `A017158.P12513206715104130306`, by `A017158.P12513206715104130306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017158.P12513206715104130306

`(8*n+7)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017158

/-- `(8*n+7)^10` -/
def P12513206715104130306.Spec : Prop :=
  ∀ n, (P12513206715104130306.a n : ℤ) = A017158 n

theorem P12513206715104130306.correct : P12513206715104130306.Spec := by
  intro n
  simp only [A017158]

end A017158

/-! ## A017158.P8534918234040461785

`record[xor(7, n)^10]`
-/

namespace A017158.P8534918234040461785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017158.P8534918234040461785

namespace A017158

/-- `record[xor(7, n)^10]` -/
def P8534918234040461785.Spec : Prop :=
  ∀ n, (P8534918234040461785.a n : ℤ) = A017158 n

end A017158

/-! ## A017158.P3268951348196426950

`(or(3, Δ[(2*n)²])^5)²`
-/

namespace A017158.P3268951348196426950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5) ^ 2

end

end A017158.P3268951348196426950

namespace A017158

/-- `(or(3, Δ[(2*n)²])^5)²` -/
def P3268951348196426950.Spec : Prop :=
  ∀ n, P3268951348196426950.a n = A017158 n

end A017158

/-! ## A017158.P3223647656940570059

`(xor(3, Δ[(2*n)²])^5)²`
-/

namespace A017158.P3223647656940570059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5) ^ 2

end

end A017158.P3223647656940570059

namespace A017158

/-- `(xor(3, Δ[(2*n)²])^5)²` -/
def P3223647656940570059.Spec : Prop :=
  ∀ n, P3223647656940570059.a n = A017158 n

end A017158

/-! ## A017158.P3622958740370840508

`A017153(n)²`
-/

namespace A017158.P3622958740370840508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017153 n ^ 2

end

end A017158.P3622958740370840508

namespace A017158

/-- `A017153(n)²` -/
def P3622958740370840508.Spec : Prop :=
  ∀ n, P3622958740370840508.a n = A017158 n

theorem P3622958740370840508.correct : P3622958740370840508.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P3622958740370840508.a, A017158.P12513206715104130306.a, A017153, A017153.P6335539472878830473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P10831237033248829054

`(A004771(n)^5)²`
-/

namespace A017158.P10831237033248829054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n ^ 5) ^ 2

end

end A017158.P10831237033248829054

namespace A017158

/-- `(A004771(n)^5)²` -/
def P10831237033248829054.Spec : Prop :=
  ∀ n, P10831237033248829054.a n = A017158 n

theorem P10831237033248829054.correct : P10831237033248829054.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P10831237033248829054.a, A017158.P12513206715104130306.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P15917489597165267605

`sqrt(A017152(n)^5)`
-/

namespace A017158.P15917489597165267605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017152 n ^ 5 : ℝ)

end

end A017158.P15917489597165267605

namespace A017158

/-- `sqrt(A017152(n)^5)` -/
def P15917489597165267605.Spec : Prop :=
  ∀ n, P15917489597165267605.a n = (A017158 n : ℝ)

end A017158

/-! ## A017158.P4455269190301085155

`A017152(n)*A017154(n)`
-/

namespace A017158.P4455269190301085155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017152 n * A017154 n

end

end A017158.P4455269190301085155

namespace A017158

/-- `A017152(n)*A017154(n)` -/
def P4455269190301085155.Spec : Prop :=
  ∀ n, P4455269190301085155.a n = A017158 n

theorem P4455269190301085155.correct : P4455269190301085155.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P4455269190301085155.a, A017158.P12513206715104130306.a, A017152, A017152.P9456559348915766175.a, A017154, A017154.P5965567948319497112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P4386171027219433972

`sqrt(sqrt(A017156(n)))*A017156(n)`
-/

namespace A017158.P4386171027219433972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017156 n : ℝ)) * (A017156 n : ℝ)

end

end A017158.P4386171027219433972

namespace A017158

/-- `sqrt(sqrt(A017156(n)))*A017156(n)` -/
def P4386171027219433972.Spec : Prop :=
  ∀ n, P4386171027219433972.a n = (A017158 n : ℝ)

end A017158

/-! ## A017158.P4155622289047530868

`A016846(2*n+1)`
-/

namespace A017158.P4155622289047530868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016846 (2 * n + 1)

end

end A017158.P4155622289047530868

namespace A017158

/-- `A016846(2*n+1)` -/
def P4155622289047530868.Spec : Prop :=
  ∀ n, P4155622289047530868.a n = A017158 n

theorem P4155622289047530868.correct : P4155622289047530868.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P4155622289047530868.a, A017158.P12513206715104130306.a, A016846, A016846.P2352443008357000879.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P2032754215806860096

`A016841(2*n+1)²`
-/

namespace A017158.P2032754215806860096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016841 (2 * n + 1) ^ 2

end

end A017158.P2032754215806860096

namespace A017158

/-- `A016841(2*n+1)²` -/
def P2032754215806860096.Spec : Prop :=
  ∀ n, P2032754215806860096.a n = A017158 n

theorem P2032754215806860096.correct : P2032754215806860096.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P2032754215806860096.a, A017158.P12513206715104130306.a, A016841, A016841.P10215383663120285149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P6826065321203829154

`A004767(2*n+1)*A016845(2*n+1)`
-/

namespace A017158.P6826065321203829154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n + 1) * A016845 (2 * n + 1)

end

end A017158.P6826065321203829154

namespace A017158

/-- `A004767(2*n+1)*A016845(2*n+1)` -/
def P6826065321203829154.Spec : Prop :=
  ∀ n, P6826065321203829154.a n = A017158 n

theorem P6826065321203829154.correct : P6826065321203829154.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P6826065321203829154.a, A017158.P12513206715104130306.a, A004767, A004767.P13352534504447192883.a, A016845, A016845.P1544239424656120646.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P8546000322096945504

`A016848(2*n+1)/A016838(2*n+1)`
-/

namespace A017158.P8546000322096945504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 (2 * n + 1) : ℚ) / (A016838 (2 * n + 1) : ℚ)

end

end A017158.P8546000322096945504

namespace A017158

/-- `A016848(2*n+1)/A016838(2*n+1)` -/
def P8546000322096945504.Spec : Prop :=
  ∀ n, P8546000322096945504.a n = (A017158 n : ℚ)

theorem P8546000322096945504.correct : P8546000322096945504.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P8546000322096945504.a, A017158.P12513206715104130306.a, A016838, A016838.P1946869396513697861.a, A016848, A016848.P5204700266064583920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P4021912809056478135

`A016847(2*n+1)/(A016825(2*n+1)+1)`
-/

namespace A017158.P4021912809056478135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016847 (2 * n + 1) : ℚ) / (A016825 (2 * n + 1) + 1 : ℚ)

end

end A017158.P4021912809056478135

namespace A017158

/-- `A016847(2*n+1)/(A016825(2*n+1)+1)` -/
def P4021912809056478135.Spec : Prop :=
  ∀ n, P4021912809056478135.a n = (A017158 n : ℚ)

theorem P4021912809056478135.correct : P4021912809056478135.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P4021912809056478135.a, A017158.P12513206715104130306.a, A016825, A016825.P4712696052905976233.a, A016847, A016847.P5321093100714514550.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P4149958954520042274

`A016762(3*(n+1)+n)`
-/

namespace A017158.P4149958954520042274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016762 (3 * (n + 1) + n)

end

end A017158.P4149958954520042274

namespace A017158

/-- `A016762(3*(n+1)+n)` -/
def P4149958954520042274.Spec : Prop :=
  ∀ n, P4149958954520042274.a n = A017158 n

theorem P4149958954520042274.correct : P4149958954520042274.Spec := by
  intro n
  simp only [A017158, Nat.add_sub_cancel, A017158.P4149958954520042274.a, A017158.P12513206715104130306.a, A016762, A016762.P4277765179051944872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017158

/-! ## A017158.P12311662610167641473

`A008454(A004771(n))`
-/

namespace A017158.P12311662610167641473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A004771 n).toNat

end

end A017158.P12311662610167641473

namespace A017158

/-- `A008454(A004771(n))` -/
def P12311662610167641473.Spec : Prop :=
  ∀ n, P12311662610167641473.a n = A017158 n

end A017158

/-! ## A017158.P8525393286286613179

`A008454(A017353(n)-2*n)`
-/

namespace A017158.P8525393286286613179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n - (2 * n : ℤ)).toNat

end

end A017158.P8525393286286613179

namespace A017158

/-- `A008454(A017353(n)-2*n)` -/
def P8525393286286613179.Spec : Prop :=
  ∀ n, P8525393286286613179.a n = A017158 n

end A017158

/-! ## A017158.P13557042014871956964

`A008454(A017353(n)-n-n)`
-/

namespace A017158.P13557042014871956964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n - (n : ℤ) - (n : ℤ)).toNat

end

end A017158.P13557042014871956964

namespace A017158

/-- `A008454(A017353(n)-n-n)` -/
def P13557042014871956964.Spec : Prop :=
  ∀ n, P13557042014871956964.a n = A017158 n

end A017158

/-! ## A017158.P10314593134429213216

`A008454(A008591(n+1)-(n+2))`
-/

namespace A017158.P10314593134429213216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008591 (n + 1) - (n + 2 : ℤ)).toNat

end

end A017158.P10314593134429213216

namespace A017158

/-- `A008454(A008591(n+1)-(n+2))` -/
def P10314593134429213216.Spec : Prop :=
  ∀ n, P10314593134429213216.a n = A017158 n

end A017158

/-!
# A017159: 

The programs for A017159, there is no canonical definition to state claims against.
-/

/-! ## A017159.P4335888309688400801

`(8*n+7)^11`
-/

namespace A017159.P4335888309688400801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 7) ^ 11

end

end A017159.P4335888309688400801

/-! ## A017159.P4697650348119658115

`A016847(2*n+1)`
-/

namespace A017159.P4697650348119658115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016847 (2 * n + 1)

end

end A017159.P4697650348119658115

/-! ## A017159.P15756987921097277244

`A016848(2*n+1)/A004767(2*n+1)`
-/

namespace A017159.P15756987921097277244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016848 (2 * n + 1) : ℚ) / (A004767 (2 * n + 1) : ℚ)

end

end A017159.P15756987921097277244

/-! ## A017159.P9765803222171818375

`A016838(2*n+1)²²*A016839(2*n+1)`
-/

namespace A017159.P9765803222171818375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016838 (2 * n + 1) ^ 2) ^ 2 * A016839 (2 * n + 1)

end

end A017159.P9765803222171818375

/-! ## A017159.P6119569879474358197

`A016839(2*n+1)²²/A004767(2*n+1)`
-/

namespace A017159.P6119569879474358197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016839 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A004767 (2 * n + 1) : ℚ)

end

end A017159.P6119569879474358197

/-! ## A017159.P13823407770369659600

`A016838(2*n+1)/A016839(2*n+1)*A016848(2*n+1)`
-/

namespace A017159.P13823407770369659600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016838 (2 * n + 1) : ℚ) / (A016839 (2 * n + 1) : ℚ) * (A016848 (2 * n + 1) : ℚ)

end

end A017159.P13823407770369659600

/-! ## A017159.P16193601292400998407

`sqrt(A017150(n)^11)`
-/

namespace A017159.P16193601292400998407
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017150 n ^ 11 : ℝ)

end

end A017159.P16193601292400998407

/-! ## A017159.P903827811008356747

`A016763(3*(n+1)+n)`
-/

namespace A017159.P903827811008356747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (3 * (n + 1) + n)

end

end A017159.P903827811008356747

/-! ## A017159.P5911173177043560865

`record[A004448(n)^11]`
-/

namespace A017159.P5911173177043560865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n ^ 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017159.P5911173177043560865

/-! ## A017159.P10231159248508008977

`A008455(A016813(2*n+1)+2)`
-/

namespace A017159.P10231159248508008977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1) + 2).toNat

end

end A017159.P10231159248508008977

/-! ## A017159.P14412484859571866467

`A008455(A008591(n+1)-(n+2))`
-/

namespace A017159.P14412484859571866467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 (n + 1) - (n + 2 : ℤ)).toNat

end

end A017159.P14412484859571866467

/-! ## A017159.P18173644342810203530

`A008455(A008588(n+1)+2*n+1)`
-/

namespace A017159.P18173644342810203530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A017159.P18173644342810203530

/-! ## A017159.P8832367535745466078

`A000578(A004771(n))²²/A004771(n)`
-/

namespace A017159.P8832367535745466078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000578 (A004771 n).toNat ^ 2) ^ 2 : ℚ) / (A004771 n : ℚ)

end

end A017159.P8832367535745466078

/-!
# A017160: 

The programs for A017160, there is no canonical definition to state claims against.
-/

/-! ## A017160.P342193807475213052

`(8*n+7)^12`
-/

namespace A017160.P342193807475213052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 7) ^ 12

end

end A017160.P342193807475213052

/-! ## A017160.P3858901265129861870

`record[(xor(7, n)^6)²]`
-/

namespace A017160.P3858901265129861870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 7 n ^ 6) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017160.P3858901265129861870

/-! ## A017160.P3714123690098624068

`A017154(n)²`
-/

namespace A017160.P3714123690098624068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017154 n ^ 2

end

end A017160.P3714123690098624068

/-! ## A017160.P7267491514272526591

`(A004771(n)^6)²`
-/

namespace A017160.P7267491514272526591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n ^ 6) ^ 2

end

end A017160.P7267491514272526591

/-! ## A017160.P9702947151176485782

`sqrt(A017156(n))*A017156(n)`
-/

namespace A017160.P9702947151176485782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017156 n : ℝ) * (A017156 n : ℝ)

end

end A017160.P9702947151176485782

/-! ## A017160.P3927160438350925196

`A016848(2*n+1)`
-/

namespace A017160.P3927160438350925196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016848 (2 * n + 1)

end

end A017160.P3927160438350925196

/-! ## A017160.P3891764320170600610

`(A016825(2*n+1)+1)*A016847(2*n+1)`
-/

namespace A017160.P3891764320170600610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 (2 * n + 1) + 1) * A016847 (2 * n + 1)

end

end A017160.P3891764320170600610

/-! ## A017160.P12906951022469569957

`A016764(3*(n+1)+n)`
-/

namespace A017160.P12906951022469569957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (3 * (n + 1) + n)

end

end A017160.P12906951022469569957

/-! ## A017160.P8430198072555712784

`A016755(3*(n+1)+n)²²`
-/

namespace A017160.P8430198072555712784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016755 (3 * (n + 1) + n) ^ 2) ^ 2

end

end A017160.P8430198072555712784

/-! ## A017160.P1935704359465132083

`sqrt(A017156(n)^3)`
-/

namespace A017160.P1935704359465132083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017156 n ^ 3 : ℝ)

end

end A017160.P1935704359465132083

/-! ## A017160.P15151341881970042022

`A008456(2*A004767(n)+1)`
-/

namespace A017160.P15151341881970042022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 * A004767 n + 1).toNat

end

end A017160.P15151341881970042022

/-! ## A017160.P13283960766809700866

`A000578(A017137(n)+1)²²`
-/

namespace A017160.P13283960766809700866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017137 n + 1).toNat ^ 2) ^ 2

end

end A017160.P13283960766809700866

/-! ## A017160.P3237232236818586135

`A008456(A008591(n+1)-(n+2))`
-/

namespace A017160.P3237232236818586135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008591 (n + 1) - (n + 2 : ℤ)).toNat

end

end A017160.P3237232236818586135

/-! ## A017160.P7151636347540849396

`A008456(A008588(n+1)+2*n+1)`
-/

namespace A017160.P7151636347540849396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008588 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A017160.P7151636347540849396

/-! ## A017160.P11765066547200508905

`A008456(A004767(n)+A004767(n)+1)`
-/

namespace A017160.P11765066547200508905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 n + (A004767 n + 1)).toNat

end

end A017160.P11765066547200508905

/-!
# A017161: Expansion of g.f. 1/((1 - 3*x)*(1 - 4*x)*(1 - 12*x)).

The programs for A017161, the canonical program `A017161.P1050315990214919050` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017161 has offset 0).

The definition of A017161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017161.P1050315990214919050

`3^n-2*4^n+2*12^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017161

/-- `3^n-2*4^n+2*12^n` -/
def P1050315990214919050.Spec : Prop :=
  ∀ n, P1050315990214919050.a n = A017161 n

theorem P1050315990214919050.correct : P1050315990214919050.Spec := by
  intro n
  simp only [A017161]

end A017161

/-! ## A017161.P15701041694797567227

`or(1, A024023(n)*A087289(n))`
-/

namespace A017161.P15701041694797567227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024023 n * A087289 n)

end

end A017161.P15701041694797567227

namespace A017161

/-- `or(1, A024023(n)*A087289(n))` -/
def P15701041694797567227.Spec : Prop :=
  ∀ n, P15701041694797567227.a n = A017161 n

end A017161

/-! ## A017161.P2608612580312337939

`or(A000302(n)*A100774(n), A000244(n))`
-/

namespace A017161.P2608612580312337939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000302 n * A100774 n) (A000244 n)

end

end A017161.P2608612580312337939

namespace A017161

/-- `or(A000302(n)*A100774(n), A000244(n))` -/
def P2608612580312337939.Spec : Prop :=
  ∀ n, P2608612580312337939.a n = A017161 n

end A017161

/-! ## A017161.P14451038862320191791

`xor(A024023(n)*A087289(n), A033999(n)²)`
-/

namespace A017161.P14451038862320191791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024023 n * A087289 n) (A033999 n ^ 2)

end

end A017161.P14451038862320191791

namespace A017161

/-- `xor(A024023(n)*A087289(n), A033999(n)²)` -/
def P14451038862320191791.Spec : Prop :=
  ∀ n, P14451038862320191791.a n = A017161 n

end A017161

/-! ## A017161.P7738901599396092409

`xor(A024023(n)*A087289(n), A178334(n)!)`
-/

namespace A017161.P7738901599396092409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024023 n * A087289 n) (Nat.factorial (A178334 n).toNat : ℤ)

end

end A017161.P7738901599396092409

namespace A017161

/-- `xor(A024023(n)*A087289(n), A178334(n)!)` -/
def P7738901599396092409.Spec : Prop :=
  ∀ n, P7738901599396092409.a n = A017161 n

end A017161

/-! ## A017161.P12396059032262156517

`xor(A024023(n)*A087289(n), A083914(2*n+1)!)`
-/

namespace A017161.P12396059032262156517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024023 n * A087289 n) (Nat.factorial (A083914 (2 * n + 1)).toNat : ℤ)

end

end A017161.P12396059032262156517

namespace A017161

/-- `xor(A024023(n)*A087289(n), A083914(2*n+1)!)` -/
def P12396059032262156517.Spec : Prop :=
  ∀ n, P12396059032262156517.a n = A017161 n

end A017161

/-! ## A017161.P13298075207373950313

`Δ[A016227(n)-A016217(n)]`
-/

namespace A017161.P13298075207373950313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016227 n - A016217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017161.P13298075207373950313

namespace A017161

/-- `Δ[A016227(n)-A016217(n)]` -/
def P13298075207373950313.Spec : Prop :=
  ∀ n, P13298075207373950313.a n = A017161 n

end A017161

/-!
# A017162: a(n) = (9*n)^2.

The programs for A017162, the canonical program `A017162.P6667471947735084138` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017162 has offset 0).

The definition of A017162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)²` (program `A017162.P6667471947735084138`, by `A017162.P6667471947735084138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017162.P6667471947735084138

`(9*n)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017162

/-- `(9*n)²` -/
def P6667471947735084138.Spec : Prop :=
  ∀ n, (P6667471947735084138.a n : ℤ) = A017162 n

theorem P6667471947735084138.correct : P6667471947735084138.Spec := by
  intro n
  simp only [A017162]

end A017162

/-!
# A017163: a(n) = (9*n)^3.

The programs for A017163, the canonical program `A017163.P1984859547303529045` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017163 has offset 0).

The definition of A017163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)^3` (program `A017163.P1984859547303529045`, by `A017163.P1984859547303529045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017163.P1984859547303529045

`(9*n)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017163

/-- `(9*n)^3` -/
def P1984859547303529045.Spec : Prop :=
  ∀ n, (P1984859547303529045.a n : ℤ) = A017163 n

theorem P1984859547303529045.correct : P1984859547303529045.Spec := by
  intro n
  simp only [A017163]

end A017163

/-!
# A017164: a(n) = (9*n)^4.

The programs for A017164, the canonical program `A017164.P6970888053113650580` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017164 has offset 0).

The definition of A017164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)^4` (program `A017164.P6970888053113650580`, by `A017164.P6970888053113650580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017164.P6970888053113650580

`(9*n)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017164

/-- `(9*n)^4` -/
def P6970888053113650580.Spec : Prop :=
  ∀ n, (P6970888053113650580.a n : ℤ) = A017164 n

theorem P6970888053113650580.correct : P6970888053113650580.Spec := by
  intro n
  simp only [A017164]

end A017164

/-!
# A017165: a(n) = (9*n)^5.

The programs for A017165, the canonical program `A017165.P15935359928024042543` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017165 has offset 0).

The definition of A017165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)^5` (program `A017165.P15935359928024042543`, by `A017165.P15935359928024042543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017165.P15935359928024042543

`(9*n)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017165

/-- `(9*n)^5` -/
def P15935359928024042543.Spec : Prop :=
  ∀ n, (P15935359928024042543.a n : ℤ) = A017165 n

theorem P15935359928024042543.correct : P15935359928024042543.Spec := by
  intro n
  simp only [A017165]

end A017165

/-!
# A017166: a(n) = (9*n)^6.

The programs for A017166, the canonical program `A017166.P18283713474183829970` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017166 has offset 0).

The definition of A017166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)^6` (program `A017166.P18283713474183829970`, by `A017166.P18283713474183829970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017166.P18283713474183829970

`(9*n)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017166

/-- `(9*n)^6` -/
def P18283713474183829970.Spec : Prop :=
  ∀ n, (P18283713474183829970.a n : ℤ) = A017166 n

theorem P18283713474183829970.correct : P18283713474183829970.Spec := by
  intro n
  simp only [A017166]

end A017166

/-!
# A017167: a(n) = (9*n)^7.

The programs for A017167, the canonical program `A017167.P2202351763465710140` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017167 has offset 0).

The definition of A017167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)^7` (program `A017167.P2202351763465710140`, by `A017167.P2202351763465710140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017167.P2202351763465710140

`(9*n)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017167

/-- `(9*n)^7` -/
def P2202351763465710140.Spec : Prop :=
  ∀ n, (P2202351763465710140.a n : ℤ) = A017167 n

theorem P2202351763465710140.correct : P2202351763465710140.Spec := by
  intro n
  simp only [A017167]

end A017167

/-!
# A017168: a(n) = (9*n)^8.

The programs for A017168, the canonical program `A017168.P18078902862616352790` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017168 has offset 0).

The definition of A017168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)^8` (program `A017168.P18078902862616352790`, by `A017168.P18078902862616352790.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017168.P18078902862616352790

`(9*n)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017168

/-- `(9*n)^8` -/
def P18078902862616352790.Spec : Prop :=
  ∀ n, (P18078902862616352790.a n : ℤ) = A017168 n

theorem P18078902862616352790.correct : P18078902862616352790.Spec := by
  intro n
  simp only [A017168]

end A017168

/-!
# A017169: a(n) = (9*n)^9.

The programs for A017169, the canonical program `A017169.P9757236352231475159` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017169 has offset 0).

The definition of A017169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)^9` (program `A017169.P9757236352231475159`, by `A017169.P9757236352231475159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017169.P9757236352231475159

`(9*n)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017169

/-- `(9*n)^9` -/
def P9757236352231475159.Spec : Prop :=
  ∀ n, (P9757236352231475159.a n : ℤ) = A017169 n

theorem P9757236352231475159.correct : P9757236352231475159.Spec := by
  intro n
  simp only [A017169]

end A017169

/-!
# A017170: a(n) = (9*n)^10.

The programs for A017170, the canonical program `A017170.P16332035307021061113` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017170 has offset 0).

The definition of A017170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n)^10` (program `A017170.P16332035307021061113`, by `A017170.P16332035307021061113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017170.P16332035307021061113

`(9*n)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017170

/-- `(9*n)^10` -/
def P16332035307021061113.Spec : Prop :=
  ∀ n, (P16332035307021061113.a n : ℤ) = A017170 n

theorem P16332035307021061113.correct : P16332035307021061113.Spec := by
  intro n
  simp only [A017170]

end A017170

/-!
# A017171: 

The programs for A017171, there is no canonical definition to state claims against.
-/

/-! ## A017171.P10275361647005364010

`(9*n)^11`
-/

namespace A017171.P10275361647005364010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n) ^ 11

end

end A017171.P10275361647005364010

/-!
# A017172: 

The programs for A017172, there is no canonical definition to state claims against.
-/

/-! ## A017172.P303601411145386696

`(9*n)^12`
-/

namespace A017172.P303601411145386696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n) ^ 12

end

end A017172.P303601411145386696

/-!
# A017173: a(n) = 9*n + 1.

The programs for A017173, the canonical program `A017173.P17951010485655810208` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017173 has offset 0).

The definition of A017173 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n+1` (program `A017173.P17951010485655810208`, by `A017173.P17951010485655810208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017173.P17951010485655810208

`9*n+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017173

/-- `9*n+1` -/
def P17951010485655810208.Spec : Prop :=
  ∀ n, (P17951010485655810208.a n : ℤ) = A017173 n

theorem P17951010485655810208.correct : P17951010485655810208.Spec := by
  intro n
  simp only [A017173]

end A017173

/-!
# A017174: a(n) = (9*n + 1)^2.

The programs for A017174, the canonical program `A017174.P535117563143043293` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017174 has offset 0).

The definition of A017174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)²` (program `A017174.P535117563143043293`, by `A017174.P535117563143043293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017174.P535117563143043293

`(9*n+1)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017174

/-- `(9*n+1)²` -/
def P535117563143043293.Spec : Prop :=
  ∀ n, (P535117563143043293.a n : ℤ) = A017174 n

theorem P535117563143043293.correct : P535117563143043293.Spec := by
  intro n
  simp only [A017174]

end A017174

/-! ## A017174.P16811315719419725163

`filter[n², dr(sqrt(#))]`
-/

namespace A017174.P16811315719419725163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (f1 j : ℝ))) = 1) n)

end

end A017174.P16811315719419725163

namespace A017174

/-- `filter[n², dr(sqrt(#))]` -/
def P16811315719419725163.Spec : Prop :=
  ∀ n, (P16811315719419725163.a n : ℤ) = A017174 n

end A017174

/-! ## A017174.P6808925447364701041

`filter[n², sqrt(#)%9]`
-/

namespace A017174.P6808925447364701041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (f1 j : ℝ))) 9 = 1) n)

end

end A017174.P6808925447364701041

namespace A017174

/-- `filter[n², sqrt(#)%9]` -/
def P6808925447364701041.Spec : Prop :=
  ∀ n, (P6808925447364701041.a n : ℤ) = A017174 n

end A017174

/-! ## A017174.P3990775880199820969

`record[(gcd(9, 1-n)+n)²]`
-/

namespace A017174.P3990775880199820969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017174.P3990775880199820969

namespace A017174

/-- `record[(gcd(9, 1-n)+n)²]` -/
def P3990775880199820969.Spec : Prop :=
  ∀ n, (P3990775880199820969.a n : ℤ) = A017174 n

end A017174

/-! ## A017174.P2610311423210002574

`record[gcd(n+1, n%9)²]`
-/

namespace A017174.P2610311423210002574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 9) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017174.P2610311423210002574

namespace A017174

/-- `record[gcd(n+1, n%9)²]` -/
def P2610311423210002574.Spec : Prop :=
  ∀ n, (P2610311423210002574.a n : ℤ) = A017174 n

end A017174

/-! ## A017174.P7373320990958393597

`sqrt(abs(xor(9*n, -1)^4))`
-/

namespace A017174.P7373320990958393597
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|Int.xor (9 * n : ℤ) (-1) ^ 4| : ℝ)

end

end A017174.P7373320990958393597

namespace A017174

/-- `sqrt(abs(xor(9*n, -1)^4))` -/
def P7373320990958393597.Spec : Prop :=
  ∀ n, P7373320990958393597.a n = (A017174 n : ℝ)

end A017174

/-! ## A017174.P15660169534691968682

`record[((n+1)/dr(n+1))²]`
-/

namespace A017174.P15660169534691968682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017174.P15660169534691968682

namespace A017174

/-- `record[((n+1)/dr(n+1))²]` -/
def P15660169534691968682.Spec : Prop :=
  ∀ n, P15660169534691968682.a n = (A017174 n : ℚ)

end A017174

/-! ## A017174.P16591001720918888640

`record[(n+3)^(3-dr(n+3))]`
-/

namespace A017174.P16591001720918888640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (3 - (SequenceMachineLib.digitalRoot (n + 3 : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017174.P16591001720918888640

namespace A017174

/-- `record[(n+3)^(3-dr(n+3))]` -/
def P16591001720918888640.Spec : Prop :=
  ∀ n, P16591001720918888640.a n = (A017174 n : ℚ)

end A017174

/-! ## A017174.P11216847409747782731

`record[((n-1)/dr(1-n)!)²]`
-/

namespace A017174.P11216847409747782731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / (Nat.factorial (SequenceMachineLib.digitalRoot (1 - (n : ℤ))) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017174.P11216847409747782731

namespace A017174

/-- `record[((n-1)/dr(1-n)!)²]` -/
def P11216847409747782731.Spec : Prop :=
  ∀ n, P11216847409747782731.a n = (A017174 n : ℚ)

end A017174

/-! ## A017174.P6445430134596542426

`record[(2-dr(1-n))*(1-n)²]`
-/

namespace A017174.P6445430134596542426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℤ)) * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017174.P6445430134596542426

namespace A017174

/-- `record[(2-dr(1-n))*(1-n)²]` -/
def P6445430134596542426.Spec : Prop :=
  ∀ n, P6445430134596542426.a n = A017174 n

end A017174

/-! ## A017174.P13403036242059152080

`record[(dr(n+1)/(n+1))^-2]`
-/

namespace A017174.P13403036242059152080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)) ^ (-2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017174.P13403036242059152080

namespace A017174

/-- `record[(dr(n+1)/(n+1))^-2]` -/
def P13403036242059152080.Spec : Prop :=
  ∀ n, P13403036242059152080.a n = (A017174 n : ℚ)

end A017174

/-! ## A017174.P6628173065503139928

`record[((n-1)^(2-dr(1-n)))²]`
-/

namespace A017174.P6628173065503139928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) ^ (2 - (SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℤ) : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017174.P6628173065503139928

namespace A017174

/-- `record[((n-1)^(2-dr(1-n)))²]` -/
def P6628173065503139928.Spec : Prop :=
  ∀ n, P6628173065503139928.a n = (A017174 n : ℚ)

end A017174

/-! ## A017174.P15766636125484107095

`sqrt(A017176(n))`
-/

namespace A017174.P15766636125484107095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017176 n : ℝ)

end

end A017174.P15766636125484107095

namespace A017174

/-- `sqrt(A017176(n))` -/
def P15766636125484107095.Spec : Prop :=
  ∀ n, P15766636125484107095.a n = (A017174 n : ℝ)

end A017174

/-! ## A017174.P7108084963758282488

`sqrt(sqrt(A017180(n)))`
-/

namespace A017174.P7108084963758282488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017180 n : ℝ))

end

end A017174.P7108084963758282488

namespace A017174

/-- `sqrt(sqrt(A017180(n)))` -/
def P7108084963758282488.Spec : Prop :=
  ∀ n, P7108084963758282488.a n = (A017174 n : ℝ)

end A017174

/-! ## A017174.P13322308166834908123

`A017178(n)^(1/3)`
-/

namespace A017174.P13322308166834908123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017178 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017174.P13322308166834908123

namespace A017174

/-- `A017178(n)^(1/3)` -/
def P13322308166834908123.Spec : Prop :=
  ∀ n, P13322308166834908123.a n = (A017174 n : ℝ)

end A017174

/-! ## A017174.P3436524857573997964

`A017175(n)^(2/3)`
-/

namespace A017174.P3436524857573997964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017175 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017174.P3436524857573997964

namespace A017174

/-- `A017175(n)^(2/3)` -/
def P3436524857573997964.Spec : Prop :=
  ∀ n, P3436524857573997964.a n = (A017174 n : ℝ)

end A017174

/-! ## A017174.P4644141869775935458

`A161705(n)+A017162(n)`
-/

namespace A017174.P4644141869775935458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A017162 n

end

end A017174.P4644141869775935458

namespace A017174

/-- `A161705(n)+A017162(n)` -/
def P4644141869775935458.Spec : Prop :=
  ∀ n, P4644141869775935458.a n = A017174 n

theorem P4644141869775935458.correct : P4644141869775935458.Spec := by
  intro n
  simp only [A017174, Nat.add_sub_cancel, A017174.P4644141869775935458.a, A017174.P535117563143043293.a, A017162, A017162.P6667471947735084138.a, A161705, A161705.P9285490780148837046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017174

/-! ## A017174.P12064551755863378137

`A158776(n)+A098850(n)`
-/

namespace A017174.P12064551755863378137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158776 n + A098850 n

end

end A017174.P12064551755863378137

namespace A017174

/-- `A158776(n)+A098850(n)` -/
def P12064551755863378137.Spec : Prop :=
  ∀ n, P12064551755863378137.a n = A017174 n

theorem P12064551755863378137.correct : P12064551755863378137.Spec := by
  intro n
  simp only [A017174, Nat.add_sub_cancel, A017174.P12064551755863378137.a, A017174.P535117563143043293.a, A098850, A098850.P17400619238635245445.a, A158776, A158776.P10609333151299409575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017174

/-! ## A017174.P12726057361594169587

`A158769(n)+A140681(n)`
-/

namespace A017174.P12726057361594169587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158769 n + A140681 n

end

end A017174.P12726057361594169587

namespace A017174

/-- `A158769(n)+A140681(n)` -/
def P12726057361594169587.Spec : Prop :=
  ∀ n, P12726057361594169587.a n = A017174 n

theorem P12726057361594169587.correct : P12726057361594169587.Spec := by
  intro n
  simp only [A017174, Nat.add_sub_cancel, A017174.P12726057361594169587.a, A017174.P535117563143043293.a, A140681, A140681.P11404641493444198903.a, A158769, A158769.P8246194158660311525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017174

/-! ## A017174.P5908440825197527843

`A158740(n)+A147651(n)`
-/

namespace A017174.P5908440825197527843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158740 n + A147651 n

end

end A017174.P5908440825197527843

namespace A017174

/-- `A158740(n)+A147651(n)` -/
def P5908440825197527843.Spec : Prop :=
  ∀ n, P5908440825197527843.a n = A017174 n

theorem P5908440825197527843.correct : P5908440825197527843.Spec := by
  intro n
  simp only [A017174, Nat.add_sub_cancel, A017174.P5908440825197527843.a, A017174.P535117563143043293.a, A147651, A147651.P5567796470201540316.a, A158740, A158740.P13242228449475372307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017174

/-!
# A017175: a(n) = (9*n + 1)^3.

The programs for A017175, the canonical program `A017175.P17761920211285965587` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017175 has offset 0).

The definition of A017175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)^3` (program `A017175.P17761920211285965587`, by `A017175.P17761920211285965587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017175.P17761920211285965587

`(9*n+1)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017175

/-- `(9*n+1)^3` -/
def P17761920211285965587.Spec : Prop :=
  ∀ n, (P17761920211285965587.a n : ℤ) = A017175 n

theorem P17761920211285965587.correct : P17761920211285965587.Spec := by
  intro n
  simp only [A017175]

end A017175

/-! ## A017175.P15648361038202117736

`sqrt(abs(xor(9*n, -1)^6))`
-/

namespace A017175.P15648361038202117736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|Int.xor (9 * n : ℤ) (-1) ^ 6| : ℝ)

end

end A017175.P15648361038202117736

namespace A017175

/-- `sqrt(abs(xor(9*n, -1)^6))` -/
def P15648361038202117736.Spec : Prop :=
  ∀ n, P15648361038202117736.a n = (A017175 n : ℝ)

end A017175

/-! ## A017175.P13067696007534908015

`record[(1-dr(n)²+n)^3]`
-/

namespace A017175.P13067696007534908015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ) + (n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017175.P13067696007534908015

namespace A017175

/-- `record[(1-dr(n)²+n)^3]` -/
def P13067696007534908015.Spec : Prop :=
  ∀ n, P13067696007534908015.a n = A017175 n

end A017175

/-! ## A017175.P1784259167052955605

`record[((n+1)/dr(n+1))^3]`
-/

namespace A017175.P1784259167052955605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017175.P1784259167052955605

namespace A017175

/-- `record[((n+1)/dr(n+1))^3]` -/
def P1784259167052955605.Spec : Prop :=
  ∀ n, P1784259167052955605.a n = (A017175 n : ℚ)

end A017175

/-! ## A017175.P827885538222665404

`record[(n-2)^(4-dr(2-n)²)]`
-/

namespace A017175.P827885538222665404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (4 - (SequenceMachineLib.digitalRoot (2 - (n : ℤ)) ^ 2 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017175.P827885538222665404

namespace A017175

/-- `record[(n-2)^(4-dr(2-n)²)]` -/
def P827885538222665404.Spec : Prop :=
  ∀ n, P827885538222665404.a n = (A017175 n : ℚ)

end A017175

/-! ## A017175.P16084500540516885325

`record[(n+2-dr(n+1)!)^3]`
-/

namespace A017175.P16084500540516885325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (Nat.factorial (SequenceMachineLib.digitalRoot (n + 1 : ℤ)) : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017175.P16084500540516885325

namespace A017175

/-- `record[(n+2-dr(n+1)!)^3]` -/
def P16084500540516885325.Spec : Prop :=
  ∀ n, P16084500540516885325.a n = A017175 n

end A017175

/-! ## A017175.P18116518554542072316

`sqrt(A017178(n))`
-/

namespace A017175.P18116518554542072316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017178 n : ℝ)

end

end A017175.P18116518554542072316

namespace A017175

/-- `sqrt(A017178(n))` -/
def P18116518554542072316.Spec : Prop :=
  ∀ n, P18116518554542072316.a n = (A017175 n : ℝ)

end A017175

/-! ## A017175.P13553434040254848217

`sqrt(A017174(n)^3)`
-/

namespace A017175.P13553434040254848217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017174 n ^ 3 : ℝ)

end

end A017175.P13553434040254848217

namespace A017175

/-- `sqrt(A017174(n)^3)` -/
def P13553434040254848217.Spec : Prop :=
  ∀ n, P13553434040254848217.a n = (A017175 n : ℝ)

end A017175

/-! ## A017175.P12700516300220264933

`A017173(n)*(9*n+1)²`
-/

namespace A017175.P12700516300220264933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n * ((9 * n + 1) ^ 2 : ℤ)

end

end A017175.P12700516300220264933

namespace A017175

/-- `A017173(n)*(9*n+1)²` -/
def P12700516300220264933.Spec : Prop :=
  ∀ n, P12700516300220264933.a n = A017175 n

theorem P12700516300220264933.correct : P12700516300220264933.Spec := by
  intro n
  simp only [A017175, Nat.add_sub_cancel, A017175.P12700516300220264933.a, A017175.P17761920211285965587.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017175

/-! ## A017175.P16400369449049044501

`A017176(n)/A017173(n)`
-/

namespace A017175.P16400369449049044501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017176 n : ℚ) / (A017173 n : ℚ)

end

end A017175.P16400369449049044501

namespace A017175

/-- `A017176(n)/A017173(n)` -/
def P16400369449049044501.Spec : Prop :=
  ∀ n, P16400369449049044501.a n = (A017175 n : ℚ)

end A017175

/-! ## A017175.P4005564628453836303

`A017177(n)/A017174(n)`
-/

namespace A017175.P4005564628453836303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017177 n : ℚ) / (A017174 n : ℚ)

end

end A017175.P4005564628453836303

namespace A017175

/-- `A017177(n)/A017174(n)` -/
def P4005564628453836303.Spec : Prop :=
  ∀ n, P4005564628453836303.a n = (A017175 n : ℚ)

end A017175

/-! ## A017175.P7646484014193772833

`A017177(n)/A017173(n)²`
-/

namespace A017175.P7646484014193772833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017177 n : ℚ) / (A017173 n ^ 2 : ℚ)

end

end A017175.P7646484014193772833

namespace A017175

/-- `A017177(n)/A017173(n)²` -/
def P7646484014193772833.Spec : Prop :=
  ∀ n, P7646484014193772833.a n = (A017175 n : ℚ)

end A017175

/-! ## A017175.P12328533232048080950

`A017176(n)²/A017177(n)`
-/

namespace A017175.P12328533232048080950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017176 n ^ 2 : ℚ) / (A017177 n : ℚ)

end

end A017175.P12328533232048080950

namespace A017175

/-- `A017176(n)²/A017177(n)` -/
def P12328533232048080950.Spec : Prop :=
  ∀ n, P12328533232048080950.a n = (A017175 n : ℚ)

end A017175

/-! ## A017175.P1525911505678477389

`A017187(2*n)/8`
-/

namespace A017175.P1525911505678477389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017187 (2 * n) : ℚ) / 8

end

end A017175.P1525911505678477389

namespace A017175

/-- `A017187(2*n)/8` -/
def P1525911505678477389.Spec : Prop :=
  ∀ n, P1525911505678477389.a n = (A017175 n : ℚ)

theorem P1525911505678477389.correct : P1525911505678477389.Spec := by
  intro n
  simp only [A017175, Nat.add_sub_cancel, A017175.P1525911505678477389.a, A017175.P17761920211285965587.a, A017187, A017187.P4396294377249438443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017175

/-! ## A017175.P16641942242251375276

`A056020(2*n+1)*A061099(2*n+1)`
-/

namespace A017175.P16641942242251375276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (2 * n + 1) * A061099 (2 * n + 1)

end

end A017175.P16641942242251375276

namespace A017175

/-- `A056020(2*n+1)*A061099(2*n+1)` -/
def P16641942242251375276.Spec : Prop :=
  ∀ n, P16641942242251375276.a n = A017175 n

end A017175

/-! ## A017175.P923541484570502793

`A061099(2*n+1)*A301451(2*n+1)`
-/

namespace A017175.P923541484570502793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061099 (2 * n + 1) * A301451 (2 * n + 1)

end

end A017175.P923541484570502793

namespace A017175

/-- `A061099(2*n+1)*A301451(2*n+1)` -/
def P923541484570502793.Spec : Prop :=
  ∀ n, P923541484570502793.a n = A017175 n

end A017175

/-! ## A017175.P11606430367039940176

`A087444(2*n+1)²*A087444(2*n+1)`
-/

namespace A017175.P11606430367039940176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (2 * n + 1) ^ 2 * A087444 (2 * n + 1)

end

end A017175.P11606430367039940176

namespace A017175

/-- `A087444(2*n+1)²*A087444(2*n+1)` -/
def P11606430367039940176.Spec : Prop :=
  ∀ n, P11606430367039940176.a n = A017175 n

end A017175

/-! ## A017175.P2275473539772271194

`A090570(2*(n+1))²*A090570(2*(n+1))`
-/

namespace A017175.P2275473539772271194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (2 * (n + 1)) ^ 2 * A090570 (2 * (n + 1))

end

end A017175.P2275473539772271194

namespace A017175

/-- `A090570(2*(n+1))²*A090570(2*(n+1))` -/
def P2275473539772271194.Spec : Prop :=
  ∀ n, P2275473539772271194.a n = A017175 n

end A017175

/-! ## A017175.P14618645081749684274

`A166524(2*n+1)²*A166524(2*n+1)`
-/

namespace A017175.P14618645081749684274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (2 * n + 1) ^ 2 * A166524 (2 * n + 1)

end

end A017175.P14618645081749684274

namespace A017175

/-- `A166524(2*n+1)²*A166524(2*n+1)` -/
def P14618645081749684274.Spec : Prop :=
  ∀ n, P14618645081749684274.a n = A017175 n

end A017175

/-! ## A017175.P4914093404786469084

`A168416(2*n+1)²*A168416(2*n+1)`
-/

namespace A017175.P4914093404786469084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168416 (2 * n + 1) ^ 2 * A168416 (2 * n + 1)

end

end A017175.P4914093404786469084

namespace A017175

/-- `A168416(2*n+1)²*A168416(2*n+1)` -/
def P4914093404786469084.Spec : Prop :=
  ∀ n, P4914093404786469084.a n = A017175 n

end A017175

/-!
# A017176: a(n) = (9n+1)^4.

The programs for A017176, the canonical program `A017176.P11939921797285185825` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017176 has offset 0).

The definition of A017176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)^4` (program `A017176.P11939921797285185825`, by `A017176.P11939921797285185825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017176.P11939921797285185825

`(9*n+1)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017176

/-- `(9*n+1)^4` -/
def P11939921797285185825.Spec : Prop :=
  ∀ n, (P11939921797285185825.a n : ℤ) = A017176 n

theorem P11939921797285185825.correct : P11939921797285185825.Spec := by
  intro n
  simp only [A017176]

end A017176

/-! ## A017176.P6643897381961343391

`xor(9*n, -1)²²`
-/

namespace A017176.P6643897381961343391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (9 * n : ℤ) (-1) ^ 2) ^ 2

end

end A017176.P6643897381961343391

namespace A017176

/-- `xor(9*n, -1)²²` -/
def P6643897381961343391.Spec : Prop :=
  ∀ n, P6643897381961343391.a n = A017176 n

end A017176

/-! ## A017176.P5879945171432248035

`(lcm(3, 9*n)+1)²²`
-/

namespace A017176.P5879945171432248035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 (9 * n) + 1) ^ 2) ^ 2

end

end A017176.P5879945171432248035

namespace A017176

/-- `(lcm(3, 9*n)+1)²²` -/
def P5879945171432248035.Spec : Prop :=
  ∀ n, (P5879945171432248035.a n : ℤ) = A017176 n

end A017176

/-! ## A017176.P10334300618623759283

`abs(xor(9*n, -1)^4)`
-/

namespace A017176.P10334300618623759283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (9 * n : ℤ) (-1) ^ 4|

end

end A017176.P10334300618623759283

namespace A017176

/-- `abs(xor(9*n, -1)^4)` -/
def P10334300618623759283.Spec : Prop :=
  ∀ n, P10334300618623759283.a n = A017176 n

end A017176

/-! ## A017176.P16700246390164632978

`(or(1, 8*n)+n)²²`
-/

namespace A017176.P16700246390164632978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (8 * n) + n) ^ 2) ^ 2

end

end A017176.P16700246390164632978

namespace A017176

/-- `(or(1, 8*n)+n)²²` -/
def P16700246390164632978.Spec : Prop :=
  ∀ n, (P16700246390164632978.a n : ℤ) = A017176 n

end A017176

/-! ## A017176.P18133677887943203012

`(xor(1, 8*n)+n)²²`
-/

namespace A017176.P18133677887943203012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (8 * n) + n) ^ 2) ^ 2

end

end A017176.P18133677887943203012

namespace A017176

/-- `(xor(1, 8*n)+n)²²` -/
def P18133677887943203012.Spec : Prop :=
  ∀ n, (P18133677887943203012.a n : ℤ) = A017176 n

end A017176

/-! ## A017176.P18398824631977096647

`Δ[9*C(n, 2)+n]²²`
-/

namespace A017176.P18398824631977096647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017176.P18398824631977096647

namespace A017176

/-- `Δ[9*C(n, 2)+n]²²` -/
def P18398824631977096647.Spec : Prop :=
  ∀ n, P18398824631977096647.a n = A017176 n

theorem P18398824631977096647.correct : P18398824631977096647.Spec := by
  intro n
  simp only [A017176, Nat.add_sub_cancel, A017176.P18398824631977096647.f1, A017176.P18398824631977096647.a, A017176.P11939921797285185825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017176

/-! ## A017176.P15911956894110771071

`record[n+1-dr(n)²]²²`
-/

namespace A017176.P15911956894110771071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A017176.P15911956894110771071

namespace A017176

/-- `record[n+1-dr(n)²]²²` -/
def P15911956894110771071.Spec : Prop :=
  ∀ n, P15911956894110771071.a n = A017176 n

end A017176

/-! ## A017176.P13482696554145835556

`filter[n^dr((n+1)²), dr(#)]`
-/

namespace A017176.P13482696554145835556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n)

end

end A017176.P13482696554145835556

namespace A017176

/-- `filter[n^dr((n+1)²), dr(#)]` -/
def P13482696554145835556.Spec : Prop :=
  ∀ n, (P13482696554145835556.a n : ℤ) = A017176 n

end A017176

/-! ## A017176.P3247031873242069755

`record[((n+1)/dr(n+1))^4]`
-/

namespace A017176.P3247031873242069755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017176.P3247031873242069755

namespace A017176

/-- `record[((n+1)/dr(n+1))^4]` -/
def P3247031873242069755.Spec : Prop :=
  ∀ n, P3247031873242069755.a n = (A017176 n : ℚ)

end A017176

/-! ## A017176.P5422210975336089328

`(9*n%Δ[n²]+1)²²`
-/

namespace A017176.P5422210975336089328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((9 * Int.tmod (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1) ^ 2) ^ 2

end

end A017176.P5422210975336089328

namespace A017176

/-- `(9*n%Δ[n²]+1)²²` -/
def P5422210975336089328.Spec : Prop :=
  ∀ n, P5422210975336089328.a n = A017176 n

end A017176

/-! ## A017176.P15268861315624263345

`record[((n+1)/dr(n+1))²²]`
-/

namespace A017176.P15268861315624263345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017176.P15268861315624263345

namespace A017176

/-- `record[((n+1)/dr(n+1))²²]` -/
def P15268861315624263345.Spec : Prop :=
  ∀ n, P15268861315624263345.a n = (A017176 n : ℚ)

end A017176

/-! ## A017176.P13703904212329397023

`record[((n-1)/dr(1-n)!)^4]`
-/

namespace A017176.P13703904212329397023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / (Nat.factorial (SequenceMachineLib.digitalRoot (1 - (n : ℤ))) : ℚ)) ^ 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017176.P13703904212329397023

namespace A017176

/-- `record[((n-1)/dr(1-n)!)^4]` -/
def P13703904212329397023.Spec : Prop :=
  ∀ n, P13703904212329397023.a n = (A017176 n : ℚ)

end A017176

/-! ## A017176.P1908345678341884871

`filter[2*n+1+n, dr(#)]²²`
-/

namespace A017176.P1908345678341884871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n) ^ 2) ^ 2

end

end A017176.P1908345678341884871

namespace A017176

/-- `filter[2*n+1+n, dr(#)]²²` -/
def P1908345678341884871.Spec : Prop :=
  ∀ n, (P1908345678341884871.a n : ℤ) = A017176 n

end A017176

/-! ## A017176.P3656808167460618539

`record[((n-1)/dr(1-n)!)²²]`
-/

namespace A017176.P3656808167460618539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - 1 : ℚ) / (Nat.factorial (SequenceMachineLib.digitalRoot (1 - (n : ℤ))) : ℚ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017176.P3656808167460618539

namespace A017176

/-- `record[((n-1)/dr(1-n)!)²²]` -/
def P3656808167460618539.Spec : Prop :=
  ∀ n, P3656808167460618539.a n = (A017176 n : ℚ)

end A017176

/-! ## A017176.P12771931210041361478

`A017174(n)²`
-/

namespace A017176.P12771931210041361478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n ^ 2

end

end A017176.P12771931210041361478

namespace A017176

/-- `A017174(n)²` -/
def P12771931210041361478.Spec : Prop :=
  ∀ n, P12771931210041361478.a n = A017176 n

theorem P12771931210041361478.correct : P12771931210041361478.Spec := by
  intro n
  simp only [A017176, Nat.add_sub_cancel, A017176.P12771931210041361478.a, A017176.P11939921797285185825.a, A017174, A017174.P535117563143043293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017176

/-! ## A017176.P4373123782356757226

`sqrt(A017180(n))`
-/

namespace A017176.P4373123782356757226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017180 n : ℝ)

end

end A017176.P4373123782356757226

namespace A017176

/-- `sqrt(A017180(n))` -/
def P4373123782356757226.Spec : Prop :=
  ∀ n, P4373123782356757226.a n = (A017176 n : ℝ)

end A017176

/-! ## A017176.P2839144405083382872

`A017173(n)²²`
-/

namespace A017176.P2839144405083382872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017173 n ^ 2) ^ 2

end

end A017176.P2839144405083382872

namespace A017176

/-- `A017173(n)²²` -/
def P2839144405083382872.Spec : Prop :=
  ∀ n, P2839144405083382872.a n = A017176 n

theorem P2839144405083382872.correct : P2839144405083382872.Spec := by
  intro n
  simp only [A017176, Nat.add_sub_cancel, A017176.P2839144405083382872.a, A017176.P11939921797285185825.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017176

/-! ## A017176.P17092687938146741786

`(A008591(n)+1)²²`
-/

namespace A017176.P17092687938146741786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008591 n + 1) ^ 2) ^ 2

end

end A017176.P17092687938146741786

namespace A017176

/-- `(A008591(n)+1)²²` -/
def P17092687938146741786.Spec : Prop :=
  ∀ n, P17092687938146741786.a n = A017176 n

theorem P17092687938146741786.correct : P17092687938146741786.Spec := by
  intro n
  simp only [A017176, Nat.add_sub_cancel, A017176.P17092687938146741786.a, A017176.P11939921797285185825.a, A008591, A008591.P8937864482545511630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017176

/-! ## A017176.P2051618676199736354

`(1-A017185(n))²²`
-/

namespace A017176.P2051618676199736354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017185 n) ^ 2) ^ 2

end

end A017176.P2051618676199736354

namespace A017176

/-- `(1-A017185(n))²²` -/
def P2051618676199736354.Spec : Prop :=
  ∀ n, P2051618676199736354.a n = A017176 n

theorem P2051618676199736354.correct : P2051618676199736354.Spec := by
  intro n
  simp only [A017176, Nat.add_sub_cancel, A017176.P2051618676199736354.a, A017176.P11939921797285185825.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017176

/-!
# A017177: a(n) = (9n+1)^5.

The programs for A017177, the canonical program `A017177.P12669259020752557172` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017177 has offset 0).

The definition of A017177 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)^5` (program `A017177.P12669259020752557172`, by `A017177.P12669259020752557172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017177.P12669259020752557172

`(9*n+1)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017177

/-- `(9*n+1)^5` -/
def P12669259020752557172.Spec : Prop :=
  ∀ n, (P12669259020752557172.a n : ℤ) = A017177 n

theorem P12669259020752557172.correct : P12669259020752557172.Spec := by
  intro n
  simp only [A017177]

end A017177

/-! ## A017177.P12047931474197800396

`filter[n^5, dr(#)]`
-/

namespace A017177.P12047931474197800396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n)

end

end A017177.P12047931474197800396

namespace A017177

/-- `filter[n^5, dr(#)]` -/
def P12047931474197800396.Spec : Prop :=
  ∀ n, (P12047931474197800396.a n : ℤ) = A017177 n

end A017177

/-! ## A017177.P18202143509630293777

`filter[n^5, #%9]`
-/

namespace A017177.P18202143509630293777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 9 = 1) n)

end

end A017177.P18202143509630293777

namespace A017177

/-- `filter[n^5, #%9]` -/
def P18202143509630293777.Spec : Prop :=
  ∀ n, (P18202143509630293777.a n : ℤ) = A017177 n

end A017177

/-! ## A017177.P2520741171863750493

`abs(xor(9*n, -1)^5)`
-/

namespace A017177.P2520741171863750493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (9 * n : ℤ) (-1) ^ 5|

end

end A017177.P2520741171863750493

namespace A017177

/-- `abs(xor(9*n, -1)^5)` -/
def P2520741171863750493.Spec : Prop :=
  ∀ n, P2520741171863750493.a n = A017177 n

end A017177

/-! ## A017177.P4585095585419801803

`-xor(9*n, -1)^5`
-/

namespace A017177.P4585095585419801803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (9 * n : ℤ) (-1) ^ 5)

end

end A017177.P4585095585419801803

namespace A017177

/-- `-xor(9*n, -1)^5` -/
def P4585095585419801803.Spec : Prop :=
  ∀ n, P4585095585419801803.a n = A017177 n

end A017177

/-! ## A017177.P13953874815557513066

`record[(n+1)^(gcd(9, n)-4)]`
-/

namespace A017177.P13953874815557513066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 9 n : ℤ) - 4 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017177.P13953874815557513066

namespace A017177

/-- `record[(n+1)^(gcd(9, n)-4)]` -/
def P13953874815557513066.Spec : Prop :=
  ∀ n, P13953874815557513066.a n = (A017177 n : ℚ)

end A017177

/-! ## A017177.P10083675876917177027

`record[(n+1-dr(n)²)^5]`
-/

namespace A017177.P10083675876917177027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017177.P10083675876917177027

namespace A017177

/-- `record[(n+1-dr(n)²)^5]` -/
def P10083675876917177027.Spec : Prop :=
  ∀ n, P10083675876917177027.a n = A017177 n

end A017177

/-! ## A017177.P14185466239669817152

`record[((n+1)/dr(n+1))^5]`
-/

namespace A017177.P14185466239669817152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017177.P14185466239669817152

namespace A017177

/-- `record[((n+1)/dr(n+1))^5]` -/
def P14185466239669817152.Spec : Prop :=
  ∀ n, P14185466239669817152.a n = (A017177 n : ℚ)

end A017177

/-! ## A017177.P8311378231438436550

`sqrt(A017182(n))`
-/

namespace A017177.P8311378231438436550
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017182 n : ℝ)

end

end A017177.P8311378231438436550

namespace A017177

/-- `sqrt(A017182(n))` -/
def P8311378231438436550.Spec : Prop :=
  ∀ n, P8311378231438436550.a n = (A017177 n : ℝ)

end A017177

/-! ## A017177.P14566542170670942566

`sqrt(A017174(n)^5)`
-/

namespace A017177.P14566542170670942566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017174 n ^ 5 : ℝ)

end

end A017177.P14566542170670942566

namespace A017177

/-- `sqrt(A017174(n)^5)` -/
def P14566542170670942566.Spec : Prop :=
  ∀ n, P14566542170670942566.a n = (A017177 n : ℝ)

end A017177

/-! ## A017177.P2714413291942492684

`abs((A008592(n)+1-n)^5)`
-/

namespace A017177.P2714413291942492684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A008592 n + 1 - (n : ℤ)) ^ 5|

end

end A017177.P2714413291942492684

namespace A017177

/-- `abs((A008592(n)+1-n)^5)` -/
def P2714413291942492684.Spec : Prop :=
  ∀ n, P2714413291942492684.a n = A017177 n

end A017177

/-! ## A017177.P6717346951133825013

`A017173(n)*A017176(n)`
-/

namespace A017177.P6717346951133825013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n * A017176 n

end

end A017177.P6717346951133825013

namespace A017177

/-- `A017173(n)*A017176(n)` -/
def P6717346951133825013.Spec : Prop :=
  ∀ n, P6717346951133825013.a n = A017177 n

theorem P6717346951133825013.correct : P6717346951133825013.Spec := by
  intro n
  simp only [A017177, Nat.add_sub_cancel, A017177.P6717346951133825013.a, A017177.P12669259020752557172.a, A017173, A017173.P17951010485655810208.a, A017176, A017176.P11939921797285185825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017177

/-! ## A017177.P8953769133159767958

`A017174(n)*A017175(n)`
-/

namespace A017177.P8953769133159767958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n * A017175 n

end

end A017177.P8953769133159767958

namespace A017177

/-- `A017174(n)*A017175(n)` -/
def P8953769133159767958.Spec : Prop :=
  ∀ n, P8953769133159767958.a n = A017177 n

theorem P8953769133159767958.correct : P8953769133159767958.Spec := by
  intro n
  simp only [A017177, Nat.add_sub_cancel, A017177.P8953769133159767958.a, A017177.P12669259020752557172.a, A017174, A017174.P535117563143043293.a, A017175, A017175.P17761920211285965587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017177

/-! ## A017177.P7602821277684970470

`A017178(n)/A017173(n)`
-/

namespace A017177.P7602821277684970470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017178 n : ℚ) / (A017173 n : ℚ)

end

end A017177.P7602821277684970470

namespace A017177

/-- `A017178(n)/A017173(n)` -/
def P7602821277684970470.Spec : Prop :=
  ∀ n, P7602821277684970470.a n = (A017177 n : ℚ)

end A017177

/-! ## A017177.P8132056111744886080

`A017174(n)²*A017173(n)`
-/

namespace A017177.P8132056111744886080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n ^ 2 * A017173 n

end

end A017177.P8132056111744886080

namespace A017177

/-- `A017174(n)²*A017173(n)` -/
def P8132056111744886080.Spec : Prop :=
  ∀ n, P8132056111744886080.a n = A017177 n

theorem P8132056111744886080.correct : P8132056111744886080.Spec := by
  intro n
  simp only [A017177, Nat.add_sub_cancel, A017177.P8132056111744886080.a, A017177.P12669259020752557172.a, A017173, A017173.P17951010485655810208.a, A017174, A017174.P535117563143043293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017177

/-! ## A017177.P8171352214162174162

`A017173(n)²*A017175(n)`
-/

namespace A017177.P8171352214162174162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n ^ 2 * A017175 n

end

end A017177.P8171352214162174162

namespace A017177

/-- `A017173(n)²*A017175(n)` -/
def P8171352214162174162.Spec : Prop :=
  ∀ n, P8171352214162174162.a n = A017177 n

theorem P8171352214162174162.correct : P8171352214162174162.Spec := by
  intro n
  simp only [A017177, Nat.add_sub_cancel, A017177.P8171352214162174162.a, A017177.P12669259020752557172.a, A017173, A017173.P17951010485655810208.a, A017175, A017175.P17761920211285965587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017177

/-! ## A017177.P3859028336447179

`A017176(n)²/A017175(n)`
-/

namespace A017177.P3859028336447179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017176 n ^ 2 : ℚ) / (A017175 n : ℚ)

end

end A017177.P3859028336447179

namespace A017177

/-- `A017176(n)²/A017175(n)` -/
def P3859028336447179.Spec : Prop :=
  ∀ n, P3859028336447179.a n = (A017177 n : ℚ)

end A017177

/-! ## A017177.P6342583140527861523

`A061099(2*n+1)²*A056020(2*n+1)`
-/

namespace A017177.P6342583140527861523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061099 (2 * n + 1) ^ 2 * A056020 (2 * n + 1)

end

end A017177.P6342583140527861523

namespace A017177

/-- `A061099(2*n+1)²*A056020(2*n+1)` -/
def P6342583140527861523.Spec : Prop :=
  ∀ n, P6342583140527861523.a n = A017177 n

end A017177

/-! ## A017177.P3257045335386648920

`A061099(2*n+1)²*A301451(2*n+1)`
-/

namespace A017177.P3257045335386648920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061099 (2 * n + 1) ^ 2 * A301451 (2 * n + 1)

end

end A017177.P3257045335386648920

namespace A017177

/-- `A061099(2*n+1)²*A301451(2*n+1)` -/
def P3257045335386648920.Spec : Prop :=
  ∀ n, P3257045335386648920.a n = A017177 n

end A017177

/-! ## A017177.P7572339928367842507

`A087444(2*n+1)²²*A087444(2*n+1)`
-/

namespace A017177.P7572339928367842507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087444 (2 * n + 1) ^ 2) ^ 2 * A087444 (2 * n + 1)

end

end A017177.P7572339928367842507

namespace A017177

/-- `A087444(2*n+1)²²*A087444(2*n+1)` -/
def P7572339928367842507.Spec : Prop :=
  ∀ n, P7572339928367842507.a n = A017177 n

end A017177

/-!
# A017178: a(n) = (9*n + 1)^6.

The programs for A017178, the canonical program `A017178.P10355223303590725020` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017178 has offset 0).

The definition of A017178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)^6` (program `A017178.P10355223303590725020`, by `A017178.P10355223303590725020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017178.P10355223303590725020

`(9*n+1)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017178

/-- `(9*n+1)^6` -/
def P10355223303590725020.Spec : Prop :=
  ∀ n, (P10355223303590725020.a n : ℤ) = A017178 n

theorem P10355223303590725020.correct : P10355223303590725020.Spec := by
  intro n
  simp only [A017178]

end A017178

/-! ## A017178.P7091222114272125717

`(xor(9*n, -1)^3)²`
-/

namespace A017178.P7091222114272125717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (9 * n : ℤ) (-1) ^ 3) ^ 2

end

end A017178.P7091222114272125717

namespace A017178

/-- `(xor(9*n, -1)^3)²` -/
def P7091222114272125717.Spec : Prop :=
  ∀ n, P7091222114272125717.a n = A017178 n

end A017178

/-! ## A017178.P18326206699521506434

`abs(xor(9*n, -1)^6)`
-/

namespace A017178.P18326206699521506434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (9 * n : ℤ) (-1) ^ 6|

end

end A017178.P18326206699521506434

namespace A017178

/-- `abs(xor(9*n, -1)^6)` -/
def P18326206699521506434.Spec : Prop :=
  ∀ n, P18326206699521506434.a n = A017178 n

end A017178

/-! ## A017178.P1664371873296300041

`record[(n+1)^(gcd(9, n)-3)]`
-/

namespace A017178.P1664371873296300041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.gcd 9 n : ℤ) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017178.P1664371873296300041

namespace A017178

/-- `record[(n+1)^(gcd(9, n)-3)]` -/
def P1664371873296300041.Spec : Prop :=
  ∀ n, P1664371873296300041.a n = (A017178 n : ℚ)

end A017178

/-! ## A017178.P10912056113837989238

`record[((n+1)/dr(n+1))^6]`
-/

namespace A017178.P10912056113837989238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017178.P10912056113837989238

namespace A017178

/-- `record[((n+1)/dr(n+1))^6]` -/
def P10912056113837989238.Spec : Prop :=
  ∀ n, P10912056113837989238.a n = (A017178 n : ℚ)

end A017178

/-! ## A017178.P11521462341922554787

`A017175(n)²`
-/

namespace A017178.P11521462341922554787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017175 n ^ 2

end

end A017178.P11521462341922554787

namespace A017178

/-- `A017175(n)²` -/
def P11521462341922554787.Spec : Prop :=
  ∀ n, P11521462341922554787.a n = A017178 n

theorem P11521462341922554787.correct : P11521462341922554787.Spec := by
  intro n
  simp only [A017178, Nat.add_sub_cancel, A017178.P11521462341922554787.a, A017178.P10355223303590725020.a, A017175, A017175.P17761920211285965587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017178

/-! ## A017178.P15120097630612434281

`(A017173(n)^3)²`
-/

namespace A017178.P15120097630612434281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017173 n ^ 3) ^ 2

end

end A017178.P15120097630612434281

namespace A017178

/-- `(A017173(n)^3)²` -/
def P15120097630612434281.Spec : Prop :=
  ∀ n, P15120097630612434281.a n = A017178 n

theorem P15120097630612434281.correct : P15120097630612434281.Spec := by
  intro n
  simp only [A017178, Nat.add_sub_cancel, A017178.P15120097630612434281.a, A017178.P10355223303590725020.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017178

/-! ## A017178.P9913898176666275850

`A017173(n)*A017177(n)`
-/

namespace A017178.P9913898176666275850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n * A017177 n

end

end A017178.P9913898176666275850

namespace A017178

/-- `A017173(n)*A017177(n)` -/
def P9913898176666275850.Spec : Prop :=
  ∀ n, P9913898176666275850.a n = A017178 n

theorem P9913898176666275850.correct : P9913898176666275850.Spec := by
  intro n
  simp only [A017178, Nat.add_sub_cancel, A017178.P9913898176666275850.a, A017178.P10355223303590725020.a, A017173, A017173.P17951010485655810208.a, A017177, A017177.P12669259020752557172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017178

/-! ## A017178.P2953169291775939532

`A017174(n)*A017176(n)`
-/

namespace A017178.P2953169291775939532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n * A017176 n

end

end A017178.P2953169291775939532

namespace A017178

/-- `A017174(n)*A017176(n)` -/
def P2953169291775939532.Spec : Prop :=
  ∀ n, P2953169291775939532.a n = A017178 n

theorem P2953169291775939532.correct : P2953169291775939532.Spec := by
  intro n
  simp only [A017178, Nat.add_sub_cancel, A017178.P2953169291775939532.a, A017178.P10355223303590725020.a, A017174, A017174.P535117563143043293.a, A017176, A017176.P11939921797285185825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017178

/-! ## A017178.P18132562992667370483

`(A017173(n)*A017174(n))²`
-/

namespace A017178.P18132562992667370483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017173 n * A017174 n) ^ 2

end

end A017178.P18132562992667370483

namespace A017178

/-- `(A017173(n)*A017174(n))²` -/
def P18132562992667370483.Spec : Prop :=
  ∀ n, P18132562992667370483.a n = A017178 n

theorem P18132562992667370483.correct : P18132562992667370483.Spec := by
  intro n
  simp only [A017178, Nat.add_sub_cancel, A017178.P18132562992667370483.a, A017178.P10355223303590725020.a, A017173, A017173.P17951010485655810208.a, A017174, A017174.P535117563143043293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017178

/-! ## A017178.P4571996408757839810

`A017173(n)²*A017176(n)`
-/

namespace A017178.P4571996408757839810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n ^ 2 * A017176 n

end

end A017178.P4571996408757839810

namespace A017178

/-- `A017173(n)²*A017176(n)` -/
def P4571996408757839810.Spec : Prop :=
  ∀ n, P4571996408757839810.a n = A017178 n

theorem P4571996408757839810.correct : P4571996408757839810.Spec := by
  intro n
  simp only [A017178, Nat.add_sub_cancel, A017178.P4571996408757839810.a, A017178.P10355223303590725020.a, A017173, A017173.P17951010485655810208.a, A017176, A017176.P11939921797285185825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017178

/-! ## A017178.P4248853534191093944

`(A017177(n)/A017174(n))²`
-/

namespace A017178.P4248853534191093944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017177 n : ℚ) / (A017174 n : ℚ)) ^ 2

end

end A017178.P4248853534191093944

namespace A017178

/-- `(A017177(n)/A017174(n))²` -/
def P4248853534191093944.Spec : Prop :=
  ∀ n, P4248853534191093944.a n = (A017178 n : ℚ)

end A017178

/-! ## A017178.P17568847026217775764

`A017177(n)²/A017176(n)`
-/

namespace A017178.P17568847026217775764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017177 n ^ 2 : ℚ) / (A017176 n : ℚ)

end

end A017178.P17568847026217775764

namespace A017178

/-- `A017177(n)²/A017176(n)` -/
def P17568847026217775764.Spec : Prop :=
  ∀ n, P17568847026217775764.a n = (A017178 n : ℚ)

end A017178

/-! ## A017178.P12146620128247841367

`A017180(n)/sqrt(sqrt(A017180(n)))`
-/

namespace A017178.P12146620128247841367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017180 n : ℝ) / Real.sqrt (Real.sqrt (A017180 n : ℝ))

end

end A017178.P12146620128247841367

namespace A017178

/-- `A017180(n)/sqrt(sqrt(A017180(n)))` -/
def P12146620128247841367.Spec : Prop :=
  ∀ n, P12146620128247841367.a n = (A017178 n : ℝ)

end A017178

/-! ## A017178.P1512885406042220297

`(Δ[A051682(n)]^3)²`
-/

namespace A017178.P1512885406042220297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017178.P1512885406042220297

namespace A017178

/-- `(Δ[A051682(n)]^3)²` -/
def P1512885406042220297.Spec : Prop :=
  ∀ n, P1512885406042220297.a n = A017178 n

end A017178

/-! ## A017178.P3146584861099443986

`(Δ[A117625(n)]^3)²`
-/

namespace A017178.P3146584861099443986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017178.P3146584861099443986

namespace A017178

/-- `(Δ[A117625(n)]^3)²` -/
def P3146584861099443986.Spec : Prop :=
  ∀ n, P3146584861099443986.a n = A017178 n

end A017178

/-! ## A017178.P741610119221158896

`(A056020(2*n+1)*A061099(2*n+1))²`
-/

namespace A017178.P741610119221158896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056020 (2 * n + 1) * A061099 (2 * n + 1)) ^ 2

end

end A017178.P741610119221158896

namespace A017178

/-- `(A056020(2*n+1)*A061099(2*n+1))²` -/
def P741610119221158896.Spec : Prop :=
  ∀ n, P741610119221158896.a n = A017178 n

end A017178

/-! ## A017178.P8357744294154396281

`(A061099(2*n+1)*A301451(2*n+1))²`
-/

namespace A017178.P8357744294154396281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061099 (2 * n + 1) * A301451 (2 * n + 1)) ^ 2

end

end A017178.P8357744294154396281

namespace A017178

/-- `(A061099(2*n+1)*A301451(2*n+1))²` -/
def P8357744294154396281.Spec : Prop :=
  ∀ n, P8357744294154396281.a n = A017178 n

end A017178

/-! ## A017178.P15017335302652052625

`(A087444(2*n+1)²*A087444(2*n+1))²`
-/

namespace A017178.P15017335302652052625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087444 (2 * n + 1) ^ 2 * A087444 (2 * n + 1)) ^ 2

end

end A017178.P15017335302652052625

namespace A017178

/-- `(A087444(2*n+1)²*A087444(2*n+1))²` -/
def P15017335302652052625.Spec : Prop :=
  ∀ n, P15017335302652052625.a n = A017178 n

end A017178

/-! ## A017178.P5934174781022194914

`(A166524(2*n+1)²*A166524(2*n+1))²`
-/

namespace A017178.P5934174781022194914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166524 (2 * n + 1) ^ 2 * A166524 (2 * n + 1)) ^ 2

end

end A017178.P5934174781022194914

namespace A017178

/-- `(A166524(2*n+1)²*A166524(2*n+1))²` -/
def P5934174781022194914.Spec : Prop :=
  ∀ n, P5934174781022194914.a n = A017178 n

end A017178

/-!
# A017179: a(n) = (9n+1)^7.

The programs for A017179, the canonical program `A017179.P8943642833756065113` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017179 has offset 0).

The definition of A017179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)^7` (program `A017179.P8943642833756065113`, by `A017179.P8943642833756065113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017179.P8943642833756065113

`(9*n+1)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017179

/-- `(9*n+1)^7` -/
def P8943642833756065113.Spec : Prop :=
  ∀ n, (P8943642833756065113.a n : ℤ) = A017179 n

theorem P8943642833756065113.correct : P8943642833756065113.Spec := by
  intro n
  simp only [A017179]

end A017179

/-! ## A017179.P8509684640760511100

`filter[n^7, dr(#)]`
-/

namespace A017179.P8509684640760511100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n)

end

end A017179.P8509684640760511100

namespace A017179

/-- `filter[n^7, dr(#)]` -/
def P8509684640760511100.Spec : Prop :=
  ∀ n, (P8509684640760511100.a n : ℤ) = A017179 n

end A017179

/-! ## A017179.P14099121301884567410

`filter[n^7, #%9]`
-/

namespace A017179.P14099121301884567410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 9 = 1) n)

end

end A017179.P14099121301884567410

namespace A017179

/-- `filter[n^7, #%9]` -/
def P14099121301884567410.Spec : Prop :=
  ∀ n, (P14099121301884567410.a n : ℤ) = A017179 n

end A017179

/-! ## A017179.P4796980527766925300

`record[((n+1)/dr(n+1))^7]`
-/

namespace A017179.P4796980527766925300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017179.P4796980527766925300

namespace A017179

/-- `record[((n+1)/dr(n+1))^7]` -/
def P4796980527766925300.Spec : Prop :=
  ∀ n, P4796980527766925300.a n = (A017179 n : ℚ)

end A017179

/-! ## A017179.P1436500709519460672

`A017173(n)*A017178(n)`
-/

namespace A017179.P1436500709519460672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n * A017178 n

end

end A017179.P1436500709519460672

namespace A017179

/-- `A017173(n)*A017178(n)` -/
def P1436500709519460672.Spec : Prop :=
  ∀ n, P1436500709519460672.a n = A017179 n

theorem P1436500709519460672.correct : P1436500709519460672.Spec := by
  intro n
  simp only [A017179, Nat.add_sub_cancel, A017179.P1436500709519460672.a, A017179.P8943642833756065113.a, A017173, A017173.P17951010485655810208.a, A017178, A017178.P10355223303590725020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017179

/-! ## A017179.P15783760622880432283

`A017174(n)*A017177(n)`
-/

namespace A017179.P15783760622880432283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n * A017177 n

end

end A017179.P15783760622880432283

namespace A017179

/-- `A017174(n)*A017177(n)` -/
def P15783760622880432283.Spec : Prop :=
  ∀ n, P15783760622880432283.a n = A017179 n

theorem P15783760622880432283.correct : P15783760622880432283.Spec := by
  intro n
  simp only [A017179, Nat.add_sub_cancel, A017179.P15783760622880432283.a, A017179.P8943642833756065113.a, A017174, A017174.P535117563143043293.a, A017177, A017177.P12669259020752557172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017179

/-! ## A017179.P1849555658064050106

`A017175(n)*A017176(n)`
-/

namespace A017179.P1849555658064050106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017175 n * A017176 n

end

end A017179.P1849555658064050106

namespace A017179

/-- `A017175(n)*A017176(n)` -/
def P1849555658064050106.Spec : Prop :=
  ∀ n, P1849555658064050106.a n = A017179 n

theorem P1849555658064050106.correct : P1849555658064050106.Spec := by
  intro n
  simp only [A017179, Nat.add_sub_cancel, A017179.P1849555658064050106.a, A017179.P8943642833756065113.a, A017175, A017175.P17761920211285965587.a, A017176, A017176.P11939921797285185825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017179

/-! ## A017179.P17195159432703177232

`A017175(n)²*A017173(n)`
-/

namespace A017179.P17195159432703177232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017175 n ^ 2 * A017173 n

end

end A017179.P17195159432703177232

namespace A017179

/-- `A017175(n)²*A017173(n)` -/
def P17195159432703177232.Spec : Prop :=
  ∀ n, P17195159432703177232.a n = A017179 n

theorem P17195159432703177232.correct : P17195159432703177232.Spec := by
  intro n
  simp only [A017179, Nat.add_sub_cancel, A017179.P17195159432703177232.a, A017179.P8943642833756065113.a, A017173, A017173.P17951010485655810208.a, A017175, A017175.P17761920211285965587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017179

/-! ## A017179.P14161710887547268154

`A017174(n)²*A017175(n)`
-/

namespace A017179.P14161710887547268154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n ^ 2 * A017175 n

end

end A017179.P14161710887547268154

namespace A017179

/-- `A017174(n)²*A017175(n)` -/
def P14161710887547268154.Spec : Prop :=
  ∀ n, P14161710887547268154.a n = A017179 n

theorem P14161710887547268154.correct : P14161710887547268154.Spec := by
  intro n
  simp only [A017179, Nat.add_sub_cancel, A017179.P14161710887547268154.a, A017179.P8943642833756065113.a, A017174, A017174.P535117563143043293.a, A017175, A017175.P17761920211285965587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017179

/-! ## A017179.P4878525693009722967

`A017173(n)²*A017177(n)`
-/

namespace A017179.P4878525693009722967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n ^ 2 * A017177 n

end

end A017179.P4878525693009722967

namespace A017179

/-- `A017173(n)²*A017177(n)` -/
def P4878525693009722967.Spec : Prop :=
  ∀ n, P4878525693009722967.a n = A017179 n

theorem P4878525693009722967.correct : P4878525693009722967.Spec := by
  intro n
  simp only [A017179, Nat.add_sub_cancel, A017179.P4878525693009722967.a, A017179.P8943642833756065113.a, A017173, A017173.P17951010485655810208.a, A017177, A017177.P12669259020752557172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017179

/-! ## A017179.P14325207242614353446

`A017176(n)²/A017173(n)`
-/

namespace A017179.P14325207242614353446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017176 n ^ 2 : ℚ) / (A017173 n : ℚ)

end

end A017179.P14325207242614353446

namespace A017179

/-- `A017176(n)²/A017173(n)` -/
def P14325207242614353446.Spec : Prop :=
  ∀ n, P14325207242614353446.a n = (A017179 n : ℚ)

end A017179

/-! ## A017179.P14575921906734367592

`A017177(n)²/A017175(n)`
-/

namespace A017179.P14575921906734367592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017177 n ^ 2 : ℚ) / (A017175 n : ℚ)

end

end A017179.P14575921906734367592

namespace A017179

/-- `A017177(n)²/A017175(n)` -/
def P14575921906734367592.Spec : Prop :=
  ∀ n, P14575921906734367592.a n = (A017179 n : ℚ)

end A017179

/-! ## A017179.P11401350514333270506

`A017174(n)²²/A017173(n)`
-/

namespace A017179.P11401350514333270506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017174 n ^ 2) ^ 2 : ℚ) / (A017173 n : ℚ)

end

end A017179.P11401350514333270506

namespace A017179

/-- `A017174(n)²²/A017173(n)` -/
def P11401350514333270506.Spec : Prop :=
  ∀ n, P11401350514333270506.a n = (A017179 n : ℚ)

end A017179

/-! ## A017179.P2806644972538571489

`A017176(n)/A017177(n)*A017176(n)²`
-/

namespace A017179.P2806644972538571489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017176 n : ℚ) / (A017177 n : ℚ) * (A017176 n ^ 2 : ℚ)

end

end A017179.P2806644972538571489

namespace A017179

/-- `A017176(n)/A017177(n)*A017176(n)²` -/
def P2806644972538571489.Spec : Prop :=
  ∀ n, P2806644972538571489.a n = (A017179 n : ℚ)

end A017179

/-! ## A017179.P13760826800703669903

`A061099(2*n+1)²²/A056020(2*n+1)`
-/

namespace A017179.P13760826800703669903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061099 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A056020 (2 * n + 1) : ℚ)

end

end A017179.P13760826800703669903

namespace A017179

/-- `A061099(2*n+1)²²/A056020(2*n+1)` -/
def P13760826800703669903.Spec : Prop :=
  ∀ n, P13760826800703669903.a n = (A017179 n : ℚ)

end A017179

/-! ## A017179.P13900293824433865892

`A061099(2*n+1)²²/A301451(2*n+1)`
-/

namespace A017179.P13900293824433865892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061099 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A301451 (2 * n + 1) : ℚ)

end

end A017179.P13900293824433865892

namespace A017179

/-- `A061099(2*n+1)²²/A301451(2*n+1)` -/
def P13900293824433865892.Spec : Prop :=
  ∀ n, P13900293824433865892.a n = (A017179 n : ℚ)

end A017179

/-! ## A017179.P16586249854940856758

`A016783(3*n)`
-/

namespace A017179.P16586249854940856758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016783 (3 * n)

end

end A017179.P16586249854940856758

namespace A017179

/-- `A016783(3*n)` -/
def P16586249854940856758.Spec : Prop :=
  ∀ n, P16586249854940856758.a n = A017179 n

theorem P16586249854940856758.correct : P16586249854940856758.Spec := by
  intro n
  simp only [A017179, Nat.add_sub_cancel, A017179.P16586249854940856758.a, A017179.P8943642833756065113.a, A016783, A016783.P4851290957634662023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017179

/-! ## A017179.P7704610158664140057

`A001015(9*n+1)`
-/

namespace A017179.P7704610158664140057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (9 * n + 1)

end

end A017179.P7704610158664140057

namespace A017179

/-- `A001015(9*n+1)` -/
def P7704610158664140057.Spec : Prop :=
  ∀ n, P7704610158664140057.a n = A017179 n

end A017179

/-!
# A017180: a(n) = (9n+1)^8.

The programs for A017180, the canonical program `A017180.P4083531923164889095` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017180 has offset 0).

The definition of A017180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)^8` (program `A017180.P4083531923164889095`, by `A017180.P4083531923164889095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017180.P4083531923164889095

`(9*n+1)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017180

/-- `(9*n+1)^8` -/
def P4083531923164889095.Spec : Prop :=
  ∀ n, (P4083531923164889095.a n : ℤ) = A017180 n

theorem P4083531923164889095.correct : P4083531923164889095.Spec := by
  intro n
  simp only [A017180]

end A017180

/-! ## A017180.P4500624496056502944

`record[((n+1)/dr(n+1))^8]`
-/

namespace A017180.P4500624496056502944
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017180.P4500624496056502944

namespace A017180

/-- `record[((n+1)/dr(n+1))^8]` -/
def P4500624496056502944.Spec : Prop :=
  ∀ n, P4500624496056502944.a n = (A017180 n : ℚ)

end A017180

/-! ## A017180.P18259500272619397646

`record[((n+1)/dr(n+1))²²²]`
-/

namespace A017180.P18259500272619397646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017180.P18259500272619397646

namespace A017180

/-- `record[((n+1)/dr(n+1))²²²]` -/
def P18259500272619397646.Spec : Prop :=
  ∀ n, P18259500272619397646.a n = (A017180 n : ℚ)

end A017180

/-! ## A017180.P16490669809776738530

`record[(n+1)^(dr(n)-dr(n+1))]`
-/

namespace A017180.P16490669809776738530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017180.P16490669809776738530

namespace A017180

/-- `record[(n+1)^(dr(n)-dr(n+1))]` -/
def P16490669809776738530.Spec : Prop :=
  ∀ n, P16490669809776738530.a n = (A017180 n : ℚ)

end A017180

/-! ## A017180.P7529061104805367431

`A017176(n)²`
-/

namespace A017180.P7529061104805367431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017176 n ^ 2

end

end A017180.P7529061104805367431

namespace A017180

/-- `A017176(n)²` -/
def P7529061104805367431.Spec : Prop :=
  ∀ n, P7529061104805367431.a n = A017180 n

theorem P7529061104805367431.correct : P7529061104805367431.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P7529061104805367431.a, A017180.P4083531923164889095.a, A017176, A017176.P11939921797285185825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P13022952003553120853

`A017174(n)²²`
-/

namespace A017180.P13022952003553120853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017174 n ^ 2) ^ 2

end

end A017180.P13022952003553120853

namespace A017180

/-- `A017174(n)²²` -/
def P13022952003553120853.Spec : Prop :=
  ∀ n, P13022952003553120853.a n = A017180 n

theorem P13022952003553120853.correct : P13022952003553120853.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P13022952003553120853.a, A017180.P4083531923164889095.a, A017174, A017174.P535117563143043293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P17236735318585411677

`(A017173(n)^4)²`
-/

namespace A017180.P17236735318585411677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017173 n ^ 4) ^ 2

end

end A017180.P17236735318585411677

namespace A017180

/-- `(A017173(n)^4)²` -/
def P17236735318585411677.Spec : Prop :=
  ∀ n, P17236735318585411677.a n = A017180 n

theorem P17236735318585411677.correct : P17236735318585411677.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P17236735318585411677.a, A017180.P4083531923164889095.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P16901241566496984801

`(A008591(n)+1)²²²`
-/

namespace A017180.P16901241566496984801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008591 n + 1) ^ 2) ^ 2) ^ 2

end

end A017180.P16901241566496984801

namespace A017180

/-- `(A008591(n)+1)²²²` -/
def P16901241566496984801.Spec : Prop :=
  ∀ n, P16901241566496984801.a n = A017180 n

theorem P16901241566496984801.correct : P16901241566496984801.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P16901241566496984801.a, A017180.P4083531923164889095.a, A008591, A008591.P8937864482545511630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P11497498320108641122

`(1-A017185(n))²²²`
-/

namespace A017180.P11497498320108641122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017185 n) ^ 2) ^ 2) ^ 2

end

end A017180.P11497498320108641122

namespace A017180

/-- `(1-A017185(n))²²²` -/
def P11497498320108641122.Spec : Prop :=
  ∀ n, P11497498320108641122.a n = A017180 n

theorem P11497498320108641122.correct : P11497498320108641122.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P11497498320108641122.a, A017180.P4083531923164889095.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P14562004385913108747

`(2-A017197(n))²²²`
-/

namespace A017180.P14562004385913108747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017197 n) ^ 2) ^ 2) ^ 2

end

end A017180.P14562004385913108747

namespace A017180

/-- `(2-A017197(n))²²²` -/
def P14562004385913108747.Spec : Prop :=
  ∀ n, P14562004385913108747.a n = A017180 n

theorem P14562004385913108747.correct : P14562004385913108747.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P14562004385913108747.a, A017180.P4083531923164889095.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P13041641190284506314

`(A017077(n)+n)²²²`
-/

namespace A017180.P13041641190284506314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017077 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017180.P13041641190284506314

namespace A017180

/-- `(A017077(n)+n)²²²` -/
def P13041641190284506314.Spec : Prop :=
  ∀ n, P13041641190284506314.a n = A017180 n

theorem P13041641190284506314.correct : P13041641190284506314.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P13041641190284506314.a, A017180.P4083531923164889095.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P2110009117039188603

`(n-A017281(n))²²²`
-/

namespace A017180.P2110009117039188603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017281 n) ^ 2) ^ 2) ^ 2

end

end A017180.P2110009117039188603

namespace A017180

/-- `(n-A017281(n))²²²` -/
def P2110009117039188603.Spec : Prop :=
  ∀ n, P2110009117039188603.a n = A017180 n

theorem P2110009117039188603.correct : P2110009117039188603.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P2110009117039188603.a, A017180.P4083531923164889095.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P10163424414968583550

`(A000027(n+1)+8*n)²²²`
-/

namespace A017180.P10163424414968583550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A000027 (n + 1) + (8 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017180.P10163424414968583550

namespace A017180

/-- `(A000027(n+1)+8*n)²²²` -/
def P10163424414968583550.Spec : Prop :=
  ∀ n, P10163424414968583550.a n = A017180 n

theorem P10163424414968583550.correct : P10163424414968583550.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P10163424414968583550.a, A017180.P4083531923164889095.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P13692071625199187628

`A017174(n)*A017178(n)`
-/

namespace A017180.P13692071625199187628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n * A017178 n

end

end A017180.P13692071625199187628

namespace A017180

/-- `A017174(n)*A017178(n)` -/
def P13692071625199187628.Spec : Prop :=
  ∀ n, P13692071625199187628.a n = A017180 n

theorem P13692071625199187628.correct : P13692071625199187628.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P13692071625199187628.a, A017180.P4083531923164889095.a, A017174, A017174.P535117563143043293.a, A017178, A017178.P10355223303590725020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P10742262941971643286

`A017175(n)*A017177(n)`
-/

namespace A017180.P10742262941971643286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017175 n * A017177 n

end

end A017180.P10742262941971643286

namespace A017180

/-- `A017175(n)*A017177(n)` -/
def P10742262941971643286.Spec : Prop :=
  ∀ n, P10742262941971643286.a n = A017180 n

theorem P10742262941971643286.correct : P10742262941971643286.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P10742262941971643286.a, A017180.P4083531923164889095.a, A017175, A017175.P17761920211285965587.a, A017177, A017177.P12669259020752557172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P14571344417422011844

`(A161705(n)+A017162(n))²²`
-/

namespace A017180.P14571344417422011844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A161705 n + A017162 n) ^ 2) ^ 2

end

end A017180.P14571344417422011844

namespace A017180

/-- `(A161705(n)+A017162(n))²²` -/
def P14571344417422011844.Spec : Prop :=
  ∀ n, P14571344417422011844.a n = A017180 n

theorem P14571344417422011844.correct : P14571344417422011844.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P14571344417422011844.a, A017180.P4083531923164889095.a, A017162, A017162.P6667471947735084138.a, A161705, A161705.P9285490780148837046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P3852963097493743294

`(A158776(n)+A098850(n))²²`
-/

namespace A017180.P3852963097493743294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A158776 n + A098850 n) ^ 2) ^ 2

end

end A017180.P3852963097493743294

namespace A017180

/-- `(A158776(n)+A098850(n))²²` -/
def P3852963097493743294.Spec : Prop :=
  ∀ n, P3852963097493743294.a n = A017180 n

theorem P3852963097493743294.correct : P3852963097493743294.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P3852963097493743294.a, A017180.P4083531923164889095.a, A098850, A098850.P17400619238635245445.a, A158776, A158776.P10609333151299409575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P17503013192852226657

`(A158769(n)+A140681(n))²²`
-/

namespace A017180.P17503013192852226657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A158769 n + A140681 n) ^ 2) ^ 2

end

end A017180.P17503013192852226657

namespace A017180

/-- `(A158769(n)+A140681(n))²²` -/
def P17503013192852226657.Spec : Prop :=
  ∀ n, P17503013192852226657.a n = A017180 n

theorem P17503013192852226657.correct : P17503013192852226657.Spec := by
  intro n
  simp only [A017180, Nat.add_sub_cancel, A017180.P17503013192852226657.a, A017180.P4083531923164889095.a, A140681, A140681.P11404641493444198903.a, A158769, A158769.P8246194158660311525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017180

/-! ## A017180.P5533315527701537444

`A017175(n)²*A017175(n)/A017173(n)`
-/

namespace A017180.P5533315527701537444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017175 n ^ 2 * A017175 n : ℚ) / (A017173 n : ℚ)

end

end A017180.P5533315527701537444

namespace A017180

/-- `A017175(n)²*A017175(n)/A017173(n)` -/
def P5533315527701537444.Spec : Prop :=
  ∀ n, P5533315527701537444.a n = (A017180 n : ℚ)

end A017180

/-! ## A017180.P16361591258775699460

`Δ[A051682(n)]²²²`
-/

namespace A017180.P16361591258775699460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017180.P16361591258775699460

namespace A017180

/-- `Δ[A051682(n)]²²²` -/
def P16361591258775699460.Spec : Prop :=
  ∀ n, P16361591258775699460.a n = A017180 n

end A017180

/-!
# A017181: a(n) = (9n+1)^9.

The programs for A017181, the canonical program `A017181.P15198725980204012594` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017181 has offset 0).

The definition of A017181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)^9` (program `A017181.P15198725980204012594`, by `A017181.P15198725980204012594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017181.P15198725980204012594

`(9*n+1)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017181

/-- `(9*n+1)^9` -/
def P15198725980204012594.Spec : Prop :=
  ∀ n, (P15198725980204012594.a n : ℤ) = A017181 n

theorem P15198725980204012594.correct : P15198725980204012594.Spec := by
  intro n
  simp only [A017181]

end A017181

/-! ## A017181.P7776689132233817156

`record[((n+1)/dr(n+1))^9]`
-/

namespace A017181.P7776689132233817156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017181.P7776689132233817156

namespace A017181

/-- `record[((n+1)/dr(n+1))^9]` -/
def P7776689132233817156.Spec : Prop :=
  ∀ n, P7776689132233817156.a n = (A017181 n : ℚ)

end A017181

/-! ## A017181.P16863105290761352892

`A017175(n)*A017178(n)`
-/

namespace A017181.P16863105290761352892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017175 n * A017178 n

end

end A017181.P16863105290761352892

namespace A017181

/-- `A017175(n)*A017178(n)` -/
def P16863105290761352892.Spec : Prop :=
  ∀ n, P16863105290761352892.a n = A017181 n

theorem P16863105290761352892.correct : P16863105290761352892.Spec := by
  intro n
  simp only [A017181, Nat.add_sub_cancel, A017181.P16863105290761352892.a, A017181.P15198725980204012594.a, A017175, A017175.P17761920211285965587.a, A017178, A017178.P10355223303590725020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017181

/-! ## A017181.P9021191873924360001

`A017176(n)*A017177(n)`
-/

namespace A017181.P9021191873924360001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017176 n * A017177 n

end

end A017181.P9021191873924360001

namespace A017181

/-- `A017176(n)*A017177(n)` -/
def P9021191873924360001.Spec : Prop :=
  ∀ n, P9021191873924360001.a n = A017181 n

theorem P9021191873924360001.correct : P9021191873924360001.Spec := by
  intro n
  simp only [A017181, Nat.add_sub_cancel, A017181.P9021191873924360001.a, A017181.P15198725980204012594.a, A017176, A017176.P11939921797285185825.a, A017177, A017177.P12669259020752557172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017181

/-! ## A017181.P17456913499746888804

`A017176(n)²*A017173(n)`
-/

namespace A017181.P17456913499746888804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017176 n ^ 2 * A017173 n

end

end A017181.P17456913499746888804

namespace A017181

/-- `A017176(n)²*A017173(n)` -/
def P17456913499746888804.Spec : Prop :=
  ∀ n, P17456913499746888804.a n = A017181 n

theorem P17456913499746888804.correct : P17456913499746888804.Spec := by
  intro n
  simp only [A017181, Nat.add_sub_cancel, A017181.P17456913499746888804.a, A017181.P15198725980204012594.a, A017173, A017173.P17951010485655810208.a, A017176, A017176.P11939921797285185825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017181

/-! ## A017181.P13608879057703571735

`A017174(n)²*A017177(n)`
-/

namespace A017181.P13608879057703571735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n ^ 2 * A017177 n

end

end A017181.P13608879057703571735

namespace A017181

/-- `A017174(n)²*A017177(n)` -/
def P13608879057703571735.Spec : Prop :=
  ∀ n, P13608879057703571735.a n = A017181 n

theorem P13608879057703571735.correct : P13608879057703571735.Spec := by
  intro n
  simp only [A017181, Nat.add_sub_cancel, A017181.P13608879057703571735.a, A017181.P15198725980204012594.a, A017174, A017174.P535117563143043293.a, A017177, A017177.P12669259020752557172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017181

/-! ## A017181.P11096233933602817139

`A017177(n)²/A017173(n)`
-/

namespace A017181.P11096233933602817139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017177 n ^ 2 : ℚ) / (A017173 n : ℚ)

end

end A017181.P11096233933602817139

namespace A017181

/-- `A017177(n)²/A017173(n)` -/
def P11096233933602817139.Spec : Prop :=
  ∀ n, P11096233933602817139.a n = (A017181 n : ℚ)

end A017181

/-! ## A017181.P12218875076896425893

`A017174(n)²²*A017173(n)`
-/

namespace A017181.P12218875076896425893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017174 n ^ 2) ^ 2 * A017173 n

end

end A017181.P12218875076896425893

namespace A017181

/-- `A017174(n)²²*A017173(n)` -/
def P12218875076896425893.Spec : Prop :=
  ∀ n, P12218875076896425893.a n = A017181 n

theorem P12218875076896425893.correct : P12218875076896425893.Spec := by
  intro n
  simp only [A017181, Nat.add_sub_cancel, A017181.P12218875076896425893.a, A017181.P15198725980204012594.a, A017173, A017173.P17951010485655810208.a, A017174, A017174.P535117563143043293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017181

/-! ## A017181.P10056182266467342347

`A017174(n)*A017175(n)*A017176(n)`
-/

namespace A017181.P10056182266467342347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 n * A017175 n * A017176 n

end

end A017181.P10056182266467342347

namespace A017181

/-- `A017174(n)*A017175(n)*A017176(n)` -/
def P10056182266467342347.Spec : Prop :=
  ∀ n, P10056182266467342347.a n = A017181 n

theorem P10056182266467342347.correct : P10056182266467342347.Spec := by
  intro n
  simp only [A017181, Nat.add_sub_cancel, A017181.P10056182266467342347.a, A017181.P15198725980204012594.a, A017174, A017174.P535117563143043293.a, A017175, A017175.P17761920211285965587.a, A017176, A017176.P11939921797285185825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017181

/-! ## A017181.P17998125561663682077

`A017173(n)*A017178(n)*A017173(n)²`
-/

namespace A017181.P17998125561663682077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n * A017178 n * A017173 n ^ 2

end

end A017181.P17998125561663682077

namespace A017181

/-- `A017173(n)*A017178(n)*A017173(n)²` -/
def P17998125561663682077.Spec : Prop :=
  ∀ n, P17998125561663682077.a n = A017181 n

theorem P17998125561663682077.correct : P17998125561663682077.Spec := by
  intro n
  simp only [A017181, Nat.add_sub_cancel, A017181.P17998125561663682077.a, A017181.P15198725980204012594.a, A017173, A017173.P17951010485655810208.a, A017178, A017178.P10355223303590725020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017181

/-! ## A017181.P5903373285046800475

`A061099(2*n+1)²²*A056020(2*n+1)`
-/

namespace A017181.P5903373285046800475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061099 (2 * n + 1) ^ 2) ^ 2 * A056020 (2 * n + 1)

end

end A017181.P5903373285046800475

namespace A017181

/-- `A061099(2*n+1)²²*A056020(2*n+1)` -/
def P5903373285046800475.Spec : Prop :=
  ∀ n, P5903373285046800475.a n = A017181 n

end A017181

/-! ## A017181.P15406634644339262806

`A061099(2*n+1)²²*A301451(2*n+1)`
-/

namespace A017181.P15406634644339262806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061099 (2 * n + 1) ^ 2) ^ 2 * A301451 (2 * n + 1)

end

end A017181.P15406634644339262806

namespace A017181

/-- `A061099(2*n+1)²²*A301451(2*n+1)` -/
def P15406634644339262806.Spec : Prop :=
  ∀ n, P15406634644339262806.a n = A017181 n

end A017181

/-! ## A017181.P2252756153932918364

`A016785(3*n)`
-/

namespace A017181.P2252756153932918364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016785 (3 * n)

end

end A017181.P2252756153932918364

namespace A017181

/-- `A016785(3*n)` -/
def P2252756153932918364.Spec : Prop :=
  ∀ n, P2252756153932918364.a n = A017181 n

theorem P2252756153932918364.correct : P2252756153932918364.Spec := by
  intro n
  simp only [A017181, Nat.add_sub_cancel, A017181.P2252756153932918364.a, A017181.P15198725980204012594.a, A016785, A016785.P12257324286826069844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017181

/-! ## A017181.P13506813616018242048

`A118719(A016933(n))²*A118719(A016933(n))`
-/

namespace A017181.P13506813616018242048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118719 (A016933 n).toNat ^ 2 * A118719 (A016933 n).toNat

end

end A017181.P13506813616018242048

namespace A017181

/-- `A118719(A016933(n))²*A118719(A016933(n))` -/
def P13506813616018242048.Spec : Prop :=
  ∀ n, P13506813616018242048.a n = A017181 n

end A017181

/-! ## A017181.P2648193129165423491

`A001017(9*n+1)`
-/

namespace A017181.P2648193129165423491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (9 * n + 1)

end

end A017181.P2648193129165423491

namespace A017181

/-- `A001017(9*n+1)` -/
def P2648193129165423491.Spec : Prop :=
  ∀ n, P2648193129165423491.a n = A017181 n

end A017181

/-! ## A017181.P11271664705167759350

`1-A024007(A017173(n))`
-/

namespace A017181.P11271664705167759350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024007 (A017173 n).toNat

end

end A017181.P11271664705167759350

namespace A017181

/-- `1-A024007(A017173(n))` -/
def P11271664705167759350.Spec : Prop :=
  ∀ n, P11271664705167759350.a n = A017181 n

end A017181

/-!
# A017182: a(n) = (9n+1)^10.

The programs for A017182, the canonical program `A017182.P591904027589960976` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017182 has offset 0).

The definition of A017182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+1)^10` (program `A017182.P591904027589960976`, by `A017182.P591904027589960976.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017182.P591904027589960976

`(9*n+1)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017182

/-- `(9*n+1)^10` -/
def P591904027589960976.Spec : Prop :=
  ∀ n, (P591904027589960976.a n : ℤ) = A017182 n

theorem P591904027589960976.correct : P591904027589960976.Spec := by
  intro n
  simp only [A017182]

end A017182

/-! ## A017182.P11470273409141638539

`A017177(n)²`
-/

namespace A017182.P11470273409141638539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n ^ 2

end

end A017182.P11470273409141638539

namespace A017182

/-- `A017177(n)²` -/
def P11470273409141638539.Spec : Prop :=
  ∀ n, P11470273409141638539.a n = A017182 n

theorem P11470273409141638539.correct : P11470273409141638539.Spec := by
  intro n
  simp only [A017182, Nat.add_sub_cancel, A017182.P11470273409141638539.a, A017182.P591904027589960976.a, A017177, A017177.P12669259020752557172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017182

/-! ## A017182.P11946919128849022620

`A017176(n)*A017178(n)`
-/

namespace A017182.P11946919128849022620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017176 n * A017178 n

end

end A017182.P11946919128849022620

namespace A017182

/-- `A017176(n)*A017178(n)` -/
def P11946919128849022620.Spec : Prop :=
  ∀ n, P11946919128849022620.a n = A017182 n

theorem P11946919128849022620.correct : P11946919128849022620.Spec := by
  intro n
  simp only [A017182, Nat.add_sub_cancel, A017182.P11946919128849022620.a, A017182.P591904027589960976.a, A017176, A017176.P11939921797285185825.a, A017178, A017178.P10355223303590725020.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017182

/-! ## A017182.P18032039035918256601

`A016786(3*n)`
-/

namespace A017182.P18032039035918256601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016786 (3 * n)

end

end A017182.P18032039035918256601

namespace A017182

/-- `A016786(3*n)` -/
def P18032039035918256601.Spec : Prop :=
  ∀ n, P18032039035918256601.a n = A017182 n

theorem P18032039035918256601.correct : P18032039035918256601.Spec := by
  intro n
  simp only [A017182, Nat.add_sub_cancel, A017182.P18032039035918256601.a, A017182.P591904027589960976.a, A016786, A016786.P17124437694900183996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017182

/-! ## A017182.P5567013849157609676

`A016781(3*n)²`
-/

namespace A017182.P5567013849157609676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 (3 * n) ^ 2

end

end A017182.P5567013849157609676

namespace A017182

/-- `A016781(3*n)²` -/
def P5567013849157609676.Spec : Prop :=
  ∀ n, P5567013849157609676.a n = A017182 n

theorem P5567013849157609676.correct : P5567013849157609676.Spec := by
  intro n
  simp only [A017182, Nat.add_sub_cancel, A017182.P5567013849157609676.a, A017182.P591904027589960976.a, A016781, A016781.P2935993440358225274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017182

/-! ## A017182.P12148128092631776769

`A008454(A017173(n))`
-/

namespace A017182.P12148128092631776769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017173 n).toNat

end

end A017182.P12148128092631776769

namespace A017182

/-- `A008454(A017173(n))` -/
def P12148128092631776769.Spec : Prop :=
  ∀ n, P12148128092631776769.a n = A017182 n

end A017182

/-!
# A017183: 

The programs for A017183, there is no canonical definition to state claims against.
-/

/-! ## A017183.P16805452934983556426

`Δ[9*C(n, 2)+n]^11`
-/

namespace A017183.P16805452934983556426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 11

end

end A017183.P16805452934983556426

/-! ## A017183.P6560039151299124567

`A017173(n)^11`
-/

namespace A017183.P6560039151299124567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n ^ 11

end

end A017183.P6560039151299124567

/-! ## A017183.P1895702999361624771

`Δ[A051682(n)]^11`
-/

namespace A017183.P1895702999361624771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 11

end

end A017183.P1895702999361624771

/-! ## A017183.P17085969156870733905

`A016787(3*n)`
-/

namespace A017183.P17085969156870733905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016787 (3 * n)

end

end A017183.P17085969156870733905

/-! ## A017183.P2905071973220121611

`A016777(A008585(n))^11`
-/

namespace A017183.P2905071973220121611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A008585 n).toNat ^ 11

end

end A017183.P2905071973220121611

/-! ## A017183.P7658204470769606992

`A028242(A008600(n))^11`
-/

namespace A017183.P7658204470769606992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008600 n).toNat ^ 11

end

end A017183.P7658204470769606992

/-!
# A017184: 

The programs for A017184, there is no canonical definition to state claims against.
-/

/-! ## A017184.P3084750766713751135

`((9*n+1)^6)²`
-/

namespace A017184.P3084750766713751135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((9 * n + 1) ^ 6) ^ 2

end

end A017184.P3084750766713751135

/-! ## A017184.P16261398983053566997

`A017176(n)^3`
-/

namespace A017184.P16261398983053566997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017176 n ^ 3

end

end A017184.P16261398983053566997

/-! ## A017184.P15274303977941410202

`(A017173(n)^3)^4`
-/

namespace A017184.P15274303977941410202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017173 n ^ 3) ^ 4

end

end A017184.P15274303977941410202

/-! ## A017184.P3534368853123215571

`Δ[A051682(n)]^12`
-/

namespace A017184.P3534368853123215571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 12

end

end A017184.P3534368853123215571

/-! ## A017184.P2599604370910030780

`A016788(3*n)`
-/

namespace A017184.P2599604370910030780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016788 (3 * n)

end

end A017184.P2599604370910030780

/-! ## A017184.P301865687413853361

`A016778(A008585(n))^6`
-/

namespace A017184.P301865687413853361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 (A008585 n).toNat ^ 6

end

end A017184.P301865687413853361

/-!
# A017185: a(n) = 9*n + 2.

The programs for A017185, the canonical program `A017185.P12174419037402659888` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017185 has offset 0).

The definition of A017185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n+2` (program `A017185.P12174419037402659888`, by `A017185.P12174419037402659888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017185.P12174419037402659888

`9*n+2`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017185

/-- `9*n+2` -/
def P12174419037402659888.Spec : Prop :=
  ∀ n, (P12174419037402659888.a n : ℤ) = A017185 n

theorem P12174419037402659888.correct : P12174419037402659888.Spec := by
  intro n
  simp only [A017185]

end A017185

/-!
# A017186: a(n) = (9*n + 2)^2.

The programs for A017186, the canonical program `A017186.P13293888810662431780` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017186 has offset 0).

The definition of A017186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)²` (program `A017186.P13293888810662431780`, by `A017186.P13293888810662431780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017186.P13293888810662431780

`(9*n+2)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017186

/-- `(9*n+2)²` -/
def P13293888810662431780.Spec : Prop :=
  ∀ n, (P13293888810662431780.a n : ℤ) = A017186 n

theorem P13293888810662431780.correct : P13293888810662431780.Spec := by
  intro n
  simp only [A017186]

end A017186

/-! ## A017186.P7244345145116692243

`ogf((4+109x+49x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017186.P7244345145116692243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 109, 49] [1, -3, 3, -1] n

end

end A017186.P7244345145116692243

namespace A017186

/-- `ogf((4+109x+49x^2)/(1-3x+3x^2-x^3))` -/
def P7244345145116692243.Spec : Prop :=
  ∀ n, P7244345145116692243.a n = A017186 n

end A017186

/-! ## A017186.P4820222830014946315

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=121, a(2)=400`
-/

namespace A017186.P4820222830014946315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 121, 400] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017186.P4820222830014946315

namespace A017186

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4820222830014946315.Spec : Prop :=
  ∀ n, P4820222830014946315.a n = A017186 n

theorem P4820222830014946315.correct : P4820222830014946315.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017186, Nat.add_sub_cancel, A017186.P4820222830014946315.a, A017186.P13293888810662431780.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017186, Nat.add_sub_cancel, A017186.P4820222830014946315.a, A017186.P13293888810662431780.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017186

/-! ## A017186.P17634148718172227695

`record[(dr(2-n)-n)²]`
-/

namespace A017186.P17634148718172227695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017186.P17634148718172227695

namespace A017186

/-- `record[(dr(2-n)-n)²]` -/
def P17634148718172227695.Spec : Prop :=
  ∀ n, P17634148718172227695.a n = A017186 n

end A017186

/-! ## A017186.P7906893189514176625

`record[gcd(n+2, n%9)²]`
-/

namespace A017186.P7906893189514176625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (n % 9) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017186.P7906893189514176625

namespace A017186

/-- `record[gcd(n+2, n%9)²]` -/
def P7906893189514176625.Spec : Prop :=
  ∀ n, (P7906893189514176625.a n : ℤ) = A017186 n

end A017186

/-! ## A017186.P7542190167546844221

`record[((n+2)/dr(n+1))²]`
-/

namespace A017186.P7542190167546844221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017186.P7542190167546844221

namespace A017186

/-- `record[((n+2)/dr(n+1))²]` -/
def P7542190167546844221.Spec : Prop :=
  ∀ n, P7542190167546844221.a n = (A017186 n : ℚ)

end A017186

/-! ## A017186.P3853471326372241449

`record[root(n+2, dr(n+1))²]`
-/

namespace A017186.P3853471326372241449
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017186.P3853471326372241449

namespace A017186

/-- `record[root(n+2, dr(n+1))²]` -/
def P3853471326372241449.Spec : Prop :=
  ∀ n, P3853471326372241449.a n = (A017186 n : ℝ)

end A017186

/-! ## A017186.P16275006365742060599

`record[(gcd(9, 1-n)+n+1)²]`
-/

namespace A017186.P16275006365742060599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (1 - (n : ℤ)) + (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017186.P16275006365742060599

namespace A017186

/-- `record[(gcd(9, 1-n)+n+1)²]` -/
def P16275006365742060599.Spec : Prop :=
  ∀ n, (P16275006365742060599.a n : ℤ) = A017186 n

end A017186

/-! ## A017186.P3045155369498656868

`record[(n+2)^(3-dr(n+1))]`
-/

namespace A017186.P3045155369498656868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (3 - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017186.P3045155369498656868

namespace A017186

/-- `record[(n+2)^(3-dr(n+1))]` -/
def P3045155369498656868.Spec : Prop :=
  ∀ n, P3045155369498656868.a n = (A017186 n : ℚ)

end A017186

/-! ## A017186.P16217853524140884061

`record[(n+2)^(2/dr(n+1))]`
-/

namespace A017186.P16217853524140884061
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (2 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017186.P16217853524140884061

namespace A017186

/-- `record[(n+2)^(2/dr(n+1))]` -/
def P16217853524140884061.Spec : Prop :=
  ∀ n, P16217853524140884061.a n = (A017186 n : ℝ)

end A017186

/-! ## A017186.P15217570274852527393

`sqrt(A017188(n))`
-/

namespace A017186.P15217570274852527393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017188 n : ℝ)

end

end A017186.P15217570274852527393

namespace A017186

/-- `sqrt(A017188(n))` -/
def P15217570274852527393.Spec : Prop :=
  ∀ n, P15217570274852527393.a n = (A017186 n : ℝ)

end A017186

/-! ## A017186.P57827844473588663

`sqrt(sqrt(A017192(n)))`
-/

namespace A017186.P57827844473588663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017192 n : ℝ))

end

end A017186.P57827844473588663

namespace A017186

/-- `sqrt(sqrt(A017192(n)))` -/
def P57827844473588663.Spec : Prop :=
  ∀ n, P57827844473588663.a n = (A017186 n : ℝ)

end A017186

/-! ## A017186.P14658469475625798594

`A350521(n)²/4`
-/

namespace A017186.P14658469475625798594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350521 n ^ 2 : ℚ) / 4

end

end A017186.P14658469475625798594

namespace A017186

/-- `A350521(n)²/4` -/
def P14658469475625798594.Spec : Prop :=
  ∀ n, P14658469475625798594.a n = (A017186 n : ℚ)

theorem P14658469475625798594.correct : P14658469475625798594.Spec := by
  intro n
  simp only [A017186, Nat.add_sub_cancel, A017186.P14658469475625798594.a, A017186.P13293888810662431780.a, A350521, A350521.P8283092138613523292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017186

/-! ## A017186.P767639098170753018

`A017190(n)^(1/3)`
-/

namespace A017186.P767639098170753018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017190 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017186.P767639098170753018

namespace A017186

/-- `A017190(n)^(1/3)` -/
def P767639098170753018.Spec : Prop :=
  ∀ n, P767639098170753018.a n = (A017186 n : ℝ)

end A017186

/-! ## A017186.P3583415891673208581

`A017187(n)^(2/3)`
-/

namespace A017186.P3583415891673208581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017187 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017186.P3583415891673208581

namespace A017186

/-- `A017187(n)^(2/3)` -/
def P3583415891673208581.Spec : Prop :=
  ∀ n, P3583415891673208581.a n = (A017186 n : ℝ)

end A017186

/-! ## A017186.P10741175650797334522

`(n-(A008592(n)+2))^2`
-/

namespace A017186.P10741175650797334522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (A008592 n + 2)) ^ 2

end

end A017186.P10741175650797334522

namespace A017186

/-- `(n-(A008592(n)+2))^2` -/
def P10741175650797334522.Spec : Prop :=
  ∀ n, P10741175650797334522.a n = A017186 n

theorem P10741175650797334522.correct : P10741175650797334522.Spec := by
  intro n
  simp only [A017186, Nat.add_sub_cancel, A017186.P10741175650797334522.a, A017186.P13293888810662431780.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017186

/-! ## A017186.P3121341459715726053

`A017198(n)-A242215(n)`
-/

namespace A017186.P3121341459715726053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017198 n - A242215 n

end

end A017186.P3121341459715726053

namespace A017186

/-- `A017198(n)-A242215(n)` -/
def P3121341459715726053.Spec : Prop :=
  ∀ n, P3121341459715726053.a n = A017186 n

theorem P3121341459715726053.correct : P3121341459715726053.Spec := by
  intro n
  simp only [A017186, Nat.add_sub_cancel, A017186.P3121341459715726053.a, A017186.P13293888810662431780.a, A017198, A017198.P11032527811158562085.a, A242215, A242215.P1960096412807353825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017186

/-! ## A017186.P2186603244741129111

`A177072(n)-A139610(n)`
-/

namespace A017186.P2186603244741129111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177072 n - A139610 n

end

end A017186.P2186603244741129111

namespace A017186

/-- `A177072(n)-A139610(n)` -/
def P2186603244741129111.Spec : Prop :=
  ∀ n, P2186603244741129111.a n = A017186 n

theorem P2186603244741129111.correct : P2186603244741129111.Spec := by
  intro n
  simp only [A017186, Nat.add_sub_cancel, A017186.P2186603244741129111.a, A017186.P13293888810662431780.a, A139610, A139610.P6058302411788783885.a, A177072, A177072.P1995508505510612793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017186

/-! ## A017186.P18083119465309994562

`A017185(n)*A017185(n)`
-/

namespace A017186.P18083119465309994562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n * A017185 n

end

end A017186.P18083119465309994562

namespace A017186

/-- `A017185(n)*A017185(n)` -/
def P18083119465309994562.Spec : Prop :=
  ∀ n, P18083119465309994562.a n = A017186 n

theorem P18083119465309994562.correct : P18083119465309994562.Spec := by
  intro n
  simp only [A017186, Nat.add_sub_cancel, A017186.P18083119465309994562.a, A017186.P13293888810662431780.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017186

/-! ## A017186.P16695210329830293851

`A017187(n)/A017185(n)`
-/

namespace A017186.P16695210329830293851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017187 n : ℚ) / (A017185 n : ℚ)

end

end A017186.P16695210329830293851

namespace A017186

/-- `A017187(n)/A017185(n)` -/
def P16695210329830293851.Spec : Prop :=
  ∀ n, P16695210329830293851.a n = (A017186 n : ℚ)

end A017186

/-!
# A017187: a(n) = (9*n + 2)^3.

The programs for A017187, the canonical program `A017187.P4396294377249438443` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017187 has offset 0).

The definition of A017187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)^3` (program `A017187.P4396294377249438443`, by `A017187.P4396294377249438443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017187.P4396294377249438443

`(9*n+2)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017187

/-- `(9*n+2)^3` -/
def P4396294377249438443.Spec : Prop :=
  ∀ n, (P4396294377249438443.a n : ℤ) = A017187 n

theorem P4396294377249438443.correct : P4396294377249438443.Spec := by
  intro n
  simp only [A017187]

end A017187

/-! ## A017187.P14733995219546195494

`record[(n+2-dr(n)²)^3]`
-/

namespace A017187.P14733995219546195494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017187.P14733995219546195494

namespace A017187

/-- `record[(n+2-dr(n)²)^3]` -/
def P14733995219546195494.Spec : Prop :=
  ∀ n, P14733995219546195494.a n = A017187 n

end A017187

/-! ## A017187.P12698313493905765948

`record[(n+2)^(3/dr(n+1))]`
-/

namespace A017187.P12698313493905765948
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (3 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017187.P12698313493905765948

namespace A017187

/-- `record[(n+2)^(3/dr(n+1))]` -/
def P12698313493905765948.Spec : Prop :=
  ∀ n, P12698313493905765948.a n = (A017187 n : ℝ)

end A017187

/-! ## A017187.P14909100273168886364

`sqrt(A017190(n))`
-/

namespace A017187.P14909100273168886364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017190 n : ℝ)

end

end A017187.P14909100273168886364

namespace A017187

/-- `sqrt(A017190(n))` -/
def P14909100273168886364.Spec : Prop :=
  ∀ n, P14909100273168886364.a n = (A017187 n : ℝ)

end A017187

/-! ## A017187.P3222121697532802716

`sqrt(A017186(n)^3)`
-/

namespace A017187.P3222121697532802716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017186 n ^ 3 : ℝ)

end

end A017187.P3222121697532802716

namespace A017187

/-- `sqrt(A017186(n)^3)` -/
def P3222121697532802716.Spec : Prop :=
  ∀ n, P3222121697532802716.a n = (A017187 n : ℝ)

end A017187

/-! ## A017187.P144171361875301594

`A017185(n)*A017186(n)`
-/

namespace A017187.P144171361875301594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n * A017186 n

end

end A017187.P144171361875301594

namespace A017187

/-- `A017185(n)*A017186(n)` -/
def P144171361875301594.Spec : Prop :=
  ∀ n, P144171361875301594.a n = A017187 n

theorem P144171361875301594.correct : P144171361875301594.Spec := by
  intro n
  simp only [A017187, Nat.add_sub_cancel, A017187.P144171361875301594.a, A017187.P4396294377249438443.a, A017185, A017185.P12174419037402659888.a, A017186, A017186.P13293888810662431780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017187

/-! ## A017187.P13661691090255615897

`A017188(n)/A017185(n)`
-/

namespace A017187.P13661691090255615897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017188 n : ℚ) / (A017185 n : ℚ)

end

end A017187.P13661691090255615897

namespace A017187

/-- `A017188(n)/A017185(n)` -/
def P13661691090255615897.Spec : Prop :=
  ∀ n, P13661691090255615897.a n = (A017187 n : ℚ)

end A017187

/-! ## A017187.P2697040833419108631

`A017189(n)/A017186(n)`
-/

namespace A017187.P2697040833419108631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017189 n : ℚ) / (A017186 n : ℚ)

end

end A017187.P2697040833419108631

namespace A017187

/-- `A017189(n)/A017186(n)` -/
def P2697040833419108631.Spec : Prop :=
  ∀ n, P2697040833419108631.a n = (A017187 n : ℚ)

end A017187

/-! ## A017187.P2399765212595935312

`A017189(n)/A017185(n)²`
-/

namespace A017187.P2399765212595935312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017189 n : ℚ) / (A017185 n ^ 2 : ℚ)

end

end A017187.P2399765212595935312

namespace A017187

/-- `A017189(n)/A017185(n)²` -/
def P2399765212595935312.Spec : Prop :=
  ∀ n, P2399765212595935312.a n = (A017187 n : ℚ)

end A017187

/-! ## A017187.P8110361166535353047

`A017188(n)²/A017189(n)`
-/

namespace A017187.P8110361166535353047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017188 n ^ 2 : ℚ) / (A017189 n : ℚ)

end

end A017187.P8110361166535353047

namespace A017187

/-- `A017188(n)²/A017189(n)` -/
def P8110361166535353047.Spec : Prop :=
  ∀ n, P8110361166535353047.a n = (A017187 n : ℚ)

end A017187

/-! ## A017187.P10838721424259328877

`(A008591(n)+2)*A017185(n)²`
-/

namespace A017187.P10838721424259328877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008591 n + 2) * A017185 n ^ 2

end

end A017187.P10838721424259328877

namespace A017187

/-- `(A008591(n)+2)*A017185(n)²` -/
def P10838721424259328877.Spec : Prop :=
  ∀ n, P10838721424259328877.a n = A017187 n

theorem P10838721424259328877.correct : P10838721424259328877.Spec := by
  intro n
  simp only [A017187, Nat.add_sub_cancel, A017187.P10838721424259328877.a, A017187.P4396294377249438443.a, A008591, A008591.P8937864482545511630.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017187

/-! ## A017187.P16475654049815341056

`A017211(2*n)/8`
-/

namespace A017187.P16475654049815341056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017211 (2 * n) : ℚ) / 8

end

end A017187.P16475654049815341056

namespace A017187

/-- `A017211(2*n)/8` -/
def P16475654049815341056.Spec : Prop :=
  ∀ n, P16475654049815341056.a n = (A017187 n : ℚ)

theorem P16475654049815341056.correct : P16475654049815341056.Spec := by
  intro n
  simp only [A017187, Nat.add_sub_cancel, A017187.P16475654049815341056.a, A017187.P4396294377249438443.a, A017211, A017211.P8534542557181721998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017187

/-! ## A017187.P8535228116868938255

`A017185(n)*A061100(2*n+1)`
-/

namespace A017187.P8535228116868938255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n * A061100 (2 * n + 1)

end

end A017187.P8535228116868938255

namespace A017187

/-- `A017185(n)*A061100(2*n+1)` -/
def P8535228116868938255.Spec : Prop :=
  ∀ n, P8535228116868938255.a n = A017187 n

end A017187

/-! ## A017187.P1838732061467605944

`A017186(n)*A168413(2*n+1)`
-/

namespace A017187.P1838732061467605944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n * A168413 (2 * n + 1)

end

end A017187.P1838732061467605944

namespace A017187

/-- `A017186(n)*A168413(2*n+1)` -/
def P1838732061467605944.Spec : Prop :=
  ∀ n, P1838732061467605944.a n = A017187 n

end A017187

/-! ## A017187.P492426828271794003

`A061100(2*n+1)*A063289(2*n+3)`
-/

namespace A017187.P492426828271794003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061100 (2 * n + 1) * A063289 (2 * n + 3)

end

end A017187.P492426828271794003

namespace A017187

/-- `A061100(2*n+1)*A063289(2*n+3)` -/
def P492426828271794003.Spec : Prop :=
  ∀ n, P492426828271794003.a n = A017187 n

end A017187

/-! ## A017187.P7870936879962776255

`A193910(2*n+1)²*A193910(2*n+1)`
-/

namespace A017187.P7870936879962776255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (2 * n + 1) ^ 2 * A193910 (2 * n + 1)

end

end A017187.P7870936879962776255

namespace A017187

/-- `A193910(2*n+1)²*A193910(2*n+1)` -/
def P7870936879962776255.Spec : Prop :=
  ∀ n, P7870936879962776255.a n = A017187 n

end A017187

/-! ## A017187.P13258239243504466373

`A016791(3*n)`
-/

namespace A017187.P13258239243504466373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 (3 * n)

end

end A017187.P13258239243504466373

namespace A017187

/-- `A016791(3*n)` -/
def P13258239243504466373.Spec : Prop :=
  ∀ n, P13258239243504466373.a n = A017187 n

theorem P13258239243504466373.correct : P13258239243504466373.Spec := by
  intro n
  simp only [A017187, Nat.add_sub_cancel, A017187.P13258239243504466373.a, A017187.P4396294377249438443.a, A016791, A016791.P13208806347124039064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017187

/-! ## A017187.P6623666798466822907

`sqrt(A016794(3*n))`
-/

namespace A017187.P6623666798466822907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016794 (3 * n) : ℝ)

end

end A017187.P6623666798466822907

namespace A017187

/-- `sqrt(A016794(3*n))` -/
def P6623666798466822907.Spec : Prop :=
  ∀ n, P6623666798466822907.a n = (A017187 n : ℝ)

end A017187

/-! ## A017187.P12849035562827712236

`(A016777(3*n)+1)*(A016777(3*n)+1)²`
-/

namespace A017187.P12849035562827712236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 (3 * n) + 1) * (A016777 (3 * n) + 1) ^ 2

end

end A017187.P12849035562827712236

namespace A017187

/-- `(A016777(3*n)+1)*(A016777(3*n)+1)²` -/
def P12849035562827712236.Spec : Prop :=
  ∀ n, P12849035562827712236.a n = A017187 n

theorem P12849035562827712236.correct : P12849035562827712236.Spec := by
  intro n
  simp only [A017187, Nat.add_sub_cancel, A017187.P12849035562827712236.a, A017187.P4396294377249438443.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017187

/-!
# A017188: a(n) = (9*n + 2)^4.

The programs for A017188, the canonical program `A017188.P2699637439138055383` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017188 has offset 0).

The definition of A017188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)^4` (program `A017188.P2699637439138055383`, by `A017188.P2699637439138055383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017188.P2699637439138055383

`(9*n+2)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017188

/-- `(9*n+2)^4` -/
def P2699637439138055383.Spec : Prop :=
  ∀ n, (P2699637439138055383.a n : ℤ) = A017188 n

theorem P2699637439138055383.correct : P2699637439138055383.Spec := by
  intro n
  simp only [A017188]

end A017188

/-! ## A017188.P17387079638632834711

`record[(dr(2-n)-n)^4]`
-/

namespace A017188.P17387079638632834711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017188.P17387079638632834711

namespace A017188

/-- `record[(dr(2-n)-n)^4]` -/
def P17387079638632834711.Spec : Prop :=
  ∀ n, P17387079638632834711.a n = A017188 n

end A017188

/-! ## A017188.P10025685325273723775

`record[(dr(2-n)-n)²²]`
-/

namespace A017188.P10025685325273723775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digitalRoot (2 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017188.P10025685325273723775

namespace A017188

/-- `record[(dr(2-n)-n)²²]` -/
def P10025685325273723775.Spec : Prop :=
  ∀ n, P10025685325273723775.a n = A017188 n

end A017188

/-! ## A017188.P15951887429111216602

`record[(n+2)^(4/dr(n+1))]`
-/

namespace A017188.P15951887429111216602
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (4 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017188.P15951887429111216602

namespace A017188

/-- `record[(n+2)^(4/dr(n+1))]` -/
def P15951887429111216602.Spec : Prop :=
  ∀ n, P15951887429111216602.a n = (A017188 n : ℝ)

end A017188

/-! ## A017188.P7672248430243232110

`record[((n+2)/dr(n+1))²²]`
-/

namespace A017188.P7672248430243232110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017188.P7672248430243232110

namespace A017188

/-- `record[((n+2)/dr(n+1))²²]` -/
def P7672248430243232110.Spec : Prop :=
  ∀ n, P7672248430243232110.a n = (A017188 n : ℚ)

end A017188

/-! ## A017188.P3099231714265309075

`((2-n)²-lcm(n+2, n+3))²²`
-/

namespace A017188.P3099231714265309075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - (n : ℤ)) ^ 2 - (Nat.lcm (n + 2) (n + 3) : ℤ)) ^ 2) ^ 2

end

end A017188.P3099231714265309075

namespace A017188

/-- `((2-n)²-lcm(n+2, n+3))²²` -/
def P3099231714265309075.Spec : Prop :=
  ∀ n, P3099231714265309075.a n = A017188 n

end A017188

/-! ## A017188.P17280522812053620355

`(lcm(2, 2*n+2*n+1)+n)²²`
-/

namespace A017188.P17280522812053620355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (2 * n + (2 * n + 1)) + n) ^ 2) ^ 2

end

end A017188.P17280522812053620355

namespace A017188

/-- `(lcm(2, 2*n+2*n+1)+n)²²` -/
def P17280522812053620355.Spec : Prop :=
  ∀ n, (P17280522812053620355.a n : ℤ) = A017188 n

end A017188

/-! ## A017188.P14795852913343526537

`A017186(n)²`
-/

namespace A017188.P14795852913343526537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n ^ 2

end

end A017188.P14795852913343526537

namespace A017188

/-- `A017186(n)²` -/
def P14795852913343526537.Spec : Prop :=
  ∀ n, P14795852913343526537.a n = A017188 n

theorem P14795852913343526537.correct : P14795852913343526537.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P14795852913343526537.a, A017188.P2699637439138055383.a, A017186, A017186.P13293888810662431780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P16929650100383970817

`sqrt(A017192(n))`
-/

namespace A017188.P16929650100383970817
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017192 n : ℝ)

end

end A017188.P16929650100383970817

namespace A017188

/-- `sqrt(A017192(n))` -/
def P16929650100383970817.Spec : Prop :=
  ∀ n, P16929650100383970817.a n = (A017188 n : ℝ)

end A017188

/-! ## A017188.P6770212610101643176

`A017185(n)²²`
-/

namespace A017188.P6770212610101643176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017185 n ^ 2) ^ 2

end

end A017188.P6770212610101643176

namespace A017188

/-- `A017185(n)²²` -/
def P6770212610101643176.Spec : Prop :=
  ∀ n, P6770212610101643176.a n = A017188 n

theorem P6770212610101643176.correct : P6770212610101643176.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P6770212610101643176.a, A017188.P2699637439138055383.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P14868557732670688988

`(A017173(n)+1)²²`
-/

namespace A017188.P14868557732670688988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017173 n + 1) ^ 2) ^ 2

end

end A017188.P14868557732670688988

namespace A017188

/-- `(A017173(n)+1)²²` -/
def P14868557732670688988.Spec : Prop :=
  ∀ n, P14868557732670688988.a n = A017188 n

theorem P14868557732670688988.correct : P14868557732670688988.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P14868557732670688988.a, A017188.P2699637439138055383.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P5767317977957335425

`(A008591(n)+2)²²`
-/

namespace A017188.P5767317977957335425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008591 n + 2) ^ 2) ^ 2

end

end A017188.P5767317977957335425

namespace A017188

/-- `(A008591(n)+2)²²` -/
def P5767317977957335425.Spec : Prop :=
  ∀ n, P5767317977957335425.a n = A017188 n

theorem P5767317977957335425.correct : P5767317977957335425.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P5767317977957335425.a, A017188.P2699637439138055383.a, A008591, A008591.P8937864482545511630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P10019561256927592421

`(1-A017197(n))²²`
-/

namespace A017188.P10019561256927592421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017197 n) ^ 2) ^ 2

end

end A017188.P10019561256927592421

namespace A017188

/-- `(1-A017197(n))²²` -/
def P10019561256927592421.Spec : Prop :=
  ∀ n, P10019561256927592421.a n = A017188 n

theorem P10019561256927592421.correct : P10019561256927592421.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P10019561256927592421.a, A017188.P2699637439138055383.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P11429249681620762239

`(2-A017209(n))²²`
-/

namespace A017188.P11429249681620762239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017209 n) ^ 2) ^ 2

end

end A017188.P11429249681620762239

namespace A017188

/-- `(2-A017209(n))²²` -/
def P11429249681620762239.Spec : Prop :=
  ∀ n, P11429249681620762239.a n = A017188 n

theorem P11429249681620762239.correct : P11429249681620762239.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P11429249681620762239.a, A017188.P2699637439138055383.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P74540264936887772

`(3-A017221(n))²²`
-/

namespace A017188.P74540264936887772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017221 n) ^ 2) ^ 2

end

end A017188.P74540264936887772

namespace A017188

/-- `(3-A017221(n))²²` -/
def P74540264936887772.Spec : Prop :=
  ∀ n, P74540264936887772.a n = A017188 n

theorem P74540264936887772.correct : P74540264936887772.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P74540264936887772.a, A017188.P2699637439138055383.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P9823377661545886812

`(A350521(n)/2)²²`
-/

namespace A017188.P9823377661545886812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A350521 n : ℚ) / 2) ^ 2) ^ 2

end

end A017188.P9823377661545886812

namespace A017188

/-- `(A350521(n)/2)²²` -/
def P9823377661545886812.Spec : Prop :=
  ∀ n, P9823377661545886812.a n = (A017188 n : ℚ)

theorem P9823377661545886812.correct : P9823377661545886812.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P9823377661545886812.a, A017188.P2699637439138055383.a, A350521, A350521.P8283092138613523292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P11328532637539935026

`(A017089(n)+n)²²`
-/

namespace A017188.P11328532637539935026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017089 n + (n : ℤ)) ^ 2) ^ 2

end

end A017188.P11328532637539935026

namespace A017188

/-- `(A017089(n)+n)²²` -/
def P11328532637539935026.Spec : Prop :=
  ∀ n, P11328532637539935026.a n = A017188 n

theorem P11328532637539935026.correct : P11328532637539935026.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P11328532637539935026.a, A017188.P2699637439138055383.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P17532981815065119741

`(n-A017293(n))²²`
-/

namespace A017188.P17532981815065119741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017293 n) ^ 2) ^ 2

end

end A017188.P17532981815065119741

namespace A017188

/-- `(n-A017293(n))²²` -/
def P17532981815065119741.Spec : Prop :=
  ∀ n, P17532981815065119741.a n = A017188 n

theorem P17532981815065119741.correct : P17532981815065119741.Spec := by
  intro n
  simp only [A017188, Nat.add_sub_cancel, A017188.P17532981815065119741.a, A017188.P2699637439138055383.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017188

/-! ## A017188.P9880479388613093055

`(sqrt(A017174(n))+1)²²`
-/

namespace A017188.P9880479388613093055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017174 n : ℝ) + 1) ^ 2) ^ 2

end

end A017188.P9880479388613093055

namespace A017188

/-- `(sqrt(A017174(n))+1)²²` -/
def P9880479388613093055.Spec : Prop :=
  ∀ n, P9880479388613093055.a n = (A017188 n : ℝ)

end A017188

/-! ## A017188.P18261743299179862878

`(sqrt(A017162(n))+2)²²`
-/

namespace A017188.P18261743299179862878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017162 n : ℝ) + 2) ^ 2) ^ 2

end

end A017188.P18261743299179862878

namespace A017188

/-- `(sqrt(A017162(n))+2)²²` -/
def P18261743299179862878.Spec : Prop :=
  ∀ n, P18261743299179862878.a n = (A017188 n : ℝ)

end A017188

/-!
# A017189: a(n) = (9*n + 2)^5.

The programs for A017189, the canonical program `A017189.P12010407492173407814` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017189 has offset 0).

The definition of A017189 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)^5` (program `A017189.P12010407492173407814`, by `A017189.P12010407492173407814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017189.P12010407492173407814

`(9*n+2)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017189

/-- `(9*n+2)^5` -/
def P12010407492173407814.Spec : Prop :=
  ∀ n, (P12010407492173407814.a n : ℤ) = A017189 n

theorem P12010407492173407814.correct : P12010407492173407814.Spec := by
  intro n
  simp only [A017189]

end A017189

/-! ## A017189.P15517396065852277325

`filter[n^5, dr(2*#)]`
-/

namespace A017189.P15517396065852277325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (2 * f1 j : ℤ) = 1) n)

end

end A017189.P15517396065852277325

namespace A017189

/-- `filter[n^5, dr(2*#)]` -/
def P15517396065852277325.Spec : Prop :=
  ∀ n, (P15517396065852277325.a n : ℤ) = A017189 n

end A017189

/-! ## A017189.P15172797951904259245

`filter[n^5, dr(#)-4]`
-/

namespace A017189.P15172797951904259245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (SequenceMachineLib.digitalRoot (f1 j : ℤ) : ℤ) - 4 = 1) n)

end

end A017189.P15172797951904259245

namespace A017189

/-- `filter[n^5, dr(#)-4]` -/
def P15172797951904259245.Spec : Prop :=
  ∀ n, (P15172797951904259245.a n : ℤ) = A017189 n

end A017189

/-! ## A017189.P8076213041286411415

`record[(n+2-dr(n)²)^5]`
-/

namespace A017189.P8076213041286411415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017189.P8076213041286411415

namespace A017189

/-- `record[(n+2-dr(n)²)^5]` -/
def P8076213041286411415.Spec : Prop :=
  ∀ n, P8076213041286411415.a n = A017189 n

end A017189

/-! ## A017189.P17677965812269514009

`record[(n+2)^(5/dr(n+1))]`
-/

namespace A017189.P17677965812269514009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (5 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017189.P17677965812269514009

namespace A017189

/-- `record[(n+2)^(5/dr(n+1))]` -/
def P17677965812269514009.Spec : Prop :=
  ∀ n, P17677965812269514009.a n = (A017189 n : ℝ)

end A017189

/-! ## A017189.P16013141460587941375

`sqrt(A017194(n))`
-/

namespace A017189.P16013141460587941375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017194 n : ℝ)

end

end A017189.P16013141460587941375

namespace A017189

/-- `sqrt(A017194(n))` -/
def P16013141460587941375.Spec : Prop :=
  ∀ n, P16013141460587941375.a n = (A017189 n : ℝ)

end A017189

/-! ## A017189.P9915956599739243669

`sqrt(A017186(n)^5)`
-/

namespace A017189.P9915956599739243669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017186 n ^ 5 : ℝ)

end

end A017189.P9915956599739243669

namespace A017189

/-- `sqrt(A017186(n)^5)` -/
def P9915956599739243669.Spec : Prop :=
  ∀ n, P9915956599739243669.a n = (A017189 n : ℝ)

end A017189

/-! ## A017189.P423889039737881301

`(9*n+2)*A017188(n)`
-/

namespace A017189.P423889039737881301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 2 : ℤ) * A017188 n

end

end A017189.P423889039737881301

namespace A017189

/-- `(9*n+2)*A017188(n)` -/
def P423889039737881301.Spec : Prop :=
  ∀ n, P423889039737881301.a n = A017189 n

theorem P423889039737881301.correct : P423889039737881301.Spec := by
  intro n
  simp only [A017189, Nat.add_sub_cancel, A017189.P423889039737881301.a, A017189.P12010407492173407814.a, A017188, A017188.P2699637439138055383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017189

/-! ## A017189.P10153517514859055280

`A017186(n)*A017187(n)`
-/

namespace A017189.P10153517514859055280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n * A017187 n

end

end A017189.P10153517514859055280

namespace A017189

/-- `A017186(n)*A017187(n)` -/
def P10153517514859055280.Spec : Prop :=
  ∀ n, P10153517514859055280.a n = A017189 n

theorem P10153517514859055280.correct : P10153517514859055280.Spec := by
  intro n
  simp only [A017189, Nat.add_sub_cancel, A017189.P10153517514859055280.a, A017189.P12010407492173407814.a, A017186, A017186.P13293888810662431780.a, A017187, A017187.P4396294377249438443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017189

/-! ## A017189.P7398856070096045523

`A017190(n)/A017185(n)`
-/

namespace A017189.P7398856070096045523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017190 n : ℚ) / (A017185 n : ℚ)

end

end A017189.P7398856070096045523

namespace A017189

/-- `A017190(n)/A017185(n)` -/
def P7398856070096045523.Spec : Prop :=
  ∀ n, P7398856070096045523.a n = (A017189 n : ℚ)

end A017189

/-! ## A017189.P15842500058020785555

`A017186(n)²*A017185(n)`
-/

namespace A017189.P15842500058020785555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n ^ 2 * A017185 n

end

end A017189.P15842500058020785555

namespace A017189

/-- `A017186(n)²*A017185(n)` -/
def P15842500058020785555.Spec : Prop :=
  ∀ n, P15842500058020785555.a n = A017189 n

theorem P15842500058020785555.correct : P15842500058020785555.Spec := by
  intro n
  simp only [A017189, Nat.add_sub_cancel, A017189.P15842500058020785555.a, A017189.P12010407492173407814.a, A017185, A017185.P12174419037402659888.a, A017186, A017186.P13293888810662431780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017189

/-! ## A017189.P9508650651915801613

`A017185(n)²*A017187(n)`
-/

namespace A017189.P9508650651915801613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n ^ 2 * A017187 n

end

end A017189.P9508650651915801613

namespace A017189

/-- `A017185(n)²*A017187(n)` -/
def P9508650651915801613.Spec : Prop :=
  ∀ n, P9508650651915801613.a n = A017189 n

theorem P9508650651915801613.correct : P9508650651915801613.Spec := by
  intro n
  simp only [A017189, Nat.add_sub_cancel, A017189.P9508650651915801613.a, A017189.P12010407492173407814.a, A017185, A017185.P12174419037402659888.a, A017187, A017187.P4396294377249438443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017189

/-! ## A017189.P12837050743910979791

`A017188(n)²/A017187(n)`
-/

namespace A017189.P12837050743910979791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017188 n ^ 2 : ℚ) / (A017187 n : ℚ)

end

end A017189.P12837050743910979791

namespace A017189

/-- `A017188(n)²/A017187(n)` -/
def P12837050743910979791.Spec : Prop :=
  ∀ n, P12837050743910979791.a n = (A017189 n : ℚ)

end A017189

/-! ## A017189.P7171174276920684425

`(A017173(n)+1)²*A017187(n)`
-/

namespace A017189.P7171174276920684425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017173 n + 1) ^ 2 * A017187 n

end

end A017189.P7171174276920684425

namespace A017189

/-- `(A017173(n)+1)²*A017187(n)` -/
def P7171174276920684425.Spec : Prop :=
  ∀ n, P7171174276920684425.a n = A017189 n

theorem P7171174276920684425.correct : P7171174276920684425.Spec := by
  intro n
  simp only [A017189, Nat.add_sub_cancel, A017189.P7171174276920684425.a, A017189.P12010407492173407814.a, A017173, A017173.P17951010485655810208.a, A017187, A017187.P4396294377249438443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017189

/-! ## A017189.P17670170893168336839

`A017186(n)²*A168413(2*n+1)`
-/

namespace A017189.P17670170893168336839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n ^ 2 * A168413 (2 * n + 1)

end

end A017189.P17670170893168336839

namespace A017189

/-- `A017186(n)²*A168413(2*n+1)` -/
def P17670170893168336839.Spec : Prop :=
  ∀ n, P17670170893168336839.a n = A017189 n

end A017189

/-! ## A017189.P10168768678059923489

`A193910(2*n+1)²²*A193910(2*n+1)`
-/

namespace A017189.P10168768678059923489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193910 (2 * n + 1) ^ 2) ^ 2 * A193910 (2 * n + 1)

end

end A017189.P10168768678059923489

namespace A017189

/-- `A193910(2*n+1)²²*A193910(2*n+1)` -/
def P10168768678059923489.Spec : Prop :=
  ∀ n, P10168768678059923489.a n = A017189 n

end A017189

/-! ## A017189.P2389631794620779265

`A061100(2*n+1)²*sqrt(A061100(2*n+1))`
-/

namespace A017189.P2389631794620779265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061100 (2 * n + 1) ^ 2 : ℝ) * Real.sqrt (A061100 (2 * n + 1) : ℝ)

end

end A017189.P2389631794620779265

namespace A017189

/-- `A061100(2*n+1)²*sqrt(A061100(2*n+1))` -/
def P2389631794620779265.Spec : Prop :=
  ∀ n, P2389631794620779265.a n = (A017189 n : ℝ)

end A017189

/-! ## A017189.P8305753918392260173

`A063289(2*n+3)²²*A063289(2*n+3)`
-/

namespace A017189.P8305753918392260173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063289 (2 * n + 3) ^ 2) ^ 2 * A063289 (2 * n + 3)

end

end A017189.P8305753918392260173

namespace A017189

/-- `A063289(2*n+3)²²*A063289(2*n+3)` -/
def P8305753918392260173.Spec : Prop :=
  ∀ n, P8305753918392260173.a n = A017189 n

end A017189

/-! ## A017189.P5112031930754004979

`A016793(3*n)`
-/

namespace A017189.P5112031930754004979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 (3 * n)

end

end A017189.P5112031930754004979

namespace A017189

/-- `A016793(3*n)` -/
def P5112031930754004979.Spec : Prop :=
  ∀ n, P5112031930754004979.a n = A017189 n

theorem P5112031930754004979.correct : P5112031930754004979.Spec := by
  intro n
  simp only [A017189, Nat.add_sub_cancel, A017189.P5112031930754004979.a, A017189.P12010407492173407814.a, A016793, A016793.P7571111589597192072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017189

/-! ## A017189.P9131215512236192157

`(9*n+2)*A016792(3*n)`
-/

namespace A017189.P9131215512236192157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 2 : ℤ) * A016792 (3 * n)

end

end A017189.P9131215512236192157

namespace A017189

/-- `(9*n+2)*A016792(3*n)` -/
def P9131215512236192157.Spec : Prop :=
  ∀ n, P9131215512236192157.a n = A017189 n

theorem P9131215512236192157.correct : P9131215512236192157.Spec := by
  intro n
  simp only [A017189, Nat.add_sub_cancel, A017189.P9131215512236192157.a, A017189.P12010407492173407814.a, A016792, A016792.P16426647478479500699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017189

/-!
# A017190: a(n) = (9*n + 2)^6.

The programs for A017190, the canonical program `A017190.P16935356994830627096` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017190 has offset 0).

The definition of A017190 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)^6` (program `A017190.P16935356994830627096`, by `A017190.P16935356994830627096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017190.P16935356994830627096

`(9*n+2)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017190

/-- `(9*n+2)^6` -/
def P16935356994830627096.Spec : Prop :=
  ∀ n, (P16935356994830627096.a n : ℤ) = A017190 n

theorem P16935356994830627096.correct : P16935356994830627096.Spec := by
  intro n
  simp only [A017190]

end A017190

/-! ## A017190.P13988153016014045431

`record[(dr(2-n)-n)^6]`
-/

namespace A017190.P13988153016014045431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017190.P13988153016014045431

namespace A017190

/-- `record[(dr(2-n)-n)^6]` -/
def P13988153016014045431.Spec : Prop :=
  ∀ n, P13988153016014045431.a n = A017190 n

end A017190

/-! ## A017190.P6143748627028300845

`record[(n+2)^(6/dr(n+1))]`
-/

namespace A017190.P6143748627028300845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (6 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017190.P6143748627028300845

namespace A017190

/-- `record[(n+2)^(6/dr(n+1))]` -/
def P6143748627028300845.Spec : Prop :=
  ∀ n, P6143748627028300845.a n = (A017190 n : ℝ)

end A017190

/-! ## A017190.P625318540772553297

`A017187(n)²`
-/

namespace A017190.P625318540772553297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017187 n ^ 2

end

end A017190.P625318540772553297

namespace A017190

/-- `A017187(n)²` -/
def P625318540772553297.Spec : Prop :=
  ∀ n, P625318540772553297.a n = A017190 n

theorem P625318540772553297.correct : P625318540772553297.Spec := by
  intro n
  simp only [A017190, Nat.add_sub_cancel, A017190.P625318540772553297.a, A017190.P16935356994830627096.a, A017187, A017187.P4396294377249438443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017190

/-! ## A017190.P11234435220181579389

`sqrt(A017188(n)^3)`
-/

namespace A017190.P11234435220181579389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017188 n ^ 3 : ℝ)

end

end A017190.P11234435220181579389

namespace A017190

/-- `sqrt(A017188(n)^3)` -/
def P11234435220181579389.Spec : Prop :=
  ∀ n, P11234435220181579389.a n = (A017190 n : ℝ)

end A017190

/-! ## A017190.P3840513486194596777

`((A017173(n)+1)^3)²`
-/

namespace A017190.P3840513486194596777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017173 n + 1) ^ 3) ^ 2

end

end A017190.P3840513486194596777

namespace A017190

/-- `((A017173(n)+1)^3)²` -/
def P3840513486194596777.Spec : Prop :=
  ∀ n, P3840513486194596777.a n = A017190 n

theorem P3840513486194596777.correct : P3840513486194596777.Spec := by
  intro n
  simp only [A017190, Nat.add_sub_cancel, A017190.P3840513486194596777.a, A017190.P16935356994830627096.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017190

/-! ## A017190.P7113397934679054036

`(9*n+2)*A017189(n)`
-/

namespace A017190.P7113397934679054036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 2 : ℤ) * A017189 n

end

end A017190.P7113397934679054036

namespace A017190

/-- `(9*n+2)*A017189(n)` -/
def P7113397934679054036.Spec : Prop :=
  ∀ n, P7113397934679054036.a n = A017190 n

theorem P7113397934679054036.correct : P7113397934679054036.Spec := by
  intro n
  simp only [A017190, Nat.add_sub_cancel, A017190.P7113397934679054036.a, A017190.P16935356994830627096.a, A017189, A017189.P12010407492173407814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017190

/-! ## A017190.P5537338997251309851

`A017186(n)*A017188(n)`
-/

namespace A017190.P5537338997251309851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n * A017188 n

end

end A017190.P5537338997251309851

namespace A017190

/-- `A017186(n)*A017188(n)` -/
def P5537338997251309851.Spec : Prop :=
  ∀ n, P5537338997251309851.a n = A017190 n

theorem P5537338997251309851.correct : P5537338997251309851.Spec := by
  intro n
  simp only [A017190, Nat.add_sub_cancel, A017190.P5537338997251309851.a, A017190.P16935356994830627096.a, A017186, A017186.P13293888810662431780.a, A017188, A017188.P2699637439138055383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017190

/-! ## A017190.P6378841307344447932

`(A017185(n)*A017186(n))²`
-/

namespace A017190.P6378841307344447932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017185 n * A017186 n) ^ 2

end

end A017190.P6378841307344447932

namespace A017190

/-- `(A017185(n)*A017186(n))²` -/
def P6378841307344447932.Spec : Prop :=
  ∀ n, P6378841307344447932.a n = A017190 n

theorem P6378841307344447932.correct : P6378841307344447932.Spec := by
  intro n
  simp only [A017190, Nat.add_sub_cancel, A017190.P6378841307344447932.a, A017190.P16935356994830627096.a, A017185, A017185.P12174419037402659888.a, A017186, A017186.P13293888810662431780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017190

/-! ## A017190.P8502354114239771705

`A017185(n)²*A017188(n)`
-/

namespace A017190.P8502354114239771705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n ^ 2 * A017188 n

end

end A017190.P8502354114239771705

namespace A017190

/-- `A017185(n)²*A017188(n)` -/
def P8502354114239771705.Spec : Prop :=
  ∀ n, P8502354114239771705.a n = A017190 n

theorem P8502354114239771705.correct : P8502354114239771705.Spec := by
  intro n
  simp only [A017190, Nat.add_sub_cancel, A017190.P8502354114239771705.a, A017190.P16935356994830627096.a, A017185, A017185.P12174419037402659888.a, A017188, A017188.P2699637439138055383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017190

/-! ## A017190.P5367410528576309344

`(A017189(n)/A017186(n))²`
-/

namespace A017190.P5367410528576309344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017189 n : ℚ) / (A017186 n : ℚ)) ^ 2

end

end A017190.P5367410528576309344

namespace A017190

/-- `(A017189(n)/A017186(n))²` -/
def P5367410528576309344.Spec : Prop :=
  ∀ n, P5367410528576309344.a n = (A017190 n : ℚ)

end A017190

/-! ## A017190.P649089439926711091

`A017189(n)²/A017188(n)`
-/

namespace A017190.P649089439926711091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017189 n ^ 2 : ℚ) / (A017188 n : ℚ)

end

end A017190.P649089439926711091

namespace A017190

/-- `A017189(n)²/A017188(n)` -/
def P649089439926711091.Spec : Prop :=
  ∀ n, P649089439926711091.a n = (A017190 n : ℚ)

end A017190

/-! ## A017190.P2775276098315923892

`sqrt(sqrt(A017192(n))*A017192(n))`
-/

namespace A017190.P2775276098315923892
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017192 n : ℝ) * (A017192 n : ℝ))

end

end A017190.P2775276098315923892

namespace A017190

/-- `sqrt(sqrt(A017192(n))*A017192(n))` -/
def P2775276098315923892.Spec : Prop :=
  ∀ n, P2775276098315923892.a n = (A017190 n : ℝ)

end A017190

/-! ## A017190.P6615955519718530248

`(Δ[A062708(n)]^3)²`
-/

namespace A017190.P6615955519718530248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017190.P6615955519718530248

namespace A017190

/-- `(Δ[A062708(n)]^3)²` -/
def P6615955519718530248.Spec : Prop :=
  ∀ n, P6615955519718530248.a n = A017190 n

end A017190

/-! ## A017190.P950755381521529305

`(Δ[A140064(n)]^3)²`
-/

namespace A017190.P950755381521529305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017190.P950755381521529305

namespace A017190

/-- `(Δ[A140064(n)]^3)²` -/
def P950755381521529305.Spec : Prop :=
  ∀ n, P950755381521529305.a n = A017190 n

end A017190

/-! ## A017190.P3234302221953125128

`A061100(2*n+1)²*A061100(2*n+1)`
-/

namespace A017190.P3234302221953125128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061100 (2 * n + 1) ^ 2 * A061100 (2 * n + 1)

end

end A017190.P3234302221953125128

namespace A017190

/-- `A061100(2*n+1)²*A061100(2*n+1)` -/
def P3234302221953125128.Spec : Prop :=
  ∀ n, P3234302221953125128.a n = A017190 n

end A017190

/-! ## A017190.P15046070885010580910

`(A168413(2*n+1)²*A168413(2*n+1))²`
-/

namespace A017190.P15046070885010580910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168413 (2 * n + 1) ^ 2 * A168413 (2 * n + 1)) ^ 2

end

end A017190.P15046070885010580910

namespace A017190

/-- `(A168413(2*n+1)²*A168413(2*n+1))²` -/
def P15046070885010580910.Spec : Prop :=
  ∀ n, P15046070885010580910.a n = A017190 n

end A017190

/-! ## A017190.P17549281300114847388

`(A193910(2*n+1)²*A193910(2*n+1))²`
-/

namespace A017190.P17549281300114847388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193910 (2 * n + 1) ^ 2 * A193910 (2 * n + 1)) ^ 2

end

end A017190.P17549281300114847388

namespace A017190

/-- `(A193910(2*n+1)²*A193910(2*n+1))²` -/
def P17549281300114847388.Spec : Prop :=
  ∀ n, P17549281300114847388.a n = A017190 n

end A017190

/-! ## A017190.P7571204555031950745

`(A063289(2*n+3)²*A063289(2*n+3))²`
-/

namespace A017190.P7571204555031950745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063289 (2 * n + 3) ^ 2 * A063289 (2 * n + 3)) ^ 2

end

end A017190.P7571204555031950745

namespace A017190

/-- `(A063289(2*n+3)²*A063289(2*n+3))²` -/
def P7571204555031950745.Spec : Prop :=
  ∀ n, P7571204555031950745.a n = A017190 n

end A017190

/-!
# A017191: a(n) = (9*n + 2)^7.

The programs for A017191, the canonical program `A017191.P3043102656669518733` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017191 has offset 0).

The definition of A017191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)^7` (program `A017191.P3043102656669518733`, by `A017191.P3043102656669518733.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017191.P3043102656669518733

`(9*n+2)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017191

/-- `(9*n+2)^7` -/
def P3043102656669518733.Spec : Prop :=
  ∀ n, (P3043102656669518733.a n : ℤ) = A017191 n

theorem P3043102656669518733.correct : P3043102656669518733.Spec := by
  intro n
  simp only [A017191]

end A017191

/-! ## A017191.P3647233978916438656

`record[(n+2)^(7/dr(n+1))]`
-/

namespace A017191.P3647233978916438656
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (7 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017191.P3647233978916438656

namespace A017191

/-- `record[(n+2)^(7/dr(n+1))]` -/
def P3647233978916438656.Spec : Prop :=
  ∀ n, P3647233978916438656.a n = (A017191 n : ℝ)

end A017191

/-! ## A017191.P15095911050122800485

`A017185(n)*A017190(n)`
-/

namespace A017191.P15095911050122800485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n * A017190 n

end

end A017191.P15095911050122800485

namespace A017191

/-- `A017185(n)*A017190(n)` -/
def P15095911050122800485.Spec : Prop :=
  ∀ n, P15095911050122800485.a n = A017191 n

theorem P15095911050122800485.correct : P15095911050122800485.Spec := by
  intro n
  simp only [A017191, Nat.add_sub_cancel, A017191.P15095911050122800485.a, A017191.P3043102656669518733.a, A017185, A017185.P12174419037402659888.a, A017190, A017190.P16935356994830627096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017191

/-! ## A017191.P10178331898781979853

`A017186(n)*A017189(n)`
-/

namespace A017191.P10178331898781979853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n * A017189 n

end

end A017191.P10178331898781979853

namespace A017191

/-- `A017186(n)*A017189(n)` -/
def P10178331898781979853.Spec : Prop :=
  ∀ n, P10178331898781979853.a n = A017191 n

theorem P10178331898781979853.correct : P10178331898781979853.Spec := by
  intro n
  simp only [A017191, Nat.add_sub_cancel, A017191.P10178331898781979853.a, A017191.P3043102656669518733.a, A017186, A017186.P13293888810662431780.a, A017189, A017189.P12010407492173407814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017191

/-! ## A017191.P15828680144567282777

`A017187(n)*A017188(n)`
-/

namespace A017191.P15828680144567282777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017187 n * A017188 n

end

end A017191.P15828680144567282777

namespace A017191

/-- `A017187(n)*A017188(n)` -/
def P15828680144567282777.Spec : Prop :=
  ∀ n, P15828680144567282777.a n = A017191 n

theorem P15828680144567282777.correct : P15828680144567282777.Spec := by
  intro n
  simp only [A017191, Nat.add_sub_cancel, A017191.P15828680144567282777.a, A017191.P3043102656669518733.a, A017187, A017187.P4396294377249438443.a, A017188, A017188.P2699637439138055383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017191

/-! ## A017191.P8392963833306026331

`A017187(n)²*A017185(n)`
-/

namespace A017191.P8392963833306026331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017187 n ^ 2 * A017185 n

end

end A017191.P8392963833306026331

namespace A017191

/-- `A017187(n)²*A017185(n)` -/
def P8392963833306026331.Spec : Prop :=
  ∀ n, P8392963833306026331.a n = A017191 n

theorem P8392963833306026331.correct : P8392963833306026331.Spec := by
  intro n
  simp only [A017191, Nat.add_sub_cancel, A017191.P8392963833306026331.a, A017191.P3043102656669518733.a, A017185, A017185.P12174419037402659888.a, A017187, A017187.P4396294377249438443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017191

/-! ## A017191.P18098943934602277611

`A017186(n)²*A017187(n)`
-/

namespace A017191.P18098943934602277611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n ^ 2 * A017187 n

end

end A017191.P18098943934602277611

namespace A017191

/-- `A017186(n)²*A017187(n)` -/
def P18098943934602277611.Spec : Prop :=
  ∀ n, P18098943934602277611.a n = A017191 n

theorem P18098943934602277611.correct : P18098943934602277611.Spec := by
  intro n
  simp only [A017191, Nat.add_sub_cancel, A017191.P18098943934602277611.a, A017191.P3043102656669518733.a, A017186, A017186.P13293888810662431780.a, A017187, A017187.P4396294377249438443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017191

/-! ## A017191.P2503917966155862445

`A017185(n)²*A017189(n)`
-/

namespace A017191.P2503917966155862445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n ^ 2 * A017189 n

end

end A017191.P2503917966155862445

namespace A017191

/-- `A017185(n)²*A017189(n)` -/
def P2503917966155862445.Spec : Prop :=
  ∀ n, P2503917966155862445.a n = A017191 n

theorem P2503917966155862445.correct : P2503917966155862445.Spec := by
  intro n
  simp only [A017191, Nat.add_sub_cancel, A017191.P2503917966155862445.a, A017191.P3043102656669518733.a, A017185, A017185.P12174419037402659888.a, A017189, A017189.P12010407492173407814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017191

/-! ## A017191.P1397676975048708884

`A017188(n)²/A017185(n)`
-/

namespace A017191.P1397676975048708884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017188 n ^ 2 : ℚ) / (A017185 n : ℚ)

end

end A017191.P1397676975048708884

namespace A017191

/-- `A017188(n)²/A017185(n)` -/
def P1397676975048708884.Spec : Prop :=
  ∀ n, P1397676975048708884.a n = (A017191 n : ℚ)

end A017191

/-! ## A017191.P13430141050906734105

`A017189(n)²/A017187(n)`
-/

namespace A017191.P13430141050906734105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017189 n ^ 2 : ℚ) / (A017187 n : ℚ)

end

end A017191.P13430141050906734105

namespace A017191

/-- `A017189(n)²/A017187(n)` -/
def P13430141050906734105.Spec : Prop :=
  ∀ n, P13430141050906734105.a n = (A017191 n : ℚ)

end A017191

/-! ## A017191.P5063211841584335812

`A017186(n)²²/A017185(n)`
-/

namespace A017191.P5063211841584335812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017186 n ^ 2) ^ 2 : ℚ) / (A017185 n : ℚ)

end

end A017191.P5063211841584335812

namespace A017191

/-- `A017186(n)²²/A017185(n)` -/
def P5063211841584335812.Spec : Prop :=
  ∀ n, P5063211841584335812.a n = (A017191 n : ℚ)

end A017191

/-! ## A017191.P14166517852907450829

`(A017173(n)+1)*A017187(n)²`
-/

namespace A017191.P14166517852907450829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017173 n + 1) * A017187 n ^ 2

end

end A017191.P14166517852907450829

namespace A017191

/-- `(A017173(n)+1)*A017187(n)²` -/
def P14166517852907450829.Spec : Prop :=
  ∀ n, P14166517852907450829.a n = A017191 n

theorem P14166517852907450829.correct : P14166517852907450829.Spec := by
  intro n
  simp only [A017191, Nat.add_sub_cancel, A017191.P14166517852907450829.a, A017191.P3043102656669518733.a, A017173, A017173.P17951010485655810208.a, A017187, A017187.P4396294377249438443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017191

/-! ## A017191.P7725210080858383030

`A017188(n)/A017189(n)*A017188(n)²`
-/

namespace A017191.P7725210080858383030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017188 n : ℚ) / (A017189 n : ℚ) * (A017188 n ^ 2 : ℚ)

end

end A017191.P7725210080858383030

namespace A017191

/-- `A017188(n)/A017189(n)*A017188(n)²` -/
def P7725210080858383030.Spec : Prop :=
  ∀ n, P7725210080858383030.a n = (A017191 n : ℚ)

end A017191

/-! ## A017191.P131150243381079776

`A016795(3*n)`
-/

namespace A017191.P131150243381079776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016795 (3 * n)

end

end A017191.P131150243381079776

namespace A017191

/-- `A016795(3*n)` -/
def P131150243381079776.Spec : Prop :=
  ∀ n, P131150243381079776.a n = A017191 n

theorem P131150243381079776.correct : P131150243381079776.Spec := by
  intro n
  simp only [A017191, Nat.add_sub_cancel, A017191.P131150243381079776.a, A017191.P3043102656669518733.a, A016795, A016795.P9782135587463226103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017191

/-! ## A017191.P97760673139654118

`A001015(9*n+2)`
-/

namespace A017191.P97760673139654118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (9 * n + 2)

end

end A017191.P97760673139654118

namespace A017191

/-- `A001015(9*n+2)` -/
def P97760673139654118.Spec : Prop :=
  ∀ n, P97760673139654118.a n = A017191 n

end A017191

/-!
# A017192: a(n) = (9*n + 2)^8.

The programs for A017192, the canonical program `A017192.P3424863591459311199` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017192 has offset 0).

The definition of A017192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)^8` (program `A017192.P3424863591459311199`, by `A017192.P3424863591459311199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017192.P3424863591459311199

`(9*n+2)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017192

/-- `(9*n+2)^8` -/
def P3424863591459311199.Spec : Prop :=
  ∀ n, (P3424863591459311199.a n : ℤ) = A017192 n

theorem P3424863591459311199.correct : P3424863591459311199.Spec := by
  intro n
  simp only [A017192]

end A017192

/-! ## A017192.P6564735696316908352

`record[(dr(2-n)-n)^8]`
-/

namespace A017192.P6564735696316908352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (2 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017192.P6564735696316908352

namespace A017192

/-- `record[(dr(2-n)-n)^8]` -/
def P6564735696316908352.Spec : Prop :=
  ∀ n, P6564735696316908352.a n = A017192 n

end A017192

/-! ## A017192.P13582802118229122606

`record[(dr(2-n)-n)²²²]`
-/

namespace A017192.P13582802118229122606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digitalRoot (2 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017192.P13582802118229122606

namespace A017192

/-- `record[(dr(2-n)-n)²²²]` -/
def P13582802118229122606.Spec : Prop :=
  ∀ n, P13582802118229122606.a n = A017192 n

end A017192

/-! ## A017192.P16339174306408385383

`record[(n+2)^(8/dr(n+1))]`
-/

namespace A017192.P16339174306408385383
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (8 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017192.P16339174306408385383

namespace A017192

/-- `record[(n+2)^(8/dr(n+1))]` -/
def P16339174306408385383.Spec : Prop :=
  ∀ n, P16339174306408385383.a n = (A017192 n : ℝ)

end A017192

/-! ## A017192.P6837580826157666557

`record[((n+2)/dr(n+1))²²²]`
-/

namespace A017192.P6837580826157666557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 2 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017192.P6837580826157666557

namespace A017192

/-- `record[((n+2)/dr(n+1))²²²]` -/
def P6837580826157666557.Spec : Prop :=
  ∀ n, P6837580826157666557.a n = (A017192 n : ℚ)

end A017192

/-! ## A017192.P11093217206631831227

`A017188(n)²`
-/

namespace A017192.P11093217206631831227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017188 n ^ 2

end

end A017192.P11093217206631831227

namespace A017192

/-- `A017188(n)²` -/
def P11093217206631831227.Spec : Prop :=
  ∀ n, P11093217206631831227.a n = A017192 n

theorem P11093217206631831227.correct : P11093217206631831227.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P11093217206631831227.a, A017192.P3424863591459311199.a, A017188, A017188.P2699637439138055383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P17180884043615702399

`A017186(n)²²`
-/

namespace A017192.P17180884043615702399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017186 n ^ 2) ^ 2

end

end A017192.P17180884043615702399

namespace A017192

/-- `A017186(n)²²` -/
def P17180884043615702399.Spec : Prop :=
  ∀ n, P17180884043615702399.a n = A017192 n

theorem P17180884043615702399.correct : P17180884043615702399.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P17180884043615702399.a, A017192.P3424863591459311199.a, A017186, A017186.P13293888810662431780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P12348783382942645509

`A017185(n)²²²`
-/

namespace A017192.P12348783382942645509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017185 n ^ 2) ^ 2) ^ 2

end

end A017192.P12348783382942645509

namespace A017192

/-- `A017185(n)²²²` -/
def P12348783382942645509.Spec : Prop :=
  ∀ n, P12348783382942645509.a n = A017192 n

theorem P12348783382942645509.correct : P12348783382942645509.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P12348783382942645509.a, A017192.P3424863591459311199.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P17634634723000026667

`(A017173(n)+1)²²²`
-/

namespace A017192.P17634634723000026667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017173 n + 1) ^ 2) ^ 2) ^ 2

end

end A017192.P17634634723000026667

namespace A017192

/-- `(A017173(n)+1)²²²` -/
def P17634634723000026667.Spec : Prop :=
  ∀ n, P17634634723000026667.a n = A017192 n

theorem P17634634723000026667.correct : P17634634723000026667.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P17634634723000026667.a, A017192.P3424863591459311199.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P3813089320209736759

`(A008591(n)+2)²²²`
-/

namespace A017192.P3813089320209736759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008591 n + 2) ^ 2) ^ 2) ^ 2

end

end A017192.P3813089320209736759

namespace A017192

/-- `(A008591(n)+2)²²²` -/
def P3813089320209736759.Spec : Prop :=
  ∀ n, P3813089320209736759.a n = A017192 n

theorem P3813089320209736759.correct : P3813089320209736759.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P3813089320209736759.a, A017192.P3424863591459311199.a, A008591, A008591.P8937864482545511630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P4522306705887503956

`(1-A017197(n))²²²`
-/

namespace A017192.P4522306705887503956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017197 n) ^ 2) ^ 2) ^ 2

end

end A017192.P4522306705887503956

namespace A017192

/-- `(1-A017197(n))²²²` -/
def P4522306705887503956.Spec : Prop :=
  ∀ n, P4522306705887503956.a n = A017192 n

theorem P4522306705887503956.correct : P4522306705887503956.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P4522306705887503956.a, A017192.P3424863591459311199.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P17091064339879300344

`(2-A017209(n))²²²`
-/

namespace A017192.P17091064339879300344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017209 n) ^ 2) ^ 2) ^ 2

end

end A017192.P17091064339879300344

namespace A017192

/-- `(2-A017209(n))²²²` -/
def P17091064339879300344.Spec : Prop :=
  ∀ n, P17091064339879300344.a n = A017192 n

theorem P17091064339879300344.correct : P17091064339879300344.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P17091064339879300344.a, A017192.P3424863591459311199.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P436683941200392699

`(A017089(n)+n)²²²`
-/

namespace A017192.P436683941200392699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017089 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017192.P436683941200392699

namespace A017192

/-- `(A017089(n)+n)²²²` -/
def P436683941200392699.Spec : Prop :=
  ∀ n, P436683941200392699.a n = A017192 n

theorem P436683941200392699.correct : P436683941200392699.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P436683941200392699.a, A017192.P3424863591459311199.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P4790537840864276841

`(n-A017293(n))²²²`
-/

namespace A017192.P4790537840864276841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017293 n) ^ 2) ^ 2) ^ 2

end

end A017192.P4790537840864276841

namespace A017192

/-- `(n-A017293(n))²²²` -/
def P4790537840864276841.Spec : Prop :=
  ∀ n, P4790537840864276841.a n = A017192 n

theorem P4790537840864276841.correct : P4790537840864276841.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P4790537840864276841.a, A017192.P3424863591459311199.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P17864633425886598454

`((1-3*A016777(n))^4)²`
-/

namespace A017192.P17864633425886598454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - 3 * A016777 n) ^ 4) ^ 2

end

end A017192.P17864633425886598454

namespace A017192

/-- `((1-3*A016777(n))^4)²` -/
def P17864633425886598454.Spec : Prop :=
  ∀ n, P17864633425886598454.a n = A017192 n

theorem P17864633425886598454.correct : P17864633425886598454.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P17864633425886598454.a, A017192.P3424863591459311199.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P11604809269709802019

`A000027(3*n+6*n+2)²²²`
-/

namespace A017192.P11604809269709802019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000027 (3 * n + (6 * n + 2)) ^ 2) ^ 2) ^ 2

end

end A017192.P11604809269709802019

namespace A017192

/-- `A000027(3*n+6*n+2)²²²` -/
def P11604809269709802019.Spec : Prop :=
  ∀ n, P11604809269709802019.a n = A017192 n

end A017192

/-! ## A017192.P2273623912245442149

`A017186(n)*A017190(n)`
-/

namespace A017192.P2273623912245442149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n * A017190 n

end

end A017192.P2273623912245442149

namespace A017192

/-- `A017186(n)*A017190(n)` -/
def P2273623912245442149.Spec : Prop :=
  ∀ n, P2273623912245442149.a n = A017192 n

theorem P2273623912245442149.correct : P2273623912245442149.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P2273623912245442149.a, A017192.P3424863591459311199.a, A017186, A017186.P13293888810662431780.a, A017190, A017190.P16935356994830627096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P1314289895376783902

`A017187(n)*A017189(n)`
-/

namespace A017192.P1314289895376783902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017187 n * A017189 n

end

end A017192.P1314289895376783902

namespace A017192

/-- `A017187(n)*A017189(n)` -/
def P1314289895376783902.Spec : Prop :=
  ∀ n, P1314289895376783902.a n = A017192 n

theorem P1314289895376783902.correct : P1314289895376783902.Spec := by
  intro n
  simp only [A017192, Nat.add_sub_cancel, A017192.P1314289895376783902.a, A017192.P3424863591459311199.a, A017187, A017187.P4396294377249438443.a, A017189, A017189.P12010407492173407814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017192

/-! ## A017192.P8628088036811265267

`Δ[A062708(n)]²²²`
-/

namespace A017192.P8628088036811265267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017192.P8628088036811265267

namespace A017192

/-- `Δ[A062708(n)]²²²` -/
def P8628088036811265267.Spec : Prop :=
  ∀ n, P8628088036811265267.a n = A017192 n

end A017192

/-! ## A017192.P1086978900950285782

`Δ[A140064(n)]²²²`
-/

namespace A017192.P1086978900950285782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017192.P1086978900950285782

namespace A017192

/-- `Δ[A140064(n)]²²²` -/
def P1086978900950285782.Spec : Prop :=
  ∀ n, P1086978900950285782.a n = A017192 n

end A017192

/-!
# A017193: a(n) = (9*n + 2)^9.

The programs for A017193, the canonical program `A017193.P336313574997285272` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017193 has offset 0).

The definition of A017193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)^9` (program `A017193.P336313574997285272`, by `A017193.P336313574997285272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017193.P336313574997285272

`(9*n+2)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017193

/-- `(9*n+2)^9` -/
def P336313574997285272.Spec : Prop :=
  ∀ n, (P336313574997285272.a n : ℤ) = A017193 n

theorem P336313574997285272.correct : P336313574997285272.Spec := by
  intro n
  simp only [A017193]

end A017193

/-! ## A017193.P8010187005951229303

`record[(n+2)^gcd(9, n)]`
-/

namespace A017193.P8010187005951229303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 9 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017193.P8010187005951229303

namespace A017193

/-- `record[(n+2)^gcd(9, n)]` -/
def P8010187005951229303.Spec : Prop :=
  ∀ n, (P8010187005951229303.a n : ℤ) = A017193 n

end A017193

/-! ## A017193.P6607541990907029393

`record[(n+2)^(9/dr(n+1))]`
-/

namespace A017193.P6607541990907029393
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (9 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017193.P6607541990907029393

namespace A017193

/-- `record[(n+2)^(9/dr(n+1))]` -/
def P6607541990907029393.Spec : Prop :=
  ∀ n, P6607541990907029393.a n = (A017193 n : ℝ)

end A017193

/-! ## A017193.P1352939597998745899

`sqrt(A017190(n)^3)`
-/

namespace A017193.P1352939597998745899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017190 n ^ 3 : ℝ)

end

end A017193.P1352939597998745899

namespace A017193

/-- `sqrt(A017190(n)^3)` -/
def P1352939597998745899.Spec : Prop :=
  ∀ n, P1352939597998745899.a n = (A017193 n : ℝ)

end A017193

/-! ## A017193.P8325453417470475605

`A017187(n)*A017190(n)`
-/

namespace A017193.P8325453417470475605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017187 n * A017190 n

end

end A017193.P8325453417470475605

namespace A017193

/-- `A017187(n)*A017190(n)` -/
def P8325453417470475605.Spec : Prop :=
  ∀ n, P8325453417470475605.a n = A017193 n

theorem P8325453417470475605.correct : P8325453417470475605.Spec := by
  intro n
  simp only [A017193, Nat.add_sub_cancel, A017193.P8325453417470475605.a, A017193.P336313574997285272.a, A017187, A017187.P4396294377249438443.a, A017190, A017190.P16935356994830627096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017193

/-! ## A017193.P5427832082983437789

`A017188(n)*A017189(n)`
-/

namespace A017193.P5427832082983437789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017188 n * A017189 n

end

end A017193.P5427832082983437789

namespace A017193

/-- `A017188(n)*A017189(n)` -/
def P5427832082983437789.Spec : Prop :=
  ∀ n, P5427832082983437789.a n = A017193 n

theorem P5427832082983437789.correct : P5427832082983437789.Spec := by
  intro n
  simp only [A017193, Nat.add_sub_cancel, A017193.P5427832082983437789.a, A017193.P336313574997285272.a, A017188, A017188.P2699637439138055383.a, A017189, A017189.P12010407492173407814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017193

/-! ## A017193.P3851243554742565590

`A017188(n)²*A017185(n)`
-/

namespace A017193.P3851243554742565590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017188 n ^ 2 * A017185 n

end

end A017193.P3851243554742565590

namespace A017193

/-- `A017188(n)²*A017185(n)` -/
def P3851243554742565590.Spec : Prop :=
  ∀ n, P3851243554742565590.a n = A017193 n

theorem P3851243554742565590.correct : P3851243554742565590.Spec := by
  intro n
  simp only [A017193, Nat.add_sub_cancel, A017193.P3851243554742565590.a, A017193.P336313574997285272.a, A017185, A017185.P12174419037402659888.a, A017188, A017188.P2699637439138055383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017193

/-! ## A017193.P1613415805945119253

`A017186(n)²*A017189(n)`
-/

namespace A017193.P1613415805945119253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n ^ 2 * A017189 n

end

end A017193.P1613415805945119253

namespace A017193

/-- `A017186(n)²*A017189(n)` -/
def P1613415805945119253.Spec : Prop :=
  ∀ n, P1613415805945119253.a n = A017193 n

theorem P1613415805945119253.correct : P1613415805945119253.Spec := by
  intro n
  simp only [A017193, Nat.add_sub_cancel, A017193.P1613415805945119253.a, A017193.P336313574997285272.a, A017186, A017186.P13293888810662431780.a, A017189, A017189.P12010407492173407814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017193

/-! ## A017193.P1529915658486113350

`A017189(n)²/A017185(n)`
-/

namespace A017193.P1529915658486113350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017189 n ^ 2 : ℚ) / (A017185 n : ℚ)

end

end A017193.P1529915658486113350

namespace A017193

/-- `A017189(n)²/A017185(n)` -/
def P1529915658486113350.Spec : Prop :=
  ∀ n, P1529915658486113350.a n = (A017193 n : ℚ)

end A017193

/-! ## A017193.P3122943307548599301

`A017186(n)²²*A017185(n)`
-/

namespace A017193.P3122943307548599301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017186 n ^ 2) ^ 2 * A017185 n

end

end A017193.P3122943307548599301

namespace A017193

/-- `A017186(n)²²*A017185(n)` -/
def P3122943307548599301.Spec : Prop :=
  ∀ n, P3122943307548599301.a n = A017193 n

theorem P3122943307548599301.correct : P3122943307548599301.Spec := by
  intro n
  simp only [A017193, Nat.add_sub_cancel, A017193.P3122943307548599301.a, A017193.P336313574997285272.a, A017185, A017185.P12174419037402659888.a, A017186, A017186.P13293888810662431780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017193

/-! ## A017193.P7605623407284697563

`A017185(n)*A017190(n)*A017185(n)²`
-/

namespace A017193.P7605623407284697563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n * A017190 n * A017185 n ^ 2

end

end A017193.P7605623407284697563

namespace A017193

/-- `A017185(n)*A017190(n)*A017185(n)²` -/
def P7605623407284697563.Spec : Prop :=
  ∀ n, P7605623407284697563.a n = A017193 n

theorem P7605623407284697563.correct : P7605623407284697563.Spec := by
  intro n
  simp only [A017193, Nat.add_sub_cancel, A017193.P7605623407284697563.a, A017193.P336313574997285272.a, A017185, A017185.P12174419037402659888.a, A017190, A017190.P16935356994830627096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017193

/-! ## A017193.P12838966313399069961

`A016797(3*n)`
-/

namespace A017193.P12838966313399069961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016797 (3 * n)

end

end A017193.P12838966313399069961

namespace A017193

/-- `A016797(3*n)` -/
def P12838966313399069961.Spec : Prop :=
  ∀ n, P12838966313399069961.a n = A017193 n

theorem P12838966313399069961.correct : P12838966313399069961.Spec := by
  intro n
  simp only [A017193, Nat.add_sub_cancel, A017193.P12838966313399069961.a, A017193.P336313574997285272.a, A016797, A016797.P16599814047714379854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017193

/-! ## A017193.P4742794626372116051

`A001017(9*n+2)`
-/

namespace A017193.P4742794626372116051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (9 * n + 2)

end

end A017193.P4742794626372116051

namespace A017193

/-- `A001017(9*n+2)` -/
def P4742794626372116051.Spec : Prop :=
  ∀ n, P4742794626372116051.a n = A017193 n

end A017193

/-! ## A017193.P7147840039522790522

`1-A024007(A017173(n)+1)`
-/

namespace A017193.P7147840039522790522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024007 (A017173 n + 1).toNat

end

end A017193.P7147840039522790522

namespace A017193

/-- `1-A024007(A017173(n)+1)` -/
def P7147840039522790522.Spec : Prop :=
  ∀ n, P7147840039522790522.a n = A017193 n

end A017193

/-! ## A017193.P16309253756106785016

`A008218(A139609(n))²*A008218(A139609(n))`
-/

namespace A017193.P16309253756106785016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (A139609 n).toNat ^ 2 * A008218 (A139609 n).toNat

end

end A017193.P16309253756106785016

namespace A017193

/-- `A008218(A139609(n))²*A008218(A139609(n))` -/
def P16309253756106785016.Spec : Prop :=
  ∀ n, P16309253756106785016.a n = A017193 n

end A017193

/-!
# A017194: a(n) = (9*n + 2)^10.

The programs for A017194, the canonical program `A017194.P16748090076516150439` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017194 has offset 0).

The definition of A017194 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+2)^10` (program `A017194.P16748090076516150439`, by `A017194.P16748090076516150439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017194.P16748090076516150439

`(9*n+2)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017194

/-- `(9*n+2)^10` -/
def P16748090076516150439.Spec : Prop :=
  ∀ n, (P16748090076516150439.a n : ℤ) = A017194 n

theorem P16748090076516150439.correct : P16748090076516150439.Spec := by
  intro n
  simp only [A017194]

end A017194

/-! ## A017194.P8475741226588718039

`record[(n+2)^(10/dr(n+1))]`
-/

namespace A017194.P8475741226588718039
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (10 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017194.P8475741226588718039

namespace A017194

/-- `record[(n+2)^(10/dr(n+1))]` -/
def P8475741226588718039.Spec : Prop :=
  ∀ n, P8475741226588718039.a n = (A017194 n : ℝ)

end A017194

/-! ## A017194.P16348389443143805983

`A017189(n)²`
-/

namespace A017194.P16348389443143805983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017189 n ^ 2

end

end A017194.P16348389443143805983

namespace A017194

/-- `A017189(n)²` -/
def P16348389443143805983.Spec : Prop :=
  ∀ n, P16348389443143805983.a n = A017194 n

theorem P16348389443143805983.correct : P16348389443143805983.Spec := by
  intro n
  simp only [A017194, Nat.add_sub_cancel, A017194.P16348389443143805983.a, A017194.P16748090076516150439.a, A017189, A017189.P12010407492173407814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017194

/-! ## A017194.P9089137327621612988

`sqrt(A017188(n)^5)`
-/

namespace A017194.P9089137327621612988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017188 n ^ 5 : ℝ)

end

end A017194.P9089137327621612988

namespace A017194

/-- `sqrt(A017188(n)^5)` -/
def P9089137327621612988.Spec : Prop :=
  ∀ n, P9089137327621612988.a n = (A017194 n : ℝ)

end A017194

/-! ## A017194.P9009555899025800983

`A017188(n)*A017190(n)`
-/

namespace A017194.P9009555899025800983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017188 n * A017190 n

end

end A017194.P9009555899025800983

namespace A017194

/-- `A017188(n)*A017190(n)` -/
def P9009555899025800983.Spec : Prop :=
  ∀ n, P9009555899025800983.a n = A017194 n

theorem P9009555899025800983.correct : P9009555899025800983.Spec := by
  intro n
  simp only [A017194, Nat.add_sub_cancel, A017194.P9009555899025800983.a, A017194.P16748090076516150439.a, A017188, A017188.P2699637439138055383.a, A017190, A017190.P16935356994830627096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017194

/-! ## A017194.P8505518301179269390

`sqrt(sqrt(A017192(n)))*A017192(n)`
-/

namespace A017194.P8505518301179269390
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017192 n : ℝ)) * (A017192 n : ℝ)

end

end A017194.P8505518301179269390

namespace A017194

/-- `sqrt(sqrt(A017192(n)))*A017192(n)` -/
def P8505518301179269390.Spec : Prop :=
  ∀ n, P8505518301179269390.a n = (A017194 n : ℝ)

end A017194

/-! ## A017194.P15290797498669578961

`A016798(3*n)`
-/

namespace A017194.P15290797498669578961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016798 (3 * n)

end

end A017194.P15290797498669578961

namespace A017194

/-- `A016798(3*n)` -/
def P15290797498669578961.Spec : Prop :=
  ∀ n, P15290797498669578961.a n = A017194 n

theorem P15290797498669578961.correct : P15290797498669578961.Spec := by
  intro n
  simp only [A017194, Nat.add_sub_cancel, A017194.P15290797498669578961.a, A017194.P16748090076516150439.a, A016798, A016798.P14907295202959180294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017194

/-! ## A017194.P3458002481932637826

`A016793(3*n)²`
-/

namespace A017194.P3458002481932637826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 (3 * n) ^ 2

end

end A017194.P3458002481932637826

namespace A017194

/-- `A016793(3*n)²` -/
def P3458002481932637826.Spec : Prop :=
  ∀ n, P3458002481932637826.a n = A017194 n

theorem P3458002481932637826.correct : P3458002481932637826.Spec := by
  intro n
  simp only [A017194, Nat.add_sub_cancel, A017194.P3458002481932637826.a, A017194.P16748090076516150439.a, A016793, A016793.P7571111589597192072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017194

/-! ## A017194.P10759028364145690490

`A008454(A017185(n))`
-/

namespace A017194.P10759028364145690490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017185 n).toNat

end

end A017194.P10759028364145690490

namespace A017194

/-- `A008454(A017185(n))` -/
def P10759028364145690490.Spec : Prop :=
  ∀ n, P10759028364145690490.a n = A017194 n

end A017194

/-! ## A017194.P7428940524063053991

`A008454(A008591(n)+2)`
-/

namespace A017194.P7428940524063053991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008591 n + 2).toNat

end

end A017194.P7428940524063053991

namespace A017194

/-- `A008454(A008591(n)+2)` -/
def P7428940524063053991.Spec : Prop :=
  ∀ n, P7428940524063053991.a n = A017194 n

end A017194

/-! ## A017194.P5033526339770952929

`A008454(A017281(n)+1-n)`
-/

namespace A017194.P5033526339770952929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017281 n + (1 - (n : ℤ))).toNat

end

end A017194.P5033526339770952929

namespace A017194

/-- `A008454(A017281(n)+1-n)` -/
def P5033526339770952929.Spec : Prop :=
  ∀ n, P5033526339770952929.a n = A017194 n

end A017194

/-! ## A017194.P14462885476798770672

`A008454(A008592(n)+2-n)`
-/

namespace A017194.P14462885476798770672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008592 n + (2 - (n : ℤ))).toNat

end

end A017194.P14462885476798770672

namespace A017194

/-- `A008454(A008592(n)+2-n)` -/
def P14462885476798770672.Spec : Prop :=
  ∀ n, P14462885476798770672.a n = A017194 n

end A017194

/-! ## A017194.P10281932542535785725

`A008454(1-(n-A017281(n)))`
-/

namespace A017194.P10281932542535785725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (1 - ((n : ℤ) - A017281 n)).toNat

end

end A017194.P10281932542535785725

namespace A017194

/-- `A008454(1-(n-A017281(n)))` -/
def P10281932542535785725.Spec : Prop :=
  ∀ n, P10281932542535785725.a n = A017194 n

end A017194

/-! ## A017194.P7979749469835103252

`A008454(2-(n-A008592(n)))`
-/

namespace A017194.P7979749469835103252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 - ((n : ℤ) - A008592 n)).toNat

end

end A017194.P7979749469835103252

namespace A017194

/-- `A008454(2-(n-A008592(n)))` -/
def P7979749469835103252.Spec : Prop :=
  ∀ n, P7979749469835103252.a n = A017194 n

end A017194

/-! ## A017194.P12511860842691763440

`A008454(2*A016813(n)+n)`
-/

namespace A017194.P12511860842691763440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016813 n + (n : ℤ)).toNat

end

end A017194.P12511860842691763440

namespace A017194

/-- `A008454(2*A016813(n)+n)` -/
def P12511860842691763440.Spec : Prop :=
  ∀ n, P12511860842691763440.a n = A017194 n

end A017194

/-! ## A017194.P2779416728987929851

`A008454(2*A016861(n)-n)`
-/

namespace A017194.P2779416728987929851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016861 n - (n : ℤ)).toNat

end

end A017194.P2779416728987929851

namespace A017194

/-- `A008454(2*A016861(n)-n)` -/
def P2779416728987929851.Spec : Prop :=
  ∀ n, P2779416728987929851.a n = A017194 n

end A017194

/-! ## A017194.P9359327814140531875

`A008454(A016777(2*n)+A016777(n))`
-/

namespace A017194.P9359327814140531875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n) + A016777 n).toNat

end

end A017194.P9359327814140531875

namespace A017194

/-- `A008454(A016777(2*n)+A016777(n))` -/
def P9359327814140531875.Spec : Prop :=
  ∀ n, P9359327814140531875.a n = A017194 n

end A017194

/-!
# A017195: 

The programs for A017195, there is no canonical definition to state claims against.
-/

/-! ## A017195.P2601550319109587455

`(9*n+2)^11`
-/

namespace A017195.P2601550319109587455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 2) ^ 11

end

end A017195.P2601550319109587455

/-! ## A017195.P13547263577558001984

`sqrt(A017186(n)^11)`
-/

namespace A017195.P13547263577558001984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017186 n ^ 11 : ℝ)

end

end A017195.P13547263577558001984

/-! ## A017195.P18275879912442409201

`A016799(3*n)`
-/

namespace A017195.P18275879912442409201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016799 (3 * n)

end

end A017195.P18275879912442409201

/-! ## A017195.P12969502885387006567

`A008455(A008591(n)+2)`
-/

namespace A017195.P12969502885387006567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 n + 2).toNat

end

end A017195.P12969502885387006567

/-! ## A017195.P15424011193747282029

`A008455(A017281(n)+1-n)`
-/

namespace A017195.P15424011193747282029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + (1 - (n : ℤ))).toNat

end

end A017195.P15424011193747282029

/-! ## A017195.P3544397539984787433

`A008455(1-(n-A017281(n)))`
-/

namespace A017195.P3544397539984787433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (1 - ((n : ℤ) - A017281 n)).toNat

end

end A017195.P3544397539984787433

/-! ## A017195.P7082402636314194495

`A008455(2*A016813(n)+n)`
-/

namespace A017195.P7082402636314194495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * A016813 n + (n : ℤ)).toNat

end

end A017195.P7082402636314194495

/-! ## A017195.P13102234377950720141

`A008455(A016813(n)+A016813(n)+n)`
-/

namespace A017195.P13102234377950720141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 n + (A016813 n + (n : ℤ))).toNat

end

end A017195.P13102234377950720141

/-! ## A017195.P3702447025594039835

`A008455(A008585(2*n)+A001651(2*n+2))`
-/

namespace A017195.P3702447025594039835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n) + A001651 (2 * n + 2)).toNat

end

end A017195.P3702447025594039835

/-!
# A017196: 

The programs for A017196, there is no canonical definition to state claims against.
-/

/-! ## A017196.P3432553499816241829

`(9*n+2)^12`
-/

namespace A017196.P3432553499816241829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 2) ^ 12

end

end A017196.P3432553499816241829

/-! ## A017196.P3464309955230906123

`A017190(n)²`
-/

namespace A017196.P3464309955230906123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017190 n ^ 2

end

end A017196.P3464309955230906123

/-! ## A017196.P11514389293742074319

`sqrt(A017192(n))*A017192(n)`
-/

namespace A017196.P11514389293742074319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017192 n : ℝ) * (A017192 n : ℝ)

end

end A017196.P11514389293742074319

/-! ## A017196.P12653808298237974060

`(A061100(2*n+1)²*A061100(2*n+1))²`
-/

namespace A017196.P12653808298237974060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061100 (2 * n + 1) ^ 2 * A061100 (2 * n + 1)) ^ 2

end

end A017196.P12653808298237974060

/-! ## A017196.P14663326418145035413

`A016791(3*n)²²`
-/

namespace A017196.P14663326418145035413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016791 (3 * n) ^ 2) ^ 2

end

end A017196.P14663326418145035413

/-! ## A017196.P16372918743308112512

`sqrt(A017192(n)^3)`
-/

namespace A017196.P16372918743308112512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017192 n ^ 3 : ℝ)

end

end A017196.P16372918743308112512

/-! ## A017196.P915246385953042508

`A008456(A008591(n)+2)`
-/

namespace A017196.P915246385953042508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008591 n + 2).toNat

end

end A017196.P915246385953042508

/-! ## A017196.P12782012727130515553

`A008456(A017209(n)-2)`
-/

namespace A017196.P12782012727130515553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017209 n - 2).toNat

end

end A017196.P12782012727130515553

/-! ## A017196.P7359008207484127930

`A008456(A017209(2*n)/2)`
-/

namespace A017196.P7359008207484127930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (SequenceMachineLib.roundAway ((A017209 (2 * n) : ℚ) / 2)).toNat

end

end A017196.P7359008207484127930

/-! ## A017196.P16168935609604133

`A000578(A008591(n)+2)²²`
-/

namespace A017196.P16168935609604133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A008591 n + 2).toNat ^ 2) ^ 2

end

end A017196.P16168935609604133

/-! ## A017196.P8941688233279039267

`A000578(A017209(n)-2)²²`
-/

namespace A017196.P8941688233279039267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017209 n - 2).toNat ^ 2) ^ 2

end

end A017196.P8941688233279039267

/-! ## A017196.P4838395827745066503

`A000578(A017089(n)+n)²²`
-/

namespace A017196.P4838395827745066503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017089 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A017196.P4838395827745066503

/-! ## A017196.P10563865453498437493

`A000578(A017293(n)-n)²²`
-/

namespace A017196.P10563865453498437493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017293 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017196.P10563865453498437493

/-!
# A017197: a(n) = 9*n + 3.

The programs for A017197, the canonical program `A017197.P8201470797211874866` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017197 has offset 0).

The definition of A017197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n+3` (program `A017197.P8201470797211874866`, by `A017197.P8201470797211874866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017197.P8201470797211874866

`9*n+3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017197

/-- `9*n+3` -/
def P8201470797211874866.Spec : Prop :=
  ∀ n, (P8201470797211874866.a n : ℤ) = A017197 n

theorem P8201470797211874866.correct : P8201470797211874866.Spec := by
  intro n
  simp only [A017197]

end A017197

/-!
# A017198: a(n) = (9*n + 3)^2.

The programs for A017198, the canonical program `A017198.P11032527811158562085` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017198 has offset 0).

The definition of A017198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)²` (program `A017198.P11032527811158562085`, by `A017198.P11032527811158562085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017198.P11032527811158562085

`(9*n+3)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017198

/-- `(9*n+3)²` -/
def P11032527811158562085.Spec : Prop :=
  ∀ n, (P11032527811158562085.a n : ℤ) = A017198 n

theorem P11032527811158562085.correct : P11032527811158562085.Spec := by
  intro n
  simp only [A017198]

end A017198

/-! ## A017198.P12651617001192211522

`ogf((9+117x+36x^2)/(1-3x+3x^2-x^3))`
-/

namespace A017198.P12651617001192211522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 117, 36] [1, -3, 3, -1] n

end

end A017198.P12651617001192211522

namespace A017198

/-- `ogf((9+117x+36x^2)/(1-3x+3x^2-x^3))` -/
def P12651617001192211522.Spec : Prop :=
  ∀ n, P12651617001192211522.a n = A017198 n

end A017198

/-! ## A017198.P7136456930479876419

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=9, a(1)=144, a(2)=441`
-/

namespace A017198.P7136456930479876419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 144, 441] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017198.P7136456930479876419

namespace A017198

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7136456930479876419.Spec : Prop :=
  ∀ n, P7136456930479876419.a n = A017198 n

theorem P7136456930479876419.correct : P7136456930479876419.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017198, Nat.add_sub_cancel, A017198.P7136456930479876419.a, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017198, Nat.add_sub_cancel, A017198.P7136456930479876419.a, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017198

/-! ## A017198.P12729761687881162555

`record[(dr(3-n)-n)²]`
-/

namespace A017198.P12729761687881162555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017198.P12729761687881162555

namespace A017198

/-- `record[(dr(3-n)-n)²]` -/
def P12729761687881162555.Spec : Prop :=
  ∀ n, P12729761687881162555.a n = A017198 n

end A017198

/-! ## A017198.P9705566888816737967

`record[(gcd(9, 3-n)+n)²]`
-/

namespace A017198.P9705566888816737967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (3 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017198.P9705566888816737967

namespace A017198

/-- `record[(gcd(9, 3-n)+n)²]` -/
def P9705566888816737967.Spec : Prop :=
  ∀ n, (P9705566888816737967.a n : ℤ) = A017198 n

end A017198

/-! ## A017198.P9535308084285825142

`record[gcd(n+3, n%9)²]`
-/

namespace A017198.P9535308084285825142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (n % 9) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017198.P9535308084285825142

namespace A017198

/-- `record[gcd(n+3, n%9)²]` -/
def P9535308084285825142.Spec : Prop :=
  ∀ n, (P9535308084285825142.a n : ℤ) = A017198 n

end A017198

/-! ## A017198.P18330391058891557411

`lcm(3, (10*n-(n-3))²)`
-/

namespace A017198.P18330391058891557411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (((10 * n : ℤ) - ((n : ℤ) - 3)) ^ 2)

end

end A017198.P18330391058891557411

namespace A017198

/-- `lcm(3, (10*n-(n-3))²)` -/
def P18330391058891557411.Spec : Prop :=
  ∀ n, (P18330391058891557411.a n : ℤ) = A017198 n

end A017198

/-! ## A017198.P6099038909424734875

`record[((n+3)/dr(n+1))²]`
-/

namespace A017198.P6099038909424734875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017198.P6099038909424734875

namespace A017198

/-- `record[((n+3)/dr(n+1))²]` -/
def P6099038909424734875.Spec : Prop :=
  ∀ n, P6099038909424734875.a n = (A017198 n : ℚ)

end A017198

/-! ## A017198.P1768082967737079553

`record[root(n+3, dr(n+1))²]`
-/

namespace A017198.P1768082967737079553
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017198.P1768082967737079553

namespace A017198

/-- `record[root(n+3, dr(n+1))²]` -/
def P1768082967737079553.Spec : Prop :=
  ∀ n, P1768082967737079553.a n = (A017198 n : ℝ)

end A017198

/-! ## A017198.P4419678589789001207

`record[(n+3)^(3-dr(n+1))]`
-/

namespace A017198.P4419678589789001207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (3 - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017198.P4419678589789001207

namespace A017198

/-- `record[(n+3)^(3-dr(n+1))]` -/
def P4419678589789001207.Spec : Prop :=
  ∀ n, P4419678589789001207.a n = (A017198 n : ℚ)

end A017198

/-! ## A017198.P10229843258913818284

`record[(n+3)^(2/dr(n+1))]`
-/

namespace A017198.P10229843258913818284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ (2 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017198.P10229843258913818284

namespace A017198

/-- `record[(n+3)^(2/dr(n+1))]` -/
def P10229843258913818284.Spec : Prop :=
  ∀ n, P10229843258913818284.a n = (A017198 n : ℝ)

end A017198

/-! ## A017198.P15219000121686498708

`record[(n+3)*(n+3)/dr(n+1)!]`
-/

namespace A017198.P15219000121686498708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n + 3 : ℚ) / (Nat.factorial (SequenceMachineLib.digitalRoot (n + 1 : ℤ)) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017198.P15219000121686498708

namespace A017198

/-- `record[(n+3)*(n+3)/dr(n+1)!]` -/
def P15219000121686498708.Spec : Prop :=
  ∀ n, P15219000121686498708.a n = (A017198 n : ℚ)

end A017198

/-! ## A017198.P10693793764571855782

`sqrt(A017200(n))`
-/

namespace A017198.P10693793764571855782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017200 n : ℝ)

end

end A017198.P10693793764571855782

namespace A017198

/-- `sqrt(A017200(n))` -/
def P10693793764571855782.Spec : Prop :=
  ∀ n, P10693793764571855782.a n = (A017198 n : ℝ)

end A017198

/-! ## A017198.P3577390346698736631

`9*A016778(n)`
-/

namespace A017198.P3577390346698736631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016778 n

end

end A017198.P3577390346698736631

namespace A017198

/-- `9*A016778(n)` -/
def P3577390346698736631.Spec : Prop :=
  ∀ n, P3577390346698736631.a n = A017198 n

theorem P3577390346698736631.correct : P3577390346698736631.Spec := by
  intro n
  simp only [A017198, Nat.add_sub_cancel, A017198.P3577390346698736631.a, A017198.P11032527811158562085.a, A016778, A016778.P16000663877604072744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017198

/-! ## A017198.P5451287071181819121

`sqrt(sqrt(A017204(n)))`
-/

namespace A017198.P5451287071181819121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017204 n : ℝ))

end

end A017198.P5451287071181819121

namespace A017198

/-- `sqrt(sqrt(A017204(n)))` -/
def P5451287071181819121.Spec : Prop :=
  ∀ n, P5451287071181819121.a n = (A017198 n : ℝ)

end A017198

/-! ## A017198.P1071841795451535576

`9*A016777(n)²`
-/

namespace A017198.P1071841795451535576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A016777 n ^ 2

end

end A017198.P1071841795451535576

namespace A017198

/-- `9*A016777(n)²` -/
def P1071841795451535576.Spec : Prop :=
  ∀ n, P1071841795451535576.a n = A017198 n

theorem P1071841795451535576.correct : P1071841795451535576.Spec := by
  intro n
  simp only [A017198, Nat.add_sub_cancel, A017198.P1071841795451535576.a, A017198.P11032527811158562085.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017198

/-! ## A017198.P16812083967418043479

`A017202(n)^(1/3)`
-/

namespace A017198.P16812083967418043479
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017202 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017198.P16812083967418043479

namespace A017198

/-- `A017202(n)^(1/3)` -/
def P16812083967418043479.Spec : Prop :=
  ∀ n, P16812083967418043479.a n = (A017198 n : ℝ)

end A017198

/-! ## A017198.P6874364652815114941

`A017199(n)^(2/3)`
-/

namespace A017198.P6874364652815114941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017199 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017198.P6874364652815114941

namespace A017198

/-- `A017199(n)^(2/3)` -/
def P6874364652815114941.Spec : Prop :=
  ∀ n, P6874364652815114941.a n = (A017198 n : ℝ)

end A017198

/-! ## A017198.P6892248702107746418

`9*(n-(A004767(n)-2))²`
-/

namespace A017198.P6892248702107746418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((n : ℤ) - (A004767 n - 2)) ^ 2

end

end A017198.P6892248702107746418

namespace A017198

/-- `9*(n-(A004767(n)-2))²` -/
def P6892248702107746418.Spec : Prop :=
  ∀ n, P6892248702107746418.a n = A017198 n

theorem P6892248702107746418.correct : P6892248702107746418.Spec := by
  intro n
  simp only [A017198, Nat.add_sub_cancel, A017198.P6892248702107746418.a, A017198.P11032527811158562085.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017198

/-! ## A017198.P787547703609934642

`A242215(n)+A017186(n)`
-/

namespace A017198.P787547703609934642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + A017186 n

end

end A017198.P787547703609934642

namespace A017198

/-- `A242215(n)+A017186(n)` -/
def P787547703609934642.Spec : Prop :=
  ∀ n, P787547703609934642.a n = A017198 n

theorem P787547703609934642.correct : P787547703609934642.Spec := by
  intro n
  simp only [A017198, Nat.add_sub_cancel, A017198.P787547703609934642.a, A017198.P11032527811158562085.a, A017186, A017186.P13293888810662431780.a, A242215, A242215.P1960096412807353825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017198

/-!
# A017199: a(n) = (9*n + 3)^3.

The programs for A017199, the canonical program `A017199.P15140372890184300170` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017199 has offset 0).

The definition of A017199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n+3)^3` (program `A017199.P15140372890184300170`, by `A017199.P15140372890184300170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017199.P15140372890184300170

`(9*n+3)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017199

/-- `(9*n+3)^3` -/
def P15140372890184300170.Spec : Prop :=
  ∀ n, (P15140372890184300170.a n : ℤ) = A017199 n

theorem P15140372890184300170.correct : P15140372890184300170.Spec := by
  intro n
  simp only [A017199]

end A017199

/-! ## A017199.P11138799963239458732

`27*A016779(n)`
-/

namespace A017199.P11138799963239458732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A016779 n

end

end A017199.P11138799963239458732

namespace A017199

/-- `27*A016779(n)` -/
def P11138799963239458732.Spec : Prop :=
  ∀ n, P11138799963239458732.a n = A017199 n

theorem P11138799963239458732.correct : P11138799963239458732.Spec := by
  intro n
  simp only [A017199, Nat.add_sub_cancel, A017199.P11138799963239458732.a, A017199.P15140372890184300170.a, A016779, A016779.P12183208488872344435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017199

/-! ## A017199.P17247800629337668482

`abs(Δ[C(3*n, 2)]^3)`
-/

namespace A017199.P17247800629337668482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 3|

end

end A017199.P17247800629337668482

namespace A017199

/-- `abs(Δ[C(3*n, 2)]^3)` -/
def P17247800629337668482.Spec : Prop :=
  ∀ n, P17247800629337668482.a n = A017199 n

end A017199

/-! ## A017199.P13778879823389319735

`record[(n+3-dr(n)²)^3]`
-/

namespace A017199.P13778879823389319735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017199.P13778879823389319735

namespace A017199

/-- `record[(n+3-dr(n)²)^3]` -/
def P13778879823389319735.Spec : Prop :=
  ∀ n, P13778879823389319735.a n = A017199 n

end A017199

/-! ## A017199.P5346139781539981537

`9*Δ[(C(3*n, 2)-1)²]`
-/

namespace A017199.P5346139781539981537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (3 * n) 2 : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (f1 (n + 1) - f1 n)

end

end A017199.P5346139781539981537

namespace A017199

/-- `9*Δ[(C(3*n, 2)-1)²]` -/
def P5346139781539981537.Spec : Prop :=
  ∀ n, P5346139781539981537.a n = A017199 n

theorem P5346139781539981537.correct : P5346139781539981537.Spec := by
  intro n
  simp only [A017199, Nat.add_sub_cancel, A017199.P5346139781539981537.f1, A017199.P5346139781539981537.a, A017199.P15140372890184300170.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017199

/-! ## A017199.P14598530256914623914

`record[(n+3)^(4-dr(n+1))]`
-/

namespace A017199.P14598530256914623914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (4 - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017199.P14598530256914623914

namespace A017199

/-- `record[(n+3)^(4-dr(n+1))]` -/
def P14598530256914623914.Spec : Prop :=
  ∀ n, P14598530256914623914.a n = (A017199 n : ℚ)

end A017199

/-! ## A017199.P3600543847118999285

`record[(n+3)^(3/dr(n+1))]`
-/

namespace A017199.P3600543847118999285
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) ^ (3 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017199.P3600543847118999285

namespace A017199

/-- `record[(n+3)^(3/dr(n+1))]` -/
def P3600543847118999285.Spec : Prop :=
  ∀ n, P3600543847118999285.a n = (A017199 n : ℝ)

end A017199

/-! ## A017199.P14794375708104310982

`record[(n+3)*((n+3)/dr(n+1))²]`
-/

namespace A017199.P14794375708104310982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n + 3 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017199.P14794375708104310982

namespace A017199

/-- `record[(n+3)*((n+3)/dr(n+1))²]` -/
def P14794375708104310982.Spec : Prop :=
  ∀ n, P14794375708104310982.a n = (A017199 n : ℚ)

end A017199

/-! ## A017199.P9269229319185351823

`record[(n+3)/(dr(n+1)/(n+3))²]`
-/

namespace A017199.P9269229319185351823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) / (n + 3 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017199.P9269229319185351823

namespace A017199

/-- `record[(n+3)/(dr(n+1)/(n+3))²]` -/
def P9269229319185351823.Spec : Prop :=
  ∀ n, P9269229319185351823.a n = (A017199 n : ℚ)

end A017199

/-! ## A017199.P6926138412585176830

`sqrt(A017202(n))`
-/

namespace A017199.P6926138412585176830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017202 n : ℝ)

end

end A017199.P6926138412585176830

namespace A017199

/-- `sqrt(A017202(n))` -/
def P6926138412585176830.Spec : Prop :=
  ∀ n, P6926138412585176830.a n = (A017199 n : ℝ)

end A017199

/-! ## A017199.P16155764931408177455

`sqrt(A017198(n)^3)`
-/

namespace A017199.P16155764931408177455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017198 n ^ 3 : ℝ)

end

end A017199.P16155764931408177455

namespace A017199

/-- `sqrt(A017198(n)^3)` -/
def P16155764931408177455.Spec : Prop :=
  ∀ n, P16155764931408177455.a n = (A017199 n : ℝ)

end A017199

/-! ## A017199.P2994389940994444558

`27*sqrt(A016782(n))`
-/

namespace A017199.P2994389940994444558
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  27 * Real.sqrt (A016782 n : ℝ)

end

end A017199.P2994389940994444558

namespace A017199

/-- `27*sqrt(A016782(n))` -/
def P2994389940994444558.Spec : Prop :=
  ∀ n, P2994389940994444558.a n = (A017199 n : ℝ)

end A017199

/-! ## A017199.P15341832775720860820

`A017200(n)/(9*n+3)`
-/

namespace A017199.P15341832775720860820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017200 n : ℚ) / (9 * n + 3 : ℚ)

end

end A017199.P15341832775720860820

namespace A017199

/-- `A017200(n)/(9*n+3)` -/
def P15341832775720860820.Spec : Prop :=
  ∀ n, P15341832775720860820.a n = (A017199 n : ℚ)

end A017199

/-! ## A017199.P4042826466951407766

`A017197(n)*A017198(n)`
-/

namespace A017199.P4042826466951407766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n * A017198 n

end

end A017199.P4042826466951407766

namespace A017199

/-- `A017197(n)*A017198(n)` -/
def P4042826466951407766.Spec : Prop :=
  ∀ n, P4042826466951407766.a n = A017199 n

theorem P4042826466951407766.correct : P4042826466951407766.Spec := by
  intro n
  simp only [A017199, Nat.add_sub_cancel, A017199.P4042826466951407766.a, A017199.P15140372890184300170.a, A017197, A017197.P8201470797211874866.a, A017198, A017198.P11032527811158562085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017199

/-! ## A017199.P7768743352054689540

`A017201(n)/A017198(n)`
-/

namespace A017199.P7768743352054689540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017201 n : ℚ) / (A017198 n : ℚ)

end

end A017199.P7768743352054689540

namespace A017199

/-- `A017201(n)/A017198(n)` -/
def P7768743352054689540.Spec : Prop :=
  ∀ n, P7768743352054689540.a n = (A017199 n : ℚ)

end A017199

/-! ## A017199.P349082935389959034

`A017203(n)/A017200(n)`
-/

namespace A017199.P349082935389959034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017203 n : ℚ) / (A017200 n : ℚ)

end

end A017199.P349082935389959034

namespace A017199

/-- `A017203(n)/A017200(n)` -/
def P349082935389959034.Spec : Prop :=
  ∀ n, P349082935389959034.a n = (A017199 n : ℚ)

end A017199

/-! ## A017199.P5878883139845744276

`A017201(n)/A017197(n)²`
-/

namespace A017199.P5878883139845744276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017201 n : ℚ) / (A017197 n ^ 2 : ℚ)

end

end A017199.P5878883139845744276

namespace A017199

/-- `A017201(n)/A017197(n)²` -/
def P5878883139845744276.Spec : Prop :=
  ∀ n, P5878883139845744276.a n = (A017199 n : ℚ)

end A017199

/-! ## A017199.P12150995496981667862

`A017200(n)²/A017201(n)`
-/

namespace A017199.P12150995496981667862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017200 n ^ 2 : ℚ) / (A017201 n : ℚ)

end

end A017199.P12150995496981667862

namespace A017199

/-- `A017200(n)²/A017201(n)` -/
def P12150995496981667862.Spec : Prop :=
  ∀ n, P12150995496981667862.a n = (A017199 n : ℚ)

end A017199

/-! ## A017199.P17560443457526332926

`A017203(n)/A017198(n)²`
-/

namespace A017199.P17560443457526332926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017203 n : ℚ) / (A017198 n ^ 2 : ℚ)

end

end A017199.P17560443457526332926

namespace A017199

/-- `A017203(n)/A017198(n)²` -/
def P17560443457526332926.Spec : Prop :=
  ∀ n, P17560443457526332926.a n = (A017199 n : ℚ)

end A017199

