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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A039600: Numbers whose base-12 representation has the same nonzero number of 0's and 8's.

The programs for A039600, there is no canonical definition to state claims against.
-/

/-! ## A039600.P660590797252499792

`A094728(3*A195818(3*n+4))`
-/

namespace A039600.P660590797252499792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (3 * A195818 (3 * n + 4)).toNat

end

end A039600.P660590797252499792

/-!
# A039609: Numbers whose base-12 representation has the same nonzero number of 1's and 7's.

The programs for A039609, there is no canonical definition to state claims against.
-/

/-! ## A039609.P8566527414458647373

`or(1, A039610(n+1)-A014963(A115188(n)))`
-/

namespace A039609.P8566527414458647373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A039610 (n + 1) - A014963 (A115188 n).toNat)

end

end A039609.P8566527414458647373

/-!
# A039611: Numbers whose base-12 representation has the same nonzero number of 1's and 9's.

The programs for A039611, there is no canonical definition to state claims against.
-/

/-! ## A039611.P11941065543031001825

`or(A014963(A115188(n)), A039610(n+1))`
-/

namespace A039611.P11941065543031001825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (A115188 n).toNat) (A039610 (n + 1))

end

end A039611.P11941065543031001825

/-!
# A039612: Numbers whose base-12 representation has the same nonzero number of 1's and 10's.

The programs for A039612, there is no canonical definition to state claims against.
-/

/-! ## A039612.P16836665662499878791

`A171397(A039455(n+1)^A261494(n))`
-/

namespace A039612.P16836665662499878791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.roundAway ((A039455 (n + 1) : ℚ) ^ (A261494 n : ℤ))).toNat

end

end A039612.P16836665662499878791

/-! ## A039612.P12365676263909601498

`A171397(A039455(n+1)^A306245(n))`
-/

namespace A039612.P12365676263909601498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.roundAway ((A039455 (n + 1) : ℚ) ^ (A306245 n : ℤ))).toNat

end

end A039612.P12365676263909601498

/-! ## A039612.P525427615654984906

`A171397(C(A039455(n+1), A261494(n)))`
-/

namespace A039612.P525427615654984906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Nat.choose (A039455 (n + 1)).toNat (A261494 n).toNat)

end

end A039612.P525427615654984906

/-! ## A039612.P12623515269041314966

`A171397(C(A039455(n+1), A306245(n)))`
-/

namespace A039612.P12623515269041314966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Nat.choose (A039455 (n + 1)).toNat (A306245 n).toNat)

end

end A039612.P12623515269041314966

/-!
# A039617: Solution to a "self-describing sequence" puzzle of Raphael Robinson.

The programs for A039617, there is no canonical definition to state claims against.
-/

/-! ## A039617.P16395082035882721424

`A014963(A271279(n))*A057979(n)`
-/

namespace A039617.P16395082035882721424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A271279 n).toNat * A057979 n

end

end A039617.P16395082035882721424

/-! ## A039617.P3530562157464636818

`A014963(∑[A033950(n+1)])*A057979(n)`
-/

namespace A039617.P3530562157464636818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A057979 n

end

end A039617.P3530562157464636818

/-! ## A039617.P5544825504027885730

`A014963(∑[A322577(n+1)])*A057979(n)`
-/

namespace A039617.P5544825504027885730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A057979 n

end

end A039617.P5544825504027885730

/-! ## A039617.P12359914591087047335

`A014963(A293628(n))*A057979(n)`
-/

namespace A039617.P12359914591087047335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A293628 n).toNat * A057979 n

end

end A039617.P12359914591087047335

/-!
# A039618: Number of 2n-step self-avoiding closed walks on first octant of 3-dimensional cubic lattice, passing through origin.

The programs for A039618, there is no canonical definition to state claims against.
-/

/-! ## A039618.P9706799943152379679

`A123108(C(A081913(n), 2))`
-/

namespace A039618.P9706799943152379679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Nat.choose (A081913 n).toNat 2)

end

end A039618.P9706799943152379679

/-! ## A039618.P15854737575948266035

`A123108(C(A092236(n), 2))`
-/

namespace A039618.P15854737575948266035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Nat.choose (A092236 n).toNat 2)

end

end A039618.P15854737575948266035

/-!
# A039619: Second column of Jabotinsky-triangle A038455 related to A006963.

The programs for A039619, there is no canonical definition to state claims against.
-/

/-! ## A039619.P3944688626618416009

`A038455(∑[n+1]+2)`
-/

namespace A039619.P3944688626618416009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A039619.P3944688626618416009

/-! ## A039619.P12516335378195432739

`record[A038455(A080036(n))]`
-/

namespace A039619.P12516335378195432739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039619.P12516335378195432739

/-! ## A039619.P12290845303019151929

`A376582(2*(n+1)²)`
-/

namespace A039619.P12290845303019151929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376582 (2 * (n + 1) ^ 2)

end

end A039619.P12290845303019151929

/-! ## A039619.P6980266474591844003

`A067176(2*(n+2)²)`
-/

namespace A039619.P6980266474591844003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (2 * (n + 2) ^ 2)

end

end A039619.P6980266474591844003

/-! ## A039619.P8956107686985157843

`A093905(∑[4*(n+1)])`
-/

namespace A039619.P8956107686985157843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039619.P8956107686985157843

/-!
# A039622: Number of n X n Young tableaux.

The programs for A039622, the canonical program `A039622.P10330240831742726338` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039622 has offset 0).

The definition of A039622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039622.P10330240831742726338

`A088020(n)/A107254(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039622

/-- `A088020(n)/A107254(n)` -/
def P10330240831742726338.Spec : Prop :=
  ∀ n, P10330240831742726338.a n = (A039622 n : ℚ)

end A039622

/-! ## A039622.P2443929728492377695

`A127223(n)/A107252(n)`
-/

namespace A039622.P2443929728492377695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127223 n : ℚ) / (A107252 n : ℚ)

end

end A039622.P2443929728492377695

namespace A039622

/-- `A127223(n)/A107252(n)` -/
def P2443929728492377695.Spec : Prop :=
  ∀ n, P2443929728492377695.a n = (A039622 n : ℚ)

end A039622

/-! ## A039622.P6079926445962969747

`A088020(n)*A000984(n)/A079478(n)`
-/

namespace A039622.P6079926445962969747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088020 n * A000984 n : ℚ) / (A079478 n : ℚ)

end

end A039622.P6079926445962969747

namespace A039622

/-- `A088020(n)*A000984(n)/A079478(n)` -/
def P6079926445962969747.Spec : Prop :=
  ∀ n, P6079926445962969747.a n = (A039622 n : ℚ)

end A039622

/-! ## A039622.P1822406319087259862

`A067700(n)/2`
-/

namespace A039622.P1822406319087259862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067700 n : ℚ) / 2

end

end A039622.P1822406319087259862

namespace A039622

/-- `A067700(n)/2` -/
def P1822406319087259862.Spec : Prop :=
  ∀ n, P1822406319087259862.a n = (A039622 n : ℚ)

end A039622

/-! ## A039622.P9639829825107015671

`A321716(∑[n]+n)`
-/

namespace A039622.P9639829825107015671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321716 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A039622.P9639829825107015671

namespace A039622

/-- `A321716(∑[n]+n)` -/
def P9639829825107015671.Spec : Prop :=
  ∀ n, P9639829825107015671.a n = A039622 n

end A039622

/-!
# A039623: a(n) = n^2*(n^2+3)/4.

The programs for A039623, the canonical program `A039623.P6910103237488683780` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039623 has offset 1).

The definition of A039623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*((n+1)²+3)/4` (program `A039623.P3824269542585809633`, by `A039623.P3824269542585809633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A039623.P16212853305380169956

`ogf((1+2x+2x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A039623.P16212853305380169956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, -5, 10, -10, 5, -1] n

end

end A039623.P16212853305380169956

namespace A039623

/-- `ogf((1+2x+2x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16212853305380169956.Spec : Prop :=
  ∀ n, P16212853305380169956.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P3824269542585809633

`(n+1)²*((n+1)²+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A039623.P3824269542585809633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * ((n + 1) ^ 2 + 3) : ℚ) / 4

end

end A039623.P3824269542585809633

namespace A039623

/-- `(n+1)²*((n+1)²+3)/4` -/
def P3824269542585809633.Spec : Prop :=
  ∀ n, P3824269542585809633.a n = (A039623 (n + 1) : ℚ)

theorem P3824269542585809633.correct : P3824269542585809633.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A039623, Nat.add_sub_cancel, A039623.P3824269542585809633.a, A039623.P6910103237488683780.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A039623, Nat.add_sub_cancel, A039623.P3824269542585809633.a, A039623.P6910103237488683780.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A039623

/-! ## A039623.P9485217178539698327

`C(n+1, 2)*C(n+2, 2)+(n+1)²`
-/

namespace A039623.P9485217178539698327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * Nat.choose (n + 2) 2 + (n + 1) ^ 2

end

end A039623.P9485217178539698327

namespace A039623

/-- `C(n+1, 2)*C(n+2, 2)+(n+1)²` -/
def P9485217178539698327.Spec : Prop :=
  ∀ n, (P9485217178539698327.a n : ℤ) = A039623 (n + 1)

end A039623

/-! ## A039623.P6910103237488683780

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=27, a(3)=76, a(4)=175`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A039623

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6910103237488683780.Spec : Prop :=
  ∀ n, P6910103237488683780.a n = A039623 (n + 1)

theorem P6910103237488683780.correct : P6910103237488683780.Spec := by
  intro n
  simp only [A039623, Nat.add_sub_cancel]

end A039623

/-! ## A039623.P621324304450935537

`A006011(n+1)+A000290(n+1)`
-/

namespace A039623.P621324304450935537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 (n + 1) + A000290 (n + 1)

end

end A039623.P621324304450935537

namespace A039623

/-- `A006011(n+1)+A000290(n+1)` -/
def P621324304450935537.Spec : Prop :=
  ∀ n, P621324304450935537.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P7611024714781806379

`A000217(n+1)²-(n+1)*A000217(n)`
-/

namespace A039623.P7611024714781806379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) ^ 2 - (n + 1 : ℤ) * A000217 n

end

end A039623.P7611024714781806379

namespace A039623

/-- `A000217(n+1)²-(n+1)*A000217(n)` -/
def P7611024714781806379.Spec : Prop :=
  ∀ n, P7611024714781806379.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P3253886664638906354

`∑[∑[round(3/acot(n)²)]]`
-/

namespace A039623.P3253886664638906354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039623.P3253886664638906354

namespace A039623

/-- `∑[∑[round(3/acot(n)²)]]` -/
def P3253886664638906354.Spec : Prop :=
  ∀ n, P3253886664638906354.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P10240687189435926487

`floor(C((n+1)²+2, 2)/2)`
-/

namespace A039623.P10240687189435926487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose ((n + 1) ^ 2 + 2) 2 : ℚ) / 2⌋

end

end A039623.P10240687189435926487

namespace A039623

/-- `floor(C((n+1)²+2, 2)/2)` -/
def P10240687189435926487.Spec : Prop :=
  ∀ n, P10240687189435926487.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P2360392980100695790

`(n+1)²+C((n+1)², 2)/2`
-/

namespace A039623.P2360392980100695790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) + (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / 2

end

end A039623.P2360392980100695790

namespace A039623

/-- `(n+1)²+C((n+1)², 2)/2` -/
def P2360392980100695790.Spec : Prop :=
  ∀ n, P2360392980100695790.a n = (A039623 (n + 1) : ℚ)

end A039623

/-! ## A039623.P12686176716233176292

`∑[∑[a(n-1)+3]]+∑[n]²` with `a(0)=1`
-/

namespace A039623.P12686176716233176292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

end

end A039623.P12686176716233176292

namespace A039623

/-- `∑[∑[a(n-1)+3]]+∑[n]²` -/
def P12686176716233176292.Spec : Prop :=
  ∀ n, (P12686176716233176292.a n : ℤ) = A039623 (n + 1)

end A039623

/-! ## A039623.P9311760293330417143

`∑[n]²-∑[∑[a(n-1)-3]]` with `a(0)=-1`
-/

namespace A039623.P9311760293330417143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A039623.P9311760293330417143

namespace A039623

/-- `∑[n]²-∑[∑[a(n-1)-3]]` -/
def P9311760293330417143.Spec : Prop :=
  ∀ n, P9311760293330417143.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P5961845477569983417

`∑[lcm(2*n+1, ∑[n])]+(n+1)²`
-/

namespace A039623.P5961845477569983417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A039623.P5961845477569983417

namespace A039623

/-- `∑[lcm(2*n+1, ∑[n])]+(n+1)²` -/
def P5961845477569983417.Spec : Prop :=
  ∀ n, (P5961845477569983417.a n : ℤ) = A039623 (n + 1)

end A039623

/-! ## A039623.P15063281110231014431

`∑[∑[A005918(n)]]`
-/

namespace A039623.P15063281110231014431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039623.P15063281110231014431

namespace A039623

/-- `∑[∑[A005918(n)]]` -/
def P15063281110231014431.Spec : Prop :=
  ∀ n, P15063281110231014431.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P13174676357451286622

`∑[A063488(n+1)]`
-/

namespace A039623.P13174676357451286622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039623.P13174676357451286622

namespace A039623

/-- `∑[A063488(n+1)]` -/
def P13174676357451286622.Spec : Prop :=
  ∀ n, P13174676357451286622.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P10253693055728522675

`∑[A081435(n)+n]`
-/

namespace A039623.P10253693055728522675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039623.P10253693055728522675

namespace A039623

/-- `∑[A081435(n)+n]` -/
def P10253693055728522675.Spec : Prop :=
  ∀ n, P10253693055728522675.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P3810015467623442395

`∑[A081436(n)-n²]`
-/

namespace A039623.P3810015467623442395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039623.P3810015467623442395

namespace A039623

/-- `∑[A081436(n)-n²]` -/
def P3810015467623442395.Spec : Prop :=
  ∀ n, P3810015467623442395.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P1974209041341834001

`∑[A147656(n)+n+1]`
-/

namespace A039623.P1974209041341834001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039623.P1974209041341834001

namespace A039623

/-- `∑[A147656(n)+n+1]` -/
def P1974209041341834001.Spec : Prop :=
  ∀ n, P1974209041341834001.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P12808320384800682758

`A132366(n)+∑[∑[n²]]`
-/

namespace A039623.P12808320384800682758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A039623.P12808320384800682758

namespace A039623

/-- `A132366(n)+∑[∑[n²]]` -/
def P12808320384800682758.Spec : Prop :=
  ∀ n, P12808320384800682758.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P12069847011758180927

`A014820(n)-∑[∑[n²]]`
-/

namespace A039623.P12069847011758180927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A039623.P12069847011758180927

namespace A039623

/-- `A014820(n)-∑[∑[n²]]` -/
def P12069847011758180927.Spec : Prop :=
  ∀ n, P12069847011758180927.a n = A039623 (n + 1)

end A039623

/-! ## A039623.P8095640647599195413

`∑[A059270(n)]+(n+1)²`
-/

namespace A039623.P8095640647599195413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A039623.P8095640647599195413

namespace A039623

/-- `∑[A059270(n)]+(n+1)²` -/
def P8095640647599195413.Spec : Prop :=
  ∀ n, P8095640647599195413.a n = A039623 (n + 1)

end A039623

/-!
# A039625: Number of planar simply-connected mono-q-polyhexes for q=5.

The programs for A039625, there is no canonical definition to state claims against.
-/

/-! ## A039625.P15929078906223812180

`A016116(n)+A002265(A039302(n))`
-/

namespace A039625.P15929078906223812180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A002265 (A039302 n).toNat

end

end A039625.P15929078906223812180

/-! ## A039625.P8997307276790043588

`A324595(n)-A218585(A321652(n))`
-/

namespace A039625.P8997307276790043588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324595 n - A218585 (A321652 n).toNat

end

end A039625.P8997307276790043588

/-! ## A039625.P7114273145851078847

`A002265(A039302(n))+∏[A040001(n)]`
-/

namespace A039625.P7114273145851078847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A039302 n).toNat + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A039625.P7114273145851078847

/-!
# A039626: Number of planar simply-connected mono-q-polyhexes for q=4.

The programs for A039626, there is no canonical definition to state claims against.
-/

/-! ## A039626.P532563865745729614

`A002126(floor(10^(n-1)))+ceil(sin(n)²)`
-/

namespace A039626.P532563865745729614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A039626.P532563865745729614

/-! ## A039626.P10475276411694527425

`A008676(A151116(n+1))`
-/

namespace A039626.P10475276411694527425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A151116 (n + 1)).toNat

end

end A039626.P10475276411694527425

/-!
# A039627: Number of planar simply-connected mono-q-polyhexes for q=3.

The programs for A039627, there is no canonical definition to state claims against.
-/

/-! ## A039627.P8106693065715837392

`A194920(A058540(n+1))`
-/

namespace A039627.P8106693065715837392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A058540 (n + 1)).toNat

end

end A039627.P8106693065715837392

/-! ## A039627.P8895582300925007976

`∑[A112689(A049166(n+1))]`
-/

namespace A039627.P8895582300925007976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A049166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039627.P8895582300925007976

/-! ## A039627.P14946213133015578846

`A110656(A321579(n)+A306822(n))`
-/

namespace A039627.P14946213133015578846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A321579 n + A306822 n).toNat

end

end A039627.P14946213133015578846

/-!
# A039628: Number of planar simply-connected mono-q-polyhexes for q=2.

The programs for A039628, there is no canonical definition to state claims against.
-/

/-! ## A039628.P5843718761462395032

`A387141(A005750(n+2))`
-/

namespace A039628.P5843718761462395032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A005750 (n + 2)).toNat

end

end A039628.P5843718761462395032

/-! ## A039628.P7064960315018294610

`A008621(A150735(n)+n)`
-/

namespace A039628.P7064960315018294610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150735 n + (n : ℤ)).toNat

end

end A039628.P7064960315018294610

/-! ## A039628.P13931147891567397097

`A002265(A150735(n)+n)+1`
-/

namespace A039628.P13931147891567397097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A150735 n + (n : ℤ)).toNat + 1

end

end A039628.P13931147891567397097

/-!
# A039629: Mono-3-catahelicenes.

The programs for A039629, there is no canonical definition to state claims against.
-/

/-! ## A039629.P5145109126332601926

`A039630(n+5)-A164089(A032174(n+1))`
-/

namespace A039629.P5145109126332601926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039630 (n + 5) - A164089 (A032174 (n + 1)).toNat

end

end A039629.P5145109126332601926

/-!
# A039630: Mono-3-catahelicenes.

The programs for A039630, there is no canonical definition to state claims against.
-/

/-! ## A039630.P13247440485267836354

`A164089(A032174(n+1))+A039629(n+5)`
-/

namespace A039630.P13247440485267836354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A032174 (n + 1)).toNat + A039629 (n + 5)

end

end A039630.P13247440485267836354

/-!
# A039632: Mono-2-catahelicenes.

The programs for A039632, there is no canonical definition to state claims against.
-/

/-! ## A039632.P5785045822907921124

`A008621(xor(n+1, A239989(n+1)))`
-/

namespace A039632.P5785045822907921124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.xor (n + 1 : ℤ) (A239989 (n + 1))).toNat

end

end A039632.P5785045822907921124

/-!
# A039633: Mono-2-catahelicenes.

The programs for A039633, there is no canonical definition to state claims against.
-/

/-! ## A039633.P396020910115208757

`Δ[A023443(A289130(3*a(n-1)))]` with `a(0)=0, a(1)=2`
-/

namespace A039633.P396020910115208757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A023443 (A289130 (3 * f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039633.P396020910115208757

/-!
# A039634: Fixed point of "n -> n/2 or (n-1)/2 until result is prime".

The programs for A039634, the canonical program `A039634.P12108157023021413697` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039634 has offset 1).

The definition of A039634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039634.P12108157023021413697

`floor((n+1)/gcd(A034008(n), A292599(n+1)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039634

/-- `floor((n+1)/gcd(A034008(n), A292599(n+1)))` -/
def P12108157023021413697.Spec : Prop :=
  ∀ n, P12108157023021413697.a n = A039634 (n + 1)

theorem P12108157023021413697.correct : P12108157023021413697.Spec := by
  intro n
  simp only [A039634, Nat.add_sub_cancel]

end A039634

/-! ## A039634.P13299313322148236246

`A078833(n+1)-A047814(A010894(n))`
-/

namespace A039634.P13299313322148236246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078833 (n + 1) - A047814 (A010894 (n + 21)).toNat

end

end A039634.P13299313322148236246

namespace A039634

/-- `A078833(n+1)-A047814(A010894(n))` -/
def P13299313322148236246.Spec : Prop :=
  ∀ n, P13299313322148236246.a n = A039634 (n + 1)

end A039634

/-! ## A039634.P7973035391476828575

`A078833(n+1)-A002324(A033014(n+1))`
-/

namespace A039634.P7973035391476828575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078833 (n + 1) - A002324 (A033014 (n + 1)).toNat

end

end A039634.P7973035391476828575

namespace A039634

/-- `A078833(n+1)-A002324(A033014(n+1))` -/
def P7973035391476828575.Spec : Prop :=
  ∀ n, P7973035391476828575.a n = A039634 (n + 1)

end A039634

/-! ## A039634.P3307928051046010469

`A078833(n+1)-and(A010894(n), A033437(n))`
-/

namespace A039634.P3307928051046010469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078833 (n + 1) - Int.land (A010894 (n + 21)) (A033437 n)

end

end A039634.P3307928051046010469

namespace A039634

/-- `A078833(n+1)-and(A010894(n), A033437(n))` -/
def P3307928051046010469.Spec : Prop :=
  ∀ n, P3307928051046010469.a n = A039634 (n + 1)

end A039634

/-! ## A039634.P10124428100962727302

`gcd(A078833(n+1), A339577(n+1))`
-/

namespace A039634.P10124428100962727302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078833 (n + 1)) (A339577 (n + 1))

end

end A039634.P10124428100962727302

namespace A039634

/-- `gcd(A078833(n+1), A339577(n+1))` -/
def P10124428100962727302.Spec : Prop :=
  ∀ n, (P10124428100962727302.a n : ℤ) = A039634 (n + 1)

end A039634

/-!
# A039635: Fixed point of "n -> n/2 or (n+1)/2 until result is prime".

The programs for A039635, the canonical program `A039635.P9559047743557119153` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039635 has offset 1).

The definition of A039635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039635.P9559047743557119153

`A006530(a(floor(n/2))*A118136(n))` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A039635

/-- `A006530(a(floor(n/2))*A118136(n))` -/
def P9559047743557119153.Spec : Prop :=
  ∀ n, P9559047743557119153.a n = A039635 (n + 1)

theorem P9559047743557119153.correct : P9559047743557119153.Spec := by
  intro n
  simp only [A039635, Nat.add_sub_cancel]

end A039635

/-! ## A039635.P6150429987079477869

`A006530(a(floor(n/2))*A014973(n+1))` with `a(0)=1`
-/

namespace A039635.P6150429987079477869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a ⌊(n : ℚ) / 2⌋.toNat * A014973 (n + 1)).toNat

end

end A039635.P6150429987079477869

namespace A039635

/-- `A006530(a(floor(n/2))*A014973(n+1))` -/
def P6150429987079477869.Spec : Prop :=
  ∀ n, P6150429987079477869.a n = A039635 (n + 1)

end A039635

/-! ## A039635.P8239335725560797420

`A006530(a(floor(n/2))*A089026(n+1))` with `a(0)=1`
-/

namespace A039635.P8239335725560797420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a ⌊(n : ℚ) / 2⌋.toNat * A089026 (n + 1)).toNat

end

end A039635.P8239335725560797420

namespace A039635

/-- `A006530(a(floor(n/2))*A089026(n+1))` -/
def P8239335725560797420.Spec : Prop :=
  ∀ n, P8239335725560797420.a n = A039635 (n + 1)

end A039635

/-! ## A039635.P8621531632415689748

`A006530(a(floor(n/2))*A135681(n+1))` with `a(0)=1`
-/

namespace A039635.P8621531632415689748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a ⌊(n : ℚ) / 2⌋.toNat * A135681 (n + 1)).toNat

end

end A039635.P8621531632415689748

namespace A039635

/-- `A006530(a(floor(n/2))*A135681(n+1))` -/
def P8621531632415689748.Spec : Prop :=
  ∀ n, P8621531632415689748.a n = A039635 (n + 1)

end A039635

/-! ## A039635.P7428775986132542495

`A111089(a(floor(n/2))²*A242947(n+1))` with `a(0)=1`
-/

namespace A039635.P7428775986132542495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111089 (a ⌊(n : ℚ) / 2⌋.toNat ^ 2 * A242947 (n + 1)).toNat

end

end A039635.P7428775986132542495

namespace A039635

/-- `A111089(a(floor(n/2))²*A242947(n+1))` -/
def P7428775986132542495.Spec : Prop :=
  ∀ n, P7428775986132542495.a n = A039635 (n + 1)

end A039635

/-!
# A039636: Number of steps to fixed point of "n -> n/2 or (n-1)/2 until result is prime".

The programs for A039636, the canonical program `A039636.P10786167837322776309` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039636 has offset 1).

The definition of A039636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039636.P10786167837322776309

