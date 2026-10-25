import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A260000: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000101.

The programs for A260000, there is no canonical definition to state claims against.
-/

/-! ## A260000.P16745198062181827194

`A260001(A374008(n+1))`
-/

namespace A260000.P16745198062181827194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A374008 (n + 1)).toNat

end

end A260000.P16745198062181827194

/-! ## A260000.P16915125430236106720

`A260001(eq[11, A066657(n)])`
-/

namespace A260000.P16915125430236106720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260000.P16915125430236106720

/-! ## A260000.P10718861251667613852

`A260001(A167614(n+5)+4)`
-/

namespace A260000.P10718861251667613852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A167614 (n + 5) + 4).toNat

end

end A260000.P10718861251667613852

/-! ## A260000.P4722367110119980572

`A260001(A000124(n+6)+6)`
-/

namespace A260000.P4722367110119980572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A000124 (n + 6) + 6).toNat

end

end A260000.P4722367110119980572

/-! ## A260000.P2939310257854248562

`A260001(A000096(n+5)+8)`
-/

namespace A260000.P2939310257854248562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A000096 (n + 5) + 8).toNat

end

end A260000.P2939310257854248562

/-!
# A260003: Values f(1,x,y) with x>=0, y>0, in increasing order, where f is the Sudan function defined in A260002.

The programs for A260003, there is no canonical definition to state claims against.
-/

/-! ## A260003.P8001845495055890324

`lt[A300518(A195113(2*(n+1))), A006530(n+1)]-1`
-/

namespace A260003.P8001845495055890324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (A195113 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A260003.P8001845495055890324

/-! ## A260003.P14474592892269779205

`lt[A114205(2*(n+2)), A055231(n+2)²]`
-/

namespace A260003.P14474592892269779205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114205 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260003.P14474592892269779205

/-! ## A260003.P10462143292480533919

`lt[A171974(n+2), A171945(A171968(n+2))]`
-/

namespace A260003.P10462143292480533919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171945 (A171968 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260003.P10462143292480533919

/-! ## A260003.P13646299265397738410

`lt[A171974(n+5), A172000(A171968(n+2))]`
-/

namespace A260003.P13646299265397738410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (A171968 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260003.P13646299265397738410

/-! ## A260003.P170890974220406432

`lt[A370917(A105070(n+1)), A356193(2*(n+2))]`
-/

namespace A260003.P170890974220406432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370917 (A105070 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260003.P170890974220406432

/-!
# A260004: Values of f(2,x,y) in increasing order, for x>=0, y>0 where f is the Sudan function defined in A260002.

The programs for A260004, there is no canonical definition to state claims against.
-/

/-! ## A260004.P14898530338645258610

`∑[A324774(A324760(n+1)*A324764(n+1))]`
-/

namespace A260004.P14898530338645258610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324774 (A324760 (n + 1) * A324764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260004.P14898530338645258610

/-! ## A260004.P11674762601792844287

`∑[A324774(A324761(n+1)*A324764(n+1))]`
-/

namespace A260004.P11674762601792844287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324774 (A324761 (n + 1) * A324764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260004.P11674762601792844287

/-!
# A260006: a(n) = f(1,n,n), where f is the Sudan function defined in A260002.

The programs for A260006, the canonical program `A260006.P2530189703620274755` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260006 has offset 0).

The definition of A260006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260006.P2530189703620274755

`(2^n-1)*(n+2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260006

/-- `(2^n-1)*(n+2)` -/
def P2530189703620274755.Spec : Prop :=
  ∀ n, P2530189703620274755.a n = A260006 n

theorem P2530189703620274755.correct : P2530189703620274755.Spec := by
  intro n
  simp only [A260006]

end A260006

/-! ## A260006.P9333623702633698782

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=12, a(3)=35`
-/

namespace A260006.P9333623702633698782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 12, 35] fun n a =>
  6 * a (n - 1) - 13 * a (n - 2) + 12 * a (n - 3) - 4 * a (n - 4)

end

end A260006.P9333623702633698782

namespace A260006

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P9333623702633698782.Spec : Prop :=
  ∀ n, P9333623702633698782.a n = A260006 n

theorem P9333623702633698782.correct : P9333623702633698782.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A260006, Nat.add_sub_cancel, A260006.P9333623702633698782.a, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A260006, Nat.add_sub_cancel, A260006.P9333623702633698782.a, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A260006

/-! ## A260006.P12411432233888347763

`record[n*(2^(n-2)-1)]`
-/

namespace A260006.P12411432233888347763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260006.P12411432233888347763

namespace A260006

/-- `record[n*(2^(n-2)-1)]` -/
def P12411432233888347763.Spec : Prop :=
  ∀ n, P12411432233888347763.a n = (A260006 n : ℚ)

end A260006

/-! ## A260006.P16137390979506643350

`∑[ogf((1-2x^2)/(1-4x+4x^2))]-(n+1)`
-/

namespace A260006.P16137390979506643350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A260006.P16137390979506643350

namespace A260006

/-- `∑[ogf((1-2x^2)/(1-4x+4x^2))]-(n+1)` -/
def P16137390979506643350.Spec : Prop :=
  ∀ n, P16137390979506643350.a n = A260006 n

end A260006

/-! ## A260006.P2661974877623463100

`∑[ogf((1-2x^2)/(1-4x+4x^2))]-1-n`
-/

namespace A260006.P2661974877623463100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A260006.P2661974877623463100

namespace A260006

/-- `∑[ogf((1-2x^2)/(1-4x+4x^2))]-1-n` -/
def P2661974877623463100.Spec : Prop :=
  ∀ n, P2661974877623463100.a n = A260006 n

end A260006

/-! ## A260006.P9947425488791593942

`floor((n+2)*∑[2*a(n-1)])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A260006.P9947425488791593942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260006.P9947425488791593942

namespace A260006

/-- `floor((n+2)*∑[2*a(n-1)])` -/
def P9947425488791593942.Spec : Prop :=
  ∀ n, (P9947425488791593942.a n : ℤ) = A260006 n

end A260006

/-! ## A260006.P18400893689902375850

`(n+2)*Δ[2*a(n-1)]-(n+2)` with `a(0)=1`
-/

namespace A260006.P18400893689902375850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n + 2 : ℤ)

end

end A260006.P18400893689902375850

namespace A260006

/-- `(n+2)*Δ[2*a(n-1)]-(n+2)` -/
def P18400893689902375850.Spec : Prop :=
  ∀ n, P18400893689902375850.a n = A260006 n

end A260006

/-! ## A260006.P12756596004351794868

`2^n+a(n-1)+a(n-1)+n` with `a(0)=0`
-/

namespace A260006.P12756596004351794868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 ^ n + (a (n - 1) + (a (n - 1) + n))

end

end A260006.P12756596004351794868

namespace A260006

/-- `2^n+a(n-1)+a(n-1)+n` -/
def P12756596004351794868.Spec : Prop :=
  ∀ n, (P12756596004351794868.a n : ℤ) = A260006 n

theorem P12756596004351794868.correct : P12756596004351794868.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A260006, Nat.add_sub_cancel, A260006.P12756596004351794868.a, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A260006, Nat.add_sub_cancel, A260006.P12756596004351794868.a, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A260006

/-! ## A260006.P4471145908162287133

`2-(4*(a(n-2)-a(n-1))+n)` with `a(0)=0, a(1)=3`
-/

namespace A260006.P4471145908162287133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 - (4 * (a (n - 2) - a (n - 1)) + (n : ℤ))

end

end A260006.P4471145908162287133

namespace A260006

/-- `2-(4*(a(n-2)-a(n-1))+n)` -/
def P4471145908162287133.Spec : Prop :=
  ∀ n, P4471145908162287133.a n = A260006 n

theorem P4471145908162287133.correct : P4471145908162287133.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A260006, Nat.add_sub_cancel, A260006.P4471145908162287133.a, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A260006, Nat.add_sub_cancel, A260006.P4471145908162287133.a, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A260006

/-! ## A260006.P530917216374690281

`2-4*(a(n-2)-a(n-1))-n` with `a(0)=0, a(1)=3`
-/

namespace A260006.P530917216374690281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 - 4 * (a (n - 2) - a (n - 1)) - (n : ℤ)

end

end A260006.P530917216374690281

namespace A260006

/-- `2-4*(a(n-2)-a(n-1))-n` -/
def P530917216374690281.Spec : Prop :=
  ∀ n, P530917216374690281.a n = A260006 n

theorem P530917216374690281.correct : P530917216374690281.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A260006, Nat.add_sub_cancel, A260006.P530917216374690281.a, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A260006, Nat.add_sub_cancel, A260006.P530917216374690281.a, A260006.P2530189703620274755.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A260006

/-! ## A260006.P11995995463845448661

`A221882(n+1)-1`
-/

namespace A260006.P11995995463845448661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221882 (n + 1) - 1

end

end A260006.P11995995463845448661

namespace A260006

/-- `A221882(n+1)-1` -/
def P11995995463845448661.Spec : Prop :=
  ∀ n, P11995995463845448661.a n = A260006 n

theorem P11995995463845448661.correct : P11995995463845448661.Spec := by
  intro n
  simp only [A260006, Nat.add_sub_cancel, A260006.P11995995463845448661.a, A260006.P2530189703620274755.a, A221882, A221882.P4495400180664998304.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A260006

/-! ## A260006.P16855734659127402158

`∑[∑[A129954(n)]-1]`
-/

namespace A260006.P16855734659127402158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260006.P16855734659127402158

namespace A260006

/-- `∑[∑[A129954(n)]-1]` -/
def P16855734659127402158.Spec : Prop :=
  ∀ n, P16855734659127402158.a n = A260006 n

end A260006

/-! ## A260006.P17995768187896274861

`∑[∑[A131352(n)]]-1`
-/

namespace A260006.P17995768187896274861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A260006.P17995768187896274861

namespace A260006

/-- `∑[∑[A131352(n)]]-1` -/
def P17995768187896274861.Spec : Prop :=
  ∀ n, P17995768187896274861.a n = A260006 n

end A260006

/-! ## A260006.P8018734418643239758

`∑[A087447(n+1)-1]`
-/

namespace A260006.P8018734418643239758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260006.P8018734418643239758

namespace A260006

/-- `∑[A087447(n+1)-1]` -/
def P8018734418643239758.Spec : Prop :=
  ∀ n, P8018734418643239758.a n = A260006 n

end A260006

/-! ## A260006.P15450072236982022616

`∑[A129953(n+1)-1]`
-/

namespace A260006.P15450072236982022616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260006.P15450072236982022616

namespace A260006

/-- `∑[A129953(n+1)-1]` -/
def P15450072236982022616.Spec : Prop :=
  ∀ n, P15450072236982022616.a n = A260006 n

end A260006

/-! ## A260006.P130592964373873931

`abs((n+2)*A225883(n))`
-/

namespace A260006.P130592964373873931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * A225883 n|

end

end A260006.P130592964373873931

namespace A260006

/-- `abs((n+2)*A225883(n))` -/
def P130592964373873931.Spec : Prop :=
  ∀ n, P130592964373873931.a n = A260006 n

end A260006

/-! ## A260006.P12375140848144072255

`∑[A134311(n)+n]-1`
-/

namespace A260006.P12375140848144072255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134311 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A260006.P12375140848144072255

namespace A260006

/-- `∑[A134311(n)+n]-1` -/
def P12375140848144072255.Spec : Prop :=
  ∀ n, P12375140848144072255.a n = A260006 n

end A260006

/-! ## A260006.P11129510553936533298

`A099035(n+1)-(n+1)`
-/

namespace A260006.P11129510553936533298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099035 (n + 1) - (n + 1 : ℤ)

end

end A260006.P11129510553936533298

namespace A260006

/-- `A099035(n+1)-(n+1)` -/
def P11129510553936533298.Spec : Prop :=
  ∀ n, P11129510553936533298.a n = A260006 n

theorem P11129510553936533298.correct : P11129510553936533298.Spec := by
  intro n
  simp only [A260006, Nat.add_sub_cancel, A260006.P11129510553936533298.a, A260006.P2530189703620274755.a, A099035, A099035.P6598920201532399146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A260006

/-! ## A260006.P4483470767242438484

`A057711(n+2)-(n+2)`
-/

namespace A260006.P4483470767242438484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 2) - (n + 2 : ℤ)

end

end A260006.P4483470767242438484

namespace A260006

/-- `A057711(n+2)-(n+2)` -/
def P4483470767242438484.Spec : Prop :=
  ∀ n, P4483470767242438484.a n = A260006 n

end A260006

/-! ## A260006.P1047702331703519670

`A129952(n+2)-(n+2)`
-/

namespace A260006.P1047702331703519670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (n + 2) - (n + 2 : ℤ)

end

end A260006.P1047702331703519670

namespace A260006

/-- `A129952(n+2)-(n+2)` -/
def P1047702331703519670.Spec : Prop :=
  ∀ n, P1047702331703519670.a n = A260006 n

end A260006

/-!
# A260007: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010101 or 01010101.

The programs for A260007, there is no canonical definition to state claims against.
-/

/-! ## A260007.P6039160249986254633

`A260015((n+1)²+n²)`
-/

namespace A260007.P6039160249986254633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 ((n + 1) ^ 2 + n ^ 2)

end

end A260007.P6039160249986254633

/-! ## A260007.P6407683608816620952

`record[A003982(n)*A260015(n+1)]`
-/

namespace A260007.P6407683608816620952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260007.P6407683608816620952

/-! ## A260007.P7439861585975770421

`record[gcd(A037012(n), A260015(n+1))]`
-/

namespace A260007.P7439861585975770421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A260015 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260007.P7439861585975770421

/-! ## A260007.P6671317902457772038

`A264668(n)+A260015(A001844(n))`
-/

namespace A260007.P6671317902457772038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A260015 (A001844 n).toNat

end

end A260007.P6671317902457772038

/-! ## A260007.P4422674757126878319

`lcm(A000034(n), A260015(A001844(n)))`
-/

namespace A260007.P4422674757126878319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260015 (A001844 n).toNat)

end

end A260007.P4422674757126878319

/-!
# A260008: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000101 00010101 or 01010101.

The programs for A260008, there is no canonical definition to state claims against.
-/

/-! ## A260008.P12469219596850195549

`A260015(∑[n]+1)`
-/

namespace A260008.P12469219596850195549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260008.P12469219596850195549

/-! ## A260008.P2731255238326221916

`or(char[14], A260015(A000124(n)))`
-/

namespace A260008.P2731255238326221916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260015 (A000124 n).toNat)

end

end A260008.P2731255238326221916

/-! ## A260008.P233617385737188768

`record[A103451(n)*A260015(n+1)]`
-/

namespace A260008.P233617385737188768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A260015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260008.P233617385737188768

/-! ## A260008.P724509444304752935

`record[root(A260015(n+1), A007318(n))]`
-/

namespace A260008.P724509444304752935
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A260015 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260008.P724509444304752935

/-! ## A260008.P12648219323503488196

`record[gcd(A002262(n), A260015(n+1))]`
-/

namespace A260008.P12648219323503488196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260015 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260008.P12648219323503488196

/-!
# A260009: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000101 00010101 or 01010101.

The programs for A260009, there is no canonical definition to state claims against.
-/

/-! ## A260009.P2119276788850438886

`A260015(∑[n+1]+2)`
-/

namespace A260009.P2119276788850438886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260009.P2119276788850438886

/-! ## A260009.P11109860507605851205

`record[gcd(A002262(n), A260015(n+2))]`
-/

namespace A260009.P11109860507605851205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260015 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260009.P11109860507605851205

/-! ## A260009.P17218166638063704676

`record[A260015(abs(A201163(n)))]`
-/

namespace A260009.P17218166638063704676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260009.P17218166638063704676

/-! ## A260009.P5758488332675938838

`lcm(A033999(n), A260015(A000096(n+1)))`
-/

namespace A260009.P5758488332675938838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A260015 (A000096 (n + 1)).toNat)

end

end A260009.P5758488332675938838

/-! ## A260009.P18353261447165044591

`A033999(2*n)*A260015(A000096(n+1))`
-/

namespace A260009.P18353261447165044591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A260015 (A000096 (n + 1)).toNat

end

end A260009.P18353261447165044591

/-!
# A260010: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010101 or 01010101.

The programs for A260010, there is no canonical definition to state claims against.
-/

/-! ## A260010.P15860858729238068666

`A260015(∑[n+2]+4)`
-/

namespace A260010.P15860858729238068666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260010.P15860858729238068666

/-! ## A260010.P1014117637801249479

`3^C(n, 64)²*A260015(A167614(n+1))`
-/

namespace A260010.P1014117637801249479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.choose n 64 ^ 2 : ℤ) * A260015 (A167614 (n + 1)).toNat

end

end A260010.P1014117637801249479

/-! ## A260010.P17579680686484155943

`lcm(A000034(n), A260015(A167614(n+1)))`
-/

namespace A260010.P17579680686484155943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260015 (A167614 (n + 1)).toNat)

end

end A260010.P17579680686484155943

/-! ## A260010.P3092914458210566085

`A260015(A167614(n+1))+char[A048958(n+1)]`
-/

namespace A260010.P3092914458210566085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048958 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260010.P3092914458210566085

/-! ## A260010.P4655084491738322368

`A014963(ceil(1/(n+1)))*A260015(A167614(n+1))`
-/

namespace A260010.P4655084491738322368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌈1 / (n + 1 : ℚ)⌉.toNat * A260015 (A167614 (n + 1)).toNat

end

end A260010.P4655084491738322368

/-!
# A260011: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010101 or 01010101.

The programs for A260011, there is no canonical definition to state claims against.
-/

/-! ## A260011.P9553004880046375147

`A260015(A052905(n)+9)`
-/

namespace A260011.P9553004880046375147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A052905 n + 9).toNat

end

end A260011.P9553004880046375147

/-! ## A260011.P15893836173187481575

`A260015(A167614(n+2)+1)`
-/

namespace A260011.P15893836173187481575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A167614 (n + 2) + 1).toNat

end

end A260011.P15893836173187481575

/-! ## A260011.P4487751574396046621

`A260015(Δ[A023545(n+1)-n²])`
-/

namespace A260011.P4487751574396046621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (f1 (n + 1) - f1 n).toNat

end

end A260011.P4487751574396046621

/-! ## A260011.P18194920748950651590

`A260015(A020705(A000217(n+3)))`
-/

namespace A260011.P18194920748950651590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A020705 (A000217 (n + 3)).toNat).toNat

end

end A260011.P18194920748950651590

/-! ## A260011.P10955477311622688793

`A260015(A000217(A020705(n))-n)`
-/

namespace A260011.P10955477311622688793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A000217 (A020705 n).toNat - (n : ℤ)).toNat

end

end A260011.P10955477311622688793

/-!
# A260012: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010101 or 01010101.

The programs for A260012, there is no canonical definition to state claims against.
-/

/-! ## A260012.P1766264345757193681

`A260015(A167499(n+3))`
-/

namespace A260012.P1766264345757193681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A167499 (n + 3)).toNat

end

end A260012.P1766264345757193681

/-! ## A260012.P9584068912201460525

`A260015(A167614(n+3)+2)`
-/

namespace A260012.P9584068912201460525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A167614 (n + 3) + 2).toNat

end

end A260012.P9584068912201460525

/-! ## A260012.P319536918884046172

`A260015(A000096(n+3)+6)`
-/

namespace A260012.P319536918884046172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A000096 (n + 3) + 6).toNat

end

end A260012.P319536918884046172

/-! ## A260012.P10607426547302072178

`A260015(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A260012.P10607426547302072178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A260012.P10607426547302072178

/-! ## A260012.P13888393487515077477

`A260015(A374005(n+1))`
-/

namespace A260012.P13888393487515077477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A374005 (n + 1)).toNat

end

end A260012.P13888393487515077477

/-!
# A260013: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010101 or 01010101.

The programs for A260013, there is no canonical definition to state claims against.
-/

/-! ## A260013.P11748426965917151012

`A260015(A000096(n+4)+7)`
-/

namespace A260013.P11748426965917151012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A000096 (n + 4) + 7).toNat

end

end A260013.P11748426965917151012

/-! ## A260013.P7526560413556895190

`A260015(A000217(n+5)+6)`
-/

namespace A260013.P7526560413556895190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A000217 (n + 5) + 6).toNat

end

end A260013.P7526560413556895190

/-! ## A260013.P375877651032359902

`A260015(A052905(n+4)-(A016789(n)-n))`
-/

namespace A260013.P375877651032359902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A052905 (n + 4) - (A016789 n - (n : ℤ))).toNat

end

end A260013.P375877651032359902

/-! ## A260013.P4068703805689891597

`A260015(A374007(n+1))`
-/

namespace A260013.P4068703805689891597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A374007 (n + 1)).toNat

