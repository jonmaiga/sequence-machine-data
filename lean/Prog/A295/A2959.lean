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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
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
# A295901: Unique sequence satisfying SumXOR_{d divides n} a(d) = n^2 for any n > 0, where SumXOR is the analog of summation under the binary XOR operation.

The programs for A295901, the canonical program `A295901.P1895136251216199414` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295901 has offset 1).

The definition of A295901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295901.P1895136251216199414

`A296206((n+1)²)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A295901

/-- `A296206((n+1)²)` -/
def P1895136251216199414.Spec : Prop :=
  ∀ n, P1895136251216199414.a n = A295901 (n + 1)

theorem P1895136251216199414.correct : P1895136251216199414.Spec := by
  intro n
  simp only [A295901, Nat.add_sub_cancel]

end A295901

/-! ## A295901.P17415305755824956938

`and(-3, A296206((n+1)^2))`
-/

namespace A295901.P17415305755824956938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A296206 ((n + 1) ^ 2))

end

end A295901.P17415305755824956938

namespace A295901

/-- `and(-3, A296206((n+1)^2))` -/
def P17415305755824956938.Spec : Prop :=
  ∀ n, P17415305755824956938.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P17077781854664770869

`A000027(A296206((n+1)^2))`
-/

namespace A295901.P17077781854664770869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A296206 ((n + 1) ^ 2)).toNat

end

end A295901.P17077781854664770869

namespace A295901

/-- `A000027(A296206((n+1)^2))` -/
def P17077781854664770869.Spec : Prop :=
  ∀ n, P17077781854664770869.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P14655445515905604658

`A296206((n+1)^2)%A137488(n+1)`
-/

namespace A295901.P14655445515905604658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296206 ((n + 1) ^ 2)) (A137488 (n + 1))

end

end A295901.P14655445515905604658

namespace A295901

/-- `A296206((n+1)^2)%A137488(n+1)` -/
def P14655445515905604658.Spec : Prop :=
  ∀ n, P14655445515905604658.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P8658797282135240647

`A007318(C(2, n))*A296206((n+1)^2)`
-/

namespace A295901.P8658797282135240647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A296206 ((n + 1) ^ 2)

end

end A295901.P8658797282135240647

namespace A295901

/-- `A007318(C(2, n))*A296206((n+1)^2)` -/
def P8658797282135240647.Spec : Prop :=
  ∀ n, P8658797282135240647.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P9004304269256293859

`A296206((n+1)^2)+char[A000108(n+7)]`
-/

namespace A295901.P9004304269256293859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296206 ((n + 1) ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A295901.P9004304269256293859

namespace A295901

/-- `A296206((n+1)^2)+char[A000108(n+7)]` -/
def P9004304269256293859.Spec : Prop :=
  ∀ n, P9004304269256293859.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P11634010814879860690

`A000041(gcd(n, n+1))*A296206((n+1)^2)`
-/

namespace A295901.P11634010814879860690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A296206 ((n + 1) ^ 2)

end

end A295901.P11634010814879860690

namespace A295901

/-- `A000041(gcd(n, n+1))*A296206((n+1)^2)` -/
def P11634010814879860690.Spec : Prop :=
  ∀ n, P11634010814879860690.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P16205219899901989127

`sqrt(A296206((n+1)^2)^gcd(2, A000010(n+2)))`
-/

namespace A295901.P16205219899901989127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A296206 ((n + 1) ^ 2) ^ Int.gcd 2 (A000010 (n + 2)) : ℝ)

end

end A295901.P16205219899901989127

namespace A295901

/-- `sqrt(A296206((n+1)^2)^gcd(2, A000010(n+2)))` -/
def P16205219899901989127.Spec : Prop :=
  ∀ n, P16205219899901989127.a n = (A295901 (n + 1) : ℝ)

end A295901

/-! ## A295901.P8876954879829038593

`A296206((n+1)^2)+A008683(A082073(n+1))`
-/

namespace A295901.P8876954879829038593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296206 ((n + 1) ^ 2) + A008683 (A082073 (n + 1)).toNat

end

end A295901.P8876954879829038593

namespace A295901

/-- `A296206((n+1)^2)+A008683(A082073(n+1))` -/
def P8876954879829038593.Spec : Prop :=
  ∀ n, P8876954879829038593.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P10240662224788674583

`A001222(record[A014963(n+2)])*A296206((n+1)^2)`
-/

namespace A295901.P10240662224788674583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A296206 ((n + 1) ^ 2)

end

end A295901.P10240662224788674583

namespace A295901

/-- `A001222(record[A014963(n+2)])*A296206((n+1)^2)` -/
def P10240662224788674583.Spec : Prop :=
  ∀ n, P10240662224788674583.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P3301613402465872258

`A007318(∑{p}[n+1, A001222(#)])*A296206((n+1)^2)`
-/

namespace A295901.P3301613402465872258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat * A296206 ((n + 1) ^ 2)

end

end A295901.P3301613402465872258

namespace A295901

/-- `A007318(∑{p}[n+1, A001222(#)])*A296206((n+1)^2)` -/
def P3301613402465872258.Spec : Prop :=
  ∀ n, P3301613402465872258.a n = A295901 (n + 1)

end A295901

/-! ## A295901.P17687692481567382634

`A057300(A057300(A296206((n+1)*(n+1))))`
-/

namespace A295901.P17687692481567382634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A057300 (A296206 ((n + 1) * (n + 1))).toNat).toNat

end

end A295901.P17687692481567382634

namespace A295901

/-- `A057300(A057300(A296206((n+1)*(n+1))))` -/
def P17687692481567382634.Spec : Prop :=
  ∀ n, P17687692481567382634.a n = A295901 (n + 1)

end A295901

/-!
# A295904: Number of (not necessarily maximal) cliques in the n-sun graph.

The programs for A295904, the canonical program `A295904.P16408828992499559893` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295904 has offset 1).

The definition of A295904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295904.P16408828992499559893

`2^(n+1)+4*(n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295904

/-- `2^(n+1)+4*(n+1)` -/
def P16408828992499559893.Spec : Prop :=
  ∀ n, (P16408828992499559893.a n : ℤ) = A295904 (n + 1)

theorem P16408828992499559893.correct : P16408828992499559893.Spec := by
  intro n
  simp only [A295904, Nat.add_sub_cancel]

end A295904

/-! ## A295904.P5350245119957686623

`∑[5-or(1, -2^n)]`
-/

namespace A295904.P5350245119957686623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.lor 1 (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295904.P5350245119957686623

namespace A295904

/-- `∑[5-or(1, -2^n)]` -/
def P5350245119957686623.Spec : Prop :=
  ∀ n, P5350245119957686623.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P4124260148033081986

`∑[2*(a(n-1)-2)]` with `a(0)=6, a(1)=6`
-/

namespace A295904.P4124260148033081986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 6] fun n f1 =>
  2 * (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295904.P4124260148033081986

namespace A295904

/-- `∑[2*(a(n-1)-2)]` -/
def P4124260148033081986.Spec : Prop :=
  ∀ n, P4124260148033081986.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P1951899330823474538

`floor(2^n+a(n-1)+4)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A295904.P1951899330823474538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  2 ^ n + (a (n - 1) + 4)

end

end A295904.P1951899330823474538

namespace A295904

/-- `floor(2^n+a(n-1)+4)` -/
def P1951899330823474538.Spec : Prop :=
  ∀ n, (P1951899330823474538.a n : ℤ) = A295904 (n + 1)

theorem P1951899330823474538.correct : P1951899330823474538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A295904, Nat.add_sub_cancel, A295904.P1951899330823474538.a, A295904.P16408828992499559893.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A295904, Nat.add_sub_cancel, A295904.P1951899330823474538.a, A295904.P16408828992499559893.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A295904

/-! ## A295904.P676948968963824200

`∑[a(n-1)+a(n-1)-4]` with `a(0)=6, a(1)=6`
-/

namespace A295904.P676948968963824200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295904.P676948968963824200

namespace A295904

/-- `∑[a(n-1)+a(n-1)-4]` -/
def P676948968963824200.Spec : Prop :=
  ∀ n, P676948968963824200.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P7155780280559790159

`∑[a(n-1)-(4-a(n-1))]` with `a(0)=6, a(1)=6`
-/

namespace A295904.P7155780280559790159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 6] fun n f1 =>
  f1 (n - 1) - (4 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295904.P7155780280559790159

namespace A295904

/-- `∑[a(n-1)-(4-a(n-1))]` -/
def P7155780280559790159.Spec : Prop :=
  ∀ n, P7155780280559790159.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P7156558528553775863

`2*Δ[A131924(n)]`
-/

namespace A295904.P7156558528553775863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A295904.P7156558528553775863

namespace A295904

/-- `2*Δ[A131924(n)]` -/
def P7156558528553775863.Spec : Prop :=
  ∀ n, P7156558528553775863.a n = A295904 (n + 1)

theorem P7156558528553775863.correct : P7156558528553775863.Spec := by
  intro n
  simp only [A295904, Nat.add_sub_cancel, A295904.P7156558528553775863.f1, A295904.P7156558528553775863.a, A295904.P16408828992499559893.a, A131924, A131924.P7510618184630256618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295904

/-! ## A295904.P17402445468793818571

`∑[A255047(n)+5]`
-/

namespace A295904.P17402445468793818571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295904.P17402445468793818571

namespace A295904

/-- `∑[A255047(n)+5]` -/
def P17402445468793818571.Spec : Prop :=
  ∀ n, P17402445468793818571.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P12447152167348122939

`2*(A176691(n)+1)`
-/

namespace A295904.P12447152167348122939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A176691 n + 1)

end

end A295904.P12447152167348122939

namespace A295904

/-- `2*(A176691(n)+1)` -/
def P12447152167348122939.Spec : Prop :=
  ∀ n, P12447152167348122939.a n = A295904 (n + 1)

theorem P12447152167348122939.correct : P12447152167348122939.Spec := by
  intro n
  simp only [A295904, Nat.add_sub_cancel, A295904.P12447152167348122939.a, A295904.P16408828992499559893.a, A176691, A176691.P17064043536026468314.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295904

/-! ## A295904.P17595946284792258316

`2*(A100314(n)+2)`
-/

namespace A295904.P17595946284792258316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100314 n + 2)

end

end A295904.P17595946284792258316

namespace A295904

/-- `2*(A100314(n)+2)` -/
def P17595946284792258316.Spec : Prop :=
  ∀ n, P17595946284792258316.a n = A295904 (n + 1)

theorem P17595946284792258316.correct : P17595946284792258316.Spec := by
  intro n
  simp only [A295904, Nat.add_sub_cancel, A295904.P17595946284792258316.a, A295904.P16408828992499559893.a, A100314, A100314.P9525572227045906692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295904

/-! ## A295904.P17838706901732520727

`2*(A061761(n)+3)`
-/

namespace A295904.P17838706901732520727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061761 n + 3)

end

end A295904.P17838706901732520727

namespace A295904

/-- `2*(A061761(n)+3)` -/
def P17838706901732520727.Spec : Prop :=
  ∀ n, P17838706901732520727.a n = A295904 (n + 1)

theorem P17838706901732520727.correct : P17838706901732520727.Spec := by
  intro n
  simp only [A295904, Nat.add_sub_cancel, A295904.P17838706901732520727.a, A295904.P16408828992499559893.a, A061761, A061761.P16955976905781525061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295904

/-! ## A295904.P13616438670692721908

`∑[Δ[A155559(n)]+4]`
-/

namespace A295904.P13616438670692721908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295904.P13616438670692721908

namespace A295904

/-- `∑[Δ[A155559(n)]+4]` -/
def P13616438670692721908.Spec : Prop :=
  ∀ n, P13616438670692721908.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P2684351880182237071

`2*(∑[A056469(n)]+1)`
-/

namespace A295904.P2684351880182237071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295904.P2684351880182237071

namespace A295904

/-- `2*(∑[A056469(n)]+1)` -/
def P2684351880182237071.Spec : Prop :=
  ∀ n, P2684351880182237071.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P15246181155143419442

`2*(Δ[A001580(n)]+1)`
-/

namespace A295904.P15246181155143419442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A295904.P15246181155143419442

namespace A295904

/-- `2*(Δ[A001580(n)]+1)` -/
def P15246181155143419442.Spec : Prop :=
  ∀ n, P15246181155143419442.a n = A295904 (n + 1)

theorem P15246181155143419442.correct : P15246181155143419442.Spec := by
  intro n
  simp only [A295904, Nat.add_sub_cancel, A295904.P15246181155143419442.f1, A295904.P15246181155143419442.a, A295904.P16408828992499559893.a, A001580, A001580.P876701067235307781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295904

/-! ## A295904.P6799422102335789180

`∑[2*(A011782(n)+2)]`
-/

namespace A295904.P6799422102335789180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295904.P6799422102335789180

namespace A295904

/-- `∑[2*(A011782(n)+2)]` -/
def P6799422102335789180.Spec : Prop :=
  ∀ n, P6799422102335789180.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P10527774669024801422

`2*(Δ[A020873(n)]+2)`
-/

namespace A295904.P10527774669024801422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 2)

end

end A295904.P10527774669024801422

namespace A295904

/-- `2*(Δ[A020873(n)]+2)` -/
def P10527774669024801422.Spec : Prop :=
  ∀ n, P10527774669024801422.a n = A295904 (n + 1)

theorem P10527774669024801422.correct : P10527774669024801422.Spec := by
  intro n
  simp only [A295904, Nat.add_sub_cancel, A295904.P10527774669024801422.f1, A295904.P10527774669024801422.a, A295904.P16408828992499559893.a, A020873, A020873.P5294214750322063011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295904

/-! ## A295904.P5570560069515347788

`record[2*(A016724(n)+1)]`
-/

namespace A295904.P5570560069515347788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016724 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295904.P5570560069515347788

namespace A295904

/-- `record[2*(A016724(n)+1)]` -/
def P5570560069515347788.Spec : Prop :=
  ∀ n, P5570560069515347788.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P9168818958992291019

`2*(A005126(n)+n+1)`
-/

namespace A295904.P9168818958992291019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005126 n + (n + 1 : ℤ))

end

end A295904.P9168818958992291019

namespace A295904

/-- `2*(A005126(n)+n+1)` -/
def P9168818958992291019.Spec : Prop :=
  ∀ n, P9168818958992291019.a n = A295904 (n + 1)

theorem P9168818958992291019.correct : P9168818958992291019.Spec := by
  intro n
  simp only [A295904, Nat.add_sub_cancel, A295904.P9168818958992291019.a, A295904.P16408828992499559893.a, A005126, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295904

/-! ## A295904.P1308699859971307310

`2*(A052968(n+1)+n)`
-/

namespace A295904.P1308699859971307310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052968 (n + 1) + (n : ℤ))

end

end A295904.P1308699859971307310

namespace A295904

/-- `2*(A052968(n+1)+n)` -/
def P1308699859971307310.Spec : Prop :=
  ∀ n, P1308699859971307310.a n = A295904 (n + 1)

end A295904

/-! ## A295904.P6979251736396177753

`A052968(n)*A255176(n)`
-/

namespace A295904.P6979251736396177753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n * A255176 n

end

end A295904.P6979251736396177753

namespace A295904

/-- `A052968(n)*A255176(n)` -/
def P6979251736396177753.Spec : Prop :=
  ∀ n, P6979251736396177753.a n = A295904 (n + 1)

end A295904

/-!
# A295905: Number of (not necessarily maximal) cliques in the n X n knight graph.

The programs for A295905, the canonical program `A295905.P10892409839882005326` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295905 has offset 1).

The definition of A295905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295905.P10892409839882005326

`5*(n+1)²-12*(n+1)+9`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295905

/-- `5*(n+1)²-12*(n+1)+9` -/
def P10892409839882005326.Spec : Prop :=
  ∀ n, P10892409839882005326.a n = A295905 (n + 1)

theorem P10892409839882005326.correct : P10892409839882005326.Spec := by
  intro n
  simp only [A295905, Nat.add_sub_cancel]

end A295905

/-! ## A295905.P8558409010280437874

`∑[a(n-1)+10]` with `a(0)=2, a(1)=3`
-/

namespace A295905.P8558409010280437874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295905.P8558409010280437874

namespace A295905

/-- `∑[a(n-1)+10]` -/
def P8558409010280437874.Spec : Prop :=
  ∀ n, (P8558409010280437874.a n : ℤ) = A295905 (n + 1)

end A295905

/-! ## A295905.P5581626976367520540

`∑[ogf((2-x+9x^2)/(1-2x+x^2))]`
-/

namespace A295905.P5581626976367520540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295905.P5581626976367520540

namespace A295905

/-- `∑[ogf((2-x+9x^2)/(1-2x+x^2))]` -/
def P5581626976367520540.Spec : Prop :=
  ∀ n, P5581626976367520540.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P5858041817096370050

`ogf((2-x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A295905.P5858041817096370050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 9] [1, -3, 3, -1] n

end

end A295905.P5858041817096370050

namespace A295905

/-- `ogf((2-x+9x^2)/(1-3x+3x^2-x^3))` -/
def P5858041817096370050.Spec : Prop :=
  ∀ n, P5858041817096370050.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P12234009159316075188

`abs(xor(2, 5*n²)-2*n)`
-/

namespace A295905.P12234009159316075188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 2 (5 * n ^ 2) : ℤ) - (2 * n : ℤ)|

end

end A295905.P12234009159316075188

namespace A295905

/-- `abs(xor(2, 5*n²)-2*n)` -/
def P12234009159316075188.Spec : Prop :=
  ∀ n, P12234009159316075188.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P6947101236486180230

`floor(2*(a(n-1)+5)-a(n-2))` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A295905.P6947101236486180230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * (a (n - 1) + 5) - a (n - 2)

end

end A295905.P6947101236486180230

namespace A295905

/-- `floor(2*(a(n-1)+5)-a(n-2))` -/
def P6947101236486180230.Spec : Prop :=
  ∀ n, P6947101236486180230.a n = A295905 (n + 1)

theorem P6947101236486180230.correct : P6947101236486180230.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A295905, Nat.add_sub_cancel, A295905.P6947101236486180230.a, A295905.P10892409839882005326.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A295905, Nat.add_sub_cancel, A295905.P6947101236486180230.a, A295905.P10892409839882005326.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A295905

/-! ## A295905.P1792897665110182284

`abs(n-(A172043(n)+1))`
-/

namespace A295905.P1792897665110182284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A172043 n + 1)|

end

end A295905.P1792897665110182284

namespace A295905

/-- `abs(n-(A172043(n)+1))` -/
def P1792897665110182284.Spec : Prop :=
  ∀ n, P1792897665110182284.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P14886547473614386486

`abs(n*(A016873(n)-4)+2)`
-/

namespace A295905.P14886547473614386486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A016873 n - 4) + 2|

end

end A295905.P14886547473614386486

namespace A295905

/-- `abs(n*(A016873(n)-4)+2)` -/
def P14886547473614386486.Spec : Prop :=
  ∀ n, P14886547473614386486.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P16109426127744195946

`∑[A181390(n+1)+2*n+1]`
-/

namespace A295905.P16109426127744195946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181390 (n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295905.P16109426127744195946

namespace A295905

/-- `∑[A181390(n+1)+2*n+1]` -/
def P16109426127744195946.Spec : Prop :=
  ∀ n, P16109426127744195946.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P17607589641604248857

`(n²*A016885(n)+2)/(n+1)`
-/

namespace A295905.P17607589641604248857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A016885 n + 2 : ℚ) / (n + 1 : ℚ)

end

end A295905.P17607589641604248857

namespace A295905

/-- `(n²*A016885(n)+2)/(n+1)` -/
def P17607589641604248857.Spec : Prop :=
  ∀ n, P17607589641604248857.a n = (A295905 (n + 1) : ℚ)

theorem P17607589641604248857.correct : P17607589641604248857.Spec := by
  intro n
  simp only [A295905, Nat.add_sub_cancel, A295905.P17607589641604248857.a, A295905.P10892409839882005326.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295905

/-! ## A295905.P12087794421846462242

`2*((A000567(n)+2*n²)/2+1)`
-/

namespace A295905.P12087794421846462242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000567 n + (2 * n ^ 2 : ℤ) : ℚ) / 2 + 1)

end

end A295905.P12087794421846462242

namespace A295905

/-- `2*((A000567(n)+2*n²)/2+1)` -/
def P12087794421846462242.Spec : Prop :=
  ∀ n, P12087794421846462242.a n = (A295905 (n + 1) : ℚ)

theorem P12087794421846462242.correct : P12087794421846462242.Spec := by
  intro n
  simp only [A295905, Nat.add_sub_cancel, A295905.P12087794421846462242.a, A295905.P10892409839882005326.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295905

/-! ## A295905.P8428343566767256049

`abs(ceil((A005901(n)+2*(n+1))/2)-3*n)`
-/

namespace A295905.P8428343566767256049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A005901 n + (2 * (n + 1) : ℤ) : ℚ) / 2⌉ - (3 * n : ℤ)|

end

end A295905.P8428343566767256049

namespace A295905

/-- `abs(ceil((A005901(n)+2*(n+1))/2)-3*n)` -/
def P8428343566767256049.Spec : Prop :=
  ∀ n, P8428343566767256049.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P15963068026412897802

`abs(A161711(n)+A161703(n))`
-/

namespace A295905.P15963068026412897802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161711 n + A161703 n|

end

end A295905.P15963068026412897802

namespace A295905

/-- `abs(A161711(n)+A161703(n))` -/
def P15963068026412897802.Spec : Prop :=
  ∀ n, P15963068026412897802.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P1226324663076991932

`xor(A145995(n+1), A176040(n))`
-/

namespace A295905.P1226324663076991932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A145995 (n + 1)) (A176040 n)

end

end A295905.P1226324663076991932

namespace A295905

/-- `xor(A145995(n+1), A176040(n))` -/
def P1226324663076991932.Spec : Prop :=
  ∀ n, P1226324663076991932.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P1219567717955481294

`abs(n-1-(A016742(n)+A002061(n)))`
-/

namespace A295905.P1219567717955481294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 - (A016742 n + A002061 n)|

end

end A295905.P1219567717955481294

namespace A295905

/-- `abs(n-1-(A016742(n)+A002061(n)))` -/
def P1219567717955481294.Spec : Prop :=
  ∀ n, P1219567717955481294.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P18019118361890210268

`record[A232397(n)+2-n]`
-/

namespace A295905.P18019118361890210268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232397 n + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295905.P18019118361890210268

namespace A295905

/-- `record[A232397(n)+2-n]` -/
def P18019118361890210268.Spec : Prop :=
  ∀ n, P18019118361890210268.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P4213707442542211748

`abs(A027689(2*n)-A114949(3*n))`
-/

namespace A295905.P4213707442542211748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027689 (2 * n) - A114949 (3 * n)|

end

end A295905.P4213707442542211748

namespace A295905

/-- `abs(A027689(2*n)-A114949(3*n))` -/
def P4213707442542211748.Spec : Prop :=
  ∀ n, P4213707442542211748.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P6438168571832441395

`record[A147874(A120385(n+1))+2]`
-/

namespace A295905.P6438168571832441395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (A120385 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295905.P6438168571832441395

namespace A295905

/-- `record[A147874(A120385(n+1))+2]` -/
def P6438168571832441395.Spec : Prop :=
  ∀ n, P6438168571832441395.a n = A295905 (n + 1)

end A295905

/-! ## A295905.P17850505868947648601

`∑[A014681(record[A267318(n)])]`
-/

namespace A295905.P17850505868947648601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295905.P17850505868947648601

namespace A295905

/-- `∑[A014681(record[A267318(n)])]` -/
def P17850505868947648601.Spec : Prop :=
  ∀ n, P17850505868947648601.a n = A295905 (n + 1)

end A295905

/-!
# A295906: Number of (not necessarily maximal) cliques in the n X n king graph.

The programs for A295906, the canonical program `A295906.P16250557608458405164` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295906 has offset 1).

The definition of A295906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295906.P4035090814338770601

`2*(5*(n+1)²-8*(n+1)+4)`
-/

namespace A295906.P4035090814338770601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((5 * (n + 1) ^ 2 : ℤ) - (8 * (n + 1) : ℤ) + 4)

end

end A295906.P4035090814338770601

namespace A295906

/-- `2*(5*(n+1)²-8*(n+1)+4)` -/
def P4035090814338770601.Spec : Prop :=
  ∀ n, P4035090814338770601.a n = A295906 (n + 1)

theorem P4035090814338770601.correct : P4035090814338770601.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P4035090814338770601.a, A295906.P16250557608458405164.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P4035090814338770601.a, A295906.P16250557608458405164.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A295906

/-! ## A295906.P16250557608458405164

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=16, a(2)=50`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295906

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16250557608458405164.Spec : Prop :=
  ∀ n, P16250557608458405164.a n = A295906 (n + 1)

theorem P16250557608458405164.correct : P16250557608458405164.Spec := by
  intro n
  simp only [A295906, Nat.add_sub_cancel]

end A295906

/-! ## A295906.P6767938812145897921

`∑[a(n-1)+20]` with `a(0)=2, a(1)=14`
-/

namespace A295906.P6767938812145897921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 14] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295906.P6767938812145897921