`A136480(2*A292599(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039636

/-- `A136480(2*A292599(n+1))` -/
def P10786167837322776309.Spec : Prop :=
  ∀ n, P10786167837322776309.a n = A039636 (n + 1)

theorem P10786167837322776309.correct : P10786167837322776309.Spec := by
  intro n
  simp only [A039636, Nat.add_sub_cancel]

end A039636

/-! ## A039636.P7580264714928334052

`A001511(A292599(1+n)+A000007(n))`
-/

namespace A039636.P7580264714928334052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A292599 (1 + n) + A000007 n).toNat

end

end A039636.P7580264714928334052

namespace A039636

/-- `A001511(A292599(1+n)+A000007(n))` -/
def P7580264714928334052.Spec : Prop :=
  ∀ n, P7580264714928334052.a n = A039636 (n + 1)

end A039636

/-! ## A039636.P9501812890373476116

`A000523(n+1)+1-A000523(A039634(n+1))`
-/

namespace A039636.P9501812890373476116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (1 - A000523 (A039634 (n + 1)).toNat)

end

end A039636.P9501812890373476116

namespace A039636

/-- `A000523(n+1)+1-A000523(A039634(n+1))` -/
def P9501812890373476116.Spec : Prop :=
  ∀ n, P9501812890373476116.a n = A039636 (n + 1)

end A039636

/-! ## A039636.P1256523246208184536

`val(lcm(2, A292599(2*(n+1))), 2)`
-/

namespace A039636.P1256523246208184536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm 2 (A292599 (2 * (n + 1)))) 2

end

end A039636.P1256523246208184536

namespace A039636

/-- `val(lcm(2, A292599(2*(n+1))), 2)` -/
def P1256523246208184536.Spec : Prop :=
  ∀ n, (P1256523246208184536.a n : ℤ) = A039636 (n + 1)

end A039636

/-! ## A039636.P6004277511704192230

`A007814(A059456(2*n+1))+A007814(A292599(2*(n+1)))`
-/

namespace A039636.P6004277511704192230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A059456 (2 * n + 1)).toNat + A007814 (A292599 (2 * (n + 1))).toNat

end

end A039636.P6004277511704192230

namespace A039636

/-- `A007814(A059456(2*n+1))+A007814(A292599(2*(n+1)))` -/
def P6004277511704192230.Spec : Prop :=
  ∀ n, P6004277511704192230.a n = A039636 (n + 1)

end A039636

/-! ## A039636.P6192001357119164228

`A000005(gcd(A034008(n), A292599(n+1)))`
-/

namespace A039636.P6192001357119164228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A034008 n) (A292599 (n + 1)))

end

end A039636.P6192001357119164228

namespace A039636

/-- `A000005(gcd(A034008(n), A292599(n+1)))` -/
def P6192001357119164228.Spec : Prop :=
  ∀ n, P6192001357119164228.a n = A039636 (n + 1)

end A039636

/-! ## A039636.P5753836346573823942

`A007814(A292599(2*(n+1))+A292599(2*(n+1))²)`
-/

namespace A039636.P5753836346573823942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A292599 (2 * (n + 1)) + A292599 (2 * (n + 1)) ^ 2).toNat

end

end A039636.P5753836346573823942

namespace A039636

/-- `A007814(A292599(2*(n+1))+A292599(2*(n+1))²)` -/
def P5753836346573823942.Spec : Prop :=
  ∀ n, P5753836346573823942.a n = A039636 (n + 1)

end A039636

/-!
# A039637: Number of steps to fixed point of "n -> n/2 or (n+1)/2 until result is prime".

The programs for A039637, the canonical program `A039637.P13487055312355376623` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039637 has offset 1).

The definition of A039637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039637.P18048177399365364373

`a(floor(n/2))*A005171(n+1)+1` with `a(0)=1`
-/

namespace A039637.P18048177399365364373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A005171 (n + 1) + 1

end

end A039637.P18048177399365364373

namespace A039637

/-- `a(floor(n/2))*A005171(n+1)+1` -/
def P18048177399365364373.Spec : Prop :=
  ∀ n, P18048177399365364373.a n = A039637 (n + 1)

end A039637

/-! ## A039637.P7115829367972510040

`A066247(n+1)*a(floor(n/2))+1` with `a(0)=1`
-/

namespace A039637.P7115829367972510040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066247 (n + 1) * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A039637.P7115829367972510040

namespace A039637

/-- `A066247(n+1)*a(floor(n/2))+1` -/
def P7115829367972510040.Spec : Prop :=
  ∀ n, P7115829367972510040.a n = A039637 (n + 1)

end A039637

/-! ## A039637.P13487055312355376623

`a(floor(n/2))%A067558(n+1)+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039637

/-- `a(floor(n/2))%A067558(n+1)+1` -/
def P13487055312355376623.Spec : Prop :=
  ∀ n, P13487055312355376623.a n = A039637 (n + 1)

theorem P13487055312355376623.correct : P13487055312355376623.Spec := by
  intro n
  simp only [A039637, Nat.add_sub_cancel]

end A039637

/-! ## A039637.P503894705395654424

`1--a(floor(n/2))%A032742(n+1)` with `a(0)=1`
-/

namespace A039637.P503894705395654424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (-a ⌊(n : ℚ) / 2⌋.toNat) (A032742 (n + 1))

end

end A039637.P503894705395654424

namespace A039637

/-- `1--a(floor(n/2))%A032742(n+1)` -/
def P503894705395654424.Spec : Prop :=
  ∀ n, P503894705395654424.a n = A039637 (n + 1)

end A039637

/-! ## A039637.P5170019296094138335

`a(A004526(n))*A066247(n+1)+1` with `a(0)=1`
-/

namespace A039637.P5170019296094138335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A066247 (n + 1) + 1

end

end A039637.P5170019296094138335

namespace A039637

/-- `a(A004526(n))*A066247(n+1)+1` -/
def P5170019296094138335.Spec : Prop :=
  ∀ n, P5170019296094138335.a n = A039637 (n + 1)

end A039637

/-! ## A039637.P15451858077238563317

`A331300(a(floor(n/2))%A024994(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A039637.P15451858077238563317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A331300 (Int.tmod (a ⌊(n : ℚ) / 2⌋.toNat) (A024994 (n + 1))).toNat

end

end A039637.P15451858077238563317

namespace A039637

/-- `A331300(a(floor(n/2))%A024994(n+1))` -/
def P15451858077238563317.Spec : Prop :=
  ∀ n, P15451858077238563317.a n = A039637 (n + 1)

end A039637

/-!
# A039638: Fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)-1.

The programs for A039638, the canonical program `A039638.P11187219247693054999` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039638 has offset 1).

The definition of A039638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039638.P11187219247693054999

`A039634(A006093(1+n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039638

/-- `A039634(A006093(1+n))` -/
def P11187219247693054999.Spec : Prop :=
  ∀ n, P11187219247693054999.a n = A039638 (n + 1)

theorem P11187219247693054999.correct : P11187219247693054999.Spec := by
  intro n
  simp only [A039638, Nat.add_sub_cancel]

end A039638

/-! ## A039638.P1325093689105748227

`A039634(eq[1, A013632(n)])`
-/

namespace A039638.P1325093689105748227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039638.P1325093689105748227

namespace A039638

/-- `A039634(eq[1, A013632(n)])` -/
def P1325093689105748227.Spec : Prop :=
  ∀ n, P1325093689105748227.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P5163009924626959005

`A039634(lt[A013632(n), 2])`
-/

namespace A039638.P5163009924626959005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A039638.P5163009924626959005

namespace A039638

/-- `A039634(lt[A013632(n), 2])` -/
def P5163009924626959005.Spec : Prop :=
  ∀ n, P5163009924626959005.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P5430760988306432186

`A039634(record[A000010(n+1)])`
-/

namespace A039638.P5430760988306432186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039638.P5430760988306432186

namespace A039638

/-- `A039634(record[A000010(n+1)])` -/
def P5430760988306432186.Spec : Prop :=
  ∀ n, P5430760988306432186.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P9289739520365419481

`A039634(record[A033879(n+1)])`
-/

namespace A039638.P9289739520365419481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039638.P9289739520365419481

namespace A039638

/-- `A039634(record[A033879(n+1)])` -/
def P9289739520365419481.Spec : Prop :=
  ∀ n, P9289739520365419481.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P212428856923373432

`A039634(A000040(n+1)-1)`
-/

namespace A039638.P212428856923373432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A000040 (n + 1) - 1).toNat

end

end A039638.P212428856923373432

namespace A039638

/-- `A039634(A000040(n+1)-1)` -/
def P212428856923373432.Spec : Prop :=
  ∀ n, P212428856923373432.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P15940099584104862262

`A039634(A008578(n+2)-1)`
-/

namespace A039638.P15940099584104862262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A008578 (n + 2) - 1).toNat

end

end A039638.P15940099584104862262

namespace A039638

/-- `A039634(A008578(n+2)-1)` -/
def P15940099584104862262.Spec : Prop :=
  ∀ n, P15940099584104862262.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P15265278920871258233

`A039634(A008864(n+1)-2)`
-/

namespace A039638.P15265278920871258233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A008864 (n + 1) - 2).toNat

end

end A039638.P15265278920871258233

namespace A039638

/-- `A039634(A008864(n+1)-2)` -/
def P15265278920871258233.Spec : Prop :=
  ∀ n, P15265278920871258233.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P10277500560052981060

`A039634(A028815(n+1)-2)`
-/

namespace A039638.P10277500560052981060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A028815 (n + 1) - 2).toNat

end

end A039638.P10277500560052981060

namespace A039638

/-- `A039634(A028815(n+1)-2)` -/
def P10277500560052981060.Spec : Prop :=
  ∀ n, P10277500560052981060.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P4756984393010682770

`A039634(A299763(n+2)-2)`
-/

namespace A039638.P4756984393010682770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A299763 (n + 2) - 2).toNat

end

end A039638.P4756984393010682770

namespace A039638

/-- `A039634(A299763(n+2)-2)` -/
def P4756984393010682770.Spec : Prop :=
  ∀ n, P4756984393010682770.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P7404859292855127035

`A039634(lt[0, A010051(n+1)])`
-/

namespace A039638.P7404859292855127035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A039638.P7404859292855127035

namespace A039638

/-- `A039634(lt[0, A010051(n+1)])` -/
def P7404859292855127035.Spec : Prop :=
  ∀ n, P7404859292855127035.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P3324404743620078767

`A039634(eq[1, A010051(n+1)])`
-/

namespace A039638.P3324404743620078767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039638.P3324404743620078767

namespace A039638

/-- `A039634(eq[1, A010051(n+1)])` -/
def P3324404743620078767.Spec : Prop :=
  ∀ n, P3324404743620078767.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P12325815328445344935

`A039634(lt[A039651(n+1), 1])`
-/

namespace A039638.P12325815328445344935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A039638.P12325815328445344935

namespace A039638

/-- `A039634(lt[A039651(n+1), 1])` -/
def P12325815328445344935.Spec : Prop :=
  ∀ n, P12325815328445344935.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P17205256216440677160

`A039634(lt[1, A089026(n+1)])`
-/

namespace A039638.P17205256216440677160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A039638.P17205256216440677160

namespace A039638

/-- `A039634(lt[1, A089026(n+1)])` -/
def P17205256216440677160.Spec : Prop :=
  ∀ n, P17205256216440677160.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P395977783249423913

`A039634(eq[n, A000010(n+1)])`
-/

namespace A039638.P395977783249423913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039638.P395977783249423913

namespace A039638

/-- `A039634(eq[n, A000010(n+1)])` -/
def P395977783249423913.Spec : Prop :=
  ∀ n, P395977783249423913.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P12453485694497301963

`A039634(record[A014963(n+2)-1])`
-/

namespace A039638.P12453485694497301963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039638.P12453485694497301963

namespace A039638

/-- `A039634(record[A014963(n+2)-1])` -/
def P12453485694497301963.Spec : Prop :=
  ∀ n, P12453485694497301963.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P13371039477485602738

`A039634(record[A020639(n+2)-1])`
-/

namespace A039638.P13371039477485602738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039638.P13371039477485602738

namespace A039638

/-- `A039634(record[A020639(n+2)-1])` -/
def P13371039477485602738.Spec : Prop :=
  ∀ n, P13371039477485602738.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P8814385353706220501

`A039634(record[A039634(n+2)-1])`
-/

namespace A039638.P8814385353706220501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039638.P8814385353706220501

namespace A039638

/-- `A039634(record[A039634(n+2)-1])` -/
def P8814385353706220501.Spec : Prop :=
  ∀ n, P8814385353706220501.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P11304313002787967163

`A039634(A089241(n+1)/2-2)`
-/

namespace A039638.P11304313002787967163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2 - 2)).toNat

end

end A039638.P11304313002787967163

namespace A039638

/-- `A039634(A089241(n+1)/2-2)` -/
def P11304313002787967163.Spec : Prop :=
  ∀ n, P11304313002787967163.a n = A039638 (n + 1)

end A039638

/-! ## A039638.P5001595254496208649

`A039634(lt[1, A049084(n+1)+1])`
-/

namespace A039638.P5001595254496208649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A039638.P5001595254496208649

namespace A039638

/-- `A039634(lt[1, A049084(n+1)+1])` -/
def P5001595254496208649.Spec : Prop :=
  ∀ n, P5001595254496208649.a n = A039638 (n + 1)

end A039638

/-!
# A039639: Fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)+1.

The programs for A039639, the canonical program `A039639.P407717812387908810` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039639 has offset 1).

The definition of A039639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039639.P407717812387908810

`A039634(A008864(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039639

/-- `A039634(A008864(n+1))` -/
def P407717812387908810.Spec : Prop :=
  ∀ n, P407717812387908810.a n = A039639 (n + 1)

theorem P407717812387908810.correct : P407717812387908810.Spec := by
  intro n
  simp only [A039639, Nat.add_sub_cancel]

end A039639

/-! ## A039639.P713660960314747509

`A039634(A028815(n+1))`
-/

namespace A039639.P713660960314747509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A028815 (n + 1)).toNat

end

end A039639.P713660960314747509

namespace A039639

/-- `A039634(A028815(n+1))` -/
def P713660960314747509.Spec : Prop :=
  ∀ n, P713660960314747509.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P5432596054587535093

`A039634(A306591(n+1))`
-/

namespace A039639.P5432596054587535093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A306591 (n + 1)).toNat

end

end A039639.P5432596054587535093

namespace A039639

/-- `A039634(A306591(n+1))` -/
def P5432596054587535093.Spec : Prop :=
  ∀ n, P5432596054587535093.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P17707500270358520059

`A039634(A299763(n+2))`
-/

namespace A039639.P17707500270358520059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A299763 (n + 2)).toNat

end

end A039639.P17707500270358520059

namespace A039639

/-- `A039634(A299763(n+2))` -/
def P17707500270358520059.Spec : Prop :=
  ∀ n, P17707500270358520059.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P6427546933729210200

`A039634(∑[runs[A007918(n)]])`
-/

namespace A039639.P6427546933729210200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039639.P6427546933729210200

namespace A039639

/-- `A039634(∑[runs[A007918(n)]])` -/
def P6427546933729210200.Spec : Prop :=
  ∀ n, P6427546933729210200.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P15385799513658354988

`A039634(A000040(n+1)+1)`
-/

namespace A039639.P15385799513658354988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A000040 (n + 1) + 1).toNat

end

end A039639.P15385799513658354988

namespace A039639

/-- `A039634(A000040(n+1)+1)` -/
def P15385799513658354988.Spec : Prop :=
  ∀ n, P15385799513658354988.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P18077843463812951783

`A039634(A006093(n+1)+2)`
-/

namespace A039639.P18077843463812951783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A006093 (n + 1) + 2).toNat

end

end A039639.P18077843463812951783

namespace A039639

/-- `A039634(A006093(n+1)+2)` -/
def P18077843463812951783.Spec : Prop :=
  ∀ n, P18077843463812951783.a n = A039639 (n + 1)

theorem P18077843463812951783.correct : P18077843463812951783.Spec := by
  intro n
  simp only [A039639, Nat.add_sub_cancel, A039639.P18077843463812951783.a, A039639.P407717812387908810.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A039634, A039634.P12108157023021413697.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034008, A034008.P3865077651518371232.a, A292599, A292599.P8177924625487192254.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039639

/-! ## A039639.P10939835295374052669

`A039634(A008578(n+2)+1)`
-/

namespace A039639.P10939835295374052669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A008578 (n + 2) + 1).toNat

end

end A039639.P10939835295374052669

namespace A039639

/-- `A039634(A008578(n+2)+1)` -/
def P10939835295374052669.Spec : Prop :=
  ∀ n, P10939835295374052669.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P14713974056030956819

`A039634(A089241(n+1)/2)`
-/

namespace A039639.P14713974056030956819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat

end

end A039639.P14713974056030956819

namespace A039639

/-- `A039634(A089241(n+1)/2)` -/
def P14713974056030956819.Spec : Prop :=
  ∀ n, P14713974056030956819.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P6617199969866183665

`A039634(record[A000010(n+1)+2])`
-/

namespace A039639.P6617199969866183665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039639.P6617199969866183665

namespace A039639

/-- `A039634(record[A000010(n+1)+2])` -/
def P6617199969866183665.Spec : Prop :=
  ∀ n, P6617199969866183665.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P7492173063518243598

`A039634(record[A014963(n+2)+1])`
-/

namespace A039639.P7492173063518243598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039639.P7492173063518243598

namespace A039639

/-- `A039634(record[A014963(n+2)+1])` -/
def P7492173063518243598.Spec : Prop :=
  ∀ n, P7492173063518243598.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P16579023332912881475

`A039634(record[A020639(n+2)+1])`
-/

namespace A039639.P16579023332912881475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039639.P16579023332912881475

namespace A039639

/-- `A039634(record[A020639(n+2)+1])` -/
def P16579023332912881475.Spec : Prop :=
  ∀ n, P16579023332912881475.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P11055139876924205444

`A039634(record[A033879(n+1)+2])`
-/

namespace A039639.P11055139876924205444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039639.P11055139876924205444

namespace A039639

/-- `A039634(record[A033879(n+1)+2])` -/
def P11055139876924205444.Spec : Prop :=
  ∀ n, P11055139876924205444.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P11705334125975303806

`A039634(record[A039634(n+2)+1])`
-/

namespace A039639.P11705334125975303806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039639.P11705334125975303806

namespace A039639

/-- `A039634(record[A039634(n+2)+1])` -/
def P11705334125975303806.Spec : Prop :=
  ∀ n, P11705334125975303806.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P10105949916027961718

`A039634(eq[1, A010051(n+1)]+2)`
-/

namespace A039639.P10105949916027961718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A039639.P10105949916027961718

namespace A039639

/-- `A039634(eq[1, A010051(n+1)]+2)` -/
def P10105949916027961718.Spec : Prop :=
  ∀ n, P10105949916027961718.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P16013539528415103907

`A039634(lt[A039651(n+1), 1]+2)`
-/

namespace A039639.P16013539528415103907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A039639.P16013539528415103907

namespace A039639

/-- `A039634(lt[A039651(n+1), 1]+2)` -/
def P16013539528415103907.Spec : Prop :=
  ∀ n, P16013539528415103907.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P12247796165072532368

`A039634(lt[1, A089026(n+1)]+2)`
-/

namespace A039639.P12247796165072532368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A039639.P12247796165072532368

namespace A039639

/-- `A039634(lt[1, A089026(n+1)]+2)` -/
def P12247796165072532368.Spec : Prop :=
  ∀ n, P12247796165072532368.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P10859792785415042565

`A039634(eq[n, A000010(n+1)]+2)`
-/

namespace A039639.P10859792785415042565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A039639.P10859792785415042565

namespace A039639

/-- `A039634(eq[n, A000010(n+1)]+2)` -/
def P10859792785415042565.Spec : Prop :=
  ∀ n, P10859792785415042565.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P12486588059214136620

`A039634(lt[A045763(n+1), A049084(n+1)]+2)`
-/

namespace A039639.P12486588059214136620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A039639.P12486588059214136620

namespace A039639

/-- `A039634(lt[A045763(n+1), A049084(n+1)]+2)` -/
def P12486588059214136620.Spec : Prop :=
  ∀ n, P12486588059214136620.a n = A039639 (n + 1)

end A039639

/-! ## A039639.P4656420117376613811

`A039634(A089241(n+1))`
-/

namespace A039639.P4656420117376613811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A089241 (n + 1)).toNat

end

end A039639.P4656420117376613811

namespace A039639

/-- `A039634(A089241(n+1))` -/
def P4656420117376613811.Spec : Prop :=
  ∀ n, P4656420117376613811.a n = A039639 (n + 1)

end A039639

/-!
# A039640: Fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)-1.

The programs for A039640, the canonical program `A039640.P14279125705308195420` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039640 has offset 1).

The definition of A039640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039640.P14279125705308195420

`A039635(A006093(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A039640

/-- `A039635(A006093(n+1))` -/
def P14279125705308195420.Spec : Prop :=
  ∀ n, P14279125705308195420.a n = A039640 (n + 1)

theorem P14279125705308195420.correct : P14279125705308195420.Spec := by
  intro n
  simp only [A039640, Nat.add_sub_cancel]

end A039640

/-! ## A039640.P13546718538485536172

`A039635(record[Δ[A005728(n)]])`
-/

namespace A039640.P13546718538485536172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039640.P13546718538485536172

namespace A039640

/-- `A039635(record[Δ[A005728(n)]])` -/
def P13546718538485536172.Spec : Prop :=
  ∀ n, P13546718538485536172.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P7873622473042292133

`A039635(record[A000010(1+n)])`
-/

namespace A039640.P7873622473042292133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039640.P7873622473042292133

namespace A039640

/-- `A039635(record[A000010(1+n)])` -/
def P7873622473042292133.Spec : Prop :=
  ∀ n, P7873622473042292133.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P5911988561111549481

`A039635(A040976(n+1)+1)`
-/

namespace A039640.P5911988561111549481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A040976 (n + 1) + 1).toNat

end

end A039640.P5911988561111549481

namespace A039640

/-- `A039635(A040976(n+1)+1)` -/
def P5911988561111549481.Spec : Prop :=
  ∀ n, P5911988561111549481.a n = A039640 (n + 1)

theorem P5911988561111549481.correct : P5911988561111549481.Spec := by
  intro n
  simp only [A039640, Nat.add_sub_cancel, A039640.P5911988561111549481.a, A039640.P14279125705308195420.a, A006093, A006093.P2906174024863549003.a, A039635, A039635.P9559047743557119153.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006530, A006530.P13372528560459906635.a, A118136, A118136.P4093465269379081240.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039640

/-! ## A039640.P13044816845084667430

`A039635(A000040(n+1)-1)`
-/

namespace A039640.P13044816845084667430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A000040 (n + 1) - 1).toNat

end

end A039640.P13044816845084667430

namespace A039640

/-- `A039635(A000040(n+1)-1)` -/
def P13044816845084667430.Spec : Prop :=
  ∀ n, P13044816845084667430.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P5184965557334666045

`A039635(A008578(n+2)-1)`
-/

namespace A039640.P5184965557334666045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A008578 (n + 2) - 1).toNat

end

end A039640.P5184965557334666045

namespace A039640

/-- `A039635(A008578(n+2)-1)` -/
def P5184965557334666045.Spec : Prop :=
  ∀ n, P5184965557334666045.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P5706163653901093326

`A039635(A008864(n+1)-2)`
-/

namespace A039640.P5706163653901093326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A008864 (n + 1) - 2).toNat

end

end A039640.P5706163653901093326

namespace A039640

/-- `A039635(A008864(n+1)-2)` -/
def P5706163653901093326.Spec : Prop :=
  ∀ n, P5706163653901093326.a n = A039640 (n + 1)

theorem P5706163653901093326.correct : P5706163653901093326.Spec := by
  intro n
  simp only [A039640, Nat.add_sub_cancel, A039640.P5706163653901093326.a, A039640.P14279125705308195420.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A039635, A039635.P9559047743557119153.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006530, A006530.P13372528560459906635.a, A118136, A118136.P4093465269379081240.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039640

/-! ## A039640.P3343433600496192680

`A039635(A028815(n+1)-2)`
-/

namespace A039640.P3343433600496192680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A028815 (n + 1) - 2).toNat

end

end A039640.P3343433600496192680

namespace A039640

/-- `A039635(A028815(n+1)-2)` -/
def P3343433600496192680.Spec : Prop :=
  ∀ n, P3343433600496192680.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P12630355173646044325

`A039635(A299763(n+2)-2)`
-/

namespace A039640.P12630355173646044325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A299763 (n + 2) - 2).toNat

end

end A039640.P12630355173646044325

namespace A039640

/-- `A039635(A299763(n+2)-2)` -/
def P12630355173646044325.Spec : Prop :=
  ∀ n, P12630355173646044325.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P5223702711872612244

`A039635(eq[1, A001222(n+1)])`
-/

namespace A039640.P5223702711872612244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039640.P5223702711872612244

namespace A039640

/-- `A039635(eq[1, A001222(n+1)])` -/
def P5223702711872612244.Spec : Prop :=
  ∀ n, P5223702711872612244.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P2429472392206543975

`A039635(eq[1, A054024(n+1)])`
-/

namespace A039640.P2429472392206543975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039640.P2429472392206543975

namespace A039640

/-- `A039635(eq[1, A054024(n+1)])` -/
def P2429472392206543975.Spec : Prop :=
  ∀ n, P2429472392206543975.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P10071568725917337446

`A039635(lt[A039651(n+1), 1])`
-/

namespace A039640.P10071568725917337446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A039640.P10071568725917337446

namespace A039640

/-- `A039635(lt[A039651(n+1), 1])` -/
def P10071568725917337446.Spec : Prop :=
  ∀ n, P10071568725917337446.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P11351018273088665235

`A039635(record[Δ[A015614(n+1)]])`
-/

namespace A039640.P11351018273088665235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039640.P11351018273088665235

namespace A039640

/-- `A039635(record[Δ[A015614(n+1)]])` -/
def P11351018273088665235.Spec : Prop :=
  ∀ n, P11351018273088665235.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P1980553691515253142

`A039635(record[A014963(n+2)-1])`
-/

namespace A039640.P1980553691515253142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039640.P1980553691515253142

namespace A039640

/-- `A039635(record[A014963(n+2)-1])` -/
def P1980553691515253142.Spec : Prop :=
  ∀ n, P1980553691515253142.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P7401011838821456862

`A039635(record[A039635(n+2)-1])`
-/

namespace A039640.P7401011838821456862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039640.P7401011838821456862

namespace A039640

/-- `A039635(record[A039635(n+2)-1])` -/
def P7401011838821456862.Spec : Prop :=
  ∀ n, P7401011838821456862.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P18213178252777845061

`A039635(A089241(n+1)/2-2)`
-/

namespace A039640.P18213178252777845061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2 - 2)).toNat

end

end A039640.P18213178252777845061

namespace A039640

/-- `A039635(A089241(n+1)/2-2)` -/
def P18213178252777845061.Spec : Prop :=
  ∀ n, P18213178252777845061.a n = A039640 (n + 1)

end A039640

/-! ## A039640.P10246417176299376120

`A039635(eq[A026741(n), A046073(n+1)])`
-/

namespace A039640.P10246417176299376120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A039640.P10246417176299376120

namespace A039640

/-- `A039635(eq[A026741(n), A046073(n+1)])` -/
def P10246417176299376120.Spec : Prop :=
  ∀ n, P10246417176299376120.a n = A039640 (n + 1)

end A039640

/-!
# A039641: Fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)+1.

The programs for A039641, the canonical program `A039641.P1508988821012990375` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039641 has offset 1).

The definition of A039641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039641.P1508988821012990375