end

end A260013.P4068703805689891597

/-! ## A260013.P12402561993318474319

`A260015(A052905(n+3))`
-/

namespace A260013.P12402561993318474319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A052905 (n + 3)).toNat

end

end A260013.P12402561993318474319

/-!
# A260014: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000101 00010101 or 01010101.

The programs for A260014, there is no canonical definition to state claims against.
-/

/-! ## A260014.P16819302630401516756

`A260015(A167499(n+5)+2)`
-/

namespace A260014.P16819302630401516756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A167499 (n + 5) + 2).toNat

end

end A260014.P16819302630401516756

/-! ## A260014.P14588358916963220694

`A260015(A000096(n+5)+8)`
-/

namespace A260014.P14588358916963220694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A000096 (n + 5) + 8).toNat

end

end A260014.P14588358916963220694

/-! ## A260014.P15312987907672799879

`A260015(A000217(n+6)+7)`
-/

namespace A260014.P15312987907672799879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A000217 (n + 6) + 7).toNat

end

end A260014.P15312987907672799879

/-! ## A260014.P3271632401558960764

`A260015(A253145(n+7)+8-A004275(n+9))`
-/

namespace A260014.P3271632401558960764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A253145 (n + 7) + 8 - A004275 (n + 9)).toNat

end

end A260014.P3271632401558960764

/-! ## A260014.P362209238647736383

`A260015(A374008(n+1))`
-/

namespace A260014.P362209238647736383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260015 (A374008 (n + 1)).toNat

end

end A260014.P362209238647736383

