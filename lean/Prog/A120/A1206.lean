import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A120601: G.f. satisfies: 15*A(x) = 14 + 27*x + A(x)^6, starting with [1,3,15].

The programs for A120601, there is no canonical definition to state claims against.
-/

/-! ## A120601.P17899210331940871583

`A000203(A164204(∑[∑{d}[n+1, #-1]]))`
-/

namespace A120601.P17899210331940871583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A164204 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A120601.P17899210331940871583

/-!
# A120602: G.f. satisfies: 31*A(x) = 30 + 125*x + A(x)^6, starting with [1,5,15].

The programs for A120602, there is no canonical definition to state claims against.
-/

/-! ## A120602.P6831185174647730185

`A265546(A145089(n)+A037287(n))`
-/

namespace A120602.P6831185174647730185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 (A145089 n + A037287 n).toNat

end

end A120602.P6831185174647730185

/-!
# A120606: G.f. satisfies: 36*A(x) = 35 + 81*x + A(x)^9, starting with [1,3,12].

The programs for A120606, there is no canonical definition to state claims against.
-/

/-! ## A120606.P5654731379248095

`3*A130983(n*a(n-1))` with `a(0)=1`
-/

namespace A120606.P5654731379248095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A130983 ((n : ℤ) * a (n - 1)).toNat

end

end A120606.P5654731379248095

/-!
# A120607: G.f. satisfies: 37*A(x) = 36 + 81*x + A(x)^10, starting with [1,3,15].

The programs for A120607, there is no canonical definition to state claims against.
-/

/-! ## A120607.P8836344421247890051

`A054353(A000837(n)*A381449(n))`
-/

namespace A120607.P8836344421247890051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A000837 n * A381449 n).toNat

end

end A120607.P8836344421247890051

/-!
# A120608: Number of inequivalent (under the "inversion of variables") monotone Boolean nondegenerate functions of n variables.

The programs for A120608, there is no canonical definition to state claims against.
-/

/-! ## A120608.P16712699113356195064

`A006159(A006126(n)+A004111(n))`
-/

namespace A120608.P16712699113356195064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006159 (A006126 n + A004111 n).toNat

end

end A120608.P16712699113356195064

/-!
# A120611: Sum of previous term and preceding divisors.

The programs for A120611, there is no canonical definition to state claims against.
-/

/-! ## A120611.P8210830911144125020

`∑[dr(A296952(A091885(n+1)))]`
-/

namespace A120611.P8210830911144125020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A296952 (A091885 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120611.P8210830911144125020

/-! ## A120611.P6403545905672340286

`eq[A025874(n+1)², A025878(2*n)]`
-/

namespace A120611.P6403545905672340286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120611.P6403545905672340286

/-! ## A120611.P1561414646238631901

`lt[A077268(A167934(n)), A033093(n+1)]`
-/

namespace A120611.P1561414646238631901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077268 (A167934 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120611.P1561414646238631901

/-! ## A120611.P4174959429049885113

`lt[A142150(A035959(n)), A046145(3*n+1)]`
-/

namespace A120611.P4174959429049885113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A035959 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120611.P4174959429049885113

/-!
# A120612: For n>1, a(n) = 2*a(n-1) + 15*a(n-2); a(0)=1, a(1)=1.

The programs for A120612, the canonical program `A120612.P3089058486657166182` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120612 has offset 0).

The definition of A120612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+15*a(n-2)` (program `A120612.P3089058486657166182`, by `A120612.P3089058486657166182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120612.P8908885486672956631

`(5^n+(-3)^n)/2`
-/

namespace A120612.P8908885486672956631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) + (-3) ^ n : ℚ) / 2

end

end A120612.P8908885486672956631

namespace A120612

/-- `(5^n+(-3)^n)/2` -/
def P8908885486672956631.Spec : Prop :=
  ∀ n, P8908885486672956631.a n = (A120612 n : ℚ)

theorem P8908885486672956631.correct : P8908885486672956631.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A120612, Nat.add_sub_cancel, A120612.P8908885486672956631.a, A120612.P3089058486657166182.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A120612, Nat.add_sub_cancel, A120612.P8908885486672956631.a, A120612.P3089058486657166182.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A120612

/-! ## A120612.P3089058486657166182

`2*a(n-1)+15*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120612

/-- `2*a(n-1)+15*a(n-2)` -/
def P3089058486657166182.Spec : Prop :=
  ∀ n, (P3089058486657166182.a n : ℤ) = A120612 n

theorem P3089058486657166182.correct : P3089058486657166182.Spec := by
  intro n
  simp only [A120612]

end A120612

/-! ## A120612.P13461038955843578700

`ogf((-1+x)/(-1+2x+15x^2))`
-/

namespace A120612.P13461038955843578700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -15] n

end

end A120612.P13461038955843578700

namespace A120612

/-- `ogf((-1+x)/(-1+2x+15x^2))` -/
def P13461038955843578700.Spec : Prop :=
  ∀ n, P13461038955843578700.a n = A120612 n

end A120612

/-! ## A120612.P4394656912124035901

`Δ[5^(n-1)-3*a(n-1)]` with `a(0)=0`
-/

namespace A120612.P4394656912124035901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 3 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120612.P4394656912124035901

namespace A120612

/-- `Δ[5^(n-1)-3*a(n-1)]` -/
def P4394656912124035901.Spec : Prop :=
  ∀ n, P4394656912124035901.a n = (A120612 n : ℚ)

end A120612

/-! ## A120612.P4477191289209745129

`Δ[A079773(n)]`
-/

namespace A120612.P4477191289209745129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120612.P4477191289209745129

namespace A120612

/-- `Δ[A079773(n)]` -/
def P4477191289209745129.Spec : Prop :=
  ∀ n, P4477191289209745129.a n = A120612 n

end A120612

/-! ## A120612.P16164201476890252760

`A005054(n)-3*a(n-1)` with `a(0)=1`
-/

namespace A120612.P16164201476890252760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005054 n - 3 * a (n - 1)

end

end A120612.P16164201476890252760

namespace A120612

/-- `A005054(n)-3*a(n-1)` -/
def P16164201476890252760.Spec : Prop :=
  ∀ n, P16164201476890252760.a n = A120612 n

end A120612

/-! ## A120612.P16777239151507801069

`A081340(n)+A076040(n)`
-/

namespace A120612.P16777239151507801069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081340 n + A076040 n

end

end A120612.P16777239151507801069

namespace A120612

/-- `A081340(n)+A076040(n)` -/
def P16777239151507801069.Spec : Prop :=
  ∀ n, P16777239151507801069.a n = A120612 n

end A120612

/-! ## A120612.P10360223765524090394

`A079773(n+1)-A079773(n)`
-/

namespace A120612.P10360223765524090394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079773 (n + 1) - A079773 n

end

end A120612.P10360223765524090394

namespace A120612

/-- `A079773(n+1)-A079773(n)` -/
def P10360223765524090394.Spec : Prop :=
  ∀ n, P10360223765524090394.a n = A120612 n

end A120612

/-! ## A120612.P9862456567359794600

`A034478(n)-2*A014983(n)`
-/

namespace A120612.P9862456567359794600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - 2 * A014983 n

end

end A120612.P9862456567359794600

namespace A120612

/-- `A034478(n)-2*A014983(n)` -/
def P9862456567359794600.Spec : Prop :=
  ∀ n, P9862456567359794600.a n = A120612 n

end A120612

/-! ## A120612.P491591033505170211

`A034478(n)+A076040(n)-A000035(n)`
-/

namespace A120612.P491591033505170211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + (A076040 n - A000035 n)

end

end A120612.P491591033505170211

namespace A120612

/-- `A034478(n)+A076040(n)-A000035(n)` -/
def P491591033505170211.Spec : Prop :=
  ∀ n, P491591033505170211.a n = A120612 n

end A120612

/-! ## A120612.P9873580958321066277

`A083231(n)+A083231(n)-A000351(n)`
-/

namespace A120612.P9873580958321066277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083231 n + (A083231 n - A000351 n)

end

end A120612.P9873580958321066277

namespace A120612

/-- `A083231(n)+A083231(n)-A000351(n)` -/
def P9873580958321066277.Spec : Prop :=
  ∀ n, P9873580958321066277.a n = A120612 n

end A120612

/-! ## A120612.P12302335340345531355

`2*A083231(n)-A000351(n)`
-/

namespace A120612.P12302335340345531355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083231 n - A000351 n

end

end A120612.P12302335340345531355

namespace A120612

/-- `2*A083231(n)-A000351(n)` -/
def P12302335340345531355.Spec : Prop :=
  ∀ n, P12302335340345531355.a n = A120612 n

end A120612

/-!
# A120613: a(n) = floor(phi*floor(n/phi)) where phi=(1+sqrt(5))/2.

The programs for A120613, the canonical program `A120613.P18317146205646883024` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120613 has offset 1).

The definition of A120613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(ϕ*floor((n+1)/ϕ))` (program `A120613.P18317146205646883024`, by `A120613.P18317146205646883024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120613.P18317146205646883024

`floor(ϕ*floor((n+1)/ϕ))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120613

/-- `floor(ϕ*floor((n+1)/ϕ))` -/
def P18317146205646883024.Spec : Prop :=
  ∀ n, P18317146205646883024.a n = A120613 (n + 1)

theorem P18317146205646883024.correct : P18317146205646883024.Spec := by
  intro n
  simp only [A120613, Nat.add_sub_cancel]

end A120613

/-! ## A120613.P12090175106627186594

`(Δ[floor(ϕ*n)]-2+n)%(n+1)`
-/

namespace A120613.P12090175106627186594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 2 + (n : ℤ)) (n + 1 : ℤ)

end

end A120613.P12090175106627186594

namespace A120613

/-- `(Δ[floor(ϕ*n)]-2+n)%(n+1)` -/
def P12090175106627186594.Spec : Prop :=
  ∀ n, P12090175106627186594.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P10484418907064005604

`abs(A114986(n)-1+n)`
-/

namespace A120613.P10484418907064005604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114986 n - 1 + (n : ℤ)|

end

end A120613.P10484418907064005604

namespace A120613

/-- `abs(A114986(n)-1+n)` -/
def P10484418907064005604.Spec : Prop :=
  ∀ n, P10484418907064005604.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P9095661516644319153

`abs(A188432(n+1)-n)`
-/

namespace A120613.P9095661516644319153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188432 (n + 1) - (n : ℤ)|

end

end A120613.P9095661516644319153

namespace A120613

/-- `abs(A188432(n+1)-n)` -/
def P9095661516644319153.Spec : Prop :=
  ∀ n, P9095661516644319153.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P30053059173642548

`A066096(A005206(n))`
-/

namespace A120613.P30053059173642548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A005206 n).toNat

end

end A120613.P30053059173642548

namespace A120613

/-- `A066096(A005206(n))` -/
def P30053059173642548.Spec : Prop :=
  ∀ n, P30053059173642548.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P8270274798652802759

`A066096(∑[A096270(n)])`
-/

namespace A120613.P8270274798652802759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120613.P8270274798652802759

namespace A120613

/-- `A066096(∑[A096270(n)])` -/
def P8270274798652802759.Spec : Prop :=
  ∀ n, P8270274798652802759.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P1738482104602564991

`A066096(A060143(n+1))`
-/

namespace A120613.P1738482104602564991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A060143 (n + 1)).toNat

end

end A120613.P1738482104602564991

namespace A120613

/-- `A066096(A060143(n+1))` -/
def P1738482104602564991.Spec : Prop :=
  ∀ n, P1738482104602564991.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P1280768950550143671

`A066096(A019446(n+1)-1)`
-/

namespace A120613.P1280768950550143671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A019446 (n + 1) - 1).toNat

end

end A120613.P1280768950550143671

namespace A120613

/-- `A066096(A019446(n+1)-1)` -/
def P1280768950550143671.Spec : Prop :=
  ∀ n, P1280768950550143671.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P9996514399189870184

`A066096(A022342(n+1)-n)`
-/

namespace A120613.P9996514399189870184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A022342 (n + 1) - (n : ℤ)).toNat

end

end A120613.P9996514399189870184

namespace A120613

/-- `A066096(A022342(n+1)-n)` -/
def P9996514399189870184.Spec : Prop :=
  ∀ n, P9996514399189870184.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P9245931759843309236

`A066096(A293688(n)/(n+1))`
-/

namespace A120613.P9245931759843309236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (SequenceMachineLib.roundAway ((A293688 n : ℚ) / (n + 1 : ℚ))).toNat

end

end A120613.P9245931759843309236

namespace A120613

/-- `A066096(A293688(n)/(n+1))` -/
def P9245931759843309236.Spec : Prop :=
  ∀ n, P9245931759843309236.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P12107272872269210512

`A066096(A000201(n+1)-(n+1))`
-/

namespace A120613.P12107272872269210512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A000201 (n + 1) - (n + 1 : ℤ)).toNat

end

end A120613.P12107272872269210512

namespace A120613

/-- `A066096(A000201(n+1)-(n+1))` -/
def P12107272872269210512.Spec : Prop :=
  ∀ n, P12107272872269210512.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P11657123392749281290

`A066096(A066096(n+1)-(n+1))`
-/

namespace A120613.P11657123392749281290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A066096 (n + 1) - (n + 1 : ℤ)).toNat

end

end A120613.P11657123392749281290

namespace A120613

/-- `A066096(A066096(n+1)-(n+1))` -/
def P11657123392749281290.Spec : Prop :=
  ∀ n, P11657123392749281290.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P6703338442910358098

`A005206(lt[A048679(n), A048679(n+1)])`
-/

namespace A120613.P6703338442910358098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A120613.P6703338442910358098

namespace A120613

/-- `A005206(lt[A048679(n), A048679(n+1)])` -/
def P6703338442910358098.Spec : Prop :=
  ∀ n, P6703338442910358098.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P5093724956564880508

`A066096(n-A060144(n+1))`
-/

namespace A120613.P5093724956564880508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 ((n : ℤ) - A060144 (n + 1)).toNat

end

end A120613.P5093724956564880508

namespace A120613

/-- `A066096(n-A060144(n+1))` -/
def P5093724956564880508.Spec : Prop :=
  ∀ n, P5093724956564880508.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P15554179083720202738

`A060143(A022342(n+1))`
-/

namespace A120613.P15554179083720202738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A022342 (n + 1)).toNat

end

end A120613.P15554179083720202738

namespace A120613

/-- `A060143(A022342(n+1))` -/
def P15554179083720202738.Spec : Prop :=
  ∀ n, P15554179083720202738.a n = A120613 (n + 1)

end A120613

/-! ## A120613.P17793508921227113488

`abs(char[(n+2)*A003849(n)-1]-n)`
-/

namespace A120613.P17793508921227113488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A003849 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n : ℤ)|

end

end A120613.P17793508921227113488

namespace A120613

/-- `abs(char[(n+2)*A003849(n)-1]-n)` -/
def P17793508921227113488.Spec : Prop :=
  ∀ n, P17793508921227113488.a n = A120613 (n + 1)

end A120613

/-!
# A120614: a(n) = g(n+1) - g(n) where g(k) = floor(phi*floor(k/phi)) and phi = (1+sqrt(5))/2.

The programs for A120614, the canonical program `A120614.P9863577410631039700` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120614 has offset 1).

The definition of A120614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120614.P9793227045804394470

`Δ[Δ[ceil(ϕ*n)]]+1`
-/

namespace A120614.P9793227045804394470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A120614.P9793227045804394470

namespace A120614

/-- `Δ[Δ[ceil(ϕ*n)]]+1` -/
def P9793227045804394470.Spec : Prop :=
  ∀ n, P9793227045804394470.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P10708640532839093545

`and(3, Δ[floor(ϕ*floor((n+1)/ϕ))])`
-/

namespace A120614.P10708640532839093545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (⌊(n + 1 : ℝ) / Real.goldenRatio⌋ : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (n + 1) - f1 n)

end

end A120614.P10708640532839093545

namespace A120614

/-- `and(3, Δ[floor(ϕ*floor((n+1)/ϕ))])` -/
def P10708640532839093545.Spec : Prop :=
  ∀ n, P10708640532839093545.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P9863577410631039700

`Δ[A120613(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120614

/-- `Δ[A120613(n+1)]` -/
def P9863577410631039700.Spec : Prop :=
  ∀ n, P9863577410631039700.a n = A120614 (n + 1)

theorem P9863577410631039700.correct : P9863577410631039700.Spec := by
  intro n
  simp only [A120614, Nat.add_sub_cancel]

end A120614

/-! ## A120614.P9988204115629806428

`Δ[A114986(n)+n]`
-/

namespace A120614.P9988204115629806428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P9988204115629806428

namespace A120614

/-- `Δ[A114986(n)+n]` -/
def P9988204115629806428.Spec : Prop :=
  ∀ n, P9988204115629806428.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P16321824670640170077

`Δ[Δ[A004956(n)]+n]`
-/

namespace A120614.P16321824670640170077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P16321824670640170077

namespace A120614

/-- `Δ[Δ[A004956(n)]+n]` -/
def P16321824670640170077.Spec : Prop :=
  ∀ n, P16321824670640170077.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P9545347910670441468

`Δ[Δ[A004957(n)]+n]`
-/

namespace A120614.P9545347910670441468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P9545347910670441468

namespace A120614

/-- `Δ[Δ[A004957(n)]+n]` -/
def P9545347910670441468.Spec : Prop :=
  ∀ n, P9545347910670441468.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P15396209889579358850

`Δ[n-Δ[A060144(n)]]`
-/

namespace A120614.P15396209889579358850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P15396209889579358850

namespace A120614

/-- `Δ[n-Δ[A060144(n)]]` -/
def P15396209889579358850.Spec : Prop :=
  ∀ n, P15396209889579358850.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P17678416245723559905

`Δ[A076662(n+1)+n]`
-/

namespace A120614.P17678416245723559905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P17678416245723559905

namespace A120614

/-- `Δ[A076662(n+1)+n]` -/
def P17678416245723559905.Spec : Prop :=
  ∀ n, P17678416245723559905.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P16599161906731355048

`Δ[n-A188432(n+1)]`
-/

namespace A120614.P16599161906731355048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A188432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P16599161906731355048

namespace A120614

/-- `Δ[n-A188432(n+1)]` -/
def P16599161906731355048.Spec : Prop :=
  ∀ n, P16599161906731355048.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P12149717536457111939

`Δ[A189479(n+2)+n]`
-/

namespace A120614.P12149717536457111939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P12149717536457111939

namespace A120614

/-- `Δ[A189479(n+2)+n]` -/
def P12149717536457111939.Spec : Prop :=
  ∀ n, P12149717536457111939.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P2094313828571461926

`Δ[n-A289034(n+2)]`
-/

namespace A120614.P2094313828571461926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A289034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P2094313828571461926

namespace A120614

/-- `Δ[n-A289034(n+2)]` -/
def P2094313828571461926.Spec : Prop :=
  ∀ n, P2094313828571461926.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P4796020426741882176

`Δ[Δ[A007066(n+1)]+n]`
-/

namespace A120614.P4796020426741882176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P4796020426741882176

namespace A120614

/-- `Δ[Δ[A007066(n+1)]+n]` -/
def P4796020426741882176.Spec : Prop :=
  ∀ n, P4796020426741882176.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P1338924375499220807

`Δ[n-char[A054770(n+1)-n]]`
-/

namespace A120614.P1338924375499220807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P1338924375499220807

namespace A120614

/-- `Δ[n-char[A054770(n+1)-n]]` -/
def P1338924375499220807.Spec : Prop :=
  ∀ n, P1338924375499220807.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P7472662536118163512

`Δ[A001468(n)+(2*n)%(n+1)]`
-/

namespace A120614.P7472662536118163512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n + ((2 * n % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P7472662536118163512

namespace A120614

/-- `Δ[A001468(n)+(2*n)%(n+1)]` -/
def P7472662536118163512.Spec : Prop :=
  ∀ n, P7472662536118163512.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P10537121479184245546

`Δ[p?[A284387(n+1)+1]-(1-n)]`
-/

namespace A120614.P10537121479184245546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284387 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P10537121479184245546

namespace A120614

/-- `Δ[p?[A284387(n+1)+1]-(1-n)]` -/
def P10537121479184245546.Spec : Prop :=
  ∀ n, P10537121479184245546.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P11816479077601347578

`Δ[A026351(A005206(n))]`
-/

namespace A120614.P11816479077601347578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A005206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120614.P11816479077601347578

namespace A120614

/-- `Δ[A026351(A005206(n))]` -/
def P11816479077601347578.Spec : Prop :=
  ∀ n, P11816479077601347578.a n = A120614 (n + 1)

end A120614

/-! ## A120614.P14532460712709735045

`A131743(A232640(n+1))`
-/

namespace A120614.P14532460712709735045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (A232640 (n + 1)).toNat

end

end A120614.P14532460712709735045

namespace A120614

/-- `A131743(A232640(n+1))` -/
def P14532460712709735045.Spec : Prop :=
  ∀ n, P14532460712709735045.a n = A120614 (n + 1)

end A120614

/-!
# A120615: a(n) = Sum_{k=0..n} floor(phi*floor(k/phi)) where phi = (1+sqrt(5))/2.

The programs for A120615, the canonical program `A120615.P12142902550999620723` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120615 has offset 1).

The definition of A120615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120615.P12142902550999620723

`(n+1)*(n-2)/2+ceil((n+1)/ϕ)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120615