`A039635(A008864(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A039641

/-- `A039635(A008864(1+n))` -/
def P1508988821012990375.Spec : Prop :=
  ∀ n, P1508988821012990375.a n = A039641 (n + 1)

theorem P1508988821012990375.correct : P1508988821012990375.Spec := by
  intro n
  simp only [A039641, Nat.add_sub_cancel]

end A039641

/-! ## A039641.P4601433765198085359

`A039635(A028815(n+1))`
-/

namespace A039641.P4601433765198085359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A028815 (n + 1)).toNat

end

end A039641.P4601433765198085359

namespace A039641

/-- `A039635(A028815(n+1))` -/
def P4601433765198085359.Spec : Prop :=
  ∀ n, P4601433765198085359.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P9335052562141575917

`A039635(A306591(n+1))`
-/

namespace A039641.P9335052562141575917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A306591 (n + 1)).toNat

end

end A039641.P9335052562141575917

namespace A039641

/-- `A039635(A306591(n+1))` -/
def P9335052562141575917.Spec : Prop :=
  ∀ n, P9335052562141575917.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P15748240711932666904

`A039635(A299763(n+2))`
-/

namespace A039641.P15748240711932666904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A299763 (n + 2)).toNat

end

end A039641.P15748240711932666904

namespace A039641

/-- `A039635(A299763(n+2))` -/
def P15748240711932666904.Spec : Prop :=
  ∀ n, P15748240711932666904.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P2099397148345087241

`A039635(A000040(n+1)+1)`
-/

namespace A039641.P2099397148345087241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A000040 (n + 1) + 1).toNat

end

end A039641.P2099397148345087241

namespace A039641

/-- `A039635(A000040(n+1)+1)` -/
def P2099397148345087241.Spec : Prop :=
  ∀ n, P2099397148345087241.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P15553333418055404269

`A039635(A006093(n+1)+2)`
-/

namespace A039641.P15553333418055404269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A006093 (n + 1) + 2).toNat

end

end A039641.P15553333418055404269

namespace A039641

/-- `A039635(A006093(n+1)+2)` -/
def P15553333418055404269.Spec : Prop :=
  ∀ n, P15553333418055404269.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P13551740549278566668

`A039635(A008578(n+2)+1)`
-/

namespace A039641.P13551740549278566668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A008578 (n + 2) + 1).toNat

end

end A039641.P13551740549278566668

namespace A039641

/-- `A039635(A008578(n+2)+1)` -/
def P13551740549278566668.Spec : Prop :=
  ∀ n, P13551740549278566668.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P14465092059224553598

`A039635(A040976(n+1)+3)`
-/

namespace A039641.P14465092059224553598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A040976 (n + 1) + 3).toNat

end

end A039641.P14465092059224553598

namespace A039641

/-- `A039635(A040976(n+1)+3)` -/
def P14465092059224553598.Spec : Prop :=
  ∀ n, P14465092059224553598.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P9841775630146191011

`A039635(A089241(n+1)/2)`
-/

namespace A039641.P9841775630146191011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat

end

end A039641.P9841775630146191011

namespace A039641

/-- `A039635(A089241(n+1)/2)` -/
def P9841775630146191011.Spec : Prop :=
  ∀ n, P9841775630146191011.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P13873854655537374951

`A039635(record[Δ[A005728(n)]+2])`
-/

namespace A039641.P13873854655537374951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039641.P13873854655537374951

namespace A039641

/-- `A039635(record[Δ[A005728(n)]+2])` -/
def P13873854655537374951.Spec : Prop :=
  ∀ n, P13873854655537374951.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P9841221884939630835

`A039635(record[A000010(n+1)+2])`
-/

namespace A039641.P9841221884939630835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039641.P9841221884939630835

namespace A039641

/-- `A039635(record[A000010(n+1)+2])` -/
def P9841221884939630835.Spec : Prop :=
  ∀ n, P9841221884939630835.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P2947627636281516890

`A039635(record[A014963(n+2)+1])`
-/

namespace A039641.P2947627636281516890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039641.P2947627636281516890

namespace A039641

/-- `A039635(record[A014963(n+2)+1])` -/
def P2947627636281516890.Spec : Prop :=
  ∀ n, P2947627636281516890.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P100988209657799143

`A039635(record[A039635(n+2)+1])`
-/

namespace A039641.P100988209657799143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039641.P100988209657799143

namespace A039641

/-- `A039635(record[A039635(n+2)+1])` -/
def P100988209657799143.Spec : Prop :=
  ∀ n, P100988209657799143.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P6877461336948636251

`A039635(eq[1, A001222(n+1)]+2)`
-/

namespace A039641.P6877461336948636251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A039641.P6877461336948636251

namespace A039641

/-- `A039635(eq[1, A001222(n+1)]+2)` -/
def P6877461336948636251.Spec : Prop :=
  ∀ n, P6877461336948636251.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P11835921903682607154

`A039635(eq[1, A054024(n+1)]+2)`
-/

namespace A039641.P11835921903682607154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A039641.P11835921903682607154

namespace A039641

/-- `A039635(eq[1, A054024(n+1)]+2)` -/
def P11835921903682607154.Spec : Prop :=
  ∀ n, P11835921903682607154.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P11813156677584365258

`A039635(lt[A039651(n+1), 1]+2)`
-/

namespace A039641.P11813156677584365258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A039641.P11813156677584365258

namespace A039641

/-- `A039635(lt[A039651(n+1), 1]+2)` -/
def P11813156677584365258.Spec : Prop :=
  ∀ n, P11813156677584365258.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P5654629051943670799

`A039635(eq[A026741(n), A046073(n+1)]+2)`
-/

namespace A039641.P5654629051943670799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A039641.P5654629051943670799

namespace A039641

/-- `A039635(eq[A026741(n), A046073(n+1)]+2)` -/
def P5654629051943670799.Spec : Prop :=
  ∀ n, P5654629051943670799.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P12965940828276128893

`A039635(A089241(n+1))`
-/

namespace A039641.P12965940828276128893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A089241 (n + 1)).toNat

end

end A039641.P12965940828276128893

namespace A039641

/-- `A039635(A089241(n+1))` -/
def P12965940828276128893.Spec : Prop :=
  ∀ n, P12965940828276128893.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P16818476747343465397

`A039635(A240068(n+1)/2)`
-/

namespace A039641.P16818476747343465397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (SequenceMachineLib.roundAway ((A240068 (n + 1) : ℚ) / 2)).toNat

end

end A039641.P16818476747343465397

namespace A039641

/-- `A039635(A240068(n+1)/2)` -/
def P16818476747343465397.Spec : Prop :=
  ∀ n, P16818476747343465397.a n = A039641 (n + 1)

end A039641

/-! ## A039641.P6997895759009827551

`A039635(A240068(n+1))`
-/

namespace A039641.P6997895759009827551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A240068 (n + 1)).toNat

end

end A039641.P6997895759009827551

namespace A039641

/-- `A039635(A240068(n+1))` -/
def P6997895759009827551.Spec : Prop :=
  ∀ n, P6997895759009827551.a n = A039641 (n + 1)

end A039641

/-!
# A039642: Number of steps to fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)-1.

The programs for A039642, the canonical program `A039642.P6274246223323144857` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039642 has offset 1).

The definition of A039642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039642.P6274246223323144857

`A039636(A006093(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039642

/-- `A039636(A006093(n+1))` -/
def P6274246223323144857.Spec : Prop :=
  ∀ n, P6274246223323144857.a n = A039642 (n + 1)

theorem P6274246223323144857.correct : P6274246223323144857.Spec := by
  intro n
  simp only [A039642, Nat.add_sub_cancel]

end A039642

/-! ## A039642.P6940727348452667401

`A039636(A039915(n+1))`
-/

namespace A039642.P6940727348452667401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A039915 (n + 1)).toNat

end

end A039642.P6940727348452667401

namespace A039642

/-- `A039636(A039915(n+1))` -/
def P6940727348452667401.Spec : Prop :=
  ∀ n, P6940727348452667401.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P15203783603608401221

`A039636(A156037(n+1))`
-/

namespace A039642.P15203783603608401221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A156037 (n + 1)).toNat

end

end A039642.P15203783603608401221

namespace A039642

/-- `A039636(A156037(n+1))` -/
def P15203783603608401221.Spec : Prop :=
  ∀ n, P15203783603608401221.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P10155936392470953349

`A039636(A068499(n+2))`
-/

namespace A039642.P10155936392470953349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A068499 (n + 2)).toNat

end

end A039642.P10155936392470953349

namespace A039642

/-- `A039636(A068499(n+2))` -/
def P10155936392470953349.Spec : Prop :=
  ∀ n, P10155936392470953349.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P13106602744122698369

`A039636(record[A000010(n+1)])`
-/

namespace A039642.P13106602744122698369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039642.P13106602744122698369

namespace A039642

/-- `A039636(record[A000010(n+1)])` -/
def P13106602744122698369.Spec : Prop :=
  ∀ n, P13106602744122698369.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P1050838742346671183

`A039636(A000040(n+1)-1)`
-/

namespace A039642.P1050838742346671183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A000040 (n + 1) - 1).toNat

end

end A039642.P1050838742346671183

namespace A039642

/-- `A039636(A000040(n+1)-1)` -/
def P1050838742346671183.Spec : Prop :=
  ∀ n, P1050838742346671183.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P2040540459592811723

`A039636(A008578(n+2)-1)`
-/

namespace A039642.P2040540459592811723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A008578 (n + 2) - 1).toNat

end

end A039642.P2040540459592811723

namespace A039642

/-- `A039636(A008578(n+2)-1)` -/
def P2040540459592811723.Spec : Prop :=
  ∀ n, P2040540459592811723.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P2478547839949901746

`A039636(A008864(n+1)-2)`
-/

namespace A039642.P2478547839949901746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A008864 (n + 1) - 2).toNat

end

end A039642.P2478547839949901746

namespace A039642

/-- `A039636(A008864(n+1)-2)` -/
def P2478547839949901746.Spec : Prop :=
  ∀ n, P2478547839949901746.a n = A039642 (n + 1)

theorem P2478547839949901746.correct : P2478547839949901746.Spec := by
  intro n
  simp only [A039642, Nat.add_sub_cancel, A039642.P2478547839949901746.a, A039642.P6274246223323144857.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A039636, A039636.P10786167837322776309.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A136480, A136480.P7576671635047894259.f1, A136480.P7576671635047894259.a, A292599, A292599.P8177924625487192254.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039642

/-! ## A039642.P7073485551093679760

`A039636(A028815(n+1)-2)`
-/

namespace A039642.P7073485551093679760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A028815 (n + 1) - 2).toNat

end

end A039642.P7073485551093679760

namespace A039642

/-- `A039636(A028815(n+1)-2)` -/
def P7073485551093679760.Spec : Prop :=
  ∀ n, P7073485551093679760.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P12496518972039452108

`A039636(A299763(n+2)-2)`
-/

namespace A039642.P12496518972039452108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A299763 (n + 2) - 2).toNat

end

end A039642.P12496518972039452108

namespace A039642

/-- `A039636(A299763(n+2)-2)` -/
def P12496518972039452108.Spec : Prop :=
  ∀ n, P12496518972039452108.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P15264848260712179438

`A039636(lt[A039651(n+1), 1])`
-/

namespace A039642.P15264848260712179438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A039642.P15264848260712179438

namespace A039642

/-- `A039636(lt[A039651(n+1), 1])` -/
def P15264848260712179438.Spec : Prop :=
  ∀ n, P15264848260712179438.a n = A039642 (n + 1)

end A039642

/-! ## A039642.P11806097075488692952

`A039636(eq[2, A039636(2*(n+1))])`
-/

namespace A039642.P11806097075488692952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039642.P11806097075488692952

namespace A039642

/-- `A039636(eq[2, A039636(2*(n+1))])` -/
def P11806097075488692952.Spec : Prop :=
  ∀ n, P11806097075488692952.a n = A039642 (n + 1)

end A039642

/-!
# A039643: Number of steps to fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)+1.

The programs for A039643, the canonical program `A039643.P17875181402164929459` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039643 has offset 1).

The definition of A039643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039643.P17875181402164929459

`A039636(A008864(1+n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039643

/-- `A039636(A008864(1+n))` -/
def P17875181402164929459.Spec : Prop :=
  ∀ n, P17875181402164929459.a n = A039643 (n + 1)

theorem P17875181402164929459.correct : P17875181402164929459.Spec := by
  intro n
  simp only [A039643, Nat.add_sub_cancel]

end A039643

/-! ## A039643.P17102942325513720612

`A039636(A028815(n+1))`
-/

namespace A039643.P17102942325513720612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A028815 (n + 1)).toNat

end

end A039643.P17102942325513720612

namespace A039643

/-- `A039636(A028815(n+1))` -/
def P17102942325513720612.Spec : Prop :=
  ∀ n, P17102942325513720612.a n = A039643 (n + 1)

end A039643

/-! ## A039643.P16897110098872338945

`A039636(A055670(n+1))`
-/

namespace A039643.P16897110098872338945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A055670 (n + 1)).toNat

end

end A039643.P16897110098872338945

namespace A039643

/-- `A039636(A055670(n+1))` -/
def P16897110098872338945.Spec : Prop :=
  ∀ n, P16897110098872338945.a n = A039643 (n + 1)

end A039643

/-! ## A039643.P7628303865210929538

`A039636(A299763(n+2))`
-/

namespace A039643.P7628303865210929538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A299763 (n + 2)).toNat

end

end A039643.P7628303865210929538

namespace A039643

/-- `A039636(A299763(n+2))` -/
def P7628303865210929538.Spec : Prop :=
  ∀ n, P7628303865210929538.a n = A039643 (n + 1)

end A039643

/-! ## A039643.P7948061874714372106

`A039636(A000040(n+1)+1)`
-/

namespace A039643.P7948061874714372106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A000040 (n + 1) + 1).toNat

end

end A039643.P7948061874714372106

namespace A039643

/-- `A039636(A000040(n+1)+1)` -/
def P7948061874714372106.Spec : Prop :=
  ∀ n, P7948061874714372106.a n = A039643 (n + 1)

end A039643

/-! ## A039643.P10615666069959510158

`A039636(A006093(n+1)+2)`
-/

namespace A039643.P10615666069959510158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A006093 (n + 1) + 2).toNat

end

end A039643.P10615666069959510158

namespace A039643

/-- `A039636(A006093(n+1)+2)` -/
def P10615666069959510158.Spec : Prop :=
  ∀ n, P10615666069959510158.a n = A039643 (n + 1)

end A039643

/-! ## A039643.P1908926219143889928

`A039636(A008578(n+2)+1)`
-/

namespace A039643.P1908926219143889928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A008578 (n + 2) + 1).toNat

end

end A039643.P1908926219143889928

namespace A039643

/-- `A039636(A008578(n+2)+1)` -/
def P1908926219143889928.Spec : Prop :=
  ∀ n, P1908926219143889928.a n = A039643 (n + 1)

end A039643

/-! ## A039643.P6740442731519891319

`A039636(A039915(n+1)+2)`
-/

namespace A039643.P6740442731519891319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A039915 (n + 1) + 2).toNat

end

end A039643.P6740442731519891319

namespace A039643

/-- `A039636(A039915(n+1)+2)` -/
def P6740442731519891319.Spec : Prop :=
  ∀ n, P6740442731519891319.a n = A039643 (n + 1)

end A039643

/-! ## A039643.P8491015338160835598

`A039636(record[A000010(n+1)+2])`
-/

namespace A039643.P8491015338160835598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039643.P8491015338160835598

namespace A039643

/-- `A039636(record[A000010(n+1)+2])` -/
def P8491015338160835598.Spec : Prop :=
  ∀ n, P8491015338160835598.a n = A039643 (n + 1)

end A039643

/-! ## A039643.P608985748703325839

`A039636(lt[A039651(n+1), 1]+2)`
-/

namespace A039643.P608985748703325839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A039643.P608985748703325839

namespace A039643

/-- `A039636(lt[A039651(n+1), 1]+2)` -/
def P608985748703325839.Spec : Prop :=
  ∀ n, P608985748703325839.a n = A039643 (n + 1)

end A039643

/-!
# A039644: Number of steps to fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)-1.

The programs for A039644, the canonical program `A039644.P570764307026093276` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039644 has offset 1).

The definition of A039644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039644.P570764307026093276

`A039637(A006093(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039644

/-- `A039637(A006093(n+1))` -/
def P570764307026093276.Spec : Prop :=
  ∀ n, P570764307026093276.a n = A039644 (n + 1)

theorem P570764307026093276.correct : P570764307026093276.Spec := by
  intro n
  simp only [A039644, Nat.add_sub_cancel]

end A039644

/-! ## A039644.P6214427766154931125

`A039637(A039915(n+1))`
-/

namespace A039644.P6214427766154931125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A039915 (n + 1)).toNat

end

end A039644.P6214427766154931125

namespace A039644

/-- `A039637(A039915(n+1))` -/
def P6214427766154931125.Spec : Prop :=
  ∀ n, P6214427766154931125.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P18287511248106956487

`A039637(A156037(1+n))`
-/

namespace A039644.P18287511248106956487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A156037 (1 + n)).toNat

end

end A039644.P18287511248106956487

namespace A039644

/-- `A039637(A156037(1+n))` -/
def P18287511248106956487.Spec : Prop :=
  ∀ n, P18287511248106956487.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P13837099604789892264

`A039637(A068499(n+2))`
-/

namespace A039644.P13837099604789892264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A068499 (n + 2)).toNat

end

end A039644.P13837099604789892264

namespace A039644

/-- `A039637(A068499(n+2))` -/
def P13837099604789892264.Spec : Prop :=
  ∀ n, P13837099604789892264.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P12729522170280150165

`A039637(record[A000010(n+1)])`
-/

namespace A039644.P12729522170280150165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039644.P12729522170280150165

namespace A039644

/-- `A039637(record[A000010(n+1)])` -/
def P12729522170280150165.Spec : Prop :=
  ∀ n, P12729522170280150165.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P5808602018350157160

`A039637(A000040(n+1)-1)`
-/

namespace A039644.P5808602018350157160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A000040 (n + 1) - 1).toNat

end

end A039644.P5808602018350157160

namespace A039644

/-- `A039637(A000040(n+1)-1)` -/
def P5808602018350157160.Spec : Prop :=
  ∀ n, P5808602018350157160.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P14077851861402005871

`A039637(A008578(n+2)-1)`
-/

namespace A039644.P14077851861402005871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A008578 (n + 2) - 1).toNat

end

end A039644.P14077851861402005871

namespace A039644

/-- `A039637(A008578(n+2)-1)` -/
def P14077851861402005871.Spec : Prop :=
  ∀ n, P14077851861402005871.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P17866210114293616694

`A039637(A008864(n+1)-2)`
-/

namespace A039644.P17866210114293616694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A008864 (n + 1) - 2).toNat

end

end A039644.P17866210114293616694

namespace A039644

/-- `A039637(A008864(n+1)-2)` -/
def P17866210114293616694.Spec : Prop :=
  ∀ n, P17866210114293616694.a n = A039644 (n + 1)

theorem P17866210114293616694.correct : P17866210114293616694.Spec := by
  intro n
  simp only [A039644, Nat.add_sub_cancel, A039644.P17866210114293616694.a, A039644.P570764307026093276.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A039637, A039637.P13487055312355376623.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067558, A067558.P16712056113848255202.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039644

/-! ## A039644.P8869838775960486220

`A039637(A028815(n+1)-2)`
-/

namespace A039644.P8869838775960486220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A028815 (n + 1) - 2).toNat

end

end A039644.P8869838775960486220

namespace A039644

/-- `A039637(A028815(n+1)-2)` -/
def P8869838775960486220.Spec : Prop :=
  ∀ n, P8869838775960486220.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P8236178166808529128

`A039637(A299763(n+2)-2)`
-/

namespace A039644.P8236178166808529128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A299763 (n + 2) - 2).toNat

end

end A039644.P8236178166808529128

namespace A039644

/-- `A039637(A299763(n+2)-2)` -/
def P8236178166808529128.Spec : Prop :=
  ∀ n, P8236178166808529128.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P15399104435414873922

`A039637(lt[A039651(n+1), 1])`
-/

namespace A039644.P15399104435414873922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A039644.P15399104435414873922

namespace A039644

/-- `A039637(lt[A039651(n+1), 1])` -/
def P15399104435414873922.Spec : Prop :=
  ∀ n, P15399104435414873922.a n = A039644 (n + 1)

end A039644

/-! ## A039644.P17307250583217399408

`A039637(eq[2, A039637(2*(n+1))])`
-/

namespace A039644.P17307250583217399408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039644.P17307250583217399408

namespace A039644

/-- `A039637(eq[2, A039637(2*(n+1))])` -/
def P17307250583217399408.Spec : Prop :=
  ∀ n, P17307250583217399408.a n = A039644 (n + 1)

end A039644

/-!
# A039645: Number of steps to fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)+1.

The programs for A039645, the canonical program `A039645.P11813040183617158880` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039645 has offset 1).

The definition of A039645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039645.P11813040183617158880

`A039637(A008864(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039645

/-- `A039637(A008864(n+1))` -/
def P11813040183617158880.Spec : Prop :=
  ∀ n, P11813040183617158880.a n = A039645 (n + 1)

theorem P11813040183617158880.correct : P11813040183617158880.Spec := by
  intro n
  simp only [A039645, Nat.add_sub_cancel]

end A039645

/-! ## A039645.P16432133366774516078

`A039637(A028815(n+1))`
-/

namespace A039645.P16432133366774516078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A028815 (n + 1)).toNat

end

end A039645.P16432133366774516078

namespace A039645

/-- `A039637(A028815(n+1))` -/
def P16432133366774516078.Spec : Prop :=
  ∀ n, P16432133366774516078.a n = A039645 (n + 1)

end A039645

/-! ## A039645.P2197888679168129093

`A039637(A055670(n+1))`
-/

namespace A039645.P2197888679168129093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A055670 (n + 1)).toNat

end

end A039645.P2197888679168129093

namespace A039645

/-- `A039637(A055670(n+1))` -/
def P2197888679168129093.Spec : Prop :=
  ∀ n, P2197888679168129093.a n = A039645 (n + 1)

end A039645

/-! ## A039645.P2725039474569026497

`A039637(A299763(n+2))`
-/

namespace A039645.P2725039474569026497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A299763 (n + 2)).toNat

end

end A039645.P2725039474569026497

namespace A039645

/-- `A039637(A299763(n+2))` -/
def P2725039474569026497.Spec : Prop :=
  ∀ n, P2725039474569026497.a n = A039645 (n + 1)

end A039645

/-! ## A039645.P12485589525866530430

`A039637(A000040(n+1)+1)`
-/

namespace A039645.P12485589525866530430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A000040 (n + 1) + 1).toNat

end

end A039645.P12485589525866530430

namespace A039645

/-- `A039637(A000040(n+1)+1)` -/
def P12485589525866530430.Spec : Prop :=
  ∀ n, P12485589525866530430.a n = A039645 (n + 1)

end A039645

/-! ## A039645.P2015621823992973820

`A039637(A006093(n+1)+2)`
-/

namespace A039645.P2015621823992973820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A006093 (n + 1) + 2).toNat

end

end A039645.P2015621823992973820

namespace A039645

/-- `A039637(A006093(n+1)+2)` -/
def P2015621823992973820.Spec : Prop :=
  ∀ n, P2015621823992973820.a n = A039645 (n + 1)

theorem P2015621823992973820.correct : P2015621823992973820.Spec := by
  intro n
  simp only [A039645, Nat.add_sub_cancel, A039645.P2015621823992973820.a, A039645.P11813040183617158880.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A039637, A039637.P13487055312355376623.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067558, A067558.P16712056113848255202.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039645

/-! ## A039645.P9933981251392374279

`A039637(A008578(n+2)+1)`
-/

namespace A039645.P9933981251392374279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A008578 (n + 2) + 1).toNat

end

end A039645.P9933981251392374279

namespace A039645

/-- `A039637(A008578(n+2)+1)` -/
def P9933981251392374279.Spec : Prop :=
  ∀ n, P9933981251392374279.a n = A039645 (n + 1)

end A039645

/-! ## A039645.P2139662008257333976

`A039637(A039915(n+1)+2)`
-/

namespace A039645.P2139662008257333976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A039915 (n + 1) + 2).toNat

end

end A039645.P2139662008257333976

namespace A039645

/-- `A039637(A039915(n+1)+2)` -/
def P2139662008257333976.Spec : Prop :=
  ∀ n, P2139662008257333976.a n = A039645 (n + 1)

end A039645

/-! ## A039645.P2282252268277274402

`A039637(A052147(n+1)-1)`
-/

namespace A039645.P2282252268277274402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A052147 (n + 1) - 1).toNat

end

end A039645.P2282252268277274402

namespace A039645

/-- `A039637(A052147(n+1)-1)` -/
def P2282252268277274402.Spec : Prop :=
  ∀ n, P2282252268277274402.a n = A039645 (n + 1)

theorem P2282252268277274402.correct : P2282252268277274402.Spec := by
  intro n
  simp only [A039645, Nat.add_sub_cancel, A039645.P2282252268277274402.a, A039645.P11813040183617158880.a, A008864, A008864.P9177617808325052279.a, A039637, A039637.P13487055312355376623.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067558, A067558.P16712056113848255202.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039645

/-! ## A039645.P15495116780197016735

`A039637(record[A000010(n+1)+2])`
-/

namespace A039645.P15495116780197016735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039645.P15495116780197016735

namespace A039645

/-- `A039637(record[A000010(n+1)+2])` -/
def P15495116780197016735.Spec : Prop :=
  ∀ n, P15495116780197016735.a n = A039645 (n + 1)

end A039645

/-! ## A039645.P13863501419201805022

`A039637(lt[A039651(n+1), 1]+2)`
-/

namespace A039645.P13863501419201805022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A039645.P13863501419201805022

namespace A039645

/-- `A039637(lt[A039651(n+1), 1]+2)` -/
def P13863501419201805022.Spec : Prop :=
  ∀ n, P13863501419201805022.a n = A039645 (n + 1)

end A039645

/-!
# A039646: Third column of Jabotinsky-triangle A038455 related to A006963.

The programs for A039646, there is no canonical definition to state claims against.
-/

/-! ## A039646.P6466950358844596433

`A038455(∑[n+2]+4)`
-/

namespace A039646.P6466950358844596433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A039646.P6466950358844596433

/-! ## A039646.P3983223537186007275

`abs(A038455(A167614(n+1))-n)+n`
-/

namespace A039646.P3983223537186007275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038455 (A167614 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A039646.P3983223537186007275

/-! ## A039646.P9171717571758351758

`A038455(A167614(n+1))^A178334(n)`
-/

namespace A039646.P9171717571758351758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038455 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A039646.P9171717571758351758

/-! ## A039646.P10320189442801223804

`lcm(A038455(A167614(n+1)), A214080(n))`
-/

namespace A039646.P10320189442801223804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038455 (A167614 (n + 1)).toNat) (A214080 n)

end

end A039646.P10320189442801223804

/-! ## A039646.P15633080917025445223

`or(A000007(n), A038455(A167614(n+1)))`
-/

namespace A039646.P15633080917025445223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A038455 (A167614 (n + 1)).toNat)

end

end A039646.P15633080917025445223

/-! ## A039646.P16451026842752983748

`abs(A038455(A167614(n+1))-A000038(n))`
-/

namespace A039646.P16451026842752983748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038455 (A167614 (n + 1)).toNat - A000038 n|

end

end A039646.P16451026842752983748

/-! ## A039646.P11112964037505241030

`A038455(A167614(n+1))%A123178(n+1)`
-/

namespace A039646.P11112964037505241030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038455 (A167614 (n + 1)).toNat) (A123178 (n + 1))

end

end A039646.P11112964037505241030

/-! ## A039646.P129337223062756830

`A038455(A167614(n+1))+1-A014963(20*(n+1))`
-/

namespace A039646.P129337223062756830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (A167614 (n + 1)).toNat + 1 - A014963 (20 * (n + 1))

end

end A039646.P129337223062756830

/-! ## A039646.P2813593088584409658

`A019426(2*n)^∑{e}[n, #]*A038455(A167614(n+1))`
-/

namespace A039646.P2813593088584409658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A038455 (A167614 (n + 1)).toNat

end

end A039646.P2813593088584409658

/-! ## A039646.P15873244912163814713

`A038455(A167614(n+1))*A353666(A214080(n)+1)`
-/

namespace A039646.P15873244912163814713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (A167614 (n + 1)).toNat * A353666 (A214080 n + 1).toNat

end

end A039646.P15873244912163814713

/-!
# A039647: Related to A000032 (Lucas numbers): (n-1)!*L(n).

The programs for A039647, the canonical program `A039647.P1173472686001194627` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039647 has offset 1).