/-!
# A260016: Smallest number requiring n digits for its representation in the "Terrible Twos Problem" without using multidigit expressions.

The programs for A260016, there is no canonical definition to state claims against.
-/

/-! ## A260016.P5890248495477460247

`A060274(n+2)%A293255(A153417(n+1))`
-/

namespace A260016.P5890248495477460247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060274 (n + 2)) (A293255 (A153417 (n + 1)).toNat)

end

end A260016.P5890248495477460247

/-!
# A260021: Solutions to phi(n) = phi(sigma(n)) that are not given by Theorem 3 of Golomb's manuscript.

The programs for A260021, there is no canonical definition to state claims against.
-/

/-! ## A260021.P7233217212523557314

`lt[A354344(n+1), A353637(n+1)]+1`
-/

namespace A260021.P7233217212523557314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260021.P7233217212523557314

/-! ## A260021.P11057161395733360902

`eq[A353636(n+1), A354344(n+1)]+1`
-/

namespace A260021.P11057161395733360902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A260021.P11057161395733360902

/-!
# A260022: A bisection of A006921.

The programs for A260022, the canonical program `A260022.P9051072500523275687` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260022 has offset 0).

The definition of A260022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006921, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260022.P9051072500523275687

`A006921(2*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260022

/-- `A006921(2*n)` -/
def P9051072500523275687.Spec : Prop :=
  ∀ n, P9051072500523275687.a n = A260022 n

theorem P9051072500523275687.correct : P9051072500523275687.Spec := by
  intro n
  simp only [A260022]

end A260022

/-! ## A260022.P7364441877166466996

`xor(2*a(n-1), a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A260022.P7364441877166466996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (2 * a (n - 1)) (a (n - 2))

end

end A260022.P7364441877166466996

namespace A260022

/-- `xor(2*a(n-1), a(n-2))` -/
def P7364441877166466996.Spec : Prop :=
  ∀ n, (P7364441877166466996.a n : ℤ) = A260022 n

end A260022

/-! ## A260022.P7539895850102020236

`xor(lcm(2, a(n-1)), a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A260022.P7539895850102020236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (Nat.lcm 2 (a (n - 1))) (a (n - 2))

end

end A260022.P7539895850102020236

namespace A260022

/-- `xor(lcm(2, a(n-1)), a(n-2))` -/
def P7539895850102020236.Spec : Prop :=
  ∀ n, (P7539895850102020236.a n : ℤ) = A260022 n

end A260022

/-! ## A260022.P6549627592118272565

`xor(a(n-1)+a(n-1), a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A260022.P6549627592118272565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (a (n - 1) + a (n - 1)) (a (n - 2))

end

end A260022.P6549627592118272565

namespace A260022

/-- `xor(a(n-1)+a(n-1), a(n-2))` -/
def P6549627592118272565.Spec : Prop :=
  ∀ n, (P6549627592118272565.a n : ℤ) = A260022 n

end A260022

/-! ## A260022.P7834268813555763525

`record[A006921(n)]`
-/

namespace A260022.P7834268813555763525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260022.P7834268813555763525

namespace A260022

/-- `record[A006921(n)]` -/
def P7834268813555763525.Spec : Prop :=
  ∀ n, P7834268813555763525.a n = A260022 n

end A260022

/-! ## A260022.P9823877369568272473

`A168081(n+1)+A168081(n)`
-/

namespace A260022.P9823877369568272473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168081 (n + 1) + A168081 n

end

end A260022.P9823877369568272473

namespace A260022

/-- `A168081(n+1)+A168081(n)` -/
def P9823877369568272473.Spec : Prop :=
  ∀ n, P9823877369568272473.a n = A260022 n

end A260022

/-!
# A260023: a(1)=77; thereafter form the product of the digits of the previous term.

The programs for A260023, the canonical program `A260023.P14841697363405765265` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260023 has offset 1).

The definition of A260023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260023.P14841697363405765265

`a(n-1)` with `a(0)=77, a(1)=49, a(2)=36, a(3)=18, a(4)=8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260023

/-- `a(n-1)` -/
def P14841697363405765265.Spec : Prop :=
  ∀ n, (P14841697363405765265.a n : ℤ) = A260023 (n + 1)

theorem P14841697363405765265.correct : P14841697363405765265.Spec := by
  intro n
  simp only [A260023, Nat.add_sub_cancel]

end A260023

/-!
# A260033: Number of configurations of the general monomer-dimer model for a 2 X 2n square lattice.

The programs for A260033, the canonical program `A260033.P6308168287745909786` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260033 has offset 0).

The definition of A260033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260033.P6308168287745909786

`11*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=71`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260033

/-- `11*a(n-1)-7*a(n-2)+a(n-3)` -/
def P6308168287745909786.Spec : Prop :=
  ∀ n, P6308168287745909786.a n = A260033 n

theorem P6308168287745909786.correct : P6308168287745909786.Spec := by
  intro n
  simp only [A260033]

end A260033

/-! ## A260033.P3721858934089676559

`A030186(2*n)`
-/

namespace A260033.P3721858934089676559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 (2 * n)

end

end A260033.P3721858934089676559

namespace A260033

/-- `A030186(2*n)` -/
def P3721858934089676559.Spec : Prop :=
  ∀ n, P3721858934089676559.a n = A260033 n

end A260033

/-! ## A260033.P13814068028622391271

`A365967(4*n)`
-/

namespace A260033.P13814068028622391271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365967 (4 * n)

end

end A260033.P13814068028622391271

namespace A260033

/-- `A365967(4*n)` -/
def P13814068028622391271.Spec : Prop :=
  ∀ n, P13814068028622391271.a n = A260033 n

end A260033

/-! ## A260033.P11846799941188563194

`∑[A181301(2*n)]`
-/

namespace A260033.P11846799941188563194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260033.P11846799941188563194

namespace A260033

/-- `∑[A181301(2*n)]` -/
def P11846799941188563194.Spec : Prop :=
  ∀ n, P11846799941188563194.a n = A260033 n

end A260033

/-! ## A260033.P893219731813596979

`record[A030186(round(sqrt(n²+1))-(-1)^n)]`
-/

namespace A260033.P893219731813596979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - (-1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260033.P893219731813596979

namespace A260033

/-- `record[A030186(round(sqrt(n²+1))-(-1)^n)]` -/
def P893219731813596979.Spec : Prop :=
  ∀ n, P893219731813596979.a n = A260033 n

end A260033

/-! ## A260033.P6938799489642859360

`record[A030186(n)/A266303(n)]`
-/

namespace A260033.P6938799489642859360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030186 n : ℚ) / (A266303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260033.P6938799489642859360

namespace A260033

/-- `record[A030186(n)/A266303(n)]` -/
def P6938799489642859360.Spec : Prop :=
  ∀ n, P6938799489642859360.a n = (A260033 n : ℚ)

end A260033

/-! ## A260033.P13143853288614954161

`record[gcd(A030186(n), A090192(n))]`
-/

namespace A260033.P13143853288614954161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030186 n) (A090192 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260033.P13143853288614954161

namespace A260033

/-- `record[gcd(A030186(n), A090192(n))]` -/
def P13143853288614954161.Spec : Prop :=
  ∀ n, (P13143853288614954161.a n : ℤ) = A260033 n

end A260033

/-! ## A260033.P16409832289559245255

`record[lcm(A030186(n), A056594(n))]`
-/

namespace A260033.P16409832289559245255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030186 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260033.P16409832289559245255

namespace A260033

/-- `record[lcm(A030186(n), A056594(n))]` -/
def P16409832289559245255.Spec : Prop :=
  ∀ n, (P16409832289559245255.a n : ℤ) = A260033 n

end A260033

/-! ## A260033.P14944028436602202

`A030186(A004277(n))-A000007(n)`
-/

namespace A260033.P14944028436602202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 (A004277 n).toNat - A000007 n

end

end A260033.P14944028436602202

namespace A260033

/-- `A030186(A004277(n))-A000007(n)` -/
def P14944028436602202.Spec : Prop :=
  ∀ n, P14944028436602202.a n = A260033 n

end A260033

/-! ## A260033.P12582139820601183455

`A033505(2*n)+A287275(2*n)-A287275(2*n+1)`
-/

namespace A260033.P12582139820601183455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 (2 * n) + (A287275 (2 * n) - A287275 (2 * n + 1))

end

end A260033.P12582139820601183455

namespace A260033

/-- `A033505(2*n)+A287275(2*n)-A287275(2*n+1)` -/
def P12582139820601183455.Spec : Prop :=
  ∀ n, P12582139820601183455.a n = A260033 n

end A260033

/-!
# A260034: Number of configurations of the general monomer-dimer model for a 4 X 2n square lattice.

The programs for A260034, there is no canonical definition to state claims against.
-/

/-! ## A260034.P9921171112917343938

`A033507(2*n)`
-/

namespace A260034.P9921171112917343938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033507 (2 * n)

end

end A260034.P9921171112917343938

/-! ## A260034.P14836207467009956734

`record[A033507(round(sqrt(n²+1))-(-1)^n)]`
-/

namespace A260034.P14836207467009956734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033507 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - (-1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260034.P14836207467009956734

/-! ## A260034.P11021714381874679647

`record[lcm(A033507(n), A056594(n))]`
-/

namespace A260034.P11021714381874679647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033507 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260034.P11021714381874679647

/-! ## A260034.P1801146702000054615

`lcm(A033507(A005843(n)), A106400(n))`
-/

namespace A260034.P1801146702000054615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033507 (A005843 n).toNat) (A106400 n)

end

end A260034.P1801146702000054615

/-! ## A260034.P10917378555303859229

`C(A033507(A004277(n)), A178334(n))`
-/

namespace A260034.P10917378555303859229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033507 (A004277 n).toNat).toNat (A178334 n).toNat

end

end A260034.P10917378555303859229

/-!
# A260035: Number of configurations of the general monomer-dimer model for a 6 X 2n square lattice.

The programs for A260035, there is no canonical definition to state claims against.
-/

/-! ## A260035.P10266633129424974642

`A033509(2*n)`
-/

namespace A260035.P10266633129424974642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033509 (2 * n)

end

end A260035.P10266633129424974642

/-! ## A260035.P13280673348003898170

`record[A033509(round(sqrt(n²+1))-(-1)^n)]`
-/

namespace A260035.P13280673348003898170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033509 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - (-1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260035.P13280673348003898170

/-! ## A260035.P6845082655993280699

`C(A033509(A004277(n)), A178334(n))`
-/

namespace A260035.P6845082655993280699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033509 (A004277 n).toNat).toNat (A178334 n).toNat

end

end A260035.P6845082655993280699

/-!
# A260036: 

The programs for A260036, there is no canonical definition to state claims against.
-/

/-! ## A260036.P17102833043380282743

`A033511(2*n)`
-/

namespace A260036.P17102833043380282743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033511 (2 * n)

end

end A260036.P17102833043380282743

/-! ## A260036.P8761722938908607964

`record[A033511(round(sqrt(n²+1))-(-1)^n)]`
-/

namespace A260036.P8761722938908607964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033511 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - (-1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260036.P8761722938908607964

/-! ## A260036.P2236560485628724603

`record[lcm(A033511(n), A056594(n))]`
-/

namespace A260036.P2236560485628724603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033511 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260036.P2236560485628724603

/-! ## A260036.P7723509536745836058

`lcm(A033511(A005843(n)), A106400(n))`
-/

namespace A260036.P7723509536745836058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033511 (A005843 n).toNat) (A106400 n)

end

end A260036.P7723509536745836058

/-! ## A260036.P18196553561035435283

`C(A033511(A004277(n)), A178334(n))`
-/

namespace A260036.P18196553561035435283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033511 (A004277 n).toNat).toNat (A178334 n).toNat

end

end A260036.P18196553561035435283

/-!
# A260037: Number of missing lengths of Christoffel words of order n.

The programs for A260037, there is no canonical definition to state claims against.
-/

/-! ## A260037.P14732803246801375038

`A328594(A003065(n))`
-/

namespace A260037.P14732803246801375038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (A003065 n).toNat

end

end A260037.P14732803246801375038

/-! ## A260037.P11119396829022436711

`A328594(A073031(n))`
-/

namespace A260037.P11119396829022436711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (A073031 n).toNat

end

end A260037.P11119396829022436711

/-! ## A260037.P9051365984087182790

`A328594(A079971(n))`
-/

namespace A260037.P9051365984087182790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (A079971 n).toNat

end

end A260037.P9051365984087182790

/-! ## A260037.P7958297838726786531

`A328594(A114138(n))`
-/

namespace A260037.P7958297838726786531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (A114138 n).toNat

end

end A260037.P7958297838726786531

/-!
# A260039: Triangle read by rows giving numbers B(n,k) arising in the enumeration of doubly rooted tree maps.

The programs for A260039, there is no canonical definition to state claims against.
-/

/-! ## A260039.P3286580537945400361

`A002260(n+1)*A260040(n+1)`
-/

namespace A260039.P3286580537945400361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A260040 (n + 1)

end

end A260039.P3286580537945400361

/-! ## A260039.P16464225525846423933

`(A002262(n)+1)*A260040(n+1)`
-/

namespace A260039.P16464225525846423933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A260040 (n + 1)

end

end A260039.P16464225525846423933

/-! ## A260039.P9835453948839219255

`abs(A140756(n+1)*A260040(n+1))`
-/

namespace A260039.P9835453948839219255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1) * A260040 (n + 1)|

end

end A260039.P9835453948839219255

/-! ## A260039.P11109882258494436809

`sqrt(A133819(n+1))*A260040(n+1)`
-/

namespace A260039.P11109882258494436809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A260040 (n + 1) : ℝ)

end

end A260039.P11109882258494436809

/-! ## A260039.P12363870867466204200

`A000005(A059268(n))*A260040(n+1)`
-/

namespace A260039.P12363870867466204200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A260040 (n + 1)

end

end A260039.P12363870867466204200

/-!
# A260040: Triangle read by rows giving numbers H(n,k), number of classes of twin-tree-rooted maps with n edges whose root bond contains k edges.

The programs for A260040, there is no canonical definition to state claims against.
-/

/-! ## A260040.P9261123037955802847

`A260039(n+1)/A002260(n+1)`
-/

namespace A260040.P9261123037955802847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260039 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A260040.P9261123037955802847

/-! ## A260040.P3436666739608921901

`A260039(n+1)/(A002262(n)+1)`
-/

namespace A260040.P3436666739608921901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260039 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A260040.P3436666739608921901

/-! ## A260040.P3345502021193881515

`abs(A260039(n+1)/A140756(n+1))`
-/

namespace A260040.P3345502021193881515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A260039 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)|

end

end A260040.P3345502021193881515

/-! ## A260040.P9233765441243297701

`A260039(n+1)/sqrt(A133819(n+1))`
-/

namespace A260040.P9233765441243297701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A260039 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A260040.P9233765441243297701

/-! ## A260040.P17707482029012734842

`A260039(n+1)/A000005(A059268(n))`
-/

namespace A260040.P17707482029012734842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260039 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A260040.P17707482029012734842

/-!
# A260041: Number of twin-tree-rooted maps with n edges.

The programs for A260041, there is no canonical definition to state claims against.
-/

/-! ## A260041.P641393991800261377

`A005375((n+2)^n-(n+1))`
-/

namespace A260041.P641393991800261377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 ((n + 2) ^ n - (n + 1))

end

end A260041.P641393991800261377

/-!
# A260042: Numbers k such that (4^k-1)/3 is not squarefree.

The programs for A260042, there is no canonical definition to state claims against.
-/

/-! ## A260042.P14501241494791716560

`comp[A259178(n+1)-1]+1`
-/

namespace A260042.P14501241494791716560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A260042.P14501241494791716560

/-! ## A260042.P10930951674521428407

`∩[A002808(n+1), comp[A259178(n+1)]]`
-/

namespace A260042.P10930951674521428407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A260042.P10930951674521428407

/-! ## A260042.P2159207686394311063

`lt[3, gcd(n, A103454(n))]`
-/

namespace A260042.P2159207686394311063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A103454 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260042.P2159207686394311063

/-! ## A260042.P16039376603933865713

`eq[char[A259178(n+1)], A151909(n)]`
-/

namespace A260042.P16039376603933865713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A260042.P16039376603933865713

/-! ## A260042.P8075520262745356429

`eq[char[A259178(n+1)], A151933(n)]`
-/

namespace A260042.P8075520262745356429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A260042.P8075520262745356429

/-!
# A260043: Irregular triangle read by rows: T(n,k) (n >= 1, 0 <= k <= n^2) = number of n X n (0,1) real matrices with k zeros and permanent zero.

The programs for A260043, there is no canonical definition to state claims against.
-/

/-! ## A260043.P9558957012365075148

`A055599(n+1)*A059895(A260443(n))`
-/

namespace A260043.P9558957012365075148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055599 (n + 1) * A059895 (A260443 n).toNat

end

end A260043.P9558957012365075148

/-! ## A260043.P15847300959188244655

`A055599(n+1)*A253641(A118658(n))`
-/

namespace A260043.P15847300959188244655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055599 (n + 1) * A253641 (A118658 n).toNat

end

end A260043.P15847300959188244655

/-! ## A260043.P14145812821905090706

`A059895(A260443(n))*A365950(n+1)`
-/

namespace A260043.P14145812821905090706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (A260443 n).toNat * A365950 (n + 1)

end

end A260043.P14145812821905090706

/-! ## A260043.P16922355219492739271

`A253641(A118658(n))*A365950(n+1)`
-/

namespace A260043.P16922355219492739271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A118658 n).toNat * A365950 (n + 1)

end

end A260043.P16922355219492739271

/-! ## A260043.P10273729481405329034

`A055599(n+1)^A047072(A285132(n))`
-/

namespace A260043.P10273729481405329034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055599 (n + 1) : ℚ) ^ (A047072 (A285132 n).toNat : ℤ)

end

end A260043.P10273729481405329034

/-!
# A260044: Primes having only {0, 1, 3} as digits.

The programs for A260044, the canonical program `A260044.P4271227756067680045` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260044 has offset 1).

The definition of A260044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260044.P6773467781323477165

`∩[A111488(n+1), A125308(n+1)]`
-/

namespace A260044.P6773467781323477165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P6773467781323477165

namespace A260044

/-- `∩[A111488(n+1), A125308(n+1)]` -/
def P6773467781323477165.Spec : Prop :=
  ∀ n, (P6773467781323477165.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P11253953788340030946

`∩[A111488(n+1), A386023(n+1)]`
-/

namespace A260044.P11253953788340030946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P11253953788340030946

namespace A260044

/-- `∩[A111488(n+1), A386023(n+1)]` -/
def P11253953788340030946.Spec : Prop :=
  ∀ n, (P11253953788340030946.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P16274966919294193982

`∩[A125308(n+1), A386023(n+1)]`
-/

namespace A260044.P16274966919294193982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P16274966919294193982

namespace A260044

/-- `∩[A125308(n+1), A386023(n+1)]` -/
def P16274966919294193982.Spec : Prop :=
  ∀ n, (P16274966919294193982.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P6979377700414804781

`∩[A111488(n+1), A386024(n+1)]`
-/

namespace A260044.P6979377700414804781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P6979377700414804781

namespace A260044

/-- `∩[A111488(n+1), A386024(n+1)]` -/
def P6979377700414804781.Spec : Prop :=
  ∀ n, (P6979377700414804781.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P4134976467177706444

`∩[A125308(n+1), A386024(n+1)]`
-/

namespace A260044.P4134976467177706444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P4134976467177706444

namespace A260044

/-- `∩[A125308(n+1), A386024(n+1)]` -/
def P4134976467177706444.Spec : Prop :=
  ∀ n, (P4134976467177706444.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P14541720633579382420

`∩[A107715(n+1), A111488(n+1)]`
-/

namespace A260044.P14541720633579382420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P14541720633579382420

namespace A260044

/-- `∩[A107715(n+1), A111488(n+1)]` -/
def P14541720633579382420.Spec : Prop :=
  ∀ n, (P14541720633579382420.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P9651961522224023758

`∩[A107715(n+1), A125308(n+1)]`
-/

namespace A260044.P9651961522224023758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P9651961522224023758

namespace A260044

/-- `∩[A107715(n+1), A125308(n+1)]` -/
def P9651961522224023758.Spec : Prop :=
  ∀ n, (P9651961522224023758.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P8898773232372152070

`∩[A107715(n+1), A386023(n+1)]`
-/

namespace A260044.P8898773232372152070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P8898773232372152070

namespace A260044

/-- `∩[A107715(n+1), A386023(n+1)]` -/
def P8898773232372152070.Spec : Prop :=
  ∀ n, (P8898773232372152070.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P8137800652968889685

`∩[A107715(n+1), A386024(n+1)]`
-/

namespace A260044.P8137800652968889685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P8137800652968889685

namespace A260044

/-- `∩[A107715(n+1), A386024(n+1)]` -/
def P8137800652968889685.Spec : Prop :=
  ∀ n, (P8137800652968889685.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P13774531859686147113

`∩[A107715(n+1), A386025(n+1)]`
-/

namespace A260044.P13774531859686147113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P13774531859686147113

namespace A260044

/-- `∩[A107715(n+1), A386025(n+1)]` -/
def P13774531859686147113.Spec : Prop :=
  ∀ n, (P13774531859686147113.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P17125108350465671963

`∩[A111488(n+1), A386025(n+1)]`
-/

namespace A260044.P17125108350465671963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P17125108350465671963

namespace A260044

/-- `∩[A111488(n+1), A386025(n+1)]` -/
def P17125108350465671963.Spec : Prop :=
  ∀ n, (P17125108350465671963.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P10654741461559205460

`∩[A125308(n+1), A386025(n+1)]`
-/

namespace A260044.P10654741461559205460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P10654741461559205460

namespace A260044

/-- `∩[A125308(n+1), A386025(n+1)]` -/
def P10654741461559205460.Spec : Prop :=
  ∀ n, (P10654741461559205460.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P4271227756067680045

`∩[A386024(n+1), A386025(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A260044

/-- `∩[A386024(n+1), A386025(n+1)]` -/
def P4271227756067680045.Spec : Prop :=
  ∀ n, (P4271227756067680045.a n : ℤ) = A260044 (n + 1)

theorem P4271227756067680045.correct : P4271227756067680045.Spec := by
  intro n
  simp only [A260044, Nat.add_sub_cancel]

end A260044

/-! ## A260044.P3854170004744111907

`∩[A107715(n+1), A386026(n+1)]`
-/

namespace A260044.P3854170004744111907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P3854170004744111907

namespace A260044

/-- `∩[A107715(n+1), A386026(n+1)]` -/
def P3854170004744111907.Spec : Prop :=
  ∀ n, (P3854170004744111907.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P2540482619850888523

`∩[A111488(n+1), A386026(n+1)]`
-/

namespace A260044.P2540482619850888523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P2540482619850888523

namespace A260044

/-- `∩[A111488(n+1), A386026(n+1)]` -/
def P2540482619850888523.Spec : Prop :=
  ∀ n, (P2540482619850888523.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P18047075547973701822

`∩[A125308(n+1), A386026(n+1)]`
-/

namespace A260044.P18047075547973701822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P18047075547973701822

namespace A260044

/-- `∩[A125308(n+1), A386026(n+1)]` -/
def P18047075547973701822.Spec : Prop :=
  ∀ n, (P18047075547973701822.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P5943145720709598310

`∩[A386026(n+1), A386023(n+1)]`
-/

namespace A260044.P5943145720709598310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P5943145720709598310

namespace A260044

/-- `∩[A386026(n+1), A386023(n+1)]` -/
def P5943145720709598310.Spec : Prop :=
  ∀ n, (P5943145720709598310.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P10164820701618144829

`∩[A007284(n), A107715(n+1)]`
-/

namespace A260044.P10164820701618144829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P10164820701618144829

namespace A260044

/-- `∩[A007284(n), A107715(n+1)]` -/
def P10164820701618144829.Spec : Prop :=
  ∀ n, (P10164820701618144829.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P8902935206486024777

`∩[A007284(n), A111488(n+1)]`
-/

namespace A260044.P8902935206486024777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P8902935206486024777

namespace A260044

/-- `∩[A007284(n), A111488(n+1)]` -/
def P8902935206486024777.Spec : Prop :=
  ∀ n, (P8902935206486024777.a n : ℤ) = A260044 (n + 1)

end A260044

/-! ## A260044.P7448601053637432785

`∩[A007284(n), A386023(n+1)]`
-/

namespace A260044.P7448601053637432785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260044.P7448601053637432785

namespace A260044

/-- `∩[A007284(n), A386023(n+1)]` -/
def P7448601053637432785.Spec : Prop :=
  ∀ n, (P7448601053637432785.a n : ℤ) = A260044 (n + 1)

end A260044

/-!
# A260057: Expansion of f(-x, -x^5)^3 / (f(x, x^5) * f(-x^2, -x^2)^2) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A260057, there is no canonical definition to state claims against.
-/

/-! ## A260057.P7456040978280482924

`(-1)^n*A260150(n)`
-/

namespace A260057.P7456040978280482924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A260150 n

end

end A260057.P7456040978280482924

/-! ## A260057.P18194754129846695124

`A260150(n)/A033999(n)`
-/

namespace A260057.P18194754129846695124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260150 n : ℚ) / (A033999 n : ℚ)

end

end A260057.P18194754129846695124

/-! ## A260057.P5552535107212611781

`A260150(n)/A260215(n)*A261156(n)`
-/

namespace A260057.P5552535107212611781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260150 n : ℚ) / (A260215 n : ℚ) * (A261156 n : ℚ)

end

end A260057.P5552535107212611781

/-! ## A260057.P12607242673323010959

`A260150(n)/A262930(n)*A293387(n)`
-/

namespace A260057.P12607242673323010959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260150 n : ℚ) / (A262930 n : ℚ) * (A293387 n : ℚ)

end

end A260057.P12607242673323010959

/-! ## A260057.P5968085720848825337

`A260215(2*(n+1)+n)/2`
-/

namespace A260057.P5968085720848825337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 (2 * (n + 1) + n) : ℚ) / 2

end

end A260057.P5968085720848825337

/-!
# A260058: Expansion of f(x^2, x^4) * f(x^3, x^3) / f(-x, -x^2)^2 in power of x where f(, ) is Ramanujan's general theta function.

The programs for A260058, there is no canonical definition to state claims against.
-/

/-! ## A260058.P13924276472930176750

`A261154(3*n)`
-/

namespace A260058.P13924276472930176750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 (3 * n)

end

end A260058.P13924276472930176750

/-! ## A260058.P18164648755296932763

`ceil(A186924(n)/2)`
-/

namespace A260058.P18164648755296932763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186924 n : ℚ) / 2⌉

end

end A260058.P18164648755296932763

/-! ## A260058.P12708655287398087875

`A186924(n)/A036453(n+1)`
-/

namespace A260058.P12708655287398087875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186924 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A260058.P12708655287398087875

/-! ## A260058.P16355507268168330276

`lcm(2, A261320(n))/2`
-/

namespace A260058.P16355507268168330276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A261320 n) : ℚ) / 2

end

end A260058.P16355507268168330276

/-! ## A260058.P4765722847727257547

`A261320(n)/A280560(n)`
-/

namespace A260058.P4765722847727257547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261320 n : ℚ) / (A280560 n : ℚ)