/-- `(n+1)*(n-2)/2+ceil((n+1)/ϕ)` -/
def P12142902550999620723.Spec : Prop :=
  ∀ n, P12142902550999620723.a n = (A120615 (n + 1) : ℚ)

end A120615

/-! ## A120615.P10691640906747577345

`∑[n-xor(1, Δ[ceil(n/ϕ)])]`
-/

namespace A120615.P10691640906747577345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120615.P10691640906747577345

namespace A120615

/-- `∑[n-xor(1, Δ[ceil(n/ϕ)])]` -/
def P10691640906747577345.Spec : Prop :=
  ∀ n, P10691640906747577345.a n = A120615 (n + 1)

end A120615

/-! ## A120615.P1352373077025781673

`floor(C(n, 2)+(n+1)*(ϕ-1))`
-/

namespace A120615.P1352373077025781673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℝ) + (n + 1 : ℝ) * (Real.goldenRatio - 1)⌋

end

end A120615.P1352373077025781673

namespace A120615

/-- `floor(C(n, 2)+(n+1)*(ϕ-1))` -/
def P1352373077025781673.Spec : Prop :=
  ∀ n, P1352373077025781673.a n = A120615 (n + 1)

end A120615

/-! ## A120615.P17453136536479791079

`floor(∑[a(n-1)+ϕ]/ϕ)` with `a(0)=1, a(1)=1`
-/

namespace A120615.P17453136536479791079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / Real.goldenRatio⌋

end

end A120615.P17453136536479791079

namespace A120615

/-- `floor(∑[a(n-1)+ϕ]/ϕ)` -/
def P17453136536479791079.Spec : Prop :=
  ∀ n, P17453136536479791079.a n = A120615 (n + 1)

end A120615

/-! ## A120615.P3317338066439179627

`floor(∑[n-1+ϕ]-gcd(n, 2*n))`
-/

namespace A120615.P3317338066439179627
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (Nat.gcd n (2 * n) : ℝ)⌋

end

end A120615.P3317338066439179627

namespace A120615

/-- `floor(∑[n-1+ϕ]-gcd(n, 2*n))` -/
def P3317338066439179627.Spec : Prop :=
  ∀ n, P3317338066439179627.a n = A120615 (n + 1)

end A120615

/-! ## A120615.P7512124784620845121

`∑[A120613(n+1)]`
-/

namespace A120615.P7512124784620845121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120615.P7512124784620845121

namespace A120615

/-- `∑[A120613(n+1)]` -/
def P7512124784620845121.Spec : Prop :=
  ∀ n, P7512124784620845121.a n = A120615 (n + 1)

end A120615

/-! ## A120615.P8066094353837193399

`∑[A114986(n)-1+n]`
-/

namespace A120615.P8066094353837193399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120615.P8066094353837193399

namespace A120615

/-- `∑[A114986(n)-1+n]` -/
def P8066094353837193399.Spec : Prop :=
  ∀ n, P8066094353837193399.a n = A120615 (n + 1)

end A120615

/-! ## A120615.P233104342797295483

`∑[n-A188432(n+1)]`
-/

namespace A120615.P233104342797295483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A188432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120615.P233104342797295483

namespace A120615

/-- `∑[n-A188432(n+1)]` -/
def P233104342797295483.Spec : Prop :=
  ∀ n, P233104342797295483.a n = A120615 (n + 1)

end A120615

/-! ## A120615.P14636872450159853918

`∑[n-char[A001950(n+1)]]`
-/

namespace A120615.P14636872450159853918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120615.P14636872450159853918

namespace A120615

/-- `∑[n-char[A001950(n+1)]]` -/
def P14636872450159853918.Spec : Prop :=
  ∀ n, P14636872450159853918.a n = A120615 (n + 1)

end A120615

/-! ## A120615.P7266944203183686268

`∑[n-char[A187485(2*(n+1))]]`
-/

namespace A120615.P7266944203183686268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120615.P7266944203183686268

namespace A120615

/-- `∑[n-char[A187485(2*(n+1))]]` -/
def P7266944203183686268.Spec : Prop :=
  ∀ n, P7266944203183686268.a n = A120615 (n + 1)

end A120615

/-!
# A120616: Generalized Riordan array (1/sqrt(1+4x^2),(1-sqrt(1+4x^2))/(2x)).

The programs for A120616, the canonical program `A120616.P17317531366549779970` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120616 has offset 0).

The definition of A120616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120616.P17317531366549779970