The definition of A039647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039647.P1173472686001194627

`n*(a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A039647

/-- `n*(a(n-1)+(n-1)*a(n-2))` -/
def P1173472686001194627.Spec : Prop :=
  ∀ n, P1173472686001194627.a n = A039647 (n + 1)

theorem P1173472686001194627.correct : P1173472686001194627.Spec := by
  intro n
  simp only [A039647, Nat.add_sub_cancel]

end A039647

/-! ## A039647.P620104331082999973

`n!*Δ[round(ϕ^(n+2))]`
-/

namespace A039647.P620104331082999973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A039647.P620104331082999973

namespace A039647

/-- `n!*Δ[round(ϕ^(n+2))]` -/
def P620104331082999973.Spec : Prop :=
  ∀ n, P620104331082999973.a n = A039647 (n + 1)

end A039647

/-! ## A039647.P1556178769010731735

`abs(Δ[a(n-2)-a(n-1)])*n!` with `a(0)=1, a(1)=2`
-/

namespace A039647.P1556178769010731735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * (Nat.factorial n : ℤ)

end

end A039647.P1556178769010731735

namespace A039647

/-- `abs(Δ[a(n-2)-a(n-1)])*n!` -/
def P1556178769010731735.Spec : Prop :=
  ∀ n, P1556178769010731735.a n = A039647 (n + 1)

end A039647

/-! ## A039647.P8864699602738246769

`(∑[a(n-1)-(1-a(n-2))]-n)*n!` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A039647.P8864699602738246769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * (Nat.factorial n : ℤ)

end

end A039647.P8864699602738246769

namespace A039647

/-- `(∑[a(n-1)-(1-a(n-2))]-n)*n!` -/
def P8864699602738246769.Spec : Prop :=
  ∀ n, P8864699602738246769.a n = A039647 (n + 1)

end A039647

/-! ## A039647.P8232392725412042733

`n*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A039647.P8232392725412042733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A039647.P8232392725412042733

namespace A039647

/-- `n*(a(n-1)-(a(n-2)-n*a(n-2)))` -/
def P8232392725412042733.Spec : Prop :=
  ∀ n, P8232392725412042733.a n = A039647 (n + 1)

theorem P8232392725412042733.correct : P8232392725412042733.Spec := by
  intro n
  simp only [A039647, Nat.add_sub_cancel, A039647.P8232392725412042733.a, A039647.P1173472686001194627.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A039647

/-! ## A039647.P6830666950871541459

`A039692(∑[n]+1)`
-/

namespace A039647.P6830666950871541459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039692 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A039647.P6830666950871541459

namespace A039647

/-- `A039692(∑[n]+1)` -/
def P6830666950871541459.Spec : Prop :=
  ∀ n, P6830666950871541459.a n = A039647 (n + 1)

end A039647

/-! ## A039647.P5072126462638918229

`A194938(∑[n+1]+2)`
-/

namespace A039647.P5072126462638918229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194938 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A039647.P5072126462638918229

namespace A039647

/-- `A194938(∑[n+1]+2)` -/
def P5072126462638918229.Spec : Prop :=
  ∀ n, P5072126462638918229.a n = A039647 (n + 1)

end A039647

/-! ## A039647.P16666088679613565496

`A000032(n+1)*n!`
-/

namespace A039647.P16666088679613565496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (Nat.factorial n : ℤ)

end

end A039647.P16666088679613565496

namespace A039647

/-- `A000032(n+1)*n!` -/
def P16666088679613565496.Spec : Prop :=
  ∀ n, P16666088679613565496.a n = A039647 (n + 1)

end A039647

/-! ## A039647.P14498098552363376435

`A000032(n+1)*A000142(n)`
-/

namespace A039647.P14498098552363376435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000142 n

end

end A039647.P14498098552363376435

namespace A039647

/-- `A000032(n+1)*A000142(n)` -/
def P14498098552363376435.Spec : Prop :=
  ∀ n, P14498098552363376435.a n = A039647 (n + 1)

end A039647

/-! ## A039647.P12594664999535388628

`A000142(n)*A000204(n+1)`
-/

namespace A039647.P12594664999535388628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000204 (n + 1)

end

end A039647.P12594664999535388628

namespace A039647

/-- `A000142(n)*A000204(n+1)` -/
def P12594664999535388628.Spec : Prop :=
  ∀ n, P12594664999535388628.a n = A039647 (n + 1)

end A039647

/-!
# A039648: Number of n-step self-avoiding paths on the first octant of a 3-dimensional cubic lattice, starting at the origin.

The programs for A039648, there is no canonical definition to state claims against.
-/

/-! ## A039648.P12020201935620567971

`A008619(A150019(n+1)-A020003(n))`
-/

namespace A039648.P12020201935620567971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A150019 (n + 1) - A020003 n).toNat

end

end A039648.P12020201935620567971

/-! ## A039648.P14970410286268680942

`A008619(A150019(n+1)-A020093(n))`
-/

namespace A039648.P14970410286268680942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A150019 (n + 1) - A020093 n).toNat

end

end A039648.P14970410286268680942

/-! ## A039648.P2895302569990871662

`A008619(A150019(n+1)-(A057427(n)+A020048(n)))`
-/

namespace A039648.P2895302569990871662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A150019 (n + 1) - (A057427 n + A020048 n)).toNat

end

end A039648.P2895302569990871662

/-!
# A039649: a(n) = phi(n)+1.

The programs for A039649, the canonical program `A039649.P16717312505280968063` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039649 has offset 1).

The definition of A039649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)+1` (program `A039649.P16717312505280968063`, by `A039649.P16717312505280968063.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A039649.P16717312505280968063

`A000010(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039649

/-- `A000010(n+1)+1` -/
def P16717312505280968063.Spec : Prop :=
  ∀ n, P16717312505280968063.a n = A039649 (n + 1)

theorem P16717312505280968063.correct : P16717312505280968063.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel]

end A039649

/-! ## A039649.P6343946424891774696

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1`
-/

namespace A039649.P6343946424891774696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

end

end A039649.P6343946424891774696

namespace A039649

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1` -/
def P6343946424891774696.Spec : Prop :=
  ∀ n, P6343946424891774696.a n = (A039649 (n + 1) : ℚ)

end A039649

/-! ## A039649.P4408965269727282363

`1+Δ[A002088(n)]`
-/

namespace A039649.P4408965269727282363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (f1 (n + 1) - f1 n)

end

end A039649.P4408965269727282363

namespace A039649

/-- `1+Δ[A002088(n)]` -/
def P4408965269727282363.Spec : Prop :=
  ∀ n, P4408965269727282363.a n = A039649 (n + 1)

end A039649

/-! ## A039649.P594841081213849509

`1+Δ[A005728(n)]`
-/

namespace A039649.P594841081213849509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (f1 (n + 1) - f1 n)

end

end A039649.P594841081213849509

namespace A039649

/-- `1+Δ[A005728(n)]` -/
def P594841081213849509.Spec : Prop :=
  ∀ n, P594841081213849509.a n = A039649 (n + 1)

end A039649

/-! ## A039649.P16273688132452299088

`1+A000010(1+n)`
-/

namespace A039649.P16273688132452299088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000010 (1 + n)

end

end A039649.P16273688132452299088

namespace A039649

/-- `1+A000010(1+n)` -/
def P16273688132452299088.Spec : Prop :=
  ∀ n, P16273688132452299088.a n = A039649 (n + 1)

theorem P16273688132452299088.correct : P16273688132452299088.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel, A039649.P16273688132452299088.a, A039649.P16717312505280968063.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A039649

/-! ## A039649.P7504186619580595807

`A109606(n+1)+2`
-/

namespace A039649.P7504186619580595807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 2

end

end A039649.P7504186619580595807

namespace A039649

/-- `A109606(n+1)+2` -/
def P7504186619580595807.Spec : Prop :=
  ∀ n, P7504186619580595807.a n = A039649 (n + 1)

theorem P7504186619580595807.correct : P7504186619580595807.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel, A039649.P7504186619580595807.a, A039649.P16717312505280968063.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039649

/-! ## A039649.P15447265067048458517

`A121048(n+1)-n`
-/

namespace A039649.P15447265067048458517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - (n : ℤ)

end

end A039649.P15447265067048458517

namespace A039649

/-- `A121048(n+1)-n` -/
def P15447265067048458517.Spec : Prop :=
  ∀ n, P15447265067048458517.a n = A039649 (n + 1)

theorem P15447265067048458517.correct : P15447265067048458517.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel, A039649.P15447265067048458517.a, A039649.P16717312505280968063.a, A000010, A000010.P4673923239450215316.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039649

/-! ## A039649.P17550677823897411852

`ceil(sqrt(A393976(n+1)))`
-/

namespace A039649.P17550677823897411852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A393976 (n + 1) : ℝ)⌉

end

end A039649.P17550677823897411852

namespace A039649

/-- `ceil(sqrt(A393976(n+1)))` -/
def P17550677823897411852.Spec : Prop :=
  ∀ n, P17550677823897411852.a n = A039649 (n + 1)

end A039649

/-! ## A039649.P14742595393251663447

`A349137(Δ[n²])+1`
-/

namespace A039649.P14742595393251663447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A039649.P14742595393251663447

namespace A039649

/-- `A349137(Δ[n²])+1` -/
def P14742595393251663447.Spec : Prop :=
  ∀ n, P14742595393251663447.a n = A039649 (n + 1)

end A039649

/-! ## A039649.P7703642009631115172

`sqrt(A127473(n+1))+1`
-/

namespace A039649.P7703642009631115172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) + 1

end

end A039649.P7703642009631115172

namespace A039649

/-- `sqrt(A127473(n+1))+1` -/
def P7703642009631115172.Spec : Prop :=
  ∀ n, P7703642009631115172.a n = (A039649 (n + 1) : ℝ)

end A039649

/-! ## A039649.P15169985960520628207

`A200905(n+1)/3+1`
-/

namespace A039649.P15169985960520628207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (n + 1) : ℚ) / 3 + 1

end

end A039649.P15169985960520628207

namespace A039649

/-- `A200905(n+1)/3+1` -/
def P15169985960520628207.Spec : Prop :=
  ∀ n, P15169985960520628207.a n = (A039649 (n + 1) : ℚ)

theorem P15169985960520628207.correct : P15169985960520628207.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel, A039649.P15169985960520628207.a, A039649.P16717312505280968063.a, A000010, A000010.P4673923239450215316.a, A200905, A200905.P16128160975711994279.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039649

/-! ## A039649.P5577034185359244169

`1-A219428(n+1)+n`
-/

namespace A039649.P5577034185359244169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219428 (n + 1) + (n : ℤ)

end

end A039649.P5577034185359244169

namespace A039649

/-- `1-A219428(n+1)+n` -/
def P5577034185359244169.Spec : Prop :=
  ∀ n, P5577034185359244169.a n = A039649 (n + 1)

theorem P5577034185359244169.correct : P5577034185359244169.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel, A039649.P5577034185359244169.a, A039649.P16717312505280968063.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039649

/-! ## A039649.P11097104682223113923

`2-A051953(n+1)+n`
-/

namespace A039649.P11097104682223113923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A051953 (n + 1) + (n : ℤ)

end

end A039649.P11097104682223113923

namespace A039649

/-- `2-A051953(n+1)+n` -/
def P11097104682223113923.Spec : Prop :=
  ∀ n, P11097104682223113923.a n = A039649 (n + 1)

theorem P11097104682223113923.correct : P11097104682223113923.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel, A039649.P11097104682223113923.a, A039649.P16717312505280968063.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039649

/-! ## A039649.P5908496201876059939

`sqrt(sqrt(A361148(n+1)))+1`
-/

namespace A039649.P5908496201876059939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A361148 (n + 1) : ℝ)) + 1

end

end A039649.P5908496201876059939

namespace A039649

/-- `sqrt(sqrt(A361148(n+1)))+1` -/
def P5908496201876059939.Spec : Prop :=
  ∀ n, P5908496201876059939.a n = (A039649 (n + 1) : ℝ)

end A039649

/-! ## A039649.P16385122459655324776

`A057000(n)+a(n-1)` with `a(0)=2`
-/

namespace A039649.P16385122459655324776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A057000 n + a (n - 1)

end

end A039649.P16385122459655324776

namespace A039649

/-- `A057000(n)+a(n-1)` -/
def P16385122459655324776.Spec : Prop :=
  ∀ n, P16385122459655324776.a n = A039649 (n + 1)

end A039649

/-! ## A039649.P16620321687834888755

`A319998(2*(n+1))/2+1`
-/

namespace A039649.P16620321687834888755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2 + 1

end

end A039649.P16620321687834888755

namespace A039649

/-- `A319998(2*(n+1))/2+1` -/
def P16620321687834888755.Spec : Prop :=
  ∀ n, P16620321687834888755.a n = (A039649 (n + 1) : ℚ)

end A039649

/-! ## A039649.P7434662985508139338

`A002618(n+1)/(n+1)+1`
-/

namespace A039649.P7434662985508139338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A039649.P7434662985508139338

namespace A039649

/-- `A002618(n+1)/(n+1)+1` -/
def P7434662985508139338.Spec : Prop :=
  ∀ n, P7434662985508139338.a n = (A039649 (n + 1) : ℚ)

end A039649

/-! ## A039649.P6546682907830295147

`2*n+3-A053158(n+1)`
-/

namespace A039649.P6546682907830295147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A053158 (n + 1)

end

end A039649.P6546682907830295147

namespace A039649

/-- `2*n+3-A053158(n+1)` -/
def P6546682907830295147.Spec : Prop :=
  ∀ n, P6546682907830295147.a n = A039649 (n + 1)

theorem P6546682907830295147.correct : P6546682907830295147.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel, A039649.P6546682907830295147.a, A039649.P16717312505280968063.a, A000010, A000010.P4673923239450215316.a, A053158, A053158.P11533641159092355549.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039649

/-! ## A039649.P3095572409346553885

`(A046152(n+1)+n)/(n+1)`
-/

namespace A039649.P3095572409346553885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046152 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A039649.P3095572409346553885

namespace A039649

/-- `(A046152(n+1)+n)/(n+1)` -/
def P3095572409346553885.Spec : Prop :=
  ∀ n, P3095572409346553885.a n = (A039649 (n + 1) : ℚ)

theorem P3095572409346553885.correct : P3095572409346553885.Spec := by
  intro n
  simp only [A039649, Nat.add_sub_cancel, A039649.P3095572409346553885.a, A039649.P16717312505280968063.a, A000010, A000010.P4673923239450215316.a, A046152, A046152.P7809861723130686075.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039649

/-! ## A039649.P16996297393889697695

`1-Δ[a(n-1)-A000010(n)]` with `a(0)=0`
-/

namespace A039649.P16996297393889697695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A000010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A039649.P16996297393889697695

namespace A039649

/-- `1-Δ[a(n-1)-A000010(n)]` -/
def P16996297393889697695.Spec : Prop :=
  ∀ n, P16996297393889697695.a n = A039649 (n + 1)

end A039649

/-!
# A039650: Prime reached by iterating f(x) = phi(x)+1 on n.

The programs for A039650, there is no canonical definition to state claims against.
-/

/-! ## A039650.P16983135710177584996

`A039649(A039649(A039649(n+1))%A349168(n+1))`
-/

namespace A039650.P16983135710177584996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (Int.tmod (A039649 (A039649 (n + 1)).toNat) (A349168 (n + 1))).toNat

end

end A039650.P16983135710177584996

/-! ## A039650.P12862641963573331847

`p?[A039649(A039649(n+1))-A034501(n+1)]`
-/

namespace A039650.P12862641963573331847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A039649 (n + 1)).toNat - A034501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039650.P12862641963573331847

/-! ## A039650.P2372244768380505380

`A039649(A039649(n+1))%A096927(n+1)`
-/

namespace A039650.P2372244768380505380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039649 (A039649 (n + 1)).toNat) (A096927 (n + 1))

end

end A039650.P2372244768380505380

/-! ## A039650.P8100139331540783309

`A039649(A039649(n+1)%A177945(n+1))`
-/

namespace A039650.P8100139331540783309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (Int.tmod (A039649 (n + 1)) (A177945 (n + 1))).toNat

end

end A039650.P8100139331540783309

/-! ## A039650.P111726801970068783

`A093074(A000010(n+1)-A119033(n+4)%3)`
-/

namespace A039650.P111726801970068783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A000010 (n + 1) - Int.tmod (A119033 (n + 4)) 3).toNat

end

end A039650.P111726801970068783

/-!
# A039651: Number of iterations of f(x) = phi(x)+1 on n required to reach a prime.

The programs for A039651, there is no canonical definition to state claims against.
-/

/-! ## A039651.P8757891100502046163

`A072344(n+1)-and(A010051(n+1), A039652(n))`
-/

namespace A039651.P8757891100502046163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072344 (n + 1) - Int.land (A010051 (n + 1)) (A039652 n)

end

end A039651.P8757891100502046163

/-! ## A039651.P3536049034322973272

`A072344(n+1)%A259175(n+1)`
-/

namespace A039651.P3536049034322973272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072344 (n + 1)) (A259175 (n + 1))

end

end A039651.P3536049034322973272

/-! ## A039651.P6750495110589489863

`A072344(n+1)-A297109(A181821(n+1))`
-/

namespace A039651.P6750495110589489863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072344 (n + 1) - A297109 (A181821 (n + 1)).toNat

end

end A039651.P6750495110589489863

/-! ## A039651.P6939771228125951060

`(A072344(n+1)-A010051(n+1))%A239020(n+1)`
-/

namespace A039651.P6939771228125951060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072344 (n + 1) - A010051 (n + 1)) (A239020 (n + 1))

end

end A039651.P6939771228125951060

/-! ## A039651.P6059551993739698777

`A340102(A058331(n)*A174725(n+1))`
-/

namespace A039651.P6059551993739698777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A058331 n * A174725 (n + 1)).toNat

end

end A039651.P6059551993739698777

/-!
# A039653: a(0) = 0; for n > 0, a(n) = sigma(n)-1.

The programs for A039653, the canonical program `A039653.P8706560889375049487` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039653 has offset 0).

The definition of A039653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039653.P8706560889375049487

`∑{d}[n, #%#²]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A039653

/-- `∑{d}[n, #%#²]` -/
def P8706560889375049487.Spec : Prop :=
  ∀ n, (P8706560889375049487.a n : ℤ) = A039653 n

theorem P8706560889375049487.correct : P8706560889375049487.Spec := by
  intro n
  simp only [A039653]

end A039653

/-! ## A039653.P15956628096381113653

`∑{d}[n, #-C(#, n)]`
-/

namespace A039653.P15956628096381113653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (Nat.choose d n : ℤ))

end

end A039653.P15956628096381113653

namespace A039653

/-- `∑{d}[n, #-C(#, n)]` -/
def P15956628096381113653.Spec : Prop :=
  ∀ n, P15956628096381113653.a n = A039653 n

end A039653

/-! ## A039653.P11506075536913361779

`floor(∑{d}[n, #-1/n])`
-/

namespace A039653.P11506075536913361779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), ((d : ℚ) - 1 / (n : ℚ))⌋

end

end A039653.P11506075536913361779

namespace A039653

/-- `floor(∑{d}[n, #-1/n])` -/
def P11506075536913361779.Spec : Prop :=
  ∀ n, P11506075536913361779.a n = A039653 n

end A039653

/-! ## A039653.P16671790570914221791

`∑{d}[n, ceil((n-1)/#)]`
-/

namespace A039653.P16671790570914221791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈((n : ℤ) - 1 : ℚ) / (d : ℚ)⌉

end

end A039653.P16671790570914221791

namespace A039653

/-- `∑{d}[n, ceil((n-1)/#)]` -/
def P16671790570914221791.Spec : Prop :=
  ∀ n, P16671790570914221791.a n = A039653 n

end A039653

/-! ## A039653.P17102216868376425595

`∑{d}[floor(acot(n)+n), #]-1`
-/

namespace A039653.P17102216868376425595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A039653.P17102216868376425595

namespace A039653

/-- `∑{d}[floor(acot(n)+n), #]-1` -/
def P17102216868376425595.Spec : Prop :=
  ∀ n, P17102216868376425595.a n = A039653 n

end A039653

/-! ## A039653.P14282032184803655084

`(∑{d}[n, #]-1)%∑[n+1]`
-/

namespace A039653.P14282032184803655084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A039653.P14282032184803655084

namespace A039653

/-- `(∑{d}[n, #]-1)%∑[n+1]` -/
def P14282032184803655084.Spec : Prop :=
  ∀ n, P14282032184803655084.a n = A039653 n

end A039653

/-! ## A039653.P14478107809452321723

`∑{d}[n, #]-round(n/(n+1))`
-/

namespace A039653.P14478107809452321723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))

end

end A039653.P14478107809452321723

namespace A039653

/-- `∑{d}[n, #]-round(n/(n+1))` -/
def P14478107809452321723.Spec : Prop :=
  ∀ n, P14478107809452321723.a n = A039653 n

end A039653

/-! ## A039653.P672303121393343486

`-∑{d}[n, round(-((n-1)/#))]`
-/

namespace A039653.P672303121393343486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (-(((n : ℤ) - 1 : ℚ) / (d : ℚ))))

end

end A039653.P672303121393343486

namespace A039653

/-- `-∑{d}[n, round(-((n-1)/#))]` -/
def P672303121393343486.Spec : Prop :=
  ∀ n, P672303121393343486.a n = A039653 n

end A039653

/-! ## A039653.P5048889532132246456

`A057428(n)+∑{d}[n, #]`
-/

namespace A039653.P5048889532132246456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A039653.P5048889532132246456

namespace A039653

/-- `A057428(n)+∑{d}[n, #]` -/
def P5048889532132246456.Spec : Prop :=
  ∀ n, P5048889532132246456.a n = A039653 n

end A039653

/-! ## A039653.P15638952600254932002

`A000203(ceil(abs(γ-n)))-1`
-/

namespace A039653.P15638952600254932002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat - 1

end

end A039653.P15638952600254932002

namespace A039653

/-- `A000203(ceil(abs(γ-n)))-1` -/
def P15638952600254932002.Spec : Prop :=
  ∀ n, P15638952600254932002.a n = A039653 n

end A039653

/-! ## A039653.P390349468626611995

`A001065(abs(1-n)+1)+n-1`
-/

namespace A039653.P390349468626611995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (|1 - (n : ℤ)| + 1).toNat + ((n : ℤ) - 1)

end

end A039653.P390349468626611995

namespace A039653

/-- `A001065(abs(1-n)+1)+n-1` -/
def P390349468626611995.Spec : Prop :=
  ∀ n, P390349468626611995.a n = A039653 n

end A039653

/-! ## A039653.P4523686856166391697

`Δ[a(n-1)+A000203(n-1)-1]` with `a(0)=0, a(1)=0`
-/

namespace A039653.P4523686856166391697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (A000203 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039653.P4523686856166391697

namespace A039653

/-- `Δ[a(n-1)+A000203(n-1)-1]` -/
def P4523686856166391697.Spec : Prop :=
  ∀ n, P4523686856166391697.a n = A039653 n

end A039653

/-! ## A039653.P5279018773731945480

`a(n-1)+A000203(n)-A000203(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A039653.P5279018773731945480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (A000203 n - A000203 (n - 1))

end

end A039653.P5279018773731945480

namespace A039653

/-- `a(n-1)+A000203(n)-A000203(n-1)` -/
def P5279018773731945480.Spec : Prop :=
  ∀ n, P5279018773731945480.a n = A039653 n

end A039653

/-! ## A039653.P8006823202307305425

`A062157(2*n)+∑{d}[n, #]`
-/

namespace A039653.P8006823202307305425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A039653.P8006823202307305425

namespace A039653

/-- `A062157(2*n)+∑{d}[n, #]` -/
def P8006823202307305425.Spec : Prop :=
  ∀ n, P8006823202307305425.a n = A039653 n

end A039653

/-! ## A039653.P17624883172248129719

`A289207(∑{d}[n, #]+1)`
-/

namespace A039653.P17624883172248129719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A039653.P17624883172248129719

namespace A039653

/-- `A289207(∑{d}[n, #]+1)` -/
def P17624883172248129719.Spec : Prop :=
  ∀ n, P17624883172248129719.a n = A039653 n

end A039653

/-! ## A039653.P14529818365728695138

`A028310(∑{d}[n, #])-1`
-/

namespace A039653.P14529818365728695138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), d) - 1

end

end A039653.P14529818365728695138

namespace A039653

/-- `A028310(∑{d}[n, #])-1` -/
def P14529818365728695138.Spec : Prop :=
  ∀ n, P14529818365728695138.a n = A039653 n

end A039653

/-! ## A039653.P7596072998085947200

`runs[A185283(n)]-1`
-/

namespace A039653.P7596072998085947200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A039653.P7596072998085947200

namespace A039653

/-- `runs[A185283(n)]-1` -/
def P7596072998085947200.Spec : Prop :=
  ∀ n, P7596072998085947200.a n = A039653 n

end A039653

/-! ## A039653.P5230939938575926681

`A346533(∑[n+1])-1`
-/

namespace A039653.P5230939938575926681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346533 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A039653.P5230939938575926681

namespace A039653

/-- `A346533(∑[n+1])-1` -/
def P5230939938575926681.Spec : Prop :=
  ∀ n, P5230939938575926681.a n = A039653 n

end A039653

/-! ## A039653.P8251085070209184841

`A245093(A034856(n+1))-1`
-/

namespace A039653.P8251085070209184841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A034856 (n + 1)).toNat - 1

end

end A039653.P8251085070209184841

namespace A039653

/-- `A245093(A034856(n+1))-1` -/
def P8251085070209184841.Spec : Prop :=
  ∀ n, P8251085070209184841.a n = A039653 n

end A039653

/-! ## A039653.P12287933527645226602

`A245093(eq[A002260(n+1), A003056(n)])-1`
-/

namespace A039653.P12287933527645226602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A039653.P12287933527645226602