end

end A260058.P4765722847727257547

/-! ## A260058.P7418880906495259719

`A139213(3*n)`
-/

namespace A260058.P7418880906495259719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139213 (3 * n)

end

end A260058.P7418880906495259719

/-! ## A260058.P2317946977785330578

`abs(A233672(3*n))`
-/

namespace A260058.P2317946977785330578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233672 (3 * n)|

end

end A260058.P2317946977785330578

/-! ## A260058.P14536428577297791839

`A233693(A008486(n))`
-/

namespace A260058.P14536428577297791839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A008486 n).toNat

end

end A260058.P14536428577297791839

/-! ## A260058.P8723303947078760610

`A233693(A028310(3*n))`
-/

namespace A260058.P8723303947078760610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A028310 (3 * n)).toNat

end

end A260058.P8723303947078760610

/-! ## A260058.P1068245784680238535

`A233693(A004277(n)+n)`
-/

namespace A260058.P1068245784680238535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A004277 n + (n : ℤ)).toNat

end

end A260058.P1068245784680238535

/-! ## A260058.P16738220687398496685

`A233693(A004275(n+1)+n)`
-/

namespace A260058.P16738220687398496685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A004275 (n + 1) + (n : ℤ)).toNat

end

end A260058.P16738220687398496685

/-! ## A260058.P3848365113560964909