`A009001(A051162(n))*A108044(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A120616

/-- `A009001(A051162(n))*A108044(n)` -/
def P17317531366549779970.Spec : Prop :=
  ∀ n, P17317531366549779970.a n = A120616 n

theorem P17317531366549779970.correct : P17317531366549779970.Spec := by
  intro n
  simp only [A120616]

end A120616

/-! ## A120616.P7538928124766640195

`A009001(A134478(n))*A108044(n)`
-/

namespace A120616.P7538928124766640195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A134478 n).toNat * A108044 n

end

end A120616.P7538928124766640195

namespace A120616

/-- `A009001(A134478(n))*A108044(n)` -/
def P7538928124766640195.Spec : Prop :=
  ∀ n, P7538928124766640195.a n = A120616 n

end A120616

/-! ## A120616.P4485837253299122262

`A009531(A094727(n+1))*A108044(n)`
-/

namespace A120616.P4485837253299122262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A094727 (n + 1)).toNat * A108044 n

end

end A120616.P4485837253299122262

namespace A120616

/-- `A009531(A094727(n+1))*A108044(n)` -/
def P4485837253299122262.Spec : Prop :=
  ∀ n, P4485837253299122262.a n = A120616 n

end A120616

/-! ## A120616.P4473052666886295701

`A147310(A292564(n))`
-/

namespace A120616.P4473052666886295701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147310 (A292564 n).toNat

end

end A120616.P4473052666886295701

namespace A120616

/-- `A147310(A292564(n))` -/
def P4473052666886295701.Spec : Prop :=
  ∀ n, P4473052666886295701.a n = A120616 n

end A120616

/-! ## A120616.P8932327878067765544

`A157077(n)/A130595(A245300(n))`
-/

namespace A120616.P8932327878067765544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157077 n : ℚ) / (A130595 (A245300 n).toNat : ℚ)

end

end A120616.P8932327878067765544

namespace A120616

/-- `A157077(n)/A130595(A245300(n))` -/
def P8932327878067765544.Spec : Prop :=
  ∀ n, P8932327878067765544.a n = (A120616 n : ℚ)

end A120616

/-!
# A120617: Hankel transform of g.f. 1/sqrt(1+4*x^2).

The programs for A120617, the canonical program `A120617.P4907902483324623170` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120617 has offset 0).

The definition of A120617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120617.P4037582732758556733

`ogf((1-2x)/(1+4x^2))`
-/

namespace A120617.P4037582732758556733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 0, 4] n

end

end A120617.P4037582732758556733

namespace A120617

/-- `ogf((1-2x)/(1+4x^2))` -/
def P4037582732758556733.Spec : Prop :=
  ∀ n, P4037582732758556733.a n = A120617 n

end A120617

/-! ## A120617.P17971996797183644740

`2^n*(-1)^∑[n]`
-/

namespace A120617.P17971996797183644740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120617.P17971996797183644740

namespace A120617

/-- `2^n*(-1)^∑[n]` -/
def P17971996797183644740.Spec : Prop :=
  ∀ n, P17971996797183644740.a n = A120617 n

end A120617

/-! ## A120617.P16546416942173129223

`∏[-a(n-1)]/2` with `a(0)=2`
-/

namespace A120617.P16546416942173129223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A120617.P16546416942173129223

namespace A120617

/-- `∏[-a(n-1)]/2` -/
def P16546416942173129223.Spec : Prop :=
  ∀ n, P16546416942173129223.a n = (A120617 n : ℚ)

end A120617

/-! ## A120617.P4907902483324623170

`∏[1-or(3, a(n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120617

/-- `∏[1-or(3, a(n-1))]` -/
def P4907902483324623170.Spec : Prop :=
  ∀ n, P4907902483324623170.a n = A120617 n

theorem P4907902483324623170.correct : P4907902483324623170.Spec := by
  intro n
  simp only [A120617]

end A120617

/-! ## A120617.P11415052460837003824

`∏[and(4, a(n-1))-2]` with `a(0)=1`
-/

namespace A120617.P11415052460837003824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land 4 (f1 (n - 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120617.P11415052460837003824

namespace A120617

/-- `∏[and(4, a(n-1))-2]` -/
def P11415052460837003824.Spec : Prop :=
  ∀ n, P11415052460837003824.a n = A120617 n

end A120617

/-! ## A120617.P3047511272252633666

`Δ[4*(1-a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A120617.P3047511272252633666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120617.P3047511272252633666

namespace A120617

/-- `Δ[4*(1-a(n-2))]` -/
def P3047511272252633666.Spec : Prop :=
  ∀ n, P3047511272252633666.a n = A120617 n

end A120617

/-! ## A120617.P3096933008183195669

`2*a(n-1)/(-1)^n` with `a(0)=1`
-/

namespace A120617.P3096933008183195669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) / ((-1) ^ n : ℚ)

end

end A120617.P3096933008183195669

namespace A120617

/-- `2*a(n-1)/(-1)^n` -/
def P3096933008183195669.Spec : Prop :=
  ∀ n, P3096933008183195669.a n = (A120617 n : ℚ)

end A120617

/-! ## A120617.P9419715045957163372

`∏[2*xor(1, n)-2*n]/2`
-/

namespace A120617.P9419715045957163372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A120617.P9419715045957163372

namespace A120617

/-- `∏[2*xor(1, n)-2*n]/2` -/
def P9419715045957163372.Spec : Prop :=
  ∀ n, P9419715045957163372.a n = (A120617 n : ℚ)

end A120617

/-! ## A120617.P13118886755847821035

`4-4*(a(n-2)+1)` with `a(0)=1, a(1)=-2`
-/

namespace A120617.P13118886755847821035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  4 - 4 * (a (n - 2) + 1)

end

end A120617.P13118886755847821035

namespace A120617

/-- `4-4*(a(n-2)+1)` -/
def P13118886755847821035.Spec : Prop :=
  ∀ n, P13118886755847821035.a n = A120617 n

end A120617

/-! ## A120617.P16477766564575593021

`4*(1-a(n-2))-4` with `a(0)=1, a(1)=-2`
-/

namespace A120617.P16477766564575593021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  4 * (1 - a (n - 2)) - 4

end

end A120617.P16477766564575593021

namespace A120617

/-- `4*(1-a(n-2))-4` -/
def P16477766564575593021.Spec : Prop :=
  ∀ n, P16477766564575593021.a n = A120617 n

end A120617

/-! ## A120617.P15634973185254976984

`a(n-2)/(3/4-1)` with `a(0)=1, a(1)=-2`
-/

namespace A120617.P15634973185254976984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) / ((3 : ℚ) / 4 - 1)

end

end A120617.P15634973185254976984

namespace A120617

/-- `a(n-2)/(3/4-1)` -/
def P15634973185254976984.Spec : Prop :=
  ∀ n, P15634973185254976984.a n = (A120617 n : ℚ)

end A120617

/-! ## A120617.P3066443059671623264

`∏[A280560(n)]`
-/

namespace A120617.P3066443059671623264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120617.P3066443059671623264

namespace A120617

/-- `∏[A280560(n)]` -/
def P3066443059671623264.Spec : Prop :=
  ∀ n, P3066443059671623264.a n = A120617 n

end A120617

/-! ## A120617.P1846364361001752167

`A090132(2*n)`
-/

namespace A120617.P1846364361001752167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 (2 * n)

end

end A120617.P1846364361001752167

namespace A120617

/-- `A090132(2*n)` -/
def P1846364361001752167.Spec : Prop :=
  ∀ n, P1846364361001752167.a n = A120617 n

end A120617

/-! ## A120617.P2998292415101517975

`A138232(4*n)`
-/

namespace A120617.P2998292415101517975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (4 * n)

end

end A120617.P2998292415101517975

namespace A120617

/-- `A138232(4*n)` -/
def P2998292415101517975.Spec : Prop :=
  ∀ n, P2998292415101517975.a n = A120617 n

end A120617

/-! ## A120617.P15037943191055797176

`A146559(Δ[n²])`
-/

namespace A120617.P15037943191055797176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120617.P15037943191055797176

namespace A120617

/-- `A146559(Δ[n²])` -/
def P15037943191055797176.Spec : Prop :=
  ∀ n, P15037943191055797176.a n = A120617 n

end A120617

/-! ## A120617.P9160106084316303233

`-A106664(2*n)`
-/

namespace A120617.P9160106084316303233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106664 (2 * n)

end

end A120617.P9160106084316303233

namespace A120617

/-- `-A106664(2*n)` -/
def P9160106084316303233.Spec : Prop :=
  ∀ n, P9160106084316303233.a n = A120617 n

end A120617

/-! ## A120617.P18390645756005762593

`∏[A084100(2*n)]`
-/

namespace A120617.P18390645756005762593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120617.P18390645756005762593

namespace A120617

/-- `∏[A084100(2*n)]` -/
def P18390645756005762593.Spec : Prop :=
  ∀ n, P18390645756005762593.a n = A120617 n

end A120617

/-! ## A120617.P8234481344398184023

`∏[A176742(2*n)]`
-/

namespace A120617.P8234481344398184023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120617.P8234481344398184023

namespace A120617

/-- `∏[A176742(2*n)]` -/
def P8234481344398184023.Spec : Prop :=
  ∀ n, P8234481344398184023.a n = A120617 n

end A120617

/-! ## A120617.P9991402390762370342

`∏[A228936(2*n)]`
-/

namespace A120617.P9991402390762370342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228936 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A120617.P9991402390762370342

namespace A120617

/-- `∏[A228936(2*n)]` -/
def P9991402390762370342.Spec : Prop :=
  ∀ n, P9991402390762370342.a n = A120617 n

end A120617

/-! ## A120617.P6151754897340258943

`Δ[A137505(Δ[n²])]`
-/

namespace A120617.P6151754897340258943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120617.P6151754897340258943

namespace A120617

/-- `Δ[A137505(Δ[n²])]` -/
def P6151754897340258943.Spec : Prop :=
  ∀ n, P6151754897340258943.a n = A120617 n

end A120617

/-!
# A120618: Number of inequivalent (under "inversion of variables") monotone Boolean functions of n or fewer variables.

The programs for A120618, there is no canonical definition to state claims against.
-/

/-! ## A120618.P18361457840654792928

`(A001206(n)+A000372(n))/2`
-/

namespace A120618.P18361457840654792928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001206 n + A000372 n : ℚ) / 2

end

end A120618.P18361457840654792928

/-!
# A120622: Numbers k such that the k-th Catalan number C(2k, k)/(k + 1) is divisible by k/2 but not divisible by k.

The programs for A120622, there is no canonical definition to state claims against.
-/

/-! ## A120622.P13661406692336769095

`eq[4, A049077(A004277(n))]`
-/

namespace A120622.P13661406692336769095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120622.P13661406692336769095

/-! ## A120622.P5765428805882517553

`A003602(eq[4, A049077(n+1)])`
-/

namespace A120622.P5765428805882517553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120622.P5765428805882517553

/-! ## A120622.P13332879439888237799

`A008619(eq[4, A049077(n+1)])`
-/

namespace A120622.P13332879439888237799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120622.P13332879439888237799

/-! ## A120622.P7689254294776900329

`A065033(eq[4, A049077(n+1)])`
-/

namespace A120622.P7689254294776900329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120622.P7689254294776900329

/-! ## A120622.P1870179342647137756

`A110654(eq[4, A049077(n+1)])`
-/

namespace A120622.P1870179342647137756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120622.P1870179342647137756

/-!
# A120623: Numbers n such that the n-th Catalan number C(2n, n)/(n + 1) is divisible by n/3 but not divisible by n.

The programs for A120623, there is no canonical definition to state claims against.
-/

/-! ## A120623.P8234529624866631339

`eq[3, A093527(n)]+1`
-/

namespace A120623.P8234529624866631339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120623.P8234529624866631339

/-! ## A120623.P3305573758476852817

`eq[3, (n+1)/A071416(n+1)]+1`
-/

namespace A120623.P3305573758476852817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A071416 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A120623.P3305573758476852817

/-! ## A120623.P4809164819464227804

`A020725(eq[3, A093527(n)])`
-/

namespace A120623.P4809164819464227804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120623.P4809164819464227804

/-! ## A120623.P12535426699118468072

`eq[3, A049077(2*(n+1))/gcd(2, A049077(2*(n+1)))]+1`
-/

namespace A120623.P12535426699118468072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049077 (2 * (n + 1)) : ℚ) / (Int.gcd 2 (A049077 (2 * (n + 1))) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A120623.P12535426699118468072

/-! ## A120623.P5786393877981351560

`eq[3, A093527(n-ceil(n/A027426(n)))]`
-/

namespace A120623.P5786393877981351560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093527 ((n : ℤ) - ⌈(n : ℚ) / (A027426 n : ℚ)⌉).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120623.P5786393877981351560

/-!
# A120624: Numbers n such that the n-th Catalan number C(2n,n)/(n+1) is divisible by 2n.

The programs for A120624, the canonical program `A120624.P15001731129403360422` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120624 has offset 1).

The definition of A120624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120624.P16472291201140672468

`∩[A058008(n+1), A062289(n+1)]`
-/

namespace A120624.P16472291201140672468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120624.P16472291201140672468

namespace A120624

/-- `∩[A058008(n+1), A062289(n+1)]` -/
def P16472291201140672468.Spec : Prop :=
  ∀ n, (P16472291201140672468.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P1683944755737240524

`eq[sin(A036987(n)), A053214(n)]`
-/

namespace A120624.P1683944755737240524
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A036987 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A120624.P1683944755737240524

namespace A120624

/-- `eq[sin(A036987(n)), A053214(n)]` -/
def P1683944755737240524.Spec : Prop :=
  ∀ n, (P1683944755737240524.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P10809302957077819368

`filter[A058008(n+1), A043545(#)]`
-/

namespace A120624.P10809302957077819368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A120624.P10809302957077819368

namespace A120624

/-- `filter[A058008(n+1), A043545(#)]` -/
def P10809302957077819368.Spec : Prop :=
  ∀ n, P10809302957077819368.a n = A120624 (n + 1)

end A120624

/-! ## A120624.P8004493550504503077

`filter[A058008(n+1), A267442(#)]`
-/

namespace A120624.P8004493550504503077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A120624.P8004493550504503077

namespace A120624

/-- `filter[A058008(n+1), A267442(#)]` -/
def P8004493550504503077.Spec : Prop :=
  ∀ n, P8004493550504503077.a n = A120624 (n + 1)

end A120624

/-! ## A120624.P1399971707288463293

`eq[A036987(n+1), A053214(n+1)]+1`
-/

namespace A120624.P1399971707288463293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120624.P1399971707288463293

namespace A120624

/-- `eq[A036987(n+1), A053214(n+1)]+1` -/
def P1399971707288463293.Spec : Prop :=
  ∀ n, (P1399971707288463293.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P2455869062093158219

`eq[A000007(A035327(n)), A053214(n)]`
-/

namespace A120624.P2455869062093158219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120624.P2455869062093158219

namespace A120624

/-- `eq[A000007(A035327(n)), A053214(n)]` -/
def P2455869062093158219.Spec : Prop :=
  ∀ n, (P2455869062093158219.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P15001731129403360422

`eq[A099894(n), A099905(A028310(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120624

/-- `eq[A099894(n), A099905(A028310(n))]` -/
def P15001731129403360422.Spec : Prop :=
  ∀ n, (P15001731129403360422.a n : ℤ) = A120624 (n + 1)

theorem P15001731129403360422.correct : P15001731129403360422.Spec := by
  intro n
  simp only [A120624, Nat.add_sub_cancel]

end A120624

/-! ## A120624.P702667575792353360

`eq[A036987(n), A053214(A036987(n)+n)]`
-/

namespace A120624.P702667575792353360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (A036987 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120624.P702667575792353360

namespace A120624

/-- `eq[A036987(n), A053214(A036987(n)+n)]` -/
def P702667575792353360.Spec : Prop :=
  ∀ n, (P702667575792353360.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P188725332970294497

`eq[A069517(n+1), A099905(A069517(n+1)+n)]`
-/

namespace A120624.P188725332970294497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (A069517 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120624.P188725332970294497

namespace A120624

/-- `eq[A069517(n+1), A099905(A069517(n+1)+n)]` -/
def P188725332970294497.Spec : Prop :=
  ∀ n, (P188725332970294497.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P17375413104732988779

`eq[A099894(n), A099905(A099894(n)+n)]`
-/

namespace A120624.P17375413104732988779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (A099894 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120624.P17375413104732988779

namespace A120624

/-- `eq[A099894(n), A099905(A099894(n)+n)]` -/
def P17375413104732988779.Spec : Prop :=
  ∀ n, (P17375413104732988779.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P10201613195801432921

`eq[A043545(n+1), A049077(2*(n+1))]+1`
-/

namespace A120624.P10201613195801432921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120624.P10201613195801432921

namespace A120624

/-- `eq[A043545(n+1), A049077(2*(n+1))]+1` -/
def P10201613195801432921.Spec : Prop :=
  ∀ n, (P10201613195801432921.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P18163099609069736399

`eq[A043545(n), A049077(A004277(n))]`
-/

namespace A120624.P18163099609069736399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120624.P18163099609069736399

namespace A120624

/-- `eq[A043545(n), A049077(A004277(n))]` -/
def P18163099609069736399.Spec : Prop :=
  ∀ n, (P18163099609069736399.a n : ℤ) = A120624 (n + 1)

end A120624

/-! ## A120624.P3523283650469773942

`A058008(A172471(A253145(n))+2)`
-/

namespace A120624.P3523283650469773942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (A172471 (A253145 n).toNat + 2).toNat

end

end A120624.P3523283650469773942

namespace A120624

/-- `A058008(A172471(A253145(n))+2)` -/
def P3523283650469773942.Spec : Prop :=
  ∀ n, P3523283650469773942.a n = A120624 (n + 1)

end A120624

/-! ## A120624.P17170553045547442533

`A058008(n+3)%∑[A342951(2*n+9)]`
-/

namespace A120624.P17170553045547442533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342951 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058008 (n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120624.P17170553045547442533

namespace A120624

/-- `A058008(n+3)%∑[A342951(2*n+9)]` -/
def P17170553045547442533.Spec : Prop :=
  ∀ n, P17170553045547442533.a n = A120624 (n + 1)

end A120624

/-! ## A120624.P8564363849425124818

`A058008(A108872(A133263(n)))`
-/

namespace A120624.P8564363849425124818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (A108872 (A133263 n).toNat).toNat

end

end A120624.P8564363849425124818

namespace A120624

/-- `A058008(A108872(A133263(n)))` -/
def P8564363849425124818.Spec : Prop :=
  ∀ n, P8564363849425124818.a n = A120624 (n + 1)

end A120624

/-! ## A120624.P4864129286455842337

`A058008(A003057(∑[n+2]))`
-/

namespace A120624.P4864129286455842337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (A003057 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120624.P4864129286455842337

namespace A120624

/-- `A058008(A003057(∑[n+2]))` -/
def P4864129286455842337.Spec : Prop :=
  ∀ n, P4864129286455842337.a n = A120624 (n + 1)

end A120624

/-! ## A120624.P10899021056786772536

`A058008(A002024(∑[n+3]))`
-/

namespace A120624.P10899021056786772536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120624.P10899021056786772536

namespace A120624

/-- `A058008(A002024(∑[n+3]))` -/
def P10899021056786772536.Spec : Prop :=
  ∀ n, P10899021056786772536.a n = A120624 (n + 1)

end A120624

/-!
# A120627: Least positive k such that both prime(n)+k and prime(n)+2*k are prime, or 0 if no such k exists.

The programs for A120627, there is no canonical definition to state claims against.
-/

/-! ## A120627.P4245313966191619819

`A142150(A165138(n+1)-p?[A014681(n)])`
-/

namespace A120627.P4245313966191619819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A165138 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120627.P4245313966191619819

/-! ## A120627.P4824962152202205135

`A142150(A165138(n+1)-A000040(n+1))`
-/

namespace A120627.P4824962152202205135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A165138 (n + 1) - A000040 (n + 1)).toNat

end

end A120627.P4824962152202205135

/-! ## A120627.P13616405457472263196

`A142150(A165138(n+1)-A008578(n+2))`
-/

namespace A120627.P13616405457472263196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A165138 (n + 1) - A008578 (n + 2)).toNat

end

end A120627.P13616405457472263196

/-! ## A120627.P1802303409395980424

`A142150(A165138(n+1)-p?[A207790(n+1)])`
-/

namespace A120627.P1802303409395980424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A165138 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120627.P1802303409395980424

/-! ## A120627.P9944179099779610028

`A142150(A165138(n+1)-A207790(2*(n+1)))`
-/

namespace A120627.P9944179099779610028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A165138 (n + 1) - A207790 (2 * (n + 1))).toNat

end

end A120627.P9944179099779610028

/-! ## A120627.P1225707481268361046

`A142150(A165138(n+1)-p?[A142150(n)])`
-/

namespace A120627.P1225707481268361046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A165138 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120627.P1225707481268361046

/-!
# A120628: Primes such that their double is 1 away from a prime number.

The programs for A120628, the canonical program `A120628.P14010461510732996806` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120628 has offset 1).

The definition of A120628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120628.P14010461510732996806

`record[A087713(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A120628

/-- `record[A087713(n+2)]` -/
def P14010461510732996806.Spec : Prop :=
  ∀ n, P14010461510732996806.a n = A120628 (n + 1)

theorem P14010461510732996806.correct : P14010461510732996806.Spec := by
  intro n
  simp only [A120628, Nat.add_sub_cancel]

end A120628

/-! ## A120628.P3548168932621331890

`A276983(n+1)/2`
-/

namespace A120628.P3548168932621331890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276983 (n + 1) : ℚ) / 2

end

end A120628.P3548168932621331890

namespace A120628

/-- `A276983(n+1)/2` -/
def P3548168932621331890.Spec : Prop :=
  ∀ n, P3548168932621331890.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P10270313962271000685

`A006530(A276983(n+1))`
-/

namespace A120628.P10270313962271000685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A276983 (n + 1)).toNat

end

end A120628.P10270313962271000685

namespace A120628

/-- `A006530(A276983(n+1))` -/
def P10270313962271000685.Spec : Prop :=
  ∀ n, P10270313962271000685.a n = A120628 (n + 1)

end A120628

/-! ## A120628.P5541437132666010195

`record[A006530(A082542(n+1))]`
-/

namespace A120628.P5541437132666010195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120628.P5541437132666010195

namespace A120628

/-- `record[A006530(A082542(n+1))]` -/
def P5541437132666010195.Spec : Prop :=
  ∀ n, P5541437132666010195.a n = A120628 (n + 1)

end A120628

/-! ## A120628.P1302254304443609285

`record[A006530(A333197(n+2))]`
-/

namespace A120628.P1302254304443609285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A333197 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120628.P1302254304443609285

namespace A120628

/-- `record[A006530(A333197(n+2))]` -/
def P1302254304443609285.Spec : Prop :=
  ∀ n, P1302254304443609285.a n = A120628 (n + 1)

end A120628

/-! ## A120628.P14416356612394364802

`∪[A005382(n+1), A005384(n+1)]`
-/

namespace A120628.P14416356612394364802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120628.P14416356612394364802

namespace A120628

/-- `∪[A005382(n+1), A005384(n+1)]` -/
def P14416356612394364802.Spec : Prop :=
  ∀ n, (P14416356612394364802.a n : ℤ) = A120628 (n + 1)

end A120628

/-! ## A120628.P14260271215604335189

`∩[A001747(n+1), A333197(n+1)]/2`
-/

namespace A120628.P14260271215604335189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P14260271215604335189

namespace A120628

/-- `∩[A001747(n+1), A333197(n+1)]/2` -/
def P14260271215604335189.Spec : Prop :=
  ∀ n, P14260271215604335189.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P4219142265448740924

`∩[A054395(n+1), A333197(n+1)]/2`
-/

namespace A120628.P4219142265448740924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P4219142265448740924

namespace A120628

/-- `∩[A054395(n+1), A333197(n+1)]/2` -/
def P4219142265448740924.Spec : Prop :=
  ∀ n, P4219142265448740924.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P5058087582242857536

`∩[A062091(n+1), A333197(n+1)]/2`
-/

namespace A120628.P5058087582242857536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P5058087582242857536

namespace A120628

/-- `∩[A062091(n+1), A333197(n+1)]/2` -/
def P5058087582242857536.Spec : Prop :=
  ∀ n, P5058087582242857536.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P3312608927698752247

`∩[A075862(n+1), A333197(n+1)]/2`
-/

namespace A120628.P3312608927698752247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P3312608927698752247

namespace A120628

/-- `∩[A075862(n+1), A333197(n+1)]/2` -/
def P3312608927698752247.Spec : Prop :=
  ∀ n, P3312608927698752247.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P1332656267619903481

`∩[A091376(n+1), A333197(n+1)]/2`
-/

namespace A120628.P1332656267619903481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P1332656267619903481

namespace A120628

/-- `∩[A091376(n+1), A333197(n+1)]/2` -/
def P1332656267619903481.Spec : Prop :=
  ∀ n, P1332656267619903481.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P3224009424032378904

`∩[A100484(n+1), A333197(n+1)]/2`
-/

namespace A120628.P3224009424032378904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P3224009424032378904

namespace A120628

/-- `∩[A100484(n+1), A333197(n+1)]/2` -/
def P3224009424032378904.Spec : Prop :=
  ∀ n, P3224009424032378904.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P11407737725149660237

`∩[A157931(n+1), A333197(n+1)]/2`
-/

namespace A120628.P11407737725149660237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P11407737725149660237

namespace A120628

/-- `∩[A157931(n+1), A333197(n+1)]/2` -/
def P11407737725149660237.Spec : Prop :=
  ∀ n, P11407737725149660237.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P4455506426658166439

`∩[A193305(n+1), A333197(n+1)]/2`
-/

namespace A120628.P4455506426658166439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P4455506426658166439

namespace A120628

/-- `∩[A193305(n+1), A333197(n+1)]/2` -/
def P4455506426658166439.Spec : Prop :=
  ∀ n, P4455506426658166439.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P13739428270194124615

`∩[A253106(n+1), A333197(n+1)]/2`
-/

namespace A120628.P13739428270194124615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P13739428270194124615

namespace A120628

/-- `∩[A253106(n+1), A333197(n+1)]/2` -/
def P13739428270194124615.Spec : Prop :=
  ∀ n, P13739428270194124615.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P16404389331159400891

`∩[A318990(n+1), A333197(n+1)]/2`
-/

namespace A120628.P16404389331159400891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P16404389331159400891

namespace A120628

/-- `∩[A318990(n+1), A333197(n+1)]/2` -/
def P16404389331159400891.Spec : Prop :=
  ∀ n, P16404389331159400891.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P4513712858173304183

`∪[A077065(n+1), A077068(n+1)]/2`
-/

namespace A120628.P4513712858173304183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P4513712858173304183

namespace A120628

/-- `∪[A077065(n+1), A077068(n+1)]/2` -/
def P4513712858173304183.Spec : Prop :=
  ∀ n, P4513712858173304183.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P13771222358874465224

`∩[A001751(n+1), A333197(n+1)]/2`
-/

namespace A120628.P13771222358874465224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P13771222358874465224

namespace A120628

/-- `∩[A001751(n+1), A333197(n+1)]/2` -/
def P13771222358874465224.Spec : Prop :=
  ∀ n, P13771222358874465224.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P1843764040422350131

`∩[A300912(n+1), A333197(n+1)]/2`
-/

namespace A120628.P1843764040422350131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A120628.P1843764040422350131

namespace A120628

/-- `∩[A300912(n+1), A333197(n+1)]/2` -/
def P1843764040422350131.Spec : Prop :=
  ∀ n, P1843764040422350131.a n = (A120628 (n + 1) : ℚ)

end A120628

/-! ## A120628.P18364880557138370120

`record[A006530(A100317(n+2))]`
-/

namespace A120628.P18364880557138370120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100317 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120628.P18364880557138370120

namespace A120628

/-- `record[A006530(A100317(n+2))]` -/
def P18364880557138370120.Spec : Prop :=
  ∀ n, P18364880557138370120.a n = A120628 (n + 1)

end A120628

/-!
# A120629: Numbers k with property that -k is not a perfect power and the squarefree part of -k is not congruent to 1 modulo 4.

The programs for A120629, there is no canonical definition to state claims against.
-/

/-! ## A120629.P1205990873386516885

`lt[A163626(n), Δ[A334720(n+1)]]`
-/

namespace A120629.P1205990873386516885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120629.P1205990873386516885

/-! ## A120629.P7673284213419540504

`A104401(lt[3, A104417(2*(n+1))])`
-/

namespace A120629.P7673284213419540504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104417 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120629.P7673284213419540504

/-! ## A120629.P8225741408852154386

`A004773(lt[4, A086364(2*n+3)])`
-/

namespace A120629.P8225741408852154386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086364 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120629.P8225741408852154386

/-! ## A120629.P16619015977664971096

`record[A302405(2*n+3)%A096294(2*(n+3))]`
-/

namespace A120629.P16619015977664971096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302405 (2 * n + 3)) (A096294 (2 * (n + 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120629.P16619015977664971096

/-! ## A120629.P383778247567475275

`lt[A003815(A145768(3*(n+1))), A000566(n)]`
-/

namespace A120629.P383778247567475275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A145768 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120629.P383778247567475275

/-!
# A120630: Dirichlet inverse of A002654.

The programs for A120630, the canonical program `A120630.P3167750905745517866` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120630 has offset 1).

The definition of A120630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120630.P3167750905745517866

`∑{d}[n+1, A007427(#)*A374366((n+1)/#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120630

/-- `∑{d}[n+1, A007427(#)*A374366((n+1)/#)]` -/
def P3167750905745517866.Spec : Prop :=
  ∀ n, P3167750905745517866.a n = A120630 (n + 1)

theorem P3167750905745517866.correct : P3167750905745517866.Spec := by
  intro n
  simp only [A120630, Nat.add_sub_cancel]

end A120630

/-! ## A120630.P10014166153171563256

`∑{d}[n+1, A008683(#)*A374367((n+1)/#)]`
-/

namespace A120630.P10014166153171563256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A120630.P10014166153171563256

namespace A120630

/-- `∑{d}[n+1, A008683(#)*A374367((n+1)/#)]` -/
def P10014166153171563256.Spec : Prop :=
  ∀ n, P10014166153171563256.a n = A120630 (n + 1)

end A120630

/-! ## A120630.P8240487776871779016

`∑{d}[n+1, A046692(#)*A395768((n+1)/#)]`
-/

namespace A120630.P8240487776871779016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A395768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A120630.P8240487776871779016

namespace A120630

/-- `∑{d}[n+1, A046692(#)*A395768((n+1)/#)]` -/
def P8240487776871779016.Spec : Prop :=
  ∀ n, P8240487776871779016.a n = A120630 (n + 1)

end A120630

/-! ## A120630.P17531393076316735038

`∑{d}[n+1, A086932(#)*A379497((n+1)/#)]`
-/

namespace A120630.P17531393076316735038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086932 d * A379497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A120630.P17531393076316735038

namespace A120630

/-- `∑{d}[n+1, A086932(#)*A379497((n+1)/#)]` -/
def P17531393076316735038.Spec : Prop :=
  ∀ n, P17531393076316735038.a n = A120630 (n + 1)

end A120630

/-! ## A120630.P4758270353822497610

`∑{d}[n+1, A204617(#)*A326938((n+1)/#)]`
-/

namespace A120630.P4758270353822497610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A204617 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A120630.P4758270353822497610

namespace A120630

/-- `∑{d}[n+1, A204617(#)*A326938((n+1)/#)]` -/
def P4758270353822497610.Spec : Prop :=
  ∀ n, P4758270353822497610.a n = A120630 (n + 1)

end A120630

/-!
# A120632: Number of numbers >1 up to 2*prime(n) which are divisible by primes up to prime(n).

The programs for A120632, the canonical program `A120632.P7481929309965890366` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120632 has offset 1).

The definition of A120632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120632.P1454145713146504368

`A120633(n+1)+A040976(n+2)`
-/

namespace A120632.P1454145713146504368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120633 (n + 1) + A040976 (n + 2)

end

end A120632.P1454145713146504368

namespace A120632

/-- `A120633(n+1)+A040976(n+2)` -/
def P1454145713146504368.Spec : Prop :=
  ∀ n, P1454145713146504368.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P7481929309965890366

`A065897(n+1)+1+n`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A120632

/-- `A065897(n+1)+1+n` -/
def P7481929309965890366.Spec : Prop :=
  ∀ n, P7481929309965890366.a n = A120632 (n + 1)

theorem P7481929309965890366.correct : P7481929309965890366.Spec := by
  intro n
  simp only [A120632, Nat.add_sub_cancel]

end A120632

/-! ## A120632.P8417071250264476367

`A163468(n+1)-1+n`
-/

namespace A120632.P8417071250264476367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163468 (n + 1) - 1 + (n : ℤ)

end

end A120632.P8417071250264476367

namespace A120632

/-- `A163468(n+1)-1+n` -/
def P8417071250264476367.Spec : Prop :=
  ∀ n, P8417071250264476367.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P10136692991449274687

`A163468(n+1)+A023443(n)`
-/

namespace A120632.P10136692991449274687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163468 (n + 1) + A023443 n

end

end A120632.P10136692991449274687

namespace A120632

/-- `A163468(n+1)+A023443(n)` -/
def P10136692991449274687.Spec : Prop :=
  ∀ n, P10136692991449274687.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P18439840370479413135

`A163468(n+1)-A024000(n)`
-/

namespace A120632.P18439840370479413135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163468 (n + 1) - A024000 n

end

end A120632.P18439840370479413135

namespace A120632

/-- `A163468(n+1)-A024000(n)` -/
def P18439840370479413135.Spec : Prop :=
  ∀ n, P18439840370479413135.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P1760896880926826225

`A246514(n+1)+Δ[A007504(n)]`
-/

namespace A120632.P1760896880926826225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + (f1 (n + 1) - f1 n)

end

end A120632.P1760896880926826225

namespace A120632

/-- `A246514(n+1)+Δ[A007504(n)]` -/
def P1760896880926826225.Spec : Prop :=
  ∀ n, P1760896880926826225.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P14250075150401603626

`A246514(n+1)+A000040(n+1)`
-/

namespace A120632.P14250075150401603626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + A000040 (n + 1)

end

end A120632.P14250075150401603626

namespace A120632

/-- `A246514(n+1)+A000040(n+1)` -/
def P14250075150401603626.Spec : Prop :=
  ∀ n, P14250075150401603626.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P14770998739743241813

`A100484(n+1)-A063124(n+1)`
-/

namespace A120632.P14770998739743241813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A063124 (n + 1)

end

end A120632.P14770998739743241813

namespace A120632

/-- `A100484(n+1)-A063124(n+1)` -/
def P14770998739743241813.Spec : Prop :=
  ∀ n, P14770998739743241813.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P13547829358292834930

`A006093(n+1)+A246514(n+1)+1`
-/

namespace A120632.P13547829358292834930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A246514 (n + 1) + 1)

end

end A120632.P13547829358292834930

namespace A120632

/-- `A006093(n+1)+A246514(n+1)+1` -/
def P13547829358292834930.Spec : Prop :=
  ∀ n, P13547829358292834930.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P5499577549735940458

`A100484(n+1)-(A070046(n+1)+1)`
-/

namespace A120632.P5499577549735940458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (A070046 (n + 1) + 1)

end

end A120632.P5499577549735940458

namespace A120632

/-- `A100484(n+1)-(A070046(n+1)+1)` -/
def P5499577549735940458.Spec : Prop :=
  ∀ n, P5499577549735940458.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P8843114914792197123

`A008864(n+1)+A246514(n+1)-1`
-/

namespace A120632.P8843114914792197123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A246514 (n + 1) - 1)

end

end A120632.P8843114914792197123

namespace A120632

/-- `A008864(n+1)+A246514(n+1)-1` -/
def P8843114914792197123.Spec : Prop :=
  ∀ n, P8843114914792197123.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P18116099863354550136

`A040976(n+1)+A246514(n+1)+2`
-/

namespace A120632.P18116099863354550136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (A246514 (n + 1) + 2)

end

end A120632.P18116099863354550136

namespace A120632

/-- `A040976(n+1)+A246514(n+1)+2` -/
def P18116099863354550136.Spec : Prop :=
  ∀ n, P18116099863354550136.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P13332100816415353947

`A063124(n+1)+2*A246514(n+1)`
-/

namespace A120632.P13332100816415353947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 1) + 2 * A246514 (n + 1)

end

end A120632.P13332100816415353947

namespace A120632

/-- `A063124(n+1)+2*A246514(n+1)` -/
def P13332100816415353947.Spec : Prop :=
  ∀ n, P13332100816415353947.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P6496618134082372416

`2*A000040(n+1)-A063124(n+1)`
-/

namespace A120632.P6496618134082372416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A063124 (n + 1)

end

end A120632.P6496618134082372416

namespace A120632

/-- `2*A000040(n+1)-A063124(n+1)` -/
def P6496618134082372416.Spec : Prop :=
  ∀ n, P6496618134082372416.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P4244680851605977995

`A100484(n+1)-A020900(n+1)+n`
-/

namespace A120632.P4244680851605977995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A020900 (n + 1) + (n : ℤ)

end

end A120632.P4244680851605977995

namespace A120632

/-- `A100484(n+1)-A020900(n+1)+n` -/
def P4244680851605977995.Spec : Prop :=
  ∀ n, P4244680851605977995.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P444499276318339740

`A246514(n+1)+A008578(n+2)`
-/

namespace A120632.P444499276318339740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + A008578 (n + 2)

end

end A120632.P444499276318339740

namespace A120632

/-- `A246514(n+1)+A008578(n+2)` -/
def P444499276318339740.Spec : Prop :=
  ∀ n, P444499276318339740.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P10614934311081204948

`A076274(n+2)-A070046(n+1)`
-/

namespace A120632.P10614934311081204948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2) - A070046 (n + 1)

end

end A120632.P10614934311081204948

namespace A120632

/-- `A076274(n+2)-A070046(n+1)` -/
def P10614934311081204948.Spec : Prop :=
  ∀ n, P10614934311081204948.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P12773212714557608498

`A246514(n+1)+A073846(2*(n+1))`
-/

namespace A120632.P12773212714557608498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + A073846 (2 * (n + 1))

end

end A120632.P12773212714557608498

namespace A120632

/-- `A246514(n+1)+A073846(2*(n+1))` -/
def P12773212714557608498.Spec : Prop :=
  ∀ n, P12773212714557608498.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P13693258242127025369

`record[A307989(n+2)+A006530(n+2)]`
-/

namespace A120632.P13693258242127025369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 2) + A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120632.P13693258242127025369

namespace A120632

/-- `record[A307989(n+2)+A006530(n+2)]` -/
def P13693258242127025369.Spec : Prop :=
  ∀ n, P13693258242127025369.a n = A120632 (n + 1)

end A120632

/-! ## A120632.P8794540782501319424

`record[A307989(n+2)+A020639(n+2)]`
-/

namespace A120632.P8794540782501319424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 2) + A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120632.P8794540782501319424

namespace A120632

/-- `record[A307989(n+2)+A020639(n+2)]` -/
def P8794540782501319424.Spec : Prop :=
  ∀ n, P8794540782501319424.a n = A120632 (n + 1)

end A120632

/-!
# A120633: Number of composite numbers bounded inclusively between p(n+1) and 2*p(n) where p(x) is prime(x).

The programs for A120633, the canonical program `A120633.P2212876793466301077` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120633 has offset 1).

The definition of A120633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040976, A120632, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120633.P2212876793466301077

`A120632(n+1)-A040976(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A120633

/-- `A120632(n+1)-A040976(n+2)` -/
def P2212876793466301077.Spec : Prop :=
  ∀ n, P2212876793466301077.a n = A120633 (n + 1)

theorem P2212876793466301077.correct : P2212876793466301077.Spec := by
  intro n
  simp only [A120633, Nat.add_sub_cancel]

end A120633

/-! ## A120633.P6768074309854591197

`A062234(n+1)-A070046(n+1)+1`
-/

namespace A120633.P6768074309854591197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A070046 (n + 1) + 1

end

end A120633.P6768074309854591197

namespace A120633

/-- `A062234(n+1)-A070046(n+1)+1` -/
def P6768074309854591197.Spec : Prop :=
  ∀ n, P6768074309854591197.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P8864329638300507969

`A124115(n+1)-A063124(n+1)`
-/

namespace A120633.P8864329638300507969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1) - A063124 (n + 1)

end

end A120633.P8864329638300507969

namespace A120633

/-- `A124115(n+1)-A063124(n+1)` -/
def P8864329638300507969.Spec : Prop :=
  ∀ n, P8864329638300507969.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P9831591708050159126

`A065897(n+1)-A065890(n+2)`
-/

namespace A120633.P9831591708050159126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) - A065890 (n + 2)

end

end A120633.P9831591708050159126

namespace A120633

/-- `A065897(n+1)-A065890(n+2)` -/
def P9831591708050159126.Spec : Prop :=
  ∀ n, P9831591708050159126.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P15166178470292795732

`A065897(n+1)-∑[A046933(n+1)]`
-/

namespace A120633.P15166178470292795732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120633.P15166178470292795732

namespace A120633

/-- `A065897(n+1)-∑[A046933(n+1)]` -/
def P15166178470292795732.Spec : Prop :=
  ∀ n, P15166178470292795732.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P7568095802955954418

`A120632(n+1)+2-A000040(n+2)`
-/

namespace A120633.P7568095802955954418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + (2 - A000040 (n + 2))

end

end A120633.P7568095802955954418

namespace A120633

/-- `A120632(n+1)+2-A000040(n+2)` -/
def P7568095802955954418.Spec : Prop :=
  ∀ n, P7568095802955954418.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P1453867712041188991

`A246514(n+1)+2-Δ[A000040(n+1)]`
-/

namespace A120633.P1453867712041188991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 1) + (2 - (f1 (n + 1) - f1 n))

end

end A120633.P1453867712041188991

namespace A120633

/-- `A246514(n+1)+2-Δ[A000040(n+1)]` -/
def P1453867712041188991.Spec : Prop :=
  ∀ n, P1453867712041188991.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P2913911909483989200

`A120632(n+1)+2-record[A006530(n+3)]`
-/

namespace A120633.P2913911909483989200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) + (2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A120633.P2913911909483989200

namespace A120633

/-- `A120632(n+1)+2-record[A006530(n+3)]` -/
def P2913911909483989200.Spec : Prop :=
  ∀ n, P2913911909483989200.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P13392859038951962833

`A163468(n+1)+n+1-record[A006530(n+3)]`
-/

namespace A120633.P13392859038951962833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163468 (n + 1) + ((n + 1 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A120633.P13392859038951962833

namespace A120633

/-- `A163468(n+1)+n+1-record[A006530(n+3)]` -/
def P13392859038951962833.Spec : Prop :=
  ∀ n, P13392859038951962833.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P14484179001075345053

`A062234(n+1)+A246514(n+1)-A040976(n+1)`
-/

namespace A120633.P14484179001075345053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + (A246514 (n + 1) - A040976 (n + 1))

end

end A120633.P14484179001075345053

namespace A120633

/-- `A062234(n+1)+A246514(n+1)-A040976(n+1)` -/
def P14484179001075345053.Spec : Prop :=
  ∀ n, P14484179001075345053.a n = A120633 (n + 1)

end A120633

/-! ## A120633.P14857866304671569295

`A112988(n+1)-A165972(n+1)`
-/

namespace A120633.P14857866304671569295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112988 (n + 1) - A165972 (n + 1)

end

end A120633.P14857866304671569295

namespace A120633

/-- `A112988(n+1)-A165972(n+1)` -/
def P14857866304671569295.Spec : Prop :=
  ∀ n, P14857866304671569295.a n = A120633 (n + 1)

end A120633

/-!
# A120634: Decimal equivalent of A066335.

The programs for A120634, the canonical program `A120634.P4270716455535349407` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120634 has offset 0).

The definition of A120634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120634.P4270716455535349407

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=7, a(2)=6, a(3)=5, a(4)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120634

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4270716455535349407.Spec : Prop :=
  ∀ n, P4270716455535349407.a n = A120634 n

theorem P4270716455535349407.correct : P4270716455535349407.Spec := by
  intro n
  simp only [A120634]

end A120634

/-! ## A120634.P964150970873324688

`xor(3, n+3)`
-/

namespace A120634.P964150970873324688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 3)

end

end A120634.P964150970873324688

namespace A120634

/-- `xor(3, n+3)` -/
def P964150970873324688.Spec : Prop :=
  ∀ n, (P964150970873324688.a n : ℤ) = A120634 n

end A120634

/-! ## A120634.P6321616103181361883

`3-xor(3, -n)`
-/

namespace A120634.P6321616103181361883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.xor 3 (-(n : ℤ))

end

end A120634.P6321616103181361883

namespace A120634

/-- `3-xor(3, -n)` -/
def P6321616103181361883.Spec : Prop :=
  ∀ n, P6321616103181361883.a n = A120634 n

end A120634

/-! ## A120634.P4391241759896518941

`(6*n)%8+n`
-/

namespace A120634.P4391241759896518941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n % 8 + n

end

end A120634.P4391241759896518941

namespace A120634

/-- `(6*n)%8+n` -/
def P4391241759896518941.Spec : Prop :=
  ∀ n, (P4391241759896518941.a n : ℤ) = A120634 n

end A120634

/-! ## A120634.P16626477068208987343

`and(6, 6*n)+n`
-/

namespace A120634.P16626477068208987343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 6 (6 * n) + n

end

end A120634.P16626477068208987343

namespace A120634

/-- `and(6, 6*n)+n` -/
def P16626477068208987343.Spec : Prop :=
  ∀ n, (P16626477068208987343.a n : ℤ) = A120634 n

end A120634

/-! ## A120634.P14068007317699306666

`n-(n-7*n)%8`
-/

namespace A120634.P14068007317699306666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - (7 * n : ℤ)) 8

end

end A120634.P14068007317699306666

namespace A120634

/-- `n-(n-7*n)%8` -/
def P14068007317699306666.Spec : Prop :=
  ∀ n, P14068007317699306666.a n = A120634 n

end A120634

/-! ## A120634.P9943503427830130246

`Δ[or(5, (n+1)²)]-n`
-/

namespace A120634.P9943503427830130246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)

end

end A120634.P9943503427830130246

namespace A120634

/-- `Δ[or(5, (n+1)²)]-n` -/
def P9943503427830130246.Spec : Prop :=
  ∀ n, P9943503427830130246.a n = A120634 n

end A120634

/-! ## A120634.P7665401978939263714

`a(n-4)+4` with `a(0)=0, a(1)=7, a(2)=6, a(3)=5`
-/

namespace A120634.P7665401978939263714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 6, 5] fun n a =>
  a (n - 4) + 4

end

end A120634.P7665401978939263714

namespace A120634

/-- `a(n-4)+4` -/
def P7665401978939263714.Spec : Prop :=
  ∀ n, (P7665401978939263714.a n : ℤ) = A120634 n

end A120634

/-! ## A120634.P5467009772813673592

`abs(xor(3, 2*n-(n-3)))`
-/

namespace A120634.P5467009772813673592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 3 ((2 * n : ℤ) - ((n : ℤ) - 3))|

end

end A120634.P5467009772813673592

namespace A120634

/-- `abs(xor(3, 2*n-(n-3)))` -/
def P5467009772813673592.Spec : Prop :=
  ∀ n, P5467009772813673592.a n = A120634 n

end A120634

/-! ## A120634.P13125123725586252513

`2*(or(3, n-1)+1)-n`
-/

namespace A120634.P13125123725586252513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.lor 3 ((n : ℤ) - 1) + 1) - (n : ℤ)

end

end A120634.P13125123725586252513

namespace A120634

/-- `2*(or(3, n-1)+1)-n` -/
def P13125123725586252513.Spec : Prop :=
  ∀ n, P13125123725586252513.a n = A120634 n

end A120634

/-! ## A120634.P2436568074878585038

`2*or(3, n-1)-(n-2)`
-/

namespace A120634.P2436568074878585038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 3 ((n : ℤ) - 1) - ((n : ℤ) - 2)

end

end A120634.P2436568074878585038

namespace A120634

/-- `2*or(3, n-1)-(n-2)` -/
def P2436568074878585038.Spec : Prop :=
  ∀ n, P2436568074878585038.a n = A120634 n

end A120634

/-! ## A120634.P18285952155861687174

`or(3, n+3)-and(3, n-1)`
-/

namespace A120634.P18285952155861687174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 3) : ℤ) - Int.land 3 ((n : ℤ) - 1)

end

end A120634.P18285952155861687174

namespace A120634

/-- `or(3, n+3)-and(3, n-1)` -/
def P18285952155861687174.Spec : Prop :=
  ∀ n, P18285952155861687174.a n = A120634 n

end A120634

/-! ## A120634.P16852382340887241503

`or(6, n-1+n)-(n-1)`
-/

namespace A120634.P16852382340887241503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1 + (n : ℤ)) - ((n : ℤ) - 1)

end

end A120634.P16852382340887241503

namespace A120634

/-- `or(6, n-1+n)-(n-1)` -/
def P16852382340887241503.Spec : Prop :=
  ∀ n, P16852382340887241503.a n = A120634 n

end A120634

/-! ## A120634.P14875437546878314093

`∑[floor(a(n-4))]-n` with `a(0)=0, a(1)=8, a(2)=0, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A120634.P14875437546878314093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 0, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A120634.P14875437546878314093

namespace A120634

/-- `∑[floor(a(n-4))]-n` -/
def P14875437546878314093.Spec : Prop :=
  ∀ n, P14875437546878314093.a n = A120634 n

end A120634

/-! ## A120634.P6513155533557234339

`n+3-(-1)^n+2*(-1)^((2*n-3-(-1)^n)/4)`
-/

namespace A120634.P6513155533557234339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - (-1) ^ n : ℝ) + 2 * (-1 : ℝ) ^ (((2 * n : ℤ) - 3 - (-1) ^ n : ℚ) / 4 : ℝ)

end

end A120634.P6513155533557234339

namespace A120634

/-- `n+3-(-1)^n+2*(-1)^((2*n-3-(-1)^n)/4)` -/
def P6513155533557234339.Spec : Prop :=
  ∀ n, P6513155533557234339.a n = (A120634 n : ℝ)

end A120634

/-! ## A120634.P14438812138517664542

`A004443(A004442(n+1)+2)`
-/

namespace A120634.P14438812138517664542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A004442 (n + 1) + 2).toNat

end

end A120634.P14438812138517664542

namespace A120634

/-- `A004443(A004442(n+1)+2)` -/
def P14438812138517664542.Spec : Prop :=
  ∀ n, P14438812138517664542.a n = A120634 n

end A120634

/-! ## A120634.P12212260167712897623

`A004443(A124356(n+1)/2+1)`
-/

namespace A120634.P12212260167712897623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (SequenceMachineLib.roundAway ((A124356 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A120634.P12212260167712897623

namespace A120634

/-- `A004443(A124356(n+1)/2+1)` -/
def P12212260167712897623.Spec : Prop :=
  ∀ n, P12212260167712897623.a n = A120634 n

end A120634

/-! ## A120634.P11790339037547465040

`A004443(A014681(n+2)+1)`
-/

namespace A120634.P11790339037547465040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A014681 (n + 2) + 1).toNat

end

end A120634.P11790339037547465040

namespace A120634

/-- `A004443(A014681(n+2)+1)` -/
def P11790339037547465040.Spec : Prop :=
  ∀ n, P11790339037547465040.a n = A120634 n

end A120634

/-! ## A120634.P14825600318750579725

`A004443(A103889(n+2)+1)`
-/

namespace A120634.P14825600318750579725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A103889 (n + 2) + 1).toNat

end

end A120634.P14825600318750579725

namespace A120634

/-- `A004443(A103889(n+2)+1)` -/
def P14825600318750579725.Spec : Prop :=
  ∀ n, P14825600318750579725.a n = A120634 n

end A120634

/-! ## A120634.P7059822434776725424

`A004443(A004442(n+3))`
-/

namespace A120634.P7059822434776725424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A004442 (n + 3)).toNat

end

end A120634.P7059822434776725424

namespace A120634

/-- `A004443(A004442(n+3))` -/
def P7059822434776725424.Spec : Prop :=
  ∀ n, P7059822434776725424.a n = A120634 n

end A120634

/-!
# A120635: Replace each prime power in the prime-factorization of n with the next higher prime-power.

The programs for A120635, there is no canonical definition to state claims against.
-/

/-! ## A120635.P7211824719774368665

`∏{p}[A338224(n+1), A246655(A003977(#))]`
-/

namespace A120635.P7211824719774368665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A246655 (A003977 p).toNat

end

end A120635.P7211824719774368665

/-! ## A120635.P1306461916554871025

`∏{p}[A338224(n+1), A246655(A036234(#))]`
-/

namespace A120635.P1306461916554871025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A246655 (A036234 p).toNat

end

end A120635.P1306461916554871025

/-! ## A120635.P530772301747108040

`∏{p}[A338224(n+1), A246655(A064553(#))]`
-/

namespace A120635.P530772301747108040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A246655 (A064553 p).toNat

end

end A120635.P530772301747108040

/-! ## A120635.P15851461335885742206

`∏{p}[A338224(n+1), A246655(A318994(#))]`
-/

namespace A120635.P15851461335885742206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A246655 (A318994 p).toNat

end

end A120635.P15851461335885742206

/-!
# A120636: a(1) = 1. Replace each prime power in the prime factorization of n with the next lower prime power.

The programs for A120636, there is no canonical definition to state claims against.
-/

/-! ## A120636.P9101439288389711045

`∏{p}[A338224(n+1), A000961(A000720(#))]`
-/

namespace A120636.P9101439288389711045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000961 (A000720 p).toNat

end

end A120636.P9101439288389711045

/-! ## A120636.P17234420099497311776

`∏{p}[A338224(n+1), A000961(A058933(#))]`
-/

namespace A120636.P17234420099497311776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000961 (A058933 p).toNat

end

end A120636.P17234420099497311776

/-! ## A120636.P8493471001638680487

`∏{p}[A338224(n+1), A000961(A065770(#))]`
-/

namespace A120636.P8493471001638680487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000961 (A065770 p).toNat

end

end A120636.P8493471001638680487

/-! ## A120636.P5071040009244089704

`∏{p}[A338224(n+1), A000961(A003963(#))]`
-/

namespace A120636.P5071040009244089704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000961 (A003963 p).toNat

end

end A120636.P5071040009244089704

/-! ## A120636.P4313450392720815694

`∏{p}[A338224(n+1), A000961(A055396(#))]`
-/

namespace A120636.P4313450392720815694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000961 (A055396 p).toNat

end

end A120636.P4313450392720815694

/-! ## A120636.P13069244287044123961

`∏{p}[A338224(n+1), A000961(A056239(#))]`
-/

namespace A120636.P13069244287044123961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000961 (A056239 p).toNat

end

end A120636.P13069244287044123961

/-!
# A120637: Primes such that their triple is 2 away from a prime number.

The programs for A120637, there is no canonical definition to state claims against.
-/

/-! ## A120637.P1868432409063093687

`∪[A023208(n+1), A088878(n+1)]`
-/

namespace A120637.P1868432409063093687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120637.P1868432409063093687

/-! ## A120637.P2401831902352993909

`record[A006530(A168329(A181709(n+1)))]`
-/

namespace A120637.P2401831902352993909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A168329 (A181709 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120637.P2401831902352993909

/-! ## A120637.P12902130646129189970

`record[A006530(A063198(A098090(n+1)))]`
-/

namespace A120637.P12902130646129189970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063198 (A098090 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120637.P12902130646129189970

/-! ## A120637.P16707330250791996504

`p?[n*A051699(3*n)-n]`
-/

namespace A120637.P16707330250791996504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051699 (3 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120637.P16707330250791996504

/-! ## A120637.P2564738038874990634

`p?[A136161(A160666(n+1))]`
-/

namespace A120637.P2564738038874990634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136161 (A160666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120637.P2564738038874990634

/-! ## A120637.P10171227659588884136

`p?[A160706(A160666(n+2))]`
-/

namespace A120637.P10171227659588884136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160706 (A160666 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120637.P10171227659588884136

/-! ## A120637.P18422183337884211902

`p?[A008611(A067775(n+1)-1)]`
-/

namespace A120637.P18422183337884211902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A067775 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120637.P18422183337884211902

/-! ## A120637.P5084881924931899455

`record[A090368(A154958(A000040(n+1)))]`
-/

namespace A120637.P5084881924931899455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A154958 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120637.P5084881924931899455

/-!
# A120638: Primes such that their triple is not 2 away from a prime number.

The programs for A120638, there is no canonical definition to state claims against.
-/

/-! ## A120638.P17184295735003884281

`p?[comp[A008611(A006093(n+1))]]`
-/

namespace A120638.P17184295735003884281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006093 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120638.P17184295735003884281

/-! ## A120638.P2018243048468332745

`p?[comp[A160706(A160666(n+1))]]`
-/

namespace A120638.P2018243048468332745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160706 (A160666 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120638.P2018243048468332745

/-! ## A120638.P4508305185283747840

`∩[A115058(n+1), A153184(n+1)]`
-/

namespace A120638.P4508305185283747840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120638.P4508305185283747840

/-! ## A120638.P3781128541064331514

`∩[A115058(n+1), A153261(n+1)]`
-/

namespace A120638.P3781128541064331514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120638.P3781128541064331514

/-! ## A120638.P16468404697726374069

`∩[A153170(n+1), A153261(n+1)]`
-/

namespace A120638.P16468404697726374069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120638.P16468404697726374069

/-! ## A120638.P6593139185418385911

`p?[comp[A008611(n)*A173438(n+1)]]`
-/

namespace A120638.P6593139185418385911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A173438 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120638.P6593139185418385911

/-! ## A120638.P13043497243336451865

`p?[∩[A153170(n+1), A153184(n+1)]]`
-/

namespace A120638.P13043497243336451865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153170 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A120638.P13043497243336451865

/-! ## A120638.P8516577548778067919

`p?[2*n-A086014(A078772(6*n+1))]`
-/

namespace A120638.P8516577548778067919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A086014 (A078772 (6 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120638.P8516577548778067919

/-! ## A120638.P17261377460501224580

`eq[A007920(n), A055671(A051699(3*n))]`
-/

namespace A120638.P17261377460501224580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A051699 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120638.P17261377460501224580

/-!
# A120639: Primes such that their quadruple is 1 away from a prime number.

The programs for A120639, the canonical program `A120639.P12948301688875867014` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120639 has offset 1).

The definition of A120639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 765 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120639.P1648197046182154890

`∪[A023212(n+1), A062737(n+1)]`
-/

namespace A120639.P1648197046182154890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120639.P1648197046182154890

namespace A120639

/-- `∪[A023212(n+1), A062737(n+1)]` -/
def P1648197046182154890.Spec : Prop :=
  ∀ n, (P1648197046182154890.a n : ℤ) = A120639 (n + 1)

end A120639

/-! ## A120639.P12948301688875867014

`record[A006530(A024698(n+3))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A120639

/-- `record[A006530(A024698(n+3))]` -/
def P12948301688875867014.Spec : Prop :=
  ∀ n, P12948301688875867014.a n = A120639 (n + 1)

theorem P12948301688875867014.correct : P12948301688875867014.Spec := by
  intro n
  simp only [A120639, Nat.add_sub_cancel]

end A120639

/-! ## A120639.P11347221198454854965

`record[A006530(A076342(n+1))]`
-/

namespace A120639.P11347221198454854965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120639.P11347221198454854965

namespace A120639

/-- `record[A006530(A076342(n+1))]` -/
def P11347221198454854965.Spec : Prop :=
  ∀ n, P11347221198454854965.a n = A120639 (n + 1)

end A120639

/-! ## A120639.P11895724398081640716

`record[A006530(2*(n+1))/A060268(2*(n+1))]`
-/

namespace A120639.P11895724398081640716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (2 * (n + 1)) : ℚ) / (A060268 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120639.P11895724398081640716

namespace A120639

/-- `record[A006530(2*(n+1))/A060268(2*(n+1))]` -/
def P11895724398081640716.Spec : Prop :=
  ∀ n, P11895724398081640716.a n = (A120639 (n + 1) : ℚ)

end A120639

/-! ## A120639.P2489610727794741185

`p?[record[A070091(n+1)]]`
-/

namespace A120639.P2489610727794741185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120639.P2489610727794741185

namespace A120639

/-- `p?[record[A070091(n+1)]]` -/
def P2489610727794741185.Spec : Prop :=
  ∀ n, P2489610727794741185.a n = A120639 (n + 1)

end A120639

/-! ## A120639.P16658458534393907061

`record[A006530(A235863(n+2))]`
-/

namespace A120639.P16658458534393907061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A235863 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120639.P16658458534393907061

namespace A120639

/-- `record[A006530(A235863(n+2))]` -/
def P16658458534393907061.Spec : Prop :=
  ∀ n, P16658458534393907061.a n = A120639 (n + 1)

end A120639

/-!
# A120640: Primes such that their quadruple is not 1 away from a prime number.

The programs for A120640, the canonical program `A120640.P2112450133369881442` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120640 has offset 1).

The definition of A120640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120640.P2112450133369881442

`p?[comp[floor((A000040(n+1)/2+1)/2)]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A120640

/-- `p?[comp[floor((A000040(n+1)/2+1)/2)]]` -/
def P2112450133369881442.Spec : Prop :=
  ∀ n, (P2112450133369881442.a n : ℤ) = A120640 (n + 1)

theorem P2112450133369881442.correct : P2112450133369881442.Spec := by
  intro n
  simp only [A120640, Nat.add_sub_cancel]

end A120640

/-! ## A120640.P3000500004579153959

`p?[round(A038509(n+1)/4)]`
-/

namespace A120640.P3000500004579153959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038509 (n + 1) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P3000500004579153959

namespace A120640

/-- `p?[round(A038509(n+1)/4)]` -/
def P3000500004579153959.Spec : Prop :=
  ∀ n, P3000500004579153959.a n = A120640 (n + 1)

end A120640

/-! ## A120640.P1871520230848906207

`p?[A104278(n+1)-A006530(A104278(n+1))]`
-/

namespace A120640.P1871520230848906207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - A006530 (A104278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P1871520230848906207

namespace A120640

/-- `p?[A104278(n+1)-A006530(A104278(n+1))]` -/
def P1871520230848906207.Spec : Prop :=
  ∀ n, P1871520230848906207.a n = A120640 (n + 1)

end A120640

/-! ## A120640.P17572116252464932165

`p?[(n+1)*A000212(A218850(n+1))]`
-/

namespace A120640.P17572116252464932165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000212 (A218850 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P17572116252464932165

namespace A120640

/-- `p?[(n+1)*A000212(A218850(n+1))]` -/
def P17572116252464932165.Spec : Prop :=
  ∀ n, P17572116252464932165.a n = A120640 (n + 1)

end A120640

/-! ## A120640.P17586085781129160717

`p?[A029578(A104278(n+1))]`
-/

namespace A120640.P17586085781129160717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A104278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P17586085781129160717

namespace A120640

/-- `p?[A029578(A104278(n+1))]` -/
def P17586085781129160717.Spec : Prop :=
  ∀ n, P17586085781129160717.a n = A120640 (n + 1)

end A120640

/-! ## A120640.P8789283347385894630

`p?[A064680(floor(A025583(n+1)/2))]`
-/

namespace A120640.P8789283347385894630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ⌊(A025583 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P8789283347385894630

namespace A120640

/-- `p?[A064680(floor(A025583(n+1)/2))]` -/
def P8789283347385894630.Spec : Prop :=
  ∀ n, P8789283347385894630.a n = A120640 (n + 1)

end A120640

/-! ## A120640.P2791247023727845329

`p?[A057360(2*A199593(n+1))]`
-/

namespace A120640.P2791247023727845329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (2 * A199593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P2791247023727845329

namespace A120640

/-- `p?[A057360(2*A199593(n+1))]` -/
def P2791247023727845329.Spec : Prop :=
  ∀ n, P2791247023727845329.a n = A120640 (n + 1)

end A120640

/-! ## A120640.P1878715162125416565

`p?[A131508(A164376(n+1))]`
-/

namespace A120640.P1878715162125416565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A164376 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P1878715162125416565

namespace A120640

/-- `p?[A131508(A164376(n+1))]` -/
def P1878715162125416565.Spec : Prop :=
  ∀ n, P1878715162125416565.a n = A120640 (n + 1)

end A120640

/-! ## A120640.P17892925295681568358

`p?[A054576(A298366(n+1))-1]`
-/

namespace A120640.P17892925295681568358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A298366 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P17892925295681568358

namespace A120640

/-- `p?[A054576(A298366(n+1))-1]` -/
def P17892925295681568358.Spec : Prop :=
  ∀ n, P17892925295681568358.a n = A120640 (n + 1)

end A120640

/-! ## A120640.P7974652939647596714

`p?[A057353(A008620(A038509(n+1)))]`
-/

namespace A120640.P7974652939647596714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A008620 (A038509 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120640.P7974652939647596714

namespace A120640

/-- `p?[A057353(A008620(A038509(n+1)))]` -/
def P7974652939647596714.Spec : Prop :=
  ∀ n, P7974652939647596714.a n = A120640 (n + 1)

end A120640

/-!
# A120643: Table T(n,k) = number of fractal initial sequences (where new values are successive integers) of length n whose last term is k.

The programs for A120643, there is no canonical definition to state claims against.
-/

/-! ## A120643.P7215792506752523735

`gcd(A110654(A248953(n)), A196182(n))`
-/

namespace A120643.P7215792506752523735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110654 (A248953 n).toNat) (A196182 n)

end

end A120643.P7215792506752523735

/-! ## A120643.P10771845811356450755

`gcd(A109906(n), A113219(A084938(n)²))`
-/

namespace A120643.P10771845811356450755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109906 n) (A113219 (A084938 n ^ 2).toNat)

end

end A120643.P10771845811356450755

/-! ## A120643.P651749589893296808

`A098824(n)+A098804(A316123(n+1))`
-/

namespace A120643.P651749589893296808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098824 n + A098804 (A316123 (n + 1)).toNat

end

end A120643.P651749589893296808

/-! ## A120643.P13991391316656182748

`A351014(A278385(n+1))+A195825(n)`
-/

namespace A120643.P13991391316656182748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A278385 (n + 1)).toNat + A195825 n

end

end A120643.P13991391316656182748

/-! ## A120643.P10707116292465653869

`A109337(A115080(n))`
-/

namespace A120643.P10707116292465653869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109337 (A115080 n).toNat

end

end A120643.P10707116292465653869

/-!
# A120644: Area common to integer-sided isosceles triangles (x,x,y) and (x,x,z=y+2d), sorted on x > z/2, d being positive.

The programs for A120644, there is no canonical definition to state claims against.
-/

/-! ## A120644.P15618510188200549176

`2*A120734(n+1)`
-/

namespace A120644.P15618510188200549176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120734 (n + 1)

end

end A120644.P15618510188200549176

/-! ## A120644.P14105358441339782546

`A046086(n+1)*A046087(n+1)`
-/

namespace A120644.P14105358441339782546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) * A046087 (n + 1)

end

end A120644.P14105358441339782546

/-! ## A120644.P14847967800402183492

`(A020882(n+1)+A014498(n+1))*A087459(n+1)`
-/

namespace A120644.P14847967800402183492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020882 (n + 1) + A014498 (n + 1)) * A087459 (n + 1)

end

end A120644.P14847967800402183492

/-! ## A120644.P10721705288539298778

`(A120682(n+1)+A046086(n+1))*A046086(n+1)`
-/

namespace A120644.P10721705288539298778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120682 (n + 1) + A046086 (n + 1)) * A046086 (n + 1)

end

end A120644.P10721705288539298778

/-! ## A120644.P7637956083024324861

`(A118961(n+1)+A087459(n+1))*A046087(n+1)`
-/

namespace A120644.P7637956083024324861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118961 (n + 1) + A087459 (n + 1)) * A046087 (n + 1)

end

end A120644.P7637956083024324861

/-! ## A120644.P8483023308593401334

`(A020882(n+1)-A118961(n+1))*A046086(n+1)`
-/

namespace A120644.P8483023308593401334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020882 (n + 1) - A118961 (n + 1)) * A046086 (n + 1)

end

end A120644.P8483023308593401334

/-! ## A120644.P11407964375692749896

`(A020882(n+1)-A118962(n+1))*A046087(n+1)`
-/

namespace A120644.P11407964375692749896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020882 (n + 1) - A118962 (n + 1)) * A046087 (n + 1)

end

end A120644.P11407964375692749896

/-! ## A120644.P8055466542899016997

`(A046087(n+1)-A120682(n+1))*A046087(n+1)`
-/

namespace A120644.P8055466542899016997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) - A120682 (n + 1)) * A046087 (n + 1)

end

end A120644.P8055466542899016997

/-! ## A120644.P11852388674745986659

`(A120681(n+1)-A046086(n+1))*A046086(n+1)`
-/

namespace A120644.P11852388674745986659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120681 (n + 1) - A046086 (n + 1)) * A046086 (n + 1)

end

end A120644.P11852388674745986659

/-! ## A120644.P8369700605248314288

`(A120681(n+1)-A046087(n+1))*A046087(n+1)`
-/

namespace A120644.P8369700605248314288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120681 (n + 1) - A046087 (n + 1)) * A046087 (n + 1)

end

end A120644.P8369700605248314288

/-!
# A120645: Numbers not in A121644.

The programs for A120645, there is no canonical definition to state claims against.
-/

/-! ## A120645.P7296344712883918085

`comp[A121644(n+1)-1]+1`
-/

namespace A120645.P7296344712883918085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121644 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A120645.P7296344712883918085

/-! ## A120645.P3221596607106031063

`comp[∪[A121644(n+1), A000578(n)]]`
-/

namespace A120645.P3221596607106031063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121644 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A120645.P3221596607106031063

/-! ## A120645.P12116118401707453460

`comp[∪[A121644(n+1), A077502(n)]]`
-/

namespace A120645.P12116118401707453460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121644 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077502 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A120645.P12116118401707453460

/-! ## A120645.P11322787156700511798

`eq[char[A121644(n+1)], A151933(n)]`
-/

namespace A120645.P11322787156700511798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121644 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A120645.P11322787156700511798

/-! ## A120645.P7705152838841463617

`eq[char[A121644(n+1)], A151622(n)]`
-/

namespace A120645.P7705152838841463617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121644 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A120645.P7705152838841463617

/-!
# A120646: Number of 2-anisohedral polyominoes of order n.

The programs for A120646, there is no canonical definition to state claims against.
-/

/-! ## A120646.P9377736920040709932

`A146672(A121653(n))%A146656(n+1)`
-/

namespace A120646.P9377736920040709932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146672 (A121653 n).toNat) (A146656 (n + 1))

end

end A120646.P9377736920040709932

/-! ## A120646.P4591752359968839622

`A082316(A324092(n+1))%A311933(3*n)`
-/

namespace A120646.P4591752359968839622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082316 (A324092 (n + 1)).toNat) (A311933 (3 * n))