namespace A039653

/-- `A245093(eq[A002260(n+1), A003056(n)])-1` -/
def P12287933527645226602.Spec : Prop :=
  ∀ n, P12287933527645226602.a n = A039653 n

end A039653

/-!
# A039655: Number of iterations of f(x) = sigma(x)-1 applied to n required to reach a prime, or -1 if no prime is ever reached.

The programs for A039655, there is no canonical definition to state claims against.
-/

/-! ## A039655.P15670935384347255948

`A297930(A270613(n+1))%A351442(n+2)`
-/

namespace A039655.P15670935384347255948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297930 (A270613 (n + 1)).toNat) (A351442 (n + 2))

end

end A039655.P15670935384347255948

/-! ## A039655.P16721165753288608707

`A280000(A124859(n+2))%A179269(3*n+1)`
-/

namespace A039655.P16721165753288608707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280000 (A124859 (n + 2)).toNat) (A179269 (3 * n + 1))

end

end A039655.P16721165753288608707

/-! ## A039655.P6190606418942425125

`A342919(A003415(n+2)^A342001(n+1))`
-/

namespace A039655.P6190606418942425125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342919 (SequenceMachineLib.roundAway ((A003415 (n + 2) : ℚ) ^ (A342001 (n + 1) : ℤ))).toNat

end

end A039655.P6190606418942425125

/-! ## A039655.P17836202268132813093

`and(A039996(A126646(n)), A331289(2*(n+2)))`
-/

namespace A039655.P17836202268132813093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039996 (A126646 n).toNat) (A331289 (2 * (n + 2)))

end

end A039655.P17836202268132813093

/-! ## A039655.P16337751441807529255

`A338939(A259417(n+1)*A338874(n))`
-/

namespace A039655.P16337751441807529255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338939 (A259417 (n + 1) * A338874 n).toNat

end

end A039655.P16337751441807529255

/-!
# A039657: Number of digits in all (2n+1)-digit palindromic primes.

The programs for A039657, there is no canonical definition to state claims against.
-/

/-! ## A039657.P3726946743388416355

`(2*n+1)*A040025(n)`
-/

namespace A039657.P3726946743388416355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A040025 n

end

end A039657.P3726946743388416355

/-! ## A039657.P7709016629952867972

`record[(n+1)*Δ[A050251(n)]]`
-/

namespace A039657.P7709016629952867972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039657.P7709016629952867972

/-! ## A039657.P427113437825624366

`Δ[n²]*A016115(Δ[n²])`
-/

namespace A039657.P427113437825624366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A016115 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A039657.P427113437825624366

/-! ## A039657.P10668143268914257680

`record[(n+1)*A016115(n+1)]`
-/

namespace A039657.P10668143268914257680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039657.P10668143268914257680

/-! ## A039657.P16579446345603620475

`A040025(n)*A105356(n+1)`
-/

namespace A039657.P16579446345603620475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040025 n * A105356 (n + 1)

end

end A039657.P16579446345603620475

/-!
# A039658: Related to enumeration of edge-rooted catafusenes.

The programs for A039658, the canonical program `A039658.P15050853366968839029` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039658 has offset 1).

The definition of A039658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039658.P15050853366968839029

`∑[A002212(∑[n%2])]-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039658

/-- `∑[A002212(∑[n%2])]-1` -/
def P15050853366968839029.Spec : Prop :=
  ∀ n, P15050853366968839029.a n = A039658 (n + 1)

theorem P15050853366968839029.correct : P15050853366968839029.Spec := by
  intro n
  simp only [A039658, Nat.add_sub_cancel]

end A039658

/-! ## A039658.P7249088627732734269

`∑[A002212(∑[and(1, n)])]-1`
-/

namespace A039658.P7249088627732734269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039658.P7249088627732734269

namespace A039658

/-- `∑[A002212(∑[and(1, n)])]-1` -/
def P7249088627732734269.Spec : Prop :=
  ∀ n, P7249088627732734269.a n = A039658 (n + 1)

theorem P7249088627732734269.correct : P7249088627732734269.Spec := by
  intro n
  simp only [A039658, Nat.add_sub_cancel, A039658.P7249088627732734269.f2, A039658.P7249088627732734269.f1, A039658.P7249088627732734269.a, A039658.P15050853366968839029.f2, A039658.P15050853366968839029.f1, A039658.P15050853366968839029.a, SequenceMachineLib.memo_apply]
  try simp

end A039658

/-! ## A039658.P2068900492172515214

`∑[A002212(A123108(n+1))]-1`
-/

namespace A039658.P2068900492172515214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (A123108 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039658.P2068900492172515214

namespace A039658

/-- `∑[A002212(A123108(n+1))]-1` -/
def P2068900492172515214.Spec : Prop :=
  ∀ n, P2068900492172515214.a n = A039658 (n + 1)

end A039658

/-! ## A039658.P4099047454939047545

`∑[A002212(A007494(n)-n)]-1`
-/

namespace A039658.P4099047454939047545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (A007494 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039658.P4099047454939047545

namespace A039658

/-- `∑[A002212(A007494(n)-n)]-1` -/
def P4099047454939047545.Spec : Prop :=
  ∀ n, P4099047454939047545.a n = A039658 (n + 1)

end A039658

/-! ## A039658.P6644418093182873751

`∑[A002215(n+1)]-A055879(n+1)`
-/

namespace A039658.P6644418093182873751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055879 (n + 1)

end

end A039658.P6644418093182873751

namespace A039658

/-- `∑[A002215(n+1)]-A055879(n+1)` -/
def P6644418093182873751.Spec : Prop :=
  ∀ n, P6644418093182873751.a n = A039658 (n + 1)

end A039658

/-! ## A039658.P14558567086091725239

`A055879(n+2)+A055879(n+1)-2`
-/

namespace A039658.P14558567086091725239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (n + 2) + (A055879 (n + 1) - 2)

end

end A039658.P14558567086091725239

namespace A039658

/-- `A055879(n+2)+A055879(n+1)-2` -/
def P14558567086091725239.Spec : Prop :=
  ∀ n, P14558567086091725239.a n = A039658 (n + 1)

end A039658

/-!
# A039660: Related to enumeration of edge-rooted catafusenes.

The programs for A039660, the canonical program `A039660.P4420970072277421946` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039660 has offset 1).

The definition of A039660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039660.P4420970072277421946

`∑[A045445(A065033(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039660

/-- `∑[A045445(A065033(n))]` -/
def P4420970072277421946.Spec : Prop :=
  ∀ n, P4420970072277421946.a n = A039660 (n + 1)

theorem P4420970072277421946.correct : P4420970072277421946.Spec := by
  intro n
  simp only [A039660, Nat.add_sub_cancel]

end A039660

/-! ## A039660.P7613809360676718676

`∑[A045445(∑[A266070(n)])]`
-/

namespace A039660.P7613809360676718676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039660.P7613809360676718676

namespace A039660

/-- `∑[A045445(∑[A266070(n)])]` -/
def P7613809360676718676.Spec : Prop :=
  ∀ n, P7613809360676718676.a n = A039660 (n + 1)

end A039660

/-! ## A039660.P658284183571258154

`∑[A045445(A008621(A004273(n)))]`
-/

namespace A039660.P658284183571258154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A008621 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039660.P658284183571258154

namespace A039660

/-- `∑[A045445(A008621(A004273(n)))]` -/
def P658284183571258154.Spec : Prop :=
  ∀ n, P658284183571258154.a n = A039660 (n + 1)

end A039660

/-! ## A039660.P753242028801162364

`∑[A045445(A008621(A004275(n)))]`
-/

namespace A039660.P753242028801162364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A008621 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039660.P753242028801162364

namespace A039660

/-- `∑[A045445(A008621(A004275(n)))]` -/
def P753242028801162364.Spec : Prop :=
  ∀ n, P753242028801162364.a n = A039660 (n + 1)

end A039660

/-! ## A039660.P12961891634248102179

`∑[A045445(A046854(A000124(n)))]`
-/

namespace A039660.P12961891634248102179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A046854 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039660.P12961891634248102179

namespace A039660

/-- `∑[A045445(A046854(A000124(n)))]` -/
def P12961891634248102179.Spec : Prop :=
  ∀ n, P12961891634248102179.a n = A039660 (n + 1)

end A039660

/-!
# A039665: Sets of 4 consecutive numbers with equal number of divisors.

The programs for A039665, there is no canonical definition to state claims against.
-/

/-! ## A039665.P1283690538167052448

`A006601(∑[char[4*n]])+n%4`
-/

namespace A039665.P1283690538167052448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n % 4 : ℕ) : ℤ)

end

end A039665.P1283690538167052448

/-!
# A039669: Positive numbers m such that m - 2^k is a prime for all k > 0 with 2^k < m.

The programs for A039669, there is no canonical definition to state claims against.
-/

/-! ## A039669.P545173773145417540

`A068374(n+1)+2`
-/

namespace A039669.P545173773145417540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068374 (n + 1) + 2

end

end A039669.P545173773145417540

/-! ## A039669.P11320266224703783190

`p?[A068372(n+1)]+2`
-/

namespace A039669.P11320266224703783190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A039669.P11320266224703783190

/-! ## A039669.P4617039348302973182

`A370523(floor(ϕ*n)+1)`
-/

namespace A039669.P4617039348302973182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370523 (⌊Real.goldenRatio * (n : ℝ)⌋ + 1).toNat

end

end A039669.P4617039348302973182

/-!
# A039670: Sets of 4 numbers in arithmetic progression with common difference 6 and whose phi values are equal.

The programs for A039670, there is no canonical definition to state claims against.
-/

/-! ## A039670.P9401910154697569336

`A118849(A250409(2*(n+2)))+67`
-/

namespace A039670.P9401910154697569336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (A250409 (2 * (n + 2))).toNat + 67

end

end A039670.P9401910154697569336

/-!
# A039671: Row sums up to the main diagonal of the "postage stamp" array (n,m >= 0) defined in A007059.

The programs for A039671, there is no canonical definition to state claims against.
-/

/-! ## A039671.P16177014960006047905

`∑[A087447(n)-A336482(n)]`
-/

namespace A039671.P16177014960006047905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n - A336482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039671.P16177014960006047905

/-! ## A039671.P10490352582988034566

`a(n-1)+(A087447(n)-A336482(n))%A001788(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A039671.P10490352582988034566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Int.tmod (A087447 n - A336482 n) (A001788 (n + 1))

end

end A039671.P10490352582988034566

/-! ## A039671.P3977418916202221811

`A000006(A295404(n)+A094013(n))`
-/

namespace A039671.P3977418916202221811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A295404 n + A094013 n).toNat

end

end A039671.P3977418916202221811

/-! ## A039671.P14647673109265134267

`A001462(A027040(n))-A000700(3*n+2)`
-/

namespace A039671.P14647673109265134267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A027040 n).toNat - A000700 (3 * n + 2)

end

end A039671.P14647673109265134267

/-!
# A039672: Fibonacci-lucky numbers: generated by a sieve process with Fibonacci rule.

The programs for A039672, there is no canonical definition to state claims against.
-/

/-! ## A039672.P13699896807152704287

`A039676(n)+a(n-1)` with `a(0)=1`
-/

namespace A039672.P13699896807152704287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039676 n + a (n - 1)

end

end A039672.P13699896807152704287

/-! ## A039672.P6194453921702572496

`∑[A039676(A028310(n))]`
-/

namespace A039672.P6194453921702572496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P6194453921702572496

/-! ## A039672.P13468711332237331498

`∑[A039676(A000007(n)+n)]`
-/

namespace A039672.P13468711332237331498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P13468711332237331498

/-! ## A039672.P15815608256772837829

`∑[A039676(A004275(n+1)-n)]`
-/

namespace A039672.P15815608256772837829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P15815608256772837829

/-! ## A039672.P16419212673438897264

`∪[A039681(n+1), A039682(n+1)]`
-/

namespace A039672.P16419212673438897264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039672.P16419212673438897264

/-! ## A039672.P9440034151654488209

`∑[A039676(n+1)]+1-A039676(n+1)`
-/

namespace A039672.P9440034151654488209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A039676 (n + 1))

end

end A039672.P9440034151654488209

/-! ## A039672.P14003528797611408260

`Δ[A039677(n+1)]-A039676(n+1)`
-/

namespace A039672.P14003528797611408260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039676 (n + 1)

end

end A039672.P14003528797611408260

/-! ## A039672.P101372914962622487

`A039677(n+2)-(A039677(n+1)+A039676(n+1))`
-/

namespace A039672.P101372914962622487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039677 (n + 2) - (A039677 (n + 1) + A039676 (n + 1))

end

end A039672.P101372914962622487

/-! ## A039672.P3224362741442787468

`∑[A039676(A008619(A004275(n)))]`
-/

namespace A039672.P3224362741442787468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P3224362741442787468

/-! ## A039672.P10750247494658113014

`∑[A039676(A008619(A004273(n)))]`
-/

namespace A039672.P10750247494658113014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P10750247494658113014

/-! ## A039672.P10375022248124706946

`∑[A039676(A065033(2*n))]`
-/

namespace A039672.P10375022248124706946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P10375022248124706946

/-! ## A039672.P2561767389577209577

`∑[A039676(A123108(2*n))]`
-/

namespace A039672.P2561767389577209577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P2561767389577209577

/-! ## A039672.P4636159374960242215

`∑[A039676(A108738(A008486(n)))]`
-/

namespace A039672.P4636159374960242215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A108738 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P4636159374960242215

/-! ## A039672.P12789770534448249155

`∑[A039676(A060789(A008458(n)))]`
-/

namespace A039672.P12789770534448249155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A060789 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P12789770534448249155

/-! ## A039672.P12343797463760132853

`∑[A039676(A003056(A000124(n)))]`
-/

namespace A039672.P12343797463760132853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P12343797463760132853

/-! ## A039672.P3941943317246596345

`∑[A039676(A000196(A002522(n)))]`
-/

namespace A039672.P3941943317246596345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A000196 (A002522 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039672.P3941943317246596345

/-!
# A039673: Twin Fibonacci-lucky numbers.

The programs for A039673, there is no canonical definition to state claims against.
-/

/-! ## A039673.P17279345288274807572

`A039695(A008619(n))-(-1)^n`
-/

namespace A039673.P17279345288274807572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039695 (A008619 n).toNat - (-1) ^ n

end

end A039673.P17279345288274807572

/-! ## A039673.P18212516790136917985

`∪[A039693(n+1), A039694(n+1)]`
-/

namespace A039673.P18212516790136917985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039673.P18212516790136917985

/-! ## A039673.P5544336280018421699

`A039693(A008619(n))+A010673(n)`
-/

namespace A039673.P5544336280018421699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039693 (A008619 n).toNat + A010673 n

end

end A039673.P5544336280018421699

/-! ## A039673.P17156571594120378803

`A039693(∑[A059841(n)])+A010673(n)`
-/

namespace A039673.P17156571594120378803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A010673 n

end

end A039673.P17156571594120378803

/-! ## A039673.P11774049493183565525

`A039695(∑[A059841(n)])-A033999(n)`
-/

namespace A039673.P11774049493183565525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039695 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A033999 n

end

end A039673.P11774049493183565525

/-! ## A039673.P7183152900345160366

`A039694(A008619(n))-A010673(A008611(n))`
-/

namespace A039673.P7183152900345160366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039694 (A008619 n).toNat - A010673 (A008611 n).toNat

end

end A039673.P7183152900345160366

/-! ## A039673.P9031688260792018895

`A039694(A008619(n))-A010673(n+1)`
-/

namespace A039673.P9031688260792018895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039694 (A008619 n).toNat - A010673 (n + 1)

end

end A039673.P9031688260792018895

/-! ## A039673.P11346659242842458773

`A039695(A008624(2*n))-A033999(n)`
-/

namespace A039673.P11346659242842458773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039695 (A008624 (2 * n)).toNat - A033999 n

end

end A039673.P11346659242842458773

/-!
# A039674: Palindromic Fibonacci-lucky numbers.

The programs for A039674, there is no canonical definition to state claims against.
-/

/-! ## A039674.P2606853156901124047

`∩[A002113(n+1), A039672(n+1)]`
-/

namespace A039674.P2606853156901124047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039674.P2606853156901124047

/-! ## A039674.P1877134185466042271

`∩[A039672(n+1), A110751(n+1)]`
-/

namespace A039674.P1877134185466042271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039674.P1877134185466042271

/-! ## A039674.P3562514058150246598

`∩[A002113(n+1), A039676(n)+a(n-1)]` with `a(0)=1`
-/

namespace A039674.P3562514058150246598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A039676 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039674.P3562514058150246598

/-! ## A039674.P5714573372646378507

`record[A055483(A039672(n+1))]`
-/

namespace A039674.P5714573372646378507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A039672 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039674.P5714573372646378507

/-! ## A039674.P11695640708398526027

`filter[A039672(n+1), A136522(#)]`
-/

namespace A039674.P11695640708398526027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A039674.P11695640708398526027

/-!
# A039675: Prime Fibonacci-lucky numbers.

The programs for A039675, there is no canonical definition to state claims against.
-/

/-! ## A039675.P8152224532213697894

`p?[A039672(n+1)]`
-/

namespace A039675.P8152224532213697894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039675.P8152224532213697894

/-! ## A039675.P14321736387887512132

`p?[Δ[A039677(n+1)]]`
-/

namespace A039675.P14321736387887512132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039675.P14321736387887512132

/-! ## A039675.P9351454427534463382

`p?[A039676(n)+a(n-1)]` with `a(0)=1`
-/

namespace A039675.P9351454427534463382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A039676 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039675.P9351454427534463382

/-! ## A039675.P17702312158901124843

`record[A006530(A039672(n+2))]`
-/

namespace A039675.P17702312158901124843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039672 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039675.P17702312158901124843

/-! ## A039675.P15290395774468272270

`record[A020639(A039672(n+3))]`
-/

namespace A039675.P15290395774468272270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A039672 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039675.P15290395774468272270

/-! ## A039675.P3814245148548452360

`filter[A039672(n+1), A010051(#)]`
-/

namespace A039675.P3814245148548452360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A039675.P3814245148548452360

/-! ## A039675.P12976093143438284458

`record[A006530(Δ[A039677(n+1)])]`
-/

namespace A039675.P12976093143438284458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039675.P12976093143438284458

/-! ## A039675.P12736002026096343385

`∩[A000040(n+1), A039672(n+1)]`
-/

namespace A039675.P12736002026096343385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039675.P12736002026096343385

/-! ## A039675.P8524241040961370236

`∩[A039672(n+1), A045344(n+1)]`
-/

namespace A039675.P8524241040961370236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039675.P8524241040961370236

/-! ## A039675.P2740799975686341629

`∩[A039672(n+1), A106843(n+1)]`
-/

namespace A039675.P2740799975686341629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039675.P2740799975686341629

/-! ## A039675.P6038845767085397393

`∩[A039672(n+1), A116974(n+1)]`
-/

namespace A039675.P6038845767085397393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039675.P6038845767085397393

/-! ## A039675.P17423406844484586928

`∩[A039672(n+1), A182140(n+1)]`
-/

namespace A039675.P17423406844484586928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039675.P17423406844484586928

/-! ## A039675.P16809457175502240072

`∩[A039672(n+1), A182986(n+1)]`
-/

namespace A039675.P16809457175502240072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039675.P16809457175502240072

/-! ## A039675.P1434963601750884172

`∩[A039672(n+1), A353393(n+1)]`
-/

namespace A039675.P1434963601750884172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039675.P1434963601750884172

/-! ## A039675.P12312704553210142030

`record[A111089(A039681(n+1))]`
-/

namespace A039675.P12312704553210142030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A039681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039675.P12312704553210142030

/-! ## A039675.P11831470662727971202

`filter[A039672(n+2), A080339(#)]`
-/

namespace A039675.P11831470662727971202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A039675.P11831470662727971202

/-! ## A039675.P5746545950002261058

`record[A014963(Δ[A039677(n+1)])]`
-/

namespace A039675.P5746545950002261058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039675.P5746545950002261058

/-! ## A039675.P9907762156237729057

`record[A039634(Δ[A039677(n+1)])]`
-/

namespace A039675.P9907762156237729057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039675.P9907762156237729057

/-! ## A039675.P17669749475793687721

`∩[A039672(n+1), A240960(n+1)]`
-/

namespace A039675.P17669749475793687721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039675.P17669749475793687721

/-!
# A039676: Differences between Fibonacci-lucky numbers.

The programs for A039676, there is no canonical definition to state claims against.
-/

/-! ## A039676.P17458819437159013473

`Δ[A039672(n+1)]`
-/

namespace A039676.P17458819437159013473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039676.P17458819437159013473

/-! ## A039676.P4734427637697036418

`abs(Δ[A039672(n-log2(1/2))])`
-/

namespace A039676.P4734427637697036418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A039676.P4734427637697036418

/-! ## A039676.P9417391165680826520

`A039672(n+2)-A039672(n+1)`
-/

namespace A039676.P9417391165680826520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 2) - A039672 (n + 1)

end

end A039676.P9417391165680826520

/-! ## A039676.P12142229345925155299

`A028310(Δ[A039672(ϕ²-(ϕ-n))])`
-/

namespace A039676.P12142229345925155299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A039676.P12142229345925155299

/-! ## A039676.P7864738027577584918

`Δ[record[A039672(A133310(n))]]`
-/

namespace A039676.P7864738027577584918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039676.P7864738027577584918

/-! ## A039676.P9420549482676041184

`Δ[record[A039672(A134478(n))]]`
-/

namespace A039676.P9420549482676041184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039676.P9420549482676041184

/-! ## A039676.P177204183803778104

`Δ[record[A039672(A193592(n))]]`
-/

namespace A039676.P177204183803778104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039676.P177204183803778104

/-!
# A039677: Partial sums of Fibonacci-lucky numbers.

The programs for A039677, there is no canonical definition to state claims against.
-/

/-! ## A039677.P4347300481771345656

`∑[A039672(n+1)]`
-/

namespace A039677.P4347300481771345656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039677.P4347300481771345656

/-! ## A039677.P13276153865498481083

`∑[A039676(n)+a(n-1)]` with `a(0)=1`
-/

namespace A039677.P13276153865498481083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A039676 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039677.P13276153865498481083

/-! ## A039677.P14842492307807768959

`∑[∑[A039676(A028310(n))]]`
-/

namespace A039677.P14842492307807768959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039677.P14842492307807768959

/-! ## A039677.P13357165765622007158

`∑[∑[A039676(A000007(n)+n)]]`
-/

namespace A039677.P13357165765622007158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039677.P13357165765622007158

/-! ## A039677.P7245969192707810398

`∑[record[A039672(A133310(n))]]`
-/

namespace A039677.P7245969192707810398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039677.P7245969192707810398

/-! ## A039677.P5761727267220688950

`∑[∑[A039676(A065033(2*n))]]`
-/

namespace A039677.P5761727267220688950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039677.P5761727267220688950

/-! ## A039677.P17610447786265808562

`∑[∑[A039676(A123108(2*n))]]`
-/

namespace A039677.P17610447786265808562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039676 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039677.P17610447786265808562

/-!
# A039678: Smallest number m > 1 such that m^(p-1)-1 is divisible by p^2, where p = n-th prime.

The programs for A039678, there is no canonical definition to state claims against.
-/

/-! ## A039678.P5555385656014361608

`A185103(A000040(n+1))`
-/

namespace A039678.P5555385656014361608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A000040 (n + 1)).toNat

end

end A039678.P5555385656014361608

/-! ## A039678.P1449235083221791788

`A185103(Δ[A007504(n)])`
-/

namespace A039678.P1449235083221791788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (f1 (n + 1) - f1 n).toNat

end

end A039678.P1449235083221791788

/-! ## A039678.P3621936016980304907

`A185103(record[A051698(n)])`
-/

namespace A039678.P3621936016980304907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039678.P3621936016980304907

/-! ## A039678.P5960703218575057322

`A185103(A008578(n+2))`
-/

namespace A039678.P5960703218575057322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A008578 (n + 2)).toNat

end

end A039678.P5960703218575057322

/-! ## A039678.P7786566707388733715

`A185103(A182986(n+2))`
-/

namespace A039678.P7786566707388733715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A182986 (n + 2)).toNat

end

end A039678.P7786566707388733715

/-! ## A039678.P11287335247324908207

`A185103(eq[1, A003415(n)])`
-/

namespace A039678.P11287335247324908207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039678.P11287335247324908207

/-! ## A039678.P13269238582785553032

`A185103(abs(Δ[A117128(n)]))`
-/

namespace A039678.P13269238582785553032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 |f1 (n + 1) - f1 n|.toNat

end

end A039678.P13269238582785553032

/-! ## A039678.P8310609863437148033

`A185103(record[A006530(n+2)])`
-/

namespace A039678.P8310609863437148033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039678.P8310609863437148033

/-! ## A039678.P17777644999174039335

`A185103(record[A014963(n+2)])`
-/

namespace A039678.P17777644999174039335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039678.P17777644999174039335

/-! ## A039678.P7824810700077228840

`A185103(record[A020639(n+2)])`
-/

namespace A039678.P7824810700077228840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039678.P7824810700077228840

/-! ## A039678.P14294295575534014954

`A185103(A207790(2*(n+1)))`
-/

namespace A039678.P14294295575534014954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (A207790 (2 * (n + 1))).toNat

end

end A039678.P14294295575534014954

/-! ## A039678.P5580440638418235460

`A185103(A100484(n+1)/2)`
-/

namespace A039678.P5580440638418235460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A039678.P5580440638418235460

/-! ## A039678.P12374549201584170751

`A185103(eq[2, A000005(n+1)]+1)`
-/

namespace A039678.P12374549201584170751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039678.P12374549201584170751

/-! ## A039678.P4151283882647588798

`A185103(comp[A018252(n+1)-1]+1)`
-/

namespace A039678.P4151283882647588798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A039678.P4151283882647588798

/-! ## A039678.P15435182981683303660

`A185103(lt[A000010(n+1), A020639(n+1)]+1)`
-/

namespace A039678.P15435182981683303660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A039678.P15435182981683303660

/-! ## A039678.P1416947306005941768

`A185103(p?[A167175(n+1)])`
-/

namespace A039678.P1416947306005941768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A039678.P1416947306005941768

/-! ## A039678.P16175530022090934934

`A250206(record[A006530(n+2)])`
-/

namespace A039678.P16175530022090934934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039678.P16175530022090934934

/-! ## A039678.P9703505529684441645

`A250206(record[A014963(n+2)])`
-/

namespace A039678.P9703505529684441645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039678.P9703505529684441645

/-! ## A039678.P2214629812186301204

`A250206(record[A020639(n+2)])`
-/

namespace A039678.P2214629812186301204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039678.P2214629812186301204

/-! ## A039678.P50591553091272173

`A250206(A000040(2*n+1-n))`
-/

namespace A039678.P50591553091272173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A000040 (2 * n + 1 - n)).toNat

end