namespace A295906

/-- `∑[a(n-1)+20]` -/
def P6767938812145897921.Spec : Prop :=
  ∀ n, (P6767938812145897921.a n : ℤ) = A295906 (n + 1)

end A295906

/-! ## A295906.P16003855002662322751

`∑[record[lcm(2, 5*n+2)]]`
-/

namespace A295906.P16003855002662322751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (5 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295906.P16003855002662322751

namespace A295906

/-- `∑[record[lcm(2, 5*n+2)]]` -/
def P16003855002662322751.Spec : Prop :=
  ∀ n, (P16003855002662322751.a n : ℤ) = A295906 (n + 1)

end A295906

/-! ## A295906.P10343599147459772723

`∑[ogf((2+10x+8x^2)/(1-2x+x^2))]`
-/

namespace A295906.P10343599147459772723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295906.P10343599147459772723

namespace A295906

/-- `∑[ogf((2+10x+8x^2)/(1-2x+x^2))]` -/
def P10343599147459772723.Spec : Prop :=
  ∀ n, P10343599147459772723.a n = A295906 (n + 1)

end A295906

/-! ## A295906.P13704992986249791325

`ogf((2+10x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A295906.P13704992986249791325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10, 8] [1, -3, 3, -1] n

end

end A295906.P13704992986249791325

namespace A295906

/-- `ogf((2+10x+8x^2)/(1-3x+3x^2-x^3))` -/
def P13704992986249791325.Spec : Prop :=
  ∀ n, P13704992986249791325.a n = A295906 (n + 1)

end A295906

/-! ## A295906.P4238769391643210111

`8-∑[a(n-1)-20]` with `a(0)=6`
-/

namespace A295906.P4238769391643210111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295906.P4238769391643210111

namespace A295906

/-- `8-∑[a(n-1)-20]` -/
def P4238769391643210111.Spec : Prop :=
  ∀ n, P4238769391643210111.a n = A295906 (n + 1)

end A295906

/-! ## A295906.P8996111130718433578

`A272039(n)+1`
-/

namespace A295906.P8996111130718433578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n + 1

end

end A295906.P8996111130718433578

namespace A295906

/-- `A272039(n)+1` -/
def P8996111130718433578.Spec : Prop :=
  ∀ n, P8996111130718433578.a n = A295906 (n + 1)

theorem P8996111130718433578.correct : P8996111130718433578.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P8996111130718433578.a, A295906.P16250557608458405164.a, A272039, A272039.P16521876396814227489.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P8996111130718433578.a, A295906.P16250557608458405164.a, A272039, A272039.P16521876396814227489.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-! ## A295906.P13741473754614505724

`(A381196(n)+3)/2`
-/

namespace A295906.P13741473754614505724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381196 n + 3 : ℚ) / 2

end

end A295906.P13741473754614505724

namespace A295906

/-- `(A381196(n)+3)/2` -/
def P13741473754614505724.Spec : Prop :=
  ∀ n, P13741473754614505724.a n = (A295906 (n + 1) : ℚ)

theorem P13741473754614505724.correct : P13741473754614505724.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P13741473754614505724.a, A295906.P16250557608458405164.a, A381196, A381196.P2799879096650830800.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P13741473754614505724.a, A295906.P16250557608458405164.a, A381196, A381196.P2799879096650830800.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-! ## A295906.P6361045262764193401

`A080860(n)+1-n`
-/

namespace A295906.P6361045262764193401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080860 n + (1 - (n : ℤ))

end

end A295906.P6361045262764193401

namespace A295906

/-- `A080860(n)+1-n` -/
def P6361045262764193401.Spec : Prop :=
  ∀ n, P6361045262764193401.a n = A295906 (n + 1)

theorem P6361045262764193401.correct : P6361045262764193401.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P6361045262764193401.a, A295906.P16250557608458405164.a, A080860, A080860.P16619193845645420021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P6361045262764193401.a, A295906.P16250557608458405164.a, A080860, A080860.P16619193845645420021.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-! ## A295906.P7467010520642541707

`n*A017317(n)+2`
-/

namespace A295906.P7467010520642541707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017317 n + 2

end

end A295906.P7467010520642541707

namespace A295906

/-- `n*A017317(n)+2` -/
def P7467010520642541707.Spec : Prop :=
  ∀ n, P7467010520642541707.a n = A295906 (n + 1)

theorem P7467010520642541707.correct : P7467010520642541707.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P7467010520642541707.a, A295906.P16250557608458405164.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P7467010520642541707.a, A295906.P16250557608458405164.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-! ## A295906.P14001789873585587784

`∑[2*A160912(n+1)]`
-/

namespace A295906.P14001789873585587784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295906.P14001789873585587784

namespace A295906

/-- `∑[2*A160912(n+1)]` -/
def P14001789873585587784.Spec : Prop :=
  ∀ n, P14001789873585587784.a n = A295906 (n + 1)

end A295906

/-! ## A295906.P3687942873264306788

`∑[2*(A122709(n)+n)]`
-/

namespace A295906.P3687942873264306788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122709 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295906.P3687942873264306788

namespace A295906

/-- `∑[2*(A122709(n)+n)]` -/
def P3687942873264306788.Spec : Prop :=
  ∀ n, P3687942873264306788.a n = A295906 (n + 1)

end A295906

/-! ## A295906.P14155187396671725964

`A008574(n)+A005901(n)`
-/

namespace A295906.P14155187396671725964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005901 n

end

end A295906.P14155187396671725964

namespace A295906

/-- `A008574(n)+A005901(n)` -/
def P14155187396671725964.Spec : Prop :=
  ∀ n, P14155187396671725964.a n = A295906 (n + 1)

end A295906

/-! ## A295906.P14666848929438411347

`A033583(n)+A016825(n)`
-/

namespace A295906.P14666848929438411347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A016825 n

end

end A295906.P14666848929438411347

namespace A295906

/-- `A033583(n)+A016825(n)` -/
def P14666848929438411347.Spec : Prop :=
  ∀ n, P14666848929438411347.a n = A295906 (n + 1)

theorem P14666848929438411347.correct : P14666848929438411347.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P14666848929438411347.a, A295906.P16250557608458405164.a, A016825, A016825.P4712696052905976233.a, A033583, A033583.P12285480609414282410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P14666848929438411347.a, A295906.P16250557608458405164.a, A016825, A016825.P4712696052905976233.a, A033583, A033583.P12285480609414282410.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-! ## A295906.P391401033286812824

`A045945(n)+A014206(n)`
-/

namespace A295906.P391401033286812824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + A014206 n

end

end A295906.P391401033286812824

namespace A295906

/-- `A045945(n)+A014206(n)` -/
def P391401033286812824.Spec : Prop :=
  ∀ n, P391401033286812824.a n = A295906 (n + 1)

theorem P391401033286812824.correct : P391401033286812824.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P391401033286812824.a, A295906.P16250557608458405164.a, A014206, A014206.P11460808999648819084.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P391401033286812824.a, A295906.P16250557608458405164.a, A014206, A014206.P11460808999648819084.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-! ## A295906.P11827647301069394471

`A056107(n)+A005892(n)`
-/

namespace A295906.P11827647301069394471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n + A005892 n

end

end A295906.P11827647301069394471

namespace A295906

/-- `A056107(n)+A005892(n)` -/
def P11827647301069394471.Spec : Prop :=
  ∀ n, P11827647301069394471.a n = A295906 (n + 1)

theorem P11827647301069394471.correct : P11827647301069394471.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P11827647301069394471.a, A295906.P16250557608458405164.a, A005892, A005892.P14421385829800175738.a, A056107, A056107.P16256314836093114361.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P11827647301069394471.a, A295906.P16250557608458405164.a, A005892, A005892.P14421385829800175738.a, A056107, A056107.P16256314836093114361.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-! ## A295906.P9462266941129160825

`A062123(n)+A022268(n)`
-/

namespace A295906.P9462266941129160825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n + A022268 n

end

end A295906.P9462266941129160825

namespace A295906

/-- `A062123(n)+A022268(n)` -/
def P9462266941129160825.Spec : Prop :=
  ∀ n, P9462266941129160825.a n = A295906 (n + 1)

end A295906

/-! ## A295906.P2797772984611645633

`A051890(n)+A033587(n)`
-/

namespace A295906.P2797772984611645633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n + A033587 n

end

end A295906.P2797772984611645633

namespace A295906

/-- `A051890(n)+A033587(n)` -/
def P2797772984611645633.Spec : Prop :=
  ∀ n, P2797772984611645633.a n = A295906 (n + 1)

theorem P2797772984611645633.correct : P2797772984611645633.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P2797772984611645633.a, A295906.P16250557608458405164.a, A033587, A033587.P16272004082571904291.a, A051890, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P2797772984611645633.a, A295906.P16250557608458405164.a, A033587, A033587.P16272004082571904291.a, A051890, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-! ## A295906.P8441109247575891210

`A069894(n)+A033581(n)`
-/

namespace A295906.P8441109247575891210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n + A033581 n

end

end A295906.P8441109247575891210

namespace A295906

/-- `A069894(n)+A033581(n)` -/
def P8441109247575891210.Spec : Prop :=
  ∀ n, P8441109247575891210.a n = A295906 (n + 1)

theorem P8441109247575891210.correct : P8441109247575891210.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A295906, Nat.add_sub_cancel, A295906.P8441109247575891210.a, A295906.P16250557608458405164.a, A033581, A033581.P13583599227635646969.a, A069894, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A295906, Nat.add_sub_cancel, A295906.P8441109247575891210.a, A295906.P16250557608458405164.a, A033581, A033581.P13583599227635646969.a, A069894, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295906

/-!
# A295907: a(n) = SumXOR_{k=1..n} A296099(k), where SumXOR is the analog of summation under the binary XOR operation.

The programs for A295907, there is no canonical definition to state claims against.
-/

/-! ## A295907.P5961147270008494630

`xor(a(n-1), A296099(n+1))` with `a(0)=1`
-/

namespace A295907.P5961147270008494630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A296099 (n + 1))

end

end A295907.P5961147270008494630

/-!
# A295908: Triangle in which n-th row lists divisors d of n such that n/d is squarefree.

The programs for A295908, there is no canonical definition to state claims against.
-/

/-! ## A295908.P4257243767877284302

`A002260(eq[1, A054525(n+1)²]+1)`
-/

namespace A295908.P4257243767877284302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A295908.P4257243767877284302

/-! ## A295908.P14519387025368603551

`A002260(eq[1, dr(A054525(n+1))]+1)`
-/

namespace A295908.P14519387025368603551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A054525 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A295908.P14519387025368603551

/-! ## A295908.P163452276821229436

`A002260(record[lcm(n+1, A054525(n+1))])`
-/

namespace A295908.P163452276821229436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A054525 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A295908.P163452276821229436

/-! ## A295908.P12727066355819522191

`A027750(eq[1, ∏{e}[A056538(n+1), #]]+1)`
-/

namespace A295908.P12727066355819522191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A295908.P12727066355819522191

/-! ## A295908.P10917225169637956680

`A176079(record[(n+1)*abs(A054525(n+1))])+1`
-/

namespace A295908.P10917225169637956680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A054525 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A295908.P10917225169637956680

/-!
# A295909: Number of (not necessarily maximal) cliques in the n X n black bishop graph.

The programs for A295909, the canonical program `A295909.P3648277671334178293` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295909 has offset 1).

The definition of A295909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295909.P3648277671334178293

`((-2)^(n+2)+(-1)^(n+1)+19*2^(n+2)-6*(n+1)*(n+5)-25)/12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295909

/-- `((-2)^(n+2)+(-1)^(n+1)+19*2^(n+2)-6*(n+1)*(n+5)-25)/12` -/
def P3648277671334178293.Spec : Prop :=
  ∀ n, P3648277671334178293.a n = (A295909 (n + 1) : ℚ)

end A295909

/-! ## A295909.P18171169134706825815

`∑[A029673(∏[A160622(n)])]`
-/

namespace A295909.P18171169134706825815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160622 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029673 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295909.P18171169134706825815

namespace A295909

/-- `∑[A029673(∏[A160622(n)])]` -/
def P18171169134706825815.Spec : Prop :=
  ∀ n, P18171169134706825815.a n = A295909 (n + 1)

end A295909

/-!
# A295910: Number of (not necessarily maximal) cliques in the n X n white bishop graph.

The programs for A295910, the canonical program `A295910.P9617916339052756253` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295910 has offset 2).

The definition of A295910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295910.P9617916339052756253

`((-1)^(n+3)+2^(n+3)*(17+(-1)^(n+2))-6*(n+2)*(n+6)-23)/12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295910

/-- `((-1)^(n+3)+2^(n+3)*(17+(-1)^(n+2))-6*(n+2)*(n+6)-23)/12` -/
def P9617916339052756253.Spec : Prop :=
  ∀ n, P9617916339052756253.a n = (A295910 (n + 2) : ℚ)

end A295910

/-!
# A295911: Number of (not necessarily maximal) cliques in the n-Hanoi graph.

The programs for A295911, the canonical program `A295911.P17083620018742273161` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295911 has offset 1).

The definition of A295911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295911.P17083620018742273161

`4*a(n-1)-3*a(n-2)` with `a(0)=8, a(1)=25`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295911

/-- `4*a(n-1)-3*a(n-2)` -/
def P17083620018742273161.Spec : Prop :=
  ∀ n, P17083620018742273161.a n = A295911 (n + 1)

theorem P17083620018742273161.correct : P17083620018742273161.Spec := by
  intro n
  simp only [A295911, Nat.add_sub_cancel]

end A295911

/-! ## A295911.P8752865865990732232

`(17*3^(n+1)-3)/6`
-/

namespace A295911.P8752865865990732232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 * 3 ^ (n + 1) : ℤ) - 3 : ℚ) / 6