`A233693(A004273(n)+1+n)`
-/

namespace A260058.P3848365113560964909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A004273 n + 1 + (n : ℤ)).toNat

end

end A260058.P3848365113560964909

/-! ## A260058.P5469175475872354753

`A233693(A300576(n+2)+n)`
-/

namespace A260058.P5469175475872354753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (A300576 (n + 2) + (n : ℤ)).toNat

end

end A260058.P5469175475872354753

/-! ## A260058.P16126999868793665081

`A233693(2*A004277(n)-n)`
-/

namespace A260058.P16126999868793665081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (2 * A004277 n - (n : ℤ)).toNat

end

end A260058.P16126999868793665081

/-!
# A260060: Least number such that exactly n iterations of A034690 are required to reach one of the fixed points, 1 or 15.

The programs for A260060, there is no canonical definition to state claims against.
-/

/-! ## A260060.P2189023707268282806

`gcd(floor(acot(n)), A094501(n))`
-/

namespace A260060.P2189023707268282806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A094501 n)

end

end A260060.P2189023707268282806

/-! ## A260060.P1527787849353926050

`A094501(n)%A075927(n)`
-/

namespace A260060.P1527787849353926050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094501 n) (A075927 n)

end

end A260060.P1527787849353926050

/-! ## A260060.P12190960849707243352

`and(A094501(n), A260196(n))`
-/

namespace A260060.P12190960849707243352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094501 n) (A260196 n)

end

end A260060.P12190960849707243352

/-! ## A260060.P2660615544119457039

`A094501(n)^A323022(n+1)`
-/

namespace A260060.P2660615544119457039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094501 n : ℚ) ^ (A323022 (n + 1) : ℤ)

end

end A260060.P2660615544119457039

/-! ## A260060.P5348668885528674122

`A094501(n)^(A240328(n+1)+1)`
-/

namespace A260060.P5348668885528674122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094501 n : ℚ) ^ (A240328 (n + 1) + 1 : ℤ)

end

end A260060.P5348668885528674122

/-!
# A260062: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000111.

The programs for A260062, there is no canonical definition to state claims against.
-/

/-! ## A260062.P9239526775539060585

`A260070(∑[4*n]+1)`
-/

namespace A260062.P9239526775539060585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260062.P9239526775539060585

/-! ## A260062.P13752856684090268684

`A260070(A001844(n))+char[20]`
-/

namespace A260062.P13752856684090268684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260062.P13752856684090268684

/-! ## A260062.P12843458308718029181

`record[A260070(A078898(n²+1))]`
-/

namespace A260062.P12843458308718029181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A078898 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260062.P12843458308718029181

/-! ## A260062.P11263872962796505449

`record[A003982(n)*A260070(n+1)]`
-/

namespace A260062.P11263872962796505449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260062.P11263872962796505449

/-! ## A260062.P15024160195220979587

`record[gcd(A003987(n), A260070(n+1))]`
-/

namespace A260062.P15024160195220979587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A260070 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260062.P15024160195220979587

/-!
# A260063: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000111.

The programs for A260063, there is no canonical definition to state claims against.
-/

/-! ## A260063.P13674884612708244283

`A260070(∑[n]+1)`
-/

namespace A260063.P13674884612708244283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260063.P13674884612708244283

/-! ## A260063.P718157051400253736

`record[A010054(n)*A260070(n+1)]`
-/

namespace A260063.P718157051400253736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260063.P718157051400253736

/-! ## A260063.P15737060346410353203

`record[A260070(n+1)/A009766(n)]`
-/

namespace A260063.P15737060346410353203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260070 (n + 1) : ℚ) / (A009766 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260063.P15737060346410353203

/-! ## A260063.P2443794288732846230

`record[A260070(n+1)/A028262(n)]`
-/

namespace A260063.P2443794288732846230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260070 (n + 1) : ℚ) / (A028262 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260063.P2443794288732846230

/-! ## A260063.P5363997455925763898

`record[gcd(A002262(n), A260070(n+1))]`
-/

namespace A260063.P5363997455925763898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260070 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260063.P5363997455925763898

/-!
# A260064: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000111.

The programs for A260064, there is no canonical definition to state claims against.
-/

/-! ## A260064.P5652201668388982355

`A260070(∑[n+1]+2)`
-/

namespace A260064.P5652201668388982355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260064.P5652201668388982355

/-! ## A260064.P4940652893581022759

`record[A010054(n)*A260070(n+2)]`
-/

namespace A260064.P4940652893581022759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260064.P4940652893581022759

/-! ## A260064.P1347918208071021409

`record[gcd(A002262(n), A260070(n+2))]`
-/

namespace A260064.P1347918208071021409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260070 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260064.P1347918208071021409

/-! ## A260064.P11266439301521016637

`or(A000007(n), A260070(A000096(n)+3))`
-/

namespace A260064.P11266439301521016637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A260070 (A000096 n + 3).toNat)

end

end A260064.P11266439301521016637