end A039678.P50591553091272173

/-!
# A039679: Palindromic and prime Fibonacci-lucky numbers.

The programs for A039679, there is no canonical definition to state claims against.
-/

/-! ## A039679.P12534159747654006938

`∩[A002385(n+1), A039674(n+1)]`
-/

namespace A039679.P12534159747654006938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039679.P12534159747654006938

/-! ## A039679.P17882220264309726625

`∩[A039674(n+1), A072299(n+1)]`
-/

namespace A039679.P17882220264309726625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039679.P17882220264309726625

/-! ## A039679.P9820423905371493594

`∩[A039674(n+1), A180440(n+1)]`
-/

namespace A039679.P9820423905371493594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039679.P9820423905371493594

/-! ## A039679.P17257482854794717721

`∩[A039674(n+1), A232183(n+1)]`
-/

namespace A039679.P17257482854794717721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039679.P17257482854794717721

/-! ## A039679.P10757302008746485869

`p?[A039674(n+1)]`
-/

namespace A039679.P10757302008746485869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A039679.P10757302008746485869

/-!
# A039680: Concatenate Fibonacci-lucky numbers.

The programs for A039680, there is no canonical definition to state claims against.
-/

/-! ## A039680.P1642773411068926275

`A042948(5*a(n-1)+n)` with `a(0)=1`
-/

namespace A039680.P1642773411068926275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A042948 (5 * a (n - 1) + (n : ℤ)).toNat

end

end A039680.P1642773411068926275

/-!
# A039681: Odd Fibonacci-lucky numbers.

The programs for A039681, there is no canonical definition to state claims against.
-/

/-! ## A039681.P5726307339982957361

`∩[2*n+1, A039672(n+1)]`
-/

namespace A039681.P5726307339982957361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P5726307339982957361

/-! ## A039681.P16454681229494040026

`record[A000265(A039672(n+1))]`
-/

namespace A039681.P16454681229494040026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039672 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039681.P16454681229494040026

/-! ## A039681.P18391267144354173168

`filter[A039672(n+1), A093719(#)]`
-/

namespace A039681.P18391267144354173168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A039681.P18391267144354173168

/-! ## A039681.P2484681756203566821

`filter[A039672(n+1), A320106(#)]`
-/

namespace A039681.P2484681756203566821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A039681.P2484681756203566821

/-! ## A039681.P9045153062685620812

`filter[A039672(n+1), A354354(#)]`
-/

namespace A039681.P9045153062685620812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A039681.P9045153062685620812

/-! ## A039681.P14906481032314489887

`filter[A039672(n+1), A373156(#)]`
-/

namespace A039681.P14906481032314489887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A039681.P14906481032314489887

/-! ## A039681.P7270371764581599277

`filter[A039672(n+1), A374134(#)]`
-/

namespace A039681.P7270371764581599277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A039681.P7270371764581599277

/-! ## A039681.P18281777508810812674

`record[A000265(Δ[A039677(n+1)])]`
-/

namespace A039681.P18281777508810812674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039681.P18281777508810812674

/-! ## A039681.P14624215004854487384

`∩[A039672(n+1), A064615(n+1)]`
-/

namespace A039681.P14624215004854487384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P14624215004854487384

/-! ## A039681.P443915885518335031

`∩[A039672(n+1), A084820(n+1)]`
-/

namespace A039681.P443915885518335031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P443915885518335031

/-! ## A039681.P1508843954160522580

`∩[A039672(n+1), A089684(n+1)]`
-/

namespace A039681.P1508843954160522580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P1508843954160522580

/-! ## A039681.P11259446980459483193

`∩[A039672(n+1), A247328(n+1)]`
-/

namespace A039681.P11259446980459483193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P11259446980459483193

/-! ## A039681.P14698752788996607608

`∩[A039672(n+1), A004273(n)]`
-/

namespace A039681.P14698752788996607608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P14698752788996607608

/-! ## A039681.P11281009374694259222

`record[A093178(A039672(-xor(n, -1)))]`
-/

namespace A039681.P11281009374694259222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A039672 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039681.P11281009374694259222

/-! ## A039681.P7480943501195306504

`∩[A039672(n+1), A005843(n)+1]`
-/

namespace A039681.P7480943501195306504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P7480943501195306504

/-! ## A039681.P11692264668448021243

`∩[A039672(n+1), A060747(n)]`
-/

namespace A039681.P11692264668448021243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P11692264668448021243

/-! ## A039681.P15338625171594002630

`∩[A039672(n+1), A047266(n+1)]`
-/

namespace A039681.P15338625171594002630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P15338625171594002630

/-! ## A039681.P11887611732258729521

`∩[A039672(n+1), A260392(n+1)]`
-/

namespace A039681.P11887611732258729521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P11887611732258729521

/-! ## A039681.P6625517110473237864

`∩[A039672(n+1), A328585(n+1)]`
-/

namespace A039681.P6625517110473237864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P6625517110473237864

/-! ## A039681.P12840211691051149585

`∩[A039672(n+1), A191275(n+1)]`
-/

namespace A039681.P12840211691051149585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039681.P12840211691051149585

/-!
# A039682: Even Fibonacci-lucky numbers.

The programs for A039682, there is no canonical definition to state claims against.
-/

/-! ## A039682.P4458863988892762186

`∩[2*n, A039672(n+1)]`
-/

namespace A039682.P4458863988892762186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P4458863988892762186

/-! ## A039682.P16097492602830431323

`filter[A039672(n+1), A120325(#)]`
-/

namespace A039682.P16097492602830431323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A039682.P16097492602830431323

/-! ## A039682.P7728866215059311678

`filter[A039672(n+1), A353525(#)]`
-/

namespace A039682.P7728866215059311678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A039682.P7728866215059311678

/-! ## A039682.P1927318171541865538

`filter[A039672(n+1), A353529(#)]`
-/

namespace A039682.P1927318171541865538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353529 (f1 j).toNat = 1) n)

end

end A039682.P1927318171541865538

/-! ## A039682.P5577305946649054896

`record[A000265(A039672(n+2)+1)-1]`
-/

namespace A039682.P5577305946649054896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039672 (n + 2) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039682.P5577305946649054896

/-! ## A039682.P2318058415558881489

`A039672(eq[2, gcd(2, A039672(n+1))]+1)`
-/

namespace A039682.P2318058415558881489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A039672 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A039682.P2318058415558881489

/-! ## A039682.P2286992691579781832

`A039672(eq[0, and(1, A039672(n+1))]+1)`
-/

namespace A039682.P2286992691579781832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A039672 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039682.P2286992691579781832

/-! ## A039682.P14053869631324481485

`∩[A039672(n+1), A232745(n+1)]`
-/

namespace A039682.P14053869631324481485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P14053869631324481485

/-! ## A039682.P17434167714920847877

`∩[A039672(n+1), A047235(n+1)]`
-/

namespace A039682.P17434167714920847877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P17434167714920847877

/-! ## A039682.P4625541855915071661

`∩[A039672(n+1), A328588(n+1)]`
-/

namespace A039682.P4625541855915071661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P4625541855915071661

/-! ## A039682.P14441329512080760697

`∩[A039672(n+1), A342050(n+1)]`
-/

namespace A039682.P14441329512080760697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P14441329512080760697

/-! ## A039682.P8464105165510770360

`∩[A039672(n+1), A260391(n+1)]`
-/

namespace A039682.P8464105165510770360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P8464105165510770360

/-! ## A039682.P8746170197689603027

`∩[A039672(n+1), A005843(n)]`
-/

namespace A039682.P8746170197689603027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P8746170197689603027

/-! ## A039682.P7329667920008800116

`∩[A039672(n+1), A047228(n+1)]`
-/

namespace A039682.P7329667920008800116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P7329667920008800116

/-! ## A039682.P8709901010228707991

`A005843(record[A273943(A039672(n+1))])`
-/

namespace A039682.P8709901010228707991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A039672 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039682.P8709901010228707991

/-! ## A039682.P9763004301536466751

`∩[A039672(n+1), A060747(n)+1]`
-/

namespace A039682.P9763004301536466751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P9763004301536466751

/-! ## A039682.P16064848400448394136

`∩[A039672(n+1), A004273(n)-1]`
-/

namespace A039682.P16064848400448394136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P16064848400448394136

/-! ## A039682.P8836826333059220022

`∩[A039672(n+1), A119432(n+1)]`
-/

namespace A039682.P8836826333059220022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P8836826333059220022

/-! ## A039682.P10644954025105005298

`A005843(record[A325641(A039672(n+1))])`
-/

namespace A039682.P10644954025105005298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A039672 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039682.P10644954025105005298

/-! ## A039682.P12340448419096395592

`∩[A039672(n+1), A047229(n+1)]`
-/

namespace A039682.P12340448419096395592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039682.P12340448419096395592

/-!
# A039683: Signed double Pochhammer triangle: expansion of x(x-2)(x-4)..(x-2n+2).

The programs for A039683, the canonical program `A039683.P5271011620438292236` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039683 has offset 1).

The definition of A039683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039683.P5271011620438292236

`T(n-1,k-1)-2*row(n)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A039683

/-- `T(n-1,k-1)-2*row(n)*T(n-1,k)` -/
def P5271011620438292236.Spec : Prop :=
  ∀ n, P5271011620438292236.a n = A039683 (n + 1)

theorem P5271011620438292236.correct : P5271011620438292236.Spec := by
  intro n
  simp only [A039683, Nat.add_sub_cancel]

end A039683

/-! ## A039683.P5852406500799966676

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A008275(n+1)`
-/

namespace A039683.P5852406500799966676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A008275 (n + 1) : ℚ)

end

end A039683.P5852406500799966676

namespace A039683

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A008275(n+1)` -/
def P5852406500799966676.Spec : Prop :=
  ∀ n, P5852406500799966676.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P13798575012616661322

`A008275(n+1)*A130321(n)`
-/

namespace A039683.P13798575012616661322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A130321 n

end

end A039683.P13798575012616661322

namespace A039683

/-- `A008275(n+1)*A130321(n)` -/
def P13798575012616661322.Spec : Prop :=
  ∀ n, P13798575012616661322.a n = A039683 (n + 1)

end A039683

/-! ## A039683.P6149913034336041629

`A048994(comp[∑[n]])*A130321(n)`
-/

namespace A039683.P6149913034336041629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A130321 n

end

end A039683.P6149913034336041629

namespace A039683

/-- `A048994(comp[∑[n]])*A130321(n)` -/
def P6149913034336041629.Spec : Prop :=
  ∀ n, P6149913034336041629.a n = A039683 (n + 1)

end A039683

/-! ## A039683.P17574975715705801617

`sqrt(A262616(n))*A008275(n+1)`
-/

namespace A039683.P17574975715705801617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A008275 (n + 1) : ℝ)

end

end A039683.P17574975715705801617

namespace A039683

/-- `sqrt(A262616(n))*A008275(n+1)` -/
def P17574975715705801617.Spec : Prop :=
  ∀ n, P17574975715705801617.a n = (A039683 (n + 1) : ℝ)

end A039683

/-! ## A039683.P10600585109316288560

`A008275(n+1)/2*A090988(n+1)`
-/

namespace A039683.P10600585109316288560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / 2 * (A090988 (n + 1) : ℚ)

end

end A039683.P10600585109316288560

namespace A039683

/-- `A008275(n+1)/2*A090988(n+1)` -/
def P10600585109316288560.Spec : Prop :=
  ∀ n, P10600585109316288560.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P6149925953626473296

`A000079(A025581(n))*A008275(n+1)`
-/

namespace A039683.P6149925953626473296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A008275 (n + 1)

end

end A039683.P6149925953626473296

namespace A039683

/-- `A000079(A025581(n))*A008275(n+1)` -/
def P6149925953626473296.Spec : Prop :=
  ∀ n, P6149925953626473296.a n = A039683 (n + 1)

end A039683

/-! ## A039683.P16966851328389305510

`A008275(n+1)*A059268(A061579(n))`
-/

namespace A039683.P16966851328389305510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A059268 (A061579 n).toNat

end

end A039683.P16966851328389305510

namespace A039683

/-- `A008275(n+1)*A059268(A061579(n))` -/
def P16966851328389305510.Spec : Prop :=
  ∀ n, P16966851328389305510.a n = A039683 (n + 1)

end A039683

/-! ## A039683.P3267852479427836070

`A008276(A038722(n+1))*A130321(n)`
-/

namespace A039683.P3267852479427836070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A038722 (n + 1)).toNat * A130321 n

end

end A039683.P3267852479427836070

namespace A039683

/-- `A008276(A038722(n+1))*A130321(n)` -/
def P3267852479427836070.Spec : Prop :=
  ∀ n, P3267852479427836070.a n = A039683 (n + 1)

end A039683

/-! ## A039683.P1364657238520142028

`A008275(n+1)*A011782(A004736(n+1))`
-/

namespace A039683.P1364657238520142028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A011782 (A004736 (n + 1)).toNat

end

end A039683.P1364657238520142028

namespace A039683

/-- `A008275(n+1)*A011782(A004736(n+1))` -/
def P1364657238520142028.Spec : Prop :=
  ∀ n, P1364657238520142028.a n = A039683 (n + 1)

end A039683

/-! ## A039683.P8800293351004136014

`A008275(n+1)/A008277(n+1)*A075497(n+1)`
-/

namespace A039683.P8800293351004136014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A075497 (n + 1) : ℚ)

end

end A039683.P8800293351004136014

namespace A039683

/-- `A008275(n+1)/A008277(n+1)*A075497(n+1)` -/
def P8800293351004136014.Spec : Prop :=
  ∀ n, P8800293351004136014.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P13095195866113546822

`A051142(n+1)/A130321(n)`
-/

namespace A039683.P13095195866113546822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051142 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A039683.P13095195866113546822

namespace A039683

/-- `A051142(n+1)/A130321(n)` -/
def P13095195866113546822.Spec : Prop :=
  ∀ n, P13095195866113546822.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P4632160472340512665

`A051151(n+1)/A140303(n)`
-/

namespace A039683.P4632160472340512665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051151 (n + 1) : ℚ) / (A140303 n : ℚ)

end

end A039683.P4632160472340512665

namespace A039683

/-- `A051151(n+1)/A140303(n)` -/
def P4632160472340512665.Spec : Prop :=
  ∀ n, P4632160472340512665.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P4042544772906657636

`A008275(n+1)/A051141(n+1)*A051151(n+1)`
-/

namespace A039683.P4042544772906657636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A051141 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A039683.P4042544772906657636

namespace A039683

/-- `A008275(n+1)/A051141(n+1)*A051151(n+1)` -/
def P4042544772906657636.Spec : Prop :=
  ∀ n, P4042544772906657636.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P2401767117778131763

`A051141(n+1)/A051151(n+1)*A051142(n+1)`
-/

namespace A039683.P2401767117778131763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A051151 (n + 1) : ℚ) * (A051142 (n + 1) : ℚ)

end

end A039683.P2401767117778131763

namespace A039683

/-- `A051141(n+1)/A051151(n+1)*A051142(n+1)` -/
def P2401767117778131763.Spec : Prop :=
  ∀ n, P2401767117778131763.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P6317645979824715630

`A051187(n+1)/A262616(n)`
-/

namespace A039683.P6317645979824715630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051187 (n + 1) : ℚ) / (A262616 n : ℚ)

end

end A039683.P6317645979824715630

namespace A039683

/-- `A051187(n+1)/A262616(n)` -/
def P6317645979824715630.Spec : Prop :=
  ∀ n, P6317645979824715630.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P15485675287442547053

`A051187(n+1)/A130321(n)²`
-/

namespace A039683.P15485675287442547053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051187 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A039683.P15485675287442547053

namespace A039683

/-- `A051187(n+1)/A130321(n)²` -/
def P15485675287442547053.Spec : Prop :=
  ∀ n, P15485675287442547053.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P15800871504353082719

`A051142(n+1)/A051187(n+1)*A051142(n+1)`
-/

namespace A039683.P15800871504353082719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051142 (n + 1) : ℚ) / (A051187 (n + 1) : ℚ) * (A051142 (n + 1) : ℚ)

end

end A039683.P15800871504353082719

namespace A039683

/-- `A051142(n+1)/A051187(n+1)*A051142(n+1)` -/
def P15800871504353082719.Spec : Prop :=
  ∀ n, P15800871504353082719.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P4825385434397738652

`(A051141(n+1)/A051151(n+1))²*A051187(n+1)`
-/

namespace A039683.P4825385434397738652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051141 (n + 1) : ℚ) / (A051151 (n + 1) : ℚ)) ^ 2 * (A051187 (n + 1) : ℚ)

end

end A039683.P4825385434397738652

namespace A039683

/-- `(A051141(n+1)/A051151(n+1))²*A051187(n+1)` -/
def P4825385434397738652.Spec : Prop :=
  ∀ n, P4825385434397738652.a n = (A039683 (n + 1) : ℚ)

end A039683

/-! ## A039683.P4257340089534196911

`A051141(n+1)/A051231(n+1)*A051151(n+1)`
-/

namespace A039683.P4257340089534196911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A051231 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A039683.P4257340089534196911

namespace A039683

/-- `A051141(n+1)/A051231(n+1)*A051151(n+1)` -/
def P4257340089534196911.Spec : Prop :=
  ∀ n, P4257340089534196911.a n = (A039683 (n + 1) : ℚ)

end A039683

/-!
# A039685: Numbers m such that m^2 ends in 444.

The programs for A039685, the canonical program `A039685.P8890412137560047210` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039685 has offset 1).

The definition of A039685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039685.P104371977314609732

`ogf((38+424x+38x^2)/(1-x-x^2+x^3))`
-/

namespace A039685.P104371977314609732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [38, 424, 38] [1, -1, -1, 1] n

end

end A039685.P104371977314609732

namespace A039685

/-- `ogf((38+424x+38x^2)/(1-x-x^2+x^3))` -/
def P104371977314609732.Spec : Prop :=
  ∀ n, P104371977314609732.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P8890412137560047210

`250*(n+1)+87*(-1)^(n+1)-125`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A039685

/-- `250*(n+1)+87*(-1)^(n+1)-125` -/
def P8890412137560047210.Spec : Prop :=
  ∀ n, P8890412137560047210.a n = A039685 (n + 1)

theorem P8890412137560047210.correct : P8890412137560047210.Spec := by
  intro n
  simp only [A039685, Nat.add_sub_cancel]

end A039685

/-! ## A039685.P5726142235160447748

`sqrt(A328886(n+1))`
-/

namespace A039685.P5726142235160447748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A328886 (n + 1) : ℝ)

end

end A039685.P5726142235160447748

namespace A039685

/-- `sqrt(A328886(n+1))` -/
def P5726142235160447748.Spec : Prop :=
  ∀ n, P5726142235160447748.a n = (A039685 (n + 1) : ℝ)

end A039685

/-! ## A039685.P10855058350547541670

`A186439(Δ[A195041(n)])`
-/

namespace A039685.P10855058350547541670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (f1 (n + 1) - f1 n).toNat

end

end A039685.P10855058350547541670

namespace A039685

/-- `A186439(Δ[A195041(n)])` -/
def P10855058350547541670.Spec : Prop :=
  ∀ n, P10855058350547541670.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P14320857811889875038

`A186439(A047336(n+1))`
-/

namespace A039685.P14320857811889875038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A047336 (n + 1)).toNat

end

end A039685.P14320857811889875038

namespace A039685

/-- `A186439(A047336(n+1))` -/
def P14320857811889875038.Spec : Prop :=
  ∀ n, P14320857811889875038.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P11544324380886345218

`A186439(A047291(2*(n+1)))`
-/

namespace A039685.P11544324380886345218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A047291 (2 * (n + 1))).toNat

end

end A039685.P11544324380886345218

namespace A039685

/-- `A186439(A047291(2*(n+1)))` -/
def P11544324380886345218.Spec : Prop :=
  ∀ n, P11544324380886345218.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P7074929894734335662

`A186439(A047322(2*(n+1)))`
-/

namespace A039685.P7074929894734335662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A047322 (2 * (n + 1))).toNat

end

end A039685.P7074929894734335662

namespace A039685

/-- `A186439(A047322(2*(n+1)))` -/
def P7074929894734335662.Spec : Prop :=
  ∀ n, P7074929894734335662.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P16703777287159645620

`A186439(A301451(n+1)-n)`
-/

namespace A039685.P16703777287159645620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A301451 (n + 1) - (n : ℤ)).toNat

end

end A039685.P16703777287159645620

namespace A039685

/-- `A186439(A301451(n+1)-n)` -/
def P16703777287159645620.Spec : Prop :=
  ∀ n, P16703777287159645620.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P6318863576041848430

`A186439(A195041(n+1)-A195041(n))`
-/

namespace A039685.P6318863576041848430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (A195041 (n + 1) - A195041 n).toNat

end

end A039685.P6318863576041848430

namespace A039685

/-- `A186439(A195041(n+1)-A195041(n))` -/
def P6318863576041848430.Spec : Prop :=
  ∀ n, P6318863576041848430.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P4362870930038151115

`filter[A186439(n+1), A359374(#)]`
-/

namespace A039685.P4362870930038151115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A039685.P4362870930038151115

namespace A039685

/-- `filter[A186439(n+1), A359374(#)]` -/
def P4362870930038151115.Spec : Prop :=
  ∀ n, P4362870930038151115.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P12446596041362749795

`filter[A186439(n+1), A359820(#)]`
-/

namespace A039685.P12446596041362749795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A039685.P12446596041362749795

namespace A039685

/-- `filter[A186439(n+1), A359820(#)]` -/
def P12446596041362749795.Spec : Prop :=
  ∀ n, P12446596041362749795.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P15252571548029161676

`∩[A186439(n+1), A322489(n+1)]`
-/

namespace A039685.P15252571548029161676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039685.P15252571548029161676

namespace A039685

/-- `∩[A186439(n+1), A322489(n+1)]` -/
def P15252571548029161676.Spec : Prop :=
  ∀ n, (P15252571548029161676.a n : ℤ) = A039685 (n + 1)

end A039685

/-! ## A039685.P16244524599763311257

`∩[A063246(n+1), A186439(n+1)]`
-/

namespace A039685.P16244524599763311257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039685.P16244524599763311257

namespace A039685

/-- `∩[A063246(n+1), A186439(n+1)]` -/
def P16244524599763311257.Spec : Prop :=
  ∀ n, (P16244524599763311257.a n : ℤ) = A039685 (n + 1)

end A039685

/-! ## A039685.P4400475697929131439

`∩[A063220(n+1), A186439(n+1)]`
-/

namespace A039685.P4400475697929131439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039685.P4400475697929131439

namespace A039685

/-- `∩[A063220(n+1), A186439(n+1)]` -/
def P4400475697929131439.Spec : Prop :=
  ∀ n, (P4400475697929131439.a n : ℤ) = A039685 (n + 1)

end A039685

/-! ## A039685.P7182036516049434478

`filter[A186439(n+1), A011558(#)]`
-/

namespace A039685.P7182036516049434478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A039685.P7182036516049434478

namespace A039685

/-- `filter[A186439(n+1), A011558(#)]` -/
def P7182036516049434478.Spec : Prop :=
  ∀ n, P7182036516049434478.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P635088362161460939

`filter[A186439(n+1), A166486(#)]`
-/

namespace A039685.P635088362161460939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A039685.P635088362161460939

namespace A039685

/-- `filter[A186439(n+1), A166486(#)]` -/
def P635088362161460939.Spec : Prop :=
  ∀ n, P635088362161460939.a n = A039685 (n + 1)

end A039685

/-! ## A039685.P9361743788537931730

`filter[A186439(n+1), A391844(#)]`
-/

namespace A039685.P9361743788537931730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A039685.P9361743788537931730

namespace A039685

/-- `filter[A186439(n+1), A391844(#)]` -/
def P9361743788537931730.Spec : Prop :=
  ∀ n, P9361743788537931730.a n = A039685 (n + 1)

end A039685

/-!
# A039686: Squares which are the concatenation of two nonzero squares.

The programs for A039686, there is no canonical definition to state claims against.
-/

/-! ## A039686.P14507054380251271957

`A048375(n+1)²`
-/

namespace A039686.P14507054380251271957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1) ^ 2

end

end A039686.P14507054380251271957

/-! ## A039686.P16942913994352549158

`A048375(2*(n+1)-(n+1))^2`
-/

namespace A039686.P16942913994352549158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (2 * (n + 1) - (n + 1)) ^ 2

end

end A039686.P16942913994352549158

/-! ## A039686.P14185810100038725701

`A048375(n+1)*A048375(A000027(n+1))`
-/

namespace A039686.P14185810100038725701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1) * A048375 (A000027 (n + 1)).toNat

end

end A039686.P14185810100038725701

/-! ## A039686.P3290714629147503495

`(A033999(A002264(n))*A048375(n+1))^2`
-/

namespace A039686.P3290714629147503495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (A002264 n).toNat * A048375 (n + 1)) ^ 2

end

end A039686.P3290714629147503495

/-! ## A039686.P12826147677346928932

`A048375(n+1)*A048375(A029578(2*(n+1)))`
-/

namespace A039686.P12826147677346928932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1) * A048375 (A029578 (2 * (n + 1))).toNat

end

end A039686.P12826147677346928932

/-! ## A039686.P14867595525380703099

`A048375(A000290(n+1)/(n+1))*A048375(n+1)`
-/

namespace A039686.P14867595525380703099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat * A048375 (n + 1)

end

end A039686.P14867595525380703099

/-! ## A039686.P4210322494522539686

`A048375(n+1)*A048375((n+1)%A048375(n+1))`
-/

namespace A039686.P4210322494522539686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048375 (n + 1) * A048375 (Int.tmod (n + 1 : ℤ) (A048375 (n + 1))).toNat

end

end A039686.P4210322494522539686

/-! ## A039686.P14069824571731228294

`∩[A147608(n+1), A258060(n+1)]`
-/

namespace A039686.P14069824571731228294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039686.P14069824571731228294

/-! ## A039686.P16208527471248133317

`A000290(A048375(2*(n+1)-(n+1)))`
-/

namespace A039686.P16208527471248133317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A048375 (2 * (n + 1) - (n + 1))).toNat

end

end A039686.P16208527471248133317

/-! ## A039686.P15223363025749998792

`A000290(A048375(n+1))*A010052(A000290(n))`
-/

namespace A039686.P15223363025749998792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A048375 (n + 1)).toNat * A010052 (A000290 n).toNat

end

end A039686.P15223363025749998792

/-!
# A039687: Primes of the form 3*2^k + 1.

The programs for A039687, there is no canonical definition to state claims against.
-/

/-! ## A039687.P12736833820940346643

`3*2^A002253(n+1)+1`
-/

namespace A039687.P12736833820940346643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A002253 (n + 1) : ℤ) + 1

end

end A039687.P12736833820940346643

/-! ## A039687.P309835384116269746

`A134854(A002253(n+1))`
-/

namespace A039687.P309835384116269746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134854 (A002253 (n + 1)).toNat