end

end A295911.P8752865865990732232

namespace A295911

/-- `(17*3^(n+1)-3)/6` -/
def P8752865865990732232.Spec : Prop :=
  ∀ n, P8752865865990732232.a n = (A295911 (n + 1) : ℚ)

theorem P8752865865990732232.correct : P8752865865990732232.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A295911, Nat.add_sub_cancel, A295911.P8752865865990732232.a, A295911.P17083620018742273161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A295911, Nat.add_sub_cancel, A295911.P8752865865990732232.a, A295911.P17083620018742273161.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A295911

/-! ## A295911.P14795507699361845536

`ogf((8-7x)/(1-4x+3x^2))`
-/

namespace A295911.P14795507699361845536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -7] [1, -4, 3] n

end

end A295911.P14795507699361845536

namespace A295911

/-- `ogf((8-7x)/(1-4x+3x^2))` -/
def P14795507699361845536.Spec : Prop :=
  ∀ n, P14795507699361845536.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P17040138095807945739

`3*a(n-1)+1` with `a(0)=8`
-/

namespace A295911.P17040138095807945739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  3 * a (n - 1) + 1

end

end A295911.P17040138095807945739

namespace A295911

/-- `3*a(n-1)+1` -/
def P17040138095807945739.Spec : Prop :=
  ∀ n, (P17040138095807945739.a n : ℤ) = A295911 (n + 1)

end A295911

/-! ## A295911.P8928293148199220126

`lcm(3, a(n-1))+1` with `a(0)=8`
-/

namespace A295911.P8928293148199220126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 1

end

end A295911.P8928293148199220126

namespace A295911

/-- `lcm(3, a(n-1))+1` -/
def P8928293148199220126.Spec : Prop :=
  ∀ n, (P8928293148199220126.a n : ℤ) = A295911 (n + 1)

end A295911

/-! ## A295911.P4315649230220189873

`∑[3*a(n-1)]` with `a(0)=8, a(1)=17`
-/

namespace A295911.P4315649230220189873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 17] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295911.P4315649230220189873

namespace A295911

/-- `∑[3*a(n-1)]` -/
def P4315649230220189873.Spec : Prop :=
  ∀ n, (P4315649230220189873.a n : ℤ) = A295911 (n + 1)

end A295911

/-! ## A295911.P4459947190980974470

`4-3*(1-a(n-1))` with `a(0)=8`
-/

namespace A295911.P4459947190980974470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  4 - 3 * (1 - a (n - 1))

end

end A295911.P4459947190980974470

namespace A295911

/-- `4-3*(1-a(n-1))` -/
def P4459947190980974470.Spec : Prop :=
  ∀ n, P4459947190980974470.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P5787070824086803369

`a(n-1)+a(n-1)+a(n-1)+1` with `a(0)=8`
-/

namespace A295911.P5787070824086803369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 1))

end

end A295911.P5787070824086803369

namespace A295911

/-- `a(n-1)+a(n-1)+a(n-1)+1` -/
def P5787070824086803369.Spec : Prop :=
  ∀ n, (P5787070824086803369.a n : ℤ) = A295911 (n + 1)

end A295911

/-! ## A295911.P1101162271680959064

`A060816(n+2)+3^n`
-/

namespace A295911.P1101162271680959064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 (n + 2) + (3 ^ n : ℤ)

end

end A295911.P1101162271680959064

namespace A295911

/-- `A060816(n+2)+3^n` -/
def P1101162271680959064.Spec : Prop :=
  ∀ n, P1101162271680959064.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P16027178841607747886

`3^(n+2)-A007051(n)`
-/

namespace A295911.P16027178841607747886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) : ℤ) - A007051 n

end

end A295911.P16027178841607747886

namespace A295911

/-- `3^(n+2)-A007051(n)` -/
def P16027178841607747886.Spec : Prop :=
  ∀ n, P16027178841607747886.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P10602944227087740008

`A052909(n+1)+3^(n+1)`
-/

namespace A295911.P10602944227087740008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052909 (n + 1) + (3 ^ (n + 1) : ℤ)

end

end A295911.P10602944227087740008

namespace A295911

/-- `A052909(n+1)+3^(n+1)` -/
def P10602944227087740008.Spec : Prop :=
  ∀ n, P10602944227087740008.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P157007942318037218

`A123183(n+2)+3^(n+2)`
-/

namespace A295911.P157007942318037218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123183 (n + 2) + (3 ^ (n + 2) : ℤ)

end

end A295911.P157007942318037218

namespace A295911

/-- `A123183(n+2)+3^(n+2)` -/
def P157007942318037218.Spec : Prop :=
  ∀ n, P157007942318037218.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P13965651622798542207

`3^(n+2)-A124302(n+1)`
-/

namespace A295911.P13965651622798542207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) : ℤ) - A124302 (n + 1)

end

end A295911.P13965651622798542207

namespace A295911

/-- `3^(n+2)-A124302(n+1)` -/
def P13965651622798542207.Spec : Prop :=
  ∀ n, P13965651622798542207.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P4111501406200225603

`A024023(n+2)-(3^n-1)/2`
-/

namespace A295911.P4111501406200225603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 (n + 2) : ℚ) - ((3 ^ n : ℤ) - 1 : ℚ) / 2

end

end A295911.P4111501406200225603

namespace A295911

/-- `A024023(n+2)-(3^n-1)/2` -/
def P4111501406200225603.Spec : Prop :=
  ∀ n, P4111501406200225603.a n = (A295911 (n + 1) : ℚ)

theorem P4111501406200225603.correct : P4111501406200225603.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A295911, Nat.add_sub_cancel, A295911.P4111501406200225603.a, A295911.P17083620018742273161.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A295911, Nat.add_sub_cancel, A295911.P4111501406200225603.a, A295911.P17083620018742273161.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A295911

/-! ## A295911.P14205012333718209105

`A005051(n)+A003462(n)`
-/

namespace A295911.P14205012333718209105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005051 n + A003462 n

end

end A295911.P14205012333718209105

namespace A295911

/-- `A005051(n)+A003462(n)` -/
def P14205012333718209105.Spec : Prop :=
  ∀ n, P14205012333718209105.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P14287179950986434179

`A237930(n)+A005030(n)`
-/

namespace A295911.P14287179950986434179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237930 n + A005030 n

end

end A295911.P14287179950986434179

namespace A295911

/-- `A237930(n)+A005030(n)` -/
def P14287179950986434179.Spec : Prop :=
  ∀ n, P14287179950986434179.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P578939913069615148

`A238055(n)+A008776(n)`
-/

namespace A295911.P578939913069615148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238055 n + A008776 n

end

end A295911.P578939913069615148

namespace A295911

/-- `A238055(n)+A008776(n)` -/
def P578939913069615148.Spec : Prop :=
  ∀ n, P578939913069615148.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P7801239067534312858

`A171495(n)+A115098(n)`
-/

namespace A295911.P7801239067534312858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171495 n + A115098 n

end

end A295911.P7801239067534312858

namespace A295911

/-- `A171495(n)+A115098(n)` -/
def P7801239067534312858.Spec : Prop :=
  ∀ n, P7801239067534312858.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P8278614881077132537

`A199109(n)+A198643(n)`
-/

namespace A295911.P8278614881077132537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 n + A198643 n

end

end A295911.P8278614881077132537

namespace A295911

/-- `A199109(n)+A198643(n)` -/
def P8278614881077132537.Spec : Prop :=
  ∀ n, P8278614881077132537.a n = A295911 (n + 1)

end A295911

/-! ## A295911.P8261783521135616009

`A355492(n)+A067771(n)`
-/

namespace A295911.P8261783521135616009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355492 n + A067771 n

end

end A295911.P8261783521135616009

namespace A295911

/-- `A355492(n)+A067771(n)` -/
def P8261783521135616009.Spec : Prop :=
  ∀ n, P8261783521135616009.a n = A295911 (n + 1)

end A295911

/-!
# A295912: Number of n X n 0..1 arrays with each 1 adjacent to 0 or 3 king-move neighboring 1's.

The programs for A295912, there is no canonical definition to state claims against.
-/

/-! ## A295912.P16125912294227206791

`A295918(∑[4*n]+1)`
-/

namespace A295912.P16125912294227206791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295912.P16125912294227206791

/-! ## A295912.P7572432863442466810

`record[A003982(n)*A295918(n+1)]`
-/

namespace A295912.P7572432863442466810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295912.P7572432863442466810

/-! ## A295912.P16764991417396711423

`record[gcd(A114327(n), A295918(n+1))]`
-/

namespace A295912.P16764991417396711423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A295918 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295912.P16764991417396711423

/-! ## A295912.P13450712877035139459

`A308976(n)+A295918(A001844(n))`
-/

namespace A295912.P13450712877035139459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308976 n + A295918 (A001844 n).toNat

end

end A295912.P13450712877035139459

/-! ## A295912.P8992563282139740448

`A238015(n)*A295918(A001844(n))`
-/

namespace A295912.P8992563282139740448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n * A295918 (A001844 n).toNat

end

end A295912.P8992563282139740448

/-!
# A295913: Number of n X 3 0..1 arrays with each 1 adjacent to 0 or 3 king-move neighboring 1's.

The programs for A295913, the canonical program `A295913.P9545011175271529354` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295913 has offset 1).

The definition of A295913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295913.P6459458665577076800

`ogf((5+3x-2x^2-2x^3)/(1-2x-3x^2+2x^4))`
-/

namespace A295913.P6459458665577076800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, -2, -2] [1, -2, -3, 0, 2] n

end

end A295913.P6459458665577076800

namespace A295913

/-- `ogf((5+3x-2x^2-2x^3)/(1-2x-3x^2+2x^4))` -/
def P6459458665577076800.Spec : Prop :=
  ∀ n, P6459458665577076800.a n = A295913 (n + 1)

end A295913

/-! ## A295913.P9545011175271529354

`2*a(n-1)+3*a(n-2)-2*a(n-4)` with `a(0)=5, a(1)=13, a(2)=39, a(3)=115`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295913

/-- `2*a(n-1)+3*a(n-2)-2*a(n-4)` -/
def P9545011175271529354.Spec : Prop :=
  ∀ n, P9545011175271529354.a n = A295913 (n + 1)

theorem P9545011175271529354.correct : P9545011175271529354.Spec := by
  intro n
  simp only [A295913, Nat.add_sub_cancel]

end A295913

/-! ## A295913.P4324488473194298336

`A052979(n+2)-a(n-1)` with `a(0)=5`
-/

namespace A295913.P4324488473194298336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A052979 (n + 2) - a (n - 1)

end

end A295913.P4324488473194298336

namespace A295913

/-- `A052979(n+2)-a(n-1)` -/
def P4324488473194298336.Spec : Prop :=
  ∀ n, P4324488473194298336.a n = A295913 (n + 1)

end A295913

/-! ## A295913.P17516197100547126091

`A295918(∑[n+2]+4)`
-/

namespace A295913.P17516197100547126091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295913.P17516197100547126091

namespace A295913

/-- `A295918(∑[n+2]+4)` -/
def P17516197100547126091.Spec : Prop :=
  ∀ n, P17516197100547126091.a n = A295913 (n + 1)

end A295913

/-! ## A295913.P8235753526364218236

`or(1, A295918(A167614(n+1)))`
-/

namespace A295913.P8235753526364218236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A295918 (A167614 (n + 1)).toNat)

end

end A295913.P8235753526364218236

namespace A295913

/-- `or(1, A295918(A167614(n+1)))` -/
def P8235753526364218236.Spec : Prop :=
  ∀ n, P8235753526364218236.a n = A295913 (n + 1)

end A295913

/-!
# A295914: Number of n X 4 0..1 arrays with each 1 adjacent to 0 or 3 king-move neighboring 1s.

The programs for A295914, there is no canonical definition to state claims against.
-/

/-! ## A295914.P1063024716558369614

`A295918(A374004(n+1))`
-/

namespace A295914.P1063024716558369614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A374004 (n + 1)).toNat

end

end A295914.P1063024716558369614

/-! ## A295914.P10146627372882253179

`A295918(A141214(n)+7)`
-/

namespace A295914.P10146627372882253179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A141214 n + 7).toNat

end

end A295914.P10146627372882253179

/-! ## A295914.P2093408220181896218

`A295918(A052905(n)+9)`
-/

namespace A295914.P2093408220181896218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A052905 n + 9).toNat

end

end A295914.P2093408220181896218

/-! ## A295914.P9651501810007100773

`A295918(A055999(n)+10)`
-/

namespace A295914.P9651501810007100773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A055999 n + 10).toNat

end

end A295914.P9651501810007100773

/-! ## A295914.P4488304823128616730

`A295918(A167614(n+2)+1)`
-/

namespace A295914.P4488304823128616730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A167614 (n + 2) + 1).toNat

end

end A295914.P4488304823128616730

/-!
# A295915: Number of nX5 0..1 arrays with each 1 adjacent to 0 or 3 king-move neighboring 1s.

The programs for A295915, there is no canonical definition to state claims against.
-/

/-! ## A295915.P16810348918744554477

`A295918(A374005(n+1))`
-/

namespace A295915.P16810348918744554477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A374005 (n + 1)).toNat

end

end A295915.P16810348918744554477

/-! ## A295915.P15480753353464884120

`A295918(A167499(n+3))`
-/

namespace A295915.P15480753353464884120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A167499 (n + 3)).toNat

end

end A295915.P15480753353464884120

/-! ## A295915.P8736119144336877725

`A295918(A155212(n)+13)`
-/

namespace A295915.P8736119144336877725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A155212 n + 13).toNat

end

end A295915.P8736119144336877725

/-! ## A295915.P16182899389418281636

`A295918(A056000(n)+15)`
-/

namespace A295915.P16182899389418281636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A056000 n + 15).toNat

end

end A295915.P16182899389418281636

/-! ## A295915.P14454781561126355773

`A295918(A167614(n+3)+2)`
-/

namespace A295915.P14454781561126355773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A167614 (n + 3) + 2).toNat

end

end A295915.P14454781561126355773

/-!
# A295916: Number of nX6 0..1 arrays with each 1 adjacent to 0 or 3 king-move neighboring 1s.

The programs for A295916, there is no canonical definition to state claims against.
-/

/-! ## A295916.P738008763836306195

`A295918(A374007(n+1))`
-/

namespace A295916.P738008763836306195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A374007 (n + 1)).toNat

end

end A295916.P738008763836306195

/-! ## A295916.P8298513486145269511

`A295918(A000217(n+5)+6)`
-/

namespace A295916.P8298513486145269511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A000217 (n + 5) + 6).toNat

end

end A295916.P8298513486145269511

/-! ## A295916.P10044223991212431189

`A295918(A000124(n+6)-(n+1))`
-/

namespace A295916.P10044223991212431189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A295916.P10044223991212431189

/-! ## A295916.P15322919959940333759

`A295918(A056000(n+4)-A016789(n+1))`
-/

namespace A295916.P15322919959940333759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A056000 (n + 4) - A016789 (n + 1)).toNat

end

end A295916.P15322919959940333759

/-! ## A295916.P5988350280497736341

`A295918(A046092(n+8)%A046691(n+7))`
-/

namespace A295916.P5988350280497736341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (Int.tmod (A046092 (n + 8)) (A046691 (n + 7))).toNat

end

end A295916.P5988350280497736341

/-!
# A295917: Number of n X 7 0..1 arrays with each 1 adjacent to 0 or 3 king-move neighboring 1s.

The programs for A295917, there is no canonical definition to state claims against.
-/

/-! ## A295917.P12741875073480580688

`A295918(A374008(n+1))`
-/

namespace A295917.P12741875073480580688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A374008 (n + 1)).toNat

end

end A295917.P12741875073480580688

/-! ## A295917.P14517269939819558095

`A295918(A167487(n+5))`
-/

namespace A295917.P14517269939819558095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A167487 (n + 5)).toNat

end

end A295917.P14517269939819558095

/-! ## A295917.P8301235337580916554

`A295918(A055999(n+4))`
-/

namespace A295917.P8301235337580916554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (A055999 (n + 4)).toNat

end

end A295917.P8301235337580916554

/-! ## A295917.P11700469831692253476

`A295918(eq[4, A219347(n)])`
-/

namespace A295917.P11700469831692253476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295917.P11700469831692253476

/-! ## A295917.P2603394080529900609

`A295918(eq[6, A193592(n)])`
-/

namespace A295917.P2603394080529900609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295917.P2603394080529900609

/-!
# A295918: T(n,k)=Number of n X k 0..1 arrays with each 1 adjacent to 0 or 3 king-move neighboring 1s.

The programs for A295918, there is no canonical definition to state claims against.
-/

/-! ## A295918.P11450255299212312845

`A105224(A235548(n+1)+4)`
-/

namespace A295918.P11450255299212312845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A235548 (n + 1) + 4).toNat

end

end A295918.P11450255299212312845

/-! ## A295918.P8183694362116249434

`A320278(A235548(n+1)+4)`
-/

namespace A295918.P8183694362116249434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A235548 (n + 1) + 4).toNat

end

end A295918.P8183694362116249434

/-! ## A295918.P16099231505920226756

`A204560(A259524(n+1))`
-/

namespace A295918.P16099231505920226756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A259524 (n + 1)).toNat

end

end A295918.P16099231505920226756

/-! ## A295918.P15326768606969762660

`A204562(A235660(n+1))-1`
-/

namespace A295918.P15326768606969762660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A235660 (n + 1)).toNat - 1

end

end A295918.P15326768606969762660

/-! ## A295918.P11691430011924037130

`A183322(n+1)+A086016(A022178(n))`
-/

namespace A295918.P11691430011924037130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (n + 1) + A086016 (A022178 n).toNat

end

end A295918.P11691430011924037130

/-!
# A295919: Smallest number with exactly n representations as a sum of eight nonnegative squares.

The programs for A295919, there is no canonical definition to state claims against.
-/

/-! ## A295919.P14942307387043571187

`A313864(n)-A325412(n)`
-/

namespace A295919.P14942307387043571187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313864 n - A325412 n

end

end A295919.P14942307387043571187

/-! ## A295919.P268674062476238029

`A313981(n)-A187243(A295752(n))`
-/

namespace A295919.P268674062476238029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313981 n - A187243 (A295752 n).toNat

end

end A295919.P268674062476238029

/-!
# A295920: Number of twice-factorizations of n of type (P,R,R).

The programs for A295920, there is no canonical definition to state claims against.
-/

/-! ## A295920.P18185013591279747081

`A279789(A052409(n+1))`
-/

namespace A295920.P18185013591279747081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (A052409 (n + 1)).toNat

end

end A295920.P18185013591279747081

/-! ## A295920.P9658148415766968081

`A279789(A132349(n+1))`
-/

namespace A295920.P9658148415766968081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (A132349 (n + 1)).toNat

end

end A295920.P9658148415766968081

/-! ## A295920.P16803836563446568882

`A279789(A253641(n+1))`
-/

namespace A295920.P16803836563446568882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 (A253641 (n + 1)).toNat