/-! ## A260064.P15259175798157861523

`A260070(A000096(n)+3)+A000007(n+1)`
-/

namespace A260064.P15259175798157861523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A000096 n + 3).toNat + A000007 (n + 1)

end

end A260064.P15259175798157861523

/-!
# A260065: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000111.

The programs for A260065, there is no canonical definition to state claims against.
-/

/-! ## A260065.P15047035833689340198

`A260070(∑[n+2]+4)`
-/

namespace A260065.P15047035833689340198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260065.P15047035833689340198

/-! ## A260065.P6497997531423690396

`A260070(A167614(n+1))+A185284(n)`
-/

namespace A260065.P6497997531423690396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A167614 (n + 1)).toNat + A185284 n

end

end A260065.P6497997531423690396

/-! ## A260065.P13710342205412115574

`lcm(A006466(n), A260070(A167614(n+1)))`
-/

namespace A260065.P13710342205412115574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A260070 (A167614 (n + 1)).toNat)

end

end A260065.P13710342205412115574

/-! ## A260065.P17346192924176748453

`A260070(A167614(n+1))%A260068(n+1)`
-/

namespace A260065.P17346192924176748453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260070 (A167614 (n + 1)).toNat) (A260068 (n + 1))

end

end A260065.P17346192924176748453

/-!
# A260066: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000111.

The programs for A260066, there is no canonical definition to state claims against.
-/

/-! ## A260066.P3867057586510406951

`A260070(A374004(n+1))`
-/

namespace A260066.P3867057586510406951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A374004 (n + 1)).toNat

end

end A260066.P3867057586510406951

/-! ## A260066.P523437124895472716

`A260070(A141214(n)+7)`
-/

namespace A260066.P523437124895472716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A141214 n + 7).toNat

end

end A260066.P523437124895472716

/-! ## A260066.P16616674474214836314

`A260070(A052905(n)+9)`
-/

namespace A260066.P16616674474214836314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A052905 n + 9).toNat

end

end A260066.P16616674474214836314

/-! ## A260066.P4544761250505724497

`A260070(A055999(n)+10)`
-/

namespace A260066.P4544761250505724497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A055999 n + 10).toNat

end

end A260066.P4544761250505724497

/-! ## A260066.P1469130728167623400

`A260070(A167614(n+2)+1)`
-/

namespace A260066.P1469130728167623400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A167614 (n + 2) + 1).toNat

end

end A260066.P1469130728167623400

/-!
# A260067: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000111.

The programs for A260067, there is no canonical definition to state claims against.
-/

/-! ## A260067.P4509891923652369568

`A260070(∑[n+6]+9-2*n)`
-/

namespace A260067.P4509891923652369568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (∑ j ∈ Finset.range (n + 1), f1 j + 9 - 2 * n)

end

end A260067.P4509891923652369568

/-! ## A260067.P10483090700158392876

`char[A004442(n)]*A260070(A046691(n+3))`
-/

namespace A260067.P10483090700158392876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A260070 (A046691 (n + 3)).toNat

end

end A260067.P10483090700158392876

/-! ## A260067.P16735160758528256415

`char[A004480(n)]*A260070(A046691(n+3))`
-/

namespace A260067.P16735160758528256415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A260070 (A046691 (n + 3)).toNat

end

end A260067.P16735160758528256415

/-! ## A260067.P11761460592605793442

`char[A076312(n)]*A260070(A046691(n+3))`
-/

namespace A260067.P11761460592605793442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A260070 (A046691 (n + 3)).toNat

end

end A260067.P11761460592605793442

/-! ## A260067.P17986702897490575726

`A260070(A046691(n+3))+char[A006038(n+1)]`
-/

namespace A260067.P17986702897490575726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260067.P17986702897490575726

/-!
# A260068: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000111.

The programs for A260068, there is no canonical definition to state claims against.
-/

/-! ## A260068.P8037978636052212015

`A260070(A374007(n+1))`
-/

namespace A260068.P8037978636052212015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A374007 (n + 1)).toNat

end

end A260068.P8037978636052212015

/-! ## A260068.P6801259001616828891

`A260070(A166136(n+4))`
-/

namespace A260068.P6801259001616828891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A166136 (n + 4)).toNat

end

end A260068.P6801259001616828891

/-! ## A260068.P17235360744510932677

`A260070(A167614(n+4)+3)`
-/

namespace A260068.P17235360744510932677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A167614 (n + 4) + 3).toNat

end

end A260068.P17235360744510932677

/-! ## A260068.P2311639971678369412

`A260070(A000217(n+5)+6)`
-/

namespace A260068.P2311639971678369412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A000217 (n + 5) + 6).toNat

end

end A260068.P2311639971678369412

/-! ## A260068.P3543786487898528077

`A260070(A046691(n+3)+10)`
-/

namespace A260068.P3543786487898528077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A046691 (n + 3) + 10).toNat

end

end A260068.P3543786487898528077

/-!
# A260069: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000111.

The programs for A260069, there is no canonical definition to state claims against.
-/

/-! ## A260069.P2583896823956817180

`A260070(A374008(n+1))`
-/

namespace A260069.P2583896823956817180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A374008 (n + 1)).toNat

end

end A260069.P2583896823956817180

/-! ## A260069.P6060076017692001806

`A260070(A167499(n+5)+2)`
-/

namespace A260069.P6060076017692001806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A167499 (n + 5) + 2).toNat

end

end A260069.P6060076017692001806

/-! ## A260069.P7123952503033918119

`A260070(A000124(n+6)+6)`
-/

namespace A260069.P7123952503033918119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A000124 (n + 6) + 6).toNat

end

end A260069.P7123952503033918119

/-! ## A260069.P10048029690109189788

`A260070(A000217(n+6)+7)`
-/

namespace A260069.P10048029690109189788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A000217 (n + 6) + 7).toNat

end

end A260069.P10048029690109189788

/-! ## A260069.P16596621926663881968

`A260070(A000096(n+6)-(n-1))`
-/

namespace A260069.P16596621926663881968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260070 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A260069.P16596621926663881968

/-!
# A260071: Primes p such that sigma(p) = sigma(p+1) - sigma(p-1).

The programs for A260071, there is no canonical definition to state claims against.
-/

/-! ## A260071.P15677545352722156420

`A260420(∑[∏{p}[n+1, #^val(n+1, #²)]²²])`
-/

namespace A260071.P15677545352722156420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260420 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260071.P15677545352722156420

/-!
# A260072: Primes p such that (p-1)^2+1 divides 2^(p-1)-1.

The programs for A260072, there is no canonical definition to state claims against.
-/

/-! ## A260072.P2861819776350249240

`A260407(n+2)`
-/

namespace A260072.P2861819776350249240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260407 (n + 2)

end

end A260072.P2861819776350249240

/-!
# A260073: Number of triples {x, y, x mod y} of three distinct divisors of n.

The programs for A260073, there is no canonical definition to state claims against.
-/

/-! ## A260073.P17225840916590355880

`and(A001465(A008480(n+1)), A146435(n+3))`
-/

namespace A260073.P17225840916590355880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001465 (A008480 (n + 1)).toNat) (A146435 (n + 3))

end

end A260073.P17225840916590355880

/-! ## A260073.P487941405188145795

`C(A285572(n+1), A285573(A343654(3*n+2)))`
-/

namespace A260073.P487941405188145795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285572 (n + 1)).toNat (A285573 (A343654 (3 * n + 2)).toNat).toNat

end

end A260073.P487941405188145795

/-! ## A260073.P6859862645091900367

`A000217(A019276(n+1)%A008480(n+1))`
-/

namespace A260073.P6859862645091900367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A019276 (n + 1)) (A008480 (n + 1))).toNat

end

end A260073.P6859862645091900367

/-! ## A260073.P3061129327968320552

`A077683(A126231(n+1))%A342084(n+1)`
-/

namespace A260073.P3061129327968320552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077683 (A126231 (n + 1)).toNat) (A342084 (n + 1))

end

end A260073.P3061129327968320552

/-! ## A260073.P12610672147109287259

`C(A303707(n+1), A068504(A001248(n+1)))`
-/

namespace A260073.P12610672147109287259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303707 (n + 1)).toNat (A068504 (A001248 (n + 1)).toNat).toNat

end

end A260073.P12610672147109287259

/-!
# A260074: Number of permutations p of [n] with no fixed points and cyclic displacement of elements restricted by two: p(i)<>i and (i-p(i) mod n <= 2 or p(i)-i mod n <= 2).

The programs for A260074, there is no canonical definition to state claims against.
-/

/-! ## A260074.P7684191405213380900

`A000166(n)%A162488(A087622(3*(n+1)))`
-/

namespace A260074.P7684191405213380900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000166 n) (A162488 (A087622 (3 * (n + 1))).toNat)

end

end A260074.P7684191405213380900

/-!
# A260076: Cyclotomic polynomial value Phi(9,n!).

The programs for A260076, the canonical program `A260076.P13301301169531904052` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260076 has offset 0).

The definition of A260076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260076.P13301301169531904052

`A060883(n!)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260076

/-- `A060883(n!)` -/
def P13301301169531904052.Spec : Prop :=
  ∀ n, P13301301169531904052.a n = A260076 n

theorem P13301301169531904052.correct : P13301301169531904052.Spec := by
  intro n
  simp only [A260076]

end A260076

/-! ## A260076.P17192368320756806445

`ceil((n!^3+1/2)²)`
-/

namespace A260076.P17192368320756806445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.factorial n ^ 3 : ℚ) + (1 : ℚ) / 2) ^ 2⌉

end

end A260076.P17192368320756806445

namespace A260076

/-- `ceil((n!^3+1/2)²)` -/
def P17192368320756806445.Spec : Prop :=
  ∀ n, P17192368320756806445.a n = A260076 n

end A260076

/-! ## A260076.P17850045204450917224

`A000442(n)+A000442(n)²+1`
-/

namespace A260076.P17850045204450917224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000442 n + (A000442 n ^ 2 + 1)

end

end A260076.P17850045204450917224

namespace A260076

/-- `A000442(n)+A000442(n)²+1` -/
def P17850045204450917224.Spec : Prop :=
  ∀ n, P17850045204450917224.a n = A260076 n

theorem P17850045204450917224.correct : P17850045204450917224.Spec := by
  intro n
  simp only [A260076, Nat.add_sub_cancel, A260076.P17850045204450917224.a, A260076.P13301301169531904052.a, A000442, A000442.P1367213380399715497.a, A060883, A060883.P9775535391316657163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A260076

/-! ## A260076.P12359136859808252922

`A060883(A061602(n))`
-/

namespace A260076.P12359136859808252922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (A061602 n).toNat

end

end A260076.P12359136859808252922

namespace A260076

/-- `A060883(A061602(n))` -/
def P12359136859808252922.Spec : Prop :=
  ∀ n, P12359136859808252922.a n = A260076 n

end A260076

/-!
# A260077: Cyclotomic polynomial value Phi(10,n!).

The programs for A260077, the canonical program `A260077.P8889522141968118746` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260077 has offset 0).

The definition of A260077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260077.P8889522141968118746

`A060884(n!)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260077

/-- `A060884(n!)` -/
def P8889522141968118746.Spec : Prop :=
  ∀ n, P8889522141968118746.a n = A260077 n