end

end A039687.P309835384116269746

/-! ## A039687.P15964105917128422020

`A004119(A002253(n+1)+1)`
-/

namespace A039687.P15964105917128422020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (A002253 (n + 1) + 1).toNat

end

end A039687.P15964105917128422020

/-! ## A039687.P16273234352123975624

`A103204(A002253(n+1)+2)`
-/

namespace A039687.P16273234352123975624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (A002253 (n + 1) + 2).toNat

end

end A039687.P16273234352123975624

/-! ## A039687.P12292463113280463856

`∩[A004119(n), A005109(n+1)]`
-/

namespace A039687.P12292463113280463856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039687.P12292463113280463856

/-!
# A039689: Numbers k such that phi(k) + 1 is not a prime.

The programs for A039689, the canonical program `A039689.P1408456862018696373` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039689 has offset 1).

The definition of A039689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039689.P1408456862018696373

`lt[A296079(n+1), 1]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039689

/-- `lt[A296079(n+1), 1]+1` -/
def P1408456862018696373.Spec : Prop :=
  ∀ n, (P1408456862018696373.a n : ℤ) = A039689 (n + 1)

theorem P1408456862018696373.correct : P1408456862018696373.Spec := by
  intro n
  simp only [A039689, Nat.add_sub_cancel]

end A039689

/-! ## A039689.P15631451779198498523

`lt[2, A296078(1+n)]+1`
-/

namespace A039689.P15631451779198498523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296078 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P15631451779198498523

namespace A039689

/-- `lt[2, A296078(1+n)]+1` -/
def P15631451779198498523.Spec : Prop :=
  ∀ n, (P15631451779198498523.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P5218363377888025822

`comp[A039698(n+1)-1]+1`
-/

namespace A039689.P5218363377888025822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A039689.P5218363377888025822

namespace A039689

/-- `comp[A039698(n+1)-1]+1` -/
def P5218363377888025822.Spec : Prop :=
  ∀ n, (P5218363377888025822.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P9154942576404794800

`eq[1, A005171(A000010(n+1)+1)]+1`
-/

namespace A039689.P9154942576404794800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039689.P9154942576404794800

namespace A039689

/-- `eq[1, A005171(A000010(n+1)+1)]+1` -/
def P9154942576404794800.Spec : Prop :=
  ∀ n, (P9154942576404794800.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P7844373487283019173

`lt[1, A001222(A000010(n+1)+1)]+1`
-/

namespace A039689.P7844373487283019173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P7844373487283019173

namespace A039689

/-- `lt[1, A001222(A000010(n+1)+1)]+1` -/
def P7844373487283019173.Spec : Prop :=
  ∀ n, (P7844373487283019173.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P13586811528726349690

`eq[0, A010051(A000010(n+2)+1)]+2`
-/

namespace A039689.P13586811528726349690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000010 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A039689.P13586811528726349690

namespace A039689

/-- `eq[0, A010051(A000010(n+2)+1)]+2` -/
def P13586811528726349690.Spec : Prop :=
  ∀ n, (P13586811528726349690.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P1653040282490863223

`lt[1, A325937(A000010(n+1)+1)]+1`
-/

namespace A039689.P1653040282490863223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P1653040282490863223

namespace A039689

/-- `lt[1, A325937(A000010(n+1)+1)]+1` -/
def P1653040282490863223.Spec : Prop :=
  ∀ n, (P1653040282490863223.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P4847786614988744633

`lt[2, A000005(A000010(n+1)+1)]+1`
-/

namespace A039689.P4847786614988744633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P4847786614988744633

namespace A039689

/-- `lt[2, A000005(A000010(n+1)+1)]+1` -/
def P4847786614988744633.Spec : Prop :=
  ∀ n, (P4847786614988744633.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P2200009127441528311

`lt[2, A336158(A000010(n+1)+1)]+1`
-/

namespace A039689.P2200009127441528311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P2200009127441528311

namespace A039689

/-- `lt[2, A336158(A000010(n+1)+1)]+1` -/
def P2200009127441528311.Spec : Prop :=
  ∀ n, (P2200009127441528311.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P1988429443171280964

`lt[1, A002033(A000010(n+1))]+1`
-/

namespace A039689.P1988429443171280964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P1988429443171280964

namespace A039689

/-- `lt[1, A002033(A000010(n+1))]+1` -/
def P1988429443171280964.Spec : Prop :=
  ∀ n, (P1988429443171280964.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P10676537719968490506

`lt[2, A073184(A000010(n+1)+1)]+1`
-/

namespace A039689.P10676537719968490506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P10676537719968490506

namespace A039689

/-- `lt[2, A073184(A000010(n+1)+1)]+1` -/
def P10676537719968490506.Spec : Prop :=
  ∀ n, (P10676537719968490506.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P12151134068890966340

`A020725(comp[A039698(n+1)-1])`
-/

namespace A039689.P12151134068890966340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A039689.P12151134068890966340

namespace A039689

/-- `A020725(comp[A039698(n+1)-1])` -/
def P12151134068890966340.Spec : Prop :=
  ∀ n, P12151134068890966340.a n = A039689 (n + 1)

end A039689

/-! ## A039689.P6831598809220346618

`lt[1, A039651(n+1)]+1`
-/

namespace A039689.P6831598809220346618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P6831598809220346618

namespace A039689

/-- `lt[1, A039651(n+1)]+1` -/
def P6831598809220346618.Spec : Prop :=
  ∀ n, (P6831598809220346618.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P4270340918084115156

`lt[2, A000005(A039649(n+1))]+1`
-/

namespace A039689.P4270340918084115156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039649 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039689.P4270340918084115156

namespace A039689

/-- `lt[2, A000005(A039649(n+1))]+1` -/
def P4270340918084115156.Spec : Prop :=
  ∀ n, (P4270340918084115156.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P8727410248823993123

`lt[A039650(n+1), A000010(n+1)]+1`
-/

namespace A039689.P8727410248823993123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A039689.P8727410248823993123

namespace A039689

/-- `lt[A039650(n+1), A000010(n+1)]+1` -/
def P8727410248823993123.Spec : Prop :=
  ∀ n, (P8727410248823993123.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P5315789842860731985

`lt[1, A051953(A225530(n)+1)]`
-/

namespace A039689.P5315789842860731985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A225530 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039689.P5315789842860731985

namespace A039689

/-- `lt[1, A051953(A225530(n)+1)]` -/
def P5315789842860731985.Spec : Prop :=
  ∀ n, (P5315789842860731985.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P10714128135878570616

`lt[1, A074206(A225530(n)+1)]`
-/

namespace A039689.P10714128135878570616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A225530 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039689.P10714128135878570616

namespace A039689

/-- `lt[1, A074206(A225530(n)+1)]` -/
def P10714128135878570616.Spec : Prop :=
  ∀ n, (P10714128135878570616.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P14128019905403194438

`eq[1, A208645(A225530(n)-1)]`
-/

namespace A039689.P14128019905403194438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A225530 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039689.P14128019905403194438

namespace A039689

/-- `eq[1, A208645(A225530(n)-1)]` -/
def P14128019905403194438.Spec : Prop :=
  ∀ n, (P14128019905403194438.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P9080512592213717029

`lt[1, A219428(A225530(n)+1)]`
-/

namespace A039689.P9080512592213717029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (A225530 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039689.P9080512592213717029

namespace A039689

/-- `lt[1, A219428(A225530(n)+1)]` -/
def P9080512592213717029.Spec : Prop :=
  ∀ n, (P9080512592213717029.a n : ℤ) = A039689 (n + 1)

end A039689

/-! ## A039689.P14536988989268580278

`lt[A000010(A225530(n)+1), A225530(n)]`
-/

namespace A039689.P14536988989268580278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A225530 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039689.P14536988989268580278

namespace A039689

/-- `lt[A000010(A225530(n)+1), A225530(n)]` -/
def P14536988989268580278.Spec : Prop :=
  ∀ n, (P14536988989268580278.a n : ℤ) = A039689 (n + 1)

end A039689

/-!
# A039690: Ambitious numbers: numbers n with the property that if a number ends in n then it is divisible by n.

The programs for A039690, the canonical program `A039690.P2452179822933997664` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039690 has offset 1).

The definition of A039690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039690.P2452179822933997664

`10*a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=20, a(5)=25, a(6)=50, a(7)=100, a(8)=125`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A039690

/-- `10*a(n-5)` -/
def P2452179822933997664.Spec : Prop :=
  ∀ n, (P2452179822933997664.a n : ℤ) = A039690 (n + 1)

theorem P2452179822933997664.correct : P2452179822933997664.Spec := by
  intro n
  simp only [A039690, Nat.add_sub_cancel]

end A039690

/-! ## A039690.P15331275367735116272

`record[A194356(n)]`
-/

namespace A039690.P15331275367735116272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039690.P15331275367735116272

namespace A039690

/-- `record[A194356(n)]` -/
def P15331275367735116272.Spec : Prop :=
  ∀ n, P15331275367735116272.a n = A039690 (n + 1)

end A039690

/-! ## A039690.P10677223496302301432

`∩[A003592(n+1), A029455(n+1)]`
-/

namespace A039690.P10677223496302301432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039690.P10677223496302301432

namespace A039690

/-- `∩[A003592(n+1), A029455(n+1)]` -/
def P10677223496302301432.Spec : Prop :=
  ∀ n, (P10677223496302301432.a n : ℤ) = A039690 (n + 1)

end A039690

/-! ## A039690.P3512498046499297311

`∩[A029455(n+1), A192716(n+1)]`
-/

namespace A039690.P3512498046499297311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039690.P3512498046499297311

namespace A039690

/-- `∩[A029455(n+1), A192716(n+1)]` -/
def P3512498046499297311.Spec : Prop :=
  ∀ n, (P3512498046499297311.a n : ℤ) = A039690 (n + 1)

end A039690

/-! ## A039690.P14154123541076259923

`∩[A029455(n+1), A249398(n+1)]`
-/

namespace A039690.P14154123541076259923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039690.P14154123541076259923

namespace A039690

/-- `∩[A029455(n+1), A249398(n+1)]` -/
def P14154123541076259923.Spec : Prop :=
  ∀ n, (P14154123541076259923.a n : ℤ) = A039690 (n + 1)

end A039690

/-!
# A039691: If n=x1x2...xm in base 10, n belongs to the sequence iff x1x2..xm*11=y1y2...ym and xm..x2x1*11=ym...y2y1.

The programs for A039691, there is no canonical definition to state claims against.
-/

/-! ## A039691.P2788694476563111965

`comp[A291884(n+1)]`
-/

namespace A039691.P2788694476563111965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A039691.P2788694476563111965

/-! ## A039691.P1940429194669034137

`record[A059632(n)/11]`
-/

namespace A039691.P1940429194669034137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059632 n : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039691.P1940429194669034137

/-! ## A039691.P4904530131404316134

`eq[A008593(n), A059632(n)]`
-/

namespace A039691.P4904530131404316134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039691.P4904530131404316134

/-! ## A039691.P16486104978352471324

`record[gcd(A005843(n), A059632(n))]`
-/

namespace A039691.P16486104978352471324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A059632 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039691.P16486104978352471324

/-! ## A039691.P1569231324652013276

`record[A059632(n)-A008592(n)]`
-/

namespace A039691.P1569231324652013276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059632 n - A008592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039691.P1569231324652013276

/-! ## A039691.P2555863400672800448

`eq[2*A059632(n), A008604(n)]`
-/

namespace A039691.P2555863400672800448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039691.P2555863400672800448

/-! ## A039691.P16469955937666030045

`eq[11*A004086(n), A004086(11*n)]`
-/

namespace A039691.P16469955937666030045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039691.P16469955937666030045

/-! ## A039691.P6230138172080842053

`eq[2, gcd(2, A108773(A108773(n)))]`
-/

namespace A039691.P6230138172080842053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A108773 (A108773 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039691.P6230138172080842053

/-! ## A039691.P14449086037565521213

`A298639(n+1)%A220487(n+1)`
-/

namespace A039691.P14449086037565521213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298639 (n + 1)) (A220487 (n + 1))

end

end A039691.P14449086037565521213

/-! ## A039691.P2159691271415282215

`eq[2*A007953(n), A007953(A108773(n))]`
-/

namespace A039691.P2159691271415282215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A108773 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039691.P2159691271415282215

/-!
# A039692: Jabotinsky-triangle related to A039647.

The programs for A039692, there is no canonical definition to state claims against.
-/

/-! ## A039692.P9369578350953401518

`A194938(comp[∑[n]]+1)`
-/

namespace A039692.P9369578350953401518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194938 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A039692.P9369578350953401518

/-! ## A039692.P4554495734651987516

`filter[A194938(n+2), A276398(#)]`
-/

namespace A039692.P4554495734651987516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194938 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A039692.P4554495734651987516

/-!
# A039693: Twin Fibonacci-lucky numbers (lower terms).

The programs for A039693, there is no canonical definition to state claims against.
-/

/-! ## A039693.P14214803180489313373

`A039695(n+1)-1`
-/

namespace A039693.P14214803180489313373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039695 (n + 1) - 1

end

end A039693.P14214803180489313373

/-! ## A039693.P14434938431271292831

`A039694(n+1)-2`
-/

namespace A039693.P14434938431271292831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039694 (n + 1) - 2

end

end A039693.P14434938431271292831

/-! ## A039693.P17219091953600395608

`A039673(Δ[n²])`
-/

namespace A039693.P17219091953600395608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A039693.P17219091953600395608

/-! ## A039693.P3395053896897057567

`A039673(2*(n+1))-2`
-/

namespace A039693.P3395053896897057567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (2 * (n + 1)) - 2

end

end A039693.P3395053896897057567

/-! ## A039693.P18214862527299380576

`record[A033999(n)*A039673(n+1)]`
-/

namespace A039693.P18214862527299380576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A039673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039693.P18214862527299380576

/-! ## A039693.P11240985934424186145

`record[A039673(n+1)/A001511(n+1)]`
-/

namespace A039693.P11240985934424186145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039673 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039693.P11240985934424186145

/-! ## A039693.P5995067940272803194

`record[and(A039673(n+1), A280193(n+1))]`
-/

namespace A039693.P5995067940272803194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039673 (n + 1)) (A280193 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039693.P5995067940272803194

/-! ## A039693.P3913442786841427828

`∩[A039672(n+1)-2, A039672(n+1)]`
-/

namespace A039693.P3913442786841427828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P3913442786841427828

/-! ## A039693.P7163596743431291285

`A066182(A039695(n+1))`
-/

namespace A039693.P7163596743431291285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A039695 (n + 1)).toNat

end

end A039693.P7163596743431291285

/-! ## A039693.P9654478271976453467

`∩[A039673(n+1), A016789(n)]`
-/

namespace A039693.P9654478271976453467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P9654478271976453467

/-! ## A039693.P11210951733173772470

`∩[A039673(n+1), A016777(n)+1]`
-/

namespace A039693.P11210951733173772470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P11210951733173772470

/-! ## A039693.P13877453029722847261

`∩[A039673(n+1), A055048(n+1)]`
-/

namespace A039693.P13877453029722847261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P13877453029722847261

/-! ## A039693.P7973073451385169656

`∩[A039673(n+1), A055047(n+1)+1]`
-/

namespace A039693.P7973073451385169656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P7973073451385169656

/-! ## A039693.P1635206256262955327

`∩[A039673(n+1), A277574(n+1)]`
-/

namespace A039693.P1635206256262955327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P1635206256262955327

/-! ## A039693.P17872564996313308595

`∩[A039673(n+1), A277572(n+1)]-2`
-/

namespace A039693.P17872564996313308595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A039693.P17872564996313308595

/-! ## A039693.P16974243420018920494

`∩[A039673(n+1), A174438(n+1)]`
-/

namespace A039693.P16974243420018920494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P16974243420018920494

/-! ## A039693.P8476533502566651856

`∩[A026179(n+1), A039673(n+1)]`
-/

namespace A039693.P8476533502566651856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P8476533502566651856

/-! ## A039693.P17847806675051936634

`∩[A039673(n+1), A047254(n+1)]`
-/

namespace A039693.P17847806675051936634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P17847806675051936634

/-! ## A039693.P3487952651355122409

`∩[A039673(n+1), A047267(n+1)]`
-/

namespace A039693.P3487952651355122409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P3487952651355122409

/-! ## A039693.P8976986664344661559

`∩[A039673(n+1), A189716(n+1)]`
-/

namespace A039693.P8976986664344661559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039693.P8976986664344661559

/-!
# A039694: Twin Fibonacci-lucky numbers (upper terms).

The programs for A039694, there is no canonical definition to state claims against.
-/

/-! ## A039694.P10900879112210036074

`A039693(n+1)+2`
-/

namespace A039694.P10900879112210036074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039693 (n + 1) + 2

end

end A039694.P10900879112210036074

/-! ## A039694.P353858007688471961

`A039695(n+1)+1`
-/

namespace A039694.P353858007688471961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039695 (n + 1) + 1

end

end A039694.P353858007688471961

/-! ## A039694.P16247826898195229058

`A039673(2*(n+1))`
-/

namespace A039694.P16247826898195229058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (2 * (n + 1))

end

end A039694.P16247826898195229058

/-! ## A039694.P11320810932008003016

`A039673(Δ[n²])+2`
-/

namespace A039694.P11320810932008003016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A039694.P11320810932008003016

/-! ## A039694.P12119962479659217803

`record[A039673(xor(1, n)+1)]`
-/

namespace A039694.P12119962479659217803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039694.P12119962479659217803

/-! ## A039694.P10859450670234838426

`abs(A039673(n+2+n)-2)+2`
-/

namespace A039694.P10859450670234838426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039673 (n + 2 + n) - 2| + 2

end

end A039694.P10859450670234838426

/-! ## A039694.P11060716610454563485

`record[and(A039673(n+2), A280193(n+1))]`
-/

namespace A039694.P11060716610454563485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039673 (n + 2)) (A280193 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039694.P11060716610454563485

/-! ## A039694.P3152769598913626225

`record[(A039673(n+1)+2)/A001511(n+1)]`
-/

namespace A039694.P3152769598913626225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039673 (n + 1) + 2 : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039694.P3152769598913626225

/-! ## A039694.P479464731340930695

`∩[A039672(n+1)+2, A039672(n+1)]`
-/

namespace A039694.P479464731340930695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P479464731340930695

/-! ## A039694.P7450492940207499914

`∩[A039673(n+1), A056991(n+1)]`
-/

namespace A039694.P7450492940207499914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P7450492940207499914

/-! ## A039694.P1442365832190966322

`∩[A039673(n+1), A242660(n+1)]`
-/

namespace A039694.P1442365832190966322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P1442365832190966322

/-! ## A039694.P2511686989214902657

`∩[A039673(n+1), A125758(n+1)]`
-/

namespace A039694.P2511686989214902657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P2511686989214902657

/-! ## A039694.P4435991417708503950

`∩[A039673(n+1), A016777(n)]`
-/

namespace A039694.P4435991417708503950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P4435991417708503950

/-! ## A039694.P5698036333651951068

`∩[A039673(n+1), A234429(n+1)]`
-/

namespace A039694.P5698036333651951068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P5698036333651951068

/-! ## A039694.P2331726110008182855

`∩[A039673(n+1), A016789(n)-1]`
-/

namespace A039694.P2331726110008182855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P2331726110008182855

/-! ## A039694.P9564736400791239694

`∩[A039673(n+1), A055047(n+1)]`
-/

namespace A039694.P9564736400791239694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P9564736400791239694

/-! ## A039694.P17461105371598787265

`∩[A039673(n+1), A055048(n+1)-1]`
-/

namespace A039694.P17461105371598787265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P17461105371598787265

/-! ## A039694.P16015908398416431181

`∩[A039673(n+1), A277574(n+1)]+2`
-/

namespace A039694.P16015908398416431181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A039694.P16015908398416431181

/-! ## A039694.P7136506748367695713

`∩[A039673(n+1), A277572(n+1)]`
-/

namespace A039694.P7136506748367695713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P7136506748367695713

/-! ## A039694.P16689974548090706264

`∩[A039673(n+1), A244713(n+1)]`
-/

namespace A039694.P16689974548090706264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039694.P16689974548090706264

/-!
# A039695: Twin Fibonacci-lucky numbers (middle terms).

The programs for A039695, there is no canonical definition to state claims against.
-/

/-! ## A039695.P11817756068324440317

`A039693(n+1)+1`
-/

namespace A039695.P11817756068324440317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039693 (n + 1) + 1

end

end A039695.P11817756068324440317

/-! ## A039695.P9807997203158844225

`A039694(n+1)-1`
-/

namespace A039695.P9807997203158844225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039694 (n + 1) - 1

end

end A039695.P9807997203158844225

/-! ## A039695.P951608334416495055

`A039673(Δ[n²])+1`
-/

namespace A039695.P951608334416495055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A039695.P951608334416495055

/-! ## A039695.P8448229610110739912

`abs(1-A039673(2*(n+1)))`
-/

namespace A039695.P8448229610110739912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A039673 (2 * (n + 1))|

end

end A039695.P8448229610110739912

/-! ## A039695.P3303167316559301647

`record[A039673(n+2)-A280193(n)]`
-/

namespace A039695.P3303167316559301647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 2) - A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039695.P3303167316559301647

/-! ## A039695.P4143139864820748105

`record[(A039673(n+1)+1)/A001511(n+1)]`
-/

namespace A039695.P4143139864820748105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039673 (n + 1) + 1 : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039695.P4143139864820748105

/-! ## A039695.P9840903758219026114

`∩[A039673(n+1), A056991(n+1)]-1`
-/

namespace A039695.P9840903758219026114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039695.P9840903758219026114

/-! ## A039695.P7325363621396369458

`∩[A039673(n+1), A242660(n+1)]-1`
-/

namespace A039695.P7325363621396369458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039695.P7325363621396369458

/-! ## A039695.P10204217936612460445

`∩[A039673(n+1), A125758(n+1)]-1`
-/

namespace A039695.P10204217936612460445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039695.P10204217936612460445

/-! ## A039695.P12932919229178011477

`∩[A039673(n+1), A016789(n)]+1`
-/

namespace A039695.P12932919229178011477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A039695.P12932919229178011477

/-! ## A039695.P16200271463987822913

`∩[A039673(n+1), A016777(n)]-1`
-/

namespace A039695.P16200271463987822913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039695.P16200271463987822913

/-! ## A039695.P14059821668170039439

`∩[A039673(n+1), A055048(n+1)]+1`
-/

namespace A039695.P14059821668170039439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A039695.P14059821668170039439

/-! ## A039695.P8113705888081309299

`∩[A039673(n+1), A055047(n+1)]-1`
-/

namespace A039695.P8113705888081309299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039695.P8113705888081309299

/-! ## A039695.P5504584304682182151

`∩[A039673(n+1), A277574(n+1)]+1`
-/

namespace A039695.P5504584304682182151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A039695.P5504584304682182151

/-! ## A039695.P14851513971537962433

`∩[A039673(n+1), A277572(n+1)]-1`
-/

namespace A039695.P14851513971537962433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039695.P14851513971537962433

/-! ## A039695.P6957584045912021291

`∩[A039673(n+1), A244713(n+1)]-1`
-/

namespace A039695.P6957584045912021291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244713 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039695.P6957584045912021291

/-! ## A039695.P3213913401317793748

`∩[A039673(n+1), A174438(n+1)]+1`
-/

namespace A039695.P3213913401317793748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A039695.P3213913401317793748

/-! ## A039695.P2258772482700992948

`∩[A026179(n+1), A039673(n+1)]+1`
-/

namespace A039695.P2258772482700992948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A039695.P2258772482700992948

/-! ## A039695.P11172898094528521145

`∩[A039673(n+1), A047254(n+1)]+1`
-/

namespace A039695.P11172898094528521145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A039695.P11172898094528521145

/-! ## A039695.P17521002688805822400

`∩[A039673(n+1), A189715(n+1)]-1`
-/

namespace A039695.P17521002688805822400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039695.P17521002688805822400

/-!
# A039696: If n = Product (p_j^k_j) then a(n) = Product (p_j) + Product (k_j).

The programs for A039696, the canonical program `A039696.P2737647612043200767` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039696 has offset 1).

The definition of A039696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039696.P2737647612043200767