end

end A295920.P16803836563446568882

/-! ## A295920.P17756082174386893293

`∑{d}[A316789(n+1), #-A261508(A247146(#+1))]`
-/

namespace A295920.P17756082174386893293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A261508 ((A247146 (d + 1)).toNat + 1))

end

end A295920.P17756082174386893293

/-! ## A295920.P16292264040334965781

`A215068(A001598(A316790(n+1)²))`
-/

namespace A295920.P16292264040334965781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215068 (A001598 (A316790 (n + 1) ^ 2).toNat).toNat

end

end A295920.P16292264040334965781

/-! ## A295920.P10869106492273543726

`A000005(A317712(A316782(n+1)²))`
-/

namespace A295920.P10869106492273543726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A317712 (A316782 (n + 1) ^ 2).toNat).toNat

end

end A295920.P10869106492273543726

/-! ## A295920.P13814352241305833536

`A316789(n+1)+A214566(A316789(n+1)²)`
-/

namespace A295920.P13814352241305833536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (n + 1) + A214566 (A316789 (n + 1) ^ 2).toNat

end

end A295920.P13814352241305833536

/-! ## A295920.P1147740450350923417

`A316781(2^A316789(n+1))+A163529(A316789(n+1))`
-/

namespace A295920.P1147740450350923417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316781 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A316789 (n + 1) : ℤ))).toNat + A163529 (A316789 (n + 1)).toNat

end

end A295920.P1147740450350923417

/-! ## A295920.P12785242138318273402

`A316781(2^A316789(n+1))+A175070(A316782(n+1))`
-/

namespace A295920.P12785242138318273402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316781 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A316789 (n + 1) : ℤ))).toNat + A175070 (A316782 (n + 1)).toNat

end

end A295920.P12785242138318273402

/-!
# A295921: Number of (not necessarily maximal) cliques in the n-folded cube graph.

The programs for A295921, the canonical program `A295921.P2545407530333431580` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295921 has offset 2).

The definition of A295921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295921.P2545407530333431580

`5*a(n-1)-8*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=16, a(2)=25, a(3)=57, a(4)=129`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295921

/-- `5*a(n-1)-8*a(n-2)+4*a(n-3)` -/
def P2545407530333431580.Spec : Prop :=
  ∀ n, P2545407530333431580.a n = A295921 (n + 2)

theorem P2545407530333431580.correct : P2545407530333431580.Spec := by
  intro n
  simp only [A295921, Nat.add_sub_cancel]

end A295921

/-! ## A295921.P13566312563799076284

`Δ[record[xor(n+2, A057711(n))]]`
-/

namespace A295921.P13566312563799076284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (A057711 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295921.P13566312563799076284

namespace A295921

/-- `Δ[record[xor(n+2, A057711(n))]]` -/
def P13566312563799076284.Spec : Prop :=
  ∀ n, P13566312563799076284.a n = A295921 (n + 2)

end A295921

/-! ## A295921.P4957751052694850903

`Δ[A227978(n+2)%A079028(n)]`
-/

namespace A295921.P4957751052694850903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227978 (n + 2)) (A079028 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295921.P4957751052694850903

namespace A295921

/-- `Δ[A227978(n+2)%A079028(n)]` -/
def P4957751052694850903.Spec : Prop :=
  ∀ n, P4957751052694850903.a n = A295921 (n + 2)

end A295921

/-! ## A295921.P1607097241772237092

`A102419(A001792(n))+A087447(n+2)`
-/

namespace A295921.P1607097241772237092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (A001792 n).toNat + A087447 (n + 2)

end

end A295921.P1607097241772237092

namespace A295921

/-- `A102419(A001792(n))+A087447(n+2)` -/
def P1607097241772237092.Spec : Prop :=
  ∀ n, P1607097241772237092.a n = A295921 (n + 2)

end A295921

/-! ## A295921.P17226298126875531983

`A102669(n)+A025586(A079859(n+4))`
-/

namespace A295921.P17226298126875531983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n + A025586 (A079859 (n + 4)).toNat

end

end A295921.P17226298126875531983

namespace A295921

/-- `A102669(n)+A025586(A079859(n+4))` -/
def P17226298126875531983.Spec : Prop :=
  ∀ n, P17226298126875531983.a n = A295921 (n + 2)

end A295921

/-!
# A295922: Number of (not necessarily maximal) cliques in the n-halved cube graph.

The programs for A295922, the canonical program `A295922.P10944053321138940008` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295922 has offset 1).

The definition of A295922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295922.P10944053321138940008

`(24*4^(n+1)+2^(n+1)*(n+1)*((n+1)*(n-8)-16))/48+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295922

/-- `(24*4^(n+1)+2^(n+1)*(n+1)*((n+1)*(n-8)-16))/48+1` -/
def P10944053321138940008.Spec : Prop :=
  ∀ n, P10944053321138940008.a n = (A295922 (n + 1) : ℚ)

end A295922

/-!
# A295923: Number of twice-factorizations of n where the first factorization is constant, i.e., type (P,R,P).

The programs for A295923, there is no canonical definition to state claims against.
-/

/-! ## A295923.P3786966710283823966

`A007095(A320887(n+1))%A032579(n+2)`
-/

namespace A295923.P3786966710283823966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A320887 (n + 1)).toNat) (A032579 (n + 2))

end

end A295923.P3786966710283823966

/-! ## A295923.P6323400687278266340

`A007095(A320887(n+1))+A000038(∑[9*n+1])`
-/

namespace A295923.P6323400687278266340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A320887 (n + 1)).toNat + A000038 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295923.P6323400687278266340

/-! ## A295923.P3971478872688267423

`A016419(A002659(n+1))+A007095(A320887(n+1))`
-/

namespace A295923.P3971478872688267423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016419 (A002659 (n + 1)).toNat + A007095 (A320887 (n + 1)).toNat

end

end A295923.P3971478872688267423

/-! ## A295923.P11190214419969898988

`A043094(A320887(n+1)+and(2, A234103(n+1)))`
-/

namespace A295923.P11190214419969898988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 (A320887 (n + 1) + Int.land 2 (A234103 (n + 1))).toNat

end

end A295923.P11190214419969898988

/-! ## A295923.P16240349232808694088

`A320887(n+1)+A070204(A006241(n+1))`
-/

namespace A295923.P16240349232808694088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320887 (n + 1) + A070204 (A006241 (n + 1)).toNat

end

end A295923.P16240349232808694088

/-!
# A295924: Number of twice-factorizations of n of type (R,P,R).

The programs for A295924, there is no canonical definition to state claims against.
-/

/-! ## A295924.P13693722484019001758

`A047968(A253641(n+1))`
-/

namespace A295924.P13693722484019001758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (A253641 (n + 1)).toNat

end

end A295924.P13693722484019001758

/-! ## A295924.P8086971049143336733

`∑{d}[A253641(n+1), A000041(#)]`
-/

namespace A295924.P8086971049143336733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 d

end

end A295924.P8086971049143336733

/-! ## A295924.P4426631557270718987

`A047968(A052409(n+1)+A000007(n))`
-/

namespace A295924.P4426631557270718987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (A052409 (n + 1) + A000007 n).toNat

end

end A295924.P4426631557270718987

/-! ## A295924.P13929793627460699382

`A047968(gcd(A052409(n+1), A130123(n)))`
-/

namespace A295924.P13929793627460699382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (Int.gcd (A052409 (n + 1)) (A130123 n))

end

end A295924.P13929793627460699382

/-! ## A295924.P3153746144696765856

`A047968(gcd(A158052(n+1), A211776(n+1)))`
-/

namespace A295924.P3153746144696765856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (Int.gcd (A158052 (n + 1)) (A211776 (n + 1)))

end

end A295924.P3153746144696765856

/-! ## A295924.P8832618121031027726

`A047968(or(A008966(n+1), A052409(n+1)))`
-/

namespace A295924.P8832618121031027726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (Int.lor (A008966 (n + 1)) (A052409 (n + 1))).toNat

end

end A295924.P8832618121031027726

/-! ## A295924.P11456465581499482542

`∑{d}[A052409(A045965(n+1)), A000041(#)]`
-/

namespace A295924.P11456465581499482542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A045965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 d

end

end A295924.P11456465581499482542

/-! ## A295924.P14687329955803063107

`A047968(A052409(n+1)-A052409(n²+1)+1)`
-/

namespace A295924.P14687329955803063107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (A052409 (n + 1) - A052409 (n ^ 2 + 1) + 1).toNat

end

end A295924.P14687329955803063107

/-! ## A295924.P16318473292002124516

`A284639(5^A296134(n+1))`
-/

namespace A295924.P16318473292002124516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284639 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A296134 (n + 1) : ℤ))).toNat

end

end A295924.P16318473292002124516

/-!
# A295925: Number of bilaterally asymmetric 8-hoops with n symbols.

The programs for A295925, the canonical program `A295925.P16949749844533986636` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295925 has offset 2).

The definition of A295925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295925.P222110896978819345

`1/16*((n+2)^3-(n+2)²-2)*((n+2)²+n+2+2)*(n+3)*(n+1)*(n+2)`
-/

namespace A295925.P222110896978819345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 16 * (((n + 2) ^ 3 : ℤ) - ((n + 2) ^ 2 : ℤ) - 2 : ℚ) * ((n + 2) ^ 2 + (n + 2) + 2 : ℚ) * (n + 3 : ℚ) * (n + 1 : ℚ) * (n + 2 : ℚ)

end

end A295925.P222110896978819345

namespace A295925

/-- `1/16*((n+2)^3-(n+2)²-2)*((n+2)²+n+2+2)*(n+3)*(n+1)*(n+2)` -/
def P222110896978819345.Spec : Prop :=
  ∀ n, P222110896978819345.a n = (A295925 (n + 2) : ℚ)

end A295925

/-! ## A295925.P16949749844533986636

`A060560(n+2)-A019583(n+3)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A295925

/-- `A060560(n+2)-A019583(n+3)` -/
def P16949749844533986636.Spec : Prop :=
  ∀ n, P16949749844533986636.a n = A295925 (n + 2)

theorem P16949749844533986636.correct : P16949749844533986636.Spec := by
  intro n
  simp only [A295925, Nat.add_sub_cancel]

end A295925

/-! ## A295925.P14068511427832292465

`(A054622(n+2)-A019583(n+3))/2`
-/

namespace A295925.P14068511427832292465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054622 (n + 2) - A019583 (n + 3) : ℚ) / 2

end

end A295925.P14068511427832292465

namespace A295925

/-- `(A054622(n+2)-A019583(n+3))/2` -/
def P14068511427832292465.Spec : Prop :=
  ∀ n, P14068511427832292465.a n = (A295925 (n + 2) : ℚ)

end A295925

/-! ## A295925.P15493511409763598570

`A054622(n+2)-A060560(n+2)`
-/

namespace A295925.P15493511409763598570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054622 (n + 2) - A060560 (n + 2)

end

end A295925.P15493511409763598570

namespace A295925

/-- `A054622(n+2)-A060560(n+2)` -/
def P15493511409763598570.Spec : Prop :=
  ∀ n, P15493511409763598570.a n = A295925 (n + 2)

end A295925

/-! ## A295925.P7839781788907672014

`A054622(A000007(n+1)+n+2)%A060560(n+2)`
-/

namespace A295925.P7839781788907672014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054622 (A000007 (n + 1) + (n + 2 : ℤ)).toNat) (A060560 (n + 2))

end

end A295925.P7839781788907672014

namespace A295925

/-- `A054622(A000007(n+1)+n+2)%A060560(n+2)` -/
def P7839781788907672014.Spec : Prop :=
  ∀ n, P7839781788907672014.a n = A295925 (n + 2)

end A295925

/-!
# A295926: Number of (not necessarily maximal) cliques in the n-cube-connected cycle graph.

The programs for A295926, the canonical program `A295926.P16244338740308694923` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295926 has offset 3).

The definition of A295926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295926.P16244338740308694923

`5*a(n-1)-8*a(n-2)+4*a(n-3)` with `a(0)=69, a(1)=161, a(2)=401, a(3)=961`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295926

/-- `5*a(n-1)-8*a(n-2)+4*a(n-3)` -/
def P16244338740308694923.Spec : Prop :=
  ∀ n, P16244338740308694923.a n = A295926 (n + 3)

theorem P16244338740308694923.correct : P16244338740308694923.Spec := by
  intro n
  simp only [A295926, Nat.add_sub_cancel]

end A295926

/-! ## A295926.P11240270622466018231

`xor(6, A017353(A129952(n+3)))`
-/

namespace A295926.P11240270622466018231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A017353 (A129952 (n + 3)).toNat)

end

end A295926.P11240270622466018231

namespace A295926

/-- `xor(6, A017353(A129952(n+3)))` -/
def P11240270622466018231.Spec : Prop :=
  ∀ n, P11240270622466018231.a n = A295926 (n + 3)

end A295926

/-!
# A295929: a(n) is the number of topological equivalence classes of excellent Morse functions on S^2 with 2n+2 critical points (n saddle points).

The programs for A295929, there is no canonical definition to state claims against.
-/

/-! ## A295929.P12414990566669145250

`A088500(n)+A006925(A006925(n+2))`
-/

namespace A295929.P12414990566669145250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088500 n + A006925 (A006925 (n + 2)).toNat

end

end A295929.P12414990566669145250

/-!
# A295931: Number of ways to write n in the form n = (x^y)^z where x, y, and z are positive integers.

The programs for A295931, the canonical program `A295931.P15567185849400187992` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295931 has offset 1).

The definition of A295931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295931.P15567185849400187992

`∑{d}[A253641(n+1), A000005(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A295931

/-- `∑{d}[A253641(n+1), A000005(#)]` -/
def P15567185849400187992.Spec : Prop :=
  ∀ n, P15567185849400187992.a n = A295931 (n + 1)

theorem P15567185849400187992.correct : P15567185849400187992.Spec := by
  intro n
  simp only [A295931, Nat.add_sub_cancel]

end A295931

/-! ## A295931.P10388436166461457798

`∏{e}[A052409(n+1)², A007916(#)]`
-/

namespace A295931.P10388436166461457798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007916 (Nat.factorization (f1 n).natAbs p)

end

end A295931.P10388436166461457798

namespace A295931

/-- `∏{e}[A052409(n+1)², A007916(#)]` -/
def P10388436166461457798.Spec : Prop :=
  ∀ n, P10388436166461457798.a n = A295931 (n + 1)

end A295931

/-! ## A295931.P16383962713680204324

`∏{e}[A052409(n+1), A001597(#)+2]`
-/

namespace A295931.P16383962713680204324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A001597 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A295931.P16383962713680204324

namespace A295931

/-- `∏{e}[A052409(n+1), A001597(#)+2]` -/
def P16383962713680204324.Spec : Prop :=
  ∀ n, P16383962713680204324.a n = A295931 (n + 1)

end A295931

/-! ## A295931.P7872775249774613263

`∏{e}[A052409(n+1), A007916(2*#)]`
-/

namespace A295931.P7872775249774613263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007916 (2 * Nat.factorization (f1 n).natAbs p)

end

end A295931.P7872775249774613263

namespace A295931

/-- `∏{e}[A052409(n+1), A007916(2*#)]` -/
def P7872775249774613263.Spec : Prop :=
  ∀ n, P7872775249774613263.a n = A295931 (n + 1)

end A295931

/-! ## A295931.P8575008545100397855

`∏{e}[A052409(n+1), A329846(#)+#]`
-/

namespace A295931.P8575008545100397855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A329846 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A295931.P8575008545100397855

namespace A295931

/-- `∏{e}[A052409(n+1), A329846(#)+#]` -/
def P8575008545100397855.Spec : Prop :=
  ∀ n, P8575008545100397855.a n = A295931 (n + 1)

end A295931

/-! ## A295931.P5193253870166909820

`A007425(A052409(n+1)-ceil(n/(n+1))+1)`
-/

namespace A295931.P5193253870166909820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A052409 (n + 1) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat

end

end A295931.P5193253870166909820

namespace A295931

/-- `A007425(A052409(n+1)-ceil(n/(n+1))+1)` -/
def P5193253870166909820.Spec : Prop :=
  ∀ n, P5193253870166909820.a n = A295931 (n + 1)

end A295931

/-! ## A295931.P7062723617695610345

`A054725(A316782(n+1)²²+2)`
-/

namespace A295931.P7062723617695610345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 ((A316782 (n + 1) ^ 2) ^ 2 + 2).toNat

end

end A295931.P7062723617695610345

namespace A295931

/-- `A054725(A316782(n+1)²²+2)` -/
def P7062723617695610345.Spec : Prop :=
  ∀ n, P7062723617695610345.a n = A295931 (n + 1)

end A295931

/-! ## A295931.P5205544104558906029

`A054353(gcd(A180026(n+1), A316782(n+1)))`
-/

namespace A295931.P5205544104558906029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (Int.gcd (A180026 (n + 1)) (A316782 (n + 1)))

end

end A295931.P5205544104558906029

namespace A295931

/-- `A054353(gcd(A180026(n+1), A316782(n+1)))` -/
def P5205544104558906029.Spec : Prop :=
  ∀ n, P5205544104558906029.a n = A295931 (n + 1)

end A295931

/-! ## A295931.P8993736371881813670

`A338236(A294338((n+1)²))+A294338(n+1)`
-/

namespace A295931.P8993736371881813670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338236 (A294338 ((n + 1) ^ 2)).toNat + A294338 (n + 1)

end

end A295931.P8993736371881813670

namespace A295931

/-- `A338236(A294338((n+1)²))+A294338(n+1)` -/
def P8993736371881813670.Spec : Prop :=
  ∀ n, P8993736371881813670.a n = A295931 (n + 1)

end A295931

/-! ## A295931.P13479072514462795987

`A316781(2^A316789(n+1))`
-/

namespace A295931.P13479072514462795987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316781 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A316789 (n + 1) : ℤ))).toNat

end

end A295931.P13479072514462795987

namespace A295931

/-- `A316781(2^A316789(n+1))` -/
def P13479072514462795987.Spec : Prop :=
  ∀ n, P13479072514462795987.a n = A295931 (n + 1)

end A295931

/-!
# A295932: Number of (not necessarily maximal) cliques in the n-Sierpinski carpet graph.

The programs for A295932, the canonical program `A295932.P4627218267761450385` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295932 has offset 1).

The definition of A295932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295932.P4627218267761450385