end

end A120646.P4591752359968839622

/-! ## A120646.P2098167003375310489

`A269729(C(n, 7))`
-/

namespace A120646.P2098167003375310489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269729 (Nat.choose n 7)

end

end A120646.P2098167003375310489

/-! ## A120646.P16999492638175905176

`A180199(C(n+1, 8))`
-/

namespace A120646.P16999492638175905176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180199 (Nat.choose (n + 1) 8)

end

end A120646.P16999492638175905176

/-! ## A120646.P16369963313652061369

`A307403(C(n+2, 9))`
-/

namespace A120646.P16369963313652061369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307403 (Nat.choose (n + 2) 9)

end

end A120646.P16369963313652061369

/-!
# A120652: Triangle read by rows: numbers of isomers of unbranched a-4-catapolypentagons.

The programs for A120652, there is no canonical definition to state claims against.
-/

/-! ## A120652.P6097370685023613948

`A185304(2*(n+1))+A109036(A008292(n+1))`
-/

namespace A120652.P6097370685023613948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185304 (2 * (n + 1)) + A109036 (A008292 (n + 1)).toNat

end

end A120652.P6097370685023613948

/-!
# A120654: Row 6 of array in A105272.

The programs for A120654, there is no canonical definition to state claims against.
-/

/-! ## A120654.P1557331934682865256