theorem P8889522141968118746.correct : P8889522141968118746.Spec := by
  intro n
  simp only [A260077]

end A260077

/-! ## A260077.P6765059627000548009

`A020547(n)*A020549(n)+1`
-/

namespace A260077.P6765059627000548009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020547 n * A020549 n + 1

end

end A260077.P6765059627000548009

namespace A260077

/-- `A020547(n)*A020549(n)+1` -/
def P6765059627000548009.Spec : Prop :=
  ∀ n, P6765059627000548009.a n = A260077 n

theorem P6765059627000548009.correct : P6765059627000548009.Spec := by
  intro n
  simp only [A260077, Nat.add_sub_cancel, A260077.P6765059627000548009.a, A260077.P8889522141968118746.a, A020547, A020547.P17789962853661916017.a, A020549, A020549.P16028107715467819987.a, A060884, A060884.P17835107360669808419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A260077

/-! ## A260077.P9674494975872640795

`A060884(∏[round(1/acot(n))])`
-/

namespace A260077.P9674494975872640795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260077.P9674494975872640795

namespace A260077

/-- `A060884(∏[round(1/acot(n))])` -/
def P9674494975872640795.Spec : Prop :=
  ∀ n, P9674494975872640795.a n = A260077 n

end A260077

/-! ## A260077.P11238765147001442819

`A060884(∏[round(sqrt(n²+1))])`
-/

namespace A260077.P11238765147001442819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260077.P11238765147001442819

namespace A260077

/-- `A060884(∏[round(sqrt(n²+1))])` -/
def P11238765147001442819.Spec : Prop :=
  ∀ n, P11238765147001442819.a n = A260077 n

end A260077

/-!
# A260079: The smallest product of n distinct primes no larger than the (2n)-th to exceed the square root of the (2n)-th primorial.

The programs for A260079, there is no canonical definition to state claims against.
-/

/-! ## A260079.P8477557869091549207

`A060796(2*A292125(n+1))`
-/

namespace A260079.P8477557869091549207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060796 (2 * A292125 (n + 1)).toNat

end

end A260079.P8477557869091549207

/-! ## A260079.P13945631207529698604

`A060796(lt[A353390(n), A077957(n)])`
-/

namespace A260079.P13945631207529698604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353390 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060796 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260079.P13945631207529698604

/-!
# A260080: Least positive integer k such that prime(k*n)^2 - 2 = prime(i*n)*prime(j*n) for some integers 0 < i < j.

The programs for A260080, there is no canonical definition to state claims against.
-/

/-! ## A260080.P3775443921076038399

`A266999(A214727(n)+7)`
-/

namespace A260080.P3775443921076038399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266999 (A214727 n + 7).toNat

end

end A260080.P3775443921076038399

/-!
# A260081: Number of permutations p of [n] with no fixed points and cyclic displacement of elements restricted by three: p(i)<>i and (i-p(i) mod n <= 3 or p(i)-i mod n <= 3).

The programs for A260081, there is no canonical definition to state claims against.
-/

/-! ## A260081.P3382853538730416518

`A000166(n)%A016921(A081125(n))`
-/

namespace A260081.P3382853538730416518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000166 n) (A016921 (A081125 n).toNat)

end

end A260081.P3382853538730416518

/-! ## A260081.P4277387236636857887

`A259780(n)%A005408(A250070(n+1))`
-/

namespace A260081.P4277387236636857887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259780 n) (A005408 (A250070 (n + 1)).toNat)

end

end A260081.P4277387236636857887

/-! ## A260081.P4341384389126706545

`A259781(n)%A005408(A250070(n+1))`
-/

namespace A260081.P4341384389126706545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259781 n) (A005408 (A250070 (n + 1)).toNat)

end

end A260081.P4341384389126706545

/-! ## A260081.P18337934796365460307

`A259782(n)%A005408(A250070(n+1))`
-/

namespace A260081.P18337934796365460307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259782 n) (A005408 (A250070 (n + 1)).toNat)

end

end A260081.P18337934796365460307

/-!
# A260084: Infinite sequence starting with a(0)=0 such that A(a(k)) = a(k-1) for all k>=1, where A(n) = n - A037445(n).

The programs for A260084, there is no canonical definition to state claims against.
-/

/-! ## A260084.P10762013528024447268

`2*A260124(n)`
-/

namespace A260084.P10762013528024447268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260124 n

end

end A260084.P10762013528024447268

/-! ## A260084.P10562291525976810163

`lcm(2, A260124(n%(n+1)))`
-/

namespace A260084.P10562291525976810163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260124 (n % (n + 1)))

end

end A260084.P10562291525976810163

/-! ## A260084.P8341912693336723512

`∑[A260085(floor(acot(n)+n))]-2`
-/

namespace A260084.P8341912693336723512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260085 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A260084.P8341912693336723512

/-! ## A260084.P14577414279401881173

`∑[A260085(abs(1-n)+1)]-4`
-/

namespace A260084.P14577414279401881173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260085 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A260084.P14577414279401881173

/-! ## A260084.P9725572965624263406

`2*(∑[A260123(abs(1-n)+1)]-2)`
-/

namespace A260084.P9725572965624263406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260123 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A260084.P9725572965624263406

/-! ## A260084.P16564362067163378732

`A005843(A260124(n))`
-/

namespace A260084.P16564362067163378732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260124 n).toNat

end

end A260084.P16564362067163378732

/-! ## A260084.P12468110907819179776

`A009531(lcm(2, A260124(n)))`
-/

namespace A260084.P12468110907819179776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (Int.lcm 2 (A260124 n))

end

end A260084.P12468110907819179776

/-! ## A260084.P11643560697377540481

`A064680(A260124(A118759(n)))`
-/

namespace A260084.P11643560697377540481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A260124 (A118759 n).toNat).toNat

end

end A260084.P11643560697377540481

/-! ## A260084.P8110279533715595176

`A260124(A118759(n))+A260124(n)`
-/

namespace A260084.P8110279533715595176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (A118759 n).toNat + A260124 n

end

end A260084.P8110279533715595176

/-! ## A260084.P15970075772908034190

`A260124(n+1)+A260124(n)-A260123(n+1)`
-/

namespace A260084.P15970075772908034190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (n + 1) + (A260124 n - A260123 (n + 1))

end

end A260084.P15970075772908034190

/-!
# A260085: Infinite sequence of positive integers such that a(n) = A037445(a(1)+a(2)+...+a(n)) for all n>=1.

The programs for A260085, there is no canonical definition to state claims against.
-/

/-! ## A260085.P16571288156032230699

`2*A260123(n+1)`
-/

namespace A260085.P16571288156032230699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260123 (n + 1)

end

end A260085.P16571288156032230699

/-! ## A260085.P8785857484404926361

`A037445(lcm(2, ∑[A260123(n+1)]))`
-/

namespace A260085.P8785857484404926361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A260085.P8785857484404926361

/-! ## A260085.P9808670419502041662

`A004277(a(A260123(n+1)-2))` with `a(0)=2`
-/

namespace A260085.P9808670419502041662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A004277 (a (A260123 (n + 1) - 2).toNat).toNat

end

end A260085.P9808670419502041662

/-! ## A260085.P4082610423300920574

`A056964(a(A260123(n+1)-2))` with `a(0)=2`
-/

namespace A260085.P4082610423300920574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056964 (a (A260123 (n + 1) - 2).toNat).toNat

end

end A260085.P4082610423300920574

/-! ## A260085.P3783598602821613719

`A062028(a(A260123(n+1)-2))` with `a(0)=2`
-/

namespace A260085.P3783598602821613719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A062028 (a (A260123 (n + 1) - 2).toNat).toNat

end

end A260085.P3783598602821613719

/-! ## A260085.P10452235657486741760

`A065642(a(A260123(n+1)-2))` with `a(0)=2`
-/

namespace A260085.P10452235657486741760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065642 (a (A260123 (n + 1) - 2).toNat).toNat

end

end A260085.P10452235657486741760

/-! ## A260085.P1261080247535225572

`A005843(A260123(n+1)^((n+2)%(n+1)))`
-/

namespace A260085.P1261080247535225572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260123 (n + 1) ^ ((n + 2) % (n + 1))).toNat

end

end A260085.P1261080247535225572

/-! ## A260085.P712586372528821643

`A005843(A260123(n+1)+n)-(Δ[n²]-1)`
-/

namespace A260085.P712586372528821643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260123 (n + 1) + (n : ℤ)).toNat - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1)

end

end A260085.P712586372528821643

/-! ## A260085.P15304519512447965436

`A001316(A260123(n+1)+A003817(n))`
-/

namespace A260085.P15304519512447965436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A260123 (n + 1) + A003817 n).toNat

end

end A260085.P15304519512447965436

/-! ## A260085.P13588344437967259283

`A005843(A260123(n+1)^A178334(n))`
-/

namespace A260085.P13588344437967259283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A260123 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A260085.P13588344437967259283

/-! ## A260085.P329499425026809129

`A005843(and(A065532(n), A260123(n+1)))`
-/

namespace A260085.P329499425026809129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.land (A065532 n) (A260123 (n + 1))).toNat

end

end A260085.P329499425026809129

/-! ## A260085.P10029630356990574845

`A000010(A008458(a(A260123(n+1)-2)))` with `a(0)=2`
-/

namespace A260085.P10029630356990574845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000010 (A008458 (a (A260123 (n + 1) - 2).toNat).toNat).toNat

end

end A260085.P10029630356990574845

/-! ## A260085.P9507098712058098931

`A260123(n+1)+A037445(∑[A260123(n+1)])`
-/

namespace A260085.P9507098712058098931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260123 (n + 1) + A037445 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260085.P9507098712058098931

/-!
# A260086: Smaller of amicable pair (x, y) as they are listed in A259933.

The programs for A260086, there is no canonical definition to state claims against.
-/

/-! ## A260086.P3336901577699619136

`A259953(n+1)-A260087(n+1)`
-/

namespace A260086.P3336901577699619136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259953 (n + 1) - A260087 (n + 1)

end

end A260086.P3336901577699619136

/-! ## A260086.P13769183349613268066

`A259933(2*n+1)`
-/

namespace A260086.P13769183349613268066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259933 (2 * n + 1)

end

end A260086.P13769183349613268066

/-! ## A260086.P718254306627233736

`A260087(n+1)-A275469(n+1)`
-/

namespace A260086.P718254306627233736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260087 (n + 1) - A275469 (n + 1)

end

end A260086.P718254306627233736

/-! ## A260086.P18408683269926610517

`A275316(n+1)-A275470(n+1)`
-/

namespace A260086.P18408683269926610517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275316 (n + 1) - A275470 (n + 1)

end

end A260086.P18408683269926610517

/-! ## A260086.P1076214035923392637

`A275316(n+1)+A275316(n+1)-A260087(n+1)`
-/

namespace A260086.P1076214035923392637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275316 (n + 1) + (A275316 (n + 1) - A260087 (n + 1))

end

end A260086.P1076214035923392637

/-!
# A260087: Larger of amicable pair (x, y) as they are listed in A259933.

The programs for A260087, there is no canonical definition to state claims against.
-/

/-! ## A260087.P16394886833384277309

`A259953(n+1)-A260086(n+1)`
-/

namespace A260087.P16394886833384277309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259953 (n + 1) - A260086 (n + 1)