`(13*8^(n+1)-8*3^(n+1)+5)/5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295932

/-- `(13*8^(n+1)-8*3^(n+1)+5)/5` -/
def P4627218267761450385.Spec : Prop :=
  ∀ n, P4627218267761450385.a n = (A295932 (n + 1) : ℚ)

end A295932

/-! ## A295932.P18162983367406972142

`A271939(n+1)+A062395(n+1)`
-/

namespace A295932.P18162983367406972142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271939 (n + 1) + A062395 (n + 1)

end

end A295932.P18162983367406972142

namespace A295932

/-- `A271939(n+1)+A062395(n+1)` -/
def P18162983367406972142.Spec : Prop :=
  ∀ n, P18162983367406972142.a n = A295932 (n + 1)

end A295932

/-! ## A295932.P2674411361633286989

`A000079(3*(n+1))+A271939(n+1)+1`
-/

namespace A295932.P2674411361633286989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * (n + 1)) + (A271939 (n + 1) + 1)

end

end A295932.P2674411361633286989

namespace A295932

/-- `A000079(3*(n+1))+A271939(n+1)+1` -/
def P2674411361633286989.Spec : Prop :=
  ∀ n, P2674411361633286989.a n = A295932 (n + 1)

end A295932

/-! ## A295932.P1083724775571080771

`A011782(3*n+4)+A271939(n+1)+1`
-/

namespace A295932.P1083724775571080771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (3 * n + 4) + (A271939 (n + 1) + 1)

end

end A295932.P1083724775571080771

namespace A295932

/-- `A011782(3*n+4)+A271939(n+1)+1` -/
def P1083724775571080771.Spec : Prop :=
  ∀ n, P1083724775571080771.a n = A295932 (n + 1)

end A295932

/-!
# A295933: Number of (not necessarily maximal) cliques in the n-Sierpinski gasket graph.

The programs for A295933, the canonical program `A295933.P14962948966422154757` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295933 has offset 1).

The definition of A295933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295933.P14962948966422154757

`4*a(n-1)-3*a(n-2)` with `a(0)=8, a(1)=20, a(2)=55`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295933

/-- `4*a(n-1)-3*a(n-2)` -/
def P14962948966422154757.Spec : Prop :=
  ∀ n, P14962948966422154757.a n = A295933 (n + 1)

theorem P14962948966422154757.correct : P14962948966422154757.Spec := by
  intro n
  simp only [A295933, Nat.add_sub_cancel]

end A295933

/-! ## A295933.P8972486916346472538

`∑[ogf((-8+12x+x^2)/(-1+3x))]`
-/

namespace A295933.P8972486916346472538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -12, -1] [1, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295933.P8972486916346472538

namespace A295933

/-- `∑[ogf((-8+12x+x^2)/(-1+3x))]` -/
def P8972486916346472538.Spec : Prop :=
  ∀ n, P8972486916346472538.a n = A295933 (n + 1)

end A295933

/-! ## A295933.P12314030697600548045

`ogf((8-12x-x^2)/(1-4x+3x^2))`
-/

namespace A295933.P12314030697600548045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -12, -1] [1, -4, 3] n

end

end A295933.P12314030697600548045

namespace A295933

/-- `ogf((8-12x-x^2)/(1-4x+3x^2))` -/
def P12314030697600548045.Spec : Prop :=
  ∀ n, P12314030697600548045.a n = A295933 (n + 1)

end A295933

/-! ## A295933.P12140422227609509965

`3*a(n-1)-5` with `a(0)=8, a(1)=20`
-/

namespace A295933.P12140422227609509965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 20] fun n a =>
  3 * a (n - 1) - 5

end

end A295933.P12140422227609509965

namespace A295933

/-- `3*a(n-1)-5` -/
def P12140422227609509965.Spec : Prop :=
  ∀ n, P12140422227609509965.a n = A295933 (n + 1)

end A295933

/-! ## A295933.P18209377219431180984

`A027107(n)+A237930(n)+4`
-/

namespace A295933.P18209377219431180984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027107 n + (A237930 n + 4)

end

end A295933.P18209377219431180984

namespace A295933

/-- `A027107(n)+A237930(n)+4` -/
def P18209377219431180984.Spec : Prop :=
  ∀ n, P18209377219431180984.a n = A295933 (n + 1)

end A295933

/-! ## A295933.P13444672250617544013

`A027107(n)+7*A007051(n)`
-/

namespace A295933.P13444672250617544013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027107 n + 7 * A007051 n

end

end A295933.P13444672250617544013

namespace A295933

/-- `A027107(n)+7*A007051(n)` -/
def P13444672250617544013.Spec : Prop :=
  ∀ n, P13444672250617544013.a n = A295933 (n + 1)

end A295933

/-! ## A295933.P11458806128781704512

`A289521(n+2)+Δ[A025192(n)]`
-/

namespace A295933.P11458806128781704512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289521 (n + 2) + (f1 (n + 1) - f1 n)

end

end A295933.P11458806128781704512

namespace A295933

/-- `A289521(n+2)+Δ[A025192(n)]` -/
def P11458806128781704512.Spec : Prop :=
  ∀ n, P11458806128781704512.a n = A295933 (n + 1)

end A295933

/-! ## A295933.P5533716038794320314

`A003462(n+2)+A003946(n)+3`
-/

namespace A295933.P5533716038794320314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 2) + (A003946 n + 3)

end

end A295933.P5533716038794320314

namespace A295933

/-- `A003462(n+2)+A003946(n)+3` -/
def P5533716038794320314.Spec : Prop :=
  ∀ n, P5533716038794320314.a n = A295933 (n + 1)

end A295933

/-! ## A295933.P17035012866069242733

`A052919(n+2)+2-A124302(n)`
-/

namespace A295933.P17035012866069242733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (n + 2) + (2 - A124302 n)

end

end A295933.P17035012866069242733

namespace A295933

/-- `A052919(n+2)+2-A124302(n)` -/
def P17035012866069242733.Spec : Prop :=
  ∀ n, P17035012866069242733.a n = A295933 (n + 1)

end A295933

/-!
# A295934: Number of (not necessarily maximal) cliques in the n-odd graph.

The programs for A295934, the canonical program `A295934.P14483957444416556349` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295934 has offset 1).

The definition of A295934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295934.P14483957444416556349

`A394266(n+1)+A373565(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A295934

/-- `A394266(n+1)+A373565(n)` -/
def P14483957444416556349.Spec : Prop :=
  ∀ n, P14483957444416556349.a n = A295934 (n + 1)

theorem P14483957444416556349.correct : P14483957444416556349.Spec := by
  intro n
  simp only [A295934, Nat.add_sub_cancel]

end A295934

/-! ## A295934.P11055723382148209635

`A008619(A092443(n+1))-A159075(n)`
-/

namespace A295934.P11055723382148209635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A092443 (n + 1)).toNat - A159075 n

end

end A295934.P11055723382148209635

namespace A295934

/-- `A008619(A092443(n+1))-A159075(n)` -/
def P11055723382148209635.Spec : Prop :=
  ∀ n, P11055723382148209635.a n = A295934 (n + 1)

end A295934

/-!
# A295935: Number of twice-factorizations of n where the latter factorizations are constant, i.e., type (P,P,R).

The programs for A295935, there is no canonical definition to state claims against.
-/

/-! ## A295935.P4528506521156008755

`A347438(n+1)+A339890(A165830(n+1))`
-/

namespace A295935.P4528506521156008755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (n + 1) + A339890 (A165830 (n + 1)).toNat

end

end A295935.P4528506521156008755

/-! ## A295935.P8948686049491123668

`A320266(n+1)+A317056(A294875(n+1))`
-/

namespace A295935.P8948686049491123668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (n + 1) + A317056 (A294875 (n + 1)).toNat

end

end A295935.P8948686049491123668

/-! ## A295935.P15363237282499072638

`A175082(A320887(n+1)%A316794(2*(n+1)))`
-/

namespace A295935.P15363237282499072638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (Int.tmod (A320887 (n + 1)) (A316794 (2 * (n + 1)))).toNat

end

end A295935.P15363237282499072638

/-! ## A295935.P17787773381754526523

`A318323(n+1)%p?[A054500(n+1)]`
-/

namespace A295935.P17787773381754526523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318323 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A295935.P17787773381754526523

/-! ## A295935.P2632451731411434680

`A193739(A132017(A050354(n+1)))`
-/

namespace A295935.P2632451731411434680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A132017 (A050354 (n + 1)).toNat).toNat

end

end A295935.P2632451731411434680

/-!
# A295936: Number of n X n 0..1 arrays with each 1 adjacent to 1 or 3 king-move neighboring 1's.

The programs for A295936, there is no canonical definition to state claims against.
-/

/-! ## A295936.P16537392527001382586

`A295943(∑[4*n]+1)`
-/

namespace A295936.P16537392527001382586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295936.P16537392527001382586

/-! ## A295936.P1237850175815717409

`record[A295943(A330613(n+1))]`
-/

namespace A295936.P1237850175815717409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295936.P1237850175815717409

/-! ## A295936.P4849635982888534143

`record[A214505(n)*A295943(n+1)]`
-/

namespace A295936.P4849635982888534143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A295943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295936.P4849635982888534143

/-! ## A295936.P16632128846699667576

`record[gcd(A114327(n), A295943(n+1))]`
-/

namespace A295936.P16632128846699667576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A295943 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295936.P16632128846699667576

/-! ## A295936.P663461925976953276

`A295943(A001844(n))+A185284(n)`
-/

namespace A295936.P663461925976953276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A001844 n).toNat + A185284 n

end

end A295936.P663461925976953276

/-!
# A295937: Number of n X 2 0..1 arrays with each 1 adjacent to 1 or 3 king-move neighboring 1s.

The programs for A295937, there is no canonical definition to state claims against.
-/

/-! ## A295937.P14384302129505280578

`A295943(∑[n+1]+2)`
-/

namespace A295937.P14384302129505280578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295937.P14384302129505280578

/-! ## A295937.P6233656976496437406

`record[gcd(A002262(n), A295943(n+2))]`
-/

namespace A295937.P6233656976496437406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A295943 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295937.P6233656976496437406

/-! ## A295937.P9594032059661706351

`A326292(n)+A295943(A133263(n+1))`
-/

namespace A295937.P9594032059661706351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A295943 (A133263 (n + 1)).toNat

end

end A295937.P9594032059661706351

/-! ## A295937.P12186005580631921966

`A295943(A000096(n)+3)+A185284(n)`
-/

namespace A295937.P12186005580631921966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A000096 n + 3).toNat + A185284 n

end

end A295937.P12186005580631921966

/-! ## A295937.P17973359709424758220

`record[A295943(Δ[A003453(n+5)])]`
-/

namespace A295937.P17973359709424758220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295937.P17973359709424758220

/-!
# A295938: Number of n X 3 0..1 arrays with each 1 adjacent to 1 or 3 king-move neighboring 1's.

The programs for A295938, there is no canonical definition to state claims against.
-/

/-! ## A295938.P5350674342158520200

`A295943(∑[n+2]+4)`
-/

namespace A295938.P5350674342158520200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295938.P5350674342158520200

/-! ## A295938.P8533479220997907684

`A295943(A167614(n+1))+A178798(n)`
-/

namespace A295938.P8533479220997907684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A167614 (n + 1)).toNat + A178798 n

end

end A295938.P8533479220997907684

/-! ## A295938.P89753063653577874

`A295943(A167614(n+1))+A185284(n)`
-/

namespace A295938.P89753063653577874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A167614 (n + 1)).toNat + A185284 n

end

end A295938.P89753063653577874

/-! ## A295938.P5113307808653493434

`A254730(n)*A295943(A167614(n+1))`
-/

namespace A295938.P5113307808653493434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 n * A295943 (A167614 (n + 1)).toNat

end

end A295938.P5113307808653493434

/-! ## A295938.P2524656499663879651

`A295943(A167614(n+1))*A304042(n)`
-/

namespace A295938.P2524656499663879651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A167614 (n + 1)).toNat * A304042 n

end

end A295938.P2524656499663879651

/-!
# A295939: Number of n X 4 0..1 arrays with each 1 adjacent to 1 or 3 king-move neighboring 1's.

The programs for A295939, there is no canonical definition to state claims against.
-/

/-! ## A295939.P4997094731937742961

`A295943(A141214(n)+7)`
-/

namespace A295939.P4997094731937742961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A141214 n + 7).toNat

end

end A295939.P4997094731937742961

/-! ## A295939.P16468063137185087116

`A295943(A052905(n)+9)`
-/

namespace A295939.P16468063137185087116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A052905 n + 9).toNat

end

end A295939.P16468063137185087116

/-! ## A295939.P16633506579727433839

`A295943(A055999(n)+10)`
-/

namespace A295939.P16633506579727433839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A055999 n + 10).toNat

end

end A295939.P16633506579727433839

/-! ## A295939.P431983219488240607

`A295943(Δ[A008778(n)]+6)`
-/

namespace A295939.P431983219488240607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (f1 (n + 1) - f1 n + 6).toNat

end

end A295939.P431983219488240607

/-! ## A295939.P16773313734265660409

`A295943(A167614(n+2)+1)`
-/

namespace A295939.P16773313734265660409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A167614 (n + 2) + 1).toNat

end

end A295939.P16773313734265660409

/-!
# A295940: Number of nX5 0..1 arrays with each 1 adjacent to 1 or 3 king-move neighboring 1s.

The programs for A295940, there is no canonical definition to state claims against.
-/

/-! ## A295940.P8555094148520659836

`A295943(A167499(n+3))`
-/

namespace A295940.P8555094148520659836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A167499 (n + 3)).toNat

end

end A295940.P8555094148520659836

/-! ## A295940.P9028065193850113037

`A295943(A155212(n)+13)`
-/

namespace A295940.P9028065193850113037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A155212 n + 13).toNat

end

end A295940.P9028065193850113037

/-! ## A295940.P14364960985810994567

`A295943(eq[7, A066657(n)])`
-/

namespace A295940.P14364960985810994567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295940.P14364960985810994567

/-! ## A295940.P820435292168808752

`A295943(eq[6, A131818(n+1)])`
-/

namespace A295940.P820435292168808752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295940.P820435292168808752

/-! ## A295940.P17362394218089350802

`A295943(n+10+A000096(n+2))`
-/

namespace A295940.P17362394218089350802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 ((n + 10 : ℤ) + A000096 (n + 2)).toNat

end

end A295940.P17362394218089350802

/-!
# A295941: Number of nX6 0..1 arrays with each 1 adjacent to 1 or 3 king-move neighboring 1s.

The programs for A295941, there is no canonical definition to state claims against.
-/

/-! ## A295941.P6948087751958532586

`A295943(A000096(n+4)+7)`
-/

namespace A295941.P6948087751958532586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A000096 (n + 4) + 7).toNat

end

end A295941.P6948087751958532586

/-! ## A295941.P9082073555994159218

`A295943(eq[7, A131818(n+1)])`
-/

namespace A295941.P9082073555994159218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295941.P9082073555994159218

/-! ## A295941.P13552311316015872326

`A295943(Δ[A023545(n+1)]+10)`
-/

namespace A295941.P13552311316015872326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (f1 (n + 1) - f1 n + 10).toNat

end

end A295941.P13552311316015872326

/-! ## A295941.P4116673660273896549

`A295943(A374007(n+1))`
-/

namespace A295941.P4116673660273896549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A374007 (n + 1)).toNat

end

end A295941.P4116673660273896549

/-! ## A295941.P16718134595770011006

`A295943(A052905(n+3))`
-/

namespace A295941.P16718134595770011006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A052905 (n + 3)).toNat

end

end A295941.P16718134595770011006

/-!
# A295942: Number of nX7 0..1 arrays with each 1 adjacent to 1 or 3 king-move neighboring 1s.

The programs for A295942, there is no canonical definition to state claims against.
-/

/-! ## A295942.P16789150255384476787

`A295943(eq[11, A066657(n)])`
-/

namespace A295942.P16789150255384476787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295942.P16789150255384476787

/-! ## A295942.P17774999145392876692

`A295943(eq[8, A131818(n+1)])`
-/

namespace A295942.P17774999145392876692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295942.P17774999145392876692

/-! ## A295942.P4827426388752934878

`A295943(A374008(n+1))`
-/

namespace A295942.P4827426388752934878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A374008 (n + 1)).toNat

end

end A295942.P4827426388752934878

/-! ## A295942.P15135940204728202210

`A295943(A055999(n+4))`
-/

namespace A295942.P15135940204728202210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (A055999 (n + 4)).toNat

end

end A295942.P15135940204728202210

/-! ## A295942.P9112503228595227081

`A295943(eq[4, A219347(n)])`
-/

namespace A295942.P9112503228595227081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295942.P9112503228595227081

/-!
# A295943: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 1 or 3 king-move neighboring 1s.

The programs for A295943, there is no canonical definition to state claims against.
-/

/-! ## A295943.P12289031752918159238

`A305810(A296952(n+1)%A350197(3*n+5))`
-/

namespace A295943.P12289031752918159238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (Int.tmod (A296952 (n + 1)) (A350197 (3 * n + 5))).toNat

end

end A295943.P12289031752918159238

/-! ## A295943.P6152118688763227367

`A305810(A296952(n+1))%A110027(2*(n+2))`
-/

namespace A295943.P6152118688763227367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305810 (A296952 (n + 1)).toNat) (A110027 (2 * (n + 2)))

end

end A295943.P6152118688763227367

/-! ## A295943.P1757838916995461313

`A183474(A187829(n+1))+A004526(A131060(n))`
-/

namespace A295943.P1757838916995461313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A187829 (n + 1)).toNat + A004526 (A131060 n).toNat

end

end A295943.P1757838916995461313

/-! ## A295943.P14545191909612778456

`A296320(A187829(n+1))+A004526(A296128(n+1))`
-/

namespace A295943.P14545191909612778456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A187829 (n + 1)).toNat + A004526 (A296128 (n + 1)).toNat

end

end A295943.P14545191909612778456

/-!
# A295945: Expansion of e.g.f. 1/(1 + x/(1 + x^2/(2 + x^3/(3 + x^4/(4 + x^5/(5 + x^6/(6 + x^7/(7 + ...)))))))), a continued fraction.

The programs for A295945, there is no canonical definition to state claims against.
-/

/-! ## A295945.P5160116437621873042

`A319173(gcd(10*n, ∏{digits}[n, -#]))`
-/

namespace A295945.P5160116437621873042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319173 (Int.gcd (10 * n : ℤ) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -(x : ℤ)).prod)

end

end A295945.P5160116437621873042

/-! ## A295945.P18122596005784063470

`A319173(A024659(n))`
-/

namespace A295945.P18122596005784063470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319173 (A024659 n).toNat

end

end A295945.P18122596005784063470

/-! ## A295945.P3688578181108977799

`A319173(A023052(n+1))`
-/

namespace A295945.P3688578181108977799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319173 (A023052 (n + 1)).toNat

end

end A295945.P3688578181108977799

/-! ## A295945.P6902246109144059820

`A319173(A029966(n+1))`
-/

namespace A295945.P6902246109144059820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319173 (A029966 (n + 1)).toNat

end

end A295945.P6902246109144059820

/-! ## A295945.P16831400096432737570

`A319173(A134703(n+1))`
-/

namespace A295945.P16831400096432737570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319173 (A134703 (n + 1)).toNat

end

end A295945.P16831400096432737570

/-!
# A295946: Number of set partitions of [3n] into n subsets of size three such that all element sums are triangular numbers.

The programs for A295946, there is no canonical definition to state claims against.
-/

/-! ## A295946.P13189595219578601260

`A261226(or(A231173(n), A240998(n)))`
-/

namespace A295946.P13189595219578601260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (Int.lor (A231173 n) (A240998 n)).toNat

end

end A295946.P13189595219578601260

/-! ## A295946.P10185004805834958231

`A003309(C(A048855(n), A280704(n+1)))`
-/

namespace A295946.P10185004805834958231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (Nat.choose (A048855 n).toNat (A280704 (n + 1)).toNat)

end

end A295946.P10185004805834958231

/-!
# A295947: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n), where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295947, there is no canonical definition to state claims against.
-/

/-! ## A295947.P12689248211294242798