`A105272(∑[n+5]+16)`
-/

namespace A120654.P1557331934682865256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A120654.P1557331934682865256

/-! ## A120654.P15252848646581974818

`or(char[8], A105272(A000124(n+5)+5))`
-/

namespace A120654.P15252848646581974818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A105272 (A000124 (n + 5) + 5).toNat)

end

end A120654.P15252848646581974818

/-! ## A120654.P2609163487450309174

`∑{d}[A105272(A000124(n+5)+5), A000010(#)]`
-/

namespace A120654.P2609163487450309174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A000124 (n + 5) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A120654.P2609163487450309174

/-! ## A120654.P8286638771489977403

`∏{d}[A105272(A000124(n+5)+5), A014963(#)]`
-/

namespace A120654.P8286638771489977403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A000124 (n + 5) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A120654.P8286638771489977403

/-! ## A120654.P10832844639222376570

`A105272(A000124(n+5)+5)%A000041(n+4)`
-/

namespace A120654.P10832844639222376570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105272 (A000124 (n + 5) + 5).toNat) (A000041 (n + 4))

end

end A120654.P10832844639222376570

/-!
# A120655: Expansion of (1-x)*(1+8*x+60*x^2)/((1-2*x)*(1+2*x)*(1-4*x)).

The programs for A120655, the canonical program `A120655.P15147246243650591079` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120655 has offset 0).

The definition of A120655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+7x+52x^2-60x^3)/(1-4x-4x^2+16x^3))` (program `A120655.P15147246243650591079`, by `A120655.P15147246243650591079.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120655.P15147246243650591079

`ogf((1+7x+52x^2-60x^3)/(1-4x-4x^2+16x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120655

/-- `ogf((1+7x+52x^2-60x^3)/(1-4x-4x^2+16x^3))` -/
def P15147246243650591079.Spec : Prop :=
  ∀ n, P15147246243650591079.a n = A120655 n

theorem P15147246243650591079.correct : P15147246243650591079.Spec := by
  intro n
  simp only [A120655]

end A120655

/-! ## A120655.P14998495498230706605

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=11, a(2)=100, a(3)=368`
-/

namespace A120655.P14998495498230706605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 100, 368] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) - 16 * a (n - 3)

end

end A120655.P14998495498230706605

namespace A120655

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P14998495498230706605.Spec : Prop :=
  ∀ n, P14998495498230706605.a n = A120655 n

end A120655

/-!
# A120656: a(n) = (-4 + (-2)^n + 2*3^(n+1))/3 - [n=0].

The programs for A120656, the canonical program `A120656.P3790957838167712441` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120656 has offset 0).

The definition of A120656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120656.P3790957838167712441