`A007947(n+1)+A005361(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039696

/-- `A007947(n+1)+A005361(n+1)` -/
def P2737647612043200767.Spec : Prop :=
  ∀ n, P2737647612043200767.a n = A039696 (n + 1)

theorem P2737647612043200767.correct : P2737647612043200767.Spec := by
  intro n
  simp only [A039696, Nat.add_sub_cancel]

end A039696

/-! ## A039696.P15276209681114802357

`∏{e}[1+n, #]+∏{p}[n+1, #]`
-/

namespace A039696.P15276209681114802357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + ∏ p ∈ Nat.primeFactors (f2 n), p

end

end A039696.P15276209681114802357

namespace A039696

/-- `∏{e}[1+n, #]+∏{p}[n+1, #]` -/
def P15276209681114802357.Spec : Prop :=
  ∀ n, (P15276209681114802357.a n : ℤ) = A039696 (n + 1)

end A039696

/-! ## A039696.P8692206227414465870

`∏{p}[n+1, val(n+1, #)]+∏{p}[n+1, #]`
-/

namespace A039696.P8692206227414465870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p + ∏ p ∈ Nat.primeFactors (f2 n), p

end

end A039696.P8692206227414465870

namespace A039696

/-- `∏{p}[n+1, val(n+1, #)]+∏{p}[n+1, #]` -/
def P8692206227414465870.Spec : Prop :=
  ∀ n, (P8692206227414465870.a n : ℤ) = A039696 (n + 1)

end A039696

/-! ## A039696.P15244144605161056309

`A005361(n+1)+∏{p}[n+1, #]`
-/

namespace A039696.P15244144605161056309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A039696.P15244144605161056309

namespace A039696

/-- `A005361(n+1)+∏{p}[n+1, #]` -/
def P15244144605161056309.Spec : Prop :=
  ∀ n, P15244144605161056309.a n = A039696 (n + 1)

theorem P15244144605161056309.correct : P15244144605161056309.Spec := by
  intro n
  simp only [A039696, Nat.add_sub_cancel, A039696.P15244144605161056309.f1, A039696.P15244144605161056309.a, A039696.P2737647612043200767.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039696

/-! ## A039696.P8148022082903816822

`A007947(n+1)+∏{e}[1+n, #]`
-/

namespace A039696.P8148022082903816822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A039696.P8148022082903816822

namespace A039696

/-- `A007947(n+1)+∏{e}[1+n, #]` -/
def P8148022082903816822.Spec : Prop :=
  ∀ n, P8148022082903816822.a n = A039696 (n + 1)

end A039696

/-! ## A039696.P8095423483368473574

`A000005((n+1)/∏{p}[n+1, #])+∏{p}[n+1, #]`
-/

namespace A039696.P8095423483368473574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat + ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A039696.P8095423483368473574

namespace A039696

/-- `A000005((n+1)/∏{p}[n+1, #])+∏{p}[n+1, #]` -/
def P8095423483368473574.Spec : Prop :=
  ∀ n, P8095423483368473574.a n = A039696 (n + 1)

theorem P8095423483368473574.correct : P8095423483368473574.Spec := by
  intro n
  simp only [A039696, Nat.add_sub_cancel, A039696.P8095423483368473574.f1, A039696.P8095423483368473574.f2, A039696.P8095423483368473574.a, A039696.P2737647612043200767.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039696

/-! ## A039696.P15540418393909481047

`A183094(n+1)+A076618(n+1)`
-/

namespace A039696.P15540418393909481047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1) + A076618 (n + 1)

end

end A039696.P15540418393909481047

namespace A039696

/-- `A183094(n+1)+A076618(n+1)` -/
def P15540418393909481047.Spec : Prop :=
  ∀ n, P15540418393909481047.a n = A039696 (n + 1)

theorem P15540418393909481047.correct : P15540418393909481047.Spec := by
  intro n
  simp only [A039696, Nat.add_sub_cancel, A039696.P15540418393909481047.a, A039696.P2737647612043200767.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076618, A076618.P8099091245670450071.a, A183094, A183094.P2300528291682876645.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039696

/-! ## A039696.P1093238518557934243

`A007947(n+1)+A183094(n+1)+1`
-/

namespace A039696.P1093238518557934243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A183094 (n + 1) + 1)

end

end A039696.P1093238518557934243

namespace A039696

/-- `A007947(n+1)+A183094(n+1)+1` -/
def P1093238518557934243.Spec : Prop :=
  ∀ n, P1093238518557934243.a n = A039696 (n + 1)

theorem P1093238518557934243.correct : P1093238518557934243.Spec := by
  intro n
  simp only [A039696, Nat.add_sub_cancel, A039696.P1093238518557934243.a, A039696.P2737647612043200767.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A183094, A183094.P2300528291682876645.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039696

/-! ## A039696.P5691608798475329724

`A007947(n+1)+A000005(A003557(n+1))`
-/

namespace A039696.P5691608798475329724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A000005 (A003557 (n + 1)).toNat

end

end A039696.P5691608798475329724

namespace A039696

/-- `A007947(n+1)+A000005(A003557(n+1))` -/
def P5691608798475329724.Spec : Prop :=
  ∀ n, P5691608798475329724.a n = A039696 (n + 1)

end A039696

/-! ## A039696.P3154540857827565669

`A015052(A015052(n+1))+A005361(n+1)`
-/

namespace A039696.P3154540857827565669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat + A005361 (n + 1)

end

end A039696.P3154540857827565669

namespace A039696

/-- `A015052(A015052(n+1))+A005361(n+1)` -/
def P3154540857827565669.Spec : Prop :=
  ∀ n, P3154540857827565669.a n = A039696 (n + 1)

end A039696

/-! ## A039696.P14445123864661599253

`A015053(A015053(n+1))+A005361(n+1)`
-/

namespace A039696.P14445123864661599253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat + A005361 (n + 1)

end

end A039696.P14445123864661599253

namespace A039696

/-- `A015053(A015053(n+1))+A005361(n+1)` -/
def P14445123864661599253.Spec : Prop :=
  ∀ n, P14445123864661599253.a n = A039696 (n + 1)

end A039696

/-! ## A039696.P11569440011429035806

`A007947(n+1)+A003963(A181819(n+1))`
-/

namespace A039696.P11569440011429035806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A003963 (A181819 (n + 1)).toNat

end

end A039696.P11569440011429035806

namespace A039696

/-- `A007947(n+1)+A003963(A181819(n+1))` -/
def P11569440011429035806.Spec : Prop :=
  ∀ n, P11569440011429035806.a n = A039696 (n + 1)

end A039696

/-! ## A039696.P18224790455042561673

`A007947(n+1)+A000005(A336551(n+1)+1)`
-/

namespace A039696.P18224790455042561673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A000005 (A336551 (n + 1) + 1).toNat

end

end A039696.P18224790455042561673

namespace A039696

/-- `A007947(n+1)+A000005(A336551(n+1)+1)` -/
def P18224790455042561673.Spec : Prop :=
  ∀ n, P18224790455042561673.a n = A039696 (n + 1)

theorem P18224790455042561673.correct : P18224790455042561673.Spec := by
  intro n
  simp only [A039696, Nat.add_sub_cancel, A039696.P18224790455042561673.a, A039696.P2737647612043200767.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A336551, A336551.P8666843674191054020.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039696

/-! ## A039696.P2869382500097666665

`A000005(n+1)+A007947(n+1)-A183093(n+1)`
-/

namespace A039696.P2869382500097666665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A007947 (n + 1) - A183093 (n + 1))

end

end A039696.P2869382500097666665

namespace A039696

/-- `A000005(n+1)+A007947(n+1)-A183093(n+1)` -/
def P2869382500097666665.Spec : Prop :=
  ∀ n, P2869382500097666665.a n = A039696 (n + 1)

theorem P2869382500097666665.correct : P2869382500097666665.Spec := by
  intro n
  simp only [A039696, Nat.add_sub_cancel, A039696.P2869382500097666665.a, A039696.P2737647612043200767.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A183093, A183093.P17608197149960352927.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A039696

/-! ## A039696.P8448672039939527498

`A005361(n+1)+A000026(n+1)/A005361(n+1)`
-/

namespace A039696.P8448672039939527498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) + (A000026 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ)

end

end A039696.P8448672039939527498

namespace A039696

/-- `A005361(n+1)+A000026(n+1)/A005361(n+1)` -/
def P8448672039939527498.Spec : Prop :=
  ∀ n, P8448672039939527498.a n = (A039696 (n + 1) : ℚ)

end A039696

/-! ## A039696.P3871367272834425765

`A007947(n+1)+A000026(n+1)/A007947(n+1)`
-/

namespace A039696.P3871367272834425765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) + (A000026 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A039696.P3871367272834425765

namespace A039696

/-- `A007947(n+1)+A000026(n+1)/A007947(n+1)` -/
def P3871367272834425765.Spec : Prop :=
  ∀ n, P3871367272834425765.a n = (A039696 (n + 1) : ℚ)

end A039696

/-! ## A039696.P14317553695761847914

`A007947(n+1)+A203639(n+1)/A003557(n+1)`
-/

namespace A039696.P14317553695761847914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) + (A203639 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A039696.P14317553695761847914

namespace A039696

/-- `A007947(n+1)+A203639(n+1)/A003557(n+1)` -/
def P14317553695761847914.Spec : Prop :=
  ∀ n, P14317553695761847914.a n = (A039696 (n + 1) : ℚ)

end A039696

/-! ## A039696.P6662907740704781360

`A007947(n+1)+A304411(n+1)/A048250(n+1)`
-/

namespace A039696.P6662907740704781360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) + (A304411 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A039696.P6662907740704781360

namespace A039696

/-- `A007947(n+1)+A304411(n+1)/A048250(n+1)` -/
def P6662907740704781360.Spec : Prop :=
  ∀ n, P6662907740704781360.a n = (A039696 (n + 1) : ℚ)

end A039696

/-! ## A039696.P15520766700025543447

`A005361(n+1)+A057723(n+1)/A335341(n+1)`
-/

namespace A039696.P15520766700025543447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) + (A057723 (n + 1) : ℚ) / (A335341 (n + 1) : ℚ)

end

end A039696.P15520766700025543447

namespace A039696

/-- `A005361(n+1)+A057723(n+1)/A335341(n+1)` -/
def P15520766700025543447.Spec : Prop :=
  ∀ n, P15520766700025543447.a n = (A039696 (n + 1) : ℚ)

end A039696

/-! ## A039696.P463029108470116488

`A007947(n+1)+A361265(n+1)/A064549(n+1)`
-/

namespace A039696.P463029108470116488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) + (A361265 (n + 1) : ℚ) / (A064549 (n + 1) : ℚ)

end

end A039696.P463029108470116488

namespace A039696

/-- `A007947(n+1)+A361265(n+1)/A064549(n+1)` -/
def P463029108470116488.Spec : Prop :=
  ∀ n, P463029108470116488.a n = (A039696 (n + 1) : ℚ)

end A039696

/-!
# A039697: a(n) = Sum(p_j) * Sum(k_j) where n = Product(p_j^k_j).

The programs for A039697, the canonical program `A039697.P11451325608096116962` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039697 has offset 1).

The definition of A039697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039697.P11451325608096116962

`A001222(n+1)*A008472(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039697

/-- `A001222(n+1)*A008472(n+1)` -/
def P11451325608096116962.Spec : Prop :=
  ∀ n, P11451325608096116962.a n = A039697 (n + 1)

theorem P11451325608096116962.correct : P11451325608096116962.Spec := by
  intro n
  simp only [A039697, Nat.add_sub_cancel]

end A039697

/-! ## A039697.P1172326278095642753

`∑{p}[1+n, #]*∑{e}[n+1, #]`
-/

namespace A039697.P1172326278095642753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A039697.P1172326278095642753

namespace A039697

/-- `∑{p}[1+n, #]*∑{e}[n+1, #]` -/
def P1172326278095642753.Spec : Prop :=
  ∀ n, (P1172326278095642753.a n : ℤ) = A039697 (n + 1)

theorem P1172326278095642753.correct : P1172326278095642753.Spec := by
  intro n
  simp only [A039697, Nat.add_sub_cancel, A039697.P1172326278095642753.f1, A039697.P1172326278095642753.f2, A039697.P1172326278095642753.a, A039697.P11451325608096116962.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039697

/-! ## A039697.P17839439479577466274

`Δ[A022559(n)]*∑{p}[1+n, #]`
-/

namespace A039697.P17839439479577466274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A039697.P17839439479577466274

namespace A039697

/-- `Δ[A022559(n)]*∑{p}[1+n, #]` -/
def P17839439479577466274.Spec : Prop :=
  ∀ n, P17839439479577466274.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P10105923009151155564

`∑{p}[1+n, #]*A001222(n+1)`
-/

namespace A039697.P10105923009151155564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A001222 (n + 1)

end

end A039697.P10105923009151155564

namespace A039697

/-- `∑{p}[1+n, #]*A001222(n+1)` -/
def P10105923009151155564.Spec : Prop :=
  ∀ n, P10105923009151155564.a n = A039697 (n + 1)

theorem P10105923009151155564.correct : P10105923009151155564.Spec := by
  intro n
  simp only [A039697, Nat.add_sub_cancel, A039697.P10105923009151155564.f1, A039697.P10105923009151155564.a, A039697.P11451325608096116962.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039697

/-! ## A039697.P14241596257166331545

`∑{e}[n+1, #]*A008472(n+1)`
-/

namespace A039697.P14241596257166331545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A008472 (n + 1)

end

end A039697.P14241596257166331545

namespace A039697

/-- `∑{e}[n+1, #]*A008472(n+1)` -/
def P14241596257166331545.Spec : Prop :=
  ∀ n, P14241596257166331545.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P2845587933663785212

`∑{e}[n+1, #]*A001414(∏{p}[n+1, #])`
-/

namespace A039697.P2845587933663785212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A001414 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A039697.P2845587933663785212

namespace A039697

/-- `∑{e}[n+1, #]*A001414(∏{p}[n+1, #])` -/
def P2845587933663785212.Spec : Prop :=
  ∀ n, P2845587933663785212.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P94788766065617875

`A369743(n+1)+A008472(n+1)`
-/

namespace A039697.P94788766065617875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369743 (n + 1) + A008472 (n + 1)

end

end A039697.P94788766065617875

namespace A039697

/-- `A369743(n+1)+A008472(n+1)` -/
def P94788766065617875.Spec : Prop :=
  ∀ n, P94788766065617875.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P15836418903422599891

`A008472(n+1)*A086436(n+1)`
-/

namespace A039697.P15836418903422599891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A086436 (n + 1)

end

end A039697.P15836418903422599891

namespace A039697

/-- `A008472(n+1)*A086436(n+1)` -/
def P15836418903422599891.Spec : Prop :=
  ∀ n, P15836418903422599891.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P12435112117191606557

`∑{d}[n+1, A008472(#)*A010055((n+1)/#)]`
-/

namespace A039697.P12435112117191606557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A010055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A039697.P12435112117191606557

namespace A039697

/-- `∑{d}[n+1, A008472(#)*A010055((n+1)/#)]` -/
def P12435112117191606557.Spec : Prop :=
  ∀ n, P12435112117191606557.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P11216239773671401239

`∑{d}[n+1, A061397(#)*A073093((n+1)/#)]`
-/

namespace A039697.P11216239773671401239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d * A073093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A039697.P11216239773671401239

namespace A039697

/-- `∑{d}[n+1, A061397(#)*A073093((n+1)/#)]` -/
def P11216239773671401239.Spec : Prop :=
  ∀ n, P11216239773671401239.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P17227300012270252638

`A001222(n+1)*A306328(A007947(n+1))`
-/

namespace A039697.P17227300012270252638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A306328 (A007947 (n + 1)).toNat

end

end A039697.P17227300012270252638

namespace A039697

/-- `A001222(n+1)*A306328(A007947(n+1))` -/
def P17227300012270252638.Spec : Prop :=
  ∀ n, P17227300012270252638.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P16525902893056526979

`(A022559(n+1)-A022559(n))*A008472(n+1)`
-/

namespace A039697.P16525902893056526979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022559 (n + 1) - A022559 n) * A008472 (n + 1)

end

end A039697.P16525902893056526979

namespace A039697

/-- `(A022559(n+1)-A022559(n))*A008472(n+1)` -/
def P16525902893056526979.Spec : Prop :=
  ∀ n, P16525902893056526979.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P13468845537080052785

`A061397(n+1)+A105221(n+1)*A144494(n+1)`
-/

namespace A039697.P13468845537080052785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + A105221 (n + 1) * A144494 (n + 1)

end

end A039697.P13468845537080052785

namespace A039697

/-- `A061397(n+1)+A105221(n+1)*A144494(n+1)` -/
def P13468845537080052785.Spec : Prop :=
  ∀ n, P13468845537080052785.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P14120106878113313725

`(A008474(n+1)-A001222(n+1))*A001222(n+1)`
-/

namespace A039697.P14120106878113313725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008474 (n + 1) - A001222 (n + 1)) * A001222 (n + 1)

end

end A039697.P14120106878113313725

namespace A039697

/-- `(A008474(n+1)-A001222(n+1))*A001222(n+1)` -/
def P14120106878113313725.Spec : Prop :=
  ∀ n, P14120106878113313725.a n = A039697 (n + 1)

theorem P14120106878113313725.correct : P14120106878113313725.Spec := by
  intro n
  simp only [A039697, Nat.add_sub_cancel, A039697.P14120106878113313725.a, A039697.P11451325608096116962.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A008474, A008474.P119709174749842562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039697

/-! ## A039697.P13325365827341382595

`(A008474(n+1)-A008472(n+1))*A008472(n+1)`
-/

namespace A039697.P13325365827341382595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008474 (n + 1) - A008472 (n + 1)) * A008472 (n + 1)

end

end A039697.P13325365827341382595

namespace A039697

/-- `(A008474(n+1)-A008472(n+1))*A008472(n+1)` -/
def P13325365827341382595.Spec : Prop :=
  ∀ n, P13325365827341382595.a n = A039697 (n + 1)

theorem P13325365827341382595.correct : P13325365827341382595.Spec := by
  intro n
  simp only [A039697, Nat.add_sub_cancel, A039697.P13325365827341382595.a, A039697.P11451325608096116962.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A008474, A008474.P119709174749842562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039697

/-! ## A039697.P5950232661840275585

`A001222(n+1)*A074372(n+1)-A001222(n+1)`
-/

namespace A039697.P5950232661840275585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A074372 (n + 1) - A001222 (n + 1)

end

end A039697.P5950232661840275585

namespace A039697

/-- `A001222(n+1)*A074372(n+1)-A001222(n+1)` -/
def P5950232661840275585.Spec : Prop :=
  ∀ n, P5950232661840275585.a n = A039697 (n + 1)

theorem P5950232661840275585.correct : P5950232661840275585.Spec := by
  intro n
  simp only [A039697, Nat.add_sub_cancel, A039697.P5950232661840275585.a, A039697.P11451325608096116962.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A074372, A074372.P4137528993984796168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A039697

/-! ## A039697.P7220447627620332766

`A369743(A129598(n+1))`
-/

namespace A039697.P7220447627620332766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369743 (A129598 (n + 1)).toNat

end

end A039697.P7220447627620332766

namespace A039697

/-- `A369743(A129598(n+1))` -/
def P7220447627620332766.Spec : Prop :=
  ∀ n, P7220447627620332766.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P8735474991158803253

`A369743(A253560(n+1))`
-/

namespace A039697.P8735474991158803253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369743 (A253560 (n + 1)).toNat

end

end A039697.P8735474991158803253

namespace A039697

/-- `A369743(A253560(n+1))` -/
def P8735474991158803253.Spec : Prop :=
  ∀ n, P8735474991158803253.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P15890858966005698641

`A369743(A285109(n+1))`
-/

namespace A039697.P15890858966005698641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369743 (A285109 (n + 1)).toNat

end

end A039697.P15890858966005698641

namespace A039697

/-- `A369743(A285109(n+1))` -/
def P15890858966005698641.Spec : Prop :=
  ∀ n, P15890858966005698641.a n = A039697 (n + 1)

end A039697

/-! ## A039697.P14890481113570393603

`A369743((n+1)²)-A369743(n+1)`
-/

namespace A039697.P14890481113570393603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369743 ((n + 1) ^ 2) - A369743 (n + 1)

end

end A039697.P14890481113570393603

namespace A039697

/-- `A369743((n+1)²)-A369743(n+1)` -/
def P14890481113570393603.Spec : Prop :=
  ∀ n, P14890481113570393603.a n = A039697 (n + 1)

end A039697

/-!
# A039698: Numbers k such that phi(k) + 1 is prime.

The programs for A039698, the canonical program `A039698.P6509222349320207306` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039698 has offset 1).

The definition of A039698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039698.P6509222349320207306

`eq[1, A296079(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039698

/-- `eq[1, A296079(n+1)]+1` -/
def P6509222349320207306.Spec : Prop :=
  ∀ n, (P6509222349320207306.a n : ℤ) = A039698 (n + 1)

theorem P6509222349320207306.correct : P6509222349320207306.Spec := by
  intro n
  simp only [A039698, Nat.add_sub_cancel]

end A039698

/-! ## A039698.P12051841921782660403

`eq[2, A296078(n+1)]+1`
-/

namespace A039698.P12051841921782660403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P12051841921782660403

namespace A039698

/-- `eq[2, A296078(n+1)]+1` -/
def P12051841921782660403.Spec : Prop :=
  ∀ n, (P12051841921782660403.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P16632657556613118294

`∪[A000040(n+1), A066071(n+1)]`
-/

namespace A039698.P16632657556613118294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039698.P16632657556613118294

namespace A039698

/-- `∪[A000040(n+1), A066071(n+1)]` -/
def P16632657556613118294.Spec : Prop :=
  ∀ n, (P16632657556613118294.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P7075710523758147216

`∪[A001751(n+1), A066071(n+1)]`
-/

namespace A039698.P7075710523758147216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039698.P7075710523758147216

namespace A039698

/-- `∪[A001751(n+1), A066071(n+1)]` -/
def P7075710523758147216.Spec : Prop :=
  ∀ n, (P7075710523758147216.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P8997403260858142774

`∪[A008578(n+1), A066071(n+1)]`
-/

namespace A039698.P8997403260858142774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039698.P8997403260858142774

namespace A039698

/-- `∪[A008578(n+1), A066071(n+1)]` -/
def P8997403260858142774.Spec : Prop :=
  ∀ n, (P8997403260858142774.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P18351498285751300316

`∪[A046022(n+1), A066071(n+1)]`
-/

namespace A039698.P18351498285751300316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039698.P18351498285751300316

namespace A039698

/-- `∪[A046022(n+1), A066071(n+1)]` -/
def P18351498285751300316.Spec : Prop :=
  ∀ n, (P18351498285751300316.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P17077501618058658274

`∪[A051948(n+1), A066071(n+1)]`
-/

namespace A039698.P17077501618058658274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039698.P17077501618058658274

namespace A039698

/-- `∪[A051948(n+1), A066071(n+1)]` -/
def P17077501618058658274.Spec : Prop :=
  ∀ n, (P17077501618058658274.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P2389403455535866305

`∪[A066071(n+1), A067126(n+1)]`
-/

namespace A039698.P2389403455535866305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039698.P2389403455535866305

namespace A039698

/-- `∪[A066071(n+1), A067126(n+1)]` -/
def P2389403455535866305.Spec : Prop :=
  ∀ n, (P2389403455535866305.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P1967999974105357232

`eq[1, A001222(A000010(n+1)+1)]+1`
-/

namespace A039698.P1967999974105357232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P1967999974105357232

namespace A039698

/-- `eq[1, A001222(A000010(n+1)+1)]+1` -/
def P1967999974105357232.Spec : Prop :=
  ∀ n, (P1967999974105357232.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P16485439572195350389

`eq[2, A000005(A000010(n+1)+1)]+1`
-/

namespace A039698.P16485439572195350389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P16485439572195350389

namespace A039698

/-- `eq[2, A000005(A000010(n+1)+1)]+1` -/
def P16485439572195350389.Spec : Prop :=
  ∀ n, (P16485439572195350389.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P12277809020101402316

`eq[A000010(n+1), A000010(A000010(n+1)+1)]+1`
-/

namespace A039698.P12277809020101402316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039698.P12277809020101402316

namespace A039698

/-- `eq[A000010(n+1), A000010(A000010(n+1)+1)]+1` -/
def P12277809020101402316.Spec : Prop :=
  ∀ n, (P12277809020101402316.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P9985271975951328898

`eq[1, A330773(A000010(n+1))]+1`
-/

namespace A039698.P9985271975951328898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P9985271975951328898

namespace A039698

/-- `eq[1, A330773(A000010(n+1))]+1` -/
def P9985271975951328898.Spec : Prop :=
  ∀ n, (P9985271975951328898.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P13376398541421308584

`eq[3, A303822(A000010(n+1)+1)]+1`
-/

namespace A039698.P13376398541421308584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303822 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P13376398541421308584

namespace A039698

/-- `eq[3, A303822(A000010(n+1)+1)]+1` -/
def P13376398541421308584.Spec : Prop :=
  ∀ n, (P13376398541421308584.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P5877996226498342661

`record[(n+1)/A284289(A000010(n+1)+1)]`
-/

namespace A039698.P5877996226498342661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284289 (A000010 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039698.P5877996226498342661

namespace A039698

/-- `record[(n+1)/A284289(A000010(n+1)+1)]` -/
def P5877996226498342661.Spec : Prop :=
  ∀ n, P5877996226498342661.a n = (A039698 (n + 1) : ℚ)

end A039698

/-! ## A039698.P16919697611512290954

`eq[1, A066422(n+1)]+1`
-/

namespace A039698.P16919697611512290954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066422 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P16919697611512290954

namespace A039698

/-- `eq[1, A066422(n+1)]+1` -/
def P16919697611512290954.Spec : Prop :=
  ∀ n, (P16919697611512290954.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P4358138461502217420

`eq[1, A072344(n+1)]+1`
-/

namespace A039698.P4358138461502217420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072344 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P4358138461502217420

namespace A039698

/-- `eq[1, A072344(n+1)]+1` -/
def P4358138461502217420.Spec : Prop :=
  ∀ n, (P4358138461502217420.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P6279387604840365282

`eq[1, A072917(n+1)]+1`
-/

namespace A039698.P6279387604840365282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P6279387604840365282

namespace A039698

/-- `eq[1, A072917(n+1)]+1` -/
def P6279387604840365282.Spec : Prop :=
  ∀ n, (P6279387604840365282.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P11624671510075225952

`lt[A039651(n+1), 2]+1`
-/

namespace A039698.P11624671510075225952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A039698.P11624671510075225952

namespace A039698

/-- `lt[A039651(n+1), 2]+1` -/
def P11624671510075225952.Spec : Prop :=
  ∀ n, (P11624671510075225952.a n : ℤ) = A039698 (n + 1)

end A039698

/-! ## A039698.P1696146289471587143

`eq[2, A000005(A039649(n+1))]+1`
-/

namespace A039698.P1696146289471587143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039649 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039698.P1696146289471587143

namespace A039698

/-- `eq[2, A000005(A039649(n+1))]+1` -/
def P1696146289471587143.Spec : Prop :=
  ∀ n, (P1696146289471587143.a n : ℤ) = A039698 (n + 1)

end A039698

/-!
# A039699: Number of 4-dimensional cubic lattice walks that start and end at the origin after 2n steps, free to pass through origin at intermediate stages.

The programs for A039699, there is no canonical definition to state claims against.
-/

/-! ## A039699.P15072767222000927279

`C(2*n, n)*A002895(n)`
-/

namespace A039699.P15072767222000927279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A002895 n

end

end A039699.P15072767222000927279

/-! ## A039699.P15730041263390451742

`A000984(n)*A002895(n)`
-/

namespace A039699.P15730041263390451742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A002895 n

end

end A039699.P15730041263390451742

/-! ## A039699.P1494623708717643934

`sqrt(A002894(n))*A002895(n)`
-/

namespace A039699.P1494623708717643934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A002895 n : ℝ)

end

end A039699.P1494623708717643934

/-! ## A039699.P9096118640455985529

`record[A081668(n)]*A002895(n)`
-/

namespace A039699.P9096118640455985529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002895 n

end

end A039699.P9096118640455985529

/-! ## A039699.P9298587353344186026

`record[A126869(n)]*A002895(n)`
-/

namespace A039699.P9298587353344186026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002895 n

end

end A039699.P9298587353344186026

/-! ## A039699.P1734953400917782890

`A001405(2*n)*A002895(n)`
-/

namespace A039699.P1734953400917782890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A002895 n

end

end A039699.P1734953400917782890

/-! ## A039699.P2705520596584493551

`A002895(n)*A081668(2*n)`
-/

namespace A039699.P2705520596584493551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002895 n * A081668 (2 * n)

end

end A039699.P2705520596584493551

/-! ## A039699.P9753430314064720427

`A002895(n)*A126869(2*n)`
-/

namespace A039699.P9753430314064720427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002895 n * A126869 (2 * n)

end

end A039699.P9753430314064720427

/-! ## A039699.P4605346219259268182

`A002895(n)*A007318(A046092(n))`
-/

namespace A039699.P4605346219259268182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002895 n * A007318 (A046092 n).toNat

end

end A039699.P4605346219259268182

/-! ## A039699.P11328550601467986025

`A002895(n)/A002893(n)*A002896(n)`
-/

namespace A039699.P11328550601467986025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002895 n : ℚ) / (A002893 n : ℚ) * (A002896 n : ℚ)

end

end A039699.P11328550601467986025