`A293765(n)+1`
-/

namespace A295947.P12689248211294242798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293765 n + 1

end

end A295947.P12689248211294242798

/-! ## A295947.P13476829857709265636

`n-(A023443(n)-A293765(n))`
-/

namespace A295947.P13476829857709265636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A293765 n)

end

end A295947.P13476829857709265636

/-! ## A295947.P3826429095503098937

`A005408(n)-(2*n-A293765(n))`
-/

namespace A295947.P3826429095503098937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A293765 n)

end

end A295947.P3826429095503098937

/-! ## A295947.P16941802851384437335

`A017497(n)-(A017485(n)-A293765(n))`
-/

namespace A295947.P16941802851384437335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n - (A017485 n - A293765 n)

end

end A295947.P16941802851384437335

/-! ## A295947.P14745611441451046861

`A174191(n)-(A000129(n)-A293765(n))`
-/

namespace A295947.P14745611441451046861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n - (A000129 n - A293765 n)

end

end A295947.P14745611441451046861

/-!
# A295948: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n), where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295948, there is no canonical definition to state claims against.
-/

/-! ## A295948.P15691098632923511775

`2-(A212804(n+1)+A001478(A293766(n)))`
-/

namespace A295948.P15691098632923511775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A212804 (n + 1) + A001478 (A293766 n).toNat)

end

end A295948.P15691098632923511775

/-! ## A295948.P10244816459236832470

`A295954(n)+2-A002024(A032441(n))`
-/

namespace A295948.P10244816459236832470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295954 n + (2 - A002024 (A032441 n).toNat)

end

end A295948.P10244816459236832470

/-! ## A295948.P5443079794964686277

`A295958(n)+A143434(A143403(n+1))`
-/

namespace A295948.P5443079794964686277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295958 n + A143434 (A143403 (n + 1)).toNat

end

end A295948.P5443079794964686277

/-! ## A295948.P3809022128276918446

`A323513(A061140(n)+1)+A295958(n)`
-/

namespace A295948.P3809022128276918446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 (A061140 n + 1).toNat + A295958 n

end

end A295948.P3809022128276918446

/-! ## A295948.P16308053651671048211

`A323513(A061135(n+1)+1)+A295958(n)`
-/

namespace A295948.P16308053651671048211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 (A061135 (n + 1) + 1).toNat + A295958 n

end

end A295948.P16308053651671048211

/-!
# A295949: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295949, there is no canonical definition to state claims against.
-/

/-! ## A295949.P11759025268195825222

`A000027(A295960(n)+Δ[A065220(n)])`
-/

namespace A295949.P11759025268195825222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295960 n + (f1 (n + 1) - f1 n)).toNat

end

end A295949.P11759025268195825222

/-! ## A295949.P6550227982669851835

`A295960(n)+A023443(A212804(n))`
-/

namespace A295949.P6550227982669851835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295960 n + A023443 (A212804 n).toNat

end

end A295949.P6550227982669851835

/-! ## A295949.P2480043296877172444

`A000038((n+1)^3)+A295960(n)+Δ[A065220(n)]`
-/

namespace A295949.P2480043296877172444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n + 1) ^ 3) + (A295960 n + (f1 (n + 1) - f1 n))

end

end A295949.P2480043296877172444

/-! ## A295949.P14540949121748551575

`(A295960(n)+Δ[A065220(n)])*A245794(n)!`
-/

namespace A295949.P14540949121748551575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295960 n + (f1 (n + 1) - f1 n)) * (Nat.factorial (A245794 n).toNat : ℤ)

end

end A295949.P14540949121748551575

/-! ## A295949.P2280651174447938732

`(A295960(n)+Δ[A065220(n)])*A006257(2^n)`
-/

namespace A295949.P2280651174447938732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295960 n + (f1 (n + 1) - f1 n)) * A006257 (2 ^ n)

end

end A295949.P2280651174447938732

/-!
# A295950: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n), where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295950, there is no canonical definition to state claims against.
-/

/-! ## A295950.P13388851331687491142

`A000027(A295953(n)-Δ[A065220(n)])`
-/

namespace A295950.P13388851331687491142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295953 n - (f1 (n + 1) - f1 n)).toNat

end

end A295950.P13388851331687491142

/-! ## A295950.P13848825716373503339

`A000027(A294367(n)-A065220(n+1))`
-/

namespace A295950.P13848825716373503339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A294367 n - A065220 (n + 1)).toNat

end

end A295950.P13848825716373503339

/-! ## A295950.P9113318213859735627

`A000027(A295953(n)+1-A212804(n))`
-/

namespace A295950.P9113318213859735627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295953 n + (1 - A212804 n)).toNat

end

end A295950.P9113318213859735627

/-! ## A295950.P3976236309870062119

`A000027(1-(A212804(n)-A295953(n)))`
-/

namespace A295950.P3976236309870062119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (1 - (A212804 n - A295953 n)).toNat

end

end A295950.P3976236309870062119

/-! ## A295950.P898803370149220425

`A065220(n)+A000027(A295953(n))-A065220(A000027(n+1))`
-/

namespace A295950.P898803370149220425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A000027 (A295953 n).toNat - A065220 (A000027 (n + 1)).toNat

end

end A295950.P898803370149220425

/-!
# A295951: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n), where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295951, there is no canonical definition to state claims against.
-/

/-! ## A295951.P6521426567808600587

`A294543(n)+1`
-/

namespace A295951.P6521426567808600587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294543 n + 1

end

end A295951.P6521426567808600587

/-! ## A295951.P9916686537129261872

`A000124(n)-(∑[n]-A294543(n))`
-/

namespace A295951.P9916686537129261872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294543 n)

end

end A295951.P9916686537129261872

/-! ## A295951.P9206247075410034272

`∑[A028310(n)]-(∑[n]-A294543(n))`
-/

namespace A295951.P9206247075410034272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A294543 n)

end

end A295951.P9206247075410034272

/-! ## A295951.P1877478863927868055

`A294543(n)-log2(1/4)-A115362(2*n)`
-/

namespace A295951.P1877478863927868055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294543 n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ) - (A115362 (2 * n) : ℝ)

end

end A295951.P1877478863927868055

/-! ## A295951.P6843588230507148573

`A294543(n)-log2(1/4)-A001065(A101300(n))`
-/

namespace A295951.P6843588230507148573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294543 n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ) - (A001065 (A101300 n).toNat : ℝ)

end

end A295951.P6843588230507148573

/-! ## A295951.P12164513236734131052

`A294543(n)-log2(1/4)-A033999(A002262(n))²`
-/

namespace A295951.P12164513236734131052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294543 n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ) - (A033999 (A002262 n).toNat ^ 2 : ℝ)

end

end A295951.P12164513236734131052

/-!
# A295952: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n), where a(0) = 1, a(1) = 5, b(0) = 2, b(1) = 3, b(2) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295952, there is no canonical definition to state claims against.
-/

/-! ## A295952.P14690083283777986994

`A293057(n)+A006355(A187829(n+1))`
-/

namespace A295952.P14690083283777986994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293057 n + A006355 (A187829 (n + 1)).toNat

end

end A295952.P14690083283777986994

/-! ## A295952.P18305435924221990727

`A295953(A187829(n+1))-Δ[A293349(n)]`
-/

namespace A295952.P18305435924221990727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295953 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A295952.P18305435924221990727

/-! ## A295952.P17065172936770841743

`A141204(A030119(n+1))`
-/

namespace A295952.P17065172936770841743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A030119 (n + 1)).toNat

end

end A295952.P17065172936770841743

/-! ## A295952.P11203582096431816393

`A294417(n)+A143824(A059929(n))`
-/

namespace A295952.P11203582096431816393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294417 n + A143824 (A059929 n).toNat

end

end A295952.P11203582096431816393

/-!
# A295953: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295953, there is no canonical definition to state claims against.
-/

/-! ## A295953.P16953022081390965103

`A000027(A294367(n)-A065220(n))`
-/

namespace A295953.P16953022081390965103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A294367 n - A065220 n).toNat

end

end A295953.P16953022081390965103

/-! ## A295953.P11576303591557196162

`A295950(n)+A023443(A212804(n))`
-/

namespace A295953.P11576303591557196162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295950 n + A023443 (A212804 n).toNat

end

end A295953.P11576303591557196162

/-! ## A295953.P15252255504524261206

`A294546(n)+∑[A024000(A212804(n))]`
-/

namespace A295953.P15252255504524261206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294546 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295953.P15252255504524261206

/-! ## A295953.P12267652578980852350

`A024000(A212804(n))+A294546(n)-A065220(n)`
-/

namespace A295953.P12267652578980852350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A212804 n).toNat + (A294546 n - A065220 n)

end

end A295953.P12267652578980852350

/-! ## A295953.P12128610509833316480

`A004526(A006355(n))+A293349(n)-A065220(n)`
-/

namespace A295953.P12128610509833316480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006355 n).toNat + (A293349 n - A065220 n)

end

end A295953.P12128610509833316480

/-!
# A295954: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 1, where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295954, there is no canonical definition to state claims against.
-/

/-! ## A295954.P6663763919735652307

`A293766(n)+1`
-/

namespace A295954.P6663763919735652307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293766 n + 1

end

end A295954.P6663763919735652307

/-! ## A295954.P1037459316436363875

`n-(A023443(n)-A293766(n))`
-/

namespace A295954.P1037459316436363875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A293766 n)

end

end A295954.P1037459316436363875

/-! ## A295954.P11089822124386694690

`2-(A000120(A059342(n))-A293766(n))`
-/

namespace A295954.P11089822124386694690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000120 (A059342 n).toNat - A293766 n)

end

end A295954.P11089822124386694690

/-! ## A295954.P3646078215285060611

`2-(A000120(A059268(n))-A293766(n))`
-/

namespace A295954.P3646078215285060611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000120 (A059268 n).toNat - A293766 n)

end

end A295954.P3646078215285060611

/-! ## A295954.P15003511656092832546

`2-(A032741(A062584(n))-A293766(n))`
-/

namespace A295954.P15003511656092832546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A032741 (A062584 n).toNat - A293766 n)

end

end A295954.P15003511656092832546

/-!
# A295955: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 1, where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295955, there is no canonical definition to state claims against.
-/

/-! ## A295955.P11461199037386732939

`A210731(n)+A022308(A276142(n+1))`
-/

namespace A295955.P11461199037386732939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + A022308 (A276142 (n + 1)).toNat

end

end A295955.P11461199037386732939

/-! ## A295955.P7913199179665541153

`A118413(C(A210677(n)+1, 2)+1)+n`
-/

namespace A295955.P7913199179665541153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118413 (Nat.choose (A210677 n + 1).toNat 2 + 1) + (n : ℤ)

end

end A295955.P7913199179665541153

/-! ## A295955.P4505750341957731085

`A293765(n)+A153679(A000032(n))`
-/

namespace A295955.P4505750341957731085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293765 n + A153679 (A000032 n).toNat

end

end A295955.P4505750341957731085

/-! ## A295955.P9213806987123339292

`A295366(n+1)+A001055(A002184(n))`
-/

namespace A295955.P9213806987123339292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295366 (n + 1) + A001055 (A002184 n).toNat

end

end A295955.P9213806987123339292

/-!
# A295956: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 1, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295956, there is no canonical definition to state claims against.
-/

/-! ## A295956.P10414023781923517885

`A000027(A294548(n)-A065220(n))`
-/

namespace A295956.P10414023781923517885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A294548 n - A065220 n).toNat

end

end A295956.P10414023781923517885

/-! ## A295956.P2068452622546833753

`A000027(A295862(n)+Δ[A065220(n)])`
-/

namespace A295956.P2068452622546833753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295862 n + (f1 (n + 1) - f1 n)).toNat

end

end A295956.P2068452622546833753

/-! ## A295956.P9572022847643981007

`A000027(A294548(n)+n-A000045(n))`
-/

namespace A295956.P9572022847643981007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A294548 n + ((n : ℤ) - A000045 n)).toNat

end

end A295956.P9572022847643981007

/-! ## A295956.P4252993420519450675

`A000027(n-(A000045(n)-A294548(n)))`
-/

namespace A295956.P4252993420519450675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n : ℤ) - (A000045 n - A294548 n)).toNat

end

end A295956.P4252993420519450675

/-! ## A295956.P14252929625035548385

`A293351(n)+A023443(A006355(n)-A065220(n))`
-/

namespace A295956.P14252929625035548385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293351 n + A023443 (A006355 n - A065220 n).toNat

end

end A295956.P14252929625035548385

/-!
# A295957: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 1, where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295957, there is no canonical definition to state claims against.
-/

/-! ## A295957.P1196676635238713085

`A294365(n)+∑[A024000(A212804(n))]`
-/

namespace A295957.P1196676635238713085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294365 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295957.P1196676635238713085

/-! ## A295957.P864662528208349270

`A294365(n)-(A065220(n)+A023443(A212804(n)))`
-/

namespace A295957.P864662528208349270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294365 n - (A065220 n + A023443 (A212804 n).toNat)

end

end A295957.P864662528208349270

/-! ## A295957.P15530737630886968641

`A294549(n)+A024000(A212804(n))-A065220(n+1)`
-/

namespace A295957.P15530737630886968641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294549 n + A024000 (A212804 n).toNat - A065220 (n + 1)

end

end A295957.P15530737630886968641

/-! ## A295957.P12318913251595756107

`A293357(n)+A004526(A006355(n))-A065220(n+1)`
-/

namespace A295957.P12318913251595756107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293357 n + A004526 (A006355 n).toNat - A065220 (n + 1)

end

end A295957.P12318913251595756107

/-! ## A295957.P8731342922227883474

`A293765(n)+A256663(A000045(n))`
-/

namespace A295957.P8731342922227883474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293765 n + A256663 (A000045 n).toNat

end

end A295957.P8731342922227883474

/-!
# A295958: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 1, where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295958, there is no canonical definition to state claims against.
-/

/-! ## A295958.P7135498533940371030

`A294544(n)+1`
-/

namespace A295958.P7135498533940371030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294544 n + 1

end

end A295958.P7135498533940371030

/-! ## A295958.P12728871538507133352

`n-(A023443(n)-A294544(n))`
-/

namespace A295958.P12728871538507133352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A294544 n)

end

end A295958.P12728871538507133352

/-! ## A295958.P7446017432895795839

`record[A294544(A103221(n))-A062157(n)]`
-/

namespace A295958.P7446017432895795839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294544 (A103221 n).toNat - A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295958.P7446017432895795839

/-! ## A295958.P11807498417249941481

`A294544(n)-log2(1/4)-A227141(A005811(n))`
-/

namespace A295958.P11807498417249941481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294544 n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ) - (A227141 (A005811 n).toNat : ℝ)

end

end A295958.P11807498417249941481

/-! ## A295958.P18171760914121527314

`A294544(n)-log2(1/4)-A152815(A000217(n))`
-/

namespace A295958.P18171760914121527314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294544 n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ) - (A152815 (A000217 n).toNat : ℝ)

end

end A295958.P18171760914121527314

/-! ## A295958.P14528101353547415702

`abs(A008683(A002148(n))-A294544(n))`
-/

namespace A295958.P14528101353547415702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A002148 n).toNat - A294544 n|

end

end A295958.P14528101353547415702

/-!
# A295959: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) + 1, where a(0) = 1, a(1) = 5, b(0) = 2, b(1) = 3, b(2) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295959, there is no canonical definition to state claims against.
-/

/-! ## A295959.P3668733318157932989

`∑[abs(Δ[A294545(n)])]`
-/

namespace A295959.P3668733318157932989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295959.P3668733318157932989

/-! ## A295959.P11249241524982687795

`A294545(n+1)-1`
-/

namespace A295959.P11249241524982687795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294545 (n + 1) - 1

end

end A295959.P11249241524982687795

/-! ## A295959.P6541023952892815160

`∑[A000007(n+1)+Δ[A294545(n)]]`
-/

namespace A295959.P6541023952892815160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295959.P6541023952892815160

/-! ## A295959.P14013213052983541127

`∑[A000035(2*n)+Δ[A294545(n)]]`
-/

namespace A295959.P14013213052983541127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295959.P14013213052983541127

/-! ## A295959.P14501472083252221146

`∑[Δ[A294545(n)]%A090991(n+1)]`
-/

namespace A295959.P14501472083252221146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A090991 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295959.P14501472083252221146

/-! ## A295959.P1378242126015770460

`∑[Δ[A294545(n)]%A022128(n)]`
-/

namespace A295959.P1378242126015770460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A022128 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295959.P1378242126015770460

/-!
# A295960: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295960, there is no canonical definition to state claims against.
-/

/-! ## A295960.P2617713873621159835

`(A295949(n)-Δ[A065220(n)])%A057219(n)`
-/

namespace A295960.P2617713873621159835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295949 n - (f1 (n + 1) - f1 n)) (A057219 n)

end

end A295960.P2617713873621159835

/-! ## A295960.P8225306687324116123

`A000027(A295949(n)-Δ[A065220(n)])`
-/

namespace A295960.P8225306687324116123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295949 n - (f1 (n + 1) - f1 n)).toNat

end

end A295960.P8225306687324116123

/-! ## A295960.P15828193802831541269

`A295949(n)+A024000(A212804(n))`
-/

namespace A295960.P15828193802831541269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295949 n + A024000 (A212804 n).toNat

end

end A295960.P15828193802831541269

/-! ## A295960.P2157022951752673076

`A000038((n+1)^3)+A295949(n)-Δ[A065220(n)]`
-/

namespace A295960.P2157022951752673076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n + 1) ^ 3) + (A295949 n - (f1 (n + 1) - f1 n))

end

end A295960.P2157022951752673076

/-! ## A295960.P10247564597780008747

`(A295949(n)-Δ[A065220(n)])*A056552((n+1)^3)`
-/

namespace A295960.P10247564597780008747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295949 n - (f1 (n + 1) - f1 n)) * A056552 ((n + 1) ^ 3)

end

end A295960.P10247564597780008747

/-!
# A295961: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - 1, where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295961, there is no canonical definition to state claims against.
-/

/-! ## A295961.P17878437614318008685

`A293406(n)+1`
-/

namespace A295961.P17878437614318008685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293406 n + 1

end

end A295961.P17878437614318008685

/-! ## A295961.P3695815978295653772

`2-(A020985(n)²-A293406(n))`
-/

namespace A295961.P3695815978295653772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020985 n ^ 2 - A293406 n)

end

end A295961.P3695815978295653772

/-! ## A295961.P189082005170599206

`A000124(n)-(∑[n]-A293406(n))`
-/

namespace A295961.P189082005170599206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A293406 n)

end

end A295961.P189082005170599206

/-! ## A295961.P12472222355436236175

`A000034(n)-(A000035(n)-A293406(n))`
-/

namespace A295961.P12472222355436236175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - (A000035 n - A293406 n)

end

end A295961.P12472222355436236175

/-! ## A295961.P17653285891452666772

`2-(A007318(∑[n])-A293406(n))`
-/

namespace A295961.P17653285891452666772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A293406 n)

end

end A295961.P17653285891452666772

/-!
# A295962: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - 1, where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295962, there is no canonical definition to state claims against.
-/

/-! ## A295962.P209198586162607851

`A294535(n)+2`
-/

namespace A295962.P209198586162607851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294535 n + 2

end

end A295962.P209198586162607851

/-! ## A295962.P15373490715530144979