`2*a(n-1)+5*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=4, a(2)=18, a(3)=50`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120656

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)` -/
def P3790957838167712441.Spec : Prop :=
  ∀ n, P3790957838167712441.a n = A120656 n

theorem P3790957838167712441.correct : P3790957838167712441.Spec := by
  intro n
  simp only [A120656]

end A120656

/-! ## A120656.P15252283475028295640

`A099856(n)-A084247(n)`
-/

namespace A120656.P15252283475028295640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n - A084247 n

end

end A120656.P15252283475028295640

namespace A120656

/-- `A099856(n)-A084247(n)` -/
def P15252283475028295640.Spec : Prop :=
  ∀ n, P15252283475028295640.a n = A120656 n

end A120656

/-! ## A120656.P2563023988148474709

`A099856(n)-∑[A123344(n)]`
-/

namespace A120656.P2563023988148474709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120656.P2563023988148474709

namespace A120656

/-- `A099856(n)-∑[A123344(n)]` -/
def P2563023988148474709.Spec : Prop :=
  ∀ n, P2563023988148474709.a n = A120656 n

end A120656

/-! ## A120656.P1245171778015909181

`Δ[A103453(n)]-A084247(n)`
-/

namespace A120656.P1245171778015909181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A084247 n

end

end A120656.P1245171778015909181

namespace A120656

/-- `Δ[A103453(n)]-A084247(n)` -/
def P1245171778015909181.Spec : Prop :=
  ∀ n, P1245171778015909181.a n = A120656 n

end A120656

/-! ## A120656.P8647699688641683531

`Δ[A259821(n)]-A084247(n)`
-/

namespace A120656.P8647699688641683531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A084247 n

end

end A120656.P8647699688641683531

namespace A120656

/-- `Δ[A259821(n)]-A084247(n)` -/
def P8647699688641683531.Spec : Prop :=
  ∀ n, P8647699688641683531.a n = A120656 n

end A120656

/-! ## A120656.P755811861079003793

`Δ[A259821(n)]-∑[A123344(n)]`
-/

namespace A120656.P755811861079003793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A120656.P755811861079003793

namespace A120656

/-- `Δ[A259821(n)]-∑[A123344(n)]` -/
def P755811861079003793.Spec : Prop :=
  ∀ n, P755811861079003793.a n = A120656 n

end A120656

/-! ## A120656.P18006902996071981281

`2*(A140725(n)+∑[A140725(n)])`
-/

namespace A120656.P18006902996071981281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140725 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120656.P18006902996071981281

namespace A120656

/-- `2*(A140725(n)+∑[A140725(n)])` -/
def P18006902996071981281.Spec : Prop :=
  ∀ n, P18006902996071981281.a n = A120656 n

end A120656

/-! ## A120656.P17608618761968740488

`A008776(n)-A084247(A028310(n))`
-/

namespace A120656.P17608618761968740488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n - A084247 (A028310 n).toNat

end

end A120656.P17608618761968740488

namespace A120656

/-- `A008776(n)-A084247(A028310(n))` -/
def P17608618761968740488.Spec : Prop :=
  ∀ n, P17608618761968740488.a n = A120656 n

end A120656

/-!
# A120658: Expansion of 2*x*(6 + 30*x - 13*x^2 - 70*x^3)/((1-x)*(1+2*x)*(1 - 4*x - 3*x^2 + 10*x^3)).

The programs for A120658, the canonical program `A120658.P3199892982660951531` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120658 has offset 0).

The definition of A120658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120658.P3199892982660951531

`2*a(n-1)+11*a(n-2)-4*a(n-3)-20*a(n-4)-94` with `a(0)=0, a(1)=12, a(2)=96, a(3)=370`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120658

/-- `2*a(n-1)+11*a(n-2)-4*a(n-3)-20*a(n-4)-94` -/
def P3199892982660951531.Spec : Prop :=
  ∀ n, P3199892982660951531.a n = A120658 n

theorem P3199892982660951531.correct : P3199892982660951531.Spec := by
  intro n
  simp only [A120658]

end A120658

/-!
# A120662: Expansion of x*(12 +101*x -189*x^2)/((1+2*x)*(1-3*x)*(1-5*x)).

The programs for A120662, the canonical program `A120662.P17678823729914824909` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120662 has offset 0).

The definition of A120662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120662.P17678823729914824909

`6*a(n-1)+a(n-2)-30*a(n-3)` with `a(0)=0, a(1)=12, a(2)=173, a(3)=861`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120662

/-- `6*a(n-1)+a(n-2)-30*a(n-3)` -/
def P17678823729914824909.Spec : Prop :=
  ∀ n, P17678823729914824909.a n = A120662 n

theorem P17678823729914824909.correct : P17678823729914824909.Spec := by
  intro n
  simp only [A120662]

end A120662

/-!
# A120664: Expansion of 2*x*(1-6*x+12*x^2)/(1-8*x+19*x^2-12*x^3).

The programs for A120664, the canonical program `A120664.P14849657904424855403` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120664 has offset 0).

The definition of A120664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-12x^2+24x^3)/(1-8x+19x^2-12x^3))` (program `A120664.P14849657904424855403`, by `A120664.P14849657904424855403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120664.P14849657904424855403

`ogf((2x-12x^2+24x^3)/(1-8x+19x^2-12x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120664

/-- `ogf((2x-12x^2+24x^3)/(1-8x+19x^2-12x^3))` -/
def P14849657904424855403.Spec : Prop :=
  ∀ n, P14849657904424855403.a n = A120664 n

theorem P14849657904424855403.correct : P14849657904424855403.Spec := by
  intro n
  simp only [A120664]

end A120664

/-! ## A120664.P12789923674142978771

`8*a(n-1)-19*a(n-2)+12*a(n-3)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=18`
-/

namespace A120664.P12789923674142978771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 18] fun n a =>
  8 * a (n - 1) - 19 * a (n - 2) + 12 * a (n - 3)

end

end A120664.P12789923674142978771

namespace A120664

/-- `8*a(n-1)-19*a(n-2)+12*a(n-3)` -/
def P12789923674142978771.Spec : Prop :=
  ∀ n, P12789923674142978771.a n = A120664 n

end A120664

/-! ## A120664.P1279354337478646118

`∑[floor(4^n/2)]-(abs(2-3^n)-1)`
-/

namespace A120664.P1279354337478646118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (|2 - (3 ^ n : ℤ)| - 1)

end

end A120664.P1279354337478646118

namespace A120664

/-- `∑[floor(4^n/2)]-(abs(2-3^n)-1)` -/
def P1279354337478646118.Spec : Prop :=
  ∀ n, P1279354337478646118.a n = A120664 n

end A120664

/-! ## A120664.P5802470830842431148

`2*(ceil(4^n/3)-∑[floor(3^(n-1))])%(4^n)`
-/

namespace A120664.P5802470830842431148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (⌈(4 ^ n : ℚ) / 3⌉ - ∑ j ∈ Finset.range (n + 1), f1 j) (4 ^ n : ℤ)

end

end A120664.P5802470830842431148

namespace A120664

/-- `2*(ceil(4^n/3)-∑[floor(3^(n-1))])%(4^n)` -/
def P5802470830842431148.Spec : Prop :=
  ∀ n, P5802470830842431148.a n = A120664 n

end A120664

/-! ## A120664.P18219342201436960078

`∑[2*A167936(A004275(n))]`
-/

namespace A120664.P18219342201436960078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167936 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120664.P18219342201436960078

namespace A120664

/-- `∑[2*A167936(A004275(n))]` -/
def P18219342201436960078.Spec : Prop :=
  ∀ n, P18219342201436960078.a n = A120664 n

end A120664

/-! ## A120664.P8265721211887119221

`A010673(comp[2*(n+1)])*A162725(n)`
-/

namespace A120664.P8265721211887119221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A162725 n

end

end A120664.P8265721211887119221

namespace A120664

/-- `A010673(comp[2*(n+1)])*A162725(n)` -/
def P8265721211887119221.Spec : Prop :=
  ∀ n, P8265721211887119221.a n = A120664 n

end A120664

/-! ## A120664.P11893124549498843490

`xor(A058809(n)+A002450(n), A024036(n))`
-/

namespace A120664.P11893124549498843490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058809 n + A002450 n) (A024036 n)

end

end A120664.P11893124549498843490

namespace A120664

/-- `xor(A058809(n)+A002450(n), A024036(n))` -/
def P11893124549498843490.Spec : Prop :=
  ∀ n, P11893124549498843490.a n = A120664 n

end A120664

/-! ## A120664.P12492888378545470794

`A135583(n)%A155602(n)`
-/

namespace A120664.P12492888378545470794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135583 n) (A155602 n)

end

end A120664.P12492888378545470794

namespace A120664

/-- `A135583(n)%A155602(n)` -/
def P12492888378545470794.Spec : Prop :=
  ∀ n, P12492888378545470794.a n = A120664 n

end A120664

/-!
# A120665: a(n) = 6*a(n-1) - 9*a(n-2) + 2*a(n-3) for n>3, a(1)=0, a(2)=-1, a(3)=0.

The programs for A120665, the canonical program `A120665.P3957038750152057849` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120665 has offset 1).

The definition of A120665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-9*a(n-2)+2*a(n-3)` (program `A120665.P3957038750152057849`, by `A120665.P3957038750152057849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120665.P3957038750152057849

`6*a(n-1)-9*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=-1, a(2)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120665

/-- `6*a(n-1)-9*a(n-2)+2*a(n-3)` -/
def P3957038750152057849.Spec : Prop :=
  ∀ n, P3957038750152057849.a n = A120665 (n + 1)

theorem P3957038750152057849.correct : P3957038750152057849.Spec := by
  intro n
  simp only [A120665, Nat.add_sub_cancel]

end A120665

/-! ## A120665.P14900247088795447900

`ogf((-x+6x^2)/(1-6x+9x^2-2x^3))`
-/

namespace A120665.P14900247088795447900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 6] [1, -6, 9, -2] n

end

end A120665.P14900247088795447900

namespace A120665

/-- `ogf((-x+6x^2)/(1-6x+9x^2-2x^3))` -/
def P14900247088795447900.Spec : Prop :=
  ∀ n, P14900247088795447900.a n = A120665 (n + 1)

end A120665

/-! ## A120665.P1815424174078597796

`A216263(n)-A054485(n)`
-/

namespace A120665.P1815424174078597796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216263 n - A054485 n

end

end A120665.P1815424174078597796

namespace A120665

/-- `A216263(n)-A054485(n)` -/
def P1815424174078597796.Spec : Prop :=
  ∀ n, P1815424174078597796.a n = A120665 (n + 1)

end A120665

/-! ## A120665.P3464383333212287441

`A016064(n)-∑[A099780(n)]`
-/

namespace A120665.P3464383333212287441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016064 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120665.P3464383333212287441

namespace A120665

/-- `A016064(n)-∑[A099780(n)]` -/
def P3464383333212287441.Spec : Prop :=
  ∀ n, P3464383333212287441.a n = A120665 (n + 1)

end A120665

/-! ## A120665.P15049622953392730266

`A003500(n)-A123020(n+2)`
-/

namespace A120665.P15049622953392730266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n - A123020 (n + 2)

end

end A120665.P15049622953392730266

namespace A120665

/-- `A003500(n)-A123020(n+2)` -/
def P15049622953392730266.Spec : Prop :=
  ∀ n, P15049622953392730266.a n = A120665 (n + 1)

end A120665

/-! ## A120665.P4531409163811057497

`A016064(n)-∑[∑[A087944(n)]]`
-/

namespace A120665.P4531409163811057497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016064 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120665.P4531409163811057497

namespace A120665

/-- `A016064(n)-∑[∑[A087944(n)]]` -/
def P4531409163811057497.Spec : Prop :=
  ∀ n, P4531409163811057497.a n = A120665 (n + 1)

end A120665

/-! ## A120665.P6567848634302521743

`A003500(n)-(A087946(n)+A000079(n))`
-/

namespace A120665.P6567848634302521743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n - (A087946 n + A000079 n)

end

end A120665.P6567848634302521743

namespace A120665

/-- `A003500(n)-(A087946(n)+A000079(n))` -/
def P6567848634302521743.Spec : Prop :=
  ∀ n, P6567848634302521743.a n = A120665 (n + 1)

end A120665

/-!
# A120666: Triangle read by rows: T(n, k) = (n*k)!/(n!)^k.

The programs for A120666, there is no canonical definition to state claims against.
-/

/-! ## A120666.P8727467022441763091

`A060538(A245300(n)+1)`
-/

namespace A120666.P8727467022441763091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060538 (A245300 n + 1).toNat

end

end A120666.P8727467022441763091

/-! ## A120666.P12612976885973828446

`A187783(A245300(comp[∑[n]]))`
-/

namespace A120666.P12612976885973828446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A245300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A120666.P12612976885973828446

/-!
# A120667: Number of n-node labeled bipartite graphs without isolated nodes.

The programs for A120667, there is no canonical definition to state claims against.
-/

/-! ## A120667.P1179181260535685118

`A176866(n)+A106747(A158257(n))`
-/

namespace A120667.P1179181260535685118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176866 n + A106747 (A158257 n).toNat

end

end A120667.P1179181260535685118

/-! ## A120667.P1889726973819540670

`A097796(A253070(n+1))`
-/

namespace A120667.P1889726973819540670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097796 (A253070 (n + 1)).toNat

end

end A120667.P1889726973819540670

/-!
# A120672: a(n) = 2 * A285917(n) for n >=2, a(0) = a(1) = 0.

The programs for A120672, the canonical program `A120672.P7875415182769187562` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120672 has offset 0).

The definition of A120672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120672.P7875415182769187562

`A283353(n)-A081668(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120672

/-- `A283353(n)-A081668(n)` -/
def P7875415182769187562.Spec : Prop :=
  ∀ n, P7875415182769187562.a n = A120672 n

theorem P7875415182769187562.correct : P7875415182769187562.Spec := by
  intro n
  simp only [A120672]

end A120672

/-! ## A120672.P12059771864757585625

`A131128(n)-A081672(n)`
-/

namespace A120672.P12059771864757585625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 n - A081672 n

end

end A120672.P12059771864757585625

namespace A120672

/-- `A131128(n)-A081672(n)` -/
def P12059771864757585625.Spec : Prop :=
  ∀ n, P12059771864757585625.a n = A120672 n

end A120672

/-! ## A120672.P15237120340005853105

`A028399(n+2)%(A081672(n)+A000079(n))`
-/

namespace A120672.P15237120340005853105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028399 (n + 2)) (A081672 n + A000079 n)

end

end A120672.P15237120340005853105

namespace A120672

/-- `A028399(n+2)%(A081672(n)+A000079(n))` -/
def P15237120340005853105.Spec : Prop :=
  ∀ n, P15237120340005853105.a n = A120672 n

end A120672

/-! ## A120672.P18330755273909592106

`2*A285824(∑[char[1]+n]+1)`
-/

namespace A120672.P18330755273909592106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285824 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120672.P18330755273909592106

namespace A120672

/-- `2*A285824(∑[char[1]+n]+1)` -/
def P18330755273909592106.Spec : Prop :=
  ∀ n, P18330755273909592106.a n = A120672 n

end A120672

/-! ## A120672.P8035909814089947447

`A151706(A000225(n))-A126869(n)`
-/

namespace A120672.P8035909814089947447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 (A000225 n).toNat - A126869 n

end

end A120672.P8035909814089947447

namespace A120672

/-- `A151706(A000225(n))-A126869(n)` -/
def P8035909814089947447.Spec : Prop :=
  ∀ n, P8035909814089947447.a n = A120672 n

end A120672

/-!
# A120673: Least number including digits 1,2,...,n and divisible by each of 1,2,...,n.

The programs for A120673, there is no canonical definition to state claims against.
-/

/-! ## A120673.P8492142684781402381

`xor(A120647(A322384(n+1)), A120674(n+1))`
-/

namespace A120673.P8492142684781402381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A120647 (A322384 (n + 1)).toNat) (A120674 (n + 1))

end

end A120673.P8492142684781402381

/-!
# A120674: Least number with distinct digits including digits 1,2,...,n and divisible by each of 1,2,...,n.

The programs for A120674, there is no canonical definition to state claims against.
-/

/-! ## A120674.P2590841061482739460

`A120673(n+1)+A120647(A322384(n+1))`
-/

namespace A120674.P2590841061482739460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120673 (n + 1) + A120647 (A322384 (n + 1)).toNat

end

end A120674.P2590841061482739460

/-!
# A120675: Number of prime factors of odd squarefree numbers A056911.

The programs for A120675, the canonical program `A120675.P7049044633339083279` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120675 has offset 1).

The definition of A120675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120675.P7049044633339083279

`A001221(A056911(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A120675

/-- `A001221(A056911(n+1))` -/
def P7049044633339083279.Spec : Prop :=
  ∀ n, P7049044633339083279.a n = A120675 (n + 1)

theorem P7049044633339083279.correct : P7049044633339083279.Spec := by
  intro n
  simp only [A120675, Nat.add_sub_cancel]

end A120675

/-! ## A120675.P16818054062666702913

`A120676(n+1)-1`
-/

namespace A120675.P16818054062666702913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120676 (n + 1) - 1

end

end A120675.P16818054062666702913

namespace A120675

/-- `A120676(n+1)-1` -/
def P16818054062666702913.Spec : Prop :=
  ∀ n, P16818054062666702913.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P14128820554643533625

`∑{e}[A039956(n+1), #]-1`
-/

namespace A120675.P14128820554643533625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A120675.P14128820554643533625

namespace A120675

/-- `∑{e}[A039956(n+1), #]-1` -/
def P14128820554643533625.Spec : Prop :=
  ∀ n, P14128820554643533625.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P17413804926955838692

`∑{e}[record[A007947(2*n+1)], #]`
-/

namespace A120675.P17413804926955838692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A120675.P17413804926955838692

namespace A120675

/-- `∑{e}[record[A007947(2*n+1)], #]` -/
def P17413804926955838692.Spec : Prop :=
  ∀ n, (P17413804926955838692.a n : ℤ) = A120675 (n + 1)

end A120675

/-! ## A120675.P8495136853615862807

`A001221(lt[0, A323239(n)])`
-/

namespace A120675.P8495136853615862807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120675.P8495136853615862807

namespace A120675

/-- `A001221(lt[0, A323239(n)])` -/
def P8495136853615862807.Spec : Prop :=
  ∀ n, P8495136853615862807.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P5633146955194784693

`A001222(lt[0, A323239(n)])`
-/

namespace A120675.P5633146955194784693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A120675.P5633146955194784693

namespace A120675

/-- `A001222(lt[0, A323239(n)])` -/
def P5633146955194784693.Spec : Prop :=
  ∀ n, P5633146955194784693.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P10952294443615599672

`A001222(eq[1, A323239(n)])`
-/

namespace A120675.P10952294443615599672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120675.P10952294443615599672

namespace A120675

/-- `A001222(eq[1, A323239(n)])` -/
def P10952294443615599672.Spec : Prop :=
  ∀ n, P10952294443615599672.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P2018227839261728521

`A001221(record[A007913(or(1, n))])`
-/

namespace A120675.P2018227839261728521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120675.P2018227839261728521

namespace A120675

/-- `A001221(record[A007913(or(1, n))])` -/
def P2018227839261728521.Spec : Prop :=
  ∀ n, P2018227839261728521.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P1056288118239654180

`A001221(record[A007947(or(1, n))])`
-/

namespace A120675.P1056288118239654180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120675.P1056288118239654180

namespace A120675

/-- `A001221(record[A007947(or(1, n))])` -/
def P1056288118239654180.Spec : Prop :=
  ∀ n, P1056288118239654180.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P2484381069378333138

`A001221(A039956(n+1))-1`
-/

namespace A120675.P2484381069378333138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A039956 (n + 1)).toNat - 1

end

end A120675.P2484381069378333138

namespace A120675

/-- `A001221(A039956(n+1))-1` -/
def P2484381069378333138.Spec : Prop :=
  ∀ n, P2484381069378333138.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P11816082449655125571

`A001221(A081770(n+1))-1`
-/

namespace A120675.P11816082449655125571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A081770 (n + 1)).toNat - 1

end

end A120675.P11816082449655125571

namespace A120675

/-- `A001221(A081770(n+1))-1` -/
def P11816082449655125571.Spec : Prop :=
  ∀ n, P11816082449655125571.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P16247554803299373963

`A001221(A039956(n+1)/2)`
-/

namespace A120675.P16247554803299373963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A039956 (n + 1) : ℚ) / 2)).toNat

end

end A120675.P16247554803299373963

namespace A120675

/-- `A001221(A039956(n+1)/2)` -/
def P16247554803299373963.Spec : Prop :=
  ∀ n, P16247554803299373963.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P6625297283457972438

`A001222(A039956(n+1)/2)`
-/

namespace A120675.P6625297283457972438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A039956 (n + 1) : ℚ) / 2)).toNat

end

end A120675.P6625297283457972438

namespace A120675

/-- `A001222(A039956(n+1)/2)` -/
def P6625297283457972438.Spec : Prop :=
  ∀ n, P6625297283457972438.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P7690681635808845324

`A001222(lt[A105570(2*n), n])`
-/

namespace A120675.P7690681635808845324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A120675.P7690681635808845324

namespace A120675

/-- `A001222(lt[A105570(2*n), n])` -/
def P7690681635808845324.Spec : Prop :=
  ∀ n, P7690681635808845324.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P7034667623148248680

`A001221(record[A007913(2*n+1)])`
-/

namespace A120675.P7034667623148248680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120675.P7034667623148248680

namespace A120675

/-- `A001221(record[A007913(2*n+1)])` -/
def P7034667623148248680.Spec : Prop :=
  ∀ n, P7034667623148248680.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P7662058383913778890

`A001221(record[A007947(2*n+1)])`
-/

namespace A120675.P7662058383913778890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120675.P7662058383913778890

namespace A120675

/-- `A001221(record[A007947(2*n+1)])` -/
def P7662058383913778890.Spec : Prop :=
  ∀ n, P7662058383913778890.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P7447824506638854703

`A001222(A056911(2*n+1-n))`
-/

namespace A120675.P7447824506638854703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056911 (2 * n + 1 - n)).toNat

end

end A120675.P7447824506638854703

namespace A120675

/-- `A001222(A056911(2*n+1-n))` -/
def P7447824506638854703.Spec : Prop :=
  ∀ n, P7447824506638854703.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P7255902343827129919

`A127229(n+5)%A120676(n+1)`
-/

namespace A120675.P7255902343827129919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A120676 (n + 1))

end

end A120675.P7255902343827129919

namespace A120675

/-- `A127229(n+5)%A120676(n+1)` -/
def P7255902343827129919.Spec : Prop :=
  ∀ n, P7255902343827129919.a n = A120675 (n + 1)

end A120675

/-! ## A120675.P6349808888579961985

`A001222(record[lcm(4, A005117(n+1))])-2`
-/

namespace A120675.P6349808888579961985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A005117 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 2

end

end A120675.P6349808888579961985

namespace A120675

