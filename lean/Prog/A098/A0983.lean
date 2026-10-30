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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A098300: Member r=15 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098300, the canonical program `A098300.P7584412998788752459` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098300 has offset 0).

The definition of A098300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098300.P5029129014022435678

`ogf((x+x^2)/(1-14x+14x^2-x^3))`
-/

namespace A098300.P5029129014022435678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -14, 14, -1] n

end

end A098300.P5029129014022435678

namespace A098300

/-- `ogf((x+x^2)/(1-14x+14x^2-x^3))` -/
def P5029129014022435678.Spec : Prop :=
  ∀ n, P5029129014022435678.a n = A098300 n

end A098300

/-! ## A098300.P7584412998788752459

`13*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098300

/-- `13*a(n-1)-a(n-2)+2` -/
def P7584412998788752459.Spec : Prop :=
  ∀ n, P7584412998788752459.a n = A098300 n

theorem P7584412998788752459.correct : P7584412998788752459.Spec := by
  intro n
  simp only [A098300]

end A098300

/-! ## A098300.P17301781468976833797

`2-(a(n-2)-13*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A098300.P17301781468976833797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 2) - 13 * a (n - 1))

end

end A098300.P17301781468976833797

namespace A098300

/-- `2-(a(n-2)-13*a(n-1))` -/
def P17301781468976833797.Spec : Prop :=
  ∀ n, P17301781468976833797.a n = A098300 n

end A098300

/-! ## A098300.P4461834372895758528

`floor(A072881(2*(n+1))/2)`
-/

namespace A098300.P4461834372895758528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072881 (2 * (n + 1)) : ℚ) / 2⌋

end

end A098300.P4461834372895758528

namespace A098300

/-- `floor(A072881(2*(n+1))/2)` -/
def P4461834372895758528.Spec : Prop :=
  ∀ n, P4461834372895758528.a n = A098300 n

end A098300

/-! ## A098300.P9378881877182360110

`(record[A072881(n+1)^(n%2)]-1)/2`
-/

namespace A098300.P9378881877182360110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072881 (n + 1) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 : ℚ) / 2

end

end A098300.P9378881877182360110

namespace A098300

/-- `(record[A072881(n+1)^(n%2)]-1)/2` -/
def P9378881877182360110.Spec : Prop :=
  ∀ n, P9378881877182360110.a n = (A098300 n : ℚ)

end A098300

/-! ## A098300.P10228012397924235236

`(A072881(2*n+2)-1)/A133265(2*n)`
-/

namespace A098300.P10228012397924235236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072881 (2 * n + 2) - 1 : ℚ) / (A133265 (2 * n) : ℚ)

end

end A098300.P10228012397924235236

namespace A098300

/-- `(A072881(2*n+2)-1)/A133265(2*n)` -/
def P10228012397924235236.Spec : Prop :=
  ∀ n, P10228012397924235236.a n = (A098300 n : ℚ)

end A098300

/-! ## A098300.P17286201379281122287

`floor(A078363(n)/11)`
-/

namespace A098300.P17286201379281122287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078363 n : ℚ) / 11⌋

end

end A098300.P17286201379281122287

namespace A098300

/-- `floor(A078363(n)/11)` -/
def P17286201379281122287.Spec : Prop :=
  ∀ n, P17286201379281122287.a n = A098300 n

end A098300

/-! ## A098300.P5533065898360115031

`∑[A126866(n)]-A126866(n)`
-/

namespace A098300.P5533065898360115031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A126866 n

end

end A098300.P5533065898360115031

namespace A098300

/-- `∑[A126866(n)]-A126866(n)` -/
def P5533065898360115031.Spec : Prop :=
  ∀ n, P5533065898360115031.a n = A098300 n

end A098300

/-!
# A098301: Member r=16 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098301, the canonical program `A098301.P15457888098146001279` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098301 has offset 0).

The definition of A098301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098301.P8369192464587640322

`ogf((x+x^2)/(1-15x+15x^2-x^3))`
-/

namespace A098301.P8369192464587640322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -15, 15, -1] n

end

end A098301.P8369192464587640322

namespace A098301

/-- `ogf((x+x^2)/(1-15x+15x^2-x^3))` -/
def P8369192464587640322.Spec : Prop :=
  ∀ n, P8369192464587640322.a n = A098301 n

end A098301

/-! ## A098301.P15457888098146001279

`14*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098301

/-- `14*a(n-1)-a(n-2)+2` -/
def P15457888098146001279.Spec : Prop :=
  ∀ n, P15457888098146001279.a n = A098301 n

theorem P15457888098146001279.correct : P15457888098146001279.Spec := by
  intro n
  simp only [A098301]

end A098301

/-! ## A098301.P2995292816398675435

`A001353(n)²`
-/

namespace A098301.P2995292816398675435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n ^ 2

end

end A098301.P2995292816398675435

namespace A098301

/-- `A001353(n)²` -/
def P2995292816398675435.Spec : Prop :=
  ∀ n, P2995292816398675435.a n = A098301 n

end A098301

/-! ## A098301.P13276923199420583706

`((7+4*sqrt(3))^n+(7-4*sqrt(3))^n-2)/12`
-/

namespace A098301.P13276923199420583706
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 4 * Real.sqrt (3 : ℝ)) ^ n + (7 - 4 * Real.sqrt (3 : ℝ)) ^ n - 2) / 12

end

end A098301.P13276923199420583706

namespace A098301

/-- `((7+4*sqrt(3))^n+(7-4*sqrt(3))^n-2)/12` -/
def P13276923199420583706.Spec : Prop :=
  ∀ n, P13276923199420583706.a n = (A098301 n : ℝ)

theorem P13276923199420583706.correct : P13276923199420583706.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A098301, Nat.add_sub_cancel, A098301.P13276923199420583706.a, A098301.P15457888098146001279.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A098301, Nat.add_sub_cancel, A098301.P13276923199420583706.a, A098301.P15457888098146001279.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A098301

/-! ## A098301.P10629065410446206044

`∑[ogf((x+x^2)/(1-14x+x^2))]`
-/

namespace A098301.P10629065410446206044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098301.P10629065410446206044

namespace A098301

/-- `∑[ogf((x+x^2)/(1-14x+x^2))]` -/
def P10629065410446206044.Spec : Prop :=
  ∀ n, P10629065410446206044.a n = A098301 n

end A098301

/-! ## A098301.P17659476500041448973

`∑[floor((sqrt(3)+2)*a(n-1))]²` with `a(0)=0, a(1)=1`
-/

namespace A098301.P17659476500041448973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A098301.P17659476500041448973

namespace A098301

/-- `∑[floor((sqrt(3)+2)*a(n-1))]²` -/
def P17659476500041448973.Spec : Prop :=
  ∀ n, P17659476500041448973.a n = A098301 n

end A098301

/-! ## A098301.P1168524258942849543

`∑[ceil((sqrt(3)+2)*a(n-1))]²` with `a(0)=0, a(1)=-1`
-/

namespace A098301.P1168524258942849543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A098301.P1168524258942849543

namespace A098301

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]²` -/
def P1168524258942849543.Spec : Prop :=
  ∀ n, P1168524258942849543.a n = A098301 n

end A098301

/-! ## A098301.P14551339683031973645

`14*a(n-1)-(a(n-2)-2)` with `a(0)=0, a(1)=1`
-/

namespace A098301.P14551339683031973645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  14 * a (n - 1) - (a (n - 2) - 2)

end

end A098301.P14551339683031973645

namespace A098301

/-- `14*a(n-1)-(a(n-2)-2)` -/
def P14551339683031973645.Spec : Prop :=
  ∀ n, P14551339683031973645.a n = A098301 n

theorem P14551339683031973645.correct : P14551339683031973645.Spec := by
  intro n
  simp only [A098301, Nat.add_sub_cancel, A098301.P14551339683031973645.a, A098301.P15457888098146001279.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098301

/-! ## A098301.P10636227149464935417

`(1-∑[lcm(4, a(n-1))-a(n-2)])²` with `a(0)=1, a(1)=1`
-/

namespace A098301.P10636227149464935417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.lcm 4 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A098301.P10636227149464935417

namespace A098301

/-- `(1-∑[lcm(4, a(n-1))-a(n-2)])²` -/
def P10636227149464935417.Spec : Prop :=
  ∀ n, P10636227149464935417.a n = A098301 n

end A098301

/-! ## A098301.P9201938185188152526

`A106707(n)²`
-/

namespace A098301.P9201938185188152526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n ^ 2

end

end A098301.P9201938185188152526

namespace A098301

/-- `A106707(n)²` -/
def P9201938185188152526.Spec : Prop :=
  ∀ n, P9201938185188152526.a n = A098301 n

end A098301

/-!
# A098302: Member r=17 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098302, the canonical program `A098302.P18306264538160436542` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098302 has offset 0).

The definition of A098302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098302.P1198818687400926898

`ogf((x+x^2)/(1-16x+16x^2-x^3))`
-/

namespace A098302.P1198818687400926898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -16, 16, -1] n

end

end A098302.P1198818687400926898

namespace A098302

/-- `ogf((x+x^2)/(1-16x+16x^2-x^3))` -/
def P1198818687400926898.Spec : Prop :=
  ∀ n, P1198818687400926898.a n = A098302 n

end A098302

/-! ## A098302.P18306264538160436542

`15*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098302

/-- `15*a(n-1)-a(n-2)+2` -/
def P18306264538160436542.Spec : Prop :=
  ∀ n, P18306264538160436542.a n = A098302 n

theorem P18306264538160436542.correct : P18306264538160436542.Spec := by
  intro n
  simp only [A098302]

end A098302

/-! ## A098302.P12190984132033970455

`∑[15*a(n-1)-a(n-2)]-1` with `a(0)=1, a(1)=1, a(2)=16`
-/

namespace A098302.P12190984132033970455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 16] fun n f1 =>
  15 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098302.P12190984132033970455

namespace A098302

/-- `∑[15*a(n-1)-a(n-2)]-1` -/
def P12190984132033970455.Spec : Prop :=
  ∀ n, P12190984132033970455.a n = A098302 n

end A098302

/-! ## A098302.P18154035198566511941

`floor(A078365(n)/13)`
-/

namespace A098302.P18154035198566511941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078365 n : ℚ) / 13⌋

end

end A098302.P18154035198566511941

namespace A098302

/-- `floor(A078365(n)/13)` -/
def P18154035198566511941.Spec : Prop :=
  ∀ n, P18154035198566511941.a n = A098302 n

end A098302

/-! ## A098302.P15089800912491437679

`∑[A161591(n+1)]-A161591(n+1)`
-/

namespace A098302.P15089800912491437679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161591 (n + 1)

end

end A098302.P15089800912491437679

namespace A098302

/-- `∑[A161591(n+1)]-A161591(n+1)` -/
def P15089800912491437679.Spec : Prop :=
  ∀ n, P15089800912491437679.a n = A098302 n

end A098302

/-! ## A098302.P6924497711720301748

`A030452(2*(n+1))%∑[A030452(2*n+1)]`
-/

namespace A098302.P6924497711720301748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030452 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030452 (2 * (n + 1))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098302.P6924497711720301748

namespace A098302

/-- `A030452(2*(n+1))%∑[A030452(2*n+1)]` -/
def P6924497711720301748.Spec : Prop :=
  ∀ n, P6924497711720301748.a n = A098302 n

end A098302

/-! ## A098302.P17922651287330624529

`∑[A030452(2*(n+1))-A030452(2*n+1)]-(∑[A078365(n)]-1)`
-/

namespace A098302.P17922651287330624529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030452 (2 * (n + 1)) - A030452 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A098302.P17922651287330624529

namespace A098302

/-- `∑[A030452(2*(n+1))-A030452(2*n+1)]-(∑[A078365(n)]-1)` -/
def P17922651287330624529.Spec : Prop :=
  ∀ n, P17922651287330624529.a n = A098302 n

end A098302

/-!
# A098303: Member r=18 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098303, the canonical program `A098303.P2639487824626433432` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098303 has offset 0).

The definition of A098303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098303.P3303507437007080475

`ogf((x+x^2)/(1-17x+17x^2-x^3))`
-/

namespace A098303.P3303507437007080475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -17, 17, -1] n

end

end A098303.P3303507437007080475

namespace A098303

/-- `ogf((x+x^2)/(1-17x+17x^2-x^3))` -/
def P3303507437007080475.Spec : Prop :=
  ∀ n, P3303507437007080475.a n = A098303 n

end A098303

/-! ## A098303.P2639487824626433432

`16*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098303

/-- `16*a(n-1)-a(n-2)+2` -/
def P2639487824626433432.Spec : Prop :=
  ∀ n, P2639487824626433432.a n = A098303 n

theorem P2639487824626433432.correct : P2639487824626433432.Spec := by
  intro n
  simp only [A098303]

end A098303

/-! ## A098303.P4777228376328370282

`∑[16*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=17`
-/

namespace A098303.P4777228376328370282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 17] fun n f1 =>
  16 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098303.P4777228376328370282

namespace A098303

/-- `∑[16*a(n-1)-a(n-2)]` -/
def P4777228376328370282.Spec : Prop :=
  ∀ n, P4777228376328370282.a n = A098303 n

end A098303

/-! ## A098303.P6638407055979395893

`2-(a(n-2)-4*4*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A098303.P6638407055979395893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 2) - 4 * (4 * a (n - 1)))

end

end A098303.P6638407055979395893

namespace A098303

/-- `2-(a(n-2)-4*4*a(n-1))` -/
def P6638407055979395893.Spec : Prop :=
  ∀ n, P6638407055979395893.a n = A098303 n

end A098303

/-! ## A098303.P15217117584066114453

`∑[A204517(3*n+1)]`
-/

namespace A098303.P15217117584066114453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204517 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098303.P15217117584066114453

namespace A098303

/-- `∑[A204517(3*n+1)]` -/
def P15217117584066114453.Spec : Prop :=
  ∀ n, P15217117584066114453.a n = A098303 n

end A098303

/-! ## A098303.P18359693502698670559

`A159678(n)+a(n-1)` with `a(0)=0`
-/

namespace A098303.P18359693502698670559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A159678 n + a (n - 1)

end

end A098303.P18359693502698670559

namespace A098303

/-- `A159678(n)+a(n-1)` -/
def P18359693502698670559.Spec : Prop :=
  ∀ n, P18359693502698670559.a n = A098303 n

end A098303

/-! ## A098303.P16587956817602939580

`floor(A073352(n)/3)`
-/

namespace A098303.P16587956817602939580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073352 n : ℚ) / 3⌋

end

end A098303.P16587956817602939580

namespace A098303

/-- `floor(A073352(n)/3)` -/
def P16587956817602939580.Spec : Prop :=
  ∀ n, P16587956817602939580.a n = A098303 n

end A098303

/-! ## A098303.P12056265308059654106

`floor(A001081(n)/7)`
-/

namespace A098303.P12056265308059654106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001081 n : ℚ) / 7⌋

end

end A098303.P12056265308059654106

namespace A098303

/-- `floor(A001081(n)/7)` -/
def P12056265308059654106.Spec : Prop :=
  ∀ n, P12056265308059654106.a n = A098303 n

end A098303

/-! ## A098303.P4403663747178350241

`floor(A276123(2*n+1)/3)`
-/

namespace A098303.P4403663747178350241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276123 (2 * n + 1) : ℚ) / 3⌋

end

end A098303.P4403663747178350241

namespace A098303

/-- `floor(A276123(2*n+1)/3)` -/
def P4403663747178350241.Spec : Prop :=
  ∀ n, P4403663747178350241.a n = A098303 n

end A098303

/-! ## A098303.P2509227512752971347

`∑[A159678(n+1)]-A159678(n+1)`
-/

namespace A098303.P2509227512752971347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159678 (n + 1)

end

end A098303.P2509227512752971347

namespace A098303

/-- `∑[A159678(n+1)]-A159678(n+1)` -/
def P2509227512752971347.Spec : Prop :=
  ∀ n, P2509227512752971347.a n = A098303 n

end A098303

/-!
# A098304: Member r=19 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098304, the canonical program `A098304.P12981750334638002667` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098304 has offset 0).

The definition of A098304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098304.P11564501538270517260

`ogf((x+x^2)/(1-18x+18x^2-x^3))`
-/

namespace A098304.P11564501538270517260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -18, 18, -1] n

end

end A098304.P11564501538270517260

namespace A098304

/-- `ogf((x+x^2)/(1-18x+18x^2-x^3))` -/
def P11564501538270517260.Spec : Prop :=
  ∀ n, P11564501538270517260.a n = A098304 n

end A098304

/-! ## A098304.P12981750334638002667

`17*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098304

/-- `17*a(n-1)-a(n-2)+2` -/
def P12981750334638002667.Spec : Prop :=
  ∀ n, P12981750334638002667.a n = A098304 n

theorem P12981750334638002667.correct : P12981750334638002667.Spec := by
  intro n
  simp only [A098304]

end A098304

/-! ## A098304.P6971674309147868694

`∑[17*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=18`
-/

namespace A098304.P6971674309147868694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 18] fun n f1 =>
  17 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098304.P6971674309147868694

namespace A098304

/-- `∑[17*a(n-1)-a(n-2)]` -/
def P6971674309147868694.Spec : Prop :=
  ∀ n, P6971674309147868694.a n = A098304 n

end A098304

/-! ## A098304.P15756391065676335993

`∑[A161599(A028310(n))]-1`
-/

namespace A098304.P15756391065676335993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161599 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A098304.P15756391065676335993

namespace A098304

/-- `∑[A161599(A028310(n))]-1` -/
def P15756391065676335993.Spec : Prop :=
  ∀ n, P15756391065676335993.a n = A098304 n

end A098304

/-! ## A098304.P15286858901917343567

`floor(A078367(n)/15)`
-/

namespace A098304.P15286858901917343567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078367 n : ℚ) / 15⌋

end

end A098304.P15286858901917343567

namespace A098304

/-- `floor(A078367(n)/15)` -/
def P15286858901917343567.Spec : Prop :=
  ∀ n, P15286858901917343567.a n = A098304 n

end A098304

/-! ## A098304.P11888583191112480188

`∑[A161599(n+1)]-A161599(n+1)`
-/

namespace A098304.P11888583191112480188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161599 (n + 1)

end

end A098304.P11888583191112480188

namespace A098304

/-- `∑[A161599(n+1)]-A161599(n+1)` -/
def P11888583191112480188.Spec : Prop :=
  ∀ n, P11888583191112480188.a n = A098304 n

end A098304

/-!
# A098305: Unsigned member r=-5 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098305, the canonical program `A098305.P16973166960328153059` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098305 has offset 0).

The definition of A098305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098305.P1858761041978917563

`ogf((x-x^2)/(1-6x-6x^2+x^3))`
-/

namespace A098305.P1858761041978917563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -6, -6, 1] n

end

end A098305.P1858761041978917563

namespace A098305

/-- `ogf((x-x^2)/(1-6x-6x^2+x^3))` -/
def P1858761041978917563.Spec : Prop :=
  ∀ n, P1858761041978917563.a n = A098305 n

end A098305

/-! ## A098305.P16973166960328153059

`6*a(n-1)+6*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098305

/-- `6*a(n-1)+6*a(n-2)-a(n-3)` -/
def P16973166960328153059.Spec : Prop :=
  ∀ n, P16973166960328153059.a n = A098305 n

theorem P16973166960328153059.correct : P16973166960328153059.Spec := by
  intro n
  simp only [A098305]

end A098305

/-! ## A098305.P7828574008589779628

`(A000032(4*n)-2*(-1)^n)/9`
-/

namespace A098305.P7828574008589779628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (4 * n) - 2 * (-1) ^ n : ℚ) / 9

end

end A098305.P7828574008589779628

namespace A098305

/-- `(A000032(4*n)-2*(-1)^n)/9` -/
def P7828574008589779628.Spec : Prop :=
  ∀ n, P7828574008589779628.a n = (A098305 n : ℚ)

end A098305

/-! ## A098305.P14429969345571051047

`round(((ϕ^n)²/3)²)`
-/

namespace A098305.P14429969345571051047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.goldenRatio ^ n) ^ 2 / 3) ^ 2)

end

end A098305.P14429969345571051047

namespace A098305

/-- `round(((ϕ^n)²/3)²)` -/
def P14429969345571051047.Spec : Prop :=
  ∀ n, P14429969345571051047.a n = A098305 n

end A098305

/-! ## A098305.P9320931129940159889

`7*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A098305.P9320931129940159889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  7 * a (n - 1) - a (n - 2) - 2 * (-1) ^ n

end

end A098305.P9320931129940159889

namespace A098305

/-- `7*a(n-1)-a(n-2)-2*(-1)^n` -/
def P9320931129940159889.Spec : Prop :=
  ∀ n, P9320931129940159889.a n = A098305 n

end A098305

/-! ## A098305.P13983111004838821963

`A140824(2*n)/3`
-/

namespace A098305.P13983111004838821963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140824 (2 * n) : ℚ) / 3

end

end A098305.P13983111004838821963

namespace A098305

/-- `A140824(2*n)/3` -/
def P13983111004838821963.Spec : Prop :=
  ∀ n, P13983111004838821963.a n = (A098305 n : ℚ)

end A098305

/-! ## A098305.P7601295333846609151

`floor((A000032(2*n)/3)²)`
-/

namespace A098305.P7601295333846609151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000032 (2 * n) : ℚ) / 3) ^ 2⌋

end

end A098305.P7601295333846609151

namespace A098305

/-- `floor((A000032(2*n)/3)²)` -/
def P7601295333846609151.Spec : Prop :=
  ∀ n, P7601295333846609151.a n = A098305 n

end A098305

/-! ## A098305.P393174278572503726

`ceil(5*(A000045(2*n)/3)²)`
-/

namespace A098305.P393174278572503726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((A000045 (2 * n) : ℚ) / 3) ^ 2⌉

end

end A098305.P393174278572503726

namespace A098305

/-- `ceil(5*(A000045(2*n)/3)²)` -/
def P393174278572503726.Spec : Prop :=
  ∀ n, P393174278572503726.a n = A098305 n

end A098305

/-! ## A098305.P4904385447575520648

`floor(A286810(n)/9)`
-/

namespace A098305.P4904385447575520648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286810 n : ℚ) / 9⌋

end

end A098305.P4904385447575520648

namespace A098305

/-- `floor(A286810(n)/9)` -/
def P4904385447575520648.Spec : Prop :=
  ∀ n, P4904385447575520648.a n = A098305 n

end A098305

/-! ## A098305.P6880676479376040067

`A033891(n)-2*A157335(n)`
-/

namespace A098305.P6880676479376040067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 n - 2 * A157335 n

end

end A098305.P6880676479376040067

namespace A098305

/-- `A033891(n)-2*A157335(n)` -/
def P6880676479376040067.Spec : Prop :=
  ∀ n, P6880676479376040067.a n = A098305 n

end A098305

/-! ## A098305.P8295263269191726893

`A157335(n+1)+A049685(n)-A214992(n)`
-/

namespace A098305.P8295263269191726893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157335 (n + 1) + (A049685 n - A214992 n)

end

end A098305.P8295263269191726893

namespace A098305

/-- `A157335(n+1)+A049685(n)-A214992(n)` -/
def P8295263269191726893.Spec : Prop :=
  ∀ n, P8295263269191726893.a n = A098305 n

end A098305

/-!
# A098306: Unsigned member r=-6 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098306, the canonical program `A098306.P7359215696693958471` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098306 has offset 0).

The definition of A098306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098306.P993664053511150180

`ogf((x-x^2)/(1-7x-7x^2+x^3))`
-/

namespace A098306.P993664053511150180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -7, -7, 1] n

end

end A098306.P993664053511150180

namespace A098306

/-- `ogf((x-x^2)/(1-7x-7x^2+x^3))` -/
def P993664053511150180.Spec : Prop :=
  ∀ n, P993664053511150180.a n = A098306 n

end A098306

/-! ## A098306.P7359215696693958471

`7*a(n-1)+7*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098306

/-- `7*a(n-1)+7*a(n-2)-a(n-3)` -/
def P7359215696693958471.Spec : Prop :=
  ∀ n, P7359215696693958471.a n = A098306 n

theorem P7359215696693958471.correct : P7359215696693958471.Spec := by
  intro n
  simp only [A098306]

end A098306

/-! ## A098306.P8146616006758941182

`1/10*((4+sqrt(15))^n+(4-sqrt(15))^n-2*(-1)^n)`
-/

namespace A098306.P8146616006758941182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 10 : ℝ) * ((4 + Real.sqrt (15 : ℝ)) ^ n + (4 - Real.sqrt (15 : ℝ)) ^ n - (2 * (-1) ^ n : ℝ))

end

end A098306.P8146616006758941182

namespace A098306

/-- `1/10*((4+sqrt(15))^n+(4-sqrt(15))^n-2*(-1)^n)` -/
def P8146616006758941182.Spec : Prop :=
  ∀ n, P8146616006758941182.a n = (A098306 n : ℝ)

theorem P8146616006758941182.correct : P8146616006758941182.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A098306, Nat.add_sub_cancel, A098306.P8146616006758941182.a, A098306.P7359215696693958471.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A098306, Nat.add_sub_cancel, A098306.P8146616006758941182.a, A098306.P7359215696693958471.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A098306

/-! ## A098306.P4955674615998306189

`8*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A098306.P4955674615998306189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  8 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A098306.P4955674615998306189

namespace A098306

/-- `8*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P4955674615998306189.Spec : Prop :=
  ∀ n, P4955674615998306189.a n = A098306 n

end A098306

/-! ## A098306.P5207910887091934646

`8*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A098306.P5207910887091934646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  8 * a (n - 1) - a (n - 2) - 2 * (-1) ^ n

end

end A098306.P5207910887091934646

namespace A098306

/-- `8*a(n-1)-a(n-2)-2*(-1)^n` -/
def P5207910887091934646.Spec : Prop :=
  ∀ n, P5207910887091934646.a n = A098306 n

end A098306

/-! ## A098306.P17321300870079691815

`round(A001091(n)/5)`
-/

namespace A098306.P17321300870079691815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001091 n : ℚ) / 5)

end

end A098306.P17321300870079691815

namespace A098306

/-- `round(A001091(n)/5)` -/
def P17321300870079691815.Spec : Prop :=
  ∀ n, P17321300870079691815.a n = A098306 n

end A098306

/-! ## A098306.P14297138223596503187

`round(A086903(n)/10)`
-/

namespace A098306.P14297138223596503187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A086903 n : ℚ) / 10)

end

end A098306.P14297138223596503187

namespace A098306

/-- `round(A086903(n)/10)` -/
def P14297138223596503187.Spec : Prop :=
  ∀ n, P14297138223596503187.a n = A098306 n

end A098306

/-! ## A098306.P5763338413798226303

`round(A080871(2*n)/5)`
-/

namespace A098306.P5763338413798226303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080871 (2 * n) : ℚ) / 5)

end

end A098306.P5763338413798226303

namespace A098306

/-- `round(A080871(2*n)/5)` -/
def P5763338413798226303.Spec : Prop :=
  ∀ n, P5763338413798226303.a n = A098306 n

end A098306

/-!
# A098307: Unsigned member r=-7 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098307, the canonical program `A098307.P8565693986799848936` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098307 has offset 0).

The definition of A098307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098307.P14187552231706829732

`ogf((x-x^2)/(1-8x-8x^2+x^3))`
-/

namespace A098307.P14187552231706829732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -8, -8, 1] n

end

end A098307.P14187552231706829732

namespace A098307

/-- `ogf((x-x^2)/(1-8x-8x^2+x^3))` -/
def P14187552231706829732.Spec : Prop :=
  ∀ n, P14187552231706829732.a n = A098307 n

end A098307

/-! ## A098307.P8565693986799848936

`8*a(n-1)+8*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098307

/-- `8*a(n-1)+8*a(n-2)-a(n-3)` -/
def P8565693986799848936.Spec : Prop :=
  ∀ n, P8565693986799848936.a n = A098307 n

theorem P8565693986799848936.correct : P8565693986799848936.Spec := by
  intro n
  simp only [A098307]

end A098307

/-! ## A098307.P15919533041115493165

`9*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A098307.P15919533041115493165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  9 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A098307.P15919533041115493165

namespace A098307

/-- `9*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P15919533041115493165.Spec : Prop :=
  ∀ n, P15919533041115493165.a n = A098307 n

end A098307

/-! ## A098307.P6700950268115011412

`round(A056918(n)/11)`
-/

namespace A098307.P6700950268115011412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056918 n : ℚ) / 11)

end

end A098307.P6700950268115011412

namespace A098307

/-- `round(A056918(n)/11)` -/
def P6700950268115011412.Spec : Prop :=
  ∀ n, P6700950268115011412.a n = A098307 n

end A098307

/-! ## A098307.P4350687262538789736

`record[round(A221367(n)/11)]`
-/

namespace A098307.P4350687262538789736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A221367 n : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098307.P4350687262538789736

namespace A098307

/-- `record[round(A221367(n)/11)]` -/
def P4350687262538789736.Spec : Prop :=
  ∀ n, P4350687262538789736.a n = A098307 n

end A098307

/-! ## A098307.P967260161371286662

`A056918(n)-a(n-1)-A070998(n)` with `a(0)=0`
-/

namespace A098307.P967260161371286662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056918 n - a (n - 1) - A070998 n

end

end A098307.P967260161371286662

namespace A098307

/-- `A056918(n)-a(n-1)-A070998(n)` -/
def P967260161371286662.Spec : Prop :=
  ∀ n, P967260161371286662.a n = A098307 n

end A098307

/-! ## A098307.P16538253967824257025

`A056918(n)-a(n-1)-(A018913(n+1)-A018913(n))` with `a(0)=0`
-/

namespace A098307.P16538253967824257025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056918 n - a (n - 1) - (A018913 (n + 1) - A018913 n)

end

end A098307.P16538253967824257025

namespace A098307

/-- `A056918(n)-a(n-1)-(A018913(n+1)-A018913(n))` -/
def P16538253967824257025.Spec : Prop :=
  ∀ n, P16538253967824257025.a n = A098307 n

end A098307

/-!
# A098308: Unsigned member r=-8 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098308, the canonical program `A098308.P813780107730414017` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098308 has offset 0).

The definition of A098308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098308.P7560329047887555907

`ogf((x-x^2)/(1-9x-9x^2+x^3))`
-/

namespace A098308.P7560329047887555907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -9, -9, 1] n

end

end A098308.P7560329047887555907

namespace A098308

/-- `ogf((x-x^2)/(1-9x-9x^2+x^3))` -/
def P7560329047887555907.Spec : Prop :=
  ∀ n, P7560329047887555907.a n = A098308 n

end A098308

/-! ## A098308.P813780107730414017

`9*a(n-1)+9*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098308

/-- `9*a(n-1)+9*a(n-2)-a(n-3)` -/
def P813780107730414017.Spec : Prop :=
  ∀ n, P813780107730414017.a n = A098308 n

theorem P813780107730414017.correct : P813780107730414017.Spec := by
  intro n
  simp only [A098308]

end A098308

/-! ## A098308.P9543678499699803215

`10*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A098308.P9543678499699803215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A098308.P9543678499699803215

namespace A098308

/-- `10*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P9543678499699803215.Spec : Prop :=
  ∀ n, P9543678499699803215.a n = A098308 n

end A098308

/-! ## A098308.P8945475797407671105

`ceil(A132596(n)/3)`
-/

namespace A098308.P8945475797407671105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132596 n : ℚ) / 3⌉

end

end A098308.P8945475797407671105

namespace A098308

/-- `ceil(A132596(n)/3)` -/
def P8945475797407671105.Spec : Prop :=
  ∀ n, P8945475797407671105.a n = A098308 n

end A098308

/-! ## A098308.P12896734444047183734

`floor(A171640(n+1)/3)`
-/

namespace A098308.P12896734444047183734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171640 (n + 1) : ℚ) / 3⌋

end

end A098308.P12896734444047183734

namespace A098308

/-- `floor(A171640(n+1)/3)` -/
def P12896734444047183734.Spec : Prop :=
  ∀ n, P12896734444047183734.a n = A098308 n

end A098308

/-! ## A098308.P5275829085864424971

`A072256(n)-a(n-1)` with `a(0)=0`
-/

namespace A098308.P5275829085864424971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A072256 n - a (n - 1)

end

end A098308.P5275829085864424971

namespace A098308

/-- `A072256(n)-a(n-1)` -/
def P5275829085864424971.Spec : Prop :=
  ∀ n, P5275829085864424971.a n = A098308 n

end A098308

/-! ## A098308.P17971799720474199281

`round(A001079(n)/6)`
-/

namespace A098308.P17971799720474199281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001079 n : ℚ) / 6)

end

end A098308.P17971799720474199281

namespace A098308

/-- `round(A001079(n)/6)` -/
def P17971799720474199281.Spec : Prop :=
  ∀ n, P17971799720474199281.a n = A098308 n

end A098308

/-! ## A098308.P10046096103829167075

`round(A087799(n)/12)`
-/

namespace A098308.P10046096103829167075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087799 n : ℚ) / 12)

end

end A098308.P10046096103829167075

namespace A098308

/-- `round(A087799(n)/12)` -/
def P10046096103829167075.Spec : Prop :=
  ∀ n, P10046096103829167075.a n = A098308 n

end A098308

/-!
# A098309: Unsigned member r = -10 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098309, the canonical program `A098309.P2061507064307138316` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098309 has offset 0).

The definition of A098309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098309.P16818110077555248561

`ogf((x-x^2)/(1-11x-11x^2+x^3))`
-/

namespace A098309.P16818110077555248561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -11, -11, 1] n

end

end A098309.P16818110077555248561

namespace A098309

/-- `ogf((x-x^2)/(1-11x-11x^2+x^3))` -/
def P16818110077555248561.Spec : Prop :=
  ∀ n, P16818110077555248561.a n = A098309 n

end A098309

/-! ## A098309.P2061507064307138316

`11*a(n-1)+11*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098309

/-- `11*a(n-1)+11*a(n-2)-a(n-3)` -/
def P2061507064307138316.Spec : Prop :=
  ∀ n, P2061507064307138316.a n = A098309 n

theorem P2061507064307138316.correct : P2061507064307138316.Spec := by
  intro n
  simp only [A098309]

end A098309

/-! ## A098309.P8194864998194807918

`12*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A098309.P8194864998194807918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  12 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A098309.P8194864998194807918

namespace A098309

/-- `12*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P8194864998194807918.Spec : Prop :=
  ∀ n, P8194864998194807918.a n = A098309 n

end A098309

/-! ## A098309.P2848452770524573303

`round(A023038(n)/7)`
-/

namespace A098309.P2848452770524573303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023038 n : ℚ) / 7)

end

end A098309.P2848452770524573303

namespace A098309

/-- `round(A023038(n)/7)` -/
def P2848452770524573303.Spec : Prop :=
  ∀ n, P2848452770524573303.a n = A098309 n

end A098309

/-! ## A098309.P4936517220650314129

`round(A080875(2*n)/7)`
-/

namespace A098309.P4936517220650314129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080875 (2 * n) : ℚ) / 7)

end

end A098309.P4936517220650314129

namespace A098309

/-- `round(A080875(2*n)/7)` -/
def P4936517220650314129.Spec : Prop :=
  ∀ n, P4936517220650314129.a n = A098309 n

end A098309

/-! ## A098309.P3160427274797370723

`round(A087800(n)/14)`
-/

namespace A098309.P3160427274797370723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087800 n : ℚ) / 14)

end

end A098309.P3160427274797370723

namespace A098309

/-- `round(A087800(n)/14)` -/
def P3160427274797370723.Spec : Prop :=
  ∀ n, P3160427274797370723.a n = A098309 n

end A098309

/-!
# A098310: Unsigned member r=-11 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A098310, the canonical program `A098310.P15470736617992314564` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098310 has offset 0).

The definition of A098310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098310.P12798036517625883900

`ogf((x-x^2)/(1-12x-12x^2+x^3))`
-/

namespace A098310.P12798036517625883900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -12, -12, 1] n

end

end A098310.P12798036517625883900

namespace A098310

/-- `ogf((x-x^2)/(1-12x-12x^2+x^3))` -/
def P12798036517625883900.Spec : Prop :=
  ∀ n, P12798036517625883900.a n = A098310 n

end A098310

/-! ## A098310.P15470736617992314564

`12*a(n-1)+12*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=11`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098310

/-- `12*a(n-1)+12*a(n-2)-a(n-3)` -/
def P15470736617992314564.Spec : Prop :=
  ∀ n, P15470736617992314564.a n = A098310 n

theorem P15470736617992314564.correct : P15470736617992314564.Spec := by
  intro n
  simp only [A098310]

end A098310

/-! ## A098310.P5762601458963961915

`13*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A098310.P5762601458963961915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  13 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A098310.P5762601458963961915

namespace A098310

/-- `13*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P5762601458963961915.Spec : Prop :=
  ∀ n, P5762601458963961915.a n = A098310 n

end A098310

/-! ## A098310.P4214315765656544101

`abs(a(n-1)-A085260(n))` with `a(0)=0, a(1)=1`
-/

namespace A098310.P4214315765656544101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 1) - A085260 n|

end

end A098310.P4214315765656544101

namespace A098310

/-- `abs(a(n-1)-A085260(n))` -/
def P4214315765656544101.Spec : Prop :=
  ∀ n, P4214315765656544101.a n = A098310 n

end A098310

/-! ## A098310.P3357528088794900090

`round(A078363(n)/15)`
-/

namespace A098310.P3357528088794900090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078363 n : ℚ) / 15)

end

end A098310.P3357528088794900090

namespace A098310

/-- `round(A078363(n)/15)` -/
def P3357528088794900090.Spec : Prop :=
  ∀ n, P3357528088794900090.a n = A098310 n

end A098310

/-! ## A098310.P3743622268035617279

`floor(A000035(n)+A078363(n)/15)`
-/

namespace A098310.P3743622268035617279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000035 n : ℚ) + (A078363 n : ℚ) / 15⌋

end

end A098310.P3743622268035617279

namespace A098310

/-- `floor(A000035(n)+A078363(n)/15)` -/
def P3743622268035617279.Spec : Prop :=
  ∀ n, P3743622268035617279.a n = A098310 n

end A098310

/-!
# A098311: Smallest number not occurring earlier and coprime to a(ceiling(n/2)); a(1)=1.

The programs for A098311, there is no canonical definition to state claims against.
-/

/-! ## A098311.P8474070453063082595

`A098312(A098313(n+1))`
-/

namespace A098311.P8474070453063082595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098312 (A098313 (n + 1)).toNat

end

end A098311.P8474070453063082595

/-! ## A098311.P13933334861622189488

`A098313(A098312(n+1))`
-/

namespace A098311.P13933334861622189488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098313 (A098312 (n + 1)).toNat

end

end A098311.P13933334861622189488

/-! ## A098311.P15489768479240523635

`A326291(A016885(n))+A098313(n+1)`
-/

namespace A098311.P15489768479240523635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A016885 n).toNat + A098313 (n + 1)

end

end A098311.P15489768479240523635

/-! ## A098311.P5607190339035891116

`A098313(n+1)+A025469(Δ[A294551(n)])`
-/

namespace A098311.P5607190339035891116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098313 (n + 1) + A025469 (f1 (n + 1) - f1 n).toNat

end

end A098311.P5607190339035891116

/-! ## A098311.P5955331741397078338

`A098313(n+1)+A025469(A294551(n))`
-/

namespace A098311.P5955331741397078338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098313 (n + 1) + A025469 (A294551 n).toNat

end

end A098311.P5955331741397078338

/-!
# A098312: A098311(A098311(n)).

The programs for A098312, there is no canonical definition to state claims against.
-/

/-! ## A098312.P13448917524528201030

`A098311(A098311(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098312.P13448917524528201030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098311 (A098311 (n + 1)).toNat

end

end A098312.P13448917524528201030

/-!
# A098313: Inverse of A098311.

The programs for A098313, there is no canonical definition to state claims against.
-/

/-! ## A098313.P16315482979652081610

`A098314(A098311(n+1))`
-/

namespace A098313.P16315482979652081610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098314 (A098311 (n + 1)).toNat

end

end A098313.P16315482979652081610

/-! ## A098313.P6586509278191327150

`A098311(n+1)-A326291(A016885(n))`
-/

namespace A098313.P6586509278191327150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098311 (n + 1) - A326291 (A016885 n).toNat

end

end A098313.P6586509278191327150

/-! ## A098313.P10268056290835587400

`A098311(n+1)-A025469(Δ[A294551(n)])`
-/

namespace A098313.P10268056290835587400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098311 (n + 1) - A025469 (f1 (n + 1) - f1 n).toNat

end

end A098313.P10268056290835587400

/-! ## A098313.P7524947808495136032

`A098311(n+1)-A025469(A294551(n))`
-/

namespace A098313.P7524947808495136032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098311 (n + 1) - A025469 (A294551 n).toNat

end

end A098313.P7524947808495136032

/-!
# A098314: A098313(A098313(n)).

The programs for A098314, there is no canonical definition to state claims against.
-/

/-! ## A098314.P10731848384775225707

`A098313(A098313(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098314.P10731848384775225707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098313 (A098313 (n + 1)).toNat

end

end A098314.P10731848384775225707

/-!
# A098316: Decimal expansion of [3, 3, ...] = (3 + sqrt(13))/2.

The programs for A098316, there is no canonical definition to state claims against.
-/

/-! ## A098316.P291389846229971937

`A209927(A000007(n)+n)`
-/

namespace A098316.P291389846229971937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A098316.P291389846229971937

/-! ## A098316.P472719926625232471

`A223139(A000007(n)+n)`
-/

namespace A098316.P472719926625232471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A098316.P472719926625232471

/-! ## A098316.P2316387461708727338

`A223139(n)+A000038(n)`
-/

namespace A098316.P2316387461708727338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 (n + 1) + A000038 n

end

end A098316.P2316387461708727338

/-! ## A098316.P2660311205479725477

`A209927(gcd(n, A008458(n)))`
-/

namespace A098316.P2660311205479725477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 (Int.gcd (n : ℤ) (A008458 n) + 1)

end

end A098316.P2660311205479725477

/-! ## A098316.P12154005874366523038

`A209927(or(n, A000007(n)))`
-/

namespace A098316.P12154005874366523038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A098316.P12154005874366523038

/-! ## A098316.P8685089534048553038

`A223139(or(n, A000007(n)))`
-/

namespace A098316.P8685089534048553038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A098316.P8685089534048553038

/-! ## A098316.P11540240876861185141

`A209927(xor(n, A000007(n)))`
-/

namespace A098316.P11540240876861185141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A098316.P11540240876861185141

/-! ## A098316.P10782302916972042654

`A223139(xor(n, A000007(n)))`
-/

namespace A098316.P10782302916972042654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A098316.P10782302916972042654

/-! ## A098316.P1193356854616806952

`A209927(floor(sqrt(A002522(n))))`
-/

namespace A098316.P1193356854616806952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((Int.sqrt (A002522 n)).toNat + 1)

end

end A098316.P1193356854616806952

/-! ## A098316.P13605213273389090581

`A209927(ceil(sqrt(A002061(n))))`
-/

namespace A098316.P13605213273389090581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 (⌈Real.sqrt (A002061 n : ℝ)⌉.toNat + 1)

end

end A098316.P13605213273389090581

/-! ## A098316.P11209489061940377739

`A209927(round(sqrt(A002061(n))))`
-/

namespace A098316.P11209489061940377739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((SequenceMachineLib.roundAway (Real.sqrt (A002061 n : ℝ))).toNat + 1)

end

end A098316.P11209489061940377739

/-! ## A098316.P1121922253023338854

`A209927(round(sqrt(A002522(n))))`
-/

namespace A098316.P1121922253023338854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((SequenceMachineLib.roundAway (Real.sqrt (A002522 n : ℝ))).toNat + 1)

end

end A098316.P1121922253023338854

/-! ## A098316.P12184288795555288666

`A085550(A000007(n)-1+n)`
-/

namespace A098316.P12184288795555288666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085550 (A000007 n - 1 + (n : ℤ)).toNat

end

end A098316.P12184288795555288666

/-! ## A098316.P3613192212256953457

`A209927(A004273(n)+1-n)`
-/

namespace A098316.P3613192212256953457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((A004273 n + (1 - (n : ℤ))).toNat + 1)

end

end A098316.P3613192212256953457

/-! ## A098316.P7511275897237485792

`A085550(n-(1-A000007(n)))`
-/

namespace A098316.P7511275897237485792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085550 ((n : ℤ) - (1 - A000007 n)).toNat

end

end A098316.P7511275897237485792

/-! ## A098316.P17426649448006866589

`A209927(1-(n-A004273(n)))`
-/

namespace A098316.P17426649448006866589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((1 - ((n : ℤ) - A004273 n)).toNat + 1)

end

end A098316.P17426649448006866589

/-! ## A098316.P7995067522291602647

`A209927(2-A040000(n)+n)`
-/

namespace A098316.P7995067522291602647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((2 - A040000 n + (n : ℤ)).toNat + 1)

end

end A098316.P7995067522291602647

/-! ## A098316.P4780563446456627829

`A223139(n+2-A040000(n))`
-/

namespace A098316.P4780563446456627829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223139 (((n + 2 : ℤ) - A040000 n).toNat + 1)

end

end A098316.P4780563446456627829

/-! ## A098316.P12993130700075461634

`A209927(2-(A040000(n)-n))`
-/

namespace A098316.P12993130700075461634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209927 ((2 - (A040000 n - (n : ℤ))).toNat + 1)

end

end A098316.P12993130700075461634

/-! ## A098316.P6654231439356689502

`3+A223139(n)-A122553(n)`
-/

namespace A098316.P6654231439356689502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + (A223139 (n + 1) - A122553 n)

end

end A098316.P6654231439356689502

/-!
# A098317: Decimal expansion of phi^3 = 2 + sqrt(5).

The programs for A098317, there is no canonical definition to state claims against.
-/

/-! ## A098317.P6381680446287172980

`A002163(n)+A000038(n)`
-/

namespace A098317.P6381680446287172980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + A000038 n

end

end A098317.P6381680446287172980

/-! ## A098317.P2494497196379807108

`A002163(n)*A054977(n)`
-/

namespace A098317.P2494497196379807108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) * A054977 n

end

end A098317.P2494497196379807108

/-! ## A098317.P2818663024981571942

`(A000007(n)+1)*A002163(n)`
-/

namespace A098317.P2818663024981571942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A002163 (n + 1)

end

end A098317.P2818663024981571942

/-! ## A098317.P7389692541596145670

`4+A002163(n)-A040002(n)`
-/

namespace A098317.P7389692541596145670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (A002163 (n + 1) - A040002 n)

end

end A098317.P7389692541596145670

/-! ## A098317.P2369386977877317336

`2*A134945(n)-A002163(n)`
-/

namespace A098317.P2369386977877317336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134945 (n + 1) - A002163 (n + 1)

end

end A098317.P2369386977877317336

/-! ## A098317.P7875705504821237575

`4+A134972(n)-A123932(n)`
-/

namespace A098317.P7875705504821237575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (A134972 (n + 1) - A123932 n)

end

end A098317.P7875705504821237575

/-! ## A098317.P4520538068213860988

`4+A134945(n)-A255176(n)`
-/

namespace A098317.P4520538068213860988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (A134945 (n + 1) - A255176 n)

end

end A098317.P4520538068213860988

/-! ## A098317.P11724943460540376922

`(3-A040000(n))*A002163(n)`
-/

namespace A098317.P11724943460540376922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A040000 n) * A002163 (n + 1)

end

end A098317.P11724943460540376922

/-! ## A098317.P4093122216588766825

`6/A040006(n)*A002163(n)`
-/

namespace A098317.P4093122216588766825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A040006 n : ℚ) * (A002163 (n + 1) : ℚ)

end

end A098317.P4093122216588766825

/-! ## A098317.P10412001963496730623

`8/A040012(n)*A002163(n)`
-/

namespace A098317.P10412001963496730623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (A040012 n : ℚ) * (A002163 (n + 1) : ℚ)

end

end A098317.P10412001963496730623

/-! ## A098317.P18059670565955984671

`10/A040020(n)*A002163(n)`
-/

namespace A098317.P18059670565955984671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (A040020 n : ℚ) * (A002163 (n + 1) : ℚ)

end

end A098317.P18059670565955984671

/-! ## A098317.P13829994444186602212

`12/A040030(n)*A002163(n)`
-/

namespace A098317.P13829994444186602212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 / (A040030 n : ℚ) * (A002163 (n + 1) : ℚ)

end

end A098317.P13829994444186602212

/-! ## A098317.P3254307786239784488

`A002163(n)*A008619(floor(2/(n+1)))`
-/

namespace A098317.P3254307786239784488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) * A008619 ⌊2 / (n + 1 : ℚ)⌋.toNat

end

end A098317.P3254307786239784488

/-! ## A098317.P707244105275446744

`A040002(n)+A134945(n)-A123932(n)`
-/

namespace A098317.P707244105275446744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n + (A134945 (n + 1) - A123932 n)

end

end A098317.P707244105275446744

/-! ## A098317.P8258794400782876832

`A094874(n)+A229780(n)-A079585(n)`
-/

namespace A098317.P8258794400782876832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094874 (n + 1) + (A229780 n - A079585 (n + 1))

end

end A098317.P8258794400782876832

/-! ## A098317.P13941581878702547430

`A002163(n)+A131595(n)*A152623(n)`
-/

namespace A098317.P13941581878702547430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + A131595 (n + 2) * A152623 (n + 1)

end

end A098317.P13941581878702547430

/-! ## A098317.P4191189545564844862

`A040002(n+1)*A134945(n)/A255176(n)`
-/

namespace A098317.P4191189545564844862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040002 (n + 1) * A134945 (n + 1) : ℚ) / (A255176 n : ℚ)

end

end A098317.P4191189545564844862

/-! ## A098317.P16523008486950101378

`A004956(A026351(n)-A004956(n))+A002163(n)`
-/

namespace A098317.P16523008486950101378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A026351 n - A004956 n).toNat + A002163 (n + 1)

end

end A098317.P16523008486950101378

/-! ## A098317.P15031996819456431197

`A002163(n)*A026351(A026351(n)-A004956(n))`
-/

namespace A098317.P15031996819456431197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) * A026351 (A026351 n - A004956 n).toNat

end

end A098317.P15031996819456431197

/-! ## A098317.P17900100394831431064

`A151798(n+1)+A134945(n)-A123932(n)`
-/

namespace A098317.P17900100394831431064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 (n + 1) + (A134945 (n + 1) - A123932 n)

end

end A098317.P17900100394831431064

/-!
# A098318: Decimal expansion of [5, 5, ...] = (5 + sqrt(29))/2.

The programs for A098318, there is no canonical definition to state claims against.
-/

/-! ## A098318.P4067301453790362603

`A223141(n)+C(3, (n+1)²)`
-/

namespace A098318.P4067301453790362603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223141 (n + 1) + (Nat.choose 3 ((n + 1) ^ 2) : ℤ)

end

end A098318.P4067301453790362603

/-! ## A098318.P6535047047955833350

`A223140(n)+A000038(n)`
-/

namespace A098318.P6535047047955833350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + A000038 n

end

end A098318.P6535047047955833350

/-! ## A098318.P7648754882830463345

`A223141(n)+xor(2, A040000(n))`
-/

namespace A098318.P7648754882830463345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223141 (n + 1) + Int.xor 2 (A040000 n)

end

end A098318.P7648754882830463345

/-! ## A098318.P15312265331534356453

`A223140(n)+A010673(A001316(n))`
-/

namespace A098318.P15312265331534356453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + A010673 (A001316 n).toNat

end

end A098318.P15312265331534356453

/-! ## A098318.P9500679228864676530

`A223140(n)+2*A010051(A017089(n))`
-/

namespace A098318.P9500679228864676530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + 2 * A010051 (A017089 n).toNat

end

end A098318.P9500679228864676530

/-! ## A098318.P15810479716051841038

`A223140(n)+2*A084099(2*n)`
-/

namespace A098318.P15810479716051841038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + 2 * A084099 (2 * n)

end

end A098318.P15810479716051841038

/-! ## A098318.P11654638588687243675

`A223140(n)+A084099(A084099(n)+A005843(n))`
-/

namespace A098318.P11654638588687243675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + A084099 (A084099 n + A005843 n).toNat

end

end A098318.P11654638588687243675

/-! ## A098318.P462318349448931955

`A223140(n)+A010673(A103517(n))`
-/

namespace A098318.P462318349448931955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + A010673 (A103517 n).toNat

end

end A098318.P462318349448931955

/-! ## A098318.P3187768520876366423

`A223140(n)+A010673(A008579(n))`
-/

namespace A098318.P3187768520876366423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + A010673 (A008579 n).toNat

end

end A098318.P3187768520876366423

/-! ## A098318.P3019078908453556745

`A223140(n)+A010673(A008458(n))`
-/

namespace A098318.P3019078908453556745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + A010673 (A008458 n).toNat

end

end A098318.P3019078908453556745

/-! ## A098318.P17967437621705380521

`A223140(n)+2*A010054(A000096(n))`
-/

namespace A098318.P17967437621705380521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223140 (n + 1) + 2 * A010054 (A000096 n).toNat

end

end A098318.P17967437621705380521

/-!
# A098319: a(1)=0, and a(n+1) is the position of first occurrence of a(n) in the decimal expansion of 1/Pi.

The programs for A098319, there is no canonical definition to state claims against.
-/

/-! ## A098319.P67327987556685432

`A100080(a(n-1))` with `a(0)=0`
-/

namespace A098319.P67327987556685432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100080 (a (n - 1)).toNat

end

end A098319.P67327987556685432

/-!
# A098321: Recurrence sequence based on positions of digits in decimal places of gamma, the Euler-Mascheroni constant.

The programs for A098321, there is no canonical definition to state claims against.
-/

/-! ## A098321.P4606083590123439461

`A229192(a(n-1))` with `a(0)=0`
-/

namespace A098321.P4606083590123439461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A229192 (a (n - 1)).toNat

end

end A098321.P4606083590123439461

/-!
# A098322: Recurrence sequence based on positions of digits in decimal places of Catalan's constant, G (often also called K).

The programs for A098322, there is no canonical definition to state claims against.
-/

/-! ## A098322.P13969368423027367426

`A100079(a(n-1))` with `a(0)=0`
-/

namespace A098322.P13969368423027367426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100079 (a (n - 1)).toNat

end

end A098322.P13969368423027367426

/-! ## A098322.P2434877303068735845

`record[A100079(a(A002262(n)))]` with `a(0)=0`
-/

namespace A098322.P2434877303068735845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A100079 (f1 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098322.P2434877303068735845

/-!
# A098324: Recurrence sequence based on positions of digits in decimal places of phi, the Golden Ratio = (1+sqrt(5))/2.

The programs for A098324, there is no canonical definition to state claims against.
-/

/-! ## A098324.P13576875910204898205

`A088577(a(n-1))-1` with `a(0)=0`
-/

namespace A098324.P13576875910204898205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A088577 (a (n - 1)).toNat - 1

end

end A098324.P13576875910204898205

/-!
# A098325: Recurrence sequence based on positions of digits in decimal places of sqrt(Pi).

The programs for A098325, the canonical program `A098325.P6129945167405888109` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098325 has offset 0).

The definition of A098325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098325.P6129945167405888109

`a(n-1)` with `a(0)=0, a(1)=9, a(2)=10, a(3)=75, a(4)=39, a(5)=218, a(6)=78, a(7)=61, a(8)=45, a(9)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098325

/-- `a(n-1)` -/
def P6129945167405888109.Spec : Prop :=
  ∀ n, (P6129945167405888109.a n : ℤ) = A098325 n

theorem P6129945167405888109.correct : P6129945167405888109.Spec := by
  intro n
  simp only [A098325]

end A098325

/-!
# A098326: Recurrence derived from the decimal places of sqrt(2). a(0)=0, a(i+1)=position of first occurrence of a(i) in decimal places of sqrt(2).

The programs for A098326, there is no canonical definition to state claims against.
-/

/-! ## A098326.P8602978955692591114

`A229199(a(n-1))-1` with `a(0)=0`
-/

namespace A098326.P8602978955692591114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A229199 (a (n - 1)).toNat - 1

end

end A098326.P8602978955692591114

/-! ## A098326.P4733867857993631780

`A023443(A229199(a(n-1)))` with `a(0)=0`
-/

namespace A098326.P4733867857993631780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023443 (A229199 (a (n - 1)).toNat).toNat

end

end A098326.P4733867857993631780

/-!
# A098328: Recurrence sequence derived from the digits of the cube root of 2 after its decimal point.

The programs for A098328, there is no canonical definition to state claims against.
-/

/-! ## A098328.P13241285300564765496

`A100082(a(n-1))` with `a(0)=0`
-/

namespace A098328.P13241285300564765496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100082 (a (n - 1)).toNat

end

end A098328.P13241285300564765496

/-!
# A098329: Expansion of 1/(1-2x-31x^2)^(1/2).

The programs for A098329, there is no canonical definition to state claims against.
-/

/-! ## A098329.P8937862454709792704

`A110180(A000096(n+7)+9)`
-/

namespace A098329.P8937862454709792704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A000096 (n + 7) + 9).toNat

end

end A098329.P8937862454709792704

/-! ## A098329.P8337574633659839634

`A110180(A000124(n+10)-A005843(n+6))`
-/

namespace A098329.P8337574633659839634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A000124 (n + 10) - A005843 (n + 6)).toNat

end

end A098329.P8337574633659839634

/-! ## A098329.P16958003109347781829

`A307855(A005408(n+4)+A000096(n+6))`
-/

namespace A098329.P16958003109347781829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A005408 (n + 4) + A000096 (n + 6)).toNat

end

end A098329.P16958003109347781829

/-! ## A098329.P16495746762478424228

`A307855(A008574(n+5)+A000124(n+5))`
-/

namespace A098329.P16495746762478424228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A008574 (n + 5) + A000124 (n + 5)).toNat

end

end A098329.P16495746762478424228

/-! ## A098329.P7208050127577044976

`A307855(A000096(n+7)-A024000(n+2))`
-/

namespace A098329.P7208050127577044976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A000096 (n + 7) - A024000 (n + 2)).toNat

end

end A098329.P7208050127577044976

/-!
# A098331: Expansion of 1/sqrt(1 - 2*x + 5*x^2).

The programs for A098331, the canonical program `A098331.P17072533051706470185` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098331 has offset 0).

The definition of A098331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098331.P17072533051706470185

`((2*n-1)*a(n-1)-5*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098331

/-- `((2*n-1)*a(n-1)-5*(n-1)*a(n-2))/n` -/
def P17072533051706470185.Spec : Prop :=
  ∀ n, P17072533051706470185.a n = (A098331 n : ℚ)

end A098331

/-! ## A098331.P16162701900384436349

`∑{#}[floor(n/2), C(n, #)*C(n-#, #)*(-1)^#]`
-/

namespace A098331.P16162701900384436349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n k * Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * (-1) ^ k

end

end A098331.P16162701900384436349

namespace A098331

/-- `∑{#}[floor(n/2), C(n, #)*C(n-#, #)*(-1)^#]` -/
def P16162701900384436349.Spec : Prop :=
  ∀ n, P16162701900384436349.a n = A098331 n

end A098331

/-! ## A098331.P14959692509772700510

`A104506(n)-Δ[A104507(n)]`
-/

namespace A098331.P14959692509772700510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104506 n - (f1 (n + 1) - f1 n)

end

end A098331.P14959692509772700510

namespace A098331

/-- `A104506(n)-Δ[A104507(n)]` -/
def P14959692509772700510.Spec : Prop :=
  ∀ n, P14959692509772700510.a n = A098331 n

end A098331

/-! ## A098331.P3974423936126831401

`A104506(n)+A104507(n)-A104507(n+1)`
-/

namespace A098331.P3974423936126831401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104506 n + (A104507 n - A104507 (n + 1))

end

end A098331.P3974423936126831401

namespace A098331

/-- `A104506(n)+A104507(n)-A104507(n+1)` -/
def P3974423936126831401.Spec : Prop :=
  ∀ n, P3974423936126831401.a n = A098331 n

end A098331

/-! ## A098331.P13852788664236059718

`Δ[A102840(n)]/(n+1)`
-/

namespace A098331.P13852788664236059718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102840 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A098331.P13852788664236059718

namespace A098331

/-- `Δ[A102840(n)]/(n+1)` -/
def P13852788664236059718.Spec : Prop :=
  ∀ n, P13852788664236059718.a n = (A098331 n : ℚ)

end A098331

/-! ## A098331.P11732655052049796543

`∑{#}[n, (-1)^(n-#)*C(n, #)*A098335(#)]`
-/

namespace A098331.P11732655052049796543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A098335 k : ℚ)

end

end A098331.P11732655052049796543

namespace A098331

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A098335(#)]` -/
def P11732655052049796543.Spec : Prop :=
  ∀ n, P11732655052049796543.a n = (A098331 n : ℚ)

end A098331

/-! ## A098331.P18276728594539922485

`A098337(n)/2^n`
-/

namespace A098331.P18276728594539922485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098337 n : ℚ) / (2 ^ n : ℚ)

end

end A098331.P18276728594539922485

namespace A098331

/-- `A098337(n)/2^n` -/
def P18276728594539922485.Spec : Prop :=
  ∀ n, P18276728594539922485.a n = (A098331 n : ℚ)

end A098331

/-! ## A098331.P16626140232949948737

`A307860(∑[n+2]-1)`
-/

namespace A098331.P16626140232949948737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307860 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A098331.P16626140232949948737

namespace A098331

/-- `A307860(∑[n+2]-1)` -/
def P16626140232949948737.Spec : Prop :=
  ∀ n, P16626140232949948737.a n = A098331 n

end A098331

/-! ## A098331.P103597111868384459

`A084610(∑[2*n])`
-/

namespace A098331.P103597111868384459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098331.P103597111868384459

namespace A098331

/-- `A084610(∑[2*n])` -/
def P103597111868384459.Spec : Prop :=
  ∀ n, P103597111868384459.a n = A098331 n

end A098331

/-!
# A098332: Expansion of 1/sqrt(1 - 2*x + 9*x^2).

The programs for A098332, the canonical program `A098332.P6990058748405492601` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098332 has offset 0).

The definition of A098332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098332.P6990058748405492601

`∑{#}[floor(n/2), C(n, #)*C(n-#, #)*(-2)^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098332

/-- `∑{#}[floor(n/2), C(n, #)*C(n-#, #)*(-2)^#]` -/
def P6990058748405492601.Spec : Prop :=
  ∀ n, P6990058748405492601.a n = A098332 n

theorem P6990058748405492601.correct : P6990058748405492601.Spec := by
  intro n
  simp only [A098332]

end A098332

/-! ## A098332.P8852328193586650836

`(-1)^n*∑{#}[n, C(n, #)²*(-2)^#]`
-/

namespace A098332.P8852328193586650836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k ^ 2 : ℤ) * (-2) ^ k)

end

end A098332.P8852328193586650836

namespace A098332

/-- `(-1)^n*∑{#}[n, C(n, #)²*(-2)^#]` -/
def P8852328193586650836.Spec : Prop :=
  ∀ n, P8852328193586650836.a n = A098332 n

end A098332

/-! ## A098332.P5909657062375525933

`∑{#}[n, (-1)^(n-#)*C(n, #)*A098336(#)]`
-/

namespace A098332.P5909657062375525933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A098336 k : ℚ)

end

end A098332.P5909657062375525933

namespace A098332

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A098336(#)]` -/
def P5909657062375525933.Spec : Prop :=
  ∀ n, P5909657062375525933.a n = (A098332 n : ℚ)

end A098332

/-! ## A098332.P9718897069397220232

`A307860(∑[n+3])`
-/

namespace A098332.P9718897069397220232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307860 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098332.P9718897069397220232

namespace A098332

/-- `A307860(∑[n+3])` -/
def P9718897069397220232.Spec : Prop :=
  ∀ n, P9718897069397220232.a n = A098332 n

end A098332

/-! ## A098332.P15202308896806071423

`A084612(∑[2*n])`
-/

namespace A098332.P15202308896806071423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084612 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098332.P15202308896806071423

namespace A098332

/-- `A084612(∑[2*n])` -/
def P15202308896806071423.Spec : Prop :=
  ∀ n, P15202308896806071423.a n = A098332 n

end A098332

/-! ## A098332.P15590282975121311276

`A033999(n)*A307884(A052905(n)+2)`
-/

namespace A098332.P15590282975121311276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A307884 (A052905 n + 2).toNat

end

end A098332.P15590282975121311276

namespace A098332

/-- `A033999(n)*A307884(A052905(n)+2)` -/
def P15590282975121311276.Spec : Prop :=
  ∀ n, P15590282975121311276.a n = A098332 n

end A098332

/-! ## A098332.P3086325305391557297

`A033999(n)*A123562(A046092(n))`
-/

namespace A098332.P3086325305391557297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123562 (A046092 n).toNat

end

end A098332.P3086325305391557297

namespace A098332

/-- `A033999(n)*A123562(A046092(n))` -/
def P3086325305391557297.Spec : Prop :=
  ∀ n, P3086325305391557297.a n = A098332 n

end A098332

/-! ## A098332.P17944298916460491540

`A105812(n+3)*A123562(A046092(n))`
-/

namespace A098332.P17944298916460491540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (n + 3) * A123562 (A046092 n).toNat

end

end A098332.P17944298916460491540

namespace A098332

/-- `A105812(n+3)*A123562(A046092(n))` -/
def P17944298916460491540.Spec : Prop :=
  ∀ n, P17944298916460491540.a n = A098332 n

end A098332

/-! ## A098332.P8530074665437474278

`A123562(A046092(n))/A009001(2*n)`
-/

namespace A098332.P8530074665437474278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123562 (A046092 n).toNat : ℚ) / (A009001 (2 * n) : ℚ)

end

end A098332.P8530074665437474278

namespace A098332

/-- `A123562(A046092(n))/A009001(2*n)` -/
def P8530074665437474278.Spec : Prop :=
  ∀ n, P8530074665437474278.a n = (A098332 n : ℚ)

end A098332

/-!
# A098333: Expansion of 1/sqrt(1 - 2*x + 13*x^2).

The programs for A098333, the canonical program `A098333.P13509883917653161804` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098333 has offset 0).

The definition of A098333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098333.P13509883917653161804

`∑{#}[floor(n/2), C(n, #)*C(n-#, #)*(-3)^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098333

/-- `∑{#}[floor(n/2), C(n, #)*C(n-#, #)*(-3)^#]` -/
def P13509883917653161804.Spec : Prop :=
  ∀ n, P13509883917653161804.a n = A098333 n

theorem P13509883917653161804.correct : P13509883917653161804.Spec := by
  intro n
  simp only [A098333]

end A098333

/-! ## A098333.P17323142306810570183

`∑{#}[floor(n/2), (-3)^#*C(n, #)*C(n-#, #)]`
-/

namespace A098333.P17323142306810570183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-3) ^ k * (Nat.choose n k : ℤ) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ)

end

end A098333.P17323142306810570183

namespace A098333

/-- `∑{#}[floor(n/2), (-3)^#*C(n, #)*C(n-#, #)]` -/
def P17323142306810570183.Spec : Prop :=
  ∀ n, P17323142306810570183.a n = A098333 n

theorem P17323142306810570183.correct : P17323142306810570183.Spec := by
  intro n
  simp only [A098333, Nat.add_sub_cancel, A098333.P17323142306810570183.f1, A098333.P17323142306810570183.a, A098333.P13509883917653161804.f1, A098333.P13509883917653161804.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098333

/-! ## A098333.P624121752504546124

`∑{#}[n, (-1)^(n-#)*C(n, #)*A012000(#)]`
-/

namespace A098333.P624121752504546124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A012000 k : ℚ)

end

end A098333.P624121752504546124

namespace A098333

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A012000(#)]` -/
def P624121752504546124.Spec : Prop :=
  ∀ n, P624121752504546124.a n = (A098333 n : ℚ)

end A098333

/-! ## A098333.P2958213142574427705

`A307860(∑[n+4]+2)`
-/

namespace A098333.P2958213142574427705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307860 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A098333.P2958213142574427705

namespace A098333

/-- `A307860(∑[n+4]+2)` -/
def P2958213142574427705.Spec : Prop :=
  ∀ n, P2958213142574427705.a n = A098333 n

end A098333

/-! ## A098333.P3203157764100003505

`A084614(∑[2*n])`
-/

namespace A098333.P3203157764100003505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084614 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098333.P3203157764100003505

namespace A098333

/-- `A084614(∑[2*n])` -/
def P3203157764100003505.Spec : Prop :=
  ∀ n, P3203157764100003505.a n = A098333 n

end A098333

/-! ## A098333.P706646122481170033

`or(1, A084614(A002378(n)))`
-/

namespace A098333.P706646122481170033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084614 (A002378 n).toNat)

end

end A098333.P706646122481170033

namespace A098333

/-- `or(1, A084614(A002378(n)))` -/
def P706646122481170033.Spec : Prop :=
  ∀ n, P706646122481170033.a n = A098333 n

end A098333

/-! ## A098333.P14430682442321798061

`A084600(n²)*A084614(n²+n)`
-/

namespace A098333.P14430682442321798061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 (n ^ 2) * A084614 (n ^ 2 + n)

end

end A098333.P14430682442321798061

namespace A098333

/-- `A084600(n²)*A084614(n²+n)` -/
def P14430682442321798061.Spec : Prop :=
  ∀ n, P14430682442321798061.a n = A098333 n

end A098333

/-! ## A098333.P15734219581237147093

`A084614(n²)*A084614(A002378(n))`
-/

namespace A098333.P15734219581237147093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084614 (n ^ 2) * A084614 (A002378 n).toNat

end

end A098333.P15734219581237147093

namespace A098333

/-- `A084614(n²)*A084614(A002378(n))` -/
def P15734219581237147093.Spec : Prop :=
  ∀ n, P15734219581237147093.a n = A098333 n

end A098333

/-! ## A098333.P10933316823364749356

`and(1, A163383(n+1))*A084614(A002378(n))`
-/

namespace A098333.P10933316823364749356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A163383 (n + 1)) * A084614 (A002378 n).toNat

end

end A098333.P10933316823364749356

namespace A098333

/-- `and(1, A163383(n+1))*A084614(A002378(n))` -/
def P10933316823364749356.Spec : Prop :=
  ∀ n, P10933316823364749356.a n = A098333 n

end A098333

/-!
# A098334: Expansion of 1/sqrt(1-2x+17x^2).

The programs for A098334, the canonical program `A098334.P1518602426916944889` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098334 has offset 0).

The definition of A098334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098334.P1518602426916944889

`∑{#}[floor(n/2), C(n, #)*C(n-#, #)*(-4)^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098334

/-- `∑{#}[floor(n/2), C(n, #)*C(n-#, #)*(-4)^#]` -/
def P1518602426916944889.Spec : Prop :=
  ∀ n, P1518602426916944889.a n = A098334 n

theorem P1518602426916944889.correct : P1518602426916944889.Spec := by
  intro n
  simp only [A098334]

end A098334

/-! ## A098334.P6529393860005705601

`∑{#}[n, (-1)^(n-#)*C(n, #)*A098337(#)]`
-/

namespace A098334.P6529393860005705601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A098337 k : ℚ)

end

end A098334.P6529393860005705601

namespace A098334

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A098337(#)]` -/
def P6529393860005705601.Spec : Prop :=
  ∀ n, P6529393860005705601.a n = (A098334 n : ℚ)

end A098334

/-! ## A098334.P12777699708875063787

`A307860(∑[n+5]+5)`
-/

namespace A098334.P12777699708875063787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307860 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A098334.P12777699708875063787

namespace A098334

/-- `A307860(∑[n+5]+5)` -/
def P12777699708875063787.Spec : Prop :=
  ∀ n, P12777699708875063787.a n = A098334 n

end A098334

/-! ## A098334.P15566347581748384416

`or(1, A307860(A052905(n+2)))`
-/

namespace A098334.P15566347581748384416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A307860 (A052905 (n + 2)).toNat)

end

end A098334.P15566347581748384416

namespace A098334

/-- `or(1, A307860(A052905(n+2)))` -/
def P15566347581748384416.Spec : Prop :=
  ∀ n, P15566347581748384416.a n = A098334 n

end A098334

/-! ## A098334.P13865702909580508243

`A020985(n)²*A307860(A052905(n+2))`
-/

namespace A098334.P13865702909580508243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A307860 (A052905 (n + 2)).toNat

end

end A098334.P13865702909580508243

namespace A098334

/-- `A020985(n)²*A307860(A052905(n+2))` -/
def P13865702909580508243.Spec : Prop :=
  ∀ n, P13865702909580508243.a n = A098334 n

end A098334

/-! ## A098334.P12306960930757540896

`A033999(n)²*A307860(A052905(n+2))`
-/

namespace A098334.P12306960930757540896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A307860 (A052905 (n + 2)).toNat

end

end A098334.P12306960930757540896

namespace A098334

/-- `A033999(n)²*A307860(A052905(n+2))` -/
def P12306960930757540896.Spec : Prop :=
  ∀ n, P12306960930757540896.a n = A098334 n

end A098334

/-! ## A098334.P18350488798817153081

`A307860(A052905(n+2))+A000007(n+1)`
-/

namespace A098334.P18350488798817153081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307860 (A052905 (n + 2)).toNat + A000007 (n + 1)

end

end A098334.P18350488798817153081

namespace A098334

/-- `A307860(A052905(n+2))+A000007(n+1)` -/
def P18350488798817153081.Spec : Prop :=
  ∀ n, P18350488798817153081.a n = A098334 n

end A098334

/-! ## A098334.P3735079719187827318

`A307860(A052905(n+2))^and(1, A083683(n))`
-/

namespace A098334.P3735079719187827318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307860 (A052905 (n + 2)).toNat : ℚ) ^ (Int.land 1 (A083683 n) : ℤ)

end

end A098334.P3735079719187827318

namespace A098334

/-- `A307860(A052905(n+2))^and(1, A083683(n))` -/
def P3735079719187827318.Spec : Prop :=
  ∀ n, P3735079719187827318.a n = (A098334 n : ℚ)

end A098334

/-! ## A098334.P15048051967044985090

`A307860(A052905(n+2))+A035385(abs(2*n-5))`
-/

namespace A098334.P15048051967044985090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307860 (A052905 (n + 2)).toNat + A035385 |(2 * n : ℤ) - 5|.toNat

end

end A098334.P15048051967044985090

namespace A098334

/-- `A307860(A052905(n+2))+A035385(abs(2*n-5))` -/
def P15048051967044985090.Spec : Prop :=
  ∀ n, P15048051967044985090.a n = A098334 n

end A098334

/-!
# A098335: Expansion of 1/sqrt(1-4x+8x^2).

The programs for A098335, the canonical program `A098335.P16673297910048146598` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098335 has offset 0).

The definition of A098335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098335.P16673297910048146598

`∑{#}[floor(n/2), C(n, #)*C(n-#, #)*2^n*(-4)^-#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098335

/-- `∑{#}[floor(n/2), C(n, #)*C(n-#, #)*2^n*(-4)^-#]` -/
def P16673297910048146598.Spec : Prop :=
  ∀ n, P16673297910048146598.a n = (A098335 n : ℚ)

end A098335

/-! ## A098335.P10642113968062521876

`∑{#}[n, C(n, #)*A098331(#)]`
-/

namespace A098335.P10642113968062521876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A098331 k

end

end A098335.P10642113968062521876

namespace A098335

/-- `∑{#}[n, C(n, #)*A098331(#)]` -/
def P10642113968062521876.Spec : Prop :=
  ∀ n, P10642113968062521876.a n = A098335 n

end A098335

/-! ## A098335.P7469913689531929919

`∑{#}[n, (-1)^(n-#)*C(n, #)*A098338(#)]`
-/

namespace A098335.P7469913689531929919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A098338 k : ℚ)

end

end A098335.P7469913689531929919

namespace A098335

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A098338(#)]` -/
def P7469913689531929919.Spec : Prop :=
  ∀ n, P7469913689531929919.a n = (A098335 n : ℚ)

end A098335

/-! ## A098335.P12212644052999011370

`A123199(∑[2*n])`
-/

namespace A098335.P12212644052999011370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123199 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098335.P12212644052999011370

namespace A098335

/-- `A123199(∑[2*n])` -/
def P12212644052999011370.Spec : Prop :=
  ∀ n, P12212644052999011370.a n = A098335 n

end A098335

/-! ## A098335.P13153124337072842909

`A123199(n²+n)*A123199(n²)`
-/

namespace A098335.P13153124337072842909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123199 (n ^ 2 + n) * A123199 (n ^ 2)

end

end A098335.P13153124337072842909

namespace A098335

/-- `A123199(n²+n)*A123199(n²)` -/
def P13153124337072842909.Spec : Prop :=
  ∀ n, P13153124337072842909.a n = A098335 n

end A098335

/-!
# A098336: Expansion of 1/sqrt(1 - 4*x + 12*x^2).

The programs for A098336, the canonical program `A098336.P2136853773065804619` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098336 has offset 0).

The definition of A098336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098336.P2136853773065804619

`∑{#}[floor(n/2), C(n, #)*C(n-#, #)*2^n*(-2)^-#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098336

/-- `∑{#}[floor(n/2), C(n, #)*C(n-#, #)*2^n*(-2)^-#]` -/
def P2136853773065804619.Spec : Prop :=
  ∀ n, P2136853773065804619.a n = (A098336 n : ℚ)

end A098336

/-! ## A098336.P4857655809571219169

`(-1)^n*A116093(n)`
-/

namespace A098336.P4857655809571219169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116093 n

end

end A098336.P4857655809571219169

namespace A098336

/-- `(-1)^n*A116093(n)` -/
def P4857655809571219169.Spec : Prop :=
  ∀ n, P4857655809571219169.a n = A098336 n

end A098336

/-! ## A098336.P8423173327070885579

`A116093(n)*A165326(n+1)`
-/

namespace A098336.P8423173327070885579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116093 n * A165326 (n + 1)

end

end A098336.P8423173327070885579

namespace A098336

/-- `A116093(n)*A165326(n+1)` -/
def P8423173327070885579.Spec : Prop :=
  ∀ n, P8423173327070885579.a n = A098336 n

end A098336

/-! ## A098336.P17334213140194007766

`A116093(n)/A033999(n+2)`
-/

namespace A098336.P17334213140194007766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116093 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A098336.P17334213140194007766

namespace A098336

/-- `A116093(n)/A033999(n+2)` -/
def P17334213140194007766.Spec : Prop :=
  ∀ n, P17334213140194007766.a n = (A098336 n : ℚ)

end A098336

/-! ## A098336.P14979469475462447999

`A116093(n)/A009001(A005843(n))`
-/

namespace A098336.P14979469475462447999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116093 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A098336.P14979469475462447999

namespace A098336

/-- `A116093(n)/A009001(A005843(n))` -/
def P14979469475462447999.Spec : Prop :=
  ∀ n, P14979469475462447999.a n = (A098336 n : ℚ)

end A098336

/-! ## A098336.P14344570486437626199

`A116093(n)*A219977(Δ[A004526(n)])`
-/

namespace A098336.P14344570486437626199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116093 n * A219977 (f1 (n + 1) - f1 n).toNat

end

end A098336.P14344570486437626199

namespace A098336

/-- `A116093(n)*A219977(Δ[A004526(n)])` -/
def P14344570486437626199.Spec : Prop :=
  ∀ n, P14344570486437626199.a n = A098336 n

end A098336

/-! ## A098336.P15504479025856286136

`∑{#}[n, C(n, #)*A098332(#)]`
-/

namespace A098336.P15504479025856286136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A098332 k

end

end A098336.P15504479025856286136

namespace A098336

/-- `∑{#}[n, C(n, #)*A098332(#)]` -/
def P15504479025856286136.Spec : Prop :=
  ∀ n, P15504479025856286136.a n = A098336 n

end A098336

/-! ## A098336.P9664066096742806189

`∑{#}[n, (-1)^(n-#)*C(n, #)*A098339(#)]`
-/

namespace A098336.P9664066096742806189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A098339 k : ℚ)

end

end A098336.P9664066096742806189

namespace A098336

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A098339(#)]` -/
def P9664066096742806189.Spec : Prop :=
  ∀ n, P9664066096742806189.a n = (A098336 n : ℚ)

end A098336

/-! ## A098336.P15475384233827535640

`A116093(n)*A219977(n²)`
-/

namespace A098336.P15475384233827535640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116093 n * A219977 (n ^ 2)

end

end A098336.P15475384233827535640

namespace A098336

/-- `A116093(n)*A219977(n²)` -/
def P15475384233827535640.Spec : Prop :=
  ∀ n, P15475384233827535640.a n = A098336 n

end A098336

/-!
# A098337: Expansion of 1/sqrt(1-4x+20x^2).

The programs for A098337, the canonical program `A098337.P18061775797793243662` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098337 has offset 0).

The definition of A098337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098337.P18061775797793243662

`∑{#}[floor(n/2), C(n, #)*C(2*(n-#), n)*(-5)^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098337

/-- `∑{#}[floor(n/2), C(n, #)*C(2*(n-#), n)*(-5)^#]` -/
def P18061775797793243662.Spec : Prop :=
  ∀ n, P18061775797793243662.a n = A098337 n

theorem P18061775797793243662.correct : P18061775797793243662.Spec := by
  intro n
  simp only [A098337]

end A098337

/-! ## A098337.P806555067326063376

`2^n*A098331(n)`
-/

namespace A098337.P806555067326063376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A098331 n

end

end A098337.P806555067326063376

namespace A098337

/-- `2^n*A098331(n)` -/
def P806555067326063376.Spec : Prop :=
  ∀ n, P806555067326063376.a n = A098337 n

end A098337

/-! ## A098337.P12367445839292290070

`Δ[A102840(n)]/(n+1)*2^n`
-/

namespace A098337.P12367445839292290070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102840 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A098337.P12367445839292290070

namespace A098337

/-- `Δ[A102840(n)]/(n+1)*2^n` -/
def P12367445839292290070.Spec : Prop :=
  ∀ n, P12367445839292290070.a n = (A098337 n : ℚ)

end A098337

/-! ## A098337.P6071283666477786908

`A098331(n)*A131577(n+1)`
-/

namespace A098337.P6071283666477786908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098331 n * A131577 (n + 1)

end

end A098337.P6071283666477786908

namespace A098337

/-- `A098331(n)*A131577(n+1)` -/
def P6071283666477786908.Spec : Prop :=
  ∀ n, P6071283666477786908.a n = A098337 n

end A098337

/-! ## A098337.P11385529718144946520

`A098331(n)/2*A000079(n+1)`
-/

namespace A098337.P11385529718144946520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098331 n : ℚ) / 2 * (A000079 (n + 1) : ℚ)

end

end A098337.P11385529718144946520

namespace A098337

/-- `A098331(n)/2*A000079(n+1)` -/
def P11385529718144946520.Spec : Prop :=
  ∀ n, P11385529718144946520.a n = (A098337 n : ℚ)

end A098337

/-! ## A098337.P9467452144232394654

`(A104506(n)-Δ[A104507(n)])*2^n`
-/

namespace A098337.P9467452144232394654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104506 n - (f1 (n + 1) - f1 n)) * (2 ^ n : ℤ)

end

end A098337.P9467452144232394654

namespace A098337

/-- `(A104506(n)-Δ[A104507(n)])*2^n` -/
def P9467452144232394654.Spec : Prop :=
  ∀ n, P9467452144232394654.a n = A098337 n

end A098337

/-! ## A098337.P9811212379140400183

`A098331(n)/2*A016116(2*(n+1))`
-/

namespace A098337.P9811212379140400183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098331 n : ℚ) / 2 * (A016116 (2 * (n + 1)) : ℚ)

end

end A098337.P9811212379140400183

namespace A098337

/-- `A098331(n)/2*A016116(2*(n+1))` -/
def P9811212379140400183.Spec : Prop :=
  ∀ n, P9811212379140400183.a n = (A098337 n : ℚ)

end A098337

/-! ## A098337.P965423442808660222

`A098331(n)+A000225(n)*A098331(n)`
-/

namespace A098337.P965423442808660222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098331 n + A000225 n * A098331 n

end

end A098337.P965423442808660222

namespace A098337

/-- `A098331(n)+A000225(n)*A098331(n)` -/
def P965423442808660222.Spec : Prop :=
  ∀ n, P965423442808660222.a n = A098337 n

end A098337

/-! ## A098337.P11973688029997650891

`A000051(n)*A098331(n)-A098331(n)`
-/

namespace A098337.P11973688029997650891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A098331 n - A098331 n

end

end A098337.P11973688029997650891

namespace A098337

/-- `A000051(n)*A098331(n)-A098331(n)` -/
def P11973688029997650891.Spec : Prop :=
  ∀ n, P11973688029997650891.a n = A098337 n

end A098337

/-! ## A098337.P11961376388189795980

`∑{#}[n, C(n, #)*A098334(#)]`
-/

namespace A098337.P11961376388189795980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A098334 k

end

end A098337.P11961376388189795980

namespace A098337

/-- `∑{#}[n, C(n, #)*A098334(#)]` -/
def P11961376388189795980.Spec : Prop :=
  ∀ n, P11961376388189795980.a n = A098337 n

end A098337

/-! ## A098337.P13724631422145740051

`A000079(n)*A098331(n)*A007318(A000217(n))`
-/

namespace A098337.P13724631422145740051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A098331 n * A007318 (A000217 n).toNat

end

end A098337.P13724631422145740051

namespace A098337

/-- `A000079(n)*A098331(n)*A007318(A000217(n))` -/
def P13724631422145740051.Spec : Prop :=
  ∀ n, P13724631422145740051.a n = A098337 n

end A098337

/-! ## A098337.P3506949030765615826

`A098331(n)*A102363(A000217(n))`
-/

namespace A098337.P3506949030765615826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098331 n * A102363 (A000217 n).toNat

end

end A098337.P3506949030765615826

namespace A098337

/-- `A098331(n)*A102363(A000217(n))` -/
def P3506949030765615826.Spec : Prop :=
  ∀ n, P3506949030765615826.a n = A098337 n

end A098337

/-! ## A098337.P11577046211108665495

`∑{#}[n, (-1)^(n-#)*C(n, #)*A098341(#)]`
-/

namespace A098337.P11577046211108665495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A098341 k : ℚ)

end

end A098337.P11577046211108665495

namespace A098337

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A098341(#)]` -/
def P11577046211108665495.Spec : Prop :=
  ∀ n, P11577046211108665495.a n = (A098337 n : ℚ)

end A098337

/-! ## A098337.P9618996437209573668

`A000079(n)*A307860(A034856(n+1))`
-/

namespace A098337.P9618996437209573668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A307860 (A034856 (n + 1)).toNat

end

end A098337.P9618996437209573668

namespace A098337

/-- `A000079(n)*A307860(A034856(n+1))` -/
def P9618996437209573668.Spec : Prop :=
  ∀ n, P9618996437209573668.a n = A098337 n

end A098337

/-! ## A098337.P14489789536267689412

`A084610(n²+n)*2^n`
-/

namespace A098337.P14489789536267689412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (n ^ 2 + n) * (2 ^ n : ℤ)

end

end A098337.P14489789536267689412

namespace A098337

/-- `A084610(n²+n)*2^n` -/
def P14489789536267689412.Spec : Prop :=
  ∀ n, P14489789536267689412.a n = A098337 n

end A098337

/-!
# A098338: Expansion of 1/sqrt(1-6x+13x^2).

The programs for A098338, the canonical program `A098338.P4013917250363788301` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098338 has offset 0).

The definition of A098338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098338.P4013917250363788301

`∑{#}[n, C(n, #)*A098335(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098338

/-- `∑{#}[n, C(n, #)*A098335(#)]` -/
def P4013917250363788301.Spec : Prop :=
  ∀ n, P4013917250363788301.a n = A098338 n

theorem P4013917250363788301.correct : P4013917250363788301.Spec := by
  intro n
  simp only [A098338]

end A098338

/-!
# A098339: Expansion of 1/sqrt(1 - 6x + 17x^2).

The programs for A098339, the canonical program `A098339.P4284346595642755013` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098339 has offset 0).

The definition of A098339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098339.P4284346595642755013

`∑{#}[n, C(n, #)*A098336(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098339

/-- `∑{#}[n, C(n, #)*A098336(#)]` -/
def P4284346595642755013.Spec : Prop :=
  ∀ n, P4284346595642755013.a n = A098339 n

theorem P4284346595642755013.correct : P4284346595642755013.Spec := by
  intro n
  simp only [A098339]

end A098339

/-!
# A098340: Expansion of 1/sqrt(1 - 6x + 21x^2).

The programs for A098340, the canonical program `A098340.P15311699527566659015` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098340 has offset 0).

The definition of A098340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098340.P15311699527566659015

`∑{#}[n, C(n, #)*A012000(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098340

/-- `∑{#}[n, C(n, #)*A012000(#)]` -/
def P15311699527566659015.Spec : Prop :=
  ∀ n, P15311699527566659015.a n = A098340 n

theorem P15311699527566659015.correct : P15311699527566659015.Spec := by
  intro n
  simp only [A098340]

end A098340

/-! ## A098340.P17628591136585815132

`A083254(∏[p?[A045763(n+1)]])`
-/

namespace A098340.P17628591136585815132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098340.P17628591136585815132

namespace A098340

/-- `A083254(∏[p?[A045763(n+1)]])` -/
def P17628591136585815132.Spec : Prop :=
  ∀ n, P17628591136585815132.a n = A098340 n

end A098340

/-!
# A098341: Expansion of 1/sqrt(1 - 6*x + 25*x^2).

The programs for A098341, the canonical program `A098341.P5687237411611308031` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098341 has offset 0).

The definition of A098341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098341.P5687237411611308031

`(-1)^n*∑{#}[n, C(n, #)²*(-4)^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098341

/-- `(-1)^n*∑{#}[n, C(n, #)²*(-4)^#]` -/
def P5687237411611308031.Spec : Prop :=
  ∀ n, P5687237411611308031.a n = A098341 n

theorem P5687237411611308031.correct : P5687237411611308031.Spec := by
  intro n
  simp only [A098341]

end A098341

/-! ## A098341.P13160078984292237437

`∑{#}[n, C(n, #)*A098337(#)]`
-/

namespace A098341.P13160078984292237437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A098337 k

end

end A098341.P13160078984292237437

namespace A098341

/-- `∑{#}[n, C(n, #)*A098337(#)]` -/
def P13160078984292237437.Spec : Prop :=
  ∀ n, P13160078984292237437.a n = A098341 n

end A098341

/-! ## A098341.P4974324055540873075

`A033999(n)*A307884(A052905(n+2))`
-/

namespace A098341.P4974324055540873075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A307884 (A052905 (n + 2)).toNat

end

end A098341.P4974324055540873075

namespace A098341

/-- `A033999(n)*A307884(A052905(n+2))` -/
def P4974324055540873075.Spec : Prop :=
  ∀ n, P4974324055540873075.a n = A098341 n

end A098341

/-! ## A098341.P12284875538494808548

`A057077(2*n)*A307884(A052905(n+2))`
-/

namespace A098341.P12284875538494808548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A307884 (A052905 (n + 2)).toNat

end

end A098341.P12284875538494808548

namespace A098341

/-- `A057077(2*n)*A307884(A052905(n+2))` -/
def P12284875538494808548.Spec : Prop :=
  ∀ n, P12284875538494808548.a n = A098341 n

end A098341

/-! ## A098341.P17545823992096797608

`xor(A033999(n²), A307884(A052905(n+2)))+1`
-/

namespace A098341.P17545823992096797608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 (n ^ 2)) (A307884 (A052905 (n + 2)).toNat) + 1

end

end A098341.P17545823992096797608

namespace A098341

/-- `xor(A033999(n²), A307884(A052905(n+2)))+1` -/
def P17545823992096797608.Spec : Prop :=
  ∀ n, P17545823992096797608.a n = A098341 n

end A098341

/-!
# A098342: Consider the family of multigraphs enriched by the species of binary arborescences. Sequence gives number of those multigraphs with n edges.

The programs for A098342, there is no canonical definition to state claims against.
-/

/-! ## A098342.P5808417138195098716

`A187328(A145088(n))`
-/

namespace A098342.P5808417138195098716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (A145088 n).toNat

end

end A098342.P5808417138195098716

/-!
# A098343: Consider the family of multigraphs enriched by the species of binary arborescences. Sequence gives number of those multigraphs with n edges and loops.

The programs for A098343, there is no canonical definition to state claims against.
-/

/-! ## A098343.P6125267324961821668

`A264993(A346184(n)+n+n)`
-/

namespace A098343.P6125267324961821668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264993 (A346184 n + (n : ℤ) + (n : ℤ)).toNat

end

end A098343.P6125267324961821668

/-!
# A098345: Consider the family of multigraphs enriched by the species of binary arborescences. Sequence gives number of those multigraphs with n arcs.

The programs for A098345, there is no canonical definition to state claims against.
-/

/-! ## A098345.P14427326740914462588

`A065033(n*A317342(n+1))`
-/

namespace A098345.P14427326740914462588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n : ℤ) * A317342 (n + 1)).toNat

end

end A098345.P14427326740914462588

/-!
# A098346: Consider the family of multigraphs enriched by the species of partitions. Sequence gives the triangle read by rows giving coefficients of polynomials arising from enumeration of those multigraphs on n edges of 5 different colors.

The programs for A098346, there is no canonical definition to state claims against.
-/

/-! ## A098346.P7340443826503349294

`A050108(A253146(∑[n^n]))`
-/

namespace A098346.P7340443826503349294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050108 (A253146 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A098346.P7340443826503349294

/-!
# A098347: A sequence derived from a Ferrers graph partition of 16.

The programs for A098347, the canonical program `A098347.P17306477268867601036` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098347 has offset 1).

The definition of A098347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098347.P4719730576710611961

`ogf((1+2x-2x^2)/(1-3x-3x^2+3x^3))`
-/

namespace A098347.P4719730576710611961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -3, -3, 3] n

end

end A098347.P4719730576710611961

namespace A098347

/-- `ogf((1+2x-2x^2)/(1-3x-3x^2+3x^3))` -/
def P4719730576710611961.Spec : Prop :=
  ∀ n, P4719730576710611961.a n = A098347 (n + 1)

end A098347

/-! ## A098347.P17306477268867601036

`3*a(n-1)+3*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=5, a(2)=16`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098347

/-- `3*a(n-1)+3*a(n-2)-3*a(n-3)` -/
def P17306477268867601036.Spec : Prop :=
  ∀ n, P17306477268867601036.a n = A098347 (n + 1)

theorem P17306477268867601036.correct : P17306477268867601036.Spec := by
  intro n
  simp only [A098347, Nat.add_sub_cancel]

end A098347

/-!
# A098348: Triangular array read by rows: T(n, k) = number of ordered factorizations of a "hook-type" number with n total prime factors and k distinct prime factors. "Hook-type" means that only one prime can have multiplicity > 1.

The programs for A098348, there is no canonical definition to state claims against.
-/

/-! ## A098348.P11446284473346742135

`A238975(eq[1, A115722(n)])`
-/

namespace A098348.P11446284473346742135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098348.P11446284473346742135

/-! ## A098348.P65699784422674321

`A074206(A303555(n+1))`
-/

namespace A098348.P65699784422674321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A303555 (n + 1)).toNat

end

end A098348.P65699784422674321

/-! ## A098348.P1995636396345121583

`A002033(A303555(n+1)-1)`
-/

namespace A098348.P1995636396345121583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A303555 (n + 1) - 1).toNat

end

end A098348.P1995636396345121583

/-! ## A098348.P13986409652098254066

`∑{d}[A303555(n+1), A174725(#)]`
-/

namespace A098348.P13986409652098254066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174725 d

end

end A098348.P13986409652098254066

/-! ## A098348.P9193286725907059552

`A067824(A303555(n+1))/A087104(n+6)`
-/

namespace A098348.P9193286725907059552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067824 (A303555 (n + 1)).toNat : ℚ) / (A087104 (n + 6) : ℚ)

end

end A098348.P9193286725907059552

/-!
# A098349: Sum of ordered factorizations over hook-type prime signatures. (Row sums of A098348).

The programs for A098349, there is no canonical definition to state claims against.
-/

/-! ## A098349.P15099309910957716512

`A139711(A056986(n+1)+A002061(n))`
-/

namespace A098349.P15099309910957716512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (A056986 (n + 1) + A002061 n).toNat

end

end A098349.P15099309910957716512

/-!
# A098350: Multiplication table of the primes read by antidiagonals.

The programs for A098350, the canonical program `A098350.P7262984106362710950` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098350 has offset 1).

The definition of A098350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098350.P7262984106362710950

`A003991(C(A000040(col(n)+1)+A000040(row(n)-col(n)+1)-1, 2)+A000040(col(n)+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098350

/-- `A003991(C(A000040(col(n)+1)+A000040(row(n)-col(n)+1)-1, 2)+A000040(col(n)+1))` -/
def P7262984106362710950.Spec : Prop :=
  ∀ n, P7262984106362710950.a n = A098350 (n + 1)

theorem P7262984106362710950.correct : P7262984106362710950.Spec := by
  intro n
  simp only [A098350, Nat.add_sub_cancel]

end A098350

/-! ## A098350.P13182856012080587608

`A037126(n+1)*A104887(n+1)`
-/

namespace A098350.P13182856012080587608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A104887 (n + 1)

end

end A098350.P13182856012080587608

namespace A098350

/-- `A037126(n+1)*A104887(n+1)` -/
def P13182856012080587608.Spec : Prop :=
  ∀ n, P13182856012080587608.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P14774702572550205321

`A000040(col(n)+1)*A000040(row(n)-col(n)+1)`
-/

namespace A098350.P14774702572550205321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.triCol n + 1) * A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A098350.P14774702572550205321

namespace A098350

/-- `A000040(col(n)+1)*A000040(row(n)-col(n)+1)` -/
def P14774702572550205321.Spec : Prop :=
  ∀ n, P14774702572550205321.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P11293678750609225420

`A000040(A004736(n+1))*A037126(n+1)`
-/

namespace A098350.P11293678750609225420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A037126 (n + 1)

end

end A098350.P11293678750609225420

namespace A098350

/-- `A000040(A004736(n+1))*A037126(n+1)` -/
def P11293678750609225420.Spec : Prop :=
  ∀ n, P11293678750609225420.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P10650197622169867786

`A000040(A002260(n+1))*A104887(n+1)`
-/

namespace A098350.P10650197622169867786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat * A104887 (n + 1)

end

end A098350.P10650197622169867786

namespace A098350

/-- `A000040(A002260(n+1))*A104887(n+1)` -/
def P10650197622169867786.Spec : Prop :=
  ∀ n, P10650197622169867786.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P3002477673000003479

`A000040(A002260(n+1))*A000040(A004736(n+1))`
-/

namespace A098350.P3002477673000003479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat * A000040 (A004736 (n + 1)).toNat

end

end A098350.P3002477673000003479

namespace A098350

/-- `A000040(A002260(n+1))*A000040(A004736(n+1))` -/
def P3002477673000003479.Spec : Prop :=
  ∀ n, P3002477673000003479.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P1084753795529299387

`A000040(A004736(n+1))*A000040(A002262(n)+1)`
-/

namespace A098350.P1084753795529299387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A000040 (A002262 n + 1).toNat

end

end A098350.P1084753795529299387

namespace A098350

/-- `A000040(A004736(n+1))*A000040(A002262(n)+1)` -/
def P1084753795529299387.Spec : Prop :=
  ∀ n, P1084753795529299387.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P14522108308231217772

`A000040(A002260(n+1))*A000040(A025581(n)+1)`
-/

namespace A098350.P14522108308231217772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat * A000040 (A025581 n + 1).toNat

end

end A098350.P14522108308231217772

namespace A098350

/-- `A000040(A002260(n+1))*A000040(A025581(n)+1)` -/
def P14522108308231217772.Spec : Prop :=
  ∀ n, P14522108308231217772.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P6586198101643937732

`A037126(n+1)*A037126(A038722(n+1))`
-/

namespace A098350.P6586198101643937732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A037126 (A038722 (n + 1)).toNat

end

end A098350.P6586198101643937732

namespace A098350

/-- `A037126(n+1)*A037126(A038722(n+1))` -/
def P6586198101643937732.Spec : Prop :=
  ∀ n, P6586198101643937732.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P6806299116365485121

`A037126(n+1)*A037126(A061579(n)+1)`
-/

namespace A098350.P6806299116365485121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A037126 (A061579 n + 1).toNat

end

end A098350.P6806299116365485121

namespace A098350

/-- `A037126(n+1)*A037126(A061579(n)+1)` -/
def P6806299116365485121.Spec : Prop :=
  ∀ n, P6806299116365485121.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P5824858858789941751

`A104887(A038722(n+1))*A104887(n+1)`
-/

namespace A098350.P5824858858789941751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (A038722 (n + 1)).toNat * A104887 (n + 1)

end

end A098350.P5824858858789941751

namespace A098350

/-- `A104887(A038722(n+1))*A104887(n+1)` -/
def P5824858858789941751.Spec : Prop :=
  ∀ n, P5824858858789941751.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P3882855256549337406

`A037126(n+1)*A037126(A093995(n+1)-n)`
-/

namespace A098350.P3882855256549337406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A037126 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A098350.P3882855256549337406

namespace A098350

/-- `A037126(n+1)*A037126(A093995(n+1)-n)` -/
def P3882855256549337406.Spec : Prop :=
  ∀ n, P3882855256549337406.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P2282765388437831681

`A037126(n+1)*A037126(A278818(n))`
-/

namespace A098350.P2282765388437831681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A037126 (A278818 n).toNat

end

end A098350.P2282765388437831681

namespace A098350

/-- `A037126(n+1)*A037126(A278818(n))` -/
def P2282765388437831681.Spec : Prop :=
  ∀ n, P2282765388437831681.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P9343425370337391548

`A000040(A057555(2*n+1))*A000040(A057555(2*(n+1)))`
-/

namespace A098350.P9343425370337391548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A057555 (2 * n + 1)).toNat * A000040 (A057555 (2 * (n + 1))).toNat

end

end A098350.P9343425370337391548

namespace A098350

/-- `A000040(A057555(2*n+1))*A000040(A057555(2*(n+1)))` -/
def P9343425370337391548.Spec : Prop :=
  ∀ n, P9343425370337391548.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P649160411607300810

`A000040(A004736(n+1))*A020639(A083221(n+2))`
-/

namespace A098350.P649160411607300810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A020639 (A083221 (n + 2)).toNat

end

end A098350.P649160411607300810

namespace A098350

/-- `A000040(A004736(n+1))*A020639(A083221(n+2))` -/
def P649160411607300810.Spec : Prop :=
  ∀ n, P649160411607300810.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P3678128976066527463

`A066560(A073060(n))`
-/

namespace A098350.P3678128976066527463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (A073060 n).toNat

end

end A098350.P3678128976066527463

namespace A098350

/-- `A066560(A073060(n))` -/
def P3678128976066527463.Spec : Prop :=
  ∀ n, P3678128976066527463.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P484496825736442234

`A325351(A087112(n+1))`
-/

namespace A098350.P484496825736442234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A087112 (n + 1)).toNat

end

end A098350.P484496825736442234

namespace A098350

/-- `A325351(A087112(n+1))` -/
def P484496825736442234.Spec : Prop :=
  ∀ n, P484496825736442234.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P10367152959870246290

`A179312(4*A073060(n))`
-/

namespace A098350.P10367152959870246290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (4 * A073060 n).toNat

end

end A098350.P10367152959870246290

namespace A098350

/-- `A179312(4*A073060(n))` -/
def P10367152959870246290.Spec : Prop :=
  ∀ n, P10367152959870246290.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P15470637357845636692

`A179312(lcm(4, A073060(n)))`
-/

namespace A098350.P15470637357845636692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (Int.lcm 4 (A073060 n))

end

end A098350.P15470637357845636692

namespace A098350

/-- `A179312(lcm(4, A073060(n)))` -/
def P15470637357845636692.Spec : Prop :=
  ∀ n, P15470637357845636692.a n = A098350 (n + 1)

end A098350

/-! ## A098350.P14098347287077109423

`A382255(A043569(n+1))`
-/

namespace A098350.P14098347287077109423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382255 (A043569 (n + 1)).toNat

end

end A098350.P14098347287077109423

namespace A098350

/-- `A382255(A043569(n+1))` -/
def P14098347287077109423.Spec : Prop :=
  ∀ n, P14098347287077109423.a n = A098350 (n + 1)

end A098350

/-!
# A098351: Multiplication table of the composites read by antidiagonals.

The programs for A098351, the canonical program `A098351.P12169775651702740969` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098351 has offset 1).

The definition of A098351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098351.P12169775651702740969

`A002808(col(n)+1)*A002808(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A098351

/-- `A002808(col(n)+1)*A002808(row(n)-col(n)+1)` -/
def P12169775651702740969.Spec : Prop :=
  ∀ n, P12169775651702740969.a n = A098351 (n + 1)

theorem P12169775651702740969.correct : P12169775651702740969.Spec := by
  intro n
  simp only [A098351, Nat.add_sub_cancel]

end A098351

/-! ## A098351.P1437056384917666996

`A002808(A131818(n+1))*A002808(A193592(n))`
-/

namespace A098351.P1437056384917666996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A131818 (n + 1)).toNat * A002808 (A193592 n).toNat

end

end A098351.P1437056384917666996

namespace A098351

/-- `A002808(A131818(n+1))*A002808(A193592(n))` -/
def P1437056384917666996.Spec : Prop :=
  ∀ n, P1437056384917666996.a n = A098351 (n + 1)

end A098351

/-! ## A098351.P1135542775071149263

`A002808(A002260(n+1))*A002808(A004736(n+1))`
-/

namespace A098351.P1135542775071149263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002260 (n + 1)).toNat * A002808 (A004736 (n + 1)).toNat

end

end A098351.P1135542775071149263

namespace A098351

/-- `A002808(A002260(n+1))*A002808(A004736(n+1))` -/
def P1135542775071149263.Spec : Prop :=
  ∀ n, P1135542775071149263.a n = A098351 (n + 1)

end A098351

/-! ## A098351.P534689269924884953

`A002808(A003983(n+1))*A002808(A051125(n+1))`
-/

namespace A098351.P534689269924884953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A003983 (n + 1)).toNat * A002808 (A051125 (n + 1)).toNat

end

end A098351.P534689269924884953

namespace A098351

/-- `A002808(A003983(n+1))*A002808(A051125(n+1))` -/
def P534689269924884953.Spec : Prop :=
  ∀ n, P534689269924884953.a n = A098351 (n + 1)

end A098351

/-! ## A098351.P7185551740000731521

`A002808(A004736(n+1))*A026239(A037126(n+1))`
-/

namespace A098351.P7185551740000731521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A004736 (n + 1)).toNat * A026239 (A037126 (n + 1)).toNat

end

end A098351.P7185551740000731521

namespace A098351

/-- `A002808(A004736(n+1))*A026239(A037126(n+1))` -/
def P7185551740000731521.Spec : Prop :=
  ∀ n, P7185551740000731521.a n = A098351 (n + 1)

end A098351

/-! ## A098351.P17206793450672667175

`A002808(A002260(n+1))*A026239(A104887(n+1))`
-/

namespace A098351.P17206793450672667175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002260 (n + 1)).toNat * A026239 (A104887 (n + 1)).toNat

end

end A098351.P17206793450672667175

namespace A098351

/-- `A002808(A002260(n+1))*A026239(A104887(n+1))` -/
def P17206793450672667175.Spec : Prop :=
  ∀ n, P17206793450672667175.a n = A098351 (n + 1)

end A098351

/-! ## A098351.P5387165726493351566

`A026239(A037126(n+1))*A026239(A104887(n+1))`
-/

namespace A098351.P5387165726493351566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A037126 (n + 1)).toNat * A026239 (A104887 (n + 1)).toNat

end

end A098351.P5387165726493351566

namespace A098351

/-- `A026239(A037126(n+1))*A026239(A104887(n+1))` -/
def P5387165726493351566.Spec : Prop :=
  ∀ n, P5387165726493351566.a n = A098351 (n + 1)

end A098351

/-! ## A098351.P1938886201849759237

`A066260(A098350(n+1))`
-/

namespace A098351.P1938886201849759237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066260 (A098350 (n + 1)).toNat

end

end A098351.P1938886201849759237

namespace A098351

/-- `A066260(A098350(n+1))` -/
def P1938886201849759237.Spec : Prop :=
  ∀ n, P1938886201849759237.a n = A098351 (n + 1)

end A098351

/-! ## A098351.P10008378297527959470

`A066260(A037126(n+1)*A104887(n+1))`
-/

namespace A098351.P10008378297527959470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066260 (A037126 (n + 1) * A104887 (n + 1)).toNat

end

end A098351.P10008378297527959470

namespace A098351

/-- `A066260(A037126(n+1)*A104887(n+1))` -/
def P10008378297527959470.Spec : Prop :=
  ∀ n, P10008378297527959470.a n = A098351 (n + 1)

end A098351

/-!
# A098352: Multiplication table of the even numbers read by antidiagonals.

The programs for A098352, the canonical program `A098352.P3707437164941693741` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098352 has offset 1).

The definition of A098352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098352.P4494218858220886473

`4*(col(n)+1)*(row(n)+1-col(n))`
-/

namespace A098352.P4494218858220886473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (SequenceMachineLib.triCol n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A098352.P4494218858220886473

namespace A098352

/-- `4*(col(n)+1)*(row(n)+1-col(n))` -/
def P4494218858220886473.Spec : Prop :=
  ∀ n, P4494218858220886473.a n = A098352 (n + 1)

theorem P4494218858220886473.correct : P4494218858220886473.Spec := by
  intro n
  simp only [A098352, Nat.add_sub_cancel, A098352.P4494218858220886473.a, A098352.P3707437164941693741.a, A003991, A003991.P6365127437582401781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098352

/-! ## A098352.P3707437164941693741

`4*A003991(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098352

/-- `4*A003991(n+1)` -/
def P3707437164941693741.Spec : Prop :=
  ∀ n, P3707437164941693741.a n = A098352 (n + 1)

theorem P3707437164941693741.correct : P3707437164941693741.Spec := by
  intro n
  simp only [A098352, Nat.add_sub_cancel]

end A098352

/-! ## A098352.P7044649429135212979

`T(n-2,k-1)+∑[abs(T(n-1,k))]` with `a(0)=4`
-/

namespace A098352.P7044649429135212979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.triUp2Left a n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098352.P7044649429135212979

namespace A098352

/-- `T(n-2,k-1)+∑[abs(T(n-1,k))]` -/
def P7044649429135212979.Spec : Prop :=
  ∀ n, (P7044649429135212979.a n : ℤ) = A098352 (n + 1)

end A098352

/-! ## A098352.P16651505665569035836

`T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)+4` with `a(0)=4`
-/

namespace A098352.P16651505665569035836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n + 4

end

end A098352.P16651505665569035836

namespace A098352

/-- `T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)+4` -/
def P16651505665569035836.Spec : Prop :=
  ∀ n, P16651505665569035836.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P16632815256540985796

`T(n-1,k-1)+gcd(T(n-1,k), T(n-2,k-1))+4` with `a(0)=4`
-/

namespace A098352.P16632815256540985796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.triUpLeft a n + Nat.gcd (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUp2Left a n) + 4

end

end A098352.P16632815256540985796

namespace A098352

/-- `T(n-1,k-1)+gcd(T(n-1,k), T(n-2,k-1))+4` -/
def P16632815256540985796.Spec : Prop :=
  ∀ n, (P16632815256540985796.a n : ℤ) = A098352 (n + 1)

end A098352

/-! ## A098352.P4065123019186533448

`4*(col(n)+1)*(row(n)-col(n)+1)`
-/

namespace A098352.P4065123019186533448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1))

end

end A098352.P4065123019186533448

namespace A098352

/-- `4*(col(n)+1)*(row(n)-col(n)+1)` -/
def P4065123019186533448.Spec : Prop :=
  ∀ n, P4065123019186533448.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P9739230133236790757

`4*(A059036(n)+1)`
-/

namespace A098352.P9739230133236790757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A059036 n + 1)

end

end A098352.P9739230133236790757

namespace A098352

/-- `4*(A059036(n)+1)` -/
def P9739230133236790757.Spec : Prop :=
  ∀ n, P9739230133236790757.a n = A098352 (n + 1)

theorem P9739230133236790757.correct : P9739230133236790757.Spec := by
  intro n
  simp only [A098352, Nat.add_sub_cancel, A098352.P9739230133236790757.a, A098352.P3707437164941693741.a, A003991, A003991.P6365127437582401781.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098352

/-! ## A098352.P9255649107808830402

`4*sqrt(A098359(n+1))`
-/

namespace A098352.P9255649107808830402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A098359 (n + 1) : ℝ)

end

end A098352.P9255649107808830402

namespace A098352

/-- `4*sqrt(A098359(n+1))` -/
def P9255649107808830402.Spec : Prop :=
  ∀ n, P9255649107808830402.a n = (A098352 (n + 1) : ℝ)

end A098352

/-! ## A098352.P12634826035565747456

`4*(A004247(n)+∑[char[∑[n]]])`
-/

namespace A098352.P12634826035565747456
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A004247 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A098352.P12634826035565747456

namespace A098352

/-- `4*(A004247(n)+∑[char[∑[n]]])` -/
def P12634826035565747456.Spec : Prop :=
  ∀ n, P12634826035565747456.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P3742394622574052335

`A008574(A003991(n+1))`
-/

namespace A098352.P3742394622574052335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A003991 (n + 1)).toNat

end

end A098352.P3742394622574052335

namespace A098352

/-- `A008574(A003991(n+1))` -/
def P3742394622574052335.Spec : Prop :=
  ∀ n, P3742394622574052335.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P2308101938875245121

`A004767(A059036(n))+1`
-/

namespace A098352.P2308101938875245121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A059036 n).toNat + 1

end

end A098352.P2308101938875245121

namespace A098352

/-- `A004767(A059036(n))+1` -/
def P2308101938875245121.Spec : Prop :=
  ∀ n, P2308101938875245121.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P10650559175167566728

`A159919(n+1)+A141387(n)`
-/

namespace A098352.P10650559175167566728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159919 (n + 1) + A141387 n

end

end A098352.P10650559175167566728

namespace A098352

/-- `A159919(n+1)+A141387(n)` -/
def P10650559175167566728.Spec : Prop :=
  ∀ n, P10650559175167566728.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P6035339396079739079

`A205128(n+1)-A103217(n)`
-/

namespace A098352.P6035339396079739079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205128 (n + 1) - A103217 n

end

end A098352.P6035339396079739079

namespace A098352

/-- `A205128(n+1)-A103217(n)` -/
def P6035339396079739079.Spec : Prop :=
  ∀ n, P6035339396079739079.a n = A098352 (n + 1)

theorem P6035339396079739079.correct : P6035339396079739079.Spec := by
  intro n
  simp only [A098352, Nat.add_sub_cancel, A098352.P6035339396079739079.a, A098352.P3707437164941693741.a, A003991, A003991.P6365127437582401781.a, A103217, A103217.P11841766815847463643.a, A205128, A205128.P17383454080453045407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098352

/-! ## A098352.P17494405576412234345

`4*(A049627(n)+A049615(n))`
-/

namespace A098352.P17494405576412234345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A049627 n + A049615 n)

end

end A098352.P17494405576412234345

namespace A098352

/-- `4*(A049627(n)+A049615(n))` -/
def P17494405576412234345.Spec : Prop :=
  ∀ n, P17494405576412234345.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P1345158655231645959

`A056203(n+1)-A338432(n+1)`
-/

namespace A098352.P1345158655231645959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (n + 1) - A338432 (n + 1)

end

end A098352.P1345158655231645959

namespace A098352

/-- `A056203(n+1)-A338432(n+1)` -/
def P1345158655231645959.Spec : Prop :=
  ∀ n, P1345158655231645959.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P15894930293686435132

`2*(A101447(n)+A004736(n+1))`
-/

namespace A098352.P15894930293686435132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101447 n + A004736 (n + 1))

end

end A098352.P15894930293686435132

namespace A098352

/-- `2*(A101447(n)+A004736(n+1))` -/
def P15894930293686435132.Spec : Prop :=
  ∀ n, P15894930293686435132.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P1617838219922756976

`A057103(n+2)/A001283(n+2)`
-/

namespace A098352.P1617838219922756976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057103 (n + 2) : ℚ) / (A001283 (n + 2) : ℚ)

end

end A098352.P1617838219922756976

namespace A098352

/-- `A057103(n+2)/A001283(n+2)` -/
def P1617838219922756976.Spec : Prop :=
  ∀ n, P1617838219922756976.a n = (A098352 (n + 1) : ℚ)

end A098352

/-! ## A098352.P3122940289751778333

`A003057(n+2)²-A049581(n)²`
-/

namespace A098352.P3122940289751778333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) ^ 2 - A049581 n ^ 2

end

end A098352.P3122940289751778333

namespace A098352

/-- `A003057(n+2)²-A049581(n)²` -/
def P3122940289751778333.Spec : Prop :=
  ∀ n, P3122940289751778333.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P4523906920144226204

`2*(A056203(n+1)-A055096(n+2))`
-/

namespace A098352.P4523906920144226204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056203 (n + 1) - A055096 (n + 2))

end

end A098352.P4523906920144226204

namespace A098352

/-- `2*(A056203(n+1)-A055096(n+2))` -/
def P4523906920144226204.Spec : Prop :=
  ∀ n, P4523906920144226204.a n = A098352 (n + 1)

end A098352

/-! ## A098352.P10963301544620619894

`4*A002260(n+1)*A004736(n+1)`
-/

namespace A098352.P10963301544620619894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A002260 (n + 1) * A004736 (n + 1))

end

end A098352.P10963301544620619894

namespace A098352

/-- `4*A002260(n+1)*A004736(n+1)` -/
def P10963301544620619894.Spec : Prop :=
  ∀ n, P10963301544620619894.a n = A098352 (n + 1)

end A098352

/-!
# A098353: Multiplication table of the odd numbers read by antidiagonals.

The programs for A098353, the canonical program `A098353.P9158864954245503816` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098353 has offset 1).

The definition of A098353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098353.P13187994966699626741

`(row(n)+1)²-(row(n)-2*col(n))²`
-/

namespace A098353.P13187994966699626741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) ^ 2 : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)) ^ 2

end

end A098353.P13187994966699626741

namespace A098353

/-- `(row(n)+1)²-(row(n)-2*col(n))²` -/
def P13187994966699626741.Spec : Prop :=
  ∀ n, P13187994966699626741.a n = A098353 (n + 1)

theorem P13187994966699626741.correct : P13187994966699626741.Spec := by
  intro n
  simp only [A098353, Nat.add_sub_cancel, A098353.P13187994966699626741.a, A098353.P9158864954245503816.a, A003991, A003991.P6365127437582401781.a, A083381, A083381.P10137055261221379271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098353

/-! ## A098353.P104941789872123973

`(2*col(n)+1)*(2*(row(n)-col(n))+1)`
-/

namespace A098353.P104941789872123973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.triCol n + 1 : ℤ) * (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1)

end

end A098353.P104941789872123973

namespace A098353

/-- `(2*col(n)+1)*(2*(row(n)-col(n))+1)` -/
def P104941789872123973.Spec : Prop :=
  ∀ n, P104941789872123973.a n = A098353 (n + 1)

theorem P104941789872123973.correct : P104941789872123973.Spec := by
  intro n
  simp only [A098353, Nat.add_sub_cancel, A098353.P104941789872123973.a, A098353.P9158864954245503816.a, A003991, A003991.P6365127437582401781.a, A083381, A083381.P10137055261221379271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098353

/-! ## A098353.P2892644174239370420

`1+2*A141387(n)`
-/

namespace A098353.P2892644174239370420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A141387 n

end

end A098353.P2892644174239370420

namespace A098353

/-- `1+2*A141387(n)` -/
def P2892644174239370420.Spec : Prop :=
  ∀ n, P2892644174239370420.a n = A098353 (n + 1)

theorem P2892644174239370420.correct : P2892644174239370420.Spec := by
  intro n
  simp only [A098353, Nat.add_sub_cancel, A098353.P2892644174239370420.a, A098353.P9158864954245503816.a, A003991, A003991.P6365127437582401781.a, A083381, A083381.P10137055261221379271.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098353

/-! ## A098353.P12045177463326791950

`2*A129312(n+1)-1`
-/

namespace A098353.P12045177463326791950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129312 (n + 1) - 1

end

end A098353.P12045177463326791950

namespace A098353

/-- `2*A129312(n+1)-1` -/
def P12045177463326791950.Spec : Prop :=
  ∀ n, P12045177463326791950.a n = A098353 (n + 1)

theorem P12045177463326791950.correct : P12045177463326791950.Spec := by
  intro n
  simp only [A098353, Nat.add_sub_cancel, A098353.P12045177463326791950.a, A098353.P9158864954245503816.a, A003991, A003991.P6365127437582401781.a, A083381, A083381.P10137055261221379271.a, A129312, A129312.P198002191961826283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098353

/-! ## A098353.P11516696818887846287

`(2*(C(comp[∑[n]]-n, 2)-n)-1)*A158405(n+1)`
-/

namespace A098353.P11516696818887846287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1) * A158405 (n + 1)

end

end A098353.P11516696818887846287

namespace A098353

/-- `(2*(C(comp[∑[n]]-n, 2)-n)-1)*A158405(n+1)` -/
def P11516696818887846287.Spec : Prop :=
  ∀ n, P11516696818887846287.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P6143130120214336574

`A004273(A129312(n+1))`
-/

namespace A098353.P6143130120214336574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A129312 (n + 1)).toNat

end

end A098353.P6143130120214336574

namespace A098353

/-- `A004273(A129312(n+1))` -/
def P6143130120214336574.Spec : Prop :=
  ∀ n, P6143130120214336574.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P6973540739618423419

`A005843(A141387(n))+1`
-/

namespace A098353.P6973540739618423419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A141387 n).toNat + 1

end

end A098353.P6973540739618423419

namespace A098353

/-- `A005843(A141387(n))+1` -/
def P6973540739618423419.Spec : Prop :=
  ∀ n, P6973540739618423419.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P9158864954245503816

`A083381(n)+A003991(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098353

/-- `A083381(n)+A003991(n+1)` -/
def P9158864954245503816.Spec : Prop :=
  ∀ n, P9158864954245503816.a n = A098353 (n + 1)

theorem P9158864954245503816.correct : P9158864954245503816.Spec := by
  intro n
  simp only [A098353, Nat.add_sub_cancel]

end A098353

/-! ## A098353.P565521042625817882

`A141387(n)+A129312(n+1)`
-/

namespace A098353.P565521042625817882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + A129312 (n + 1)

end

end A098353.P565521042625817882

namespace A098353

/-- `A141387(n)+A129312(n+1)` -/
def P565521042625817882.Spec : Prop :=
  ∀ n, P565521042625817882.a n = A098353 (n + 1)

theorem P565521042625817882.correct : P565521042625817882.Spec := by
  intro n
  simp only [A098353, Nat.add_sub_cancel, A098353.P565521042625817882.a, A098353.P9158864954245503816.a, A003991, A003991.P6365127437582401781.a, A083381, A083381.P10137055261221379271.a, A129312, A129312.P198002191961826283.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098353

/-! ## A098353.P5942570965708057157

`A099375(n)*A158405(n+1)`
-/

namespace A098353.P5942570965708057157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A158405 (n + 1)

end

end A098353.P5942570965708057157

namespace A098353

/-- `A099375(n)*A158405(n+1)` -/
def P5942570965708057157.Spec : Prop :=
  ∀ n, P5942570965708057157.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P15168976683163505915

`A093995(n+1)-A114327(n)²`
-/

namespace A098353.P15168976683163505915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A114327 n ^ 2

end

end A098353.P15168976683163505915

namespace A098353

/-- `A093995(n+1)-A114327(n)²` -/
def P15168976683163505915.Spec : Prop :=
  ∀ n, P15168976683163505915.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P9945953350308251033

`A204250(n+1)+A296180(n)-1`
-/

namespace A098353.P9945953350308251033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + (A296180 n - 1)

end

end A098353.P9945953350308251033

namespace A098353

/-- `A204250(n+1)+A296180(n)-1` -/
def P9945953350308251033.Spec : Prop :=
  ∀ n, P9945953350308251033.a n = A098353 (n + 1)

theorem P9945953350308251033.correct : P9945953350308251033.Spec := by
  intro n
  simp only [A098353, Nat.add_sub_cancel, A098353.P9945953350308251033.a, A098353.P9158864954245503816.a, A003991, A003991.P6365127437582401781.a, A083381, A083381.P10137055261221379271.a, A204250, A204250.P2607520245277091701.a, A296180, A296180.P14152267377895258393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098353

/-! ## A098353.P12872939965986026666

`A098352(n+1)-(A131507(n)+2)`
-/

namespace A098353.P12872939965986026666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (n + 1) - (A131507 n + 2)

end

end A098353.P12872939965986026666

namespace A098353

/-- `A098352(n+1)-(A131507(n)+2)` -/
def P12872939965986026666.Spec : Prop :=
  ∀ n, P12872939965986026666.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P5388357701148975825

`A157454(n+1)*A204022(n+1)`
-/

namespace A098353.P5388357701148975825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) * A204022 (n + 1)

end

end A098353.P5388357701148975825

namespace A098353

/-- `A157454(n+1)*A204022(n+1)` -/
def P5388357701148975825.Spec : Prop :=
  ∀ n, P5388357701148975825.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P2992720210870045844

`A002024(n+1)²-A049581(n)²`
-/

namespace A098353.P2992720210870045844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - A049581 n ^ 2

end

end A098353.P2992720210870045844

namespace A098353

/-- `A002024(n+1)²-A049581(n)²` -/
def P2992720210870045844.Spec : Prop :=
  ∀ n, P2992720210870045844.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P10952552003426628475

`A002024(n+1)²-A114327(n)²`
-/

namespace A098353.P10952552003426628475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - A114327 n ^ 2

end

end A098353.P10952552003426628475

namespace A098353

/-- `A002024(n+1)²-A114327(n)²` -/
def P10952552003426628475.Spec : Prop :=
  ∀ n, P10952552003426628475.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P16513065610162064481

`A265129(n+1)-(A049581(n)²+1)`
-/

namespace A098353.P16513065610162064481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - (A049581 n ^ 2 + 1)

end

end A098353.P16513065610162064481

namespace A098353

/-- `A265129(n+1)-(A049581(n)²+1)` -/
def P16513065610162064481.Spec : Prop :=
  ∀ n, P16513065610162064481.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P11808785523772511829

`A038722(n+1)+n-A114327(n)²`
-/

namespace A098353.P11808785523772511829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + ((n : ℤ) - A114327 n ^ 2)

end

end A098353.P11808785523772511829

namespace A098353

/-- `A038722(n+1)+n-A114327(n)²` -/
def P11808785523772511829.Spec : Prop :=
  ∀ n, P11808785523772511829.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P16178848800330813501

`A093995(n+1)-(n-A061579(n))²`
-/

namespace A098353.P16178848800330813501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - ((n : ℤ) - A061579 n) ^ 2

end

end A098353.P16178848800330813501

namespace A098353

/-- `A093995(n+1)-(n-A061579(n))²` -/
def P16178848800330813501.Spec : Prop :=
  ∀ n, P16178848800330813501.a n = A098353 (n + 1)

end A098353

/-! ## A098353.P8831510195912623733

`A005408(col(n))*A005408(row(n)-col(n))`
-/

namespace A098353.P8831510195912623733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.triCol n) * A005408 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A098353.P8831510195912623733

namespace A098353

/-- `A005408(col(n))*A005408(row(n)-col(n))` -/
def P8831510195912623733.Spec : Prop :=
  ∀ n, P8831510195912623733.a n = A098353 (n + 1)

end A098353

/-!
# A098354: Multiplication table of the powers of 2 read by antidiagonals.

The programs for A098354, the canonical program `A098354.P12141781683194391342` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098354 has offset 1).

The definition of A098354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098354.P16595530567981279772

`∑[2*T(n-1,k)]` with `a(0)=4, a(1)=4`
-/

namespace A098354.P16595530567981279772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  2 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098354.P16595530567981279772

namespace A098354

/-- `∑[2*T(n-1,k)]` -/
def P16595530567981279772.Spec : Prop :=
  ∀ n, (P16595530567981279772.a n : ℤ) = A098354 (n + 1)

end A098354

/-! ## A098354.P16475513329733482819

`2^(2+row(n))`
-/

namespace A098354.P16475513329733482819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 + SequenceMachineLib.triRow n)

end

end A098354.P16475513329733482819

namespace A098354

/-- `2^(2+row(n))` -/
def P16475513329733482819.Spec : Prop :=
  ∀ n, (P16475513329733482819.a n : ℤ) = A098354 (n + 1)

end A098354

/-! ## A098354.P12320104603507034850

`2^row(n)*4`
-/

namespace A098354.P12320104603507034850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triRow n * 4

end

end A098354.P12320104603507034850

namespace A098354

/-- `2^row(n)*4` -/
def P12320104603507034850.Spec : Prop :=
  ∀ n, (P12320104603507034850.a n : ℤ) = A098354 (n + 1)

end A098354

/-! ## A098354.P1301306071480412904

`2*gcd(T(n-1,k), T(n-1,k-1))` with `a(0)=4`
-/

namespace A098354.P1301306071480412904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 * Nat.gcd (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n)

end

end A098354.P1301306071480412904

namespace A098354

/-- `2*gcd(T(n-1,k), T(n-1,k-1))` -/
def P1301306071480412904.Spec : Prop :=
  ∀ n, (P1301306071480412904.a n : ℤ) = A098354 (n + 1)

end A098354

/-! ## A098354.P4813227313551383078

`2^∑[row(T(n-1,k))]` with `a(0)=2`
-/

namespace A098354.P4813227313551383078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.triRow (SequenceMachineLib.triUp f1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098354.P4813227313551383078

namespace A098354

/-- `2^∑[row(T(n-1,k))]` -/
def P4813227313551383078.Spec : Prop :=
  ∀ n, (P4813227313551383078.a n : ℤ) = A098354 (n + 1)

end A098354

/-! ## A098354.P5455993222691610188

`2^(comp[∑[n]]-n)`
-/

namespace A098354.P5455993222691610188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

end

end A098354.P5455993222691610188

namespace A098354

/-- `2^(comp[∑[n]]-n)` -/
def P5455993222691610188.Spec : Prop :=
  ∀ n, P5455993222691610188.a n = (A098354 (n + 1) : ℚ)

end A098354

/-! ## A098354.P9009180700038599548

`root(2, 1/(row(n)+2))`
-/

namespace A098354.P9009180700038599548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (1 / (SequenceMachineLib.triRow n + 2 : ℚ) : ℝ))

end

end A098354.P9009180700038599548

namespace A098354

/-- `root(2, 1/(row(n)+2))` -/
def P9009180700038599548.Spec : Prop :=
  ∀ n, P9009180700038599548.a n = (A098354 (n + 1) : ℝ)

end A098354

/-! ## A098354.P2602007234986975706

`4/(1/2)^row(n)`
-/

namespace A098354.P2602007234986975706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / ((1 : ℚ) / 2) ^ SequenceMachineLib.triRow n

end

end A098354.P2602007234986975706

namespace A098354

/-- `4/(1/2)^row(n)` -/
def P2602007234986975706.Spec : Prop :=
  ∀ n, P2602007234986975706.a n = (A098354 (n + 1) : ℚ)

end A098354

/-! ## A098354.P17454410476484817837

`2*∏[char[C(n, 2)]+1]`
-/

namespace A098354.P17454410476484817837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A098354.P17454410476484817837

namespace A098354

/-- `2*∏[char[C(n, 2)]+1]` -/
def P17454410476484817837.Spec : Prop :=
  ∀ n, (P17454410476484817837.a n : ℤ) = A098354 (n + 1)

end A098354

/-! ## A098354.P7570372801794362659

`2*2^∑[char[C(n, 2)]]`
-/

namespace A098354.P7570372801794362659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098354.P7570372801794362659

namespace A098354

/-- `2*2^∑[char[C(n, 2)]]` -/
def P7570372801794362659.Spec : Prop :=
  ∀ n, (P7570372801794362659.a n : ℤ) = A098354 (n + 1)

end A098354

/-! ## A098354.P12141781683194391342

`2*A140513(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098354

/-- `2*A140513(n)` -/
def P12141781683194391342.Spec : Prop :=
  ∀ n, P12141781683194391342.a n = A098354 (n + 1)

theorem P12141781683194391342.correct : P12141781683194391342.Spec := by
  intro n
  simp only [A098354, Nat.add_sub_cancel]

end A098354

/-! ## A098354.P5842547129334558501

`4*A137688(n)`
-/

namespace A098354.P5842547129334558501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A137688 n

end

end A098354.P5842547129334558501

namespace A098354

/-- `4*A137688(n)` -/
def P5842547129334558501.Spec : Prop :=
  ∀ n, P5842547129334558501.a n = A098354 (n + 1)

theorem P5842547129334558501.correct : P5842547129334558501.Spec := by
  intro n
  simp only [A098354, Nat.add_sub_cancel, A098354.P5842547129334558501.a, A098354.P12141781683194391342.a, A137688, A137688.P9746695207037186753.a, A140513, A140513.P13579608035938851890.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A098354

/-! ## A098354.P36629867268121899

`2*∏[A035214(n)]`
-/

namespace A098354.P36629867268121899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A098354.P36629867268121899

namespace A098354

/-- `2*∏[A035214(n)]` -/
def P36629867268121899.Spec : Prop :=
  ∀ n, P36629867268121899.a n = A098354 (n + 1)

end A098354

/-! ## A098354.P16621999847534619890

`Δ[4*A007664(n)]`
-/

namespace A098354.P16621999847534619890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098354.P16621999847534619890

namespace A098354

/-- `Δ[4*A007664(n)]` -/
def P16621999847534619890.Spec : Prop :=
  ∀ n, P16621999847534619890.a n = A098354 (n + 1)

end A098354

/-! ## A098354.P2381951492242024826

`∏[2^A073423(n)]`
-/

namespace A098354.P2381951492242024826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A073423 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098354.P2381951492242024826

namespace A098354

/-- `∏[2^A073423(n)]` -/
def P2381951492242024826.Spec : Prop :=
  ∀ n, P2381951492242024826.a n = (A098354 (n + 1) : ℚ)

end A098354

/-! ## A098354.P12486596899254939675

`A151821(row(n)+2)`
-/

namespace A098354.P12486596899254939675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (SequenceMachineLib.triRow n + 2)

end

end A098354.P12486596899254939675

namespace A098354

/-- `A151821(row(n)+2)` -/
def P12486596899254939675.Spec : Prop :=
  ∀ n, P12486596899254939675.a n = A098354 (n + 1)

end A098354

/-! ## A098354.P17205659574887860354

`A000079(comp[∑[n]]-n)`
-/

namespace A098354.P17205659574887860354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A098354.P17205659574887860354

namespace A098354

/-- `A000079(comp[∑[n]]-n)` -/
def P17205659574887860354.Spec : Prop :=
  ∀ n, P17205659574887860354.a n = A098354 (n + 1)

end A098354

/-! ## A098354.P5185126010795007346

`A155559(comp[∑[n]]-n)`
-/

namespace A098354.P5185126010795007346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A098354.P5185126010795007346

namespace A098354

/-- `A155559(comp[∑[n]]-n)` -/
def P5185126010795007346.Spec : Prop :=
  ∀ n, P5185126010795007346.a n = A098354 (n + 1)

end A098354

/-! ## A098354.P11088639929387803747

`2*∏[A010054(n)+1]`
-/

namespace A098354.P11088639929387803747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A098354.P11088639929387803747

namespace A098354

/-- `2*∏[A010054(n)+1]` -/
def P11088639929387803747.Spec : Prop :=
  ∀ n, P11088639929387803747.a n = A098354 (n + 1)

end A098354

/-! ## A098354.P12914425247774609335

`A131577(∑[char[∑[n]]]+2)`
-/

namespace A098354.P12914425247774609335
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A098354.P12914425247774609335

namespace A098354

/-- `A131577(∑[char[∑[n]]]+2)` -/
def P12914425247774609335.Spec : Prop :=
  ∀ n, P12914425247774609335.a n = A098354 (n + 1)

end A098354

/-!
# A098355: Multiplication table of the powers of three read by antidiagonals.

The programs for A098355, the canonical program `A098355.P3959088483127255059` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098355 has offset 0).

The definition of A098355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098355.P6644553168471196024

`3^row(n)`
-/

namespace A098355.P6644553168471196024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.triRow n

end

end A098355.P6644553168471196024

namespace A098355

/-- `3^row(n)` -/
def P6644553168471196024.Spec : Prop :=
  ∀ n, (P6644553168471196024.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P9069950667157713007

`∑[3*T(n-1,k)]` with `a(0)=1, a(1)=2`
-/

namespace A098355.P9069950667157713007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098355.P9069950667157713007

namespace A098355

/-- `∑[3*T(n-1,k)]` -/
def P9069950667157713007.Spec : Prop :=
  ∀ n, (P9069950667157713007.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P14146507076789665451

`3*gcd(T(n-1,k), T(n-1,k-1))` with `a(0)=1`
-/

namespace A098355.P14146507076789665451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * Nat.gcd (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n)

end

end A098355.P14146507076789665451

namespace A098355

/-- `3*gcd(T(n-1,k), T(n-1,k-1))` -/
def P14146507076789665451.Spec : Prop :=
  ∀ n, (P14146507076789665451.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P11937072430898532417

`3^∑[char[∑[n+1]]]`
-/

namespace A098355.P11937072430898532417
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098355.P11937072430898532417

namespace A098355

/-- `3^∑[char[∑[n+1]]]` -/
def P11937072430898532417.Spec : Prop :=
  ∀ n, (P11937072430898532417.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P16922349363305045260

`3*a(C(row(n), 2))` with `a(0)=1`
-/

namespace A098355.P16922349363305045260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (Nat.choose (SequenceMachineLib.triRow n) 2)

end

end A098355.P16922349363305045260

namespace A098355

/-- `3*a(C(row(n), 2))` -/
def P16922349363305045260.Spec : Prop :=
  ∀ n, (P16922349363305045260.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P5806899748927414703

`floor(3^(∑[char[C(n, 2)]]-1))`
-/

namespace A098355.P5806899748927414703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ)⌋

end

end A098355.P5806899748927414703

namespace A098355

/-- `floor(3^(∑[char[C(n, 2)]]-1))` -/
def P5806899748927414703.Spec : Prop :=
  ∀ n, P5806899748927414703.a n = A098355 n

end A098355

/-! ## A098355.P15081980067037143161

`3*a(n-(col(n)+1))` with `a(0)=1`
-/

namespace A098355.P15081980067037143161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - (SequenceMachineLib.triCol n + 1))

end

end A098355.P15081980067037143161

namespace A098355

/-- `3*a(n-(col(n)+1))` -/
def P15081980067037143161.Spec : Prop :=
  ∀ n, (P15081980067037143161.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P13596145555561013662

`3*a(n-1-col(n))` with `a(0)=1`
-/

namespace A098355.P13596145555561013662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a ((n : ℤ) - 1 - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A098355.P13596145555561013662

namespace A098355

/-- `3*a(n-1-col(n))` -/
def P13596145555561013662.Spec : Prop :=
  ∀ n, (P13596145555561013662.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P3959088483127255059

`3*a(n-floor(sqrt(2*n)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098355

/-- `3*a(n-floor(sqrt(2*n)))` -/
def P3959088483127255059.Spec : Prop :=
  ∀ n, (P3959088483127255059.a n : ℤ) = A098355 n

theorem P3959088483127255059.correct : P3959088483127255059.Spec := by
  intro n
  simp only [A098355]

end A098355

/-! ## A098355.P13507811614894781634

`T(col(n), T(n-1,k+1))+T(n-1,k+1)+2*T(n-1,k)` with `a(0)=1`
-/

namespace A098355.P13507811614894781634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) + SequenceMachineLib.triUpRight a n + 2 * SequenceMachineLib.triUp a n

end

end A098355.P13507811614894781634

namespace A098355

/-- `T(col(n), T(n-1,k+1))+T(n-1,k+1)+2*T(n-1,k)` -/
def P13507811614894781634.Spec : Prop :=
  ∀ n, (P13507811614894781634.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P13260394281457695843

`T(col(n), T(n-1,k))+T(n-1,k)+2*T(n-1,k)` with `a(0)=1`
-/

namespace A098355.P13260394281457695843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) + SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUp a n

end

end A098355.P13260394281457695843

namespace A098355

/-- `T(col(n), T(n-1,k))+T(n-1,k)+2*T(n-1,k)` -/
def P13260394281457695843.Spec : Prop :=
  ∀ n, (P13260394281457695843.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P15407081619847299915

`T(row(n), 2*T(n-1,k))+T(n-1,k)+2*T(n-1,k)` with `a(0)=1`
-/

namespace A098355.P15407081619847299915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triRow n : ℤ) (2 * SequenceMachineLib.triUp a n : ℤ) + SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUp a n

end

end A098355.P15407081619847299915

namespace A098355

/-- `T(row(n), 2*T(n-1,k))+T(n-1,k)+2*T(n-1,k)` -/
def P15407081619847299915.Spec : Prop :=
  ∀ n, (P15407081619847299915.a n : ℤ) = A098355 n

end A098355

/-! ## A098355.P373342055914623708

`A000244(row(n))`
-/

namespace A098355.P373342055914623708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.triRow n)

end

end A098355.P373342055914623708

namespace A098355

/-- `A000244(row(n))` -/
def P373342055914623708.Spec : Prop :=
  ∀ n, P373342055914623708.a n = A098355 n

end A098355

/-! ## A098355.P11330982111663536081

`A133494(row(n)+1)`
-/

namespace A098355.P11330982111663536081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (SequenceMachineLib.triRow n + 1)

end

end A098355.P11330982111663536081

namespace A098355

/-- `A133494(row(n)+1)` -/
def P11330982111663536081.Spec : Prop :=
  ∀ n, P11330982111663536081.a n = A098355 n

end A098355

/-! ## A098355.P3318675535143916625

`∏[2*A073424(n)+1]`
-/

namespace A098355.P3318675535143916625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073424 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098355.P3318675535143916625

namespace A098355

/-- `∏[2*A073424(n)+1]` -/
def P3318675535143916625.Spec : Prop :=
  ∀ n, P3318675535143916625.a n = A098355 n

end A098355

/-! ## A098355.P14185450507962358229

`3^∑[A010054(n)]/3`
-/

namespace A098355.P14185450507962358229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) / 3

end

end A098355.P14185450507962358229

namespace A098355

/-- `3^∑[A010054(n)]/3` -/
def P14185450507962358229.Spec : Prop :=
  ∀ n, P14185450507962358229.a n = (A098355 n : ℚ)

end A098355

/-! ## A098355.P15778386998916532513

`A133494(round(sqrt(2*n+1)))`
-/

namespace A098355.P15778386998916532513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A098355.P15778386998916532513

namespace A098355

/-- `A133494(round(sqrt(2*n+1)))` -/
def P15778386998916532513.Spec : Prop :=
  ∀ n, P15778386998916532513.a n = A098355 n

end A098355

/-! ## A098355.P12811988280092572471

`A140429(round(sqrt(2*n+1)))`
-/

namespace A098355.P12811988280092572471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A098355.P12811988280092572471

namespace A098355

/-- `A140429(round(sqrt(2*n+1)))` -/
def P12811988280092572471.Spec : Prop :=
  ∀ n, P12811988280092572471.a n = A098355 n

end A098355

/-! ## A098355.P15752280813546438732

`A155734(round(sqrt(2*n+1)))`
-/

namespace A098355.P15752280813546438732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A098355.P15752280813546438732

namespace A098355

/-- `A155734(round(sqrt(2*n+1)))` -/
def P15752280813546438732.Spec : Prop :=
  ∀ n, P15752280813546438732.a n = A098355 n

end A098355

/-! ## A098355.P13243505777118813648

`∏[char[∑[n+1]]*A049627(n)+1]`
-/

namespace A098355.P13243505777118813648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A049627 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098355.P13243505777118813648

namespace A098355

/-- `∏[char[∑[n+1]]*A049627(n)+1]` -/
def P13243505777118813648.Spec : Prop :=
  ∀ n, P13243505777118813648.a n = A098355 n

end A098355

/-!
# A098356: Multiplication table of the Fibonacci numbers read by antidiagonals.

The programs for A098356, the canonical program `A098356.P9777268572316018789` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098356 has offset 0).

The definition of A098356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098356.P9777268572316018789

`A000045(col(n))*A000045(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098356

/-- `A000045(col(n))*A000045(row(n)-col(n))` -/
def P9777268572316018789.Spec : Prop :=
  ∀ n, P9777268572316018789.a n = A098356 n

theorem P9777268572316018789.correct : P9777268572316018789.Spec := by
  intro n
  simp only [A098356]

end A098356

/-! ## A098356.P2043854506538489471

`A039913(n)-A108037(n)`
-/

namespace A098356.P2043854506538489471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 n - A108037 n

end

end A098356.P2043854506538489471

namespace A098356

/-- `A039913(n)-A108037(n)` -/
def P2043854506538489471.Spec : Prop :=
  ∀ n, P2043854506538489471.a n = A098356 n

theorem P2043854506538489471.correct : P2043854506538489471.Spec := by
  intro n
  simp only [A098356, Nat.add_sub_cancel, A098356.P2043854506538489471.a, A098356.P9777268572316018789.a, A000045, A000045.P11838749114346432762.a, A039913, A039913.P15406212472898835494.a, A108037, A108037.P17027528278419021511.a, A053602, A053602.P1781669924282634466.a, A279891, A279891.P11915647867805557395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098356

/-! ## A098356.P17338091996761727280

`A108038(n)-A039913(n)`
-/

namespace A098356.P17338091996761727280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108038 n - A039913 n

end

end A098356.P17338091996761727280

namespace A098356

/-- `A108038(n)-A039913(n)` -/
def P17338091996761727280.Spec : Prop :=
  ∀ n, P17338091996761727280.a n = A098356 n

end A098356

/-! ## A098356.P840603889988222977

`A131410(n+1)-A058071(n)`
-/

namespace A098356.P840603889988222977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) - A058071 n

end

end A098356.P840603889988222977

namespace A098356

/-- `A131410(n+1)-A058071(n)` -/
def P840603889988222977.Spec : Prop :=
  ∀ n, P840603889988222977.a n = A098356 n

end A098356

/-! ## A098356.P8154032498372952529

`A039913(n)-A039913(A057944(n))`
-/

namespace A098356.P8154032498372952529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 n - A039913 (A057944 n).toNat

end

end A098356.P8154032498372952529

namespace A098356

/-- `A039913(n)-A039913(A057944(n))` -/
def P8154032498372952529.Spec : Prop :=
  ∀ n, P8154032498372952529.a n = A098356 n

end A098356

/-! ## A098356.P7274516251563333103

`A058071(A057944(n))-A058071(n)`
-/

namespace A098356.P7274516251563333103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A057944 n).toNat - A058071 n

end

end A098356.P7274516251563333103

namespace A098356

/-- `A058071(A057944(n))-A058071(n)` -/
def P7274516251563333103.Spec : Prop :=
  ∀ n, P7274516251563333103.a n = A098356 n

end A098356

/-! ## A098356.P3633101529198941526

`A000045(A025581(n))*A141169(n)`
-/

namespace A098356.P3633101529198941526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n).toNat * A141169 n

end

end A098356.P3633101529198941526

namespace A098356

/-- `A000045(A025581(n))*A141169(n)` -/
def P3633101529198941526.Spec : Prop :=
  ∀ n, P3633101529198941526.a n = A098356 n

end A098356

/-! ## A098356.P3160030851408309525

`A212804(A003056(n)+2)-A058071(n)`
-/

namespace A098356.P3160030851408309525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A003056 n + 2).toNat - A058071 n

end

end A098356.P3160030851408309525

namespace A098356

/-- `A212804(A003056(n)+2)-A058071(n)` -/
def P3160030851408309525.Spec : Prop :=
  ∀ n, P3160030851408309525.a n = A098356 n

end A098356

/-! ## A098356.P2502090334952028038

`A058071(n-A002262(n))-A058071(n)`
-/

namespace A098356.P2502090334952028038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 ((n : ℤ) - A002262 n).toNat - A058071 n

end

end A098356.P2502090334952028038

namespace A098356

/-- `A058071(n-A002262(n))-A058071(n)` -/
def P2502090334952028038.Spec : Prop :=
  ∀ n, P2502090334952028038.a n = A098356 n

end A098356

/-! ## A098356.P10996893426916350879

`(A094570(n)-A141169(n))*A141169(n)`
-/

namespace A098356.P10996893426916350879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094570 n - A141169 n) * A141169 n

end

end A098356.P10996893426916350879

namespace A098356

/-- `(A094570(n)-A141169(n))*A141169(n)` -/
def P10996893426916350879.Spec : Prop :=
  ∀ n, P10996893426916350879.a n = A098356 n

theorem P10996893426916350879.correct : P10996893426916350879.Spec := by
  intro n
  simp only [A098356, Nat.add_sub_cancel, A098356.P10996893426916350879.a, A098356.P9777268572316018789.a, A000045, A000045.P11838749114346432762.a, A094570, A094570.P3986118265143710458.a, A141169, A141169.P5864777374650614929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098356

/-! ## A098356.P9485903804704515228

`A000045(A003057(n+2)-1)-A058071(n)`
-/

namespace A098356.P9485903804704515228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003057 (n + 2) - 1).toNat - A058071 n

end

end A098356.P9485903804704515228

namespace A098356

/-- `A000045(A003057(n+2)-1)-A058071(n)` -/
def P9485903804704515228.Spec : Prop :=
  ∀ n, P9485903804704515228.a n = A098356 n

end A098356

/-! ## A098356.P593910969904812655

`A108035(n+1)-(A108037(n)+A058071(n))`
-/

namespace A098356.P593910969904812655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - (A108037 n + A058071 n)

end

end A098356.P593910969904812655

namespace A098356

/-- `A108035(n+1)-(A108037(n)+A058071(n))` -/
def P593910969904812655.Spec : Prop :=
  ∀ n, P593910969904812655.a n = A098356 n

end A098356

/-! ## A098356.P7240775271385088333

`A131410(n+1)-A104762(n+1)*A104763(n+1)`
-/

namespace A098356.P7240775271385088333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) - A104762 (n + 1) * A104763 (n + 1)

end

end A098356.P7240775271385088333

namespace A098356

/-- `A131410(n+1)-A104762(n+1)*A104763(n+1)` -/
def P7240775271385088333.Spec : Prop :=
  ∀ n, P7240775271385088333.a n = A098356 n

end A098356

/-! ## A098356.P5372816024796443535

`A000045(A003984(n))*A000045(A004197(n))`
-/

namespace A098356.P5372816024796443535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003984 n).toNat * A000045 (A004197 n).toNat

end

end A098356.P5372816024796443535

namespace A098356

/-- `A000045(A003984(n))*A000045(A004197(n))` -/
def P5372816024796443535.Spec : Prop :=
  ∀ n, P5372816024796443535.a n = A098356 n

end A098356

/-! ## A098356.P333622922403175030

`A000045(A002262(n))*A000045(A025581(n))`
-/

namespace A098356.P333622922403175030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n).toNat * A000045 (A025581 n).toNat

end

end A098356.P333622922403175030

namespace A098356

/-- `A000045(A002262(n))*A000045(A025581(n))` -/
def P333622922403175030.Spec : Prop :=
  ∀ n, P333622922403175030.a n = A098356 n

end A098356

/-! ## A098356.P13722820514324479377

`A212804(A002260(n+1))*A212804(A004736(n+1))`
-/

namespace A098356.P13722820514324479377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002260 (n + 1)).toNat * A212804 (A004736 (n + 1)).toNat

end

end A098356.P13722820514324479377

namespace A098356

/-- `A212804(A002260(n+1))*A212804(A004736(n+1))` -/
def P13722820514324479377.Spec : Prop :=
  ∀ n, P13722820514324479377.a n = A098356 n

end A098356

/-! ## A098356.P2010720505206140610

`A000045(A057554(2*n+1))*A000045(A057554(2*(n+1)))`
-/

namespace A098356.P2010720505206140610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A057554 (2 * n + 1)).toNat * A000045 (A057554 (2 * (n + 1))).toNat

end

end A098356.P2010720505206140610

namespace A098356

/-- `A000045(A057554(2*n+1))*A000045(A057554(2*(n+1)))` -/
def P2010720505206140610.Spec : Prop :=
  ∀ n, P2010720505206140610.a n = A098356 n

end A098356

/-! ## A098356.P7872027992687948720

`A141169(A061579(n))*A141169(n)`
-/

namespace A098356.P7872027992687948720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A061579 n).toNat * A141169 n

end

end A098356.P7872027992687948720

namespace A098356

/-- `A141169(A061579(n))*A141169(n)` -/
def P7872027992687948720.Spec : Prop :=
  ∀ n, P7872027992687948720.a n = A098356 n

end A098356

/-! ## A098356.P3560960868514898573

`A141169(A038722(n+2))*A141169(n)`
-/

namespace A098356.P3560960868514898573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A038722 (n + 2)).toNat * A141169 n

end

end A098356.P3560960868514898573

namespace A098356

/-- `A141169(A038722(n+2))*A141169(n)` -/
def P3560960868514898573.Spec : Prop :=
  ∀ n, P3560960868514898573.a n = A098356 n

end A098356

/-! ## A098356.P12672528075217006254

`A141169(A099375(n)+n)*A141169(n)`
-/

namespace A098356.P12672528075217006254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A099375 n + (n : ℤ)).toNat * A141169 n

end

end A098356.P12672528075217006254

namespace A098356

/-- `A141169(A099375(n)+n)*A141169(n)` -/
def P12672528075217006254.Spec : Prop :=
  ∀ n, P12672528075217006254.a n = A098356 n

end A098356

/-!
# A098357: a(n) = A061017(n) - pi(n+1).

The programs for A098357, the canonical program `A098357.P10267421569061637514` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098357 has offset 1).

The definition of A098357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A098357.P10267421569061637514

`A061017(n+1)-A000720(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098357

/-- `A061017(n+1)-A000720(n+2)` -/
def P10267421569061637514.Spec : Prop :=
  ∀ n, P10267421569061637514.a n = A098357 (n + 1)

theorem P10267421569061637514.correct : P10267421569061637514.Spec := by
  intro n
  simp only [A098357, Nat.add_sub_cancel]

end A098357

/-! ## A098357.P18110220101278842981

`A088526(n+1)+A005171(n+2)`
-/

namespace A098357.P18110220101278842981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088526 (n + 1) + A005171 (n + 2)

end

end A098357.P18110220101278842981

namespace A098357

/-- `A088526(n+1)+A005171(n+2)` -/
def P18110220101278842981.Spec : Prop :=
  ∀ n, P18110220101278842981.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P11680842482649335077

`∑[char[A006218(n)]]-A000720(n+2)`
-/

namespace A098357.P11680842482649335077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000720 (n + 2)

end

end A098357.P11680842482649335077

namespace A098357

/-- `∑[char[A006218(n)]]-A000720(n+2)` -/
def P11680842482649335077.Spec : Prop :=
  ∀ n, P11680842482649335077.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P10515349423302493662

`∑[char[A054519(n)-1]]-A000720(n+2)`
-/

namespace A098357.P10515349423302493662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000720 (n + 2)

end

end A098357.P10515349423302493662

namespace A098357

/-- `∑[char[A054519(n)-1]]-A000720(n+2)` -/
def P10515349423302493662.Spec : Prop :=
  ∀ n, P10515349423302493662.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P14025139794725276607

`A061017(n+1)-∑[C(2, A000005(n+2))]`
-/

namespace A098357.P14025139794725276607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A098357.P14025139794725276607

namespace A098357

/-- `A061017(n+1)-∑[C(2, A000005(n+2))]` -/
def P14025139794725276607.Spec : Prop :=
  ∀ n, P14025139794725276607.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P17529439898242395105

`A061017(n+1)-∑[A001222(n+2)!%2]`
-/

namespace A098357.P17529439898242395105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (n + 2)).toNat % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A098357.P17529439898242395105

namespace A098357

/-- `A061017(n+1)-∑[A001222(n+2)!%2]` -/
def P17529439898242395105.Spec : Prop :=
  ∀ n, P17529439898242395105.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P2494098593383743725

`A061017(n+1)-∑[char[A000040(n+1)-2]]`
-/

namespace A098357.P2494098593383743725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A098357.P2494098593383743725

namespace A098357

/-- `A061017(n+1)-∑[char[A000040(n+1)-2]]` -/
def P2494098593383743725.Spec : Prop :=
  ∀ n, P2494098593383743725.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P9358625869974289965

`A061017(n+1)-A049084(A151799(n+3))`
-/

namespace A098357.P9358625869974289965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - A049084 (A151799 (n + 3)).toNat

end

end A098357.P9358625869974289965

namespace A098357

/-- `A061017(n+1)-A049084(A151799(n+3))` -/
def P9358625869974289965.Spec : Prop :=
  ∀ n, P9358625869974289965.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P12629063732716581990

`A088526(n+1)+Δ[A062298(n+1)]`
-/

namespace A098357.P12629063732716581990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088526 (n + 1) + (f1 (n + 1) - f1 n)

end

end A098357.P12629063732716581990

namespace A098357

/-- `A088526(n+1)+Δ[A062298(n+1)]` -/
def P12629063732716581990.Spec : Prop :=
  ∀ n, P12629063732716581990.a n = A098357 (n + 1)

theorem P12629063732716581990.correct : P12629063732716581990.Spec := by
  intro n
  simp only [A098357, Nat.add_sub_cancel, A098357.P12629063732716581990.f1, A098357.P12629063732716581990.a, A098357.P10267421569061637514.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A061017, A061017.P3381662168248992728.a, A062298, A062298.P8226643735375377344.a, A088526, A088526.P8703883917156406737.a, A143502, A143502.P12154908491860464719.f4, A143502.P12154908491860464719.f3, A143502.P12154908491860464719.f2, A143502.P12154908491860464719.f1, A143502.P12154908491860464719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098357

/-! ## A098357.P14119016273693058076

`A061017(n+1)-Δ[A046992(n+1)]`
-/

namespace A098357.P14119016273693058076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - (f1 (n + 1) - f1 n)

end

end A098357.P14119016273693058076

namespace A098357

/-- `A061017(n+1)-Δ[A046992(n+1)]` -/
def P14119016273693058076.Spec : Prop :=
  ∀ n, P14119016273693058076.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P16102909097194366590

`A061017(n+1)-∑[A080339(n+2)]`
-/

namespace A098357.P16102909097194366590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098357.P16102909097194366590

namespace A098357

/-- `A061017(n+1)-∑[A080339(n+2)]` -/
def P16102909097194366590.Spec : Prop :=
  ∀ n, P16102909097194366590.a n = A098357 (n + 1)

end A098357

/-! ## A098357.P18271519972349275400

`A061017(n+1)-(A036234(n+2)-1)`
-/

namespace A098357.P18271519972349275400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - (A036234 (n + 2) - 1)

end

end A098357.P18271519972349275400

namespace A098357

/-- `A061017(n+1)-(A036234(n+2)-1)` -/
def P18271519972349275400.Spec : Prop :=
  ∀ n, P18271519972349275400.a n = A098357 (n + 1)

theorem P18271519972349275400.correct : P18271519972349275400.Spec := by
  intro n
  simp only [A098357, Nat.add_sub_cancel, A098357.P18271519972349275400.a, A098357.P10267421569061637514.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A061017, A061017.P3381662168248992728.a, A143502, A143502.P12154908491860464719.f4, A143502.P12154908491860464719.f3, A143502.P12154908491860464719.f2, A143502.P12154908491860464719.f1, A143502.P12154908491860464719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098357

/-! ## A098357.P5099760623343937013

`A061017(n+1)-A230980(n+2)`
-/

namespace A098357.P5099760623343937013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - A230980 (n + 2)

end

end A098357.P5099760623343937013

namespace A098357

/-- `A061017(n+1)-A230980(n+2)` -/
def P5099760623343937013.Spec : Prop :=
  ∀ n, P5099760623343937013.a n = A098357 (n + 1)

end A098357

/-!
# A098358: Multiplication table of the triangular numbers read by antidiagonals.

The programs for A098358, the canonical program `A098358.P610290183917864518` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098358 has offset 1).

The definition of A098358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098358.P610290183917864518

`(col(n)+1)*(col(n)+2)*(row(n)-col(n)+1)*(row(n)-col(n)+2)/4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098358

/-- `(col(n)+1)*(col(n)+2)*(row(n)-col(n)+1)*(row(n)-col(n)+2)/4` -/
def P610290183917864518.Spec : Prop :=
  ∀ n, P610290183917864518.a n = (A098358 (n + 1) : ℚ)

end A098358

/-! ## A098358.P13961285992910896797

`C(col(n)+2, 2)*C(row(n)-col(n)+2, 2)`
-/

namespace A098358.P13961285992910896797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 2) 2 * Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat 2

end

end A098358.P13961285992910896797

namespace A098358

/-- `C(col(n)+2, 2)*C(row(n)-col(n)+2, 2)` -/
def P13961285992910896797.Spec : Prop :=
  ∀ n, (P13961285992910896797.a n : ℤ) = A098358 (n + 1)

end A098358

/-! ## A098358.P6782749974457829327

`A059036(n)+1+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A098358.P6782749974457829327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059036 n + (1 + SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A098358.P6782749974457829327

namespace A098358

/-- `A059036(n)+1+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P6782749974457829327.Spec : Prop :=
  ∀ n, P6782749974457829327.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P2452176885610333568

`A000124(A003991(n+1))-A113582(n+1)`
-/

namespace A098358.P2452176885610333568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003991 (n + 1)).toNat - A113582 (n + 1)

end

end A098358.P2452176885610333568

namespace A098358

/-- `A000124(A003991(n+1))-A113582(n+1)` -/
def P2452176885610333568.Spec : Prop :=
  ∀ n, P2452176885610333568.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P3987810809155761747

`A000217(A002260(n+1))*A000217(A004736(n+1))`
-/

namespace A098358.P3987810809155761747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A000217 (A004736 (n + 1)).toNat

end

end A098358.P3987810809155761747

namespace A098358

/-- `A000217(A002260(n+1))*A000217(A004736(n+1))` -/
def P3987810809155761747.Spec : Prop :=
  ∀ n, P3987810809155761747.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P11748325282812872616

`A000217(A004736(n+1))*A000217(A002262(n)+1)`
-/

namespace A098358.P11748325282812872616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1)).toNat * A000217 (A002262 n + 1).toNat

end

end A098358.P11748325282812872616

namespace A098358

/-- `A000217(A004736(n+1))*A000217(A002262(n)+1)` -/
def P11748325282812872616.Spec : Prop :=
  ∀ n, P11748325282812872616.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P1439832693094818743

`(A000096(A025581(n))+1)*A000217(A002260(n+1))`
-/

namespace A098358.P1439832693094818743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 (A025581 n).toNat + 1) * A000217 (A002260 (n + 1)).toNat

end

end A098358.P1439832693094818743

namespace A098358

/-- `(A000096(A025581(n))+1)*A000217(A002260(n+1))` -/
def P1439832693094818743.Spec : Prop :=
  ∀ n, P1439832693094818743.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P5627073482101619873

`A000217(A002260(n+1))*A000217(A025581(n)+1)`
-/

namespace A098358.P5627073482101619873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A000217 (A025581 n + 1).toNat

end

end A098358.P5627073482101619873

namespace A098358

/-- `A000217(A002260(n+1))*A000217(A025581(n)+1)` -/
def P5627073482101619873.Spec : Prop :=
  ∀ n, P5627073482101619873.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P4081366929126610106

`A000217(A003983(n+1))*A000217(A051125(n+1))`
-/

namespace A098358.P4081366929126610106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003983 (n + 1)).toNat * A000217 (A051125 (n + 1)).toNat

end

end A098358.P4081366929126610106

namespace A098358

/-- `A000217(A003983(n+1))*A000217(A051125(n+1))` -/
def P4081366929126610106.Spec : Prop :=
  ∀ n, P4081366929126610106.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P12265940303362876550

`A213548(n+1)-A213550(n+2)%A213548(n+2)`
-/

namespace A098358.P12265940303362876550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) - Int.tmod (A213550 (n + 2)) (A213548 (n + 2))

end

end A098358.P12265940303362876550

namespace A098358

/-- `A213548(n+1)-A213550(n+2)%A213548(n+2)` -/
def P12265940303362876550.Spec : Prop :=
  ∀ n, P12265940303362876550.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P14679310400991953195

`A268759(lt[2, 2^(row(n)-col(n))])`
-/

namespace A098358.P14679310400991953195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A098358.P14679310400991953195

namespace A098358

/-- `A268759(lt[2, 2^(row(n)-col(n))])` -/
def P14679310400991953195.Spec : Prop :=
  ∀ n, P14679310400991953195.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P7986464649333944105

`A268759(lt[4, (row(n)+1-col(n))²])`
-/

namespace A098358.P7986464649333944105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A098358.P7986464649333944105

namespace A098358

/-- `A268759(lt[4, (row(n)+1-col(n))²])` -/
def P7986464649333944105.Spec : Prop :=
  ∀ n, P7986464649333944105.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P17262801555045379508

`A268759(lt[0, A268759(n)])`
-/

namespace A098358.P17262801555045379508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A098358.P17262801555045379508

namespace A098358

/-- `A268759(lt[0, A268759(n)])` -/
def P17262801555045379508.Spec : Prop :=
  ∀ n, P17262801555045379508.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P16671812643803717528

`A113582(lt[1, A002262(n)])-1`
-/

namespace A098358.P16671812643803717528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A098358.P16671812643803717528

namespace A098358

/-- `A113582(lt[1, A002262(n)])-1` -/
def P16671812643803717528.Spec : Prop :=
  ∀ n, P16671812643803717528.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P7566125241899596267

`A000217(A057555(2*n+1))*A000217(A057555(2*(n+1)))`
-/

namespace A098358.P7566125241899596267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057555 (2 * n + 1)).toNat * A000217 (A057555 (2 * (n + 1))).toNat

end

end A098358.P7566125241899596267

namespace A098358

/-- `A000217(A057555(2*n+1))*A000217(A057555(2*(n+1)))` -/
def P7566125241899596267.Spec : Prop :=
  ∀ n, P7566125241899596267.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P3938976711384274008

`A268759(comp[n-A268759(n)²])`
-/

namespace A098358.P3938976711384274008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268759 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A098358.P3938976711384274008

namespace A098358

/-- `A268759(comp[n-A268759(n)²])` -/
def P3938976711384274008.Spec : Prop :=
  ∀ n, P3938976711384274008.a n = A098358 (n + 1)

end A098358

/-! ## A098358.P6689389736169852976

`∏{e}[A036561(n), C(#+2, 2)]`
-/

namespace A098358.P6689389736169852976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (Nat.factorization (f1 n).natAbs p + 2) 2

end

end A098358.P6689389736169852976

namespace A098358

/-- `∏{e}[A036561(n), C(#+2, 2)]` -/
def P6689389736169852976.Spec : Prop :=
  ∀ n, (P6689389736169852976.a n : ℤ) = A098358 (n + 1)

end A098358

/-! ## A098358.P4682773334240790038

`A000217(A092542(n+1))*A000217(A092543(n+1))`
-/

namespace A098358.P4682773334240790038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A092542 (n + 1)).toNat * A000217 (A092543 (n + 1)).toNat

end

end A098358.P4682773334240790038

namespace A098358

/-- `A000217(A092542(n+1))*A000217(A092543(n+1))` -/
def P4682773334240790038.Spec : Prop :=
  ∀ n, P4682773334240790038.a n = A098358 (n + 1)

end A098358

/-!
# A098359: Multiplication table of the square numbers read by antidiagonals.

The programs for A098359, the canonical program `A098359.P2121101318940565508` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098359 has offset 1).

The definition of A098359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098359.P2121101318940565508

`(col(n)+1)²*(row(n)-col(n)+1)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098359

/-- `(col(n)+1)²*(row(n)-col(n)+1)²` -/
def P2121101318940565508.Spec : Prop :=
  ∀ n, P2121101318940565508.a n = A098359 (n + 1)

theorem P2121101318940565508.correct : P2121101318940565508.Spec := by
  intro n
  simp only [A098359, Nat.add_sub_cancel]

end A098359

/-! ## A098359.P612593218849913138

`((1+col(n))*(1-col(n)+row(n)))²`
-/

namespace A098359.P612593218849913138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + SequenceMachineLib.triCol n : ℤ) * (1 - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ))) ^ 2

end

end A098359.P612593218849913138

namespace A098359

/-- `((1+col(n))*(1-col(n)+row(n)))²` -/
def P612593218849913138.Spec : Prop :=
  ∀ n, P612593218849913138.a n = A098359 (n + 1)

theorem P612593218849913138.correct : P612593218849913138.Spec := by
  intro n
  simp only [A098359, Nat.add_sub_cancel, A098359.P612593218849913138.a, A098359.P2121101318940565508.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098359

/-! ## A098359.P4788328088497912208

`((col(n)+1)*(row(n)-col(n)+1))^2`
-/

namespace A098359.P4788328088497912208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)) ^ 2

end

end A098359.P4788328088497912208

namespace A098359

/-- `((col(n)+1)*(row(n)-col(n)+1))^2` -/
def P4788328088497912208.Spec : Prop :=
  ∀ n, P4788328088497912208.a n = A098359 (n + 1)

theorem P4788328088497912208.correct : P4788328088497912208.Spec := by
  intro n
  simp only [A098359, Nat.add_sub_cancel, A098359.P4788328088497912208.a, A098359.P2121101318940565508.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098359

/-! ## A098359.P7064767566119524177

`((col(n)+1)*(C(comp[∑[n]]-n, 2)-n))²`
-/

namespace A098359.P7064767566119524177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))) ^ 2

end

end A098359.P7064767566119524177

namespace A098359

/-- `((col(n)+1)*(C(comp[∑[n]]-n, 2)-n))²` -/
def P7064767566119524177.Spec : Prop :=
  ∀ n, P7064767566119524177.a n = A098359 (n + 1)

end A098359

/-! ## A098359.P3999029742497669289

`((row(n)-(col(n)-1))*val(2*2^col(n), 2))²`
-/

namespace A098359.P3999029742497669289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triCol n : ℤ) - 1)) * (SequenceMachineLib.valuation (2 * 2 ^ SequenceMachineLib.triCol n) 2 : ℤ)) ^ 2

end

end A098359.P3999029742497669289

namespace A098359

/-- `((row(n)-(col(n)-1))*val(2*2^col(n), 2))²` -/
def P3999029742497669289.Spec : Prop :=
  ∀ n, P3999029742497669289.a n = A098359 (n + 1)

end A098359

/-! ## A098359.P5462484844942538520

`((1+col(n))*((row(n)+1)*(col(n)+1))%(row(n)+2))²`
-/

namespace A098359.P5462484844942538520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((1 + SequenceMachineLib.triCol n) * ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1) % (SequenceMachineLib.triRow n + 2))) ^ 2

end

end A098359.P5462484844942538520

namespace A098359

/-- `((1+col(n))*((row(n)+1)*(col(n)+1))%(row(n)+2))²` -/
def P5462484844942538520.Spec : Prop :=
  ∀ n, (P5462484844942538520.a n : ℤ) = A098359 (n + 1)

end A098359

/-! ## A098359.P16286819894723690419

`(col(n)+1)*(row(n)-col(n)+1)*(col(n)+1)*(row(n)-col(n)+1)`
-/

namespace A098359.P16286819894723690419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1))

end

end A098359.P16286819894723690419

namespace A098359

/-- `(col(n)+1)*(row(n)-col(n)+1)*(col(n)+1)*(row(n)-col(n)+1)` -/
def P16286819894723690419.Spec : Prop :=
  ∀ n, P16286819894723690419.a n = A098359 (n + 1)

theorem P16286819894723690419.correct : P16286819894723690419.Spec := by
  intro n
  simp only [A098359, Nat.add_sub_cancel, A098359.P16286819894723690419.a, A098359.P2121101318940565508.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098359

/-! ## A098359.P2798702325906110444

`A003991(1+n)²`
-/

namespace A098359.P2798702325906110444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (1 + n) ^ 2

end

end A098359.P2798702325906110444

namespace A098359

/-- `A003991(1+n)²` -/
def P2798702325906110444.Spec : Prop :=
  ∀ n, P2798702325906110444.a n = A098359 (n + 1)

end A098359

/-! ## A098359.P10934624710799027920

`(A059036(n)+1)²`
-/

namespace A098359.P10934624710799027920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059036 n + 1) ^ 2

end

end A098359.P10934624710799027920

namespace A098359

/-- `(A059036(n)+1)²` -/
def P10934624710799027920.Spec : Prop :=
  ∀ n, P10934624710799027920.a n = A098359 (n + 1)

theorem P10934624710799027920.correct : P10934624710799027920.Spec := by
  intro n
  simp only [A098359, Nat.add_sub_cancel, A098359.P10934624710799027920.a, A098359.P2121101318940565508.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098359

/-! ## A098359.P16061283668551126934

`(A098352(n+1)/4)²`
-/

namespace A098359.P16061283668551126934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098352 (n + 1) : ℚ) / 4) ^ 2

end

end A098359.P16061283668551126934

namespace A098359

/-- `(A098352(n+1)/4)²` -/
def P16061283668551126934.Spec : Prop :=
  ∀ n, P16061283668551126934.a n = (A098359 (n + 1) : ℚ)

theorem P16061283668551126934.correct : P16061283668551126934.Spec := by
  intro n
  simp only [A098359, Nat.add_sub_cancel, A098359.P16061283668551126934.a, A098359.P2121101318940565508.a, A098352, A098352.P3707437164941693741.a, A003991, A003991.P6365127437582401781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098359

/-! ## A098359.P8763769332309534008

`A098360(n+1)^(2/3)`
-/

namespace A098359.P8763769332309534008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A098360 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A098359.P8763769332309534008

namespace A098359

/-- `A098360(n+1)^(2/3)` -/
def P8763769332309534008.Spec : Prop :=
  ∀ n, P8763769332309534008.a n = (A098359 (n + 1) : ℝ)

end A098359

/-! ## A098359.P15367959161916542118

`A003991(1-(n-2*n))^2`
-/

namespace A098359.P15367959161916542118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat ^ 2

end

end A098359.P15367959161916542118

namespace A098359

/-- `A003991(1-(n-2*n))^2` -/
def P15367959161916542118.Spec : Prop :=
  ∀ n, P15367959161916542118.a n = A098359 (n + 1)

end A098359

/-! ## A098359.P6781325235395607934

`A000290(A059036(n)+1)`
-/

namespace A098359.P6781325235395607934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A059036 n + 1).toNat

end

end A098359.P6781325235395607934

namespace A098359

/-- `A000290(A059036(n)+1)` -/
def P6781325235395607934.Spec : Prop :=
  ∀ n, P6781325235395607934.a n = A098359 (n + 1)

end A098359

/-! ## A098359.P5207910227829489247

`(A077028(n)+A003056(n))²`
-/

namespace A098359.P5207910227829489247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077028 n + A003056 n) ^ 2

end

end A098359.P5207910227829489247

namespace A098359

/-- `(A077028(n)+A003056(n))²` -/
def P5207910227829489247.Spec : Prop :=
  ∀ n, P5207910227829489247.a n = A098359 (n + 1)

end A098359

/-! ## A098359.P1466927583689399461

`(A049627(n)+A049615(n))²`
-/

namespace A098359.P1466927583689399461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049627 n + A049615 n) ^ 2

end

end A098359.P1466927583689399461

namespace A098359

/-- `(A049627(n)+A049615(n))²` -/
def P1466927583689399461.Spec : Prop :=
  ∀ n, P1466927583689399461.a n = A098359 (n + 1)

end A098359

/-! ## A098359.P5303002223969127723

`(A176270(n)+A141387(n))²`
-/

namespace A098359.P5303002223969127723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176270 n + A141387 n) ^ 2

end

end A098359.P5303002223969127723

namespace A098359

/-- `(A176270(n)+A141387(n))²` -/
def P5303002223969127723.Spec : Prop :=
  ∀ n, P5303002223969127723.a n = A098359 (n + 1)

theorem P5303002223969127723.correct : P5303002223969127723.Spec := by
  intro n
  simp only [A098359, Nat.add_sub_cancel, A098359.P5303002223969127723.a, A098359.P2121101318940565508.a, A141387, A141387.P5238259369822402056.a, A176270, A176270.P15264438552937889960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098359

/-! ## A098359.P2662144179800306294

`(A004247(n)+∑[A010054(n)])²`
-/

namespace A098359.P2662144179800306294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A098359.P2662144179800306294

namespace A098359

/-- `(A004247(n)+∑[A010054(n)])²` -/
def P2662144179800306294.Spec : Prop :=
  ∀ n, P2662144179800306294.a n = A098359 (n + 1)

end A098359

/-! ## A098359.P13843331900283406369

`A055461(n+1)*A133819(n+1)`
-/

namespace A098359.P13843331900283406369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) * A133819 (n + 1)

end

end A098359.P13843331900283406369

namespace A098359

/-- `A055461(n+1)*A133819(n+1)` -/
def P13843331900283406369.Spec : Prop :=
  ∀ n, P13843331900283406369.a n = A098359 (n + 1)

theorem P13843331900283406369.correct : P13843331900283406369.Spec := by
  intro n
  simp only [A098359, Nat.add_sub_cancel, A098359.P13843331900283406369.a, A098359.P2121101318940565508.a, A055461, A055461.P13333228572909301680.a, A133819, A133819.P4652954550055324138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098359

/-! ## A098359.P1843767278868629809

`A098360(n+1)/A003991(n+1)`
-/

namespace A098359.P1843767278868629809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098360 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ)

end

end A098359.P1843767278868629809

namespace A098359

/-- `A098360(n+1)/A003991(n+1)` -/
def P1843767278868629809.Spec : Prop :=
  ∀ n, P1843767278868629809.a n = (A098359 (n + 1) : ℚ)

end A098359

/-! ## A098359.P10892997367855839439

`(A002260(n+1)*A004736(n+1))²`
-/

namespace A098359.P10892997367855839439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A004736 (n + 1)) ^ 2

end

end A098359.P10892997367855839439

namespace A098359

/-- `(A002260(n+1)*A004736(n+1))²` -/
def P10892997367855839439.Spec : Prop :=
  ∀ n, P10892997367855839439.a n = A098359 (n + 1)

end A098359

/-!
# A098360: Multiplication table of the cube numbers read by antidiagonals.

The programs for A098360, the canonical program `A098360.P9364813063052634446` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098360 has offset 1).

The definition of A098360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098360.P9364813063052634446

`A003991(n+1)^3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098360

/-- `A003991(n+1)^3` -/
def P9364813063052634446.Spec : Prop :=
  ∀ n, P9364813063052634446.a n = A098360 (n + 1)

theorem P9364813063052634446.correct : P9364813063052634446.Spec := by
  intro n
  simp only [A098360, Nat.add_sub_cancel]

end A098360

/-! ## A098360.P16663094853167341661

`((col(n)+1)*(row(n)-col(n)+1))^3`
-/

namespace A098360.P16663094853167341661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)) ^ 3

end

end A098360.P16663094853167341661

namespace A098360

/-- `((col(n)+1)*(row(n)-col(n)+1))^3` -/
def P16663094853167341661.Spec : Prop :=
  ∀ n, P16663094853167341661.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P4242360036586592119

`(A059036(n)+1)^3`
-/

namespace A098360.P4242360036586592119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059036 n + 1) ^ 3

end

end A098360.P4242360036586592119

namespace A098360

/-- `(A059036(n)+1)^3` -/
def P4242360036586592119.Spec : Prop :=
  ∀ n, P4242360036586592119.a n = A098360 (n + 1)

theorem P4242360036586592119.correct : P4242360036586592119.Spec := by
  intro n
  simp only [A098360, Nat.add_sub_cancel, A098360.P4242360036586592119.a, A098360.P9364813063052634446.a, A003991, A003991.P6365127437582401781.a, A059036, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098360

/-! ## A098360.P12384415733802152719

`sqrt(A098359(n+1)^3)`
-/

namespace A098360.P12384415733802152719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098359 (n + 1) ^ 3 : ℝ)

end

end A098360.P12384415733802152719

namespace A098360

/-- `sqrt(A098359(n+1)^3)` -/
def P12384415733802152719.Spec : Prop :=
  ∀ n, P12384415733802152719.a n = (A098360 (n + 1) : ℝ)

end A098360

/-! ## A098360.P13339362193168346877

`A000578((col(n)+1)*(row(n)+1-col(n)))`
-/

namespace A098360.P13339362193168346877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A098360.P13339362193168346877

namespace A098360

/-- `A000578((col(n)+1)*(row(n)+1-col(n)))` -/
def P13339362193168346877.Spec : Prop :=
  ∀ n, P13339362193168346877.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P8398372822512679956

`A000578(A003991(n+1))`
-/

namespace A098360.P8398372822512679956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003991 (n + 1)).toNat

end

end A098360.P8398372822512679956

namespace A098360

/-- `A000578(A003991(n+1))` -/
def P8398372822512679956.Spec : Prop :=
  ∀ n, P8398372822512679956.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P18040861484724496204

`A000578(A059036(n)+1)`
-/

namespace A098360.P18040861484724496204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A059036 n + 1).toNat

end

end A098360.P18040861484724496204

namespace A098360

/-- `A000578(A059036(n)+1)` -/
def P18040861484724496204.Spec : Prop :=
  ∀ n, P18040861484724496204.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P7739158920693981026

`A141388(n+1)+A137688(n)`
-/

namespace A098360.P7739158920693981026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141388 (n + 1) + A137688 n

end

end A098360.P7739158920693981026

namespace A098360

/-- `A141388(n+1)+A137688(n)` -/
def P7739158920693981026.Spec : Prop :=
  ∀ n, P7739158920693981026.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P16903779648376538352

`(A049627(n)+A049615(n))^3`
-/

namespace A098360.P16903779648376538352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049627 n + A049615 n) ^ 3

end

end A098360.P16903779648376538352

namespace A098360

/-- `(A049627(n)+A049615(n))^3` -/
def P16903779648376538352.Spec : Prop :=
  ∀ n, P16903779648376538352.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P18084749393744205794

`A003991(n+1)*A098359(n+1)`
-/

namespace A098360.P18084749393744205794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A098359 (n + 1)

end

end A098360.P18084749393744205794

namespace A098360

/-- `A003991(n+1)*A098359(n+1)` -/
def P18084749393744205794.Spec : Prop :=
  ∀ n, P18084749393744205794.a n = A098360 (n + 1)

theorem P18084749393744205794.correct : P18084749393744205794.Spec := by
  intro n
  simp only [A098360, Nat.add_sub_cancel, A098360.P18084749393744205794.a, A098360.P9364813063052634446.a, A003991, A003991.P6365127437582401781.a, A098359, A098359.P2121101318940565508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098360

/-! ## A098360.P5135629156169143580

`A358293(n+1)/A140978(n+1)`
-/

namespace A098360.P5135629156169143580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358293 (n + 1) : ℚ) / (A140978 (n + 1) : ℚ)

end

end A098360.P5135629156169143580

namespace A098360

/-- `A358293(n+1)/A140978(n+1)` -/
def P5135629156169143580.Spec : Prop :=
  ∀ n, P5135629156169143580.a n = (A098360 (n + 1) : ℚ)

end A098360

/-! ## A098360.P8497814191366596747

`(A002260(n+1)*A004736(n+1))^3`
-/

namespace A098360.P8497814191366596747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A004736 (n + 1)) ^ 3

end

end A098360.P8497814191366596747

namespace A098360

/-- `(A002260(n+1)*A004736(n+1))^3` -/
def P8497814191366596747.Spec : Prop :=
  ∀ n, P8497814191366596747.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P5688804395925006373

`(A003991(n+1)/2)²*A098352(n+1)`
-/

namespace A098360.P5688804395925006373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003991 (n + 1) : ℚ) / 2) ^ 2 * (A098352 (n + 1) : ℚ)

end

end A098360.P5688804395925006373

namespace A098360

/-- `(A003991(n+1)/2)²*A098352(n+1)` -/
def P5688804395925006373.Spec : Prop :=
  ∀ n, P5688804395925006373.a n = (A098360 (n + 1) : ℚ)

theorem P5688804395925006373.correct : P5688804395925006373.Spec := by
  intro n
  simp only [A098360, Nat.add_sub_cancel, A098360.P5688804395925006373.a, A098360.P9364813063052634446.a, A003991, A003991.P6365127437582401781.a, A098352, A098352.P3707437164941693741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098360

/-! ## A098360.P12335549337685882066

`A000578(A049627(n)+A049615(n))`
-/

namespace A098360.P12335549337685882066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A049627 n + A049615 n).toNat

end

end A098360.P12335549337685882066

namespace A098360

/-- `A000578(A049627(n)+A049615(n))` -/
def P12335549337685882066.Spec : Prop :=
  ∀ n, P12335549337685882066.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P15215703301184087190

`A003991(A000027(n+1))²*A003991(n+1)`
-/

namespace A098360.P15215703301184087190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A000027 (n + 1)).toNat ^ 2 * A003991 (n + 1)

end

end A098360.P15215703301184087190

namespace A098360

/-- `A003991(A000027(n+1))²*A003991(n+1)` -/
def P15215703301184087190.Spec : Prop :=
  ∀ n, P15215703301184087190.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P4978057470840366286

`(A004736(n+1)-A141429(n+1))²*A003991(n+1)`
-/

namespace A098360.P4978057470840366286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - A141429 (n + 1)) ^ 2 * A003991 (n + 1)

end

end A098360.P4978057470840366286

namespace A098360

/-- `(A004736(n+1)-A141429(n+1))²*A003991(n+1)` -/
def P4978057470840366286.Spec : Prop :=
  ∀ n, P4978057470840366286.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P1791247598908192532

`A002260(n+1)*A004736(n+1)*A003991(n+1)²`
-/

namespace A098360.P1791247598908192532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (n + 1) * A003991 (n + 1) ^ 2

end

end A098360.P1791247598908192532

namespace A098360

/-- `A002260(n+1)*A004736(n+1)*A003991(n+1)²` -/
def P1791247598908192532.Spec : Prop :=
  ∀ n, P1791247598908192532.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P6211601822100429638

`(A003991(n+1)*A008836(n+1))²*A003991(n+1)`
-/

namespace A098360.P6211601822100429638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) * A008836 (n + 1)) ^ 2 * A003991 (n + 1)

end

end A098360.P6211601822100429638

namespace A098360

/-- `(A003991(n+1)*A008836(n+1))²*A003991(n+1)` -/
def P6211601822100429638.Spec : Prop :=
  ∀ n, P6211601822100429638.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P14585056503417093640

`A000578((A003057(n+2)-A002260(n+1))*A002260(n+1))`
-/

namespace A098360.P14585056503417093640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((A003057 (n + 2) - A002260 (n + 1)) * A002260 (n + 1)).toNat

end

end A098360.P14585056503417093640

namespace A098360

/-- `A000578((A003057(n+2)-A002260(n+1))*A002260(n+1))` -/
def P14585056503417093640.Spec : Prop :=
  ∀ n, P14585056503417093640.a n = A098360 (n + 1)

end A098360

/-! ## A098360.P5767135114626787327

`A000463(2*A003991(n+1))*A003991(n+1)`
-/

namespace A098360.P5767135114626787327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A003991 (n + 1)).toNat * A003991 (n + 1)

end

end A098360.P5767135114626787327

namespace A098360

/-- `A000463(2*A003991(n+1))*A003991(n+1)` -/
def P5767135114626787327.Spec : Prop :=
  ∀ n, P5767135114626787327.a n = A098360 (n + 1)

end A098360

/-!
# A098361: Multiplication table of the factorial numbers read by antidiagonals.

The programs for A098361, the canonical program `A098361.P4702450051752520523` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098361 has offset 0).

The definition of A098361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098361.P4702450051752520523

`col(n)!*(row(n)-col(n))!`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098361

/-- `col(n)!*(row(n)-col(n))!` -/
def P4702450051752520523.Spec : Prop :=
  ∀ n, (P4702450051752520523.a n : ℤ) = A098361 n

theorem P4702450051752520523.correct : P4702450051752520523.Spec := by
  intro n
  simp only [A098361]

end A098361

/-! ## A098361.P11640004960376229093

`row(n)!/C(row(n), col(n))`
-/

namespace A098361.P11640004960376229093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ)

end

end A098361.P11640004960376229093

namespace A098361

/-- `row(n)!/C(row(n), col(n))` -/
def P11640004960376229093.Spec : Prop :=
  ∀ n, P11640004960376229093.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P7231475748420434607

`col(n)*T(n-1,k-1)+(T(n-1,k)-col(n)*T(n-2,k-1))*row(n)` with `a(0)=1`
-/

namespace A098361.P7231475748420434607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp a n - (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A098361.P7231475748420434607

namespace A098361

/-- `col(n)*T(n-1,k-1)+(T(n-1,k)-col(n)*T(n-2,k-1))*row(n)` -/
def P7231475748420434607.Spec : Prop :=
  ∀ n, P7231475748420434607.a n = A098361 n

end A098361

/-! ## A098361.P2762999306437312606

`col(n)*T(n-1,k-1)-(col(n)*T(n-2,k-1)-T(n-1,k))*row(n)` with `a(0)=1`
-/

namespace A098361.P2762999306437312606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A098361.P2762999306437312606

namespace A098361

/-- `col(n)*T(n-1,k-1)-(col(n)*T(n-2,k-1)-T(n-1,k))*row(n)` -/
def P2762999306437312606.Spec : Prop :=
  ∀ n, P2762999306437312606.a n = A098361 n

end A098361

/-! ## A098361.P14738368732170430234

`T(col(n), 2*T(n-1,k))+(row(n)-col(n))*T(n-1,k)` with `a(0)=1`
-/

namespace A098361.P14738368732170430234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (2 * SequenceMachineLib.triUp a n) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUp a n

end

end A098361.P14738368732170430234

namespace A098361

/-- `T(col(n), 2*T(n-1,k))+(row(n)-col(n))*T(n-1,k)` -/
def P14738368732170430234.Spec : Prop :=
  ∀ n, P14738368732170430234.a n = A098361 n

end A098361

/-! ## A098361.P8528245157000369504

`T(col(n), 2*T(n-1,k))-(col(n)-row(n))*T(n-1,k)` with `a(0)=1`
-/

namespace A098361.P8528245157000369504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (2 * SequenceMachineLib.triUp a n) - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp a n

end

end A098361.P8528245157000369504

namespace A098361

/-- `T(col(n), 2*T(n-1,k))-(col(n)-row(n))*T(n-1,k)` -/
def P8528245157000369504.Spec : Prop :=
  ∀ n, P8528245157000369504.a n = A098361 n

end A098361

/-! ## A098361.P4556331276505194602

`row(n)!/A007318(n)`
-/

namespace A098361.P4556331276505194602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (A007318 n : ℚ)

end

end A098361.P4556331276505194602

namespace A098361

/-- `row(n)!/A007318(n)` -/
def P4556331276505194602.Spec : Prop :=
  ∀ n, P4556331276505194602.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P7644599662045047729

`A119502(n)*A233543(n)`
-/

namespace A098361.P7644599662045047729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A233543 n

end

end A098361.P7644599662045047729

namespace A098361

/-- `A119502(n)*A233543(n)` -/
def P7644599662045047729.Spec : Prop :=
  ∀ n, P7644599662045047729.a n = A098361 n

theorem P7644599662045047729.correct : P7644599662045047729.Spec := by
  intro n
  simp only [A098361, Nat.add_sub_cancel, A098361.P7644599662045047729.a, A098361.P4702450051752520523.a, A119502, A119502.P14623475535698746152.a, A233543, A233543.P8120853931293690238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098361

/-! ## A098361.P18066945760462946805

`A003056(n)!/A007318(n)`
-/

namespace A098361.P18066945760462946805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A098361.P18066945760462946805

namespace A098361

/-- `A003056(n)!/A007318(n)` -/
def P18066945760462946805.Spec : Prop :=
  ∀ n, P18066945760462946805.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P1523035438368453601

`A003056(n)!/ceil(A134059(n)/3)`
-/

namespace A098361.P1523035438368453601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℚ) / (⌈(A134059 n : ℚ) / 3⌉ : ℚ)

end

end A098361.P1523035438368453601

namespace A098361

/-- `A003056(n)!/ceil(A134059(n)/3)` -/
def P1523035438368453601.Spec : Prop :=
  ∀ n, P1523035438368453601.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P11242123241326361098

`A119502(A061579(n))*A119502(n)`
-/

namespace A098361.P11242123241326361098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A119502 n

end

end A098361.P11242123241326361098

namespace A098361

/-- `A119502(A061579(n))*A119502(n)` -/
def P11242123241326361098.Spec : Prop :=
  ∀ n, P11242123241326361098.a n = A098361 n

end A098361

/-! ## A098361.P5707231405223342763

`A119502(A112367(n))*A119502(n)`
-/

namespace A098361.P5707231405223342763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A112367 n).toNat * A119502 n

end

end A098361.P5707231405223342763

namespace A098361

/-- `A119502(A112367(n))*A119502(n)` -/
def P5707231405223342763.Spec : Prop :=
  ∀ n, P5707231405223342763.a n = A098361 n

end A098361

/-! ## A098361.P6669366479924842082

`A233543(A061579(n))*A233543(n)`
-/

namespace A098361.P6669366479924842082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (A061579 n).toNat * A233543 n

end

end A098361.P6669366479924842082

namespace A098361

/-- `A233543(A061579(n))*A233543(n)` -/
def P6669366479924842082.Spec : Prop :=
  ∀ n, P6669366479924842082.a n = A098361 n

end A098361

/-! ## A098361.P965392735578781765

`A104150(A003056(n)+1)/A007318(n)`
-/

namespace A098361.P965392735578781765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 (A003056 n + 1).toNat : ℚ) / (A007318 n : ℚ)

end

end A098361.P965392735578781765

namespace A098361

/-- `A104150(A003056(n)+1)/A007318(n)` -/
def P965392735578781765.Spec : Prop :=
  ∀ n, P965392735578781765.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P2168595201599858687

`A094587(n-A002262(n))/A007318(n)`
-/

namespace A098361.P2168595201599858687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 ((n : ℤ) - A002262 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A098361.P2168595201599858687

namespace A098361

/-- `A094587(n-A002262(n))/A007318(n)` -/
def P2168595201599858687.Spec : Prop :=
  ∀ n, P2168595201599858687.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P17071421563299839346

`A003056(n)!/A193554(lt[1, A193588(n)])`
-/

namespace A098361.P17071421563299839346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℚ) / (A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ)

end

end A098361.P17071421563299839346

namespace A098361

/-- `A003056(n)!/A193554(lt[1, A193588(n)])` -/
def P17071421563299839346.Spec : Prop :=
  ∀ n, P17071421563299839346.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P10009161928727005752

`A008279(n)/A007318(n)²*A094587(n)`
-/

namespace A098361.P10009161928727005752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n ^ 2 : ℚ) * (A094587 n : ℚ)

end

end A098361.P10009161928727005752

namespace A098361

/-- `A008279(n)/A007318(n)²*A094587(n)` -/
def P10009161928727005752.Spec : Prop :=
  ∀ n, P10009161928727005752.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P5327768878526018323

`A003056(n)!/(A028276(n)-A028263(n))`
-/

namespace A098361.P5327768878526018323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℚ) / (A028276 n - A028263 n : ℚ)

end

end A098361.P5327768878526018323

namespace A098361

/-- `A003056(n)!/(A028276(n)-A028263(n))` -/
def P5327768878526018323.Spec : Prop :=
  ∀ n, P5327768878526018323.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P10776814667995436804

`A003056(n)!/gcd(A124927(n), A124928(n))`
-/

namespace A098361.P10776814667995436804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℚ) / (Int.gcd (A124927 n) (A124928 n) : ℚ)

end

end A098361.P10776814667995436804

namespace A098361

/-- `A003056(n)!/gcd(A124927(n), A124928(n))` -/
def P10776814667995436804.Spec : Prop :=
  ∀ n, P10776814667995436804.a n = (A098361 n : ℚ)

end A098361

/-! ## A098361.P17317681621756584865

`A003056(n)!/C(A003056(n), A002262(n))`
-/

namespace A098361.P17317681621756584865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℚ) / (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℚ)

end

end A098361.P17317681621756584865

namespace A098361

/-- `A003056(n)!/C(A003056(n), A002262(n))` -/
def P17317681621756584865.Spec : Prop :=
  ∀ n, P17317681621756584865.a n = (A098361 n : ℚ)

end A098361

/-!
# A098363: Multiplication table of the digits of e read by antidiagonals.

The programs for A098363, the canonical program `A098363.P12678344714837922846` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098363 has offset 0).

The definition of A098363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098363.P6417077990157004005

`A095711(n+1)*A138115(n+1)`
-/

namespace A098363.P6417077990157004005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (n + 1) * A138115 (n + 1)

end

end A098363.P6417077990157004005

namespace A098363

/-- `A095711(n+1)*A138115(n+1)` -/
def P6417077990157004005.Spec : Prop :=
  ∀ n, P6417077990157004005.a n = A098363 n

end A098363

/-! ## A098363.P6261295567353096339

`A001113(A002262(n))*A095711(n+1)`
-/

namespace A098363.P6261295567353096339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A002262 n).toNat + 1) * A095711 (n + 1)

end

end A098363.P6261295567353096339

namespace A098363

/-- `A001113(A002262(n))*A095711(n+1)` -/
def P6261295567353096339.Spec : Prop :=
  ∀ n, P6261295567353096339.a n = A098363 n

end A098363

/-! ## A098363.P1842980629271588646

`A001113(sqrt(A143844(n)))*A095711(n+1)`
-/

namespace A098363.P1842980629271588646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat + 1) * A095711 (n + 1)

end

end A098363.P1842980629271588646

namespace A098363

/-- `A001113(sqrt(A143844(n)))*A095711(n+1)` -/
def P1842980629271588646.Spec : Prop :=
  ∀ n, P1842980629271588646.a n = A098363 n

end A098363

/-! ## A098363.P8620232966278398635

`A001113(log2(A059268(n)))*A095711(n+1)`
-/

namespace A098363.P8620232966278398635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat + 1) * A095711 (n + 1)

end

end A098363.P8620232966278398635

namespace A098363

/-- `A001113(log2(A059268(n)))*A095711(n+1)` -/
def P8620232966278398635.Spec : Prop :=
  ∀ n, P8620232966278398635.a n = A098363 n

end A098363

/-! ## A098363.P11548162533140927389

`A001113(A002262(n))*A001113(A025581(n))`
-/

namespace A098363.P11548162533140927389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A002262 n).toNat + 1) * A001113 ((A025581 n).toNat + 1)

end

end A098363.P11548162533140927389

namespace A098363

/-- `A001113(A002262(n))*A001113(A025581(n))` -/
def P11548162533140927389.Spec : Prop :=
  ∀ n, P11548162533140927389.a n = A098363 n

end A098363

/-! ## A098363.P13020290541954238590

`A095711(n+1)*A095711(∑[char[∑[n]]]²-n)`
-/

namespace A098363.P13020290541954238590
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (n + 1) * A095711 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A098363.P13020290541954238590

namespace A098363

/-- `A095711(n+1)*A095711(∑[char[∑[n]]]²-n)` -/
def P13020290541954238590.Spec : Prop :=
  ∀ n, P13020290541954238590.a n = A098363 n

end A098363

/-! ## A098363.P12678344714837922846

`A138115(A038722(n+1))*A138115(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098363

/-- `A138115(A038722(n+1))*A138115(n+1)` -/
def P12678344714837922846.Spec : Prop :=
  ∀ n, P12678344714837922846.a n = A098363 n

theorem P12678344714837922846.correct : P12678344714837922846.Spec := by
  intro n
  simp only [A098363]

end A098363

/-! ## A098363.P5488099197266084354

`A001113(A025581(n))*A095711(A038722(n+1))`
-/

namespace A098363.P5488099197266084354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A025581 n).toNat + 1) * A095711 (A038722 (n + 1)).toNat

end

end A098363.P5488099197266084354

namespace A098363

/-- `A001113(A025581(n))*A095711(A038722(n+1))` -/
def P5488099197266084354.Spec : Prop :=
  ∀ n, P5488099197266084354.a n = A098363 n

end A098363

/-! ## A098363.P13573930667617000542

`A138115(n+1)*A138115(A278818(n))`
-/

namespace A098363.P13573930667617000542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (n + 1) * A138115 (A278818 n).toNat

end

end A098363.P13573930667617000542

namespace A098363

/-- `A138115(n+1)*A138115(A278818(n))` -/
def P13573930667617000542.Spec : Prop :=
  ∀ n, P13573930667617000542.a n = A098363 n

end A098363

/-! ## A098363.P2796703043538365827

`A001113(A003984(n))*A104691(A157454(n+1))`
-/

namespace A098363.P2796703043538365827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A003984 n).toNat + 1) * A104691 (A157454 (n + 1)).toNat

end

end A098363.P2796703043538365827

namespace A098363

/-- `A001113(A003984(n))*A104691(A157454(n+1))` -/
def P2796703043538365827.Spec : Prop :=
  ∀ n, P2796703043538365827.a n = A098363 n

end A098363

/-! ## A098363.P11429925404424919559

`A001113(A002262(n))*A104691(A099375(n))`
-/

namespace A098363.P11429925404424919559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A002262 n).toNat + 1) * A104691 (A099375 n).toNat

end

end A098363.P11429925404424919559

namespace A098363

/-- `A001113(A002262(n))*A104691(A099375(n))` -/
def P11429925404424919559.Spec : Prop :=
  ∀ n, P11429925404424919559.a n = A098363 n

end A098363

/-! ## A098363.P15284959287696230975

`A001113(A002260(n+1)-1)*A104691(A099375(n))`
-/

namespace A098363.P15284959287696230975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A002260 (n + 1) - 1).toNat + 1) * A104691 (A099375 n).toNat

end

end A098363.P15284959287696230975

namespace A098363

/-- `A001113(A002260(n+1)-1)*A104691(A099375(n))` -/
def P15284959287696230975.Spec : Prop :=
  ∀ n, P15284959287696230975.a n = A098363 n

end A098363

/-!
# A098364: Multiplication table of the digits of the square root of 2 read by antidiagonals.

The programs for A098364, there is no canonical definition to state claims against.
-/

/-! ## A098364.P18134047707332054848

`A120731(A208233(n+1))*A120731(A208234(n+1))`
-/

namespace A098364.P18134047707332054848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((A208233 (n + 1)).toNat + 1) * A120731 ((A208234 (n + 1)).toNat + 1)

end

end A098364.P18134047707332054848

/-! ## A098364.P15802637364445042163

`∏{e}[A036561(n), A002193(#)]`
-/

namespace A098364.P15802637364445042163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002193 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098364.P15802637364445042163

/-! ## A098364.P13484649701286886752

`∏{e}[A036561(n), A014176(#)]`
-/

namespace A098364.P13484649701286886752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014176 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098364.P13484649701286886752

/-! ## A098364.P7979041368065396019

`∏{e}[A175840(n), A002193(#)]`
-/

namespace A098364.P7979041368065396019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002193 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098364.P7979041368065396019

/-! ## A098364.P9374989284570183148

`∏{e}[A175840(n), A014176(#)]`
-/

namespace A098364.P9374989284570183148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014176 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098364.P9374989284570183148

/-!
# A098365: Sums of two squares and divisible by 17.

The programs for A098365, the canonical program `A098365.P15550866543655754186` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098365 has offset 1).

The definition of A098365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098365.P15550866543655754186

`∑[17*A256435(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A098365

/-- `∑[17*A256435(n+1)]` -/
def P15550866543655754186.Spec : Prop :=
  ∀ n, P15550866543655754186.a n = A098365 (n + 1)

theorem P15550866543655754186.correct : P15550866543655754186.Spec := by
  intro n
  simp only [A098365, Nat.add_sub_cancel]

end A098365

/-! ## A098365.P11290918396278650453

`17*A001481(n+2)`
-/

namespace A098365.P11290918396278650453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A001481 (n + 2)

end

end A098365.P11290918396278650453

namespace A098365

/-- `17*A001481(n+2)` -/
def P11290918396278650453.Spec : Prop :=
  ∀ n, P11290918396278650453.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P6042925342449297853

`Δ[17*A173256(n+1)]`
-/

namespace A098365.P6042925342449297853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A173256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098365.P6042925342449297853

namespace A098365

/-- `Δ[17*A173256(n+1)]` -/
def P6042925342449297853.Spec : Prop :=
  ∀ n, P6042925342449297853.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P2781773401721313716

`17*(A166687(n+2)-1)`
-/

namespace A098365.P2781773401721313716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (A166687 (n + 2) - 1)

end

end A098365.P2781773401721313716

namespace A098365

/-- `17*(A166687(n+2)-1)` -/
def P2781773401721313716.Spec : Prop :=
  ∀ n, P2781773401721313716.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P2845970475444852583

`A128106(n+2)+A128106(n+2)+A098961(n+1)`
-/

namespace A098365.P2845970475444852583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 2) + (A128106 (n + 2) + A098961 (n + 1))

end

end A098365.P2845970475444852583

namespace A098365

/-- `A128106(n+2)+A128106(n+2)+A098961(n+1)` -/
def P2845970475444852583.Spec : Prop :=
  ∀ n, P2845970475444852583.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P8232712232176003038

`17*lt[1, A004018(n)]`
-/

namespace A098365.P8232712232176003038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A098365.P8232712232176003038

namespace A098365

/-- `17*lt[1, A004018(n)]` -/
def P8232712232176003038.Spec : Prop :=
  ∀ n, (P8232712232176003038.a n : ℤ) = A098365 (n + 1)

end A098365

/-! ## A098365.P16626417055507124749

`A008599(A001481(n+2))`
-/

namespace A098365.P16626417055507124749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A001481 (n + 2)).toNat

end

end A098365.P16626417055507124749

namespace A098365

/-- `A008599(A001481(n+2))` -/
def P16626417055507124749.Spec : Prop :=
  ∀ n, P16626417055507124749.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P5673577153676941165

`filter[A008599(n+1), A353814(#)]`
-/

namespace A098365.P5673577153676941165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098365.P5673577153676941165

namespace A098365

/-- `filter[A008599(n+1), A353814(#)]` -/
def P5673577153676941165.Spec : Prop :=
  ∀ n, P5673577153676941165.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P11355468168936457597

`A317317(A128106(n+2))`
-/

namespace A098365.P11355468168936457597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317317 (A128106 (n + 2)).toNat

end

end A098365.P11355468168936457597

namespace A098365

/-- `A317317(A128106(n+2))` -/
def P11355468168936457597.Spec : Prop :=
  ∀ n, P11355468168936457597.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P15876438341930533254

`filter[A008599(n+1), A229062(#)]`
-/

namespace A098365.P15876438341930533254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A098365.P15876438341930533254

namespace A098365

/-- `filter[A008599(n+1), A229062(#)]` -/
def P15876438341930533254.Spec : Prop :=
  ∀ n, P15876438341930533254.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P6033492847635132383

`filter[A315693(3*n), A353814(#)]`
-/

namespace A098365.P6033492847635132383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098365.P6033492847635132383

namespace A098365

/-- `filter[A315693(3*n), A353814(#)]` -/
def P6033492847635132383.Spec : Prop :=
  ∀ n, P6033492847635132383.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P10152107486019934532

`∩[A004431(n+1), A008599(n)]`
-/

namespace A098365.P10152107486019934532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098365.P10152107486019934532

namespace A098365

/-- `∩[A004431(n+1), A008599(n)]` -/
def P10152107486019934532.Spec : Prop :=
  ∀ n, (P10152107486019934532.a n : ℤ) = A098365 (n + 1)

end A098365

/-! ## A098365.P14241123279042865749

`∩[A000404(n+1), A008599(n)]`
-/

namespace A098365.P14241123279042865749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098365.P14241123279042865749

namespace A098365

/-- `∩[A000404(n+1), A008599(n)]` -/
def P14241123279042865749.Spec : Prop :=
  ∀ n, (P14241123279042865749.a n : ℤ) = A098365 (n + 1)

end A098365

/-! ## A098365.P4116393244835408714

`∩[A001983(n+1), A008599(n)]`
-/

namespace A098365.P4116393244835408714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098365.P4116393244835408714

namespace A098365

/-- `∩[A001983(n+1), A008599(n)]` -/
def P4116393244835408714.Spec : Prop :=
  ∀ n, (P4116393244835408714.a n : ℤ) = A098365 (n + 1)

end A098365

/-! ## A098365.P8685504791609591407

`filter[A315703(3*n), A353814(#)]`
-/

namespace A098365.P8685504791609591407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098365.P8685504791609591407

namespace A098365

/-- `filter[A315703(3*n), A353814(#)]` -/
def P8685504791609591407.Spec : Prop :=
  ∀ n, P8685504791609591407.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P4880785956975219411

`filter[A314240(3*n), A353814(#)]`
-/

namespace A098365.P4880785956975219411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098365.P4880785956975219411

namespace A098365

/-- `filter[A314240(3*n), A353814(#)]` -/
def P4880785956975219411.Spec : Prop :=
  ∀ n, P4880785956975219411.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P13832559219386205989

`filter[A314247(3*n), A353814(#)]`
-/

namespace A098365.P13832559219386205989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098365.P13832559219386205989

namespace A098365

/-- `filter[A314247(3*n), A353814(#)]` -/
def P13832559219386205989.Spec : Prop :=
  ∀ n, P13832559219386205989.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P11178936834384590946

`filter[A314222(3*n), A353814(#)]`
-/

namespace A098365.P11178936834384590946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098365.P11178936834384590946

namespace A098365

/-- `filter[A314222(3*n), A353814(#)]` -/
def P11178936834384590946.Spec : Prop :=
  ∀ n, P11178936834384590946.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P13061642607776040211

`filter[A315538(3*n), A353814(#)]`
-/

namespace A098365.P13061642607776040211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098365.P13061642607776040211

namespace A098365

/-- `filter[A315538(3*n), A353814(#)]` -/
def P13061642607776040211.Spec : Prop :=
  ∀ n, P13061642607776040211.a n = A098365 (n + 1)

end A098365

/-! ## A098365.P6853809923884342076

`filter[A315540(3*n), A353814(#)]`
-/

namespace A098365.P6853809923884342076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A098365.P6853809923884342076

namespace A098365

/-- `filter[A315540(3*n), A353814(#)]` -/
def P6853809923884342076.Spec : Prop :=
  ∀ n, P6853809923884342076.a n = A098365 (n + 1)

end A098365

/-!
# A098368: Multiplication table of the digits of the Euler-Mascheroni constant read by antidiagonals.

The programs for A098368, the canonical program `A098368.P456142889449428924` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098368 has offset 0).

The definition of A098368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098368.P9940850278186748592

`A001620(A025581(n))*A139261(n+1)`
-/

namespace A098368.P9940850278186748592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A025581 n).toNat * A139261 (n + 1)

end

end A098368.P9940850278186748592

namespace A098368

/-- `A001620(A025581(n))*A139261(n+1)` -/
def P9940850278186748592.Spec : Prop :=
  ∀ n, P9940850278186748592.a n = A098368 n

end A098368

/-! ## A098368.P12543892052751128835

`A001620(A002262(n))*A001620(A025581(n))`
-/

namespace A098368.P12543892052751128835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A002262 n).toNat * A001620 (A025581 n).toNat

end

end A098368.P12543892052751128835

namespace A098368

/-- `A001620(A002262(n))*A001620(A025581(n))` -/
def P12543892052751128835.Spec : Prop :=
  ∀ n, P12543892052751128835.a n = A098368 n

end A098368

/-! ## A098368.P456142889449428924

`A139261(A038722(n+1))*A139261(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098368

/-- `A139261(A038722(n+1))*A139261(n+1)` -/
def P456142889449428924.Spec : Prop :=
  ∀ n, P456142889449428924.a n = A098368 n

theorem P456142889449428924.correct : P456142889449428924.Spec := by
  intro n
  simp only [A098368]

end A098368

/-! ## A098368.P12751637077332105142

`A139261(n+1)*A139261(A061579(n)+1)`
-/

namespace A098368.P12751637077332105142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (n + 1) * A139261 (A061579 n + 1).toNat

end

end A098368.P12751637077332105142

namespace A098368

/-- `A139261(n+1)*A139261(A061579(n)+1)` -/
def P12751637077332105142.Spec : Prop :=
  ∀ n, P12751637077332105142.a n = A098368 n

end A098368

/-! ## A098368.P5434030897355128821

`A139261(n+1)*A139261(A057944(n)+A004736(n+1))`
-/

namespace A098368.P5434030897355128821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (n + 1) * A139261 (A057944 n + A004736 (n + 1)).toNat

end

end A098368.P5434030897355128821

namespace A098368

/-- `A139261(n+1)*A139261(A057944(n)+A004736(n+1))` -/
def P5434030897355128821.Spec : Prop :=
  ∀ n, P5434030897355128821.a n = A098368 n

end A098368

/-! ## A098368.P16105089843228162439

`A139261(n+1)*A139261(A278818(n))`
-/

namespace A098368.P16105089843228162439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (n + 1) * A139261 (A278818 n).toNat

end

end A098368.P16105089843228162439

namespace A098368

/-- `A139261(n+1)*A139261(A278818(n))` -/
def P16105089843228162439.Spec : Prop :=
  ∀ n, P16105089843228162439.a n = A098368 n

end A098368

/-! ## A098368.P11909672724152808965

`A001620(A003984(n))*A139259(n+1)`
-/

namespace A098368.P11909672724152808965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A003984 n).toNat * A139259 (n + 1)

end

end A098368.P11909672724152808965

namespace A098368

/-- `A001620(A003984(n))*A139259(n+1)` -/
def P11909672724152808965.Spec : Prop :=
  ∀ n, P11909672724152808965.a n = A098368 n

end A098368

/-!
# A098369: Multiplication table of the digits of the golden ratio read by antidiagonals.

The programs for A098369, the canonical program `A098369.P15697729695012141091` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098369 has offset 0).

The definition of A098369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098369.P6723519181663999924

`A095713(n+1)*A138116(n+1)`
-/

namespace A098369.P6723519181663999924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (n + 1) * A138116 (n + 1)

end

end A098369.P6723519181663999924

namespace A098369

/-- `A095713(n+1)*A138116(n+1)` -/
def P6723519181663999924.Spec : Prop :=
  ∀ n, P6723519181663999924.a n = A098369 n

end A098369

/-! ## A098369.P7381156856046553641

`A001622(A002262(n))*A095713(n+1)`
-/

namespace A098369.P7381156856046553641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A002262 n).toNat + 1) * A095713 (n + 1)

end

end A098369.P7381156856046553641

namespace A098369

/-- `A001622(A002262(n))*A095713(n+1)` -/
def P7381156856046553641.Spec : Prop :=
  ∀ n, P7381156856046553641.a n = A098369 n

end A098369

/-! ## A098369.P1227443981774286075

`A001622(sqrt(A143844(n)))*A095713(n+1)`
-/

namespace A098369.P1227443981774286075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat + 1) * A095713 (n + 1)

end

end A098369.P1227443981774286075

namespace A098369

/-- `A001622(sqrt(A143844(n)))*A095713(n+1)` -/
def P1227443981774286075.Spec : Prop :=
  ∀ n, P1227443981774286075.a n = A098369 n

end A098369

/-! ## A098369.P7338641436147592236

`A001622(log2(A059268(n)))*A095713(n+1)`
-/

namespace A098369.P7338641436147592236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat + 1) * A095713 (n + 1)

end

end A098369.P7338641436147592236

namespace A098369

/-- `A001622(log2(A059268(n)))*A095713(n+1)` -/
def P7338641436147592236.Spec : Prop :=
  ∀ n, P7338641436147592236.a n = A098369 n

end A098369

/-! ## A098369.P16771867032212252419

`A001622(A002262(n))*A001622(A025581(n))`
-/

namespace A098369.P16771867032212252419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A002262 n).toNat + 1) * A001622 ((A025581 n).toNat + 1)

end

end A098369.P16771867032212252419

namespace A098369

/-- `A001622(A002262(n))*A001622(A025581(n))` -/
def P16771867032212252419.Spec : Prop :=
  ∀ n, P16771867032212252419.a n = A098369 n

end A098369

/-! ## A098369.P18181666230743296176

`A001622(A002260(n+1)-1)*A001622(A025581(n))`
-/

namespace A098369.P18181666230743296176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A002260 (n + 1) - 1).toNat + 1) * A001622 ((A025581 n).toNat + 1)

end

end A098369.P18181666230743296176

namespace A098369

/-- `A001622(A002260(n+1)-1)*A001622(A025581(n))` -/
def P18181666230743296176.Spec : Prop :=
  ∀ n, P18181666230743296176.a n = A098369 n

end A098369

/-! ## A098369.P15697729695012141091

`A095713(A038722(n+1))*A095713(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098369

/-- `A095713(A038722(n+1))*A095713(n+1)` -/
def P15697729695012141091.Spec : Prop :=
  ∀ n, P15697729695012141091.a n = A098369 n

theorem P15697729695012141091.correct : P15697729695012141091.Spec := by
  intro n
  simp only [A098369]

end A098369

/-! ## A098369.P1459025697535220004

`A095713(n+1)*A095713(A061579(n)+1)`
-/

namespace A098369.P1459025697535220004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (n + 1) * A095713 (A061579 n + 1).toNat

end

end A098369.P1459025697535220004

namespace A098369

/-- `A095713(n+1)*A095713(A061579(n)+1)` -/
def P1459025697535220004.Spec : Prop :=
  ∀ n, P1459025697535220004.a n = A098369 n

end A098369

/-! ## A098369.P2042957348642168036

`A138116(A038722(n+1))*A138116(n+1)`
-/

namespace A098369.P2042957348642168036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (A038722 (n + 1)).toNat * A138116 (n + 1)

end

end A098369.P2042957348642168036

namespace A098369

/-- `A138116(A038722(n+1))*A138116(n+1)` -/
def P2042957348642168036.Spec : Prop :=
  ∀ n, P2042957348642168036.a n = A098369 n

end A098369

/-! ## A098369.P16121761310181613302

`A001622(A025581(n))*A095713(A038722(n+1))`
-/

namespace A098369.P16121761310181613302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A025581 n).toNat + 1) * A095713 (A038722 (n + 1)).toNat

end

end A098369.P16121761310181613302

namespace A098369

/-- `A001622(A025581(n))*A095713(A038722(n+1))` -/
def P16121761310181613302.Spec : Prop :=
  ∀ n, P16121761310181613302.a n = A098369 n

end A098369

/-! ## A098369.P16607982973050130500

`A138116(n+1)*A138116(A278818(n))`
-/

namespace A098369.P16607982973050130500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (n + 1) * A138116 (A278818 n).toNat

end

end A098369.P16607982973050130500

namespace A098369

/-- `A138116(n+1)*A138116(A278818(n))` -/
def P16607982973050130500.Spec : Prop :=
  ∀ n, P16607982973050130500.a n = A098369 n

end A098369

/-! ## A098369.P7766816604468190929

`A095713(n+1)*A138073(A004202(n+1))`
-/

namespace A098369.P7766816604468190929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (n + 1) * A138073 (A004202 (n + 1)).toNat

end

end A098369.P7766816604468190929

namespace A098369

/-- `A095713(n+1)*A138073(A004202(n+1))` -/
def P7766816604468190929.Spec : Prop :=
  ∀ n, P7766816604468190929.a n = A098369 n

end A098369

/-! ## A098369.P17726097871372867772

`A001622(A025581(n))*A138073(A004202(n+1))`
-/

namespace A098369.P17726097871372867772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A025581 n).toNat + 1) * A138073 (A004202 (n + 1)).toNat

end

end A098369.P17726097871372867772

namespace A098369

/-- `A001622(A025581(n))*A138073(A004202(n+1))` -/
def P17726097871372867772.Spec : Prop :=
  ∀ n, P17726097871372867772.a n = A098369 n

end A098369

/-! ## A098369.P3954244347039768533

`∏{e}[A036561(n), A001622(#)]`
-/

namespace A098369.P3954244347039768533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001622 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098369.P3954244347039768533

namespace A098369

/-- `∏{e}[A036561(n), A001622(#)]` -/
def P3954244347039768533.Spec : Prop :=
  ∀ n, P3954244347039768533.a n = A098369 n

end A098369

/-! ## A098369.P2112925331826918166

`∏{e}[A036561(n), A104457(#)]`
-/

namespace A098369.P2112925331826918166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A104457 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098369.P2112925331826918166

namespace A098369

/-- `∏{e}[A036561(n), A104457(#)]` -/
def P2112925331826918166.Spec : Prop :=
  ∀ n, P2112925331826918166.a n = A098369 n

end A098369

/-! ## A098369.P16425477805215850274

`∏{e}[A036561(n), A296184(#)]`
-/

namespace A098369.P16425477805215850274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A296184 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098369.P16425477805215850274

namespace A098369

/-- `∏{e}[A036561(n), A296184(#)]` -/
def P16425477805215850274.Spec : Prop :=
  ∀ n, P16425477805215850274.a n = A098369 n

end A098369

/-!
# A098370: Multiplication table of the binary digits of the natural numbers read by antidiagonals.

The programs for A098370, there is no canonical definition to state claims against.
-/

/-! ## A098370.P6713399773397085223

`A030190(A002260(n+1))*A030190(A004736(n+1))`
-/

namespace A098370.P6713399773397085223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A002260 (n + 1)).toNat * A030190 (A004736 (n + 1)).toNat

end

end A098370.P6713399773397085223

/-! ## A098370.P5891990849824894387

`∏{e}[A036561(n), A030190(#+1)]`
-/

namespace A098370.P5891990849824894387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030190 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098370.P5891990849824894387

/-! ## A098370.P6628732598966565357

`∏{e}[A036561(n), A030302(#+1)]`
-/

namespace A098370.P6628732598966565357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030302 (Nat.factorization (f1 n).natAbs p + 1)

end

end A098370.P6628732598966565357

/-! ## A098370.P16453824308337681139

`∏{p}[A098350(n+1), A137893(A006800(#))]`
-/

namespace A098370.P16453824308337681139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A137893 (A006800 p).toNat

end

end A098370.P16453824308337681139

/-! ## A098370.P13283336218891577718

`∏{e}[A232646(n+1), A190897(#)]`
-/

namespace A098370.P13283336218891577718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A190897 (Nat.factorization (f1 n).natAbs p)

end

end A098370.P13283336218891577718

/-! ## A098370.P8669737205283538252

`∏{e}[A232646(n+1), A321921(#)]`
-/

namespace A098370.P8669737205283538252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A321921 (Nat.factorization (f1 n).natAbs p)

end

end A098370.P8669737205283538252

/-!
# A098371: a(1) = 1; for n > 1, a(n) is the number of i in range 1..n-1 for which gcd(n, a(i)) = Max_{k=1..n-1} gcd(n, a(k)).

The programs for A098371, there is no canonical definition to state claims against.
-/

/-! ## A098371.P14761509054684495095

`xor(A052417(A120621(n)), A070777(n+1))`
-/

namespace A098371.P14761509054684495095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052417 (A120621 n).toNat) (A070777 (n + 1))

end

end A098371.P14761509054684495095

/-! ## A098371.P17439115544433174692

`xor(A052417(A120621(n)), A173557(n+1))`
-/

namespace A098371.P17439115544433174692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052417 (A120621 n).toNat) (A173557 (n + 1))

end

end A098371.P17439115544433174692

/-! ## A098371.P6770479409971505344

`A076686(A006530(n+1)^A342413(n+1))`
-/

namespace A098371.P6770479409971505344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (SequenceMachineLib.roundAway ((A006530 (n + 1) : ℚ) ^ (A342413 (n + 1) : ℤ))).toNat

end

end A098371.P6770479409971505344

/-! ## A098371.P15788950660183533752

`A076686(A082725(n+1)^A342413(n+1))`
-/

namespace A098371.P15788950660183533752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (SequenceMachineLib.roundAway ((A082725 (n + 1) : ℚ) ^ (A342413 (n + 1) : ℤ))).toNat

end

end A098371.P15788950660183533752

/-! ## A098371.P11859928041964434486

`A076686(A082725(n+1)^A342416(n+1))`
-/

namespace A098371.P11859928041964434486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (SequenceMachineLib.roundAway ((A082725 (n + 1) : ℚ) ^ (A342416 (n + 1) : ℤ))).toNat

end

end A098371.P11859928041964434486

/-!
# A098372: a(n) = Max_{k=1..n-1} gcd(n, A098371(k)).

The programs for A098372, there is no canonical definition to state claims against.
-/

/-! ## A098372.P5540577229091973522

`gcd(A007956(n+1), A053451(A304161(n+1)))`
-/

namespace A098372.P5540577229091973522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007956 (n + 1)) (A053451 (A304161 (n + 1)).toNat)

end

end A098372.P5540577229091973522

/-! ## A098372.P9210640759614357386

`gcd((n+1)^(∑{e}[n+1, #]-1), A000120(A100195(2*n+5)))`
-/

namespace A098372.P9210640759614357386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ))) (A000120 (A100195 (2 * n + 5)).toNat)

end

end A098372.P9210640759614357386

/-! ## A098372.P9906492333037403482

`A087990(A083722(n+1))`
-/

namespace A098372.P9906492333037403482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (A083722 (n + 1)).toNat

end

end A098372.P9906492333037403482

/-! ## A098372.P7826521403166169780

`gcd(n+1, A001223(A080107(n)))`
-/

namespace A098372.P7826521403166169780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001223 (A080107 n).toNat)

end

end A098372.P7826521403166169780

/-! ## A098372.P12252491378356753418

`gcd(A002322(A088209(n)), A326478(n+1))`
-/

namespace A098372.P12252491378356753418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002322 (A088209 n).toNat) (A326478 (n + 1))

end

end A098372.P12252491378356753418

/-!
# A098373: Smallest m such that A098371(m) = n.

The programs for A098373, there is no canonical definition to state claims against.
-/

/-! ## A098373.P6105395605387366728

`A345237(A003606(n+1))`
-/

namespace A098373.P6105395605387366728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345237 (A003606 (n + 1)).toNat

end

end A098373.P6105395605387366728

/-!
# A098374: Numbers m such that A098371(m) = 1.

The programs for A098374, there is no canonical definition to state claims against.
-/

/-! ## A098374.P2141230352929172767

`eq[1, A098371(n+1)]+1`
-/

namespace A098374.P2141230352929172767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098374.P2141230352929172767

/-! ## A098374.P14243023605599811084

`record[n/A098371(xor(1, xor(1, n))+1)]+1`
-/

namespace A098374.P14243023605599811084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A098371 (Nat.xor 1 (Nat.xor 1 n) + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A098374.P14243023605599811084

/-! ## A098374.P13129687979806178446

`record[(floor(n/2)+1)/A098371(floor(n/2)+1)]`
-/

namespace A098374.P13129687979806178446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1 : ℚ) / (A098371 (⌊(n : ℚ) / 2⌋ + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098374.P13129687979806178446

/-! ## A098374.P5394032102336111303

`record[round(n/ϕ)/A098371(round(n/ϕ)+1)]+1`
-/

namespace A098374.P5394032102336111303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio) : ℚ) / (A098371 (SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A098374.P5394032102336111303

/-! ## A098374.P17943075903961033708

`A000027(record[(n+1)/A098371(n+1)])`
-/

namespace A098374.P17943075903961033708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A098371 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A098374.P17943075903961033708

/-! ## A098374.P9315881519107816272

`A028310(record[(n+1)/A098371(n+1)])`
-/

namespace A098374.P9315881519107816272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A098371 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A098374.P9315881519107816272

/-! ## A098374.P12338184310921465618

`A023444(record[(n+3)/A098371(n+1)])`
-/

namespace A098374.P12338184310921465618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A098371 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A098374.P12338184310921465618

/-! ## A098374.P12313432638080186587

`A008619(record[2*n/A098371(n+1)])`
-/

namespace A098374.P12313432638080186587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A098371 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A098374.P12313432638080186587

/-! ## A098374.P16563748027608436741

`record[root(A000027(n+1), A098371(n+1))]`
-/

namespace A098374.P16563748027608436741
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A098371 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098374.P16563748027608436741

/-! ## A098374.P14633047669999555101

`eq[A054977(n), A098371(A028310(n))]`
-/

namespace A098374.P14633047669999555101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098371 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098374.P14633047669999555101

/-!
# A098376: Right edge T(n,0) of the triangle A097883.

The programs for A098376, there is no canonical definition to state claims against.
-/

/-! ## A098376.P8275506332020405932

`A097883(∑[n])`
-/

namespace A098376.P8275506332020405932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098376.P8275506332020405932

/-! ## A098376.P10013819471472480496

`and(-1, A097883(A000217(n)))`
-/

namespace A098376.P10013819471472480496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A097883 (A000217 n).toNat)

end

end A098376.P10013819471472480496

/-! ## A098376.P1417349917642589178

`A097883(C(n+1, 2))%A097803(n)`
-/

namespace A098376.P1417349917642589178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097883 (Nat.choose (n + 1) 2)) (A097803 n)

end

end A098376.P1417349917642589178

/-! ## A098376.P8997087183434213098

`A097883((n²+n)/2)%A032810(n+1)`
-/

namespace A098376.P8997087183434213098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097883 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A032810 (n + 1))

end

end A098376.P8997087183434213098

/-! ## A098376.P10921843052925192968

`A097883(C(n+1, 2))+A000007(2*(n+1))`
-/

namespace A098376.P10921843052925192968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097883 (Nat.choose (n + 1) 2) + A000007 (2 * (n + 1))

end

end A098376.P10921843052925192968

/-! ## A098376.P8792874063955233269

`A000027(A097883(A000217(n)))`
-/

namespace A098376.P8792874063955233269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A097883 (A000217 n).toNat).toNat

end

end A098376.P8792874063955233269

/-! ## A098376.P6684125188302996789

`or(A097883(A000217(n)), A185014(n))`
-/

namespace A098376.P6684125188302996789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097883 (A000217 n).toNat) (A185014 n)

end

end A098376.P6684125188302996789

/-! ## A098376.P519580871059260796

`A097883(A000217(n))%A000041(n+3)`
-/

namespace A098376.P519580871059260796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097883 (A000217 n).toNat) (A000041 (n + 3))

end

end A098376.P519580871059260796

/-!
# A098377: Left edge T(n,n) or the main diagonal of the triangle A097883.

The programs for A098377, there is no canonical definition to state claims against.
-/

/-! ## A098377.P2783560214211498602

`A097883(∑[n]+n)`
-/

namespace A098377.P2783560214211498602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097883 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A098377.P2783560214211498602

/-! ## A098377.P8611180210669168118

`and(-1, A097883(A000096(n)))`
-/

namespace A098377.P8611180210669168118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A097883 (A000096 n).toNat)

end

end A098377.P8611180210669168118

/-! ## A098377.P7138792108670142955

`A097883(A000096(n))%A002146(n)`
-/

namespace A098377.P7138792108670142955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097883 (A000096 n).toNat) (A002146 n)

end

end A098377.P7138792108670142955

/-! ## A098377.P8429147191121044968

`gcd(A097883(A000096(n)), A169585(n))`
-/

namespace A098377.P8429147191121044968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097883 (A000096 n).toNat) (A169585 n)

end

end A098377.P8429147191121044968

/-! ## A098377.P2585838509123082891

`or(A097883(A000096(n)), A369054(n))`
-/

namespace A098377.P2585838509123082891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097883 (A000096 n).toNat) (A369054 n)

end

end A098377.P2585838509123082891

/-! ## A098377.P2453717348744462972

`A007318(∑[n])*A097883(A000096(n))`
-/

namespace A098377.P2453717348744462972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A097883 (A000096 n).toNat

end

end A098377.P2453717348744462972

/-! ## A098377.P7488213663422738913

`A097883(A000096(n))+A000007(n+1)`
-/

namespace A098377.P7488213663422738913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097883 (A000096 n).toNat + A000007 (n + 1)

end

end A098377.P7488213663422738913

/-! ## A098377.P10601002828196592040

`A097883(A000096(n))+A000122(4*n+2)`
-/

namespace A098377.P10601002828196592040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097883 (A000096 n).toNat + A000122 (4 * n + 2)

end

end A098377.P10601002828196592040

/-!
# A098378: Number of characters needed to write number n in the traditional Ethiopic (Geez) number system.

The programs for A098378, the canonical program `A098378.P9870539852526309346` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098378 has offset 1).

The definition of A098378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098378.P9870539852526309346

`∑{digits}[n+1, round(atan(#))]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098378

/-- `∑{digits}[n+1, round(atan(#))]` -/
def P9870539852526309346.Spec : Prop :=
  ∀ n, P9870539852526309346.a n = A098378 (n + 1)

theorem P9870539852526309346.correct : P9870539852526309346.Spec := by
  intro n
  simp only [A098378, Nat.add_sub_cancel]

end A098378

/-!
# A098379: Maximum entry in the n-th row of the triangle A097883.

The programs for A098379, there is no canonical definition to state claims against.
-/

/-! ## A098379.P977221335067129851

`∑[A301855(∑[A286407(n)])]`
-/

namespace A098379.P977221335067129851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098379.P977221335067129851

/-! ## A098379.P5973737555308319838

`∑[∏{e}[A160740(n)+A058798(n), #+1]]`
-/

namespace A098379.P5973737555308319838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160740 n + A058798 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098379.P5973737555308319838

/-! ## A098379.P18126206239589168800

`∑[A000005(A006318(n)+A000129(n))]`
-/

namespace A098379.P18126206239589168800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006318 n + A000129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098379.P18126206239589168800

/-! ## A098379.P10962198343501021215

`or(A088803(A032555(n+1)), A337377(n))`
-/

namespace A098379.P10962198343501021215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088803 (A032555 (n + 1)).toNat) (A337377 n)

end

end A098379.P10962198343501021215

/-!
# A098380: Minimum entry in the n-th row of the triangle A097883.

The programs for A098380, there is no canonical definition to state claims against.
-/

/-! ## A098380.P10592676486727236526

`∑[A163107(A319616(n))]`
-/

namespace A098380.P10592676486727236526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163107 (A319616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098380.P10592676486727236526

/-! ## A098380.P511816343086194710

`A012265(A136003(n+1)+A001359(n+1))`
-/

namespace A098380.P511816343086194710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A136003 (n + 1) + A001359 (n + 1)).toNat

end

end A098380.P511816343086194710

/-! ## A098380.P14566115127823931427

`record[A000005(A098011(n+1)*A101229(n+1))]`
-/

namespace A098380.P14566115127823931427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A098011 (n + 1) * A101229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098380.P14566115127823931427

/-! ## A098380.P6429324405781519689

`∑[A320111(∑[A007837(n)])]`
-/

namespace A098380.P6429324405781519689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098380.P6429324405781519689

/-! ## A098380.P14724024991778892888

`∑[A302242(A119373(n))+1]`
-/

namespace A098380.P14724024991778892888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A119373 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098380.P14724024991778892888

/-!
# A098381: Difference between the number of odd entries and the number of even entries of the n-th row of the triangle A097883.

The programs for A098381, there is no canonical definition to state claims against.
-/

/-! ## A098381.P4462556876991155205

`Δ[A098382(n*a(gcd(n, n+1)))]` with `a(0)=0, a(1)=1`
-/

namespace A098381.P4462556876991155205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A098382 ((n : ℤ) * f1 (Nat.gcd n (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098381.P4462556876991155205

/-! ## A098381.P8589092716623765893

`Δ[A098382(round(sqrt(n²+1)))%(n+1)]`
-/

namespace A098381.P8589092716623765893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098382 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098381.P8589092716623765893

/-! ## A098381.P7848514429433273440

`A000007(n)+Δ[A098382(A233583(n+1))]`
-/

namespace A098381.P7848514429433273440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098382 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A098381.P7848514429433273440

/-! ## A098381.P7523065054591057858

`A151909(n)+Δ[A098382(A233583(n+1))]`
-/

namespace A098381.P7523065054591057858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098382 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + (f1 (n + 1) - f1 n)

end

end A098381.P7523065054591057858

/-! ## A098381.P10488165307217354397

`Δ[A098382(A233583(n+1))-A057428(n)]`
-/

namespace A098381.P10488165307217354397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098382 (A233583 (n + 1)).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098381.P10488165307217354397

/-! ## A098381.P1884384231416010577

`Δ[A098382(A233583(n+1))]-(n-A028310(n))`
-/

namespace A098381.P1884384231416010577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098382 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - A028310 n)

end

end A098381.P1884384231416010577

/-! ## A098381.P14904748181794353354

`A098382(n+1)+A000007(n)-A098382(A233583(n+1))`
-/

namespace A098381.P14904748181794353354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098382 (n + 1) + (A000007 n - A098382 (A233583 (n + 1)).toNat)

end

end A098381.P14904748181794353354

/-! ## A098381.P12797144541397196244

`A098382(n+1)+A151909(n)-A098382(A233583(n+1))`
-/

namespace A098381.P12797144541397196244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098382 (n + 1) + (A151909 n - A098382 (A233583 (n + 1)).toNat)

end

end A098381.P12797144541397196244

/-! ## A098381.P18338892393486763172

`A098382(n+1)+A057428(n)*A098382(A233583(n+1))`
-/

namespace A098381.P18338892393486763172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098382 (n + 1) + A057428 n * A098382 (A233583 (n + 1)).toNat

end

end A098381.P18338892393486763172

/-!
# A098382: Partial sums of A098381.

The programs for A098382, there is no canonical definition to state claims against.
-/

/-! ## A098382.P14142883224415513919

`∑[A098381(n+1)]`
-/

namespace A098382.P14142883224415513919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098382.P14142883224415513919

/-! ## A098382.P7758547172702280114

`abs(∑[A098381(A008619(2*n))])`
-/

namespace A098382.P7758547172702280114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098381 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A098382.P7758547172702280114

/-! ## A098382.P13447260296133697808

`A098381(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A098382.P13447260296133697808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098381 (n + 1) + a (A023443 n).toNat

end

end A098382.P13447260296133697808

/-! ## A098382.P1101268163142857158

`A296873(a(n-1))+A098381(n+1)` with `a(0)=1`
-/

namespace A098382.P1101268163142857158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A296873 (a (n - 1)).toNat + A098381 (n + 1)

end

end A098382.P1101268163142857158

/-! ## A098382.P1018485076672086669

`A296876(a(n-1))+A098381(n+1)` with `a(0)=1`
-/

namespace A098382.P1018485076672086669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A296876 (a (n - 1)).toNat + A098381 (n + 1)

end

end A098382.P1018485076672086669

/-! ## A098382.P6136810414774796569

`A296879(a(n-1))+A098381(n+1)` with `a(0)=1`
-/

namespace A098382.P6136810414774796569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A296879 (a (n - 1)).toNat + A098381 (n + 1)

end

end A098382.P6136810414774796569

/-! ## A098382.P10050342187306483287

`A296885(a(n-1))+A098381(n+1)` with `a(0)=1`
-/

namespace A098382.P10050342187306483287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A296885 (a (n - 1)).toNat + A098381 (n + 1)

end

end A098382.P10050342187306483287

/-!
# A098383: Define a function f on the positive integers by: if n is 1 or composite, stop; but if n = prime(k) then f(n) = k; a(n) = sum of terms in trajectory of n under repeated application of f.

The programs for A098383, the canonical program `A098383.P14149341988143288811` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098383 has offset 1).

The definition of A098383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098383.P4357860439027368325

`Δ[∑[n]+a(A000720(n))]` with `a(0)=1`
-/

namespace A098383.P4357860439027368325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (A000720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A098383.P4357860439027368325

namespace A098383

/-- `Δ[∑[n]+a(A000720(n))]` -/
def P4357860439027368325.Spec : Prop :=
  ∀ n, P4357860439027368325.a n = A098383 (n + 1)

end A098383

/-! ## A098383.P14149341988143288811

`Δ[∑[n]+a(A230980(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098383

/-- `Δ[∑[n]+a(A230980(n))]` -/
def P14149341988143288811.Spec : Prop :=
  ∀ n, P14149341988143288811.a n = A098383 (n + 1)

theorem P14149341988143288811.correct : P14149341988143288811.Spec := by
  intro n
  simp only [A098383, Nat.add_sub_cancel]

end A098383

/-! ## A098383.P2250120274586248521

`a(A000720(n))*A010051(n+1)+n+1` with `a(0)=1`
-/

namespace A098383.P2250120274586248521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A000720 n).toNat * A010051 (n + 1) + (n + 1 : ℤ)

end

end A098383.P2250120274586248521

namespace A098383

/-- `a(A000720(n))*A010051(n+1)+n+1` -/
def P2250120274586248521.Spec : Prop :=
  ∀ n, P2250120274586248521.a n = A098383 (n + 1)

end A098383

/-! ## A098383.P10480295247001379906

`a(A252735(n+1))*A010051(n+1)+n+1` with `a(0)=1`
-/

namespace A098383.P10480295247001379906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A252735 (n + 1)).toNat * A010051 (n + 1) + (n + 1 : ℤ)

end

end A098383.P10480295247001379906

namespace A098383

/-- `a(A252735(n+1))*A010051(n+1)+n+1` -/
def P10480295247001379906.Spec : Prop :=
  ∀ n, P10480295247001379906.a n = A098383 (n + 1)

end A098383

/-! ## A098383.P11103557037914354083

`n+1+A010051(n+1)*a(A056239(n+1)-1)` with `a(0)=1`
-/

namespace A098383.P11103557037914354083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) + A010051 (n + 1) * a (A056239 (n + 1) - 1).toNat

end

end A098383.P11103557037914354083

namespace A098383

/-- `n+1+A010051(n+1)*a(A056239(n+1)-1)` -/
def P11103557037914354083.Spec : Prop :=
  ∀ n, P11103557037914354083.a n = A098383 (n + 1)

end A098383

/-!
# A098384: Triangle read by rows of coefficients used to generate diagonals of ordered factorizations as displayed in A098348.

The programs for A098384, the canonical program `A098384.P7691337461058360652` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098384 has offset 0).

The definition of A098384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098384.P7691337461058360652

`2*col(n)*T(n-1,k-1)+3*(col(n)+1)*T(n-1,k)+(col(n)+2)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098384

/-- `2*col(n)*T(n-1,k-1)+3*(col(n)+1)*T(n-1,k)+(col(n)+2)*T(n-1,k+1)` -/
def P7691337461058360652.Spec : Prop :=
  ∀ n, (P7691337461058360652.a n : ℤ) = A098384 n

theorem P7691337461058360652.correct : P7691337461058360652.Spec := by
  intro n
  simp only [A098384]

end A098384

/-! ## A098384.P11478142122391863885

`A194649(n+1)/A002260(n+1)`
-/

namespace A098384.P11478142122391863885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194649 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A098384.P11478142122391863885

namespace A098384

/-- `A194649(n+1)/A002260(n+1)` -/
def P11478142122391863885.Spec : Prop :=
  ∀ n, P11478142122391863885.a n = (A098384 n : ℚ)

end A098384

/-! ## A098384.P16592131867380589549

`A194649(n+1)/A000005(A059268(n))`
-/

namespace A098384.P16592131867380589549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194649 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A098384.P16592131867380589549

namespace A098384

/-- `A194649(n+1)/A000005(A059268(n))` -/
def P16592131867380589549.Spec : Prop :=
  ∀ n, P16592131867380589549.a n = (A098384 n : ℚ)

end A098384

/-! ## A098384.P14324437424669598088

`A194649(n+1)/A004736(A038722(n+1))`
-/

namespace A098384.P14324437424669598088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194649 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A098384.P14324437424669598088

namespace A098384

/-- `A194649(n+1)/A004736(A038722(n+1))` -/
def P14324437424669598088.Spec : Prop :=
  ∀ n, P14324437424669598088.a n = (A098384 n : ℚ)

end A098384

/-!
# A098385: Ordered factorizations over hook-type prime signatures with exactly three distinct primes (third column of A098348).

The programs for A098385, the canonical program `A098385.P18383068166052193363` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098385 has offset 0).

The definition of A098385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098385.P18383068166052193363

`2^n*(n²+8*n+13)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098385

/-- `2^n*(n²+8*n+13)` -/
def P18383068166052193363.Spec : Prop :=
  ∀ n, (P18383068166052193363.a n : ℤ) = A098385 n

theorem P18383068166052193363.correct : P18383068166052193363.Spec := by
  intro n
  simp only [A098385]

end A098385

/-! ## A098385.P3373663277460353066

`A100312(n)+A060621(n)`
-/

namespace A098385.P3373663277460353066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100312 n + A060621 n

end

end A098385.P3373663277460353066

namespace A098385

/-- `A100312(n)+A060621(n)` -/
def P3373663277460353066.Spec : Prop :=
  ∀ n, P3373663277460353066.a n = A098385 n

end A098385

/-! ## A098385.P8717498301408397473

`A167667(n+2)+A014477(n)`
-/

namespace A098385.P8717498301408397473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 (n + 2) + A014477 n

end

end A098385.P8717498301408397473

namespace A098385

/-- `A167667(n+2)+A014477(n)` -/
def P8717498301408397473.Spec : Prop :=
  ∀ n, P8717498301408397473.a n = A098385 n

end A098385

/-! ## A098385.P3430658862451508589

`A080929(n+2)+A001787(n+1)`
-/

namespace A098385.P3430658862451508589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 (n + 2) + A001787 (n + 1)

end

end A098385.P3430658862451508589

namespace A098385

/-- `A080929(n+2)+A001787(n+1)` -/
def P3430658862451508589.Spec : Prop :=
  ∀ n, P3430658862451508589.a n = A098385 n

end A098385

/-! ## A098385.P2118691894634311912

`A134401(n+2)+A084850(n+1)`
-/

namespace A098385.P2118691894634311912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 (n + 2) + A084850 (n + 1)

end

end A098385.P2118691894634311912

namespace A098385

/-- `A134401(n+2)+A084850(n+1)` -/
def P2118691894634311912.Spec : Prop :=
  ∀ n, P2118691894634311912.a n = A098385 n

end A098385

/-! ## A098385.P12514071967602082067

`A001793(n+3)-A045623(n+2)`
-/

namespace A098385.P12514071967602082067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 3) - A045623 (n + 2)

end

end A098385.P12514071967602082067

namespace A098385

/-- `A001793(n+3)-A045623(n+2)` -/
def P12514071967602082067.Spec : Prop :=
  ∀ n, P12514071967602082067.a n = A098385 n

end A098385

/-! ## A098385.P4641903635553638699

`A001792(n+1)+2*A001793(n+2)`
-/

namespace A098385.P4641903635553638699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) + 2 * A001793 (n + 2)

end

end A098385.P4641903635553638699

namespace A098385

/-- `A001792(n+1)+2*A001793(n+2)` -/
def P4641903635553638699.Spec : Prop :=
  ∀ n, P4641903635553638699.a n = A098385 n

end A098385

/-! ## A098385.P10085109488983751761

`A001793(n+2)+2*A084851(n+1)`
-/

namespace A098385.P10085109488983751761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 2) + 2 * A084851 (n + 1)

end

end A098385.P10085109488983751761

namespace A098385

/-- `A001793(n+2)+2*A084851(n+1)` -/
def P10085109488983751761.Spec : Prop :=
  ∀ n, P10085109488983751761.a n = A098385 n

end A098385

/-! ## A098385.P327831782228411088

`A053220(n+2)+2*A007466(n+2)`
-/

namespace A098385.P327831782228411088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 2) + 2 * A007466 (n + 2)

end

end A098385.P327831782228411088

namespace A098385

/-- `A053220(n+2)+2*A007466(n+2)` -/
def P327831782228411088.Spec : Prop :=
  ∀ n, P327831782228411088.a n = A098385 n

end A098385

/-! ## A098385.P14957583980882271445

`Δ[2^n*∑[a(n-1)+2]]` with `a(0)=3`
-/

namespace A098385.P14957583980882271445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A098385.P14957583980882271445

namespace A098385

/-- `Δ[2^n*∑[a(n-1)+2]]` -/
def P14957583980882271445.Spec : Prop :=
  ∀ n, P14957583980882271445.a n = A098385 n

end A098385

/-! ## A098385.P6876647123500944385

`Δ[(n+1)*A001792(n+1)]`
-/

namespace A098385.P6876647123500944385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P6876647123500944385

namespace A098385

/-- `Δ[(n+1)*A001792(n+1)]` -/
def P6876647123500944385.Spec : Prop :=
  ∀ n, P6876647123500944385.a n = A098385 n

end A098385

/-! ## A098385.P6614139360429830046

`Δ[(n+1)*A049610(n+3)]`
-/

namespace A098385.P6614139360429830046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049610 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P6614139360429830046

namespace A098385

/-- `Δ[(n+1)*A049610(n+3)]` -/
def P6614139360429830046.Spec : Prop :=
  ∀ n, P6614139360429830046.a n = A098385 n

end A098385

/-! ## A098385.P14009017590139760743

`Δ[(n+3)*A097067(n+2)]`
-/

namespace A098385.P14009017590139760743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A097067 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P14009017590139760743

namespace A098385

/-- `Δ[(n+3)*A097067(n+2)]` -/
def P14009017590139760743.Spec : Prop :=
  ∀ n, P14009017590139760743.a n = A098385 n

end A098385

/-! ## A098385.P9622085437382249436

`Δ[(n+3)*A139756(n+2)]`
-/

namespace A098385.P9622085437382249436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A139756 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P9622085437382249436

namespace A098385

/-- `Δ[(n+3)*A139756(n+2)]` -/
def P9622085437382249436.Spec : Prop :=
  ∀ n, P9622085437382249436.a n = A098385 n

end A098385

/-! ## A098385.P334434011221434581

`Δ[((n+2)²-1)*A000079(n)]`
-/

namespace A098385.P334434011221434581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - 1) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P334434011221434581

namespace A098385

/-- `Δ[((n+2)²-1)*A000079(n)]` -/
def P334434011221434581.Spec : Prop :=
  ∀ n, P334434011221434581.a n = A098385 n

theorem P334434011221434581.correct : P334434011221434581.Spec := by
  intro n
  simp only [A098385, Nat.add_sub_cancel, A098385.P334434011221434581.f1, A098385.P334434011221434581.a, A098385.P18383068166052193363.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098385

/-! ## A098385.P9055402736273504300

`Δ[Δ[A001787(n+1)]*(n+1)]`
-/

namespace A098385.P9055402736273504300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P9055402736273504300

namespace A098385

/-- `Δ[Δ[A001787(n+1)]*(n+1)]` -/
def P9055402736273504300.Spec : Prop :=
  ∀ n, P9055402736273504300.a n = A098385 n

end A098385

/-! ## A098385.P15086340263590455268

`Δ[Δ[A005183(n+1)]*(n+1)]`
-/

namespace A098385.P15086340263590455268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P15086340263590455268

namespace A098385

/-- `Δ[Δ[A005183(n+1)]*(n+1)]` -/
def P15086340263590455268.Spec : Prop :=
  ∀ n, P15086340263590455268.a n = A098385 n

end A098385

/-! ## A098385.P14232806028511865099

`Δ[A000079(n)*A005563(n+1)]`
-/

namespace A098385.P14232806028511865099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P14232806028511865099

namespace A098385

/-- `Δ[A000079(n)*A005563(n+1)]` -/
def P14232806028511865099.Spec : Prop :=
  ∀ n, P14232806028511865099.a n = A098385 n

theorem P14232806028511865099.correct : P14232806028511865099.Spec := by
  intro n
  simp only [A098385, Nat.add_sub_cancel, A098385.P14232806028511865099.f1, A098385.P14232806028511865099.a, A098385.P18383068166052193363.a, A000079, A000079.P10855139691139572931.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098385

/-! ## A098385.P16499624073609502055

`Δ[A001788(n+1)+Δ[A001815(n+1)]]`
-/

namespace A098385.P16499624073609502055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098385.P16499624073609502055

namespace A098385

/-- `Δ[A001788(n+1)+Δ[A001815(n+1)]]` -/
def P16499624073609502055.Spec : Prop :=
  ∀ n, P16499624073609502055.a n = A098385 n

end A098385

/-!
# A098386: a(n) = prime(n)-Log2(n), where Log2 = A000523.

The programs for A098386, the canonical program `A098386.P4482360098935159292` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098386 has offset 1).

The definition of A098386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098386.P4482360098935159292

`A000040(n+1)-floor(log2(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098386

/-- `A000040(n+1)-floor(log2(n+1))` -/
def P4482360098935159292.Spec : Prop :=
  ∀ n, P4482360098935159292.a n = A098386 (n + 1)

theorem P4482360098935159292.correct : P4482360098935159292.Spec := by
  intro n
  simp only [A098386, Nat.add_sub_cancel]

end A098386

/-! ## A098386.P9097464216054530724

`p?[round(8*n/7)]+1-∑[char[2^n-1]]`
-/

namespace A098386.P9097464216054530724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A098386.P9097464216054530724

namespace A098386

/-- `p?[round(8*n/7)]+1-∑[char[2^n-1]]` -/
def P9097464216054530724.Spec : Prop :=
  ∀ n, P9097464216054530724.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P3392363685201523581

`Δ[A007504(n)]-floor(log2(n+1))`
-/

namespace A098386.P3392363685201523581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.log 2 (n + 1) : ℤ)

end

end A098386.P3392363685201523581

namespace A098386

/-- `Δ[A007504(n)]-floor(log2(n+1))` -/
def P3392363685201523581.Spec : Prop :=
  ∀ n, P3392363685201523581.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P17315503406559216072

`∑[A054541(n+1)]-floor(log2(n+1))`
-/

namespace A098386.P17315503406559216072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.log 2 (n + 1) : ℤ)

end

end A098386.P17315503406559216072

namespace A098386

/-- `∑[A054541(n+1)]-floor(log2(n+1))` -/
def P17315503406559216072.Spec : Prop :=
  ∀ n, P17315503406559216072.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P5727784825026610049

`A131733(n+1)+A049039(n+1)`
-/

namespace A098386.P5727784825026610049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + A049039 (n + 1)

end

end A098386.P5727784825026610049

namespace A098386

/-- `A131733(n+1)+A049039(n+1)` -/
def P5727784825026610049.Spec : Prop :=
  ∀ n, P5727784825026610049.a n = A098386 (n + 1)

theorem P5727784825026610049.correct : P5727784825026610049.Spec := by
  intro n
  simp only [A098386, Nat.add_sub_cancel, A098386.P5727784825026610049.a, A098386.P4482360098935159292.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049039, A049039.P10549900309274776210.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098386

/-! ## A098386.P9521091337105382968

`A014688(n+1)-A080804(n+1)`
-/

namespace A098386.P9521091337105382968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A080804 (n + 1)

end

end A098386.P9521091337105382968

namespace A098386

/-- `A014688(n+1)-A080804(n+1)` -/
def P9521091337105382968.Spec : Prop :=
  ∀ n, P9521091337105382968.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P9059818579056494250

`A008864(n+1)-A113473(n+1)`
-/

namespace A098386.P9059818579056494250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A113473 (n + 1)

end

end A098386.P9059818579056494250

namespace A098386

/-- `A008864(n+1)-A113473(n+1)` -/
def P9059818579056494250.Spec : Prop :=
  ∀ n, P9059818579056494250.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P17991106590240432845

`A100484(n+1)-A098387(n+1)`
-/

namespace A098386.P17991106590240432845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A098387 (n + 1)

end

end A098386.P17991106590240432845

namespace A098386

/-- `A100484(n+1)-A098387(n+1)` -/
def P17991106590240432845.Spec : Prop :=
  ∀ n, P17991106590240432845.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P11948685311744496916

`A006093(n+1)+2-A113473(n+1)`
-/

namespace A098386.P11948685311744496916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (2 - A113473 (n + 1))

end

end A098386.P11948685311744496916

namespace A098386

/-- `A006093(n+1)+2-A113473(n+1)` -/
def P11948685311744496916.Spec : Prop :=
  ∀ n, P11948685311744496916.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P11764556850751443561

`A000040(n+1)+A000040(n+1)-A098387(n+1)`
-/

namespace A098386.P11764556850751443561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 1) - A098387 (n + 1)

end

end A098386.P11764556850751443561

namespace A098386

/-- `A000040(n+1)+A000040(n+1)-A098387(n+1)` -/
def P11764556850751443561.Spec : Prop :=
  ∀ n, P11764556850751443561.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P4498279010013928291

`A098387(n+1)-(A000523(n+1)+A000523(n+1))`
-/

namespace A098386.P4498279010013928291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098387 (n + 1) - (A000523 (n + 1) + A000523 (n + 1))

end

end A098386.P4498279010013928291

namespace A098386

/-- `A098387(n+1)-(A000523(n+1)+A000523(n+1))` -/
def P4498279010013928291.Spec : Prop :=
  ∀ n, P4498279010013928291.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P11140174497533711920

`A098388(n+1)+A098389(n+1)-A000523(n+1)`
-/

namespace A098386.P11140174497533711920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + (A098389 (n + 1) - A000523 (n + 1))

end

end A098386.P11140174497533711920

namespace A098386

/-- `A098388(n+1)+A098389(n+1)-A000523(n+1)` -/
def P11140174497533711920.Spec : Prop :=
  ∀ n, P11140174497533711920.a n = A098386 (n + 1)

theorem P11140174497533711920.correct : P11140174497533711920.Spec := by
  intro n
  simp only [A098386, Nat.add_sub_cancel, A098386.P11140174497533711920.a, A098386.P4482360098935159292.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098389, A098389.P3872260682828643311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098386

/-! ## A098386.P654863927743745829

`A098390(n+1)-(A098388(n+1)+A000523(n+1))`
-/

namespace A098386.P654863927743745829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098390 (n + 1) - (A098388 (n + 1) + A000523 (n + 1))

end

end A098386.P654863927743745829

namespace A098386

/-- `A098390(n+1)-(A098388(n+1)+A000523(n+1))` -/
def P654863927743745829.Spec : Prop :=
  ∀ n, P654863927743745829.a n = A098386 (n + 1)

theorem P654863927743745829.correct : P654863927743745829.Spec := by
  intro n
  simp only [A098386, Nat.add_sub_cancel, A098386.P654863927743745829.a, A098386.P4482360098935159292.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098390, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098386

/-! ## A098386.P17663857865731520229

`A098391(n+1)+A098392(n+1)-A000523(n+1)`
-/

namespace A098386.P17663857865731520229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (n + 1) + (A098392 (n + 1) - A000523 (n + 1))

end

end A098386.P17663857865731520229

namespace A098386

/-- `A098391(n+1)+A098392(n+1)-A000523(n+1)` -/
def P17663857865731520229.Spec : Prop :=
  ∀ n, P17663857865731520229.a n = A098386 (n + 1)

theorem P17663857865731520229.correct : P17663857865731520229.Spec := by
  intro n
  simp only [A098386, Nat.add_sub_cancel, A098386.P17663857865731520229.a, A098386.P4482360098935159292.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098391, A098391.P7594412131589195022.a, A098392, A098392.P2010536417266136406.a, A098388, A098388.P14774635796697876717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098386

/-! ## A098386.P17956155884713904993

`A098393(n+1)-(A098391(n+1)+A000523(n+1))`
-/

namespace A098386.P17956155884713904993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098393 (n + 1) - (A098391 (n + 1) + A000523 (n + 1))

end

end A098386.P17956155884713904993

namespace A098386

/-- `A098393(n+1)-(A098391(n+1)+A000523(n+1))` -/
def P17956155884713904993.Spec : Prop :=
  ∀ n, P17956155884713904993.a n = A098386 (n + 1)

theorem P17956155884713904993.correct : P17956155884713904993.Spec := by
  intro n
  simp only [A098386, Nat.add_sub_cancel, A098386.P17956155884713904993.a, A098386.P4482360098935159292.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098391, A098391.P7594412131589195022.a, A098393, A098393.P849539689524523398.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, A098388, A098388.P14774635796697876717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098386

/-! ## A098386.P12055981237743689367

`A098389(n+1)+A098390(n+1)-A098387(n+1)`
-/

namespace A098386.P12055981237743689367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098389 (n + 1) + (A098390 (n + 1) - A098387 (n + 1))

end

end A098386.P12055981237743689367

namespace A098386

/-- `A098389(n+1)+A098390(n+1)-A098387(n+1)` -/
def P12055981237743689367.Spec : Prop :=
  ∀ n, P12055981237743689367.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P2669332984769714904

`A008578(n+2)-floor(log2(n+1))`
-/

namespace A098386.P2669332984769714904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (Nat.log 2 (n + 1) : ℤ)

end

end A098386.P2669332984769714904

namespace A098386

/-- `A008578(n+2)-floor(log2(n+1))` -/
def P2669332984769714904.Spec : Prop :=
  ∀ n, P2669332984769714904.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P2431762879657688872

`p?[xor(1, n)+1]-floor(log2(n+1))`
-/

namespace A098386.P2431762879657688872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (Nat.log 2 (n + 1) : ℤ)

end

end A098386.P2431762879657688872

namespace A098386

/-- `p?[xor(1, n)+1]-floor(log2(n+1))` -/
def P2431762879657688872.Spec : Prop :=
  ∀ n, P2431762879657688872.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P1442830154773931915

`p?[abs(xor(n, -2))]-A000523(n+1)`
-/

namespace A098386.P1442830154773931915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000523 (n + 1)

end

end A098386.P1442830154773931915

namespace A098386

/-- `p?[abs(xor(n, -2))]-A000523(n+1)` -/
def P1442830154773931915.Spec : Prop :=
  ∀ n, P1442830154773931915.a n = A098386 (n + 1)

end A098386

/-! ## A098386.P5237064543304125601

`p?[round(n/(n%2+1/2))]-floor(log2(n+1))`
-/

namespace A098386.P5237064543304125601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.log 2 (n + 1) : ℤ)

end

end A098386.P5237064543304125601

namespace A098386

/-- `p?[round(n/(n%2+1/2))]-floor(log2(n+1))` -/
def P5237064543304125601.Spec : Prop :=
  ∀ n, P5237064543304125601.a n = A098386 (n + 1)

end A098386

/-!
# A098387: Prime(n)+Log2(n), where Log2=A000523.

The programs for A098387, the canonical program `A098387.P16796846972825336619` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098387 has offset 1).

The definition of A098387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098387.P9203050633282096861

`floor(Δ[A007504(n)]+log2(n+1))`
-/

namespace A098387.P9203050633282096861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℝ) + Real.logb 2 (n + 1 : ℝ)⌋

end

end A098387.P9203050633282096861

namespace A098387

/-- `floor(Δ[A007504(n)]+log2(n+1))` -/
def P9203050633282096861.Spec : Prop :=
  ∀ n, P9203050633282096861.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P11374338758220927423

`floor(A000040(n+1)+log2(n+1))`
-/

namespace A098387.P11374338758220927423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) + Real.logb 2 (n + 1 : ℝ)⌋

end

end A098387.P11374338758220927423

namespace A098387

/-- `floor(A000040(n+1)+log2(n+1))` -/
def P11374338758220927423.Spec : Prop :=
  ∀ n, P11374338758220927423.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P16796846972825336619

`∑[A054541(n+1)]+floor(log2(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A098387

/-- `∑[A054541(n+1)]+floor(log2(n+1))` -/
def P16796846972825336619.Spec : Prop :=
  ∀ n, P16796846972825336619.a n = A098387 (n + 1)

theorem P16796846972825336619.correct : P16796846972825336619.Spec := by
  intro n
  simp only [A098387, Nat.add_sub_cancel]

end A098387

/-! ## A098387.P452500999771485299

`A000523(n+1)+A000040(n+1)`
-/

namespace A098387.P452500999771485299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + A000040 (n + 1)

end

end A098387.P452500999771485299

namespace A098387

/-- `A000523(n+1)+A000040(n+1)` -/
def P452500999771485299.Spec : Prop :=
  ∀ n, P452500999771485299.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P4302450917718899330

`A080804(n+1)+A014689(n+1)`
-/

namespace A098387.P4302450917718899330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080804 (n + 1) + A014689 (n + 1)

end

end A098387.P4302450917718899330

namespace A098387

/-- `A080804(n+1)+A014689(n+1)` -/
def P4302450917718899330.Spec : Prop :=
  ∀ n, P4302450917718899330.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P3722195268111628455

`A113473(n+1)+A006093(n+1)`
-/

namespace A098387.P3722195268111628455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) + A006093 (n + 1)

end

end A098387.P3722195268111628455

namespace A098387

/-- `A113473(n+1)+A006093(n+1)` -/
def P3722195268111628455.Spec : Prop :=
  ∀ n, P3722195268111628455.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P15021884922332350995

`A100484(n+1)-A098386(n+1)`
-/

namespace A098387.P15021884922332350995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A098386 (n + 1)

end

end A098387.P15021884922332350995

namespace A098387

/-- `A100484(n+1)-A098386(n+1)` -/
def P15021884922332350995.Spec : Prop :=
  ∀ n, P15021884922332350995.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P16099556248180079016

`A000523(n+1)+A098389(n+1)+A098388(n+1)`
-/

namespace A098387.P16099556248180079016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A098389 (n + 1) + A098388 (n + 1))

end

end A098387.P16099556248180079016

namespace A098387

/-- `A000523(n+1)+A098389(n+1)+A098388(n+1)` -/
def P16099556248180079016.Spec : Prop :=
  ∀ n, P16099556248180079016.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P199248343976374642

`A000523(n+1)+A098392(n+1)+A098391(n+1)`
-/

namespace A098387.P199248343976374642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A098392 (n + 1) + A098391 (n + 1))

end

end A098387.P199248343976374642

namespace A098387

/-- `A000523(n+1)+A098392(n+1)+A098391(n+1)` -/
def P199248343976374642.Spec : Prop :=
  ∀ n, P199248343976374642.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P1516435894677721278

`A000040(n+1)+A000040(n+1)-A098386(n+1)`
-/

namespace A098387.P1516435894677721278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 1) - A098386 (n + 1))

end

end A098387.P1516435894677721278

namespace A098387

/-- `A000040(n+1)+A000040(n+1)-A098386(n+1)` -/
def P1516435894677721278.Spec : Prop :=
  ∀ n, P1516435894677721278.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P13352059177945804891

`A000523(n+1)+A098393(n+1)-A098391(n+1)`
-/

namespace A098387.P13352059177945804891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A098393 (n + 1) - A098391 (n + 1))

end

end A098387.P13352059177945804891

namespace A098387

/-- `A000523(n+1)+A098393(n+1)-A098391(n+1)` -/
def P13352059177945804891.Spec : Prop :=
  ∀ n, P13352059177945804891.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P3674827052945811122

`A098389(n+1)+A098390(n+1)-A098386(n+1)`
-/

namespace A098387.P3674827052945811122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098389 (n + 1) + (A098390 (n + 1) - A098386 (n + 1))

end

end A098387.P3674827052945811122

namespace A098387

/-- `A098389(n+1)+A098390(n+1)-A098386(n+1)` -/
def P3674827052945811122.Spec : Prop :=
  ∀ n, P3674827052945811122.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P4559770201529724972

`A098392(n+1)+A098393(n+1)-A098386(n+1)`
-/

namespace A098387.P4559770201529724972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098392 (n + 1) + (A098393 (n + 1) - A098386 (n + 1))

end

end A098387.P4559770201529724972

namespace A098387

/-- `A098392(n+1)+A098393(n+1)-A098386(n+1)` -/
def P4559770201529724972.Spec : Prop :=
  ∀ n, P4559770201529724972.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P10405796208971302277

`A008578(n+2)+floor(log2(n+1))`
-/

namespace A098387.P10405796208971302277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (Nat.log 2 (n + 1) : ℤ)

end

end A098387.P10405796208971302277

namespace A098387

/-- `A008578(n+2)+floor(log2(n+1))` -/
def P10405796208971302277.Spec : Prop :=
  ∀ n, P10405796208971302277.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P15529760869187402551

`p?[xor(1, n)+1]+floor(log2(n+1))`
-/

namespace A098387.P15529760869187402551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.log 2 (n + 1)

end

end A098387.P15529760869187402551

namespace A098387

/-- `p?[xor(1, n)+1]+floor(log2(n+1))` -/
def P15529760869187402551.Spec : Prop :=
  ∀ n, (P15529760869187402551.a n : ℤ) = A098387 (n + 1)

end A098387

/-! ## A098387.P6766838295178775458

`p?[round(n/(n%2+1/2))]+floor(log2(n+1))`
-/

namespace A098387.P6766838295178775458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.log 2 (n + 1) : ℤ)

end

end A098387.P6766838295178775458

namespace A098387

/-- `p?[round(n/(n%2+1/2))]+floor(log2(n+1))` -/
def P6766838295178775458.Spec : Prop :=
  ∀ n, P6766838295178775458.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P9508000653983076988

`record[A162753(n)]+floor(log2(n+1))`
-/

namespace A098387.P9508000653983076988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.log 2 (n + 1) : ℤ)

end

end A098387.P9508000653983076988

namespace A098387

/-- `record[A162753(n)]+floor(log2(n+1))` -/
def P9508000653983076988.Spec : Prop :=
  ∀ n, P9508000653983076988.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P1171949244818753880

`floor(record[A051698(n)]+log2(n+1))`
-/

namespace A098387.P1171949244818753880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) + Real.logb 2 (n + 1 : ℝ)⌋

end

end A098387.P1171949244818753880

namespace A098387

/-- `floor(record[A051698(n)]+log2(n+1))` -/
def P1171949244818753880.Spec : Prop :=
  ∀ n, P1171949244818753880.a n = A098387 (n + 1)

end A098387

/-! ## A098387.P183485323312299741

`p?[A006370(n)]+floor(log2(n+1))`
-/

namespace A098387.P183485323312299741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.log 2 (n + 1) : ℤ)

end

end A098387.P183485323312299741

namespace A098387

/-- `p?[A006370(n)]+floor(log2(n+1))` -/
def P183485323312299741.Spec : Prop :=
  ∀ n, P183485323312299741.a n = A098387 (n + 1)

end A098387

/-!
# A098388: a(n) = floor(log_2(prime(n))).

The programs for A098388, the canonical program `A098388.P14774635796697876717` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098388 has offset 1).

The definition of A098388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(A000040(n+1)))` (program `A098388.P14774635796697876717`, by `A098388.P14774635796697876717.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098388.P2706974749827344533

`A035100(n+1)-1`
-/

namespace A098388.P2706974749827344533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) - 1

end

end A098388.P2706974749827344533

namespace A098388

/-- `A035100(n+1)-1` -/
def P2706974749827344533.Spec : Prop :=
  ∀ n, P2706974749827344533.a n = A098388 (n + 1)

theorem P2706974749827344533.correct : P2706974749827344533.Spec := by
  intro n
  simp only [A098388, Nat.add_sub_cancel, A098388.P2706974749827344533.a, A098388.P14774635796697876717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098388

/-! ## A098388.P14774635796697876717

`floor(log2(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098388

/-- `floor(log2(A000040(n+1)))` -/
def P14774635796697876717.Spec : Prop :=
  ∀ n, (P14774635796697876717.a n : ℤ) = A098388 (n + 1)

theorem P14774635796697876717.correct : P14774635796697876717.Spec := by
  intro n
  simp only [A098388, Nat.add_sub_cancel]

end A098388

/-! ## A098388.P9327469246025312355

`A000523(A000040(n+1))`
-/

namespace A098388.P9327469246025312355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000040 (n + 1)).toNat

end

end A098388.P9327469246025312355

namespace A098388

/-- `A000523(A000040(n+1))` -/
def P9327469246025312355.Spec : Prop :=
  ∀ n, P9327469246025312355.a n = A098388 (n + 1)

end A098388

/-! ## A098388.P5829362153951962236

`Δ[A328659(n)]-1`
-/

namespace A098388.P5829362153951962236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A098388.P5829362153951962236

namespace A098388

/-- `Δ[A328659(n)]-1` -/
def P5829362153951962236.Spec : Prop :=
  ∀ n, P5829362153951962236.a n = A098388 (n + 1)

end A098388

/-! ## A098388.P11069920676019155162

`floor(log2(Δ[A007504(n)]))`
-/

namespace A098388.P11069920676019155162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (n + 1) - f1 n).toNat

end

end A098388.P11069920676019155162

namespace A098388

/-- `floor(log2(Δ[A007504(n)]))` -/
def P11069920676019155162.Spec : Prop :=
  ∀ n, (P11069920676019155162.a n : ℤ) = A098388 (n + 1)

end A098388

/-! ## A098388.P16783085222801709615

`floor(log2(A014193(n+1)))`
-/

namespace A098388.P16783085222801709615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A014193 (n + 1)).toNat

end

end A098388.P16783085222801709615

namespace A098388

/-- `floor(log2(A014193(n+1)))` -/
def P16783085222801709615.Spec : Prop :=
  ∀ n, (P16783085222801709615.a n : ℤ) = A098388 (n + 1)

end A098388

/-! ## A098388.P17279182473343569117

`floor(log2(A039915(n+1)))`
-/

namespace A098388.P17279182473343569117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A039915 (n + 1)).toNat

end

end A098388.P17279182473343569117

namespace A098388

/-- `floor(log2(A039915(n+1)))` -/
def P17279182473343569117.Spec : Prop :=
  ∀ n, (P17279182473343569117.a n : ℤ) = A098388 (n + 1)

end A098388

/-! ## A098388.P12183920052554774740

`floor(log2(A082542(n+1)))`
-/

namespace A098388.P12183920052554774740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A082542 (n + 1)).toNat

end

end A098388.P12183920052554774740

namespace A098388

/-- `floor(log2(A082542(n+1)))` -/
def P12183920052554774740.Spec : Prop :=
  ∀ n, (P12183920052554774740.a n : ℤ) = A098388 (n + 1)

end A098388

/-! ## A098388.P12845923819312324712

`floor(log2(A143292(n+1)))`
-/

namespace A098388.P12845923819312324712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A143292 (n + 1)).toNat

end

end A098388.P12845923819312324712

namespace A098388

/-- `floor(log2(A143292(n+1)))` -/
def P12845923819312324712.Spec : Prop :=
  ∀ n, (P12845923819312324712.a n : ℤ) = A098388 (n + 1)

end A098388

/-! ## A098388.P8724927967514433445

`∑[char[A185192(n+1)]]`
-/

namespace A098388.P8724927967514433445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098388.P8724927967514433445

namespace A098388

/-- `∑[char[A185192(n+1)]]` -/
def P8724927967514433445.Spec : Prop :=
  ∀ n, (P8724927967514433445.a n : ℤ) = A098388 (n + 1)

end A098388

/-! ## A098388.P2951563083857094971

`floor(log2(∑[A054541(n+1)]))`
-/

namespace A098388.P2951563083857094971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098388.P2951563083857094971

namespace A098388

/-- `floor(log2(∑[A054541(n+1)]))` -/
def P2951563083857094971.Spec : Prop :=
  ∀ n, (P2951563083857094971.a n : ℤ) = A098388 (n + 1)

end A098388

/-! ## A098388.P17952246263528774757

`floor(log2(p?[A247665(n+1)]))`
-/

namespace A098388.P17952246263528774757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098388.P17952246263528774757

namespace A098388

/-- `floor(log2(p?[A247665(n+1)]))` -/
def P17952246263528774757.Spec : Prop :=
  ∀ n, (P17952246263528774757.a n : ℤ) = A098388 (n + 1)

end A098388

/-! ## A098388.P14791700942586123773

`floor(log2(A006093(n+1)+1))`
-/

namespace A098388.P14791700942586123773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A006093 (n + 1) + 1).toNat

end

end A098388.P14791700942586123773

namespace A098388

/-- `floor(log2(A006093(n+1)+1))` -/
def P14791700942586123773.Spec : Prop :=
  ∀ n, (P14791700942586123773.a n : ℤ) = A098388 (n + 1)

theorem P14791700942586123773.correct : P14791700942586123773.Spec := by
  intro n
  simp only [A098388, Nat.add_sub_cancel, A098388.P14791700942586123773.a, A098388.P14774635796697876717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098388

/-! ## A098388.P1945181911100875510

`floor(log2(A008864(n+1)-1))`
-/

namespace A098388.P1945181911100875510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A008864 (n + 1) - 1).toNat

end

end A098388.P1945181911100875510

namespace A098388

/-- `floor(log2(A008864(n+1)-1))` -/
def P1945181911100875510.Spec : Prop :=
  ∀ n, (P1945181911100875510.a n : ℤ) = A098388 (n + 1)

theorem P1945181911100875510.correct : P1945181911100875510.Spec := by
  intro n
  simp only [A098388, Nat.add_sub_cancel, A098388.P1945181911100875510.a, A098388.P14774635796697876717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098388

/-! ## A098388.P6783951011540417024

`floor(log2(A040976(n+1)+2))`
-/

namespace A098388.P6783951011540417024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A040976 (n + 1) + 2).toNat

end

end A098388.P6783951011540417024

namespace A098388

/-- `floor(log2(A040976(n+1)+2))` -/
def P6783951011540417024.Spec : Prop :=
  ∀ n, (P6783951011540417024.a n : ℤ) = A098388 (n + 1)

theorem P6783951011540417024.correct : P6783951011540417024.Spec := by
  intro n
  simp only [A098388, Nat.add_sub_cancel, A098388.P6783951011540417024.a, A098388.P14774635796697876717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098388

/-! ## A098388.P1030523103194803939

`floor(log2(A072055(n+1)))-1`
-/

namespace A098388.P1030523103194803939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A072055 (n + 1)).toNat : ℤ) - 1

end

end A098388.P1030523103194803939

namespace A098388

/-- `floor(log2(A072055(n+1)))-1` -/
def P1030523103194803939.Spec : Prop :=
  ∀ n, P1030523103194803939.a n = A098388 (n + 1)

end A098388

/-! ## A098388.P15620508367826929964

`floor(log2(A100484(n+1)))-1`
-/

namespace A098388.P15620508367826929964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A100484 (n + 1)).toNat : ℤ) - 1

end

end A098388.P15620508367826929964

namespace A098388

/-- `floor(log2(A100484(n+1)))-1` -/
def P15620508367826929964.Spec : Prop :=
  ∀ n, P15620508367826929964.a n = A098388 (n + 1)

end A098388

/-! ## A098388.P9853228934081741309

`floor(log2(A001749(n+1)))-2`
-/

namespace A098388.P9853228934081741309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A001749 (n + 1)).toNat : ℤ) - 2

end

end A098388.P9853228934081741309

namespace A098388

/-- `floor(log2(A001749(n+1)))-2` -/
def P9853228934081741309.Spec : Prop :=
  ∀ n, P9853228934081741309.a n = A098388 (n + 1)

end A098388

/-! ## A098388.P2039878322357302943

`ceil(log2(A175216(n+1)))-1`
-/

namespace A098388.P2039878322357302943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A175216 (n + 1) : ℝ)⌉ - 1

end

end A098388.P2039878322357302943

namespace A098388

/-- `ceil(log2(A175216(n+1)))-1` -/
def P2039878322357302943.Spec : Prop :=
  ∀ n, P2039878322357302943.a n = A098388 (n + 1)

end A098388

/-! ## A098388.P4622422192130919756

`A061716(n+1)+A057428(n)`
-/

namespace A098388.P4622422192130919756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061716 (n + 1) + A057428 n

end

end A098388.P4622422192130919756

namespace A098388

/-- `A061716(n+1)+A057428(n)` -/
def P4622422192130919756.Spec : Prop :=
  ∀ n, P4622422192130919756.a n = A098388 (n + 1)

end A098388

/-! ## A098388.P14139406181540297519

`floor(log2(p?[xor(1, n)]))`
-/

namespace A098388.P14139406181540297519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098388.P14139406181540297519

namespace A098388

/-- `floor(log2(p?[xor(1, n)]))` -/
def P14139406181540297519.Spec : Prop :=
  ∀ n, (P14139406181540297519.a n : ℤ) = A098388 (n + 1)

end A098388

/-!
# A098389: Prime(n) - floor(log_2(prime(n))).

The programs for A098389, the canonical program `A098389.P3872260682828643311` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098389 has offset 1).

The definition of A098389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-floor(log2(A000040(n+1)))` (program `A098389.P3872260682828643311`, by `A098389.P3872260682828643311.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098389.P3872260682828643311

`A000040(n+1)-floor(log2(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098389

/-- `A000040(n+1)-floor(log2(A000040(n+1)))` -/
def P3872260682828643311.Spec : Prop :=
  ∀ n, P3872260682828643311.a n = A098389 (n + 1)

theorem P3872260682828643311.correct : P3872260682828643311.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel]

end A098389

/-! ## A098389.P9596680349422798686

`A163293(1+n)+1`
-/

namespace A098389.P9596680349422798686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163293 (1 + n) + 1

end

end A098389.P9596680349422798686

namespace A098389

/-- `A163293(1+n)+1` -/
def P9596680349422798686.Spec : Prop :=
  ∀ n, P9596680349422798686.a n = A098389 (n + 1)

end A098389

/-! ## A098389.P4585131490544966447

`∏{d}[A000040(n+1), #-floor(log2(#))]`
-/

namespace A098389.P4585131490544966447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - (Nat.log 2 d : ℤ))

end

end A098389.P4585131490544966447

namespace A098389

/-- `∏{d}[A000040(n+1), #-floor(log2(#))]` -/
def P4585131490544966447.Spec : Prop :=
  ∀ n, P4585131490544966447.a n = A098389 (n + 1)

end A098389

/-! ## A098389.P10903421368118426210

`Δ[A007504(n)]-A098388(n+1)`
-/

namespace A098389.P10903421368118426210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A098388 (n + 1)

end

end A098389.P10903421368118426210

namespace A098389

/-- `Δ[A007504(n)]-A098388(n+1)` -/
def P10903421368118426210.Spec : Prop :=
  ∀ n, P10903421368118426210.a n = A098389 (n + 1)

end A098389

/-! ## A098389.P12821993897241055022

`A008864(n+1)-A035100(n+1)`
-/

namespace A098389.P12821993897241055022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A035100 (n + 1)

end

end A098389.P12821993897241055022

namespace A098389

/-- `A008864(n+1)-A035100(n+1)` -/
def P12821993897241055022.Spec : Prop :=
  ∀ n, P12821993897241055022.a n = A098389 (n + 1)

theorem P12821993897241055022.correct : P12821993897241055022.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P12821993897241055022.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P18108911571377034740

`A000040(n+1)-A098388(n+1)`
-/

namespace A098389.P18108911571377034740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A098388 (n + 1)

end

end A098389.P18108911571377034740

namespace A098389

/-- `A000040(n+1)-A098388(n+1)` -/
def P18108911571377034740.Spec : Prop :=
  ∀ n, P18108911571377034740.a n = A098389 (n + 1)

end A098389

/-! ## A098389.P9498745248165291109

`A100484(n+1)-A098390(n+1)`
-/

namespace A098389.P9498745248165291109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A098390 (n + 1)

end

end A098389.P9498745248165291109

namespace A098389

/-- `A100484(n+1)-A098390(n+1)` -/
def P9498745248165291109.Spec : Prop :=
  ∀ n, P9498745248165291109.a n = A098389 (n + 1)

theorem P9498745248165291109.correct : P9498745248165291109.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P9498745248165291109.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098390, A098390.P10528936941133441852.a, A100484, A100484.P9678625670825099636.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P7481977769372348757

`A000040(n+1)+1-Δ[A328659(n)]`
-/

namespace A098389.P7481977769372348757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A098389.P7481977769372348757

namespace A098389

/-- `A000040(n+1)+1-Δ[A328659(n)]` -/
def P7481977769372348757.Spec : Prop :=
  ∀ n, P7481977769372348757.a n = A098389 (n + 1)

end A098389

/-! ## A098389.P16796527901233862544

`A000040(n+1)+1-A035100(n+1)`
-/

namespace A098389.P16796527901233862544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A035100 (n + 1))

end

end A098389.P16796527901233862544

namespace A098389

/-- `A000040(n+1)+1-A035100(n+1)` -/
def P16796527901233862544.Spec : Prop :=
  ∀ n, P16796527901233862544.a n = A098389 (n + 1)

theorem P16796527901233862544.correct : P16796527901233862544.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P16796527901233862544.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P10122414543605863636

`A006005(n+1)+1-A061716(n+1)`
-/

namespace A098389.P10122414543605863636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (1 - A061716 (n + 1))

end

end A098389.P10122414543605863636

namespace A098389

/-- `A006005(n+1)+1-A061716(n+1)` -/
def P10122414543605863636.Spec : Prop :=
  ∀ n, P10122414543605863636.a n = A098389 (n + 1)

end A098389

/-! ## A098389.P3008211711749749838

`A006093(n+1)+1-A098388(n+1)`
-/

namespace A098389.P3008211711749749838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A098388 (n + 1))

end

end A098389.P3008211711749749838

namespace A098389

/-- `A006093(n+1)+1-A098388(n+1)` -/
def P3008211711749749838.Spec : Prop :=
  ∀ n, P3008211711749749838.a n = A098389 (n + 1)

theorem P3008211711749749838.correct : P3008211711749749838.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P3008211711749749838.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A098388, A098388.P14774635796697876717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P15711312843537193502

`A080085(n+1)+1-A035103(n+1)`
-/

namespace A098389.P15711312843537193502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1) + (1 - A035103 (n + 1))

end

end A098389.P15711312843537193502

namespace A098389

/-- `A080085(n+1)+1-A035103(n+1)` -/
def P15711312843537193502.Spec : Prop :=
  ∀ n, P15711312843537193502.a n = A098389 (n + 1)

theorem P15711312843537193502.correct : P15711312843537193502.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P15711312843537193502.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A035103, A035103.P1324719609663575418.a, A080085, A080085.P4216384539738297619.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P16715893139501804709

`A177959(n+1)+1-A014499(n+1)`
-/

namespace A098389.P16715893139501804709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177959 (n + 1) + (1 - A014499 (n + 1))

end

end A098389.P16715893139501804709

namespace A098389

/-- `A177959(n+1)+1-A014499(n+1)` -/
def P16715893139501804709.Spec : Prop :=
  ∀ n, P16715893139501804709.a n = A098389 (n + 1)

theorem P16715893139501804709.correct : P16715893139501804709.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P16715893139501804709.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A177959, A177959.P3892879503494814762.a, A000120, A000120.P2816527436160941581.a, A035103, A035103.P1324719609663575418.a, A005187, A005187.P3874015513960485494.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P11962542734918791529

`A006093(n+1)+2-A035100(n+1)`
-/

namespace A098389.P11962542734918791529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (2 - A035100 (n + 1))

end

end A098389.P11962542734918791529

namespace A098389

/-- `A006093(n+1)+2-A035100(n+1)` -/
def P11962542734918791529.Spec : Prop :=
  ∀ n, P11962542734918791529.a n = A098389 (n + 1)

theorem P11962542734918791529.correct : P11962542734918791529.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P11962542734918791529.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P8772654480121751406

`2*A000040(n+1)-A098390(n+1)`
-/

namespace A098389.P8772654480121751406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A098390 (n + 1)

end

end A098389.P8772654480121751406

namespace A098389

/-- `2*A000040(n+1)-A098390(n+1)` -/
def P8772654480121751406.Spec : Prop :=
  ∀ n, P8772654480121751406.a n = A098389 (n + 1)

theorem P8772654480121751406.correct : P8772654480121751406.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P8772654480121751406.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098390, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P13706109547018982193

`A098390(n+1)-2*A098388(n+1)`
-/

namespace A098389.P13706109547018982193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098390 (n + 1) - 2 * A098388 (n + 1)

end

end A098389.P13706109547018982193

namespace A098389

/-- `A098390(n+1)-2*A098388(n+1)` -/
def P13706109547018982193.Spec : Prop :=
  ∀ n, P13706109547018982193.a n = A098389 (n + 1)

theorem P13706109547018982193.correct : P13706109547018982193.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P13706109547018982193.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098388, A098388.P14774635796697876717.a, A098390, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P14719470386367494135

`A000040(n+1)-∑[char[A185192(n+1)]]`
-/

namespace A098389.P14719470386367494135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A098389.P14719470386367494135

namespace A098389

/-- `A000040(n+1)-∑[char[A185192(n+1)]]` -/
def P14719470386367494135.Spec : Prop :=
  ∀ n, P14719470386367494135.a n = A098389 (n + 1)

end A098389

/-! ## A098389.P4233057859724014487

`A098386(n+1)+A098387(n+1)-A098390(n+1)`
-/

namespace A098389.P4233057859724014487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098386 (n + 1) + (A098387 (n + 1) - A098390 (n + 1))

end

end A098389.P4233057859724014487

namespace A098389

/-- `A098386(n+1)+A098387(n+1)-A098390(n+1)` -/
def P4233057859724014487.Spec : Prop :=
  ∀ n, P4233057859724014487.a n = A098389 (n + 1)

end A098389

/-! ## A098389.P12338536800740372626

`A098391(n+1)+A098392(n+1)-A098388(n+1)`
-/

namespace A098389.P12338536800740372626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (n + 1) + (A098392 (n + 1) - A098388 (n + 1))

end

end A098389.P12338536800740372626

namespace A098389

/-- `A098391(n+1)+A098392(n+1)-A098388(n+1)` -/
def P12338536800740372626.Spec : Prop :=
  ∀ n, P12338536800740372626.a n = A098389 (n + 1)

theorem P12338536800740372626.correct : P12338536800740372626.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P12338536800740372626.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098388, A098388.P14774635796697876717.a, A098391, A098391.P7594412131589195022.a, A098392, A098392.P2010536417266136406.a, A000523, A000523.P3314682526375882520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-! ## A098389.P7085432439543691372

`A098393(n+1)-(A098391(n+1)+A098388(n+1))`
-/

namespace A098389.P7085432439543691372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098393 (n + 1) - (A098391 (n + 1) + A098388 (n + 1))

end

end A098389.P7085432439543691372

namespace A098389

/-- `A098393(n+1)-(A098391(n+1)+A098388(n+1))` -/
def P7085432439543691372.Spec : Prop :=
  ∀ n, P7085432439543691372.a n = A098389 (n + 1)

theorem P7085432439543691372.correct : P7085432439543691372.Spec := by
  intro n
  simp only [A098389, Nat.add_sub_cancel, A098389.P7085432439543691372.a, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098388, A098388.P14774635796697876717.a, A098391, A098391.P7594412131589195022.a, A098393, A098393.P849539689524523398.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, A000523, A000523.P3314682526375882520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098389

/-!
# A098390: Prime(n)+Log2(prime(n)), where Log2=A000523.

The programs for A098390, the canonical program `A098390.P10528936941133441852` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098390 has offset 1).

The definition of A098390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098390.P9227952354658418478

`∏{d}[A000040(n+1), floor(log2(#)+#)]`
-/

namespace A098390.P9227952354658418478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ⌊Real.logb 2 (d : ℝ) + (d : ℝ)⌋

end

end A098390.P9227952354658418478

namespace A098390

/-- `∏{d}[A000040(n+1), floor(log2(#)+#)]` -/
def P9227952354658418478.Spec : Prop :=
  ∀ n, P9227952354658418478.a n = A098390 (n + 1)

end A098390

/-! ## A098390.P3619700854461972375

`A098388(n+1)+Δ[A007504(n)]`
-/

namespace A098390.P3619700854461972375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + (f1 (n + 1) - f1 n)

end

end A098390.P3619700854461972375

namespace A098390

/-- `A098388(n+1)+Δ[A007504(n)]` -/
def P3619700854461972375.Spec : Prop :=
  ∀ n, P3619700854461972375.a n = A098390 (n + 1)

end A098390

/-! ## A098390.P7342566465789184028

`A006093(n+1)+Δ[A328659(n)]`
-/

namespace A098390.P7342566465789184028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (f1 (n + 1) - f1 n)

end

end A098390.P7342566465789184028

namespace A098390

/-- `A006093(n+1)+Δ[A328659(n)]` -/
def P7342566465789184028.Spec : Prop :=
  ∀ n, P7342566465789184028.a n = A098390 (n + 1)

end A098390

/-! ## A098390.P10528936941133441852

`A035100(n+1)+A006093(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098390

/-- `A035100(n+1)+A006093(n+1)` -/
def P10528936941133441852.Spec : Prop :=
  ∀ n, P10528936941133441852.a n = A098390 (n + 1)

theorem P10528936941133441852.correct : P10528936941133441852.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel]

end A098390

/-! ## A098390.P10253377150891901003

`A098388(n+1)+A000040(n+1)`
-/

namespace A098390.P10253377150891901003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + A000040 (n + 1)

end

end A098390.P10253377150891901003

namespace A098390

/-- `A098388(n+1)+A000040(n+1)` -/
def P10253377150891901003.Spec : Prop :=
  ∀ n, P10253377150891901003.a n = A098390 (n + 1)

theorem P10253377150891901003.correct : P10253377150891901003.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P10253377150891901003.a, A098390.P10528936941133441852.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098388, A098388.P14774635796697876717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P13897237321176613578

`A100484(n+1)-A098389(n+1)`
-/

namespace A098390.P13897237321176613578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A098389 (n + 1)

end

end A098390.P13897237321176613578

namespace A098390

/-- `A100484(n+1)-A098389(n+1)` -/
def P13897237321176613578.Spec : Prop :=
  ∀ n, P13897237321176613578.a n = A098390 (n + 1)

theorem P13897237321176613578.correct : P13897237321176613578.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P13897237321176613578.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098389, A098389.P3872260682828643311.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P15310130674171421272

`A000040(n+1)+Δ[A328659(n)]-1`
-/

namespace A098390.P15310130674171421272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A098390.P15310130674171421272

namespace A098390

/-- `A000040(n+1)+Δ[A328659(n)]-1` -/
def P15310130674171421272.Spec : Prop :=
  ∀ n, P15310130674171421272.a n = A098390 (n + 1)

end A098390

/-! ## A098390.P10134104812686100255

`A006093(n+1)+A098388(n+1)+1`
-/

namespace A098390.P10134104812686100255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A098388 (n + 1) + 1)

end

end A098390.P10134104812686100255

namespace A098390

/-- `A006093(n+1)+A098388(n+1)+1` -/
def P10134104812686100255.Spec : Prop :=
  ∀ n, P10134104812686100255.a n = A098390 (n + 1)

theorem P10134104812686100255.correct : P10134104812686100255.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P10134104812686100255.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098388, A098388.P14774635796697876717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P4162117520652535649

`A000040(n+1)+A035100(n+1)-1`
-/

namespace A098390.P4162117520652535649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A035100 (n + 1) - 1)

end

end A098390.P4162117520652535649

namespace A098390

/-- `A000040(n+1)+A035100(n+1)-1` -/
def P4162117520652535649.Spec : Prop :=
  ∀ n, P4162117520652535649.a n = A098390 (n + 1)

theorem P4162117520652535649.correct : P4162117520652535649.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P4162117520652535649.a, A098390.P10528936941133441852.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P622427717423067309

`A008864(n+1)+A035100(n+1)-2`
-/

namespace A098390.P622427717423067309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A035100 (n + 1) - 2)

end

end A098390.P622427717423067309

namespace A098390

/-- `A008864(n+1)+A035100(n+1)-2` -/
def P622427717423067309.Spec : Prop :=
  ∀ n, P622427717423067309.a n = A098390 (n + 1)

theorem P622427717423067309.correct : P622427717423067309.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P622427717423067309.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A035100, A035100.P16711503485959756516.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P18348473766327969421

`A098389(n+1)+2*A098388(n+1)`
-/

namespace A098390.P18348473766327969421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098389 (n + 1) + 2 * A098388 (n + 1)

end

end A098390.P18348473766327969421

namespace A098390

/-- `A098389(n+1)+2*A098388(n+1)` -/
def P18348473766327969421.Spec : Prop :=
  ∀ n, P18348473766327969421.a n = A098390 (n + 1)

theorem P18348473766327969421.correct : P18348473766327969421.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P18348473766327969421.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098388, A098388.P14774635796697876717.a, A098389, A098389.P3872260682828643311.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P17824905334007289865

`2*A000040(n+1)-A098389(n+1)`
-/

namespace A098390.P17824905334007289865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A098389 (n + 1)

end

end A098390.P17824905334007289865

namespace A098390

/-- `2*A000040(n+1)-A098389(n+1)` -/
def P17824905334007289865.Spec : Prop :=
  ∀ n, P17824905334007289865.a n = A098390 (n + 1)

theorem P17824905334007289865.correct : P17824905334007289865.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P17824905334007289865.a, A098390.P10528936941133441852.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098389, A098389.P3872260682828643311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P15680759922647654548

`A000040(n+1)+∑[char[A185192(n+1)]]`
-/

namespace A098390.P15680759922647654548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A098390.P15680759922647654548

namespace A098390

/-- `A000040(n+1)+∑[char[A185192(n+1)]]` -/
def P15680759922647654548.Spec : Prop :=
  ∀ n, P15680759922647654548.a n = A098390 (n + 1)

end A098390

/-! ## A098390.P1657647962864725627

`A098388(n+1)+A098392(n+1)+A098391(n+1)`
-/

namespace A098390.P1657647962864725627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + (A098392 (n + 1) + A098391 (n + 1))

end

end A098390.P1657647962864725627

namespace A098390

/-- `A098388(n+1)+A098392(n+1)+A098391(n+1)` -/
def P1657647962864725627.Spec : Prop :=
  ∀ n, P1657647962864725627.a n = A098390 (n + 1)

theorem P1657647962864725627.correct : P1657647962864725627.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P1657647962864725627.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098388, A098388.P14774635796697876717.a, A098391, A098391.P7594412131589195022.a, A098392, A098392.P2010536417266136406.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P793777400441728043

`A035100(n+1)+A163293(n+1)+A098388(n+1)`
-/

namespace A098390.P793777400441728043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) + (A163293 (n + 1) + A098388 (n + 1))

end

end A098390.P793777400441728043

namespace A098390

/-- `A035100(n+1)+A163293(n+1)+A098388(n+1)` -/
def P793777400441728043.Spec : Prop :=
  ∀ n, P793777400441728043.a n = A098390 (n + 1)

theorem P793777400441728043.correct : P793777400441728043.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P793777400441728043.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098388, A098388.P14774635796697876717.a, A163293, A163293.P4247609805888595491.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P15361750193659169451

`A098388(n+1)+A163292(n+1)+A163291(n+1)`
-/

namespace A098390.P15361750193659169451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + (A163292 (n + 1) + A163291 (n + 1))

end

end A098390.P15361750193659169451

namespace A098390

/-- `A098388(n+1)+A163292(n+1)+A163291(n+1)` -/
def P15361750193659169451.Spec : Prop :=
  ∀ n, P15361750193659169451.a n = A098390 (n + 1)

theorem P15361750193659169451.correct : P15361750193659169451.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P15361750193659169451.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098388, A098388.P14774635796697876717.a, A163291, A163291.P14435979190874790794.a, A163292, A163292.P8227225209679286486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P14269620170292877572

`A098386(n+1)+A098387(n+1)-A098389(n+1)`
-/

namespace A098390.P14269620170292877572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098386 (n + 1) + (A098387 (n + 1) - A098389 (n + 1))

end

end A098390.P14269620170292877572

namespace A098390

/-- `A098386(n+1)+A098387(n+1)-A098389(n+1)` -/
def P14269620170292877572.Spec : Prop :=
  ∀ n, P14269620170292877572.a n = A098390 (n + 1)

end A098390

/-! ## A098390.P15171047770936329180

`A098388(n+1)+A098393(n+1)-A098391(n+1)`
-/

namespace A098390.P15171047770936329180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + (A098393 (n + 1) - A098391 (n + 1))

end

end A098390.P15171047770936329180

namespace A098390

/-- `A098388(n+1)+A098393(n+1)-A098391(n+1)` -/
def P15171047770936329180.Spec : Prop :=
  ∀ n, P15171047770936329180.a n = A098390 (n + 1)

theorem P15171047770936329180.correct : P15171047770936329180.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P15171047770936329180.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098388, A098388.P14774635796697876717.a, A098391, A098391.P7594412131589195022.a, A098393, A098393.P849539689524523398.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, A000523, A000523.P3314682526375882520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P15475558112762965219

`A098392(n+1)+A098393(n+1)-A098389(n+1)`
-/

namespace A098390.P15475558112762965219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098392 (n + 1) + (A098393 (n + 1) - A098389 (n + 1))

end

end A098390.P15475558112762965219

namespace A098390

/-- `A098392(n+1)+A098393(n+1)-A098389(n+1)` -/
def P15475558112762965219.Spec : Prop :=
  ∀ n, P15475558112762965219.a n = A098390 (n + 1)

theorem P15475558112762965219.correct : P15475558112762965219.Spec := by
  intro n
  simp only [A098390, Nat.add_sub_cancel, A098390.P15475558112762965219.a, A098390.P10528936941133441852.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098389, A098389.P3872260682828643311.a, A098392, A098392.P2010536417266136406.a, A098393, A098393.P849539689524523398.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098390

/-! ## A098390.P16902903096503092595

`record[A006530(n+2)+floor(log2(n+2))]`
-/

namespace A098390.P16902903096503092595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + (Nat.log 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098390.P16902903096503092595

namespace A098390

/-- `record[A006530(n+2)+floor(log2(n+2))]` -/
def P16902903096503092595.Spec : Prop :=
  ∀ n, P16902903096503092595.a n = A098390 (n + 1)

end A098390

/-!
# A098391: a(n) = Log2(Log2(prime(n))), where Log2 = A000523.

The programs for A098391, the canonical program `A098391.P7594412131589195022` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098391 has offset 1).

The definition of A098391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098391.P15384596558628952593

`floor(log2(log2(A000040(n+1))))`
-/

namespace A098391.P15384596558628952593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A000040 (n + 1) : ℝ))⌋

end

end A098391.P15384596558628952593

namespace A098391

/-- `floor(log2(log2(A000040(n+1))))` -/
def P15384596558628952593.Spec : Prop :=
  ∀ n, P15384596558628952593.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P17083291421060163499

`floor(log2(log2(A014686(n+1))))`
-/

namespace A098391.P17083291421060163499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A014686 (n + 1) : ℝ))⌋

end

end A098391.P17083291421060163499

namespace A098391

/-- `floor(log2(log2(A014686(n+1))))` -/
def P17083291421060163499.Spec : Prop :=
  ∀ n, P17083291421060163499.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P5777478096411039371

`floor(log2(log2(A039915(n+1))))`
-/

namespace A098391.P5777478096411039371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A039915 (n + 1) : ℝ))⌋

end

end A098391.P5777478096411039371

namespace A098391

/-- `floor(log2(log2(A039915(n+1))))` -/
def P5777478096411039371.Spec : Prop :=
  ∀ n, P5777478096411039371.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P10305290635866974365

`floor(log2(log2(A082542(n+1))))`
-/

namespace A098391.P10305290635866974365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A082542 (n + 1) : ℝ))⌋

end

end A098391.P10305290635866974365

namespace A098391

/-- `floor(log2(log2(A082542(n+1))))` -/
def P10305290635866974365.Spec : Prop :=
  ∀ n, P10305290635866974365.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P11939308462676347552

`floor(log2(log2(A171057(n+1))))`
-/

namespace A098391.P11939308462676347552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A171057 (n + 1) : ℝ))⌋

end

end A098391.P11939308462676347552

namespace A098391

/-- `floor(log2(log2(A171057(n+1))))` -/
def P11939308462676347552.Spec : Prop :=
  ∀ n, P11939308462676347552.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P13005219123905148047

`ceil(log2(log2(A104103(n+1))))`
-/

namespace A098391.P13005219123905148047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.logb 2 (A104103 (n + 1) : ℝ))⌉

end

end A098391.P13005219123905148047

namespace A098391

/-- `ceil(log2(log2(A104103(n+1))))` -/
def P13005219123905148047.Spec : Prop :=
  ∀ n, P13005219123905148047.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P10800727076429237872

`floor(log2(log2(A040976(n+1)+2)))`
-/

namespace A098391.P10800727076429237872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A040976 (n + 1) + 2 : ℝ))⌋

end

end A098391.P10800727076429237872

namespace A098391

/-- `floor(log2(log2(A040976(n+1)+2)))` -/
def P10800727076429237872.Spec : Prop :=
  ∀ n, P10800727076429237872.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P283790765232314359

`floor(log2(log2(A113935(n+1)-3)))`
-/

namespace A098391.P283790765232314359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A113935 (n + 1) - 3 : ℝ))⌋

end

end A098391.P283790765232314359

namespace A098391

/-- `floor(log2(log2(A113935(n+1)-3)))` -/
def P283790765232314359.Spec : Prop :=
  ∀ n, P283790765232314359.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P3711697846502701312

`floor(log2(log2(A001748(n+1)/3)))`
-/

namespace A098391.P3711697846502701312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 ((A001748 (n + 1) : ℚ) / 3 : ℝ))⌋

end

end A098391.P3711697846502701312

namespace A098391

/-- `floor(log2(log2(A001748(n+1)/3)))` -/
def P3711697846502701312.Spec : Prop :=
  ∀ n, P3711697846502701312.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P5100528810742436664

`floor(log2(log2(A001749(n+1)/4)))`
-/

namespace A098391.P5100528810742436664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 ((A001749 (n + 1) : ℚ) / 4 : ℝ))⌋

end

end A098391.P5100528810742436664

namespace A098391

/-- `floor(log2(log2(A001749(n+1)/4)))` -/
def P5100528810742436664.Spec : Prop :=
  ∀ n, P5100528810742436664.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P7057118880081144157

`floor(log2(log2(A033286(n+1)/(n+1))))`
-/

namespace A098391.P7057118880081144157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ))⌋

end

end A098391.P7057118880081144157

namespace A098391

/-- `floor(log2(log2(A033286(n+1)/(n+1))))` -/
def P7057118880081144157.Spec : Prop :=
  ∀ n, P7057118880081144157.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P7594412131589195022

`A000040(n+1)-A098392(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098391

/-- `A000040(n+1)-A098392(n+1)` -/
def P7594412131589195022.Spec : Prop :=
  ∀ n, P7594412131589195022.a n = A098391 (n + 1)

theorem P7594412131589195022.correct : P7594412131589195022.Spec := by
  intro n
  simp only [A098391, Nat.add_sub_cancel]

end A098391

/-! ## A098391.P10985732231896690162

`floor(log2(log2(p?[xor(1, n)])))`
-/

namespace A098391.P10985732231896690162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌋

end

end A098391.P10985732231896690162

namespace A098391

/-- `floor(log2(log2(p?[xor(1, n)])))` -/
def P10985732231896690162.Spec : Prop :=
  ∀ n, P10985732231896690162.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P2239531413885945654

`round((4*n*(4*n+1)+1+n)/A115067(2*(n+2)))`
-/

namespace A098391.P2239531413885945654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * (n * (4 * n + 1)) + 1 + n : ℚ) / (A115067 (2 * (n + 2)) : ℚ))

end

end A098391.P2239531413885945654

namespace A098391

/-- `round((4*n*(4*n+1)+1+n)/A115067(2*(n+2)))` -/
def P2239531413885945654.Spec : Prop :=
  ∀ n, P2239531413885945654.a n = A098391 (n + 1)

end A098391

/-! ## A098391.P13209577228149211845

`floor(log2(record[log2(A014963(n+2))]))`
-/

namespace A098391.P13209577228149211845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014963 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))⌋

end

end A098391.P13209577228149211845

namespace A098391

/-- `floor(log2(record[log2(A014963(n+2))]))` -/
def P13209577228149211845.Spec : Prop :=
  ∀ n, P13209577228149211845.a n = A098391 (n + 1)

end A098391

/-!
# A098392: Prime(n)-Log2(Log2(prime(n))), where Log2=A000523.

The programs for A098392, the canonical program `A098392.P2010536417266136406` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098392 has offset 1).

The definition of A098392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098392.P909790859681724246

`floor(p?[round(8*n/7)]²/A098393(n+1))`
-/

namespace A098392.P909790859681724246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℚ) / (A098393 (n + 1) : ℚ)⌋

end

end A098392.P909790859681724246

namespace A098392

/-- `floor(p?[round(8*n/7)]²/A098393(n+1))` -/
def P909790859681724246.Spec : Prop :=
  ∀ n, P909790859681724246.a n = A098392 (n + 1)

end A098392

/-! ## A098392.P13494837169363322373

`Δ[A007504(n)]-A098391(n+1)`
-/

namespace A098392.P13494837169363322373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A098391 (n + 1)

end

end A098392.P13494837169363322373

namespace A098392

/-- `Δ[A007504(n)]-A098391(n+1)` -/
def P13494837169363322373.Spec : Prop :=
  ∀ n, P13494837169363322373.a n = A098392 (n + 1)

end A098392

/-! ## A098392.P15941490976246406948

`A000040(n+1)-A098391(n+1)`
-/

namespace A098392.P15941490976246406948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A098391 (n + 1)

end

end A098392.P15941490976246406948

namespace A098392

/-- `A000040(n+1)-A098391(n+1)` -/
def P15941490976246406948.Spec : Prop :=
  ∀ n, P15941490976246406948.a n = A098392 (n + 1)

theorem P15941490976246406948.correct : P15941490976246406948.Spec := by
  intro n
  simp only [A098392, Nat.add_sub_cancel, A098392.P15941490976246406948.a, A098392.P2010536417266136406.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098391, A098391.P7594412131589195022.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098392

/-! ## A098392.P17881393915100876342

`A100484(n+1)-A098393(n+1)`
-/

namespace A098392.P17881393915100876342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A098393 (n + 1)

end

end A098392.P17881393915100876342

namespace A098392

/-- `A100484(n+1)-A098393(n+1)` -/
def P17881393915100876342.Spec : Prop :=
  ∀ n, P17881393915100876342.a n = A098392 (n + 1)

theorem P17881393915100876342.correct : P17881393915100876342.Spec := by
  intro n
  simp only [A098392, Nat.add_sub_cancel, A098392.P17881393915100876342.a, A098392.P2010536417266136406.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098393, A098393.P849539689524523398.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098392

/-! ## A098392.P4612187705219646289

`2*A000040(n+1)-A098393(n+1)`
-/

namespace A098392.P4612187705219646289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A098393 (n + 1)

end

end A098392.P4612187705219646289

namespace A098392

/-- `2*A000040(n+1)-A098393(n+1)` -/
def P4612187705219646289.Spec : Prop :=
  ∀ n, P4612187705219646289.a n = A098392 (n + 1)

theorem P4612187705219646289.correct : P4612187705219646289.Spec := by
  intro n
  simp only [A098392, Nat.add_sub_cancel, A098392.P4612187705219646289.a, A098392.P2010536417266136406.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098393, A098393.P849539689524523398.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098392

/-! ## A098392.P1844783478707452178

`A098393(n+1)-2*A098391(n+1)`
-/

namespace A098392.P1844783478707452178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098393 (n + 1) - 2 * A098391 (n + 1)

end

end A098392.P1844783478707452178

namespace A098392

/-- `A098393(n+1)-2*A098391(n+1)` -/
def P1844783478707452178.Spec : Prop :=
  ∀ n, P1844783478707452178.a n = A098392 (n + 1)

theorem P1844783478707452178.correct : P1844783478707452178.Spec := by
  intro n
  simp only [A098392, Nat.add_sub_cancel, A098392.P1844783478707452178.a, A098392.P2010536417266136406.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098391, A098391.P7594412131589195022.a, A098393, A098393.P849539689524523398.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098392

/-! ## A098392.P2010536417266136406

`A000040(n+1)-A000523(A098388(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098392

/-- `A000040(n+1)-A000523(A098388(n+1))` -/
def P2010536417266136406.Spec : Prop :=
  ∀ n, P2010536417266136406.a n = A098392 (n + 1)

theorem P2010536417266136406.correct : P2010536417266136406.Spec := by
  intro n
  simp only [A098392, Nat.add_sub_cancel]

end A098392

/-! ## A098392.P17780041937794230950

`A098386(n+1)+A098387(n+1)-A098393(n+1)`
-/

namespace A098392.P17780041937794230950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098386 (n + 1) + (A098387 (n + 1) - A098393 (n + 1))

end

end A098392.P17780041937794230950

namespace A098392

/-- `A098386(n+1)+A098387(n+1)-A098393(n+1)` -/
def P17780041937794230950.Spec : Prop :=
  ∀ n, P17780041937794230950.a n = A098392 (n + 1)

end A098392

/-! ## A098392.P13531973612774562511

`A098388(n+1)+A098389(n+1)-A098391(n+1)`
-/

namespace A098392.P13531973612774562511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + (A098389 (n + 1) - A098391 (n + 1))

end

end A098392.P13531973612774562511

namespace A098392

/-- `A098388(n+1)+A098389(n+1)-A098391(n+1)` -/
def P13531973612774562511.Spec : Prop :=
  ∀ n, P13531973612774562511.a n = A098392 (n + 1)

theorem P13531973612774562511.correct : P13531973612774562511.Spec := by
  intro n
  simp only [A098392, Nat.add_sub_cancel, A098392.P13531973612774562511.a, A098392.P2010536417266136406.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098389, A098389.P3872260682828643311.a, A098391, A098391.P7594412131589195022.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098392

/-! ## A098392.P5309702292281212703

`A098390(n+1)-(A098391(n+1)+A098388(n+1))`
-/

namespace A098392.P5309702292281212703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098390 (n + 1) - (A098391 (n + 1) + A098388 (n + 1))

end

end A098392.P5309702292281212703

namespace A098392

/-- `A098390(n+1)-(A098391(n+1)+A098388(n+1))` -/
def P5309702292281212703.Spec : Prop :=
  ∀ n, P5309702292281212703.a n = A098392 (n + 1)

theorem P5309702292281212703.correct : P5309702292281212703.Spec := by
  intro n
  simp only [A098392, Nat.add_sub_cancel, A098392.P5309702292281212703.a, A098392.P2010536417266136406.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098390, A098390.P10528936941133441852.a, A098391, A098391.P7594412131589195022.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098392

/-! ## A098392.P653310097906009812

`A098389(n+1)+A098390(n+1)-A098393(n+1)`
-/

namespace A098392.P653310097906009812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098389 (n + 1) + (A098390 (n + 1) - A098393 (n + 1))

end

end A098392.P653310097906009812

namespace A098392

/-- `A098389(n+1)+A098390(n+1)-A098393(n+1)` -/
def P653310097906009812.Spec : Prop :=
  ∀ n, P653310097906009812.a n = A098392 (n + 1)

theorem P653310097906009812.correct : P653310097906009812.Spec := by
  intro n
  simp only [A098392, Nat.add_sub_cancel, A098392.P653310097906009812.a, A098392.P2010536417266136406.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098389, A098389.P3872260682828643311.a, A098390, A098390.P10528936941133441852.a, A098393, A098393.P849539689524523398.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098392

/-! ## A098392.P7408088347410200940

`record[A006530(n+2)]-A098391(n+1)`
-/

namespace A098392.P7408088347410200940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A098391 (n + 1)

end

end A098392.P7408088347410200940

namespace A098392

/-- `record[A006530(n+2)]-A098391(n+1)` -/
def P7408088347410200940.Spec : Prop :=
  ∀ n, P7408088347410200940.a n = A098392 (n + 1)

end A098392

/-! ## A098392.P16040483222120686427

`record[A020639(n+2)]-A098391(n+1)`
-/

namespace A098392.P16040483222120686427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A098391 (n + 1)

end

end A098392.P16040483222120686427

namespace A098392

/-- `record[A020639(n+2)]-A098391(n+1)` -/
def P16040483222120686427.Spec : Prop :=
  ∀ n, P16040483222120686427.a n = A098392 (n + 1)

end A098392

/-! ## A098392.P17624854087831005944

`record[A000010(n+1)]-A098391(n+1)+1`
-/

namespace A098392.P17624854087831005944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A098391 (n + 1) + 1

end

end A098392.P17624854087831005944

namespace A098392

/-- `record[A000010(n+1)]-A098391(n+1)+1` -/
def P17624854087831005944.Spec : Prop :=
  ∀ n, P17624854087831005944.a n = A098392 (n + 1)

end A098392

/-! ## A098392.P2470251772868947866

`eq[4, a(A001222(n))²]-A098391(n+1)` with `a(0)=0, a(1)=2`
-/

namespace A098392.P2470251772868947866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A098391 (n + 1)

end

end A098392.P2470251772868947866

namespace A098392

/-- `eq[4, a(A001222(n))²]-A098391(n+1)` -/
def P2470251772868947866.Spec : Prop :=
  ∀ n, P2470251772868947866.a n = A098392 (n + 1)

end A098392

/-! ## A098392.P17425083636551515835

`p?[A018252(n+1)-7]-A098391(n+1)`
-/

namespace A098392.P17425083636551515835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A098391 (n + 1)

end

end A098392.P17425083636551515835

namespace A098392

/-- `p?[A018252(n+1)-7]-A098391(n+1)` -/
def P17425083636551515835.Spec : Prop :=
  ∀ n, P17425083636551515835.a n = A098392 (n + 1)

end A098392

/-! ## A098392.P8872380661227745487

`p?[A001057(n)]-A098391(n+1)`
-/

namespace A098392.P8872380661227745487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A098391 (n + 1)

end

end A098392.P8872380661227745487

namespace A098392

/-- `p?[A001057(n)]-A098391(n+1)` -/
def P8872380661227745487.Spec : Prop :=
  ∀ n, P8872380661227745487.a n = A098392 (n + 1)

end A098392

/-!
# A098393: Prime(n)+Log2(Log2(prime(n))), where Log2=A000523.

The programs for A098393, the canonical program `A098393.P849539689524523398` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098393 has offset 1).

The definition of A098393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098393.P16891544212395631820

`A098391(n+1)+Δ[A007504(n)]`
-/

namespace A098393.P16891544212395631820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (n + 1) + (f1 (n + 1) - f1 n)

end

end A098393.P16891544212395631820

namespace A098393

/-- `A098391(n+1)+Δ[A007504(n)]` -/
def P16891544212395631820.Spec : Prop :=
  ∀ n, P16891544212395631820.a n = A098393 (n + 1)

end A098393

/-! ## A098393.P12140814568534595896

`A098391(n+1)+A000040(n+1)`
-/

namespace A098393.P12140814568534595896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (n + 1) + A000040 (n + 1)

end

end A098393.P12140814568534595896

namespace A098393

/-- `A098391(n+1)+A000040(n+1)` -/
def P12140814568534595896.Spec : Prop :=
  ∀ n, P12140814568534595896.a n = A098393 (n + 1)

theorem P12140814568534595896.correct : P12140814568534595896.Spec := by
  intro n
  simp only [A098393, Nat.add_sub_cancel, A098393.P12140814568534595896.a, A098393.P849539689524523398.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098391, A098391.P7594412131589195022.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098393

/-! ## A098393.P849539689524523398

`A100484(n+1)-A098392(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098393

/-- `A100484(n+1)-A098392(n+1)` -/
def P849539689524523398.Spec : Prop :=
  ∀ n, P849539689524523398.a n = A098393 (n + 1)

theorem P849539689524523398.correct : P849539689524523398.Spec := by
  intro n
  simp only [A098393, Nat.add_sub_cancel]

end A098393

/-! ## A098393.P770010881385046828

`A098392(n+1)+2*A098391(n+1)`
-/

namespace A098393.P770010881385046828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098392 (n + 1) + 2 * A098391 (n + 1)

end

end A098393.P770010881385046828

namespace A098393

/-- `A098392(n+1)+2*A098391(n+1)` -/
def P770010881385046828.Spec : Prop :=
  ∀ n, P770010881385046828.a n = A098393 (n + 1)

theorem P770010881385046828.correct : P770010881385046828.Spec := by
  intro n
  simp only [A098393, Nat.add_sub_cancel, A098393.P770010881385046828.a, A098393.P849539689524523398.a, A098391, A098391.P7594412131589195022.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098393

/-! ## A098393.P2572247925158582623

`2*A000040(n+1)-A098392(n+1)`
-/

namespace A098393.P2572247925158582623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A098392 (n + 1)

end

end A098393.P2572247925158582623

namespace A098393

/-- `2*A000040(n+1)-A098392(n+1)` -/
def P2572247925158582623.Spec : Prop :=
  ∀ n, P2572247925158582623.a n = A098393 (n + 1)

end A098393

/-! ## A098393.P17899900062490733081

`A000523(A098388(n+1))+A000040(n+1)`
-/

namespace A098393.P17899900062490733081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A098388 (n + 1)).toNat + A000040 (n + 1)

end

end A098393.P17899900062490733081

namespace A098393

/-- `A000523(A098388(n+1))+A000040(n+1)` -/
def P17899900062490733081.Spec : Prop :=
  ∀ n, P17899900062490733081.a n = A098393 (n + 1)

theorem P17899900062490733081.correct : P17899900062490733081.Spec := by
  intro n
  simp only [A098393, Nat.add_sub_cancel, A098393.P17899900062490733081.a, A098393.P849539689524523398.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A098388, A098388.P14774635796697876717.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098393

/-! ## A098393.P7338136648985874353

`A098388(n+1)+A098391(n+1)+A098389(n+1)`
-/

namespace A098393.P7338136648985874353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1) + (A098391 (n + 1) + A098389 (n + 1))

end

end A098393.P7338136648985874353

namespace A098393

/-- `A098388(n+1)+A098391(n+1)+A098389(n+1)` -/
def P7338136648985874353.Spec : Prop :=
  ∀ n, P7338136648985874353.a n = A098393 (n + 1)

theorem P7338136648985874353.correct : P7338136648985874353.Spec := by
  intro n
  simp only [A098393, Nat.add_sub_cancel, A098393.P7338136648985874353.a, A098393.P849539689524523398.a, A098388, A098388.P14774635796697876717.a, A098389, A098389.P3872260682828643311.a, A098391, A098391.P7594412131589195022.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098393

/-! ## A098393.P6369781045501305422

`A098386(n+1)+A098387(n+1)-A098392(n+1)`
-/

namespace A098393.P6369781045501305422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098386 (n + 1) + (A098387 (n + 1) - A098392 (n + 1))

end

end A098393.P6369781045501305422

namespace A098393

/-- `A098386(n+1)+A098387(n+1)-A098392(n+1)` -/
def P6369781045501305422.Spec : Prop :=
  ∀ n, P6369781045501305422.a n = A098393 (n + 1)

end A098393

/-! ## A098393.P14246189638562597277

`A098390(n+1)+A098391(n+1)-A098388(n+1)`
-/

namespace A098393.P14246189638562597277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098390 (n + 1) + (A098391 (n + 1) - A098388 (n + 1))

end

end A098393.P14246189638562597277

namespace A098393

/-- `A098390(n+1)+A098391(n+1)-A098388(n+1)` -/
def P14246189638562597277.Spec : Prop :=
  ∀ n, P14246189638562597277.a n = A098393 (n + 1)

theorem P14246189638562597277.correct : P14246189638562597277.Spec := by
  intro n
  simp only [A098393, Nat.add_sub_cancel, A098393.P14246189638562597277.a, A098393.P849539689524523398.a, A098388, A098388.P14774635796697876717.a, A098390, A098390.P10528936941133441852.a, A098391, A098391.P7594412131589195022.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098393

/-! ## A098393.P17973290972472543156

`A098389(n+1)+A098390(n+1)-A098392(n+1)`
-/

namespace A098393.P17973290972472543156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098389 (n + 1) + (A098390 (n + 1) - A098392 (n + 1))

end

end A098393.P17973290972472543156

namespace A098393

/-- `A098389(n+1)+A098390(n+1)-A098392(n+1)` -/
def P17973290972472543156.Spec : Prop :=
  ∀ n, P17973290972472543156.a n = A098393 (n + 1)

theorem P17973290972472543156.correct : P17973290972472543156.Spec := by
  intro n
  simp only [A098393, Nat.add_sub_cancel, A098393.P17973290972472543156.a, A098393.P849539689524523398.a, A098389, A098389.P3872260682828643311.a, A098390, A098390.P10528936941133441852.a, A098392, A098392.P2010536417266136406.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000523, A000523.P3314682526375882520.a, A006093, A006093.P2906174024863549003.a, A035100, A035100.P16711503485959756516.a, A098388, A098388.P14774635796697876717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098393

/-! ## A098393.P17733214607152215003

`A098391(n+1)+record[A006530(n+2)]`
-/

namespace A098393.P17733214607152215003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098393.P17733214607152215003

namespace A098393

/-- `A098391(n+1)+record[A006530(n+2)]` -/
def P17733214607152215003.Spec : Prop :=
  ∀ n, P17733214607152215003.a n = A098393 (n + 1)

end A098393

/-! ## A098393.P12520997460563236242

`A098391(n+1)+record[A020639(n+2)]`
-/

namespace A098393.P12520997460563236242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098393.P12520997460563236242

namespace A098393

/-- `A098391(n+1)+record[A020639(n+2)]` -/
def P12520997460563236242.Spec : Prop :=
  ∀ n, P12520997460563236242.a n = A098393 (n + 1)

end A098393

/-! ## A098393.P15946841863532593645

`record[A000010(n+1)]+A098391(n+1)+1`
-/

namespace A098393.P15946841863532593645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A098391 (n + 1) + 1)

end

end A098393.P15946841863532593645

namespace A098393

/-- `record[A000010(n+1)]+A098391(n+1)+1` -/
def P15946841863532593645.Spec : Prop :=
  ∀ n, P15946841863532593645.a n = A098393 (n + 1)

end A098393

/-! ## A098393.P9992723714962192448

`A098391(n+1)+p?[A001057(n)]`
-/

namespace A098393.P9992723714962192448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098391 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098393.P9992723714962192448

namespace A098393

/-- `A098391(n+1)+p?[A001057(n)]` -/
def P9992723714962192448.Spec : Prop :=
  ∀ n, P9992723714962192448.a n = A098393 (n + 1)

end A098393

/-!
# A098394: Next larger integer including the smallest digit of n.

The programs for A098394, the canonical program `A098394.P8766548074756510504` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098394 has offset 1).

The definition of A098394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098394.P15489341857908864226

`round(1/acot(A011540(n+1)))`
-/

namespace A098394.P15489341857908864226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A011540 (n + 1) : ℝ))

end

end A098394.P15489341857908864226

namespace A098394

/-- `round(1/acot(A011540(n+1)))` -/
def P15489341857908864226.Spec : Prop :=
  ∀ n, P15489341857908864226.a n = A098394 (n + 1)

end A098394

/-! ## A098394.P8766548074756510504

`A011540(n+1)+A000007(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098394

/-- `A011540(n+1)+A000007(n)` -/
def P8766548074756510504.Spec : Prop :=
  ∀ n, P8766548074756510504.a n = A098394 (n + 1)

theorem P8766548074756510504.correct : P8766548074756510504.Spec := by
  intro n
  simp only [A098394, Nat.add_sub_cancel]

end A098394

/-! ## A098394.P3373011382250585835

`A011540(n+1)+1-A057427(n)`
-/

namespace A098394.P3373011382250585835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1) + (1 - A057427 n)

end

end A098394.P3373011382250585835

namespace A098394

/-- `A011540(n+1)+1-A057427(n)` -/
def P3373011382250585835.Spec : Prop :=
  ∀ n, P3373011382250585835.a n = A098394 (n + 1)

end A098394

/-! ## A098394.P7631803137436185614

`A212499(A171891(n+1))`
-/

namespace A098394.P7631803137436185614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212499 (A171891 (n + 1)).toNat

end

end A098394.P7631803137436185614

namespace A098394

/-- `A212499(A171891(n+1))` -/
def P7631803137436185614.Spec : Prop :=
  ∀ n, P7631803137436185614.a n = A098394 (n + 1)

end A098394

/-! ## A098394.P15414771557828924773

`∩[A212499(n+1), A284375(n+1)]`
-/

namespace A098394.P15414771557828924773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098394.P15414771557828924773

namespace A098394

/-- `∩[A212499(n+1), A284375(n+1)]` -/
def P15414771557828924773.Spec : Prop :=
  ∀ n, (P15414771557828924773.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P3869021311761897536

`∩[A038367(n+1), A284375(n+1)]`
-/

namespace A098394.P3869021311761897536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098394.P3869021311761897536

namespace A098394

/-- `∩[A038367(n+1), A284375(n+1)]` -/
def P3869021311761897536.Spec : Prop :=
  ∀ n, (P3869021311761897536.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P7244915548860948379

`lt[A321243(n)², 2*n]`
-/

namespace A098394.P7244915548860948379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A098394.P7244915548860948379

namespace A098394

/-- `lt[A321243(n)², 2*n]` -/
def P7244915548860948379.Spec : Prop :=
  ∀ n, (P7244915548860948379.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P8386784683162102208

`record[C(A070565(n+1), n)]`
-/

namespace A098394.P8386784683162102208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070565 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098394.P8386784683162102208

namespace A098394

/-- `record[C(A070565(n+1), n)]` -/
def P8386784683162102208.Spec : Prop :=
  ∀ n, (P8386784683162102208.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P15243261794531080368

`lt[A007954(n), acot(n-1)]`
-/

namespace A098394.P15243261794531080368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A098394.P15243261794531080368

namespace A098394

/-- `lt[A007954(n), acot(n-1)]` -/
def P15243261794531080368.Spec : Prop :=
  ∀ n, (P15243261794531080368.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P14274401083685744037

`eq[C(n, n²), A004428(n)]`
-/

namespace A098394.P14274401083685744037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098394.P14274401083685744037

namespace A098394

/-- `eq[C(n, n²), A004428(n)]` -/
def P14274401083685744037.Spec : Prop :=
  ∀ n, (P14274401083685744037.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P13729064548105805801

`floor(acot(n)+record[A070565(n)])`
-/

namespace A098394.P13729064548105805801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A098394.P13729064548105805801

namespace A098394

/-- `floor(acot(n)+record[A070565(n)])` -/
def P13729064548105805801.Spec : Prop :=
  ∀ n, P13729064548105805801.a n = A098394 (n + 1)

end A098394

/-! ## A098394.P8434218145191012

`lt[A066308(n+1), 2]+1`
-/

namespace A098394.P8434218145191012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066308 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A098394.P8434218145191012

namespace A098394

/-- `lt[A066308(n+1), 2]+1` -/
def P8434218145191012.Spec : Prop :=
  ∀ n, (P8434218145191012.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P1735643059739672548

`lt[A321243(n+1), 2]+1`
-/

namespace A098394.P1735643059739672548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321243 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A098394.P1735643059739672548

namespace A098394

/-- `lt[A321243(n+1), 2]+1` -/
def P1735643059739672548.Spec : Prop :=
  ∀ n, (P1735643059739672548.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P11431957203042065742

`A028310(A011540(n+1))`
-/

namespace A098394.P11431957203042065742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A011540 (n + 1)).toNat

end

end A098394.P11431957203042065742

namespace A098394

/-- `A028310(A011540(n+1))` -/
def P11431957203042065742.Spec : Prop :=
  ∀ n, P11431957203042065742.a n = A098394 (n + 1)

end A098394

/-! ## A098394.P7124951066577258709

`lt[(1-A098736(n))², n]`
-/

namespace A098394.P7124951066577258709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A098736 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A098394.P7124951066577258709

namespace A098394

/-- `lt[(1-A098736(n))², n]` -/
def P7124951066577258709.Spec : Prop :=
  ∀ n, (P7124951066577258709.a n : ℤ) = A098394 (n + 1)

end A098394

/-! ## A098394.P4980728120524977847

`lt[A098736(n+1), 2]+1`
-/

namespace A098394.P4980728120524977847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A098394.P4980728120524977847

namespace A098394

/-- `lt[A098736(n+1), 2]+1` -/
def P4980728120524977847.Spec : Prop :=
  ∀ n, (P4980728120524977847.a n : ℤ) = A098394 (n + 1)

end A098394

/-!
# A098395: a(n) is the next larger integer including the highest digit of a(n-1), a(1) = 1.

The programs for A098395, there is no canonical definition to state claims against.
-/

/-! ## A098395.P16481098544279534507

`record[A286890(n+1)]`
-/

namespace A098395.P16481098544279534507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098395.P16481098544279534507

/-! ## A098395.P9959122065740794220

`record[A297418(abs(1-n)+2)]`
-/

namespace A098395.P9959122065740794220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297418 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098395.P9959122065740794220

/-! ## A098395.P11191888192493334699

`record[or(C(2, n), A297418(n+1))]`
-/

namespace A098395.P11191888192493334699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A297418 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098395.P11191888192493334699

/-! ## A098395.P16665612403615704618

`A028310(record[A297418(n+1)])`
-/

namespace A098395.P16665612403615704618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098395.P16665612403615704618

/-! ## A098395.P13683870497530058887

`record[A297418(n+1)+A000007(n)]`
-/

namespace A098395.P13683870497530058887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297418 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098395.P13683870497530058887

/-! ## A098395.P15841006615467395576

`record[A297418(n+1)+and(1, A000010(n+2))]`
-/

namespace A098395.P15841006615467395576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297418 (n + 1) + Int.land 1 (A000010 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098395.P15841006615467395576

/-! ## A098395.P12837714335598945499

`A014963(n*a(n-1))*record[A297418(n+1)]` with `a(0)=1`
-/

namespace A098395.P12837714335598945499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 ((n : ℤ) * a (n - 1)).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098395.P12837714335598945499

/-! ## A098395.P15081075173847027874

`record[A297418(n+1)^A001221(A001316(n))]`
-/

namespace A098395.P15081075173847027874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297418 (n + 1) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098395.P15081075173847027874

/-! ## A098395.P12047656837225801814

`lt[A178013(A178049(n)), log2(n+3)]`
-/

namespace A098395.P12047656837225801814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178013 (A178049 (n + 10)).toNat

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A098395.P12047656837225801814

/-! ## A098395.P13730588862976355784

`lt[A178014(A178049(n)), A178052(n+1)]`
-/

namespace A098395.P13730588862976355784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178014 (A178049 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098395.P13730588862976355784

/-!
# A098396: Number of primes that are not less than prime(n)-Log2(n) and not greater than prime(n)+Log2(n), where Log2=A000523.

The programs for A098396, there is no canonical definition to state claims against.
-/

/-! ## A098396.P16050076947660235873

`∑{e}[A316788(A316780(3*n+4)), #]`
-/

namespace A098396.P16050076947660235873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316788 (A316780 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A098396.P16050076947660235873

/-! ## A098396.P17707625400523816098

`A257990(A258002(3*n+1)%A257973(n+5))`
-/

namespace A098396.P17707625400523816098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (Int.tmod (A258002 (3 * n + 1)) (A257973 (n + 5))).toNat

end

end A098396.P17707625400523816098

/-! ## A098396.P258185452150637872

`A257990(A258012(3*n+1)%A257973(n+5))`
-/

namespace A098396.P258185452150637872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (Int.tmod (A258012 (3 * n + 1)) (A257973 (n + 5))).toNat

end

end A098396.P258185452150637872

/-! ## A098396.P15036188973478640927

`A090822(or(A293677(n), A332987(n+1)))`
-/

namespace A098396.P15036188973478640927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (Int.lor (A293677 n) (A332987 (n + 1))).toNat

end

end A098396.P15036188973478640927

/-! ## A098396.P1890242470193964107

`A001221(3*(n+1))-A011734(A000045(n))`
-/

namespace A098396.P1890242470193964107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * (n + 1)) - A011734 (A000045 n).toNat

end

end A098396.P1890242470193964107

/-!
# A098398: Number of primes that are not less than prime(n)-Log2(Log2(prime(n))) and not greater than prime(n)+Log2(Log2(prime(n))), where Log2=A000523.

The programs for A098398, there is no canonical definition to state claims against.
-/

/-! ## A098398.P17673198213477525529

`C(2, A046929(n+1)%A005708(n))!`
-/

namespace A098398.P17673198213477525529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (Int.tmod (A046929 (n + 1)) (A005708 n)).toNat)

end

end A098398.P17673198213477525529

/-! ## A098398.P3470957131093880487

`A027642(A046929(n+1)%A005708(n))`
-/

namespace A098398.P3470957131093880487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (Int.tmod (A046929 (n + 1)) (A005708 n)).toNat

end

end A098398.P3470957131093880487

/-! ## A098398.P17100432145168514011

`A051340(A051702(n+1)%A007294(n))`
-/

namespace A098398.P17100432145168514011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (Int.tmod (A051702 (n + 1)) (A007294 n)).toNat

end

end A098398.P17100432145168514011

/-! ## A098398.P10634212004301672792

`A050873(A051702(C(2, n)+n+1)%A007294(n)+1)`
-/

namespace A098398.P10634212004301672792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (Int.tmod (A051702 (Nat.choose 2 n + n + 1)) (A007294 n) + 1).toNat

end

end A098398.P10634212004301672792

/-! ## A098398.P8724849138955199079

`val(A083249(n+1), A163646(n+1))+1`
-/

namespace A098398.P8724849138955199079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083249 (n + 1)).toNat (A163646 (n + 1)).toNat + 1

end

end A098398.P8724849138955199079

/-! ## A098398.P11484806106531741911

`A000005(gcd(A083249(n+1), A163646(n+1)))`
-/

namespace A098398.P11484806106531741911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A083249 (n + 1)) (A163646 (n + 1)))

end

end A098398.P11484806106531741911

/-! ## A098398.P5480150505839826435

`A000831(val(A083249(n+1), A163646(n+1)))`
-/

namespace A098398.P5480150505839826435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 (SequenceMachineLib.valuation (A083249 (n + 1)).toNat (A163646 (n + 1)).toNat)

end

end A098398.P5480150505839826435

/-! ## A098398.P8918593495046204945

`A001468(val(A083249(n+1), A163646(n+1)))`
-/

namespace A098398.P8918593495046204945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (SequenceMachineLib.valuation (A083249 (n + 1)).toNat (A163646 (n + 1)).toNat)

end

end A098398.P8918593495046204945

/-! ## A098398.P9750350712974702690

`A014695(val(A083249(n+1), A163646(n+1)))`
-/

namespace A098398.P9750350712974702690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (SequenceMachineLib.valuation (A083249 (n + 1)).toNat (A163646 (n + 1)).toNat)

end

end A098398.P9750350712974702690

/-! ## A098398.P1776978445959306871

`A027642(val(A083249(n+1), A163646(n+1)))`
-/

namespace A098398.P1776978445959306871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.valuation (A083249 (n + 1)).toNat (A163646 (n + 1)).toNat)

end

end A098398.P1776978445959306871

/-!
# A098399: a(n) = 3^n*binomial(2*n+1, n).

The programs for A098399, the canonical program `A098399.P10752799487027417339` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098399 has offset 0).

The definition of A098399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*C(2*n+1, n)` (program `A098399.P10752799487027417339`, by `A098399.P10752799487027417339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098399.P7526480135355656352

`C(2*n+1, n)*3^n`
-/

namespace A098399.P7526480135355656352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n * 3 ^ n

end

end A098399.P7526480135355656352

namespace A098399

/-- `C(2*n+1, n)*3^n` -/
def P7526480135355656352.Spec : Prop :=
  ∀ n, (P7526480135355656352.a n : ℤ) = A098399 n

theorem P7526480135355656352.correct : P7526480135355656352.Spec := by
  intro n
  simp only [A098399, Nat.add_sub_cancel, A098399.P7526480135355656352.a, A098399.P10752799487027417339.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098399

/-! ## A098399.P10752799487027417339

`3^n*C(2*n+1, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A098399

/-- `3^n*C(2*n+1, n)` -/
def P10752799487027417339.Spec : Prop :=
  ∀ n, (P10752799487027417339.a n : ℤ) = A098399 n

theorem P10752799487027417339.correct : P10752799487027417339.Spec := by
  intro n
  simp only [A098399]

end A098399

/-! ## A098399.P8178371425787083130

`3^n*A001700(n)`
-/

namespace A098399.P8178371425787083130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001700 n

end

end A098399.P8178371425787083130

namespace A098399

/-- `3^n*A001700(n)` -/
def P8178371425787083130.Spec : Prop :=
  ∀ n, P8178371425787083130.a n = A098399 n

theorem P8178371425787083130.correct : P8178371425787083130.Spec := by
  intro n
  simp only [A098399, Nat.add_sub_cancel, A098399.P8178371425787083130.a, A098399.P10752799487027417339.a, A001700, A001700.P11212155124506223364.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098399

/-! ## A098399.P13584727177303523776

`(2*n+1)*A005159(n)`
-/

namespace A098399.P13584727177303523776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A005159 n

end

end A098399.P13584727177303523776

namespace A098399

/-- `(2*n+1)*A005159(n)` -/
def P13584727177303523776.Spec : Prop :=
  ∀ n, P13584727177303523776.a n = A098399 n

end A098399

/-! ## A098399.P466730092535942562

`3^n*(2*n+1)*A000108(n)`
-/

namespace A098399.P466730092535942562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n * (2 * n + 1) : ℤ) * A000108 n

end

end A098399.P466730092535942562

namespace A098399

/-- `3^n*(2*n+1)*A000108(n)` -/
def P466730092535942562.Spec : Prop :=
  ∀ n, P466730092535942562.a n = A098399 n

end A098399

/-! ## A098399.P7330877644401585341

`(12-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A098399.P7330877644401585341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (12 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A098399.P7330877644401585341

namespace A098399

/-- `(12-6/(n+1))*a(n-1)` -/
def P7330877644401585341.Spec : Prop :=
  ∀ n, P7330877644401585341.a n = (A098399 n : ℚ)

end A098399

/-! ## A098399.P14051375346315155222

`3*(4-n/∑[n])*a(n-1)` with `a(0)=1`
-/

namespace A098399.P14051375346315155222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * a (n - 1))

end

end A098399.P14051375346315155222

namespace A098399

/-- `3*(4-n/∑[n])*a(n-1)` -/
def P14051375346315155222.Spec : Prop :=
  ∀ n, P14051375346315155222.a n = (A098399 n : ℚ)

end A098399

/-! ## A098399.P8318769543153172280

`A098662(Δ[n²])`
-/

namespace A098399.P8318769543153172280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098662 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098399.P8318769543153172280

namespace A098399

/-- `A098662(Δ[n²])` -/
def P8318769543153172280.Spec : Prop :=
  ∀ n, P8318769543153172280.a n = A098399 n

end A098399

/-! ## A098399.P17332729977396167343

`A099044(n+1)/2`
-/

namespace A098399.P17332729977396167343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099044 (n + 1) : ℚ) / 2

end

end A098399.P17332729977396167343

namespace A098399

/-- `A099044(n+1)/2` -/
def P17332729977396167343.Spec : Prop :=
  ∀ n, P17332729977396167343.a n = (A098399 n : ℚ)

end A098399

/-! ## A098399.P8983636467093653558

`A098401(n+1)/3`
-/

namespace A098399.P8983636467093653558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098401 (n + 1) : ℚ) / 3

end

end A098399.P8983636467093653558

namespace A098399

/-- `A098401(n+1)/3` -/
def P8983636467093653558.Spec : Prop :=
  ∀ n, P8983636467093653558.a n = (A098399 n : ℚ)

end A098399