`3-((A004442(n)-n)²-A294535(n))`
-/

namespace A295962.P15373490715530144979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((A004442 n - (n : ℤ)) ^ 2 - A294535 n)

end

end A295962.P15373490715530144979

/-! ## A295962.P8856572572604768267

`A063942(3*n)-(n-1-A294535(n))`
-/

namespace A295962.P8856572572604768267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (3 * n) - ((n : ℤ) - 1 - A294535 n)

end

end A295962.P8856572572604768267

/-! ## A295962.P16580873928968317555

`2-((n²-A000290(n))²-A294535(n))`
-/

namespace A295962.P16580873928968317555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((n ^ 2 : ℤ) - A000290 n) ^ 2 - A294535 n)

end

end A295962.P16580873928968317555

/-! ## A295962.P3641216865881016156

`2-(char[A255024(Δ[n²]-n)]-A294535(n))`
-/

namespace A295962.P3641216865881016156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255024 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A294535 n)

end

end A295962.P3641216865881016156

/-!
# A295963: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - 1, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295963, there is no canonical definition to state claims against.
-/

/-! ## A295963.P17443875246641094677

`Δ[A295618(n)-A057427(10*n²)]`
-/

namespace A295963.P17443875246641094677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295618 n - A057427 (10 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295963.P17443875246641094677

/-! ## A295963.P16513953835879908612

`Δ[A295618(n)-A020639(A290498(n+1))]`
-/

namespace A295963.P16513953835879908612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295618 n - A020639 (A290498 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295963.P16513953835879908612

/-! ## A295963.P8296593984352458526

`Δ[A295618(n)-A080953(A080953(n))]`
-/

namespace A295963.P8296593984352458526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295618 n - A080953 (A080953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295963.P8296593984352458526

/-! ## A295963.P1323438178705266536

`A293316(n)-A010051(A007648(n+1))`
-/

namespace A295963.P1323438178705266536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293316 n - A010051 (A007648 (n + 1)).toNat

end

end A295963.P1323438178705266536

/-!
# A295964: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - 1, where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295964, there is no canonical definition to state claims against.
-/

/-! ## A295964.P12575851756728458787

`A000027(A295862(n)-Δ[A065220(n)])`
-/

namespace A295964.P12575851756728458787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295862 n - (f1 (n + 1) - f1 n)).toNat

end

end A295964.P12575851756728458787

/-! ## A295964.P5897438777001421256

`A295862(n)+A024000(A212804(n))`
-/

namespace A295964.P5897438777001421256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295862 n + A024000 (A212804 n).toNat

end

end A295964.P5897438777001421256

/-! ## A295964.P8685141210557545458

`A295956(n)+2*A024000(A212804(n))`
-/

namespace A295964.P8685141210557545458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295956 n + 2 * A024000 (A212804 n).toNat

end

end A295964.P8685141210557545458

/-! ## A295964.P7247490263528283842

`A024000(A212804(n))+A294548(n)-A065220(n+1)`
-/

namespace A295964.P7247490263528283842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A212804 n).toNat + (A294548 n - A065220 (n + 1))

end

end A295964.P7247490263528283842

/-! ## A295964.P1662201917459908527

`A273943(2*(A295862(n)-Δ[A065220(n)]))`
-/

namespace A295964.P1662201917459908527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * (A295862 n - (f1 (n + 1) - f1 n))).toNat

end

end A295964.P1662201917459908527

/-!
# A295965: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - 1, where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295965, there is no canonical definition to state claims against.
-/

/-! ## A295965.P18355586501486536588

`A294542(n)+1`
-/

namespace A295965.P18355586501486536588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294542 n + 1

end

end A295965.P18355586501486536588

/-! ## A295965.P14138379794681141256

`A005408(n)-(2*n-A294542(n))`
-/

namespace A295965.P14138379794681141256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A294542 n)

end

end A295965.P14138379794681141256

/-! ## A295965.P13483217158777526357

`Δ[A000290(n)]-(2*n-A294542(n))`
-/

namespace A295965.P13483217158777526357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((2 * n : ℤ) - A294542 n)

end

end A295965.P13483217158777526357

/-! ## A295965.P8258761148331764687

`A000217(n)-(A000124(n)-(A294542(n)-log2(1/4)))`
-/

namespace A295965.P8258761148331764687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℝ) - ((A000124 n : ℝ) - ((A294542 n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ)))

end

end A295965.P8258761148331764687

/-! ## A295965.P12692700750319270806

`abs(A008683(A002148(n))-A294542(n))`
-/

namespace A295965.P12692700750319270806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A002148 n).toNat - A294542 n|

end

end A295965.P12692700750319270806

/-!
# A295966: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n) - 1, where a(0) = 1, a(1) = 5, b(0) = 2, b(1) = 3, b(2) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295966, there is no canonical definition to state claims against.
-/

/-! ## A295966.P8719120460599237782

`A006355(n+1)+A005041((n+1)*A018015(n))`
-/

namespace A295966.P8719120460599237782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + A005041 ((n + 1 : ℤ) * A018015 n).toNat

end

end A295966.P8719120460599237782

/-! ## A295966.P7828628053657903212

`A191771(Δ[A182807(n+1)])`
-/

namespace A295966.P7828628053657903212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191771 (f1 (n + 1) - f1 n).toNat

end

end A295966.P7828628053657903212

/-! ## A295966.P10375862540754156619

`A100795(∑[A007053(n+1)]²)`
-/

namespace A295966.P10375862540754156619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A295966.P10375862540754156619

/-!
# A295973: Primes introducing new second differences in A036263.

The programs for A295973, there is no canonical definition to state claims against.
-/

/-! ## A295973.P14530682584549919034

`A065091(A376656(n+1))`
-/

namespace A295973.P14530682584549919034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A376656 (n + 1)).toNat

end

end A295973.P14530682584549919034

/-! ## A295973.P15627224133386886813

`A000040(A376656(n+1)+1)`
-/

namespace A295973.P15627224133386886813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A376656 (n + 1) + 1).toNat

end

end A295973.P15627224133386886813

/-! ## A295973.P7272331920731968207

`A008578(A376656(n+1)+2)`
-/

namespace A295973.P7272331920731968207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A376656 (n + 1) + 2).toNat

end

end A295973.P7272331920731968207

/-! ## A295973.P9324858737883844511

`A006093(A376656(n+1)+1)+1`
-/

namespace A295973.P9324858737883844511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A376656 (n + 1) + 1).toNat + 1

end

end A295973.P9324858737883844511

/-! ## A295973.P7750534126751808833

`A008864(A376656(n+1)+1)-1`
-/

namespace A295973.P7750534126751808833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A376656 (n + 1) + 1).toNat - 1

end

end A295973.P7750534126751808833

/-!
# A295974: Number of length-n permutations avoiding descent patterns aba and bab.

The programs for A295974, there is no canonical definition to state claims against.
-/

/-! ## A295974.P6823637416449503509

`A295987(lt[A039599(2*n+1), A079611(n+5)])`
-/

namespace A295974.P6823637416449503509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079611 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A295974.P6823637416449503509

/-! ## A295974.P8888717587233585138

`A295987(eq[1, A191395(n)])`
-/

namespace A295974.P8888717587233585138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295974.P8888717587233585138

/-! ## A295974.P9277695250280124948

`A110161(A215757(n+2))+A000110(n)`
-/

namespace A295974.P9277695250280124948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A215757 (n + 2)).toNat + A000110 n

end

end A295974.P9277695250280124948

/-!
# A295975: Odd primes p with the property that gcd(ord_p q: prime q divides p-1) = 1.

The programs for A295975, there is no canonical definition to state claims against.
-/

/-! ## A295975.P16011852008995256697

`A004139(eq[1, A292285(n+2)])`
-/

namespace A295975.P16011852008995256697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295975.P16011852008995256697

/-! ## A295975.P18432024593164312520

`A004139(lt[A292285(n+2), 2])`
-/

namespace A295975.P18432024593164312520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292285 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A295975.P18432024593164312520

/-! ## A295975.P8841669996815173456

`A000040(eq[1, A292285(n+2)]+2)`
-/

namespace A295975.P8841669996815173456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A295975.P8841669996815173456

/-!
# A295976: Number of nonnegative solutions to (x,y) = 1 and x^3 + y^3 = n.

The programs for A295976, there is no canonical definition to state claims against.
-/

/-! ## A295976.P11911153811707876095

`A173677(n)*A347552(A278929(n))`
-/

namespace A295976.P11911153811707876095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n * A347552 (A278929 n).toNat

end

end A295976.P11911153811707876095

/-! ## A295976.P15084328877266653124

`(A025464(n)+A025446(n))*A347552(A278929(n))`
-/

namespace A295976.P15084328877266653124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025464 n + A025446 n) * A347552 (A278929 n).toNat

end

end A295976.P15084328877266653124

/-! ## A295976.P4372341517263673594

`(A173677(n)*A339368(A278929(n)))^A007318(n)`
-/

namespace A295976.P4372341517263673594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173677 n * A339368 (A278929 n).toNat : ℚ) ^ (A007318 n : ℤ)

end

end A295976.P4372341517263673594

/-! ## A295976.P1090383181225720587

`(A173677(n)*A339368(A278929(n)))^A008459(n)`
-/

namespace A295976.P1090383181225720587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173677 n * A339368 (A278929 n).toNat : ℚ) ^ (A008459 n : ℤ)

end

end A295976.P1090383181225720587

/-! ## A295976.P17666815417347845965

`(A173677(n)*A339368(A278929(n)))^A009998(n)`
-/

namespace A295976.P17666815417347845965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173677 n * A339368 (A278929 n).toNat : ℚ) ^ (A009998 n : ℤ)

end

end A295976.P17666815417347845965

/-! ## A295976.P11373642531235590208

`(A173677(n)*A339368(A278929(n)))^A046802(n)`
-/

namespace A295976.P11373642531235590208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173677 n * A339368 (A278929 n).toNat : ℚ) ^ (A046802 n : ℤ)

end

end A295976.P11373642531235590208

/-! ## A295976.P18185113701694703800

`(A173677(n)*A339368(A278929(n)))^A072285(n)`
-/

namespace A295976.P18185113701694703800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173677 n * A339368 (A278929 n).toNat : ℚ) ^ (A072285 n : ℤ)

end

end A295976.P18185113701694703800

/-! ## A295976.P5970282638985303255

`(A173677(n)*A339368(A278929(n)))^A090628(n)`
-/

namespace A295976.P5970282638985303255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173677 n * A339368 (A278929 n).toNat : ℚ) ^ (A090628 n : ℤ)

end

end A295976.P5970282638985303255

/-! ## A295976.P5684284779666867715

`(A173677(n)*A339368(A278929(n)))^A267401(n+1)`
-/

namespace A295976.P5684284779666867715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173677 n * A339368 (A278929 n).toNat : ℚ) ^ (A267401 (n + 1) : ℤ)

end

end A295976.P5684284779666867715

/-! ## A295976.P9232983551704705930

`(A173677(n)*A339368(A278929(n)))^A014963(n+5)`
-/

namespace A295976.P9232983551704705930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173677 n * A339368 (A278929 n).toNat : ℚ) ^ (A014963 (n + 5) : ℤ)

end

end A295976.P9232983551704705930

/-! ## A295976.P15696689467837766837

`and(A000096(A144215(n+1)), A173677(n))`
-/

namespace A295976.P15696689467837766837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000096 (A144215 (n + 1)).toNat) (A173677 n)

end

end A295976.P15696689467837766837

/-!
# A295977: Number of nonnegative solutions to (x,y) = 1 and x^3 + y^3 <= n.

The programs for A295977, there is no canonical definition to state claims against.
-/

/-! ## A295977.P8269383889583250351

`a(n-1)+A295976(n)` with `a(0)=0`
-/

namespace A295977.P8269383889583250351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A295976 n

end

end A295977.P8269383889583250351

/-! ## A295977.P423886764226889909

`∑[A295976(n)]`
-/

namespace A295977.P423886764226889909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295977.P423886764226889909

/-! ## A295977.P8091712870769291024

`A003313(∏[A295976(n)+1])`
-/

namespace A295977.P8091712870769291024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295976 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295977.P8091712870769291024

/-! ## A295977.P14418239415718066508

`A001222(∏[2^A295976(n)])`
-/

namespace A295977.P14418239415718066508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A295976 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A295977.P14418239415718066508

/-! ## A295977.P13179531860635172084

`A003313(∏[2^A295976(n)])`
-/

namespace A295977.P13179531860635172084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A295976 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A295977.P13179531860635172084

/-! ## A295977.P7508160664513213655

`A007814(∏[2^A295976(n)])`
-/

namespace A295977.P7508160664513213655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A295976 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A295977.P7508160664513213655

/-! ## A295977.P15001017485697967979

`A000005(∏[2^A295976(n)])-1`
-/

namespace A295977.P15001017485697967979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A295976 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A295977.P15001017485697967979

/-! ## A295977.P5699947158182814703

`A001511(∏[2^A295976(n)])-1`
-/

namespace A295977.P5699947158182814703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A295976 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A295977.P5699947158182814703

/-! ## A295977.P9970932074179457136

`∑[and(A173677(n), A281397(n+1))]`
-/

namespace A295977.P9970932074179457136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173677 n) (A281397 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295977.P9970932074179457136

/-! ## A295977.P3110851152252803164

`∑[A173677(n)*A339368(A278929(n))]`
-/

namespace A295977.P3110851152252803164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n * A339368 (A278929 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295977.P3110851152252803164

/-!
# A295978: Number of n X n 0..1 arrays with each 1 adjacent to 2 or 3 king-move neighboring 1's.

The programs for A295978, there is no canonical definition to state claims against.
-/

/-! ## A295978.P3685636068305906462

`A295985(∑[4*n]+1)`
-/

namespace A295978.P3685636068305906462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295978.P3685636068305906462

/-! ## A295978.P18170487026237842371

`A194341(n+1)*A295985(A001844(n))`
-/

namespace A295978.P18170487026237842371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194341 (n + 1) * A295985 (A001844 n).toNat

end

end A295978.P18170487026237842371

/-! ## A295978.P3555146300225082525

`or(A036853(n+1), A295985(A001844(n)))`
-/

namespace A295978.P3555146300225082525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036853 (n + 1)) (A295985 (A001844 n).toNat)

end

end A295978.P3555146300225082525

/-! ## A295978.P4096055358755944110

`gcd(13, A126646(n))*A295985(A001844(n))`
-/

namespace A295978.P4096055358755944110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 13 (A126646 n) : ℤ) * A295985 (A001844 n).toNat

end

end A295978.P4096055358755944110

/-! ## A295978.P498536158369421962

`1-A160939(n+1)+A295985(A001844(n))+2*n`
-/

namespace A295978.P498536158369421962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160939 (n + 1) + (A295985 (A001844 n).toNat + (2 * n : ℤ))

end

end A295978.P498536158369421962

/-!
# A295979: Number of n X 2 0..1 arrays with each 1 adjacent to 2 or 3 king-move neighboring 1s.

The programs for A295979, there is no canonical definition to state claims against.
-/

/-! ## A295979.P3912474430854259053

`record[ratio[A295985(n+1)]]`
-/

namespace A295979.P3912474430854259053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295979.P3912474430854259053

/-! ## A295979.P532000622488695136

`A295985(∑[n+1]+2)`
-/

namespace A295979.P532000622488695136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295979.P532000622488695136

/-! ## A295979.P14145281639575731488

`record[A295985(n+1)/A144048(n)]`
-/

namespace A295979.P14145281639575731488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295985 (n + 1) : ℚ) / (A144048 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295979.P14145281639575731488

/-! ## A295979.P10413866347481858827

`record[root(A295985(n+1), A092107(n))]`
-/

namespace A295979.P10413866347481858827
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295985 (n + 1) : ℝ) ^ (1 / (A092107 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295979.P10413866347481858827

/-! ## A295979.P1688314780091832417

`record[root(A295985(n+1), 2-A143844(n))]`
-/

namespace A295979.P1688314780091832417
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295985 (n + 1) : ℝ) ^ (1 / (2 - A143844 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295979.P1688314780091832417

/-!
# A295980: Number of n X 3 0..1 arrays with each 1 adjacent to 2 or 3 king-move neighboring 1s.

The programs for A295980, there is no canonical definition to state claims against.
-/

/-! ## A295980.P2113999608010673789

`A295985(∑[n+2]+4)`
-/

namespace A295980.P2113999608010673789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295980.P2113999608010673789

/-! ## A295980.P5283378069680402528

`record[root(A295985(n+1), A143844(n)-3)]`
-/

namespace A295980.P5283378069680402528
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295985 (n + 1) : ℝ) ^ (1 / (A143844 n - 3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295980.P5283378069680402528

/-! ## A295980.P11992848461324954405

`A295985(A167614(n+1))+A243832(n)`
-/

namespace A295980.P11992848461324954405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A167614 (n + 1)).toNat + A243832 n

end

end A295980.P11992848461324954405

/-! ## A295980.P3670418690036151123

`A295985(A167614(n+1))+A243836(n)`
-/

namespace A295980.P3670418690036151123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A167614 (n + 1)).toNat + A243836 n

end

end A295980.P3670418690036151123

/-! ## A295980.P14523074135347116684

`A295985(A167614(n+1))%A032330(n+2)`
-/

namespace A295980.P14523074135347116684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295985 (A167614 (n + 1)).toNat) (A032330 (n + 2))

end

end A295980.P14523074135347116684

/-!
# A295981: Number of nX4 0..1 arrays with each 1 adjacent to 2 or 3 king-move neighboring 1s.

The programs for A295981, there is no canonical definition to state claims against.
-/

/-! ## A295981.P309236393264562161

`A295985(A374004(n+1))`
-/

namespace A295981.P309236393264562161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A374004 (n + 1)).toNat

end

end A295981.P309236393264562161

/-! ## A295981.P11433184467149970160

`A295985(A052905(n)+9)`
-/

namespace A295981.P11433184467149970160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A052905 n + 9).toNat

end

end A295981.P11433184467149970160

/-! ## A295981.P13132879615647427483

`A295985(A055999(n)+10)`
-/

namespace A295981.P13132879615647427483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A055999 n + 10).toNat

end

end A295981.P13132879615647427483

/-! ## A295981.P16708892416810401185

`A295985(A167614(n+2)+1)`
-/

namespace A295981.P16708892416810401185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A167614 (n + 2) + 1).toNat

end

end A295981.P16708892416810401185

/-! ## A295981.P11399090520621584371

`A295985(A167487(n+2)-3)`
-/

namespace A295981.P11399090520621584371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A167487 (n + 2) - 3).toNat

end

end A295981.P11399090520621584371

/-!
# A295982: Number of nX5 0..1 arrays with each 1 adjacent to 2 or 3 king-move neighboring 1s.

The programs for A295982, there is no canonical definition to state claims against.
-/

/-! ## A295982.P8538285993410671433

`A295985(A374005(n+1))`
-/

namespace A295982.P8538285993410671433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A374005 (n + 1)).toNat

end

end A295982.P8538285993410671433

/-! ## A295982.P2814415473265905017

`A295985(A155212(n)+13)`
-/

namespace A295982.P2814415473265905017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A155212 n + 13).toNat

end

end A295982.P2814415473265905017

/-! ## A295982.P12282954607046029385