/-- `A001222(record[lcm(4, A005117(n+1))])-2` -/
def P6349808888579961985.Spec : Prop :=
  ∀ n, P6349808888579961985.a n = A120675 (n + 1)

end A120675

/-!
# A120676: Number of prime factors of even squarefree numbers A039956.

The programs for A120676, the canonical program `A120676.P5759093107457240539` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120676 has offset 1).

The definition of A120676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120676.P5759093107457240539

`A120675(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120676

/-- `A120675(n+1)+1` -/
def P5759093107457240539.Spec : Prop :=
  ∀ n, P5759093107457240539.a n = A120676 (n + 1)

theorem P5759093107457240539.correct : P5759093107457240539.Spec := by
  intro n
  simp only [A120676, Nat.add_sub_cancel]

end A120676

/-! ## A120676.P17518390029917651391

`A001221(A039956(n+1))`
-/

namespace A120676.P17518390029917651391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A039956 (n + 1)).toNat

end

end A120676.P17518390029917651391

namespace A120676

/-- `A001221(A039956(n+1))` -/
def P17518390029917651391.Spec : Prop :=
  ∀ n, P17518390029917651391.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P8357846312762673857

`∑{e}[A056911(n+1), #]+1`
-/

namespace A120676.P8357846312762673857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A120676.P8357846312762673857

namespace A120676

/-- `∑{e}[A056911(n+1), #]+1` -/
def P8357846312762673857.Spec : Prop :=
  ∀ n, (P8357846312762673857.a n : ℤ) = A120676 (n + 1)

end A120676

/-! ## A120676.P15823143869666540194

`∑{e}[record[A007947(2*(n+1))], #]`
-/

namespace A120676.P15823143869666540194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A120676.P15823143869666540194

namespace A120676

/-- `∑{e}[record[A007947(2*(n+1))], #]` -/
def P15823143869666540194.Spec : Prop :=
  ∀ n, (P15823143869666540194.a n : ℤ) = A120676 (n + 1)

end A120676

/-! ## A120676.P14287530702685589251

`A001221(A081770(n+1))`
-/

namespace A120676.P14287530702685589251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A081770 (n + 1)).toNat

end

end A120676.P14287530702685589251

namespace A120676

/-- `A001221(A081770(n+1))` -/
def P14287530702685589251.Spec : Prop :=
  ∀ n, P14287530702685589251.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P18034842192312082284

`A001222(eq[0, A105234(n)])`
-/

namespace A120676.P18034842192312082284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120676.P18034842192312082284

namespace A120676

/-- `A001222(eq[0, A105234(n)])` -/
def P18034842192312082284.Spec : Prop :=
  ∀ n, P18034842192312082284.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P12345940805589639158

`A001221(A056911(n+1))+1`
-/

namespace A120676.P12345940805589639158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056911 (n + 1)).toNat + 1

end

end A120676.P12345940805589639158

namespace A120676

/-- `A001221(A056911(n+1))+1` -/
def P12345940805589639158.Spec : Prop :=
  ∀ n, P12345940805589639158.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P13558675530820733473

`A001221(A160785(n+1)-1)`
-/

namespace A120676.P13558675530820733473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160785 (n + 1) - 1).toNat

end

end A120676.P13558675530820733473

namespace A120676

/-- `A001221(A160785(n+1)-1)` -/
def P13558675530820733473.Spec : Prop :=
  ∀ n, P13558675530820733473.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P5298742276778934999

`A001222(A160785(n+1)-1)`
-/

namespace A120676.P5298742276778934999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A160785 (n + 1) - 1).toNat

end

end A120676.P5298742276778934999

namespace A120676

/-- `A001222(A160785(n+1)-1)` -/
def P5298742276778934999.Spec : Prop :=
  ∀ n, P5298742276778934999.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P285791527021208327

`A001222(2*A056911(n+1))`
-/

namespace A120676.P285791527021208327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A056911 (n + 1)).toNat

end

end A120676.P285791527021208327

namespace A120676

/-- `A001222(2*A056911(n+1))` -/
def P285791527021208327.Spec : Prop :=
  ∀ n, P285791527021208327.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P12407551859840931246

`A001222(A081770(n+1)/2)`
-/

namespace A120676.P12407551859840931246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A081770 (n + 1) : ℚ) / 2)).toNat

end

end A120676.P12407551859840931246

namespace A120676

/-- `A001222(A081770(n+1)/2)` -/
def P12407551859840931246.Spec : Prop :=
  ∀ n, P12407551859840931246.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P6804811702224451174

`A001221(record[A007913(2*(n+1))])`
-/

namespace A120676.P6804811702224451174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120676.P6804811702224451174

namespace A120676

/-- `A001221(record[A007913(2*(n+1))])` -/
def P6804811702224451174.Spec : Prop :=
  ∀ n, P6804811702224451174.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P4670777720256003381

`A001221(record[A007947(2*(n+1))])`
-/

namespace A120676.P4670777720256003381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120676.P4670777720256003381

namespace A120676

/-- `A001221(record[A007947(2*(n+1))])` -/
def P4670777720256003381.Spec : Prop :=
  ∀ n, P4670777720256003381.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P10162592178475723400

`A001221(record[lcm(2, A005117(n+1))])`
-/

namespace A120676.P10162592178475723400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005117 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A120676.P10162592178475723400

namespace A120676

/-- `A001221(record[lcm(2, A005117(n+1))])` -/
def P10162592178475723400.Spec : Prop :=
  ∀ n, P10162592178475723400.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P16616392113418182867

`A001222(A039956(2*n+1-n))`
-/

namespace A120676.P16616392113418182867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039956 (2 * n + 1 - n)).toNat

end

end A120676.P16616392113418182867

namespace A120676

/-- `A001222(A039956(2*n+1-n))` -/
def P16616392113418182867.Spec : Prop :=
  ∀ n, P16616392113418182867.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P15372854004850394225

`A000005(A000005(A056911(n+1)))`
-/

namespace A120676.P15372854004850394225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A056911 (n + 1)).toNat).toNat

end

end A120676.P15372854004850394225

namespace A120676

/-- `A000005(A000005(A056911(n+1)))` -/
def P15372854004850394225.Spec : Prop :=
  ∀ n, P15372854004850394225.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P6606940666478262599

`A001222(A056911(n+1)+A039956(n+1))`
-/

namespace A120676.P6606940666478262599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056911 (n + 1) + A039956 (n + 1)).toNat

end

end A120676.P6606940666478262599

namespace A120676

/-- `A001222(A056911(n+1)+A039956(n+1))` -/
def P6606940666478262599.Spec : Prop :=
  ∀ n, P6606940666478262599.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P11504321338517989587

`A001222(A056911(n+1)+A056911(n+1))`
-/

namespace A120676.P11504321338517989587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056911 (n + 1) + A056911 (n + 1)).toNat

end

end A120676.P11504321338517989587

namespace A120676

/-- `A001222(A056911(n+1)+A056911(n+1))` -/
def P11504321338517989587.Spec : Prop :=
  ∀ n, P11504321338517989587.a n = A120676 (n + 1)

end A120676

/-! ## A120676.P12609027157677087980

`A010553(A056911(n+1))`
-/

namespace A120676.P12609027157677087980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A056911 (n + 1)).toNat

end

end A120676.P12609027157677087980

namespace A120676

/-- `A010553(A056911(n+1))` -/
def P12609027157677087980.Spec : Prop :=
  ∀ n, P12609027157677087980.a n = A120676 (n + 1)

end A120676

/-!
# A120679: a(1)=1. a(n) = a(n-1) + d(a(k)), where d(m) is the number of positive divisors of m and d(a(k)) is the maximum value over the k's where 1<=k <=n-1.

The programs for A120679, there is no canonical definition to state claims against.
-/

/-! ## A120679.P9878963428530197770

`∑[A113177(∏[A005361(3*(n+1))])+1]`
-/

namespace A120679.P9878963428530197770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (∏ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120679.P9878963428530197770

/-! ## A120679.P14994855312172597016

`∑[A071786(n+1)-A179868(A008831(n+1))]`
-/

namespace A120679.P14994855312172597016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (n + 1) - A179868 (A008831 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120679.P14994855312172597016

/-! ## A120679.P2748740220992974790

`∑[∑[A128121(n+1)%3]]`
-/

namespace A120679.P2748740220992974790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128121 (n + 1)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120679.P2748740220992974790

/-! ## A120679.P15685429727252028653

`A048597(round(sqrt(n²+1)))+comp[2*n+3]`
-/

namespace A120679.P15685429727252028653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048597 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A120679.P15685429727252028653

/-! ## A120679.P1202563092155053484

`∑[∑[A024316(A007272(n))]]`
-/

namespace A120679.P1202563092155053484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (A007272 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120679.P1202563092155053484

/-!
# A120680: a(n) = number of positive divisors of A120679(n).

The programs for A120680, there is no canonical definition to state claims against.
-/

/-! ## A120680.P2666488468091607450

`∏{e}[A120679(n+1), #+1]`
-/

namespace A120680.P2666488468091607450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A120680.P2666488468091607450

/-! ## A120680.P5026295484975492995

`A000005(A120679(n+1))`
-/

namespace A120680.P5026295484975492995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A120679 (n + 1)).toNat

end

end A120680.P5026295484975492995

/-! ## A120680.P6741135337014081158

`A183063(2*A120679(n+1))`
-/

namespace A120680.P6741135337014081158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A120679 (n + 1)).toNat

end

end A120680.P6741135337014081158

/-! ## A120680.P12782365756727163895

`A112329(4*A120679(n+1))`
-/

namespace A120680.P12782365756727163895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (4 * A120679 (n + 1)).toNat

end

end A120680.P12782365756727163895

/-! ## A120680.P16403296698904535379

`∑{d}[A120679(n+1), A054977(#)]`
-/

namespace A120680.P16403296698904535379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A120680.P16403296698904535379

/-! ## A120680.P9760985884859488280

`∑{d}[A120679(n+1), A057427(#)]`
-/

namespace A120680.P9760985884859488280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A120680.P9760985884859488280

/-! ## A120680.P12098660788565417837

`∑{d}[A120679(n+1), A158388(#)]`
-/

namespace A120680.P12098660788565417837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A158388 d

end

end A120680.P12098660788565417837

/-! ## A120680.P15877372199717760982

`∑{d}[A120679(n+1), A001511(2*#+1)]`
-/

namespace A120680.P15877372199717760982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001511 (2 * d + 1)

end

end A120680.P15877372199717760982

/-!
# A120681: Sum of legs of primitive Pythagorean triangles sorted first on hypotenuse, then long leg.

The programs for A120681, there is no canonical definition to state claims against.
-/

/-! ## A120681.P10746541215126738027

`A046087(n+1)+A046086(n+1)`
-/

namespace A120681.P10746541215126738027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) + A046086 (n + 1)

end

end A120681.P10746541215126738027

/-! ## A120681.P17874800370538629416

`A087459(n+1)+A020882(n+1)`
-/

namespace A120681.P17874800370538629416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087459 (n + 1) + A020882 (n + 1)

end

end A120681.P17874800370538629416

/-! ## A120681.P3635799919107715686

`A020882(n+1)+2*A014498(n+1)`
-/

namespace A120681.P3635799919107715686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + 2 * A014498 (n + 1)

end

end A120681.P3635799919107715686

/-! ## A120681.P165435037035793145

`A120682(n+1)+2*A046086(n+1)`
-/

namespace A120681.P165435037035793145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120682 (n + 1) + 2 * A046086 (n + 1)

end

end A120681.P165435037035793145

/-! ## A120681.P8028448655171730073

`2*A046087(n+1)-A120682(n+1)`
-/

namespace A120681.P8028448655171730073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046087 (n + 1) - A120682 (n + 1)

end

end A120681.P8028448655171730073

/-! ## A120681.P10809353425209915794

`A046087(n+1)+A118961(n+1)+A087459(n+1)`
-/

namespace A120681.P10809353425209915794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) + (A118961 (n + 1) + A087459 (n + 1))

end

end A120681.P10809353425209915794

/-! ## A120681.P17633628184715488285

`A020882(n+1)+A046086(n+1)-A118961(n+1)`
-/

namespace A120681.P17633628184715488285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + (A046086 (n + 1) - A118961 (n + 1))

end

end A120681.P17633628184715488285

/-! ## A120681.P1606644951922171126

`A020882(n+1)+A046087(n+1)-A118962(n+1)`
-/

namespace A120681.P1606644951922171126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + (A046087 (n + 1) - A118962 (n + 1))

end

end A120681.P1606644951922171126

/-! ## A120681.P9223584144454297873

`A046086(n+1)+A120644(n+1)/A046086(n+1)`
-/

namespace A120681.P9223584144454297873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046086 (n + 1) : ℚ) + (A120644 (n + 1) : ℚ) / (A046086 (n + 1) : ℚ)

end

end A120681.P9223584144454297873

/-! ## A120681.P11613305120702419653

`A046087(n+1)+A120644(n+1)/A046087(n+1)`
-/

namespace A120681.P11613305120702419653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) : ℚ) + (A120644 (n + 1) : ℚ) / (A046087 (n + 1) : ℚ)

end

end A120681.P11613305120702419653

/-! ## A120681.P13494590663472009008

`A046086(n+1)²/A118961(n+1)-A118962(n+1)`
-/

namespace A120681.P13494590663472009008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046086 (n + 1) ^ 2 : ℚ) / (A118961 (n + 1) : ℚ) - (A118962 (n + 1) : ℚ)

end

end A120681.P13494590663472009008

/-! ## A120681.P5173242355631897040

`A046087(n+1)²/A118962(n+1)-A118961(n+1)`
-/

namespace A120681.P5173242355631897040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) ^ 2 : ℚ) / (A118962 (n + 1) : ℚ) - (A118961 (n + 1) : ℚ)

end

end A120681.P5173242355631897040

/-!
# A120682: Difference between legs of primitive Pythagorean triangles sorted first on hypotenuse, then long leg.

The programs for A120682, there is no canonical definition to state claims against.
-/

/-! ## A120682.P3839433915789128441

`A046087(n+1)-A046086(n+1)`
-/

namespace A120682.P3839433915789128441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) - A046086 (n + 1)

end

end A120682.P3839433915789128441

/-! ## A120682.P18111450869132603667

`A118962(n+1)-A118961(n+1)`
-/

namespace A120682.P18111450869132603667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (n + 1) - A118961 (n + 1)

end

end A120682.P18111450869132603667

/-! ## A120682.P17092714340278819051

`2*A046087(n+1)-A120681(n+1)`
-/

namespace A120682.P17092714340278819051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046087 (n + 1) - A120681 (n + 1)

end

end A120682.P17092714340278819051

/-! ## A120682.P7461715183166799487

`A120681(n+1)-2*A046086(n+1)`
-/

namespace A120682.P7461715183166799487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120681 (n + 1) - 2 * A046086 (n + 1)

end

end A120682.P7461715183166799487

/-! ## A120682.P8428939932489083083

`A020882(n+1)-(A118961(n+1)+A046086(n+1))`
-/

namespace A120682.P8428939932489083083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - (A118961 (n + 1) + A046086 (n + 1))

end

end A120682.P8428939932489083083

/-! ## A120682.P15964297741228142766

`A046087(n+1)+A118962(n+1)-A020882(n+1)`
-/

namespace A120682.P15964297741228142766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) + (A118962 (n + 1) - A020882 (n + 1))

end

end A120682.P15964297741228142766

/-! ## A120682.P12405922286028164061

`A046087(n+1)-(A118961(n+1)+A087459(n+1))`
-/

namespace A120682.P12405922286028164061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) - (A118961 (n + 1) + A087459 (n + 1))

end

end A120682.P12405922286028164061

/-! ## A120682.P13812440207255022860

`A046087(n+1)-A120644(n+1)/A046087(n+1)`
-/

namespace A120682.P13812440207255022860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) : ℚ) - (A120644 (n + 1) : ℚ) / (A046087 (n + 1) : ℚ)

end

end A120682.P13812440207255022860

/-! ## A120682.P16132134043879302020

`A120644(n+1)/A046086(n+1)-A046086(n+1)`
-/

namespace A120682.P16132134043879302020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120644 (n + 1) : ℚ) / (A046086 (n + 1) : ℚ) - (A046086 (n + 1) : ℚ)

end

end A120682.P16132134043879302020

/-!
# A120684: Integers m such that the sequence defined by f(0)=m and f(n+1)=1+gpf(f(n)), with gpf(n) being the greatest prime factor of n (A006530), ends up in the repetitive cycle 3 -> 4 -> 3 -> ...

The programs for A120684, there is no canonical definition to state claims against.
-/

/-! ## A120684.P12979820059373508922

`lt[A140513(A307616(n+5)), A235200(n)]`
-/