end

end A260087.P16394886833384277309

/-! ## A260087.P4886998558455159341

`A259933(2*(n+1))`
-/

namespace A260087.P4886998558455159341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259933 (2 * (n + 1))

end

end A260087.P4886998558455159341

/-! ## A260087.P18072173139726135005

`A275469(n+1)+A260086(n+1)`
-/

namespace A260087.P18072173139726135005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275469 (n + 1) + A260086 (n + 1)

end

end A260087.P18072173139726135005

/-! ## A260087.P12520740725033191632

`A275470(n+1)+A275316(n+1)`
-/

namespace A260087.P12520740725033191632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275470 (n + 1) + A275316 (n + 1)

end

end A260087.P12520740725033191632

/-! ## A260087.P11914105433957839098

`A275316(n+1)+A275469(n+1)/2`
-/

namespace A260087.P11914105433957839098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275316 (n + 1) : ℚ) + (A275469 (n + 1) : ℚ) / 2

end

end A260087.P11914105433957839098

/-!
# A260088: Dimension of the space of newforms of weight 4 and level n.

The programs for A260088, there is no canonical definition to state claims against.
-/

/-! ## A260088.P8043362172658312950

`A292602(A048675(n+1))-A005369(A177697(n+1))`
-/

namespace A260088.P8043362172658312950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292602 (A048675 (n + 1)).toNat - A005369 (A177697 (n + 1)).toNat

end

end A260088.P8043362172658312950

/-! ## A260088.P12251931012290275874

`ceil(A002265(n)/A072078(A005915(n)))`
-/

namespace A260088.P12251931012290275874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002265 n : ℚ) / (A072078 (A005915 n).toNat : ℚ)⌉

end

end A260088.P12251931012290275874

/-!
# A260089: Expansion of psi(x^2) * f(x, x^2) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A260089, there is no canonical definition to state claims against.
-/

/-! ## A260089.P11845559588768639654

`A259896(3*n)`
-/

namespace A260089.P11845559588768639654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259896 (3 * n)

end

end A260089.P11845559588768639654

/-! ## A260089.P16385890946765524216

`A261115(4*n+1)/2`
-/

namespace A260089.P16385890946765524216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261115 (4 * n + 1) : ℚ) / 2

end

end A260089.P16385890946765524216

/-! ## A260089.P7251391043059000328

`A261119(A016921(n))/2`
-/

namespace A260089.P7251391043059000328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261119 (A016921 n).toNat : ℚ) / 2

end

end A260089.P7251391043059000328

/-! ## A260089.P11306571493398455996

`A261119(A008458(n)+1)/2`
-/

namespace A260089.P11306571493398455996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261119 (A008458 n + 1).toNat : ℚ) / 2

end

end A260089.P11306571493398455996

/-! ## A260089.P1352847497389047328

`A263571(A017077(n)+1)/2`
-/

namespace A260089.P1352847497389047328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263571 (A017077 n + 1).toNat : ℚ) / 2

end

end A260089.P1352847497389047328

/-! ## A260089.P10322261241164343829

`A263571(A008590(n)+2)/2`
-/

namespace A260089.P10322261241164343829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263571 (A008590 n + 2).toNat : ℚ) / 2

end

end A260089.P10322261241164343829

/-! ## A260089.P12618264686017858222

`A263571(A022144(n)+2)/2`
-/

namespace A260089.P12618264686017858222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263571 (A022144 n + 2).toNat : ℚ) / 2

end

end A260089.P12618264686017858222

/-! ## A260089.P3673087851296229165

`A259895(9*n+2)`
-/

namespace A260089.P3673087851296229165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259895 (9 * n + 2)

end

end A260089.P3673087851296229165

/-! ## A260089.P3560812122857228705

`A128580(A017569(n)-1)/2`
-/

namespace A260089.P3560812122857228705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128580 (A017569 n - 1).toNat : ℚ) / 2

end

end A260089.P3560812122857228705

/-! ## A260089.P6669515376279660007

`A129402(A017533(n)+2)/2`
-/

namespace A260089.P6669515376279660007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129402 (A017533 n + 2).toNat : ℚ) / 2

end

end A260089.P6669515376279660007

/-! ## A260089.P10727121559086979820

`A216513(A135659(n))`
-/

namespace A260089.P10727121559086979820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216513 (A135659 n).toNat

end

end A260089.P10727121559086979820

/-! ## A260089.P12821235583372576894

`A000377(A259752(n+1)+1)/2`
-/

namespace A260089.P12821235583372576894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000377 (A259752 (n + 1) + 1).toNat : ℚ) / 2

end

end A260089.P12821235583372576894

/-!
# A260090: Maximum number of kings on an n X n chessboard such that no king attacks more than one other king.

The programs for A260090, the canonical program `A260090.P12332897358441787934` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260090 has offset 1).

The definition of A260090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260090.P12332897358441787934

`a(n-1)+n+1-A103469(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260090

/-- `a(n-1)+n+1-A103469(n-1)` -/
def P12332897358441787934.Spec : Prop :=
  ∀ n, P12332897358441787934.a n = A260090 (n + 1)

theorem P12332897358441787934.correct : P12332897358441787934.Spec := by
  intro n
  simp only [A260090, Nat.add_sub_cancel]

end A260090

/-! ## A260090.P11995725782427565050

`A381749(∑[n+1])`
-/

namespace A260090.P11995725782427565050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260090.P11995725782427565050

namespace A260090

/-- `A381749(∑[n+1])` -/
def P11995725782427565050.Spec : Prop :=
  ∀ n, P11995725782427565050.a n = A260090 (n + 1)

end A260090

/-! ## A260090.P4037894091175223605

`A099480(n*A225553(2*(n+3)))`
-/

namespace A260090.P4037894091175223605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099480 ((n : ℤ) * A225553 (2 * (n + 3))).toNat

end

end A260090.P4037894091175223605

namespace A260090

/-- `A099480(n*A225553(2*(n+3)))` -/
def P4037894091175223605.Spec : Prop :=
  ∀ n, P4037894091175223605.a n = A260090 (n + 1)

end A260090

/-! ## A260090.P15740010718767043588

`A002264(xor(1, (n+2)²))-char[2]`
-/

namespace A260090.P15740010718767043588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.xor 1 ((n + 2) ^ 2)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260090.P15740010718767043588

namespace A260090

/-- `A002264(xor(1, (n+2)²))-char[2]` -/
def P15740010718767043588.Spec : Prop :=
  ∀ n, P15740010718767043588.a n = A260090 (n + 1)

end A260090

/-! ## A260090.P11540117305344627618

`∑[∑[A127327(A197634(2*n+3))]]`
-/

namespace A260090.P11540117305344627618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127327 (A197634 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260090.P11540117305344627618

namespace A260090

/-- `∑[∑[A127327(A197634(2*n+3))]]` -/
def P11540117305344627618.Spec : Prop :=
  ∀ n, P11540117305344627618.a n = A260090 (n + 1)

end A260090

/-!
# A260095: This sequence is obtained from the concatenation of certain representative members of a family of related sequences, each of which enumerates weight products along vertex paths.

The programs for A260095, there is no canonical definition to state claims against.
-/

/-! ## A260095.P15436602527226722182

`∏{digits}[record[A239087(n+10)], #]`
-/

namespace A260095.P15436602527226722182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239087 (n + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A260095.P15436602527226722182

/-! ## A260095.P12078372205630016727

`A007954(record[A239087(n+10)])`
-/

namespace A260095.P12078372205630016727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239087 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260095.P12078372205630016727

/-! ## A260095.P12541677704176928245

`A001222(A232646(n+2))*A002260(n+2)`
-/

namespace A260095.P12541677704176928245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A232646 (n + 2)).toNat * A002260 (n + 2)

end

end A260095.P12541677704176928245

/-! ## A260095.P14397799978841167006

`A000005(A100852(n+1)/3)`
-/

namespace A260095.P14397799978841167006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A100852 (n + 1) : ℚ) / 3)).toNat

end

end A260095.P14397799978841167006

/-! ## A260095.P12085705898641745881

`A029931(A193899(n+1))`
-/

namespace A260095.P12085705898641745881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A193899 (n + 1)).toNat

end

end A260095.P12085705898641745881

/-!
# A260096: Numbers whose decimal and hexadecimal representations both have strictly decreasing digits.

The programs for A260096, there is no canonical definition to state claims against.
-/

/-! ## A260096.P9753816677653276423

`∩[A009995(n+1), A023797(n+1)]`
-/

namespace A260096.P9753816677653276423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260096.P9753816677653276423

/-! ## A260096.P13693853390267466225

`A276512(eq[n, A276766(n)])`
-/

namespace A260096.P13693853390267466225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276512 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260096.P13693853390267466225

/-! ## A260096.P4200159874300220321

`eq[A064834(A062745(n)), A257297(n)]`
-/

namespace A260096.P4200159874300220321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A062745 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260096.P4200159874300220321

/-! ## A260096.P3717386581568667889

`lt[A239428(n+1), A271518(A271518(n))]`
-/

namespace A260096.P3717386581568667889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 (A271518 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260096.P3717386581568667889

/-! ## A260096.P17569938533030745944

`lt[A192135(n+1), A194775(A355899(n+1))]`
-/

namespace A260096.P17569938533030745944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194775 (A355899 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260096.P17569938533030745944

/-!
# A260098: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010101.

The programs for A260098, there is no canonical definition to state claims against.
-/

/-! ## A260098.P8261880609243748787

`A260106(∑[4*n]+1)`
-/

namespace A260098.P8261880609243748787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260098.P8261880609243748787

/-! ## A260098.P8092558137670345543

`record[A003982(n)*A260106(n+1)]`
-/

namespace A260098.P8092558137670345543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260098.P8092558137670345543

/-! ## A260098.P3419288993822885729

`record[A214505(n)*A260106(n+1)]`
-/

namespace A260098.P3419288993822885729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A260106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260098.P3419288993822885729

/-! ## A260098.P11987994590737601451

`record[root(A260106(n+1), A143182(n))]`
-/

namespace A260098.P11987994590737601451
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A260106 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260098.P11987994590737601451

/-! ## A260098.P8455115750620722425

`record[gcd(A003987(n), A260106(n+1))]`
-/

namespace A260098.P8455115750620722425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A260106 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260098.P8455115750620722425

/-!
# A260099: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000101 or 00010101.

The programs for A260099, there is no canonical definition to state claims against.
-/

/-! ## A260099.P256074276042236702

`A260106(∑[n]+1)`
-/

namespace A260099.P256074276042236702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260099.P256074276042236702

/-! ## A260099.P11309009550303091710

`record[A260106(A056534(n+1))]`
-/

namespace A260099.P11309009550303091710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260099.P11309009550303091710

/-! ## A260099.P16417354064429259222

`record[A260106(A267104(n+1))]`
-/

namespace A260099.P16417354064429259222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260099.P16417354064429259222

/-! ## A260099.P6401246834679419448

`record[A260106(A276954(n+1))]`
-/

namespace A260099.P6401246834679419448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260106 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260099.P6401246834679419448

/-! ## A260099.P11996206786389020034

`record[A010054(n)*A260106(n+1)]`
-/

namespace A260099.P11996206786389020034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260099.P11996206786389020034