`A295985(eq[7, A066657(n)])`
-/

namespace A295982.P12282954607046029385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295982.P12282954607046029385

/-! ## A295982.P491911350907580661

`A295985(A046691(n+3))`
-/

namespace A295982.P491911350907580661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A046691 (n + 3)).toNat

end

end A295982.P491911350907580661

/-! ## A295982.P8612618514342527387

`A295985(eq[4, A193592(n)])`
-/

namespace A295982.P8612618514342527387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295982.P8612618514342527387

/-!
# A295983: Number of n X 6 0..1 arrays with each 1 adjacent to 2 or 3 king-move neighboring 1's.

The programs for A295983, there is no canonical definition to state claims against.
-/

/-! ## A295983.P10586361470292403024

`A295985(A374007(n+1))`
-/

namespace A295983.P10586361470292403024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A374007 (n + 1)).toNat

end

end A295983.P10586361470292403024

/-! ## A295983.P15703711193123273906

`A295985(eq[7, A131818(n+1)])`
-/

namespace A295983.P15703711193123273906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295983.P15703711193123273906

/-! ## A295983.P17539489497688381136

`A295985(eq[3, A219347(n)])`
-/

namespace A295983.P17539489497688381136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295983.P17539489497688381136

/-! ## A295983.P8224604158745805350

`A295985(eq[5, A193592(n)])`
-/

namespace A295983.P8224604158745805350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295983.P8224604158745805350

/-! ## A295983.P3198484886045502442

`A295985(eq[8, A258709(n)])`
-/

namespace A295983.P3198484886045502442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295983.P3198484886045502442

/-!
# A295984: Number of nX7 0..1 arrays with each 1 adjacent to 2 or 3 king-move neighboring 1s.

The programs for A295984, there is no canonical definition to state claims against.
-/

/-! ## A295984.P10528309062544589426

`A295985(A374008(n+1))`
-/

namespace A295984.P10528309062544589426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A374008 (n + 1)).toNat

end

end A295984.P10528309062544589426

/-! ## A295984.P10905221064770506141

`A295985(A167487(n+5))`
-/

namespace A295984.P10905221064770506141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A167487 (n + 5)).toNat

end

end A295984.P10905221064770506141

/-! ## A295984.P18219427246562310680

`A295985(A167499(n+5)+2)`
-/

namespace A295984.P18219427246562310680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (A167499 (n + 5) + 2).toNat

end

end A295984.P18219427246562310680

/-! ## A295984.P10248712158259587154

`A295985(eq[8, A131818(n+1)])`
-/

namespace A295984.P10248712158259587154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295984.P10248712158259587154

/-! ## A295984.P18109951986409123407

`A295985(eq[4, A219347(n)])`
-/

namespace A295984.P18109951986409123407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295984.P18109951986409123407

/-!
# A295985: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 2 or 3 king-move neighboring 1s.

The programs for A295985, there is no canonical definition to state claims against.
-/

/-! ## A295985.P2707921350931024154

`A107463(A109128(n)^A117894(n))`
-/

namespace A295985.P2707921350931024154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.roundAway ((A109128 n : ℚ) ^ (A117894 n : ℤ))).toNat

end

end A295985.P2707921350931024154

/-!
# A295986: Number of maximal cliques in the n-halved cube graph.

The programs for A295986, the canonical program `A295986.P1440546836631591148` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295986 has offset 1).

The definition of A295986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295986.P1440546836631591148

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=16, a(4)=56, a(5)=192, a(6)=624`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A295986

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P1440546836631591148.Spec : Prop :=
  ∀ n, P1440546836631591148.a n = A295986 (n + 1)

theorem P1440546836631591148.correct : P1440546836631591148.Spec := by
  intro n
  simp only [A295986, Nat.add_sub_cancel]

end A295986

/-! ## A295986.P14857254712736526050

`A228405((∑[4*(n+1)]-2)^floor(n/3))`
-/

namespace A295986.P14857254712736526050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))).toNat

end

end A295986.P14857254712736526050

namespace A295986

/-- `A228405((∑[4*(n+1)]-2)^floor(n/3))` -/
def P14857254712736526050.Spec : Prop :=
  ∀ n, P14857254712736526050.a n = A295986 (n + 1)

end A295986

/-!
# A295988: Numbers k such that (10^k)/2 - 1 is prime.

The programs for A295988, there is no canonical definition to state claims against.
-/

/-! ## A295988.P17639056054719661153

`1+A056712(n+1)`
-/

namespace A295988.P17639056054719661153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A056712 (n + 1)

end

end A295988.P17639056054719661153

/-! ## A295988.P5211297187569113297

`A020725(A056712(n+1))`
-/

namespace A295988.P5211297187569113297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056712 (n + 1)).toNat

end

end A295988.P5211297187569113297

/-! ## A295988.P1681298184700710823

`A111439(or(A080607(2*n+3), A349303(n)))`
-/

namespace A295988.P1681298184700710823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (Int.lor (A080607 (2 * n + 3)) (A349303 n)).toNat

end

end A295988.P1681298184700710823

/-!
# A295989: Irregular triangle T(n, k), read by rows, n >= 0 and 0 <= k < A001316(n): T(n, k) is the (k+1)-th nonnegative number m such that n AND m = m (where AND denotes the bitwise AND operator).

The programs for A295989, the canonical program `A295989.P16301422566830817347` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295989 has offset 0).

The definition of A295989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295989.P16301422566830817347

`A080099(A268231(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A295989

/-- `A080099(A268231(n+1))` -/
def P16301422566830817347.Spec : Prop :=
  ∀ n, P16301422566830817347.a n = A295989 n

theorem P16301422566830817347.correct : P16301422566830817347.Spec := by
  intro n
  simp only [A295989]

end A295989

/-! ## A295989.P14224460815813774279

`A352910(n+1)+A328732(n)`
-/

namespace A295989.P14224460815813774279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352910 (n + 1) + A328732 n

end

end A295989.P14224460815813774279

namespace A295989

/-- `A352910(n+1)+A328732(n)` -/
def P14224460815813774279.Spec : Prop :=
  ∀ n, P14224460815813774279.a n = A295989 n

end A295989

/-! ## A295989.P16654639585045298987

`A289813(A353660(n))`
-/

namespace A295989.P16654639585045298987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A353660 n).toNat

end

end A295989.P16654639585045298987

namespace A295989

/-- `A289813(A353660(n))` -/
def P16654639585045298987.Spec : Prop :=
  ∀ n, P16654639585045298987.a n = A295989 n

end A295989

/-! ## A295989.P5281623181142241650

`A289814(A368229(n))`
-/

namespace A295989.P5281623181142241650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A368229 n).toNat

end

end A295989.P5281623181142241650

namespace A295989

/-- `A289814(A368229(n))` -/
def P5281623181142241650.Spec : Prop :=
  ∀ n, P5281623181142241650.a n = A295989 n

end A295989

/-! ## A295989.P9806485585078052866

`A289813(A004488(A368229(A004488(A004488(n)))))`
-/

namespace A295989.P9806485585078052866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A004488 (A368229 (A004488 (A004488 n).toNat).toNat).toNat).toNat

end

end A295989.P9806485585078052866

namespace A295989

/-- `A289813(A004488(A368229(A004488(A004488(n)))))` -/
def P9806485585078052866.Spec : Prop :=
  ∀ n, P9806485585078052866.a n = A295989 n

end A295989

/-! ## A295989.P9761833686546011374

`A002262(eq[0, A004198(n)])`
-/

namespace A295989.P9761833686546011374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295989.P9761833686546011374

namespace A295989

/-- `A002262(eq[0, A004198(n)])` -/
def P9761833686546011374.Spec : Prop :=
  ∀ n, P9761833686546011374.a n = A295989 n

end A295989

/-! ## A295989.P6390333025029183695

`A080099(eq[0, A004198(n)])`
-/

namespace A295989.P6390333025029183695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295989.P6390333025029183695

namespace A295989

/-- `A080099(eq[0, A004198(n)])` -/
def P6390333025029183695.Spec : Prop :=
  ∀ n, P6390333025029183695.a n = A295989 n

end A295989

/-! ## A295989.P12614546288579663251

`A002262(lt[0, A047999(n)])`
-/

namespace A295989.P12614546288579663251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A295989.P12614546288579663251

namespace A295989

/-- `A002262(lt[0, A047999(n)])` -/
def P12614546288579663251.Spec : Prop :=
  ∀ n, P12614546288579663251.a n = A295989 n

end A295989

/-! ## A295989.P4520720866652011721

`A002262(eq[1, A047999(n)])`
-/

namespace A295989.P4520720866652011721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295989.P4520720866652011721

namespace A295989

/-- `A002262(eq[1, A047999(n)])` -/
def P4520720866652011721.Spec : Prop :=
  ∀ n, P4520720866652011721.a n = A295989 n

end A295989

/-! ## A295989.P15446518808569432215

`A002262(eq[1, A007318(n)%2])`
-/

namespace A295989.P15446518808569432215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295989.P15446518808569432215

namespace A295989

/-- `A002262(eq[1, A007318(n)%2])` -/
def P15446518808569432215.Spec : Prop :=
  ∀ n, P15446518808569432215.a n = A295989 n

end A295989

/-! ## A295989.P3303080766891029941

`A002262(lt[0, A093564(n)%2])`
-/

namespace A295989.P3303080766891029941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093564 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A295989.P3303080766891029941

namespace A295989

/-- `A002262(lt[0, A093564(n)%2])` -/
def P3303080766891029941.Spec : Prop :=
  ∀ n, P3303080766891029941.a n = A295989 n

end A295989

/-! ## A295989.P13057566169321965409

`A002262(eq[A003056(n), A003987(n)])`
-/

namespace A295989.P13057566169321965409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295989.P13057566169321965409

namespace A295989

/-- `A002262(eq[A003056(n), A003987(n)])` -/
def P13057566169321965409.Spec : Prop :=
  ∀ n, P13057566169321965409.a n = A295989 n

end A295989

/-! ## A295989.P2243699106076870954

`A002262(eq[A003986(n), A003987(n)])`
-/

namespace A295989.P2243699106076870954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295989.P2243699106076870954

namespace A295989

/-- `A002262(eq[A003986(n), A003987(n)])` -/
def P2243699106076870954.Spec : Prop :=
  ∀ n, P2243699106076870954.a n = A295989 n

end A295989

/-! ## A295989.P6295420666513274884

`A002262(eq[A002262(n), A080099(n)])`
-/

namespace A295989.P6295420666513274884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295989.P6295420666513274884

namespace A295989

/-- `A002262(eq[A002262(n), A080099(n)])` -/
def P6295420666513274884.Spec : Prop :=
  ∀ n, P6295420666513274884.a n = A295989 n

end A295989

/-! ## A295989.P9001815852025397125

`A002262(lt[A002262(n), A080099(n)+1])`
-/

namespace A295989.P9001815852025397125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A295989.P9001815852025397125

namespace A295989

/-- `A002262(lt[A002262(n), A080099(n)+1])` -/
def P9001815852025397125.Spec : Prop :=
  ∀ n, P9001815852025397125.a n = A295989 n

end A295989

/-! ## A295989.P9940421197452574729

`A002262(lt[A003056(n), A280172(n+1)])`
-/

namespace A295989.P9940421197452574729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A295989.P9940421197452574729

namespace A295989

/-- `A002262(lt[A003056(n), A280172(n+1)])` -/
def P9940421197452574729.Spec : Prop :=
  ∀ n, P9940421197452574729.a n = A295989 n

end A295989

/-! ## A295989.P17846163863075823612

`A002262(lt[A002262(n)-1, A080099(n)])`
-/

namespace A295989.P17846163863075823612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A295989.P17846163863075823612

namespace A295989

/-- `A002262(lt[A002262(n)-1, A080099(n)])` -/
def P17846163863075823612.Spec : Prop :=
  ∀ n, P17846163863075823612.a n = A295989 n

end A295989

/-! ## A295989.P17840066489905927165

`A002262(eq[n, A286098(n)+A002262(n)])`
-/

namespace A295989.P17840066489905927165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n + A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295989.P17840066489905927165

namespace A295989

/-- `A002262(eq[n, A286098(n)+A002262(n)])` -/
def P17840066489905927165.Spec : Prop :=
  ∀ n, P17840066489905927165.a n = A295989 n

end A295989

/-! ## A295989.P16997742851470581077

`A002262(eq[A025581(n)+n, A286109(n)])`
-/

namespace A295989.P16997742851470581077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295989.P16997742851470581077

namespace A295989

/-- `A002262(eq[A025581(n)+n, A286109(n)])` -/
def P16997742851470581077.Spec : Prop :=
  ∀ n, P16997742851470581077.a n = A295989 n

end A295989

/-! ## A295989.P1904795126499020538

`A002262(eq[n-A002262(n), A286098(n)])`
-/

namespace A295989.P1904795126499020538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295989.P1904795126499020538

namespace A295989

/-- `A002262(eq[n-A002262(n), A286098(n)])` -/
def P1904795126499020538.Spec : Prop :=
  ∀ n, P1904795126499020538.a n = A295989 n

end A295989

/-!
# A295990: Numbers k such that there are precisely 4 groups of orders k and k + 1.

The programs for A295990, there is no canonical definition to state claims against.
-/

/-! ## A295990.P8145141654153108055

`∩[A054396(n+1)-1, A054396(n+1)]`
-/

namespace A295990.P8145141654153108055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295990.P8145141654153108055

/-! ## A295990.P12155500016279587471

`∩[A054396(n+1), A023443(A054396(n+1))]`
-/

namespace A295990.P12155500016279587471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054396 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295990.P12155500016279587471

/-!
# A295991: Numbers n such that there are precisely 5 groups of orders n and n + 1.

The programs for A295991, there is no canonical definition to state claims against.
-/

/-! ## A295991.P14981270069837251281

`∩[A054397(n+1)-1, A054397(n+1)]`
-/

namespace A295991.P14981270069837251281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295991.P14981270069837251281

/-! ## A295991.P16473919696767721300

`∩[A054397(n+1), A023443(A054397(n+1))]`
-/

namespace A295991.P16473919696767721300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054397 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295991.P16473919696767721300

/-!
# A295994: Numbers n such that there are precisely 11 groups of orders n and n + 1.

The programs for A295994, there is no canonical definition to state claims against.
-/

/-! ## A295994.P12593309827746963565

`∩[A249554(n+1)-1, A249554(n+1)]`
-/

namespace A295994.P12593309827746963565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249554 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295994.P12593309827746963565

/-!
# A295995: Numbers n such that there are precisely 15 groups of orders n and n + 1.

The programs for A295995, there is no canonical definition to state claims against.
-/

/-! ## A295995.P4260727986389829259

`∩[A294156(n+1)-1, A294156(n+1)]`
-/

namespace A295995.P4260727986389829259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294156 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295995.P4260727986389829259

/-!
# A295996: One quarter of number of Gaussian primes whose norm is 4*n+1 or less.

The programs for A295996, the canonical program `A295996.P15464028350351248957` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295996 has offset 0).

The definition of A295996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295996.P3933587120838683508

`∑[A055029(4*n+1)+char[1]]`
-/

namespace A295996.P3933587120838683508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295996.P3933587120838683508

namespace A295996

/-- `∑[A055029(4*n+1)+char[1]]` -/
def P3933587120838683508.Spec : Prop :=
  ∀ n, P3933587120838683508.a n = A295996 n

end A295996

/-! ## A295996.P15464028350351248957

`A057427(n)+∑[A055029(4*n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A295996

/-- `A057427(n)+∑[A055029(4*n+1)]` -/
def P15464028350351248957.Spec : Prop :=
  ∀ n, P15464028350351248957.a n = A295996 n

theorem P15464028350351248957.correct : P15464028350351248957.Spec := by
  intro n
  simp only [A295996]

end A295996

/-! ## A295996.P18201542623331838623

`∑[A055029(4*n+1)]-A057428(n)`
-/

namespace A295996.P18201542623331838623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057428 n

end

end A295996.P18201542623331838623

namespace A295996

/-- `∑[A055029(4*n+1)]-A057428(n)` -/
def P18201542623331838623.Spec : Prop :=
  ∀ n, P18201542623331838623.a n = A295996 n

theorem P18201542623331838623.correct : P18201542623331838623.Spec := by
  intro n
  simp only [A295996, Nat.add_sub_cancel, A295996.P18201542623331838623.f1, A295996.P18201542623331838623.a, A295996.P15464028350351248957.f1, A295996.P15464028350351248957.a, A055029, A055029.P8500131277876422925.f1, A055029.P8500131277876422925.f2, A055029.P8500131277876422925.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A055025, A055025.P1840419419277559172.f1, A055025.P1840419419277559172.f2, A055025.P1840419419277559172.a, A002313, A002313.P17357540179589081173.f1, A002313.P17357540179589081173.a, A087691, A087691.P847001691907876156.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295996

/-! ## A295996.P6357067835586967613

`∑[A055029(4*n+1)]+1-A000007(n)`
-/

namespace A295996.P6357067835586967613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000007 n)

end

end A295996.P6357067835586967613

namespace A295996

/-- `∑[A055029(4*n+1)]+1-A000007(n)` -/
def P6357067835586967613.Spec : Prop :=
  ∀ n, P6357067835586967613.a n = A295996 n

theorem P6357067835586967613.correct : P6357067835586967613.Spec := by
  intro n
  simp only [A295996, Nat.add_sub_cancel, A295996.P6357067835586967613.f1, A295996.P6357067835586967613.a, A295996.P15464028350351248957.f1, A295996.P15464028350351248957.a, A000007, A000007.P6599383543502402472.a, A055029, A055029.P8500131277876422925.f1, A055029.P8500131277876422925.f2, A055029.P8500131277876422925.a, A057427, A057427.P3058147525557661423.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, A055025, A055025.P1840419419277559172.f1, A055025.P1840419419277559172.f2, A055025.P1840419419277559172.a, A002313, A002313.P17357540179589081173.f1, A002313.P17357540179589081173.a, A087691, A087691.P847001691907876156.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295996

/-! ## A295996.P13546232221364212304

`A088433(A006530(n+1))+∑[A055029(4*n+1)]`
-/

namespace A295996.P13546232221364212304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088433 (A006530 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295996.P13546232221364212304

namespace A295996

/-- `A088433(A006530(n+1))+∑[A055029(4*n+1)]` -/
def P13546232221364212304.Spec : Prop :=
  ∀ n, P13546232221364212304.a n = A295996 n

end A295996

/-! ## A295996.P16419294514334299946

`∑[A055029(4*n+1)]+A124766(n)-A124761(n)`
-/

namespace A295996.P16419294514334299946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A124766 n - A124761 n)

end

end A295996.P16419294514334299946

namespace A295996

/-- `∑[A055029(4*n+1)]+A124766(n)-A124761(n)` -/
def P16419294514334299946.Spec : Prop :=
  ∀ n, P16419294514334299946.a n = A295996 n

end A295996

/-!
# A295998: Solution of the complementary equation a(n) = 2*a(n-2) + b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295998, there is no canonical definition to state claims against.
-/

/-! ## A295998.P16407561356583412068

`A325768(3*n+1)+A266672(A181769(n))`
-/

namespace A295998.P16407561356583412068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325768 (3 * n + 1) + A266672 (A181769 n).toNat

end

end A295998.P16407561356583412068