namespace A120684.P12979820059373508922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 (A307616 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A120684.P12979820059373508922

/-!
# A120685: Integers m such that the sequence defined by f(0)=m and f(n+1)=1+gpf(f(n)), with gpf(n) being the greatest prime factor of n (A006530), ends up in the repetitive cycle 4 -> 3 -> 4 -> ...

The programs for A120685, there is no canonical definition to state claims against.
-/

/-! ## A120685.P8840890354626059110

`comp[A120684(n)-2]+2`
-/

namespace A120685.P8840890354626059110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120684 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A120685.P8840890354626059110

/-! ## A120685.P7389663117693059582

`lt[2-a(ceil(A006530(n+1)/2)-1), 2]+1` with `a(0)=2`
-/

namespace A120685.P7389663117693059582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (⌈(A006530 (n + 1) : ℚ) / 2⌉ - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120685.P7389663117693059582

/-! ## A120685.P12896093636204869423

`A029903(2*n+1)-A007095(n)`
-/

namespace A120685.P12896093636204869423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (2 * n + 1) - A007095 n

end

end A120685.P12896093636204869423

/-! ## A120685.P11119785863108286601

`A029903(2*n+1)-comp[A029875(n)]`
-/

namespace A120685.P11119785863108286601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029875 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (2 * n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A120685.P11119785863108286601

/-! ## A120685.P5910959113403692865

`A029903(2*n+1)-comp[A029901(3*(n+1))]`
-/

namespace A120685.P5910959113403692865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029901 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (2 * n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A120685.P5910959113403692865

/-!
# A120686: Integers m such that the sequence defined by f(0)=m and f(n+1)=2+gpf(f(n)), with gpf(n) being the greatest prime factor of n (A006530), ends up in the period 3 cycle 5 -> 7 -> 9 -> 5 -> ...

The programs for A120686, there is no canonical definition to state claims against.
-/

/-! ## A120686.P15136435504308409751

`or(A000005(A233535(n+1)), A004431(n+1))`
-/

namespace A120686.P15136435504308409751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A233535 (n + 1)).toNat) (A004431 (n + 1))

end

end A120686.P15136435504308409751

/-!
# A120687: Integers m such that the sequence defined by f(0)=m and f(n+1)=2+gpf(f(n)), with gpf(n) being the greatest prime factor of n (A006530), ends up in the period 3 cycle 7 -> 9 -> 5 -> 7 -> ...

The programs for A120687, there is no canonical definition to state claims against.
-/

/-! ## A120687.P570260567842555416

`eq[A001316(n), A309648(A227578(n))]`
-/

namespace A120687.P570260567842555416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309648 (A227578 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120687.P570260567842555416

/-!
# A120689: a(n) = 10*a(n-1) - 16*a(n-2), with a(0) = 0 and a(1) = 3.

The programs for A120689, the canonical program `A120689.P17888441581865915216` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120689 has offset 0).

The definition of A120689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-16*a(n-2)` (program `A120689.P17888441581865915216`, by `A120689.P17888441581865915216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A120689.P7833360353637867386

`2^(n-1)*(4^n-1)`
-/

namespace A120689.P7833360353637867386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((4 ^ n : ℤ) - 1 : ℚ)

end

end A120689.P7833360353637867386

namespace A120689

/-- `2^(n-1)*(4^n-1)` -/
def P7833360353637867386.Spec : Prop :=
  ∀ n, P7833360353637867386.a n = (A120689 n : ℚ)

end A120689

/-! ## A120689.P17888441581865915216

`10*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120689

/-- `10*a(n-1)-16*a(n-2)` -/
def P17888441581865915216.Spec : Prop :=
  ∀ n, P17888441581865915216.a n = A120689 n

theorem P17888441581865915216.correct : P17888441581865915216.Spec := by
  intro n
  simp only [A120689]

end A120689

/-! ## A120689.P10262551730115126154

`8^n-A081342(n)`
-/

namespace A120689.P10262551730115126154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - A081342 n

end

end A120689.P10262551730115126154

namespace A120689

/-- `8^n-A081342(n)` -/
def P10262551730115126154.Spec : Prop :=
  ∀ n, P10262551730115126154.a n = A120689 n

end A120689

/-! ## A120689.P9111264496289976536

`ogf(3x/(1-10x+16x^2))`
-/

namespace A120689.P9111264496289976536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -10, 16] n

end

end A120689.P9111264496289976536

namespace A120689

/-- `ogf(3x/(1-10x+16x^2))` -/
def P9111264496289976536.Spec : Prop :=
  ∀ n, P9111264496289976536.a n = A120689 n

end A120689

/-! ## A120689.P1805695387560810971

`lcm(1-4^n, ceil(2^(n-1)))`
-/

namespace A120689.P1805695387560810971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (4 ^ n : ℤ)) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A120689.P1805695387560810971

namespace A120689

/-- `lcm(1-4^n, ceil(2^(n-1)))` -/
def P1805695387560810971.Spec : Prop :=
  ∀ n, (P1805695387560810971.a n : ℤ) = A120689 n

end A120689

/-! ## A120689.P6836433241457016080

`record[(n%3)^n]-ceil(2^(n-1))`
-/

namespace A120689.P6836433241457016080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A120689.P6836433241457016080

namespace A120689

/-- `record[(n%3)^n]-ceil(2^(n-1))` -/
def P6836433241457016080.Spec : Prop :=
  ∀ n, P6836433241457016080.a n = A120689 n

end A120689

/-! ## A120689.P106009483407011169

`A092811(n)-Δ[floor(2^(n-1))]`
-/

namespace A120689.P106009483407011169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n - (f1 (n + 1) - f1 n)

end

end A120689.P106009483407011169

namespace A120689

/-- `A092811(n)-Δ[floor(2^(n-1))]` -/
def P106009483407011169.Spec : Prop :=
  ∀ n, P106009483407011169.a n = A120689 n

end A120689

/-! ## A120689.P2700883418712701393

`A006516(n)+2*A016152(n)`
-/

namespace A120689.P2700883418712701393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + 2 * A016152 n

end

end A120689.P2700883418712701393

namespace A120689

/-- `A006516(n)+2*A016152(n)` -/
def P2700883418712701393.Spec : Prop :=
  ∀ n, P2700883418712701393.a n = A120689 n

end A120689

/-! ## A120689.P15808743762420433420

`A081342(n)-A016116(2*n)`
-/

namespace A120689.P15808743762420433420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081342 n - A016116 (2 * n)

end

end A120689.P15808743762420433420

namespace A120689

/-- `A081342(n)-A016116(2*n)` -/
def P15808743762420433420.Spec : Prop :=
  ∀ n, P15808743762420433420.a n = A120689 n

end A120689

/-! ## A120689.P13816677745900874873

`A011782(3*n)-A011782(n)`
-/

namespace A120689.P13816677745900874873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (3 * n) - A011782 n

end

end A120689.P13816677745900874873

namespace A120689

/-- `A011782(3*n)-A011782(n)` -/
def P13816677745900874873.Spec : Prop :=
  ∀ n, P13816677745900874873.a n = A120689 n

end A120689

/-! ## A120689.P3778803078481443568

`A131577(3*n)-A131577(n)`
-/

namespace A120689.P3778803078481443568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (3 * n) - A131577 n

end

end A120689.P3778803078481443568

namespace A120689

/-- `A131577(3*n)-A131577(n)` -/
def P3778803078481443568.Spec : Prop :=
  ∀ n, P3778803078481443568.a n = A120689 n

end A120689

/-! ## A120689.P1481460488717162584

`A006516(n)+A006516(n)*A155559(n)`
-/

namespace A120689.P1481460488717162584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + A006516 n * A155559 n

end

end A120689.P1481460488717162584

namespace A120689

/-- `A006516(n)+A006516(n)*A155559(n)` -/
def P1481460488717162584.Spec : Prop :=
  ∀ n, P1481460488717162584.a n = A120689 n

end A120689

/-! ## A120689.P1514873827426181383

`A000079(n)*A007582(n)-A007582(n)`
-/

namespace A120689.P1514873827426181383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007582 n - A007582 n

end

end A120689.P1514873827426181383

namespace A120689

/-- `A000079(n)*A007582(n)-A007582(n)` -/
def P1514873827426181383.Spec : Prop :=
  ∀ n, P1514873827426181383.a n = A120689 n

end A120689

/-! ## A120689.P17241817302205551896

`A006516(n)*A052548(n)-A006516(n)`
-/

namespace A120689.P17241817302205551896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n * A052548 n - A006516 n

end

end A120689.P17241817302205551896

namespace A120689

/-- `A006516(n)*A052548(n)-A006516(n)` -/
def P17241817302205551896.Spec : Prop :=
  ∀ n, P17241817302205551896.a n = A120689 n

end A120689

/-! ## A120689.P5981091191884948046

`A081342(n)-(A001045(n+1)+A001045(n))`
-/

namespace A120689.P5981091191884948046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081342 n - (A001045 (n + 1) + A001045 n)

end

end A120689.P5981091191884948046

namespace A120689

/-- `A081342(n)-(A001045(n+1)+A001045(n))` -/
def P5981091191884948046.Spec : Prop :=
  ∀ n, P5981091191884948046.a n = A120689 n

end A120689

/-! ## A120689.P1646341676455941371

`A006516(n)+A006516(n)*A131577(n+1)`
-/

namespace A120689.P1646341676455941371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + A006516 n * A131577 (n + 1)

end

end A120689.P1646341676455941371

namespace A120689

/-- `A006516(n)+A006516(n)*A131577(n+1)` -/
def P1646341676455941371.Spec : Prop :=
  ∀ n, P1646341676455941371.a n = A120689 n

end A120689

/-! ## A120689.P14382273595312246869

`A007582(n)*A052548(n)-A032125(n+1)`
-/

namespace A120689.P14382273595312246869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n * A052548 n - A032125 (n + 1)

end

end A120689.P14382273595312246869

namespace A120689

/-- `A007582(n)*A052548(n)-A032125(n+1)` -/
def P14382273595312246869.Spec : Prop :=
  ∀ n, P14382273595312246869.a n = A120689 n

end A120689

/-! ## A120689.P14932994943785598970

`A007582(n)*A062709(n)-A028403(n+1)`
-/

namespace A120689.P14932994943785598970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n * A062709 n - A028403 (n + 1)

end

end A120689.P14932994943785598970

namespace A120689

/-- `A007582(n)*A062709(n)-A028403(n+1)` -/
def P14932994943785598970.Spec : Prop :=
  ∀ n, P14932994943785598970.a n = A120689 n

end A120689

/-! ## A120689.P9709085634883561612

`A081294(n)*A155559(n)-A034008(n+1)`
-/

namespace A120689.P9709085634883561612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n * A155559 n - A034008 (n + 1)

end

end A120689.P9709085634883561612

namespace A120689

/-- `A081294(n)*A155559(n)-A034008(n+1)` -/
def P9709085634883561612.Spec : Prop :=
  ∀ n, P9709085634883561612.a n = A120689 n

end A120689

/-! ## A120689.P2872876676623239728

`A000302(n)*A166444(n+1)-A166444(n+1)`
-/

namespace A120689.P2872876676623239728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A166444 (n + 1) - A166444 (n + 1)

end

end A120689.P2872876676623239728

namespace A120689

/-- `A000302(n)*A166444(n+1)-A166444(n+1)` -/
def P2872876676623239728.Spec : Prop :=
  ∀ n, P2872876676623239728.a n = A120689 n

end A120689

/-!
# A120690: Number of ordered finite sequences a_1 <= a_2 <= ... <= a_n of length n of positive integers less than or equal to n whose product is n!.

The programs for A120690, there is no canonical definition to state claims against.
-/

/-! ## A120690.P538277575048316270

`A328282(A339555(n))`
-/

namespace A120690.P538277575048316270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328282 (A339555 n).toNat

end

end A120690.P538277575048316270

/-! ## A120690.P6345133298479886423

`A300667(A224479(n)+2)`
-/

namespace A120690.P6345133298479886423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300667 (A224479 n + 2).toNat

end

end A120690.P6345133298479886423

/-! ## A120690.P16516739715946994015

`A300667(or(2, A224479(n)))`
-/

namespace A120690.P16516739715946994015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300667 (Int.lor 2 (A224479 n)).toNat

end

end A120690.P16516739715946994015

/-! ## A120690.P5244628972820108111

`A182418(∏{e}[A000138(n), #])`
-/

namespace A120690.P5244628972820108111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182418 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A120690.P5244628972820108111

/-! ## A120690.P12781889337401288802

`A291150(A185219(n)+A006924(n))`
-/

namespace A120690.P12781889337401288802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291150 (A185219 n + A006924 n).toNat

end

end A120690.P12781889337401288802

/-!
# A120691: First differences of coefficients in the continued fraction for e.

The programs for A120691, the canonical program `A120691.P15009752455225398063` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120691 has offset 0).

The definition of A120691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120691.P15009752455225398063

`Δ[A254667(n)-A260316(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A120691

/-- `Δ[A254667(n)-A260316(n)]` -/
def P15009752455225398063.Spec : Prop :=
  ∀ n, P15009752455225398063.a n = A120691 n

theorem P15009752455225398063.correct : P15009752455225398063.Spec := by
  intro n
  simp only [A120691]

end A120691

/-! ## A120691.P12149508957912688062

`Δ[A135997(n)+A028310(A008611(n))]`
-/

namespace A120691.P12149508957912688062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 n + A028310 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120691.P12149508957912688062

namespace A120691

/-- `Δ[A135997(n)+A028310(A008611(n))]` -/
def P12149508957912688062.Spec : Prop :=
  ∀ n, P12149508957912688062.a n = A120691 n

end A120691

/-! ## A120691.P845605688281505049

`Δ[A110090(A254667(n))/A003417(n)]`
-/

namespace A120691.P845605688281505049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110090 (A254667 n).toNat : ℚ) / (A003417 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120691.P845605688281505049

namespace A120691

/-- `Δ[A110090(A254667(n))/A003417(n)]` -/
def P845605688281505049.Spec : Prop :=
  ∀ n, P845605688281505049.a n = (A120691 n : ℚ)

end A120691

/-! ## A120691.P10817131537466573266

`Δ[(A005131(n+1)-1)^A005131(n)]`
-/

namespace A120691.P10817131537466573266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005131 (n + 1) - 1 : ℚ) ^ (A005131 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120691.P10817131537466573266

namespace A120691

/-- `Δ[(A005131(n+1)-1)^A005131(n)]` -/
def P10817131537466573266.Spec : Prop :=
  ∀ n, P10817131537466573266.a n = (A120691 n : ℚ)

end A120691

/-! ## A120691.P13191715481368430994

`Δ[gcd(A005843(n), A274616(4*n))]`
-/

namespace A120691.P13191715481368430994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A274616 (4 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A120691.P13191715481368430994

namespace A120691

/-- `Δ[gcd(A005843(n), A274616(4*n))]` -/
def P13191715481368430994.Spec : Prop :=
  ∀ n, P13191715481368430994.a n = A120691 n

end A120691

/-!
# A120692: Primitive elements of A065607.

The programs for A120692, there is no canonical definition to state claims against.
-/

/-! ## A120692.P16922027086032322214

`A120693(lt[A033950(n+1), A120746(n+1)])`
-/

namespace A120692.P16922027086032322214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120693 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A120692.P16922027086032322214

/-! ## A120692.P268556305945206447

`A120693(lt[A120736(2*(n+1)), A120746(n+1)])`
-/

namespace A120692.P268556305945206447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120693 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A120692.P268556305945206447

/-! ## A120692.P11309029558524199681

`A120693(A120768(n+1)^A046854(n))`
-/

namespace A120692.P11309029558524199681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120693 (SequenceMachineLib.roundAway ((A120768 (n + 1) : ℚ) ^ (A046854 n : ℤ))).toNat

end

end A120692.P11309029558524199681

/-!
# A120693: Elements of A065607 from primitive triples.

The programs for A120693, there is no canonical definition to state claims against.
-/

/-! ## A120693.P3136732790139958814

`lcm(A020882(n+1), A046087(n+1))%A225206(n+2)`
-/

namespace A120693.P3136732790139958814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A020882 (n + 1)) (A046087 (n + 1)) : ℤ) (A225206 (n + 2))

end

end A120693.P3136732790139958814

/-! ## A120693.P12432990891983014247

`A046087(n+1)*A132981(A187829(2*(n+1)))`
-/

namespace A120693.P12432990891983014247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) * A132981 (A187829 (2 * (n + 1))).toNat

end

end A120693.P12432990891983014247

/-!
# A120694: Sequence demonstrating the Pythagorean theorem.

The programs for A120694, the canonical program `A120694.P13195466289696489550` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120694 has offset 0).

The definition of A120694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120694.P9908747775159224009

`(1+49^n)/2`
-/

namespace A120694.P9908747775159224009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + 49 ^ n : ℚ) / 2

end

end A120694.P9908747775159224009

namespace A120694

/-- `(1+49^n)/2` -/
def P9908747775159224009.Spec : Prop :=
  ∀ n, P9908747775159224009.a n = (A120694 n : ℚ)

theorem P9908747775159224009.correct : P9908747775159224009.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A120694, Nat.add_sub_cancel, A120694.P9908747775159224009.a, A120694.P13195466289696489550.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A120694, Nat.add_sub_cancel, A120694.P9908747775159224009.a, A120694.P13195466289696489550.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A120694

/-! ## A120694.P13195466289696489550

`50*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A120694

/-- `50*a(n-1)-49*a(n-2)` -/
def P13195466289696489550.Spec : Prop :=
  ∀ n, P13195466289696489550.a n = A120694 n

theorem P13195466289696489550.correct : P13195466289696489550.Spec := by
  intro n
  simp only [A120694]

end A120694

/-! ## A120694.P12097311002664598294

`49*a(n-1)-24` with `a(0)=1`
-/

namespace A120694.P12097311002664598294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  49 * a (n - 1) - 24

end

end A120694.P12097311002664598294

namespace A120694

/-- `49*a(n-1)-24` -/
def P12097311002664598294.Spec : Prop :=
  ∀ n, P12097311002664598294.a n = A120694 n

end A120694

/-! ## A120694.P12630762169700475296

`A034494(2*n)`
-/

namespace A120694.P12630762169700475296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 (2 * n)

end

end A120694.P12630762169700475296

namespace A120694

/-- `A034494(2*n)` -/
def P12630762169700475296.Spec : Prop :=
  ∀ n, P12630762169700475296.a n = A120694 n

end A120694

/-! ## A120694.P6867140993126279410

`round(A087752(n)/2)`
-/

namespace A120694.P6867140993126279410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087752 n : ℚ) / 2)

end

end A120694.P6867140993126279410

namespace A120694

/-- `round(A087752(n)/2)` -/
def P6867140993126279410.Spec : Prop :=
  ∀ n, P6867140993126279410.a n = A120694 n

end A120694

/-! ## A120694.P18310813857630586015

`A120741(2*n)+1`
-/

namespace A120694.P18310813857630586015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (2 * n) + 1

end

end A120694.P18310813857630586015

namespace A120694

/-- `A120741(2*n)+1` -/
def P18310813857630586015.Spec : Prop :=
  ∀ n, P18310813857630586015.a n = A120694 n

end A120694

/-! ## A120694.P39649516701596362

`A297180(6*n+1)`
-/

namespace A120694.P39649516701596362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (6 * n + 1)

end

end A120694.P39649516701596362

namespace A120694

/-- `A297180(6*n+1)` -/
def P39649516701596362.Spec : Prop :=
  ∀ n, P39649516701596362.a n = A120694 n

end A120694

/-! ## A120694.P1459707965610361178

`A073218(n*Δ[n²])`
-/

namespace A120694.P1459707965610361178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073218 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A120694.P1459707965610361178

namespace A120694

/-- `A073218(n*Δ[n²])` -/
def P1459707965610361178.Spec : Prop :=
  ∀ n, P1459707965610361178.a n = A120694 n

end A120694

/-! ## A120694.P13972761935472786926

`A147724((n+1)*Δ[n²])`
-/

namespace A120694.P13972761935472786926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147724 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A120694.P13972761935472786926

namespace A120694

/-- `A147724((n+1)*Δ[n²])` -/
def P13972761935472786926.Spec : Prop :=
  ∀ n, P13972761935472786926.a n = A120694 n

end A120694

/-! ## A120694.P8082003933825818827

`ceil(cosh(2*n*log(7)))`
-/

namespace A120694.P8082003933825818827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((2 * n : ℝ) * Real.log (7 : ℝ))⌉

end

end A120694.P8082003933825818827

namespace A120694

/-- `ceil(cosh(2*n*log(7)))` -/
def P8082003933825818827.Spec : Prop :=
  ∀ n, P8082003933825818827.a n = A120694 n

end A120694

/-!
# A120696: Numbers whose factorial representation contains no zeros and each digit is at most one larger than the largest following digit.

The programs for A120696, there is no canonical definition to state claims against.
-/

/-! ## A120696.P2550643206134864370

`eq[n, A382313(n)]`
-/

namespace A120696.P2550643206134864370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120696.P2550643206134864370

/-! ## A120696.P15433502678273351367

`A071156(n)-A336107(A336096(n+1))²`
-/

namespace A120696.P15433502678273351367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 n - A336107 (A336096 (n + 1)).toNat ^ 2

end

end A120696.P15433502678273351367

/-!
# A120698: Restricted growth functions for set partitions.

The programs for A120698, there is no canonical definition to state claims against.
-/

/-! ## A120698.P7266824284598673172

`A370222(n+1)+A036459(A142089(n+1))`
-/

namespace A120698.P7266824284598673172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370222 (n + 1) + A036459 (A142089 (n + 1)).toNat

end

end A120698.P7266824284598673172

/-! ## A120698.P16369611391530152302

`A370222(n+1)+A055396(A103505(2*(n+1)))`
-/

namespace A120698.P16369611391530152302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370222 (n + 1) + A055396 (A103505 (2 * (n + 1))).toNat

end

end A120698.P16369611391530152302

/-! ## A120698.P12185418663721650631

`A256188(A370222(n+1)+A002061(2*(n+1)))`
-/

namespace A120698.P12185418663721650631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256188 (A370222 (n + 1) + A002061 (2 * (n + 1))).toNat

end

end A120698.P12185418663721650631

/-! ## A120698.P7231547618578471285

`A370222(n+1)+A000040(A287881(n+2))%2`
-/

namespace A120698.P7231547618578471285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370222 (n + 1) + Int.tmod (A000040 (A287881 (n + 2)).toNat) 2

end

end A120698.P7231547618578471285

/-! ## A120698.P12556851020219557279

`A370222(n+1)+A055642(A174026(2*n+1))`
-/

namespace A120698.P12556851020219557279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370222 (n + 1) + A055642 (A174026 (2 * n + 1)).toNat

end

end A120698.P12556851020219557279

/-!
# A120699: Lengths of set partitions.

The programs for A120699, there is no canonical definition to state claims against.
-/

/-! ## A120699.P3641549792337577620

`∑[char[A005001(n+1)]]`
-/

namespace A120699.P3641549792337577620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120699.P3641549792337577620

/-! ## A120699.P14140538707949291637

`∑[char[A005001(n)]]-1`
-/

namespace A120699.P14140538707949291637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A120699.P14140538707949291637

/-! ## A120699.P10678775395487484049

`(∑[char[∑[A164864(n)]]]+n+1)%(n+1)`
-/

namespace A120699.P10678775395487484049
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)) % (n + 1)

end

end A120699.P10678775395487484049

/-! ## A120699.P3585945463913657958

`A084556(A275804(n))`
-/

namespace A120699.P3585945463913657958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A275804 n).toNat

end

end A120699.P3585945463913657958

/-! ## A120699.P17850274579182374430

`A060130(A120695(n))`
-/

namespace A120699.P17850274579182374430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A120695 n).toNat

end

end A120699.P17850274579182374430

/-! ## A120699.P5293912566977512318

`A060130(A120696(n))`
-/

namespace A120699.P5293912566977512318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A120696 n).toNat

end

end A120699.P5293912566977512318

/-! ## A120699.P9975283424013395905

`A111972(A054519(A085787(n)))`
-/

namespace A120699.P9975283424013395905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A054519 (A085787 n).toNat).toNat

end

end A120699.P9975283424013395905

/-! ## A120699.P13455734395780113049

`A084556(A107686(n))`
-/

namespace A120699.P13455734395780113049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A107686 n).toNat

end

end A120699.P13455734395780113049

/-! ## A120699.P793474897337333713

`A084556(A095274(n))`
-/

namespace A120699.P793474897337333713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A095274 n).toNat

end

end A120699.P793474897337333713

/-! ## A120699.P7964096584332865878

`A258198(n*(n+2))`
-/

namespace A120699.P7964096584332865878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (n * (n + 2))

end

end A120699.P7964096584332865878

