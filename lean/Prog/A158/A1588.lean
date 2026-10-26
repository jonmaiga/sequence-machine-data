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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A158801: a(n) = A145444(n) - A145501(n).

The programs for A158801, there is no canonical definition to state claims against.
-/

/-! ## A158801.P12518344473332603991

`A145444(n+1)-A145501(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158801.P12518344473332603991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) - A145501 (n + 1)

end

end A158801.P12518344473332603991

/-! ## A158801.P7116653322845776950

`A158360(n+1)+A158327(n+1)`
-/

namespace A158801.P7116653322845776950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158360 (n + 1) + A158327 (n + 1)

end

end A158801.P7116653322845776950

/-! ## A158801.P18389534059552732231

`A158360(n+1)-A158360(A259445(n+1))`
-/

namespace A158801.P18389534059552732231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158360 (n + 1) - A158360 (A259445 (n + 1)).toNat

end

end A158801.P18389534059552732231

/-! ## A158801.P3358084407001822526

`A145444(A000027(n+1))%A145501(n+1)`
-/

namespace A158801.P3358084407001822526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145444 (A000027 (n + 1)).toNat) (A145501 (n + 1))

end

end A158801.P3358084407001822526

/-! ## A158801.P15429263507812641078

`A186421(A145444(n+1)%A145501(n+1))`
-/

namespace A158801.P15429263507812641078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (Int.tmod (A145444 (n + 1)) (A145501 (n + 1))).toNat

end

end A158801.P15429263507812641078

/-! ## A158801.P13903230061223537897

`A145444(n+1)+A158360(n+1)-A145511(n+1)`
-/

namespace A158801.P13903230061223537897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) + (A158360 (n + 1) - A145511 (n + 1))

end

end A158801.P13903230061223537897

/-! ## A158801.P12140865647653569372

`A145511(n+1)+A158327(n+1)-A145501(n+1)`
-/

namespace A158801.P12140865647653569372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (n + 1) + (A158327 (n + 1) - A145501 (n + 1))

end

end A158801.P12140865647653569372

/-!
# A158803: Numbers k such that k^2 == 2 (mod 41).

The programs for A158803, the canonical program `A158803.P1606808208767845752` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158803 has offset 1).

The definition of A158803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158803.P6736026665246922713

`1/4*(41+27*(-1)^n+82*n)`
-/

namespace A158803.P6736026665246922713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (41 + 27 * (-1) ^ n + (82 * n : ℤ) : ℚ)

end

end A158803.P6736026665246922713

namespace A158803

/-- `1/4*(41+27*(-1)^n+82*n)` -/
def P6736026665246922713.Spec : Prop :=
  ∀ n, P6736026665246922713.a n = (A158803 (n + 1) : ℚ)

theorem P6736026665246922713.correct : P6736026665246922713.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A158803, Nat.add_sub_cancel, A158803.P6736026665246922713.a, A158803.P1606808208767845752.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A158803, Nat.add_sub_cancel, A158803.P6736026665246922713.a, A158803.P1606808208767845752.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A158803

/-! ## A158803.P1606808208767845752

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=17, a(1)=24, a(2)=58`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158803

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1606808208767845752.Spec : Prop :=
  ∀ n, P1606808208767845752.a n = A158803 (n + 1)

theorem P1606808208767845752.correct : P1606808208767845752.Spec := by
  intro n
  simp only [A158803, Nat.add_sub_cancel]

end A158803

/-! ## A158803.P7489306378854450485

`a(n-2)+41` with `a(0)=17, a(1)=24`
-/

namespace A158803.P7489306378854450485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17, 24] fun n a =>
  a (n - 2) + 41

end

end A158803.P7489306378854450485

namespace A158803

/-- `a(n-2)+41` -/
def P7489306378854450485.Spec : Prop :=
  ∀ n, (P7489306378854450485.a n : ℤ) = A158803 (n + 1)

end A158803

/-! ## A158803.P10259148078524476948

`∑[41-a(n-1)]` with `a(0)=17, a(1)=7`
-/

namespace A158803.P10259148078524476948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17, 7] fun n f1 =>
  41 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158803.P10259148078524476948

namespace A158803

/-- `∑[41-a(n-1)]` -/
def P10259148078524476948.Spec : Prop :=
  ∀ n, P10259148078524476948.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P10930551662213408842

`41*n-a(n-1)` with `a(0)=17`
-/

namespace A158803.P10930551662213408842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  (41 * n : ℤ) - a (n - 1)

end

end A158803.P10930551662213408842

namespace A158803

/-- `41*n-a(n-1)` -/
def P10930551662213408842.Spec : Prop :=
  ∀ n, P10930551662213408842.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P13732513678695433557

`∑[A040309(n)-2]+1`
-/

namespace A158803.P13732513678695433557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040309 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A158803.P13732513678695433557

namespace A158803

/-- `∑[A040309(n)-2]+1` -/
def P13732513678695433557.Spec : Prop :=
  ∀ n, P13732513678695433557.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P13796966785782544001

`A112651(n+1)+∑[6*gcd(2, n)²]-7`
-/

namespace A158803.P13796966785782544001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 7)

end

end A158803.P13796966785782544001

namespace A158803

/-- `A112651(n+1)+∑[6*gcd(2, n)²]-7` -/
def P13796966785782544001.Spec : Prop :=
  ∀ n, P13796966785782544001.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P16850853254808758990

`A155096(n+1)+A092242(n+1)`
-/

namespace A158803.P16850853254808758990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (n + 1) + A092242 (n + 1)

end

end A158803.P16850853254808758990

namespace A158803

/-- `A155096(n+1)+A092242(n+1)` -/
def P16850853254808758990.Spec : Prop :=
  ∀ n, P16850853254808758990.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P18056538198011732400

`A267984(n+1)+A112651(n+1)`
-/

namespace A158803.P18056538198011732400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) + A112651 (n + 1)

end

end A158803.P18056538198011732400

namespace A158803

/-- `A267984(n+1)+A112651(n+1)` -/
def P18056538198011732400.Spec : Prop :=
  ∀ n, P18056538198011732400.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P1706844361432294095

`A272100(n+1)+A168418(n+1)`
-/

namespace A158803.P1706844361432294095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + A168418 (n + 1)

end

end A158803.P1706844361432294095

namespace A158803

/-- `A272100(n+1)+A168418(n+1)` -/
def P1706844361432294095.Spec : Prop :=
  ∀ n, P1706844361432294095.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P2031742133812650007

`A281445(n+1)+A248474(n+1)`
-/

namespace A158803.P2031742133812650007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281445 (n + 1) + A248474 (n + 1)

end

end A158803.P2031742133812650007

namespace A158803

/-- `A281445(n+1)+A248474(n+1)` -/
def P2031742133812650007.Spec : Prop :=
  ∀ n, P2031742133812650007.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P15914014997587205544

`∑[A040302(2*n)]`
-/

namespace A158803.P15914014997587205544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040302 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158803.P15914014997587205544

namespace A158803

/-- `∑[A040302(2*n)]` -/
def P15914014997587205544.Spec : Prop :=
  ∀ n, P15914014997587205544.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P5082781058305210088

`A028242(n)+2*A008586(A047221(n+1))`
-/

namespace A158803.P5082781058305210088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + 2 * A008586 (A047221 (n + 1)).toNat

end

end A158803.P5082781058305210088

namespace A158803

/-- `A028242(n)+2*A008586(A047221(n+1))` -/
def P5082781058305210088.Spec : Prop :=
  ∀ n, P5082781058305210088.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P14433315367016412202

`∑[A040278(3*n)]`
-/

namespace A158803.P14433315367016412202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040278 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158803.P14433315367016412202

namespace A158803

/-- `∑[A040278(3*n)]` -/
def P14433315367016412202.Spec : Prop :=
  ∀ n, P14433315367016412202.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P15790080969141445354

`ceil((A155098(xor(1, 3*n)+2)-1)/3)`
-/

namespace A158803.P15790080969141445354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155098 (Nat.xor 1 (3 * n) + 2) - 1 : ℚ) / 3⌉

end

end A158803.P15790080969141445354

namespace A158803

/-- `ceil((A155098(xor(1, 3*n)+2)-1)/3)` -/
def P15790080969141445354.Spec : Prop :=
  ∀ n, P15790080969141445354.a n = A158803 (n + 1)

end A158803

/-! ## A158803.P13467241499889042430

`eq[A070463(n), A155124(n)]`
-/

namespace A158803.P13467241499889042430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158803.P13467241499889042430

namespace A158803

/-- `eq[A070463(n), A155124(n)]` -/
def P13467241499889042430.Spec : Prop :=
  ∀ n, (P13467241499889042430.a n : ℤ) = A158803 (n + 1)

end A158803

/-! ## A158803.P16819416550834309767

`eq[A070664(n), A329507(n)]`
-/

namespace A158803.P16819416550834309767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158803.P16819416550834309767

namespace A158803

/-- `eq[A070664(n), A329507(n)]` -/
def P16819416550834309767.Spec : Prop :=
  ∀ n, (P16819416550834309767.a n : ℤ) = A158803 (n + 1)

end A158803

/-! ## A158803.P17785202647236977404

`eq[A070664(n), A329511(n)]`
-/

namespace A158803.P17785202647236977404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158803.P17785202647236977404

namespace A158803

/-- `eq[A070664(n), A329511(n)]` -/
def P17785202647236977404.Spec : Prop :=
  ∀ n, (P17785202647236977404.a n : ℤ) = A158803 (n + 1)

end A158803

/-! ## A158803.P3533815114266053451

`eq[A070664(n), A329513(n)]`
-/

namespace A158803.P3533815114266053451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158803.P3533815114266053451

namespace A158803

/-- `eq[A070664(n), A329513(n)]` -/
def P3533815114266053451.Spec : Prop :=
  ∀ n, (P3533815114266053451.a n : ℤ) = A158803 (n + 1)

end A158803

/-! ## A158803.P5028525789745118460

`eq[A070463(n), A072751(n+1)]`
-/

namespace A158803.P5028525789745118460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158803.P5028525789745118460

namespace A158803

/-- `eq[A070463(n), A072751(n+1)]` -/
def P5028525789745118460.Spec : Prop :=
  ∀ n, (P5028525789745118460.a n : ℤ) = A158803 (n + 1)

end A158803

/-!
# A158804: Composite integers that are a multiple of the sum of their distinct prime factors.

The programs for A158804, there is no canonical definition to state claims against.
-/

/-! ## A158804.P3153840953980189435

`filter[A089352(n+1), A005171(#)]`
-/

namespace A158804.P3153840953980189435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A158804.P3153840953980189435

/-! ## A158804.P18157556115282464742

`filter[A089352(n+1), A066247(#)]`
-/

namespace A158804.P18157556115282464742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A158804.P18157556115282464742

/-! ## A158804.P2258289356866258812

`∩[A048098(n+1), A089352(n+1)]`
-/

namespace A158804.P2258289356866258812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158804.P2258289356866258812

/-! ## A158804.P16160835966774805461

`∩[A089352(n+1), A387941(n+1)]`
-/

namespace A158804.P16160835966774805461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158804.P16160835966774805461

/-! ## A158804.P371795701079360140

`∩[A002808(n+1), A089352(n+1)]`
-/

namespace A158804.P371795701079360140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158804.P371795701079360140

/-! ## A158804.P3986149065098130858

`∩[A018252(n+1), A089352(n+1)]`
-/

namespace A158804.P3986149065098130858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158804.P3986149065098130858

/-! ## A158804.P3977209276910719588

`∩[A089352(n+1), A141468(n+1)]`
-/

namespace A158804.P3977209276910719588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158804.P3977209276910719588

/-! ## A158804.P14458761106907987469

`∩[A089352(n+1), A289553(n+1)]`
-/

namespace A158804.P14458761106907987469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158804.P14458761106907987469

/-! ## A158804.P3137860438542981625

`∩[A089352(n+1), A145190(n+1)]`
-/

namespace A158804.P3137860438542981625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158804.P3137860438542981625

/-! ## A158804.P13860124572669246654

`eq[n+1, lcm(n+1, A105221(n+1))]+1`
-/

namespace A158804.P13860124572669246654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A105221 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A158804.P13860124572669246654

/-! ## A158804.P2983155618607921065

`eq[1-∑{p}[n+1, C(#, n)]+n, A161656(n+1)]+1`
-/

namespace A158804.P2983155618607921065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A158804.P2983155618607921065

/-! ## A158804.P3855757645674918553

`eq[A099635(n+1), A105221(n+1)]+1`
-/

namespace A158804.P3855757645674918553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A158804.P3855757645674918553

/-!
# A158806: Numbers n such that 30*n + 19 is prime.

The programs for A158806, the canonical program `A158806.P17410747648070653925` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158806 has offset 1).

The definition of A158806 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132234, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158806.P17410747648070653925

`floor(A132234(n+1)/30)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158806

/-- `floor(A132234(n+1)/30)` -/
def P17410747648070653925.Spec : Prop :=
  ∀ n, P17410747648070653925.a n = A158806 (n + 1)

theorem P17410747648070653925.correct : P17410747648070653925.Spec := by
  intro n
  simp only [A158806, Nat.add_sub_cancel]

end A158806

/-! ## A158806.P3001953682394217780

`eq[1, A001222(30*n+19)]`
-/

namespace A158806.P3001953682394217780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P3001953682394217780

namespace A158806

/-- `eq[1, A001222(30*n+19)]` -/
def P3001953682394217780.Spec : Prop :=
  ∀ n, (P3001953682394217780.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P13739842184521851139

`eq[2, A000005(30*n+19)]`
-/

namespace A158806.P13739842184521851139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P13739842184521851139

namespace A158806

/-- `eq[2, A000005(30*n+19)]` -/
def P13739842184521851139.Spec : Prop :=
  ∀ n, (P13739842184521851139.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P4174406531153148374

`lt[A001222(3*(10*n+4)+7), 2]`
-/

namespace A158806.P4174406531153148374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (10 * n + 4) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158806.P4174406531153148374

namespace A158806

/-- `lt[A001222(3*(10*n+4)+7), 2]` -/
def P4174406531153148374.Spec : Prop :=
  ∀ n, (P4174406531153148374.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P13334373459540414964

`lt[15*n+14, A006530(30*n+19)]`
-/

namespace A158806.P13334373459540414964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n + 14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (30 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158806.P13334373459540414964

namespace A158806

/-- `lt[15*n+14, A006530(30*n+19)]` -/
def P13334373459540414964.Spec : Prop :=
  ∀ n, (P13334373459540414964.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P9339372977334285789

`eq[30*n+19, A020639(30*n+19)]`
-/

namespace A158806.P9339372977334285789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (30 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P9339372977334285789

namespace A158806

/-- `eq[30*n+19, A020639(30*n+19)]` -/
def P9339372977334285789.Spec : Prop :=
  ∀ n, (P9339372977334285789.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P11391759654153723120

`eq[1, A075743(A017341(n))]`
-/

namespace A158806.P11391759654153723120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P11391759654153723120

namespace A158806

/-- `eq[1, A075743(A017341(n))]` -/
def P11391759654153723120.Spec : Prop :=
  ∀ n, (P11391759654153723120.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P14226439179592498514

`eq[1, A075743(A017329(n)+1)]`
-/

namespace A158806.P14226439179592498514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017329 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P14226439179592498514

namespace A158806

/-- `eq[1, A075743(A017329(n)+1)]` -/
def P14226439179592498514.Spec : Prop :=
  ∀ n, (P14226439179592498514.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P12914929893112069182

`eq[1, A075743(A017317(n)+2)]`
-/

namespace A158806.P12914929893112069182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017317 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P12914929893112069182

namespace A158806

/-- `eq[1, A075743(A017317(n)+2)]` -/
def P12914929893112069182.Spec : Prop :=
  ∀ n, (P12914929893112069182.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P6981762439765563189

`eq[1, A033273(A128468(n)+2)]`
-/

namespace A158806.P6981762439765563189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A128468 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P6981762439765563189

namespace A158806

/-- `eq[1, A033273(A128468(n)+2)]` -/
def P6981762439765563189.Spec : Prop :=
  ∀ n, (P6981762439765563189.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P1950163706317705151

`eq[1, A075743(2*A016885(n))]`
-/

namespace A158806.P1950163706317705151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P1950163706317705151

namespace A158806

/-- `eq[1, A075743(2*A016885(n))]` -/
def P1950163706317705151.Spec : Prop :=
  ∀ n, (P1950163706317705151.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P5436415656079362273

`lt[A008590(n), A020639(A017377(3*n+1))]`
-/

namespace A158806.P5436415656079362273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017377 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158806.P5436415656079362273

namespace A158806

/-- `lt[A008590(n), A020639(A017377(3*n+1))]` -/
def P5436415656079362273.Spec : Prop :=
  ∀ n, (P5436415656079362273.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P4662153855677909051

`lt[A017377(n), A020639(A017377(3*n+1))]`
-/

namespace A158806.P4662153855677909051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017377 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158806.P4662153855677909051

namespace A158806

/-- `lt[A017377(n), A020639(A017377(3*n+1))]` -/
def P4662153855677909051.Spec : Prop :=
  ∀ n, (P4662153855677909051.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P14751047654209637897

`eq[2, A116933(A017329(n))]`
-/

namespace A158806.P14751047654209637897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A017329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P14751047654209637897

namespace A158806

/-- `eq[2, A116933(A017329(n))]` -/
def P14751047654209637897.Spec : Prop :=
  ∀ n, (P14751047654209637897.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P6895891587801837322

`eq[2, A116933(A017305(n)+2)]`
-/

namespace A158806.P6895891587801837322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A017305 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P6895891587801837322

namespace A158806

/-- `eq[2, A116933(A017305(n)+2)]` -/
def P6895891587801837322.Spec : Prop :=
  ∀ n, (P6895891587801837322.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P15222281226457177299

`eq[30*n+19, A014963(30*n+19)]`
-/

namespace A158806.P15222281226457177299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (30 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P15222281226457177299

namespace A158806

/-- `eq[30*n+19, A014963(30*n+19)]` -/
def P15222281226457177299.Spec : Prop :=
  ∀ n, (P15222281226457177299.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P10380733233015580978

`A008651(A132234(n+1))`
-/

namespace A158806.P10380733233015580978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A132234 (n + 1)).toNat

end

end A158806.P10380733233015580978

namespace A158806

/-- `A008651(A132234(n+1))` -/
def P10380733233015580978.Spec : Prop :=
  ∀ n, P10380733233015580978.a n = A158806 (n + 1)

end A158806

/-! ## A158806.P2885857042488113481

`eq[2, A013632(A128468(n))]`
-/

namespace A158806.P2885857042488113481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A128468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P2885857042488113481

namespace A158806

/-- `eq[2, A013632(A128468(n))]` -/
def P2885857042488113481.Spec : Prop :=
  ∀ n, (P2885857042488113481.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P13951057418200266481

`eq[2, A002126(A156376(n)+2)]`
-/

namespace A158806.P13951057418200266481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A156376 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158806.P13951057418200266481

namespace A158806

/-- `eq[2, A002126(A156376(n)+2)]` -/
def P13951057418200266481.Spec : Prop :=
  ∀ n, (P13951057418200266481.a n : ℤ) = A158806 (n + 1)

end A158806

/-! ## A158806.P4405046506510442943

`lt[A128468(n), A014963(A128468(n)+2)]`
-/

namespace A158806.P4405046506510442943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A128468 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158806.P4405046506510442943

namespace A158806

/-- `lt[A128468(n), A014963(A128468(n)+2)]` -/
def P4405046506510442943.Spec : Prop :=
  ∀ n, (P4405046506510442943.a n : ℤ) = A158806 (n + 1)

end A158806

/-!
# A158808: Denominator of Bernoulli(n, 1/9).

The programs for A158808, the canonical program `A158808.P6863390486231908912` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158808 has offset 0).

The definition of A158808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158808.P6863390486231908912

`3^n*A157800(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A158808

/-- `3^n*A157800(n)` -/
def P6863390486231908912.Spec : Prop :=
  ∀ n, P6863390486231908912.a n = A158808 n

theorem P6863390486231908912.correct : P6863390486231908912.Spec := by
  intro n
  simp only [A158808]

end A158808

/-! ## A158808.P3221607168263287886

`9^n*A285068(n)`
-/

namespace A158808.P3221607168263287886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A285068 n

end

end A158808.P3221607168263287886

namespace A158808

/-- `9^n*A285068(n)` -/
def P3221607168263287886.Spec : Prop :=
  ∀ n, P3221607168263287886.a n = A158808 n

end A158808

/-! ## A158808.P1851158443940866474

`lcm(9^n, A027642(n))`
-/

namespace A158808.P1851158443940866474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (9 ^ n : ℤ) (A027642 n)

end

end A158808.P1851158443940866474

namespace A158808

/-- `lcm(9^n, A027642(n))` -/
def P1851158443940866474.Spec : Prop :=
  ∀ n, (P1851158443940866474.a n : ℤ) = A158808 n

end A158808

/-! ## A158808.P9515259599274349836

`A285068(n)*A352779(n)²`
-/

namespace A158808.P9515259599274349836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285068 n * A352779 n ^ 2

end

end A158808.P9515259599274349836

namespace A158808

/-- `A285068(n)*A352779(n)²` -/
def P9515259599274349836.Spec : Prop :=
  ∀ n, P9515259599274349836.a n = A158808 n

end A158808

/-! ## A158808.P9832885890895338858

`lcm(A000244(n)², A157800(n))`
-/

namespace A158808.P9832885890895338858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n ^ 2) (A157800 n)

end

end A158808.P9832885890895338858

namespace A158808

/-- `lcm(A000244(n)², A157800(n))` -/
def P9832885890895338858.Spec : Prop :=
  ∀ n, (P9832885890895338858.a n : ℤ) = A158808 n

end A158808

/-! ## A158808.P3282059419588674409

`A285068(n)*A352779(2*n)`
-/

namespace A158808.P3282059419588674409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285068 n * A352779 (2 * n)

end

end A158808.P3282059419588674409

namespace A158808

/-- `A285068(n)*A352779(2*n)` -/
def P3282059419588674409.Spec : Prop :=
  ∀ n, P3282059419588674409.a n = A158808 n

end A158808

/-! ## A158808.P1771851368720532679

`lcm(A000244(A005843(n)), A285068(n))`
-/

namespace A158808.P1771851368720532679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 (A005843 n).toNat) (A285068 n)

end

end A158808.P1771851368720532679

namespace A158808

/-- `lcm(A000244(A005843(n)), A285068(n))` -/
def P1771851368720532679.Spec : Prop :=
  ∀ n, (P1771851368720532679.a n : ℤ) = A158808 n

end A158808

/-! ## A158808.P14554955027831572179

`A157800(n)²/A285068(n)`
-/

namespace A158808.P14554955027831572179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157800 n ^ 2 : ℚ) / (A285068 n : ℚ)

end

end A158808.P14554955027831572179

namespace A158808

/-- `A157800(n)²/A285068(n)` -/
def P14554955027831572179.Spec : Prop :=
  ∀ n, P14554955027831572179.a n = (A158808 n : ℚ)

end A158808

/-! ## A158808.P815145792095079253

`gcd(A157800(n)², A157800(2*n))`
-/

namespace A158808.P815145792095079253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157800 n ^ 2) (A157800 (2 * n))

end

end A158808.P815145792095079253

namespace A158808

/-- `gcd(A157800(n)², A157800(2*n))` -/
def P815145792095079253.Spec : Prop :=
  ∀ n, (P815145792095079253.a n : ℤ) = A158808 n

end A158808

/-! ## A158808.P12739027414066891388

`A157800(n)²/gcd(A024023(n), A157800(n))`
-/

namespace A158808.P12739027414066891388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157800 n ^ 2 : ℚ) / (Int.gcd (A024023 n) (A157800 n) : ℚ)

end

end A158808.P12739027414066891388

namespace A158808

/-- `A157800(n)²/gcd(A024023(n), A157800(n))` -/
def P12739027414066891388.Spec : Prop :=
  ∀ n, P12739027414066891388.a n = (A158808 n : ℚ)

end A158808

/-!
# A158811: Numerator of Hermite(n, 1/3).

The programs for A158811, there is no canonical definition to state claims against.
-/

/-! ## A158811.P6122315635670504515

`A160299(n)%A315732(A002110(n))`
-/

namespace A158811.P6122315635670504515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160299 n) (A315732 (A002110 n).toNat)

end

end A158811.P6122315635670504515

/-!
# A158812: Smallest prime factor of entries in A158725(n).

The programs for A158812, there is no canonical definition to state claims against.
-/

/-! ## A158812.P7857536789320443587

`A020639(A158725(n+1))`
-/

namespace A158812.P7857536789320443587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158725 (n + 1)).toNat

end

end A158812.P7857536789320443587

/-! ## A158812.P14001400809447183019

`A074828(or(1, A158725(n+1)))`
-/

namespace A158812.P14001400809447183019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (Int.lor 1 (A158725 (n + 1))).toNat

end

end A158812.P14001400809447183019

/-! ## A158812.P16638399456013154771

`A107286(or(1, A158725(n+1)))`
-/

namespace A158812.P16638399456013154771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Int.lor 1 (A158725 (n + 1))).toNat

end

end A158812.P16638399456013154771

/-! ## A158812.P13813661112750897871

`A252358(or(1, A158725(n+1)))`
-/

namespace A158812.P13813661112750897871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 (Int.lor 1 (A158725 (n + 1))).toNat

end

end A158812.P13813661112750897871

/-! ## A158812.P12617796616127577846

`A028233(∏{p}[A158725(n+1), #])`
-/

namespace A158812.P12617796616127577846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A158812.P12617796616127577846

/-! ## A158812.P9501292908040919363

`A034684(∏{p}[A158725(n+1), #])`
-/

namespace A158812.P9501292908040919363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A158812.P9501292908040919363

/-! ## A158812.P15631423190787069192

`A252358(2*A158725(n+1))`
-/

namespace A158812.P15631423190787069192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 (2 * A158725 (n + 1)).toNat

end

end A158812.P15631423190787069192

/-! ## A158812.P13351431366279175251

`A292269(2*A158725(n+1))`
-/

namespace A158812.P13351431366279175251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * A158725 (n + 1)).toNat

end

end A158812.P13351431366279175251

/-! ## A158812.P274649758036293942

`A252358(lcm(2, A158725(n+1)))`
-/

namespace A158812.P274649758036293942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 (Int.lcm 2 (A158725 (n + 1)))

end

end A158812.P274649758036293942

/-!
# A158813: Largest prime factor of entries in A158725(n).

The programs for A158813, the canonical program `A158813.P10962523236652719903` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158813 has offset 1).

The definition of A158813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158813.P10962523236652719903

`A006530(A158725(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A158813

/-- `A006530(A158725(n+1))` -/
def P10962523236652719903.Spec : Prop :=
  ∀ n, P10962523236652719903.a n = A158813 (n + 1)

theorem P10962523236652719903.correct : P10962523236652719903.Spec := by
  intro n
  simp only [A158813, Nat.add_sub_cancel]

end A158813

/-! ## A158813.P16431744379664184070

`A002034(∏{p}[A158725(n+1), #])`
-/

namespace A158813.P16431744379664184070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A158813.P16431744379664184070

namespace A158813

/-- `A002034(∏{p}[A158725(n+1), #])` -/
def P16431744379664184070.Spec : Prop :=
  ∀ n, P16431744379664184070.a n = A158813 (n + 1)

end A158813

/-! ## A158813.P8349644529444625856

`A006530(∩[A133635(n+1), A236204(n+1)])`
-/

namespace A158813.P8349644529444625856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A158813.P8349644529444625856

namespace A158813

/-- `A006530(∩[A133635(n+1), A236204(n+1)])` -/
def P8349644529444625856.Spec : Prop :=
  ∀ n, P8349644529444625856.a n = A158813 (n + 1)

end A158813

/-! ## A158813.P10601191514165136963

`A006530(∩[A133635(n+1), A236208(n+1)])`
-/

namespace A158813.P10601191514165136963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A158813.P10601191514165136963

namespace A158813

/-- `A006530(∩[A133635(n+1), A236208(n+1)])` -/
def P10601191514165136963.Spec : Prop :=
  ∀ n, P10601191514165136963.a n = A158813 (n + 1)

end A158813

/-! ## A158813.P13923302466153037038

`A006530(∩[A133634(n+1), A236208(n+1)])`
-/

namespace A158813.P13923302466153037038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A158813.P13923302466153037038

namespace A158813

/-- `A006530(∩[A133634(n+1), A236208(n+1)])` -/
def P13923302466153037038.Spec : Prop :=
  ∀ n, P13923302466153037038.a n = A158813 (n + 1)

end A158813

/-!
# A158815: Triangle T(n,k) read by rows, matrix product of A046899(row-reversed) * A130595.

The programs for A158815, there is no canonical definition to state claims against.
-/

/-! ## A158815.P4010226703563619534

`(A124392(n)+A065600(n))/2`
-/

namespace A158815.P4010226703563619534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124392 n + A065600 n : ℚ) / 2

end

end A158815.P4010226703563619534

/-! ## A158815.P2964159858880385858

`A014682(A124392(n)+A065600(n))`
-/

namespace A158815.P2964159858880385858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A124392 n + A065600 n).toNat

end

end A158815.P2964159858880385858

/-! ## A158815.P15867007307729847615

`A302042(A124392(n)+A065600(n))`
-/

namespace A158815.P15867007307729847615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A124392 n + A065600 n).toNat

end

end A158815.P15867007307729847615

/-! ## A158815.P8687943554813481465

`A103391(A124392(n)+A065600(n))-1`
-/

namespace A158815.P8687943554813481465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A124392 n + A065600 n).toNat - 1

end

end A158815.P8687943554813481465

/-! ## A158815.P17223027229245975857

`A191525(C(∑[char[∑[n]]], 2)+n)`
-/

namespace A158815.P17223027229245975857
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n)

end

end A158815.P17223027229245975857

/-!
# A158817: 

The programs for A158817, there is no canonical definition to state claims against.
-/

/-! ## A158817.P6032328138752267289

`Δ[A003239(2^n)]`
-/

namespace A158817.P6032328138752267289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158817.P6032328138752267289

/-! ## A158817.P15503420612245785562

`A022553(2^(n+1))`
-/

namespace A158817.P15503420612245785562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (2 ^ (n + 1))

end

end A158817.P15503420612245785562

/-! ## A158817.P13315851013383501786

`Δ[A210736(2^(n+1))]/2^(n+1)`
-/

namespace A158817.P13315851013383501786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 ^ (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A158817.P13315851013383501786

/-!
# A158818: Number of partitions of A006003(n).

The programs for A158818, there is no canonical definition to state claims against.
-/

/-! ## A158818.P10639372663354739533

`A000041((n+3)*((n+3)²+1)/2)`
-/

namespace A158818.P10639372663354739533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (((n + 3) * ((n + 3) ^ 2 + 1) : ℚ) / 2)).toNat

end

end A158818.P10639372663354739533

/-! ## A158818.P4814270437814094817

`A035363(A034262(n+3))`
-/

namespace A158818.P4814270437814094817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A034262 (n + 3)).toNat

end

end A158818.P4814270437814094817

/-!
# A158819: a(n) = (number of squarefree numbers <= n) minus round(n/zeta(2)).

The programs for A158819, there is no canonical definition to state claims against.
-/

/-! ## A158819.P6883337982184833509

`A013928(n+2)-A177151(n+1)`
-/

namespace A158819.P6883337982184833509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A177151 (n + 1)

end

end A158819.P6883337982184833509

/-! ## A158819.P9709508409246840369

`∑[A008966(n+1)]-A177151(n+1)`
-/

namespace A158819.P9709508409246840369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A177151 (n + 1)

end

end A158819.P9709508409246840369

/-! ## A158819.P7236983573329122441

`A107079(n+2)-A177151(n+1)-1`
-/

namespace A158819.P7236983573329122441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 2) - A177151 (n + 1) - 1

end

end A158819.P7236983573329122441

/-! ## A158819.P3521243260959049657

`∑[A008683(n+1)²]-A177151(n+1)`
-/

namespace A158819.P3521243260959049657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A177151 (n + 1)

end

end A158819.P3521243260959049657

/-! ## A158819.P7330342250400027049

`A100112(A070321(n+1))-A177151(n+1)`
-/

namespace A158819.P7330342250400027049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A070321 (n + 1)).toNat - A177151 (n + 1)

end

end A158819.P7330342250400027049

/-! ## A158819.P11436595245768531285

`A023561(A107079(n+2)-A177151(n+1))`
-/

namespace A158819.P11436595245768531285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023561 (A107079 (n + 2) - A177151 (n + 1)).toNat

end

end A158819.P11436595245768531285

/-! ## A158819.P10289762848703982755

`∑[A008683(A008833(n+1))]-A177151(n+1)`
-/

namespace A158819.P10289762848703982755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A177151 (n + 1)

end

end A158819.P10289762848703982755

/-! ## A158819.P6082449452562664024

`∑[A087049(A088609(n+1))]-A177151(n+1)`
-/

namespace A158819.P6082449452562664024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A088609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A177151 (n + 1)

end

end A158819.P6082449452562664024

/-!
# A158821: Triangle read by rows: row n (n>=0) ends with 1, and for n>=1 begins with n; other entries are zero.

The programs for A158821, the canonical program `A158821.P7475338757825604441` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158821 has offset 0).

The definition of A158821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158821.P671278352645458217

`A316669(n+1)-n`
-/

namespace A158821.P671278352645458217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1) - (n : ℤ)

end

end A158821.P671278352645458217

namespace A158821

/-- `A316669(n+1)-n` -/
def P671278352645458217.Spec : Prop :=
  ∀ n, P671278352645458217.a n = A158821 n

theorem P671278352645458217.correct : P671278352645458217.Spec := by
  intro n
  simp only [A158821, Nat.add_sub_cancel, A158821.P671278352645458217.a, A158821.P7475338757825604441.a, A131033, A131033.P4849263893902669054.a, A316669, A316669.P322650816524864639.a, A023532, A023532.P12646681522116481213.a, A130296, A130296.P7958133824011622237.a, A099627, A099627.P2788997961149202424.a, A048645, A048645.P10151414295702732837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A158821

/-! ## A158821.P7475338757825604441

`abs(2-A131033(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A158821

/-- `abs(2-A131033(n+1))` -/
def P7475338757825604441.Spec : Prop :=
  ∀ n, P7475338757825604441.a n = A158821 n

theorem P7475338757825604441.correct : P7475338757825604441.Spec := by
  intro n
  simp only [A158821]

end A158821

/-! ## A158821.P11753513445441416008

`A127701(round(sqrt(n²+1)))`
-/

namespace A158821.P11753513445441416008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127701 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A158821.P11753513445441416008

namespace A158821

/-- `A127701(round(sqrt(n²+1)))` -/
def P11753513445441416008.Spec : Prop :=
  ∀ n, P11753513445441416008.a n = A158821 n

end A158821

/-! ## A158821.P17742014883019014118

`A166124(n)-A167407(n)`
-/

namespace A158821.P17742014883019014118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166124 n - A167407 n

end

end A158821.P17742014883019014118

namespace A158821

/-- `A166124(n)-A167407(n)` -/
def P17742014883019014118.Spec : Prop :=
  ∀ n, P17742014883019014118.a n = A158821 n

end A158821

/-! ## A158821.P14867644174082395823

`A103451(n)*A153861(n)`
-/

namespace A158821.P14867644174082395823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A153861 n

end

end A158821.P14867644174082395823

namespace A158821

/-- `A103451(n)*A153861(n)` -/
def P14867644174082395823.Spec : Prop :=
  ∀ n, P14867644174082395823.a n = A158821 n

end A158821

/-! ## A158821.P1529941356858621988

`A103451(n)*A193739(n)`
-/

namespace A158821.P1529941356858621988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A193739 n

end

end A158821.P1529941356858621988

namespace A158821

/-- `A103451(n)*A193739(n)` -/
def P1529941356858621988.Spec : Prop :=
  ∀ n, P1529941356858621988.a n = A158821 n

end A158821

/-! ## A158821.P8763167220795209503

`A103451(n)*A236376(n)`
-/

namespace A158821.P8763167220795209503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236376 n

end

end A158821.P8763167220795209503

namespace A158821

/-- `A103451(n)*A236376(n)` -/
def P8763167220795209503.Spec : Prop :=
  ∀ n, P8763167220795209503.a n = A158821 n

end A158821

/-! ## A158821.P11278869749743641653

`and(A103452(n), A153861(n))`
-/

namespace A158821.P11278869749743641653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A153861 n)

end

end A158821.P11278869749743641653

namespace A158821

/-- `and(A103452(n), A153861(n))` -/
def P11278869749743641653.Spec : Prop :=
  ∀ n, P11278869749743641653.a n = A158821 n

end A158821

/-! ## A158821.P5042637566198279452

`and(A103452(n), A193739(n))`
-/

namespace A158821.P5042637566198279452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A193739 n)

end

end A158821.P5042637566198279452

namespace A158821

/-- `and(A103452(n), A193739(n))` -/
def P5042637566198279452.Spec : Prop :=
  ∀ n, P5042637566198279452.a n = A158821 n

end A158821

/-! ## A158821.P4314428745747977673

`and(A103452(n), A236376(n))`
-/

namespace A158821.P4314428745747977673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A236376 n)

end

end A158821.P4314428745747977673

namespace A158821

/-- `and(A103452(n), A236376(n))` -/
def P4314428745747977673.Spec : Prop :=
  ∀ n, P4314428745747977673.a n = A158821 n

end A158821

/-! ## A158821.P17913255378891472395

`A130296(n+1)-A023532(n)`
-/

namespace A158821.P17913255378891472395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) - A023532 n

end

end A158821.P17913255378891472395

namespace A158821

/-- `A130296(n+1)-A023532(n)` -/
def P17913255378891472395.Spec : Prop :=
  ∀ n, P17913255378891472395.a n = A158821 n

end A158821

/-! ## A158821.P5653214454770676110

`A135227(n)-A198321(n+1)`
-/

namespace A158821.P5653214454770676110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n - A198321 (n + 1)

end

end A158821.P5653214454770676110

namespace A158821

/-- `A135227(n)-A198321(n+1)` -/
def P5653214454770676110.Spec : Prop :=
  ∀ n, P5653214454770676110.a n = A158821 n

end A158821

/-! ## A158821.P11079366205765073302

`A007318(n+1)*A103451(n)`
-/

namespace A158821.P11079366205765073302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) * A103451 n

end

end A158821.P11079366205765073302

namespace A158821

/-- `A007318(n+1)*A103451(n)` -/
def P11079366205765073302.Spec : Prop :=
  ∀ n, P11079366205765073302.a n = A158821 n

end A158821

/-! ## A158821.P11204846801976056359

`gcd(A127648(n), A144217(n+1))`
-/

namespace A158821.P11204846801976056359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A144217 (n + 1))

end

end A158821.P11204846801976056359

namespace A158821

/-- `gcd(A127648(n), A144217(n+1))` -/
def P11204846801976056359.Spec : Prop :=
  ∀ n, (P11204846801976056359.a n : ℤ) = A158821 n

end A158821

/-! ## A158821.P11840354914565015745

`lcm(A007318(n+1), A103452(n))`
-/

namespace A158821.P11840354914565015745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (n + 1)) (A103452 n)

end

end A158821.P11840354914565015745

namespace A158821

/-- `lcm(A007318(n+1), A103452(n))` -/
def P11840354914565015745.Spec : Prop :=
  ∀ n, (P11840354914565015745.a n : ℤ) = A158821 n

end A158821

/-! ## A158821.P489296181110672490

`and(A103452(n), A209561(n+1))`
-/

namespace A158821.P489296181110672490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A209561 (n + 1))

end

end A158821.P489296181110672490

namespace A158821

/-- `and(A103452(n), A209561(n+1))` -/
def P489296181110672490.Spec : Prop :=
  ∀ n, P489296181110672490.a n = A158821 n

end A158821

/-! ## A158821.P1857142694366608187

`and(A103452(n), A209567(n+1))`
-/

namespace A158821.P1857142694366608187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A209567 (n + 1))

end

end A158821.P1857142694366608187

namespace A158821

/-- `and(A103452(n), A209567(n+1))` -/
def P1857142694366608187.Spec : Prop :=
  ∀ n, P1857142694366608187.a n = A158821 n

end A158821

/-! ## A158821.P16063740899803331385

`and(A103452(n), A209569(n+1))`
-/

namespace A158821.P16063740899803331385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A209569 (n + 1))

end

end A158821.P16063740899803331385

namespace A158821

/-- `and(A103452(n), A209569(n+1))` -/
def P16063740899803331385.Spec : Prop :=
  ∀ n, P16063740899803331385.a n = A158821 n

end A158821

/-! ## A158821.P10713646325536612764

`and(A103452(n), A209573(n+1))`
-/

namespace A158821.P10713646325536612764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103452 n) (A209573 (n + 1))

end

end A158821.P10713646325536612764

namespace A158821

/-- `and(A103452(n), A209573(n+1))` -/
def P10713646325536612764.Spec : Prop :=
  ∀ n, P10713646325536612764.a n = A158821 n

end A158821

/-! ## A158821.P7711327715232390036

`A023531(n)+A003056(n*A010054(n))`
-/

namespace A158821.P7711327715232390036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + A003056 ((n : ℤ) * A010054 n).toNat

end

end A158821.P7711327715232390036

namespace A158821

/-- `A023531(n)+A003056(n*A010054(n))` -/
def P7711327715232390036.Spec : Prop :=
  ∀ n, P7711327715232390036.a n = A158821 n

end A158821

/-!
# A158822: Triangle read by rows, matrix triple product A000012 * A145677 * A000012.

The programs for A158822, the canonical program `A158822.P11905004217678079225` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158822 has offset 0).

The definition of A158822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158822.P11905004217678079225

`A066182(n+1)-A112367(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158822

/-- `A066182(n+1)-A112367(n)` -/
def P11905004217678079225.Spec : Prop :=
  ∀ n, P11905004217678079225.a n = A158822 n

theorem P11905004217678079225.correct : P11905004217678079225.Spec := by
  intro n
  simp only [A158822]

end A158822

/-! ## A158822.P5340244379137493704

`A193974(n)-A143595(n+1)`
-/

namespace A158822.P5340244379137493704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A143595 (n + 1)

end

end A158822.P5340244379137493704

namespace A158822

/-- `A193974(n)-A143595(n+1)` -/
def P5340244379137493704.Spec : Prop :=
  ∀ n, P5340244379137493704.a n = A158822 n

end A158822

/-! ## A158822.P8854161174270206562

`A049780(n)+A002260(A007401(n+1))`
-/

namespace A158822.P8854161174270206562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + A002260 (A007401 (n + 1)).toNat

end

end A158822.P8854161174270206562

namespace A158822

/-- `A049780(n)+A002260(A007401(n+1))` -/
def P8854161174270206562.Spec : Prop :=
  ∀ n, P8854161174270206562.a n = A158822 n

end A158822

/-! ## A158822.P13311997808804068445

`A144329(n+1)+A000217(A025581(n))`
-/

namespace A158822.P13311997808804068445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144329 (n + 1) + A000217 (A025581 n).toNat

end

end A158822.P13311997808804068445

namespace A158822

/-- `A144329(n+1)+A000217(A025581(n))` -/
def P13311997808804068445.Spec : Prop :=
  ∀ n, P13311997808804068445.a n = A158822 n

end A158822

/-! ## A158822.P2315616326263346380

`A066182(n+1)-A000217(A002262(n))`
-/

namespace A158822.P2315616326263346380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - A000217 (A002262 n).toNat

end

end A158822.P2315616326263346380

namespace A158822

/-- `A066182(n+1)-A000217(A002262(n))` -/
def P2315616326263346380.Spec : Prop :=
  ∀ n, P2315616326263346380.a n = A158822 n

end A158822

/-! ## A158822.P16873979758066905429

`A049777(A066182(n+1)-A003056(n))`
-/

namespace A158822.P16873979758066905429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A066182 (n + 1) - A003056 n).toNat

end

end A158822.P16873979758066905429

namespace A158822

/-- `A049777(A066182(n+1)-A003056(n))` -/
def P16873979758066905429.Spec : Prop :=
  ∀ n, P16873979758066905429.a n = A158822 n

end A158822

/-! ## A158822.P8071003018339165506

`A193739(A038722(n+1))+A049780(n)`
-/

namespace A158822.P8071003018339165506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A038722 (n + 1)).toNat + A049780 n

end

end A158822.P8071003018339165506

namespace A158822

/-- `A193739(A038722(n+1))+A049780(n)` -/
def P8071003018339165506.Spec : Prop :=
  ∀ n, P8071003018339165506.a n = A158822 n

end A158822

/-! ## A158822.P6587203031812812399

`A049777(n+1)-A002262(A038722(n+1))`
-/

namespace A158822.P6587203031812812399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) - A002262 (A038722 (n + 1)).toNat

end

end A158822.P6587203031812812399

namespace A158822

/-- `A049777(n+1)-A002262(A038722(n+1))` -/
def P6587203031812812399.Spec : Prop :=
  ∀ n, P6587203031812812399.a n = A158822 n

end A158822

/-! ## A158822.P3118589561485228224

`A066182(n+1)-A347129(A059268(n))`
-/

namespace A158822.P3118589561485228224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - A347129 (A059268 n).toNat

end

end A158822.P3118589561485228224

namespace A158822

/-- `A066182(n+1)-A347129(A059268(n))` -/
def P3118589561485228224.Spec : Prop :=
  ∀ n, P3118589561485228224.a n = A158822 n

end A158822

/-!
# A158823: Triangle read by rows: matrix product A004736 * A158821.

The programs for A158823, the canonical program `A158823.P222206125904905872` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158823 has offset 1).

The definition of A158823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158823.P222206125904905872

`A130270(n+1)+A004247(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158823

/-- `A130270(n+1)+A004247(n)` -/
def P222206125904905872.Spec : Prop :=
  ∀ n, P222206125904905872.a n = A158823 (n + 1)

theorem P222206125904905872.correct : P222206125904905872.Spec := by
  intro n
  simp only [A158823, Nat.add_sub_cancel]

end A158823

/-! ## A158823.P15074944970043234104

`A130270(n+1)*A193592(n)`
-/

namespace A158823.P15074944970043234104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1) * A193592 n

end

end A158823.P15074944970043234104

namespace A158823

/-- `A130270(n+1)*A193592(n)` -/
def P15074944970043234104.Spec : Prop :=
  ∀ n, P15074944970043234104.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P5455109153244661316

`A130302(n+1)*A144328(n+1)`
-/

namespace A158823.P5455109153244661316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1) * A144328 (n + 1)

end

end A158823.P5455109153244661316

namespace A158823

/-- `A130302(n+1)*A144328(n+1)` -/
def P5455109153244661316.Spec : Prop :=
  ∀ n, P5455109153244661316.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P17390689555789229562

`A144329(n+1)+n*A010054(n)`
-/

namespace A158823.P17390689555789229562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144329 (n + 1) + (n : ℤ) * A010054 n

end

end A158823.P17390689555789229562

namespace A158823

/-- `A144329(n+1)+n*A010054(n)` -/
def P17390689555789229562.Spec : Prop :=
  ∀ n, P17390689555789229562.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P16453124567499925513

`A130270(n+1)+A002262(n)*A025581(n)`
-/

namespace A158823.P16453124567499925513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1) + A002262 n * A025581 n

end

end A158823.P16453124567499925513

namespace A158823

/-- `A130270(n+1)+A002262(n)*A025581(n)` -/
def P16453124567499925513.Spec : Prop :=
  ∀ n, P16453124567499925513.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P8675183472944755653

`A008867(n+2)%(A061579(n)+A035214(n))`
-/

namespace A158823.P8675183472944755653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008867 (n + 2)) (A061579 n + A035214 n)

end

end A158823.P8675183472944755653

namespace A158823

/-- `A008867(n+2)%(A061579(n)+A035214(n))` -/
def P8675183472944755653.Spec : Prop :=
  ∀ n, P8675183472944755653.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P7542095174676190976

`A008867(n+2)-A038722(n+1)%A080036(n)`
-/

namespace A158823.P7542095174676190976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008867 (n + 2) - Int.tmod (A038722 (n + 1)) (A080036 n)

end

end A158823.P7542095174676190976

namespace A158823

/-- `A008867(n+2)-A038722(n+1)%A080036(n)` -/
def P7542095174676190976.Spec : Prop :=
  ∀ n, P7542095174676190976.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P2006040988370200964

`A003991(n+1)+A130270(n+1)-A002024(n+1)`
-/

namespace A158823.P2006040988370200964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A130270 (n + 1) - A002024 (n + 1))

end

end A158823.P2006040988370200964

namespace A158823

/-- `A003991(n+1)+A130270(n+1)-A002024(n+1)` -/
def P2006040988370200964.Spec : Prop :=
  ∀ n, P2006040988370200964.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P10247978663690887134

`A141419(A007401(n+1))-A000096(A002262(n))`
-/

namespace A158823.P10247978663690887134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (A007401 (n + 1)).toNat - A000096 (A002262 n).toNat

end

end A158823.P10247978663690887134

namespace A158823

/-- `A141419(A007401(n+1))-A000096(A002262(n))` -/
def P10247978663690887134.Spec : Prop :=
  ∀ n, P10247978663690887134.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P12164223469238618042

`A130270(n+1)+A008612(A287326(n))`
-/

namespace A158823.P12164223469238618042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1) + A008612 (A287326 n).toNat

end

end A158823.P12164223469238618042

namespace A158823

/-- `A130270(n+1)+A008612(A287326(n))` -/
def P12164223469238618042.Spec : Prop :=
  ∀ n, P12164223469238618042.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P1307333144914620732

`A141387(A285192(n))+A130270(n+1)`
-/

namespace A158823.P1307333144914620732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 (A285192 n).toNat + A130270 (n + 1)

end

end A158823.P1307333144914620732

namespace A158823

/-- `A141387(A285192(n))+A130270(n+1)` -/
def P1307333144914620732.Spec : Prop :=
  ∀ n, P1307333144914620732.a n = A158823 (n + 1)

end A158823

/-! ## A158823.P7523026122919634469

`A000005(A057728(n+1))*A130270(n+1)`
-/

namespace A158823.P7523026122919634469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057728 (n + 1)).toNat * A130270 (n + 1)

end

end A158823.P7523026122919634469

namespace A158823

/-- `A000005(A057728(n+1))*A130270(n+1)` -/
def P7523026122919634469.Spec : Prop :=
  ∀ n, P7523026122919634469.a n = A158823 (n + 1)

end A158823

/-!
# A158824: Triangle T(n,k) = A000292(n) if k = 1 otherwise (k-1)*(n-k+1)*(n-k+2)/2, read by rows.

The programs for A158824, the canonical program `A158824.P15231535269411815641` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158824 has offset 1).

The definition of A158824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158824.P15231535269411815641

`A213500(n+1)-A193976(n)%A213500(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158824

/-- `A213500(n+1)-A193976(n)%A213500(n+1)` -/
def P15231535269411815641.Spec : Prop :=
  ∀ n, P15231535269411815641.a n = A158824 (n + 1)

theorem P15231535269411815641.correct : P15231535269411815641.Spec := by
  intro n
  simp only [A158824, Nat.add_sub_cancel]

end A158824

/-!
# A158825: Square array of coefficients in the successive iterations of x*C(x) = (1-sqrt(1-4*x))/2 where C(x) is the g.f. of the Catalan numbers (A000108); read by antidiagonals.

The programs for A158825, there is no canonical definition to state claims against.
-/

/-! ## A158825.P9687354142007986905

`A098474(n)+A082859(A102480(n))²`
-/

namespace A158825.P9687354142007986905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n + A082859 (A102480 n).toNat ^ 2

end

end A158825.P9687354142007986905

/-! ## A158825.P17387398979181141911

`A153199(n)+A082859(A102480(n))²`
-/

namespace A158825.P17387398979181141911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153199 n + A082859 (A102480 n).toNat ^ 2

end

end A158825.P17387398979181141911

/-! ## A158825.P12891196214947563463

`A247507(n)-A094912(A336979(n))`
-/

namespace A158825.P12891196214947563463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247507 n - A094912 (A336979 n).toNat

end

end A158825.P12891196214947563463

/-! ## A158825.P7646950459001111624

`A098474(n)+A010054(A065449(n+4))`
-/

namespace A158825.P7646950459001111624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n + A010054 (A065449 (n + 4)).toNat

end

end A158825.P7646950459001111624

/-! ## A158825.P4992314426219143015

`A098474(n)+A086015(A026813(3*n))`
-/

namespace A158825.P4992314426219143015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n + A086015 (A026813 (3 * n)).toNat

end

end A158825.P4992314426219143015

/-!
# A158826: Third iteration of x*C(x) where C(x) is the Catalan function (A000108).

The programs for A158826, there is no canonical definition to state claims against.
-/

/-! ## A158826.P6754957372066024562

`A158825(∑[n+3]+1)`
-/

namespace A158826.P6754957372066024562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A158826.P6754957372066024562

/-! ## A158826.P8320445955575779837

`record[A106270(n+2)*A158825(n+1)]`
-/

namespace A158826.P8320445955575779837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106270 (n + 2) * A158825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158826.P8320445955575779837

/-! ## A158826.P16269988248034231660

`record[A158825(n+2)^A106270(n+3)]`
-/

namespace A158826.P16269988248034231660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158825 (n + 2) : ℚ) ^ (A106270 (n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158826.P16269988248034231660

/-! ## A158826.P4489583773786029541

`A158825(Δ[A008778(n)])%A005502(n)`
-/

namespace A158826.P4489583773786029541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158825 (f1 (n + 1) - f1 n).toNat) (A005502 n)

end

end A158826.P4489583773786029541

/-! ## A158826.P2220429338061291743

`record[A158825(n+1)/A158825(n+4)]`
-/

namespace A158826.P2220429338061291743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158825 (n + 1) : ℚ) / (A158825 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158826.P2220429338061291743

/-!
# A158827: The 4th iteration of x*C(x) where C(x) is the Catalan function (A000108).

The programs for A158827, there is no canonical definition to state claims against.
-/

/-! ## A158827.P4327534478974366041

`A158825(A055998(n+2))`
-/

namespace A158827.P4327534478974366041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (A055998 (n + 2)).toNat

end

end A158827.P4327534478974366041

/-! ## A158827.P4278893698429349642

`A158825(Δ[A034857(n+1)])`
-/

namespace A158827.P4278893698429349642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (f1 (n + 1) - f1 n).toNat

end

end A158827.P4278893698429349642

/-! ## A158827.P5974585951786531417

`A158825(A052905(n+1)+2)`
-/

namespace A158827.P5974585951786531417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (A052905 (n + 1) + 2).toNat

end

end A158827.P5974585951786531417

/-! ## A158827.P14412220437370751033

`A158825(Δ[A008778(n+1)]-1)`
-/

namespace A158827.P14412220437370751033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (f1 (n + 1) - f1 n - 1).toNat

end

end A158827.P14412220437370751033

/-!
# A158828: The 5th iteration of x*C(x) where C(x) is the Catalan function (A000108).

The programs for A158828, there is no canonical definition to state claims against.
-/

/-! ## A158828.P15324670961439600372

`A158825(∑[n+5]+6)`
-/

namespace A158828.P15324670961439600372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A158828.P15324670961439600372

/-! ## A158828.P13804496297252543325

`A185013(2*n)+A158825(A046691(n+3))`
-/

namespace A158828.P13804496297252543325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (2 * n) + A158825 (A046691 (n + 3)).toNat

end

end A158828.P13804496297252543325

/-! ## A158828.P14491303850233352553

`A106400(n)²*A158825(A056000(n+1)+6)`
-/

namespace A158828.P14491303850233352553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A158825 (A056000 (n + 1) + 6).toNat

end

end A158828.P14491303850233352553

/-! ## A158828.P10641853716472676759

`A209229(3*n)+A158825(A056000(n+1)+6)`
-/

namespace A158828.P10641853716472676759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (3 * n) + A158825 (A056000 (n + 1) + 6).toNat

end

end A158828.P10641853716472676759

/-!
# A158829: Antidiagonal sums of square array A158825, in which row n lists the coefficients of the n-th iteration of x*C(x), where C(x) is the Catalan function (A000108).

The programs for A158829, there is no canonical definition to state claims against.
-/

/-! ## A158829.P3589423323591925619

`A287666(n)+A010894(A023105(n))`
-/

namespace A158829.P3589423323591925619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287666 n + A010894 ((A023105 n).toNat + 21)

end

end A158829.P3589423323591925619

/-! ## A158829.P5403610088582168938

`A287666(n)+A007949(A093636(n))`
-/

namespace A158829.P5403610088582168938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287666 n + A007949 (A093636 n).toNat

end

end A158829.P5403610088582168938

/-! ## A158829.P17647200170407307327

`A287666(n)+A025441(A279565(n))`
-/

namespace A158829.P17647200170407307327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287666 n + A025441 (A279565 n).toNat

end

end A158829.P17647200170407307327

/-! ## A158829.P7097605236202576482

`A287666(n)+A025466(A287668(n))`
-/

namespace A158829.P7097605236202576482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287666 n + A025466 (A287668 n).toNat

end

end A158829.P7097605236202576482

/-! ## A158829.P284076284776236587

`A108304(n)+2*A028303(A309861(n))`
-/

namespace A158829.P284076284776236587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108304 n + 2 * A028303 (A309861 n).toNat

end

end A158829.P284076284776236587

/-!
# A158830: Triangle, read by rows n>=1, where row n is the n-th differences of column n of array A158825, where the g.f. of row n of A158825 is the n-th iteration of x*Catalan(x).

The programs for A158830, there is no canonical definition to state claims against.
-/

/-! ## A158830.P4900907172747681525

`A122890(∑[2*n]%comp[∑[n]])`
-/

namespace A158830.P4900907172747681525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A158830.P4900907172747681525

/-! ## A158830.P754262036925154165

`A122890(∑[char[∑[n]]]²-n-1)`
-/

namespace A158830.P754262036925154165
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A158830.P754262036925154165

/-! ## A158830.P15424034229036026535

`or(char[1], A122890(A061579(n)))`
-/

namespace A158830.P15424034229036026535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A122890 (A061579 n).toNat)

end

end A158830.P15424034229036026535

/-! ## A158830.P937645888819034052

`gcd(A000038(n), A122890(A061579(n)))`
-/

namespace A158830.P937645888819034052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A122890 (A061579 n).toNat)

end

end A158830.P937645888819034052

/-! ## A158830.P17651725145485830196

`lcm(A020985(n), A122890(A061579(n)))`
-/

namespace A158830.P17651725145485830196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A122890 (A061579 n).toNat)

end

end A158830.P17651725145485830196

/-! ## A158830.P7126815928963840996

`A007318(∑[n])*A122890(A061579(n))`
-/

namespace A158830.P7126815928963840996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A122890 (A061579 n).toNat

end

end A158830.P7126815928963840996

/-! ## A158830.P4793888751919436408

`A122890(A061579(n))%A000032(n+2)`
-/

namespace A158830.P4793888751919436408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122890 (A061579 n).toNat) (A000032 (n + 2))

end

end A158830.P4793888751919436408

/-! ## A158830.P200154145003599954

`A122890(A061579(n))+A008683(4*(n+1))`
-/

namespace A158830.P200154145003599954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A158830.P200154145003599954

/-! ## A158830.P2078414580826087934

`A122890(A061579(n))+C(n, A018252(n+2))`
-/

namespace A158830.P2078414580826087934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A061579 n).toNat + (Nat.choose n (A018252 (n + 2)).toNat : ℤ)

end

end A158830.P2078414580826087934

/-! ## A158830.P13566519761963098716

`A122890(A061579(n))+n%(A000040(n+1)+2)-n`
-/

namespace A158830.P13566519761963098716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A061579 n).toNat + (Int.tmod (n : ℤ) (A000040 (n + 1) + 2) - (n : ℤ))

end

end A158830.P13566519761963098716

/-!
# A158831: A diagonal in the array A158825 of coefficients of successive iterations of x*C(x), where C(x) is the Catalan function (A000108).

The programs for A158831, there is no canonical definition to state claims against.
-/

/-! ## A158831.P7250971856361111108

`A158825(A058331(n))`
-/

namespace A158831.P7250971856361111108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (A058331 n).toNat

end

end A158831.P7250971856361111108

/-! ## A158831.P1148409651388371830

`A158825(A005408(n²))`
-/

namespace A158831.P1148409651388371830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (A005408 (n ^ 2)).toNat

end

end A158831.P1148409651388371830

/-! ## A158831.P13322561594451969801

`A158825(A001105(n)+1)`
-/

namespace A158831.P13322561594451969801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (A001105 n + 1).toNat

end

end A158831.P13322561594451969801

/-! ## A158831.P14701387257140972379

`A158825(A056220(n)+2)`
-/

namespace A158831.P14701387257140972379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (A056220 n + 2).toNat

end

end A158831.P14701387257140972379

/-! ## A158831.P10133710639631540936

`A158825(A005843(n²)+1)`
-/

namespace A158831.P10133710639631540936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (A005843 (n ^ 2) + 1).toNat

end

end A158831.P10133710639631540936

/-!
# A158832: Main diagonal in the array A158825 of coefficients of successive iterations of x*C(x), where C(x) is the Catalan function (A000108).

The programs for A158832, there is no canonical definition to state claims against.
-/

/-! ## A158832.P7963320448253833816

`A158825((n+1)²+n²)`
-/

namespace A158832.P7963320448253833816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 ((n + 1) ^ 2 + n ^ 2)

end

end A158832.P7963320448253833816

/-! ## A158832.P14822037115233471635

`record[A003982(n)*A158825(n+1)]`
-/

namespace A158832.P14822037115233471635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A158825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158832.P14822037115233471635

/-! ## A158832.P13564672458079191737

`record[gcd(A114327(n), A158825(n+1))]`
-/

namespace A158832.P13564672458079191737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A158825 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158832.P13564672458079191737

/-! ## A158832.P13389920602745329616

`A178798(n)+A158825(A001844(n))`
-/

namespace A158832.P13389920602745329616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A158825 (A001844 n).toNat

end

end A158832.P13389920602745329616

/-! ## A158832.P7601977180442272819

`lcm(A000034(n), A158825(A001844(n)))`
-/

namespace A158832.P7601977180442272819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A158825 (A001844 n).toNat)

end

end A158832.P7601977180442272819

/-!
# A158833: A diagonal in the array A158825 of coefficients of successive iterations of x*C(x), where C(x) is the Catalan function (A000108).

The programs for A158833, there is no canonical definition to state claims against.
-/

/-! ## A158833.P17271973405921100846

`A158825(2*(n+1)²)`
-/

namespace A158833.P17271973405921100846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (2 * (n + 1) ^ 2)

end

end A158833.P17271973405921100846

/-! ## A158833.P5555130285128589813

`record[gcd(1-A114327(n), A158825(n+1))]`
-/

namespace A158833.P5555130285128589813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A114327 n) (A158825 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158833.P5555130285128589813

/-! ## A158833.P18416185246037884978

`record[A158825(n+1)/A062745(2*(n+1))]`
-/

namespace A158833.P18416185246037884978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158825 (n + 1) : ℚ) / (A062745 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158833.P18416185246037884978

/-! ## A158833.P3924579466853905525

`A011655(3*n+2)*A158825(A093005(2*(n+1)))`
-/

namespace A158833.P3924579466853905525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (3 * n + 2) * A158825 (A093005 (2 * (n + 1))).toNat

end

end A158833.P3924579466853905525

/-! ## A158833.P15266377566060264828

`A158825(A001105(n+1))%A125633(n+1)`
-/

namespace A158833.P15266377566060264828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158825 (A001105 (n + 1)).toNat) (A125633 (n + 1))

end

end A158833.P15266377566060264828

/-!
# A158834: A diagonal in the array A158825 of coefficients of successive iterations of x*C(x), where C(x) is the Catalan function (A000108).

The programs for A158834, there is no canonical definition to state claims against.
-/

/-! ## A158834.P15325612662297558175

`A158825(∑[4*(n+1)])`
-/

namespace A158834.P15325612662297558175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158834.P15325612662297558175

/-! ## A158834.P10449132594853500471

`record[A158825(A226725(n+1))]`
-/

namespace A158834.P10449132594853500471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158834.P10449132594853500471

/-! ## A158834.P17619672621335812154

`record[A158825(4*A158823(n+1))]`
-/

namespace A158834.P17619672621335812154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158825 (4 * A158823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158834.P17619672621335812154

/-! ## A158834.P15744606568455781923

`A178798(n)+A158825(A226725(2*(n+1)))`
-/

namespace A158834.P15744606568455781923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A158825 (A226725 (2 * (n + 1))).toNat

end

end A158834.P15744606568455781923

/-! ## A158834.P9737091132125547134

`A158825(A007590(2*n+3))%A026375(2*n+1)`
-/

namespace A158834.P9737091132125547134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158825 (A007590 (2 * n + 3)).toNat) (A026375 (2 * n + 1))

end

end A158834.P9737091132125547134

/-!
# A158835: Triangle, read by rows, that transforms diagonals in the array A158825 of coefficients of successive iterations of x*C(x) where C(x) is the Catalan function (A000108).

The programs for A158835, there is no canonical definition to state claims against.
-/

/-! ## A158835.P17182708165814352136

`A236961(n)-A010893(A119502(n))`
-/

namespace A158835.P17182708165814352136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 n - A010893 ((A119502 n).toNat + 13)

end

end A158835.P17182708165814352136

/-! ## A158835.P10696960244994446947

`A236961(n)-A010893(A130534(n))`
-/

namespace A158835.P10696960244994446947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 n - A010893 ((A130534 n).toNat + 13)

end

end A158835.P10696960244994446947

/-! ## A158835.P6888067339089304853

`A236961(n)-A326033(A158815(n))`
-/

namespace A158835.P6888067339089304853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 n - A326033 (A158815 n).toNat

end

end A158835.P6888067339089304853

/-! ## A158835.P5304142694785683223

`A236961(n)-A135767(A081703(n+1))`
-/

namespace A158835.P5304142694785683223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 n - A135767 (A081703 (n + 1)).toNat

end

end A158835.P5304142694785683223

/-! ## A158835.P18044758468039808723

`A236961(n)-A256574(A032020(2*(n+2)))`
-/

namespace A158835.P18044758468039808723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 n - A256574 (A032020 (2 * (n + 2))).toNat

end

end A158835.P18044758468039808723

/-!
# A158836: Column 0 of triangle A158835.

The programs for A158836, there is no canonical definition to state claims against.
-/

/-! ## A158836.P5832942888442091177

`A158835(∑[n]+1)`
-/

namespace A158836.P5832942888442091177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A158836.P5832942888442091177

/-! ## A158836.P10297190583727948656

`A178798(n)+A158835(A000124(n))`
-/

namespace A158836.P10297190583727948656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A158835 (A000124 n).toNat

end

end A158836.P10297190583727948656

/-! ## A158836.P7790326772679006824

`A015600(n)*A158835(A000124(n))`
-/

namespace A158836.P7790326772679006824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A158835 (A000124 n).toNat

end

end A158836.P7790326772679006824

/-! ## A158836.P2325522360991838167

`A158835(A000124(n))%A277757(n)`
-/

namespace A158836.P2325522360991838167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158835 (A000124 n).toNat) (A277757 n)

end

end A158836.P2325522360991838167

/-! ## A158836.P4135144664255257045

`A007318(C(n, 2))*A158835(A000124(n))`
-/

namespace A158836.P4135144664255257045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A158835 (A000124 n).toNat

end

end A158836.P4135144664255257045

/-!
# A158837: Column 1 of triangle A158835.

The programs for A158837, there is no canonical definition to state claims against.
-/

/-! ## A158837.P11840433301994582410

`A158835(∑[n+1]+2)`
-/

namespace A158837.P11840433301994582410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A158837.P11840433301994582410

/-! ## A158837.P7781927277767400972

`record[A158835(A080036(n))]`
-/

namespace A158837.P7781927277767400972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158837.P7781927277767400972

/-! ## A158837.P9855227345134046172

`record[A158835(n+1)/A177767(n)]`
-/

namespace A158837.P9855227345134046172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158835 (n + 1) : ℚ) / (A177767 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158837.P9855227345134046172

/-! ## A158837.P8948670552234988202

`record[A158835(n+2)*A293285(n)]`
-/

namespace A158837.P8948670552234988202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (n + 2) * A293285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158837.P8948670552234988202

/-! ## A158837.P2516243899585022257

`record[gcd(A010816(n), A158835(n+1))]`
-/

namespace A158837.P2516243899585022257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A158835 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158837.P2516243899585022257

/-!
# A158838: Column 2 of triangle A158835.

The programs for A158838, there is no canonical definition to state claims against.
-/

/-! ## A158838.P10141210796534596935

`A158835(∑[n+2]+4)`
-/

namespace A158838.P10141210796534596935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A158838.P10141210796534596935

/-! ## A158838.P4562520480915432276

`record[and(A158835(n+2), A293285(n))]`
-/

namespace A158838.P4562520480915432276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158835 (n + 2)) (A293285 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158838.P4562520480915432276

/-! ## A158838.P10263320999116475389

`A178798(n)+A158835(A167614(n+1))`
-/

namespace A158838.P10263320999116475389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A158835 (A167614 (n + 1)).toNat

end

end A158838.P10263320999116475389

/-! ## A158838.P13614807104298643080

`A015600(n)*A158835(A167614(n+1))`
-/

namespace A158838.P13614807104298643080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A158835 (A167614 (n + 1)).toNat

end

end A158838.P13614807104298643080

/-! ## A158838.P8968174760283860852

`gcd(A000038(n), A158835(A167614(n+1)))`
-/

namespace A158838.P8968174760283860852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A158835 (A167614 (n + 1)).toNat)

end

end A158838.P8968174760283860852

/-!
# A158839: Column 3 of triangle A158835.

The programs for A158839, there is no canonical definition to state claims against.
-/

/-! ## A158839.P6328550670282974887

`A158835(A141214(n)+7)`
-/

namespace A158839.P6328550670282974887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (A141214 n + 7).toNat

end

end A158839.P6328550670282974887

/-! ## A158839.P17343663557374251691

`A158835(A052905(n)+9)`
-/

namespace A158839.P17343663557374251691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (A052905 n + 9).toNat

end

end A158839.P17343663557374251691

/-! ## A158839.P9315617593507127053

`A158835(A055999(n)+10)`
-/

namespace A158839.P9315617593507127053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (A055999 n + 10).toNat

end

end A158839.P9315617593507127053

/-! ## A158839.P10780154746620292033

`A158835(Δ[A008778(n)]+6)`
-/

namespace A158839.P10780154746620292033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (f1 (n + 1) - f1 n + 6).toNat

end

end A158839.P10780154746620292033

/-! ## A158839.P18253652267345901528

`A158835(A167614(n+2)+1)`
-/

namespace A158839.P18253652267345901528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (A167614 (n + 2) + 1).toNat

end

end A158839.P18253652267345901528

/-!
# A158840: Row sums of triangle A158835.

The programs for A158840, there is no canonical definition to state claims against.
-/

/-! ## A158840.P1907182193780204824

`A348357(3*2^n-2)-∑[n]`
-/

namespace A158840.P1907182193780204824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348357 (3 * 2 ^ n - 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A158840.P1907182193780204824

/-!
# A158841: Triangle read by rows, matrix product of A145677 * A004736.

The programs for A158841, the canonical program `A158841.P12435815031069025361` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158841 has offset 1).

The definition of A158841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158841.P10962009839000417756

`T(n-1,k)+2*row(n)-col(n)` with `a(0)=1`
-/

namespace A158841.P10962009839000417756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A158841.P10962009839000417756

namespace A158841

/-- `T(n-1,k)+2*row(n)-col(n)` -/
def P10962009839000417756.Spec : Prop :=
  ∀ n, P10962009839000417756.a n = A158841 (n + 1)

end A158841

/-! ## A158841.P2974942478860522560

`A128140(n+1)-char[comp[∑[n]]]`
-/

namespace A158841.P2974942478860522560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A158841.P2974942478860522560

namespace A158841

/-- `A128140(n+1)-char[comp[∑[n]]]` -/
def P2974942478860522560.Spec : Prop :=
  ∀ n, P2974942478860522560.a n = A158841 (n + 1)

end A158841

/-! ## A158841.P12435815031069025361

`A144328(n+1)+A095834(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158841

/-- `A144328(n+1)+A095834(n+1)` -/
def P12435815031069025361.Spec : Prop :=
  ∀ n, P12435815031069025361.a n = A158841 (n + 1)

theorem P12435815031069025361.correct : P12435815031069025361.Spec := by
  intro n
  simp only [A158841, Nat.add_sub_cancel]

end A158841

/-! ## A158841.P3216275578303095883

`A128140(n+1)+A010054(n)-1`
-/

namespace A158841.P3216275578303095883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) + A010054 n - 1

end

end A158841.P3216275578303095883

namespace A158841

/-- `A128140(n+1)+A010054(n)-1` -/
def P3216275578303095883.Spec : Prop :=
  ∀ n, P3216275578303095883.a n = A158841 (n + 1)

end A158841

/-! ## A158841.P9544696610127561238

`A063929(n+1)-A143956(n+1)`
-/

namespace A158841.P9544696610127561238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) - A143956 (n + 1)

end

end A158841.P9544696610127561238

namespace A158841

/-- `A063929(n+1)-A143956(n+1)` -/
def P9544696610127561238.Spec : Prop :=
  ∀ n, P9544696610127561238.a n = A158841 (n + 1)

end A158841

/-! ## A158841.P16457292534569999396

`A144328(n+1)+A323956(n+1)-1`
-/

namespace A158841.P16457292534569999396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + (A323956 (n + 1) - 1)

end

end A158841.P16457292534569999396

namespace A158841

/-- `A144328(n+1)+A323956(n+1)-1` -/
def P16457292534569999396.Spec : Prop :=
  ∀ n, P16457292534569999396.a n = A158841 (n + 1)

theorem P16457292534569999396.correct : P16457292534569999396.Spec := by
  intro n
  simp only [A158841, Nat.add_sub_cancel, A158841.P16457292534569999396.a, A158841.P12435815031069025361.a, A095834, A095834.P817103610530576889.a, A144328, A144328.P13677371458497017703.a, A323956, A323956.P11197926771404492179.a, A002260, A002260.P9170571874073898642.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A158841

/-! ## A158841.P13625030497704803193

`char[∑[n]]+A003056(n)*A004736(n+1)`
-/

namespace A158841.P13625030497704803193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A003056 n * A004736 (n + 1)

end

end A158841.P13625030497704803193

namespace A158841

/-- `char[∑[n]]+A003056(n)*A004736(n+1)` -/
def P13625030497704803193.Spec : Prop :=
  ∀ n, P13625030497704803193.a n = A158841 (n + 1)

end A158841

/-! ## A158841.P15574393248794210809

`A095834(n+1)+A028310(A002262(n))`
-/

namespace A158841.P15574393248794210809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (n + 1) + A028310 (A002262 n).toNat

end

end A158841.P15574393248794210809

namespace A158841

/-- `A095834(n+1)+A028310(A002262(n))` -/
def P15574393248794210809.Spec : Prop :=
  ∀ n, P15574393248794210809.a n = A158841 (n + 1)

end A158841

/-! ## A158841.P2387165080763922095

`A144328(n+1)+A091435(comp[∑[n]])`
-/

namespace A158841.P2387165080763922095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A091435 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A158841.P2387165080763922095

namespace A158841

/-- `A144328(n+1)+A091435(comp[∑[n]])` -/
def P2387165080763922095.Spec : Prop :=
  ∀ n, P2387165080763922095.a n = A158841 (n + 1)

end A158841

/-! ## A158841.P8018867975160514476

`2*n+1-A087156(A209297(n+1))`
-/

namespace A158841.P8018867975160514476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A087156 (A209297 (n + 1)).toNat

end

end A158841.P8018867975160514476

namespace A158841

/-- `2*n+1-A087156(A209297(n+1))` -/
def P8018867975160514476.Spec : Prop :=
  ∀ n, P8018867975160514476.a n = A158841 (n + 1)

end A158841

/-!
# A158842: a(n) = 1 + n*(n+1)*(n-1)/2.

The programs for A158842, the canonical program `A158842.P5650998236462169322` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158842 has offset 0).

The definition of A158842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158842.P5650998236462169322

`1+n*(n+1)*(n-1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158842

/-- `1+n*(n+1)*(n-1)/2` -/
def P5650998236462169322.Spec : Prop :=
  ∀ n, P5650998236462169322.a n = (A158842 n : ℚ)

end A158842

/-! ## A158842.P7962156749357779532

`-xor((n-1)*∑[n], -1)`
-/

namespace A158842.P7962156749357779532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (-1)

end

end A158842.P7962156749357779532

namespace A158842

/-- `-xor((n-1)*∑[n], -1)` -/
def P7962156749357779532.Spec : Prop :=
  ∀ n, P7962156749357779532.a n = A158842 n

end A158842

/-! ## A158842.P8486149379831683833

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A158842.P8486149379831683833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158842.P8486149379831683833

namespace A158842

/-- `∑[∑[a(n-1)+3]]` -/
def P8486149379831683833.Spec : Prop :=
  ∀ n, P8486149379831683833.a n = A158842 n

end A158842

/-! ## A158842.P5972372017263258977

`abs((n-1)*C(n+1, 2)+1)`
-/

namespace A158842.P5972372017263258977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * (Nat.choose (n + 1) 2 : ℤ) + 1|

end

end A158842.P5972372017263258977

namespace A158842

/-- `abs((n-1)*C(n+1, 2)+1)` -/
def P5972372017263258977.Spec : Prop :=
  ∀ n, P5972372017263258977.a n = A158842 n

end A158842

/-! ## A158842.P8980118169897584584

`∑[a(n-1)-3*(1-n)]` with `a(0)=1, a(1)=0`
-/

namespace A158842.P8980118169897584584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - 3 * (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158842.P8980118169897584584

namespace A158842

/-- `∑[a(n-1)-3*(1-n)]` -/
def P8980118169897584584.Spec : Prop :=
  ∀ n, P8980118169897584584.a n = A158842 n

end A158842

/-! ## A158842.P11002637308307275031

`(n+1)*(C(n, 2)+1/(n+1))`
-/

namespace A158842.P11002637308307275031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.choose n 2 : ℚ) + 1 / (n + 1 : ℚ))

end

end A158842.P11002637308307275031

namespace A158842

/-- `(n+1)*(C(n, 2)+1/(n+1))` -/
def P11002637308307275031.Spec : Prop :=
  ∀ n, P11002637308307275031.a n = (A158842 n : ℚ)

end A158842

/-! ## A158842.P18057113510586094296

`floor(n²-((2-a(n-1))/n-a(n-1)))` with `a(0)=1`
-/

namespace A158842.P18057113510586094296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n ^ 2 : ℚ) - ((2 - a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ))⌋

end

end A158842.P18057113510586094296

namespace A158842

/-- `floor(n²-((2-a(n-1))/n-a(n-1)))` -/
def P18057113510586094296.Spec : Prop :=
  ∀ n, P18057113510586094296.a n = A158842 n

end A158842

/-! ## A158842.P6310477631328760994

`ceil(A061600(n)/2)`
-/

namespace A158842.P6310477631328760994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061600 n : ℚ) / 2⌉

end

end A158842.P6310477631328760994

namespace A158842

/-- `ceil(A061600(n)/2)` -/
def P6310477631328760994.Spec : Prop :=
  ∀ n, P6310477631328760994.a n = A158842 n

end A158842

/-! ## A158842.P15739348346996092609

`(A084380(n)-n)/2`
-/

namespace A158842.P15739348346996092609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084380 n - (n : ℤ) : ℚ) / 2

end

end A158842.P15739348346996092609

namespace A158842

/-- `(A084380(n)-n)/2` -/
def P15739348346996092609.Spec : Prop :=
  ∀ n, P15739348346996092609.a n = (A158842 n : ℚ)

end A158842

/-! ## A158842.P7208785225030670778

`(A033445(n)+1+n)/2`
-/

namespace A158842.P7208785225030670778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033445 n + 1 + (n : ℤ) : ℚ) / 2

end

end A158842.P7208785225030670778

namespace A158842

/-- `(A033445(n)+1+n)/2` -/
def P7208785225030670778.Spec : Prop :=
  ∀ n, P7208785225030670778.a n = (A158842 n : ℚ)

end A158842

/-! ## A158842.P7968249233062670944

`(A084378(n)-(n+1))/2`
-/

namespace A158842.P7968249233062670944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084378 n - (n + 1 : ℤ) : ℚ) / 2

end

end A158842.P7968249233062670944

namespace A158842

/-- `(A084378(n)-(n+1))/2` -/
def P7968249233062670944.Spec : Prop :=
  ∀ n, P7968249233062670944.a n = (A158842 n : ℚ)

end A158842

/-! ## A158842.P15162186763023879900

`A085789(n+1)%A212836(n+1)`
-/

namespace A158842.P15162186763023879900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085789 (n + 1)) (A212836 (n + 1))

end

end A158842.P15162186763023879900

namespace A158842

/-- `A085789(n+1)%A212836(n+1)` -/
def P15162186763023879900.Spec : Prop :=
  ∀ n, P15162186763023879900.a n = A158842 n

end A158842

/-! ## A158842.P956069742863986358

`A114197(A167614(n+1))`
-/

namespace A158842.P956069742863986358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114197 (A167614 (n + 1)).toNat

end

end A158842.P956069742863986358

namespace A158842

/-- `A114197(A167614(n+1))` -/
def P956069742863986358.Spec : Prop :=
  ∀ n, P956069742863986358.a n = A158842 n

end A158842

/-! ## A158842.P6906543291551370212

`A114197(A046691(n+1))`
-/

namespace A158842.P6906543291551370212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114197 (A046691 (n + 1)).toNat

end

end A158842.P6906543291551370212

namespace A158842

/-- `A114197(A046691(n+1))` -/
def P6906543291551370212.Spec : Prop :=
  ∀ n, P6906543291551370212.a n = A158842 n

end A158842

/-!
# A158845: Numbers k such that prepending 1 to the k-th triangular number produces a prime.

The programs for A158845, there is no canonical definition to state claims against.
-/

/-! ## A158845.P13404731863772718195

`eq[1, A032662(abs(n²-(C(n, 2)+1)))]`
-/

namespace A158845.P13404731863772718195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 |(n ^ 2 : ℤ) - (Nat.choose n 2 + 1 : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158845.P13404731863772718195

/-! ## A158845.P3095781988877407903

`eq[1, A032662(A000096(n))]+1`
-/

namespace A158845.P3095781988877407903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A000096 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A158845.P3095781988877407903

/-! ## A158845.P16220681099372870826

`A002024(∩[A032664(n+1), A000217(n)])`
-/

namespace A158845.P16220681099372870826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A158845.P16220681099372870826

/-! ## A158845.P13565296729981818283

`A003056(∩[A032664(n+1), A000217(n)])`
-/

namespace A158845.P13565296729981818283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A158845.P13565296729981818283

/-!
# A158846: Primes which are removed with the algorithm of A156284, starting the selection with the interval (2^4, 2^5).

The programs for A158846, there is no canonical definition to state claims against.
-/

/-! ## A158846.P11698839182451810245

`p?[or(A347447(n+1), A347476(2*n+5))]`
-/

namespace A158846.P11698839182451810245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A347447 (n + 1)) (A347476 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158846.P11698839182451810245

/-!
# A158848: Prime numbers p where 2^k-p is prime, with k>6 and minimal.

The programs for A158848, the canonical program `A158848.P14497235281898123101` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158848 has offset 1).

The definition of A158848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086081, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158848.P14497235281898123101

`A086081(n+12)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A158848

/-- `A086081(n+12)` -/
def P14497235281898123101.Spec : Prop :=
  ∀ n, P14497235281898123101.a n = A158848 (n + 1)

theorem P14497235281898123101.correct : P14497235281898123101.Spec := by
  intro n
  simp only [A158848, Nat.add_sub_cancel]

end A158848

/-!
# A158850: Numbers k such that 30*k + 29 is prime.

The programs for A158850, the canonical program `A158850.P4164223774133924455` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158850 has offset 1).

The definition of A158850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132236, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158850.P4164223774133924455

`floor(A132236(n+1)/30)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A158850

/-- `floor(A132236(n+1)/30)` -/
def P4164223774133924455.Spec : Prop :=
  ∀ n, P4164223774133924455.a n = A158850 (n + 1)

theorem P4164223774133924455.correct : P4164223774133924455.Spec := by
  intro n
  simp only [A158850, Nat.add_sub_cancel]

end A158850

/-! ## A158850.P17949795281441558547

`eq[1, A001222(30*n+29)]`
-/

namespace A158850.P17949795281441558547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P17949795281441558547

namespace A158850

/-- `eq[1, A001222(30*n+29)]` -/
def P17949795281441558547.Spec : Prop :=
  ∀ n, (P17949795281441558547.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P245996017625530835

`eq[2, A000005(30*n+29)]`
-/

namespace A158850.P245996017625530835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * n + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P245996017625530835

namespace A158850

/-- `eq[2, A000005(30*n+29)]` -/
def P245996017625530835.Spec : Prop :=
  ∀ n, (P245996017625530835.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P2584105031269205238

`eq[30*n+29, A020639(30*n+29)]`
-/

namespace A158850.P2584105031269205238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (30 * n + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P2584105031269205238

namespace A158850

/-- `eq[30*n+29, A020639(30*n+29)]` -/
def P2584105031269205238.Spec : Prop :=
  ∀ n, (P2584105031269205238.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P11466292277191563531

`eq[1, A075743(A017377(n))]`
-/

namespace A158850.P11466292277191563531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P11466292277191563531

namespace A158850

/-- `eq[1, A075743(A017377(n))]` -/
def P11466292277191563531.Spec : Prop :=
  ∀ n, (P11466292277191563531.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P12431476468134834046

`lt[3*n+2, A020639(A017377(3*n+2))]`
-/

namespace A158850.P12431476468134834046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017377 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158850.P12431476468134834046

namespace A158850

/-- `lt[3*n+2, A020639(A017377(3*n+2))]` -/
def P12431476468134834046.Spec : Prop :=
  ∀ n, (P12431476468134834046.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P9076376581654603350

`eq[1, A167020(A008706(n+1))]`
-/

namespace A158850.P9076376581654603350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A008706 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P9076376581654603350

namespace A158850

/-- `eq[1, A167020(A008706(n+1))]` -/
def P9076376581654603350.Spec : Prop :=
  ∀ n, (P9076376581654603350.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P17113301269916497947

`eq[1, A167020(A016897(n)+1)]`
-/

namespace A158850.P17113301269916497947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A016897 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P17113301269916497947

namespace A158850

/-- `eq[1, A167020(A016897(n)+1)]` -/
def P17113301269916497947.Spec : Prop :=
  ∀ n, (P17113301269916497947.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P8389636274198950510

`eq[1, A167020(A016885(n)+2)]`
-/

namespace A158850.P8389636274198950510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A016885 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P8389636274198950510

namespace A158850

/-- `eq[1, A167020(A016885(n)+2)]` -/
def P8389636274198950510.Spec : Prop :=
  ∀ n, (P8389636274198950510.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P14888286434475566959

`eq[2, A060324(A008592(n+1))]`
-/

namespace A158850.P14888286434475566959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A008592 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P14888286434475566959

namespace A158850

/-- `eq[2, A060324(A008592(n+1))]` -/
def P14888286434475566959.Spec : Prop :=
  ∀ n, (P14888286434475566959.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P10243994901584799957

`eq[2, A060324(A017365(n)+2)]`
-/

namespace A158850.P10243994901584799957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A017365 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P10243994901584799957

namespace A158850

/-- `eq[2, A060324(A017365(n)+2)]` -/
def P10243994901584799957.Spec : Prop :=
  ∀ n, (P10243994901584799957.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P11218712833719244872

`eq[1, A103961(A257645(n)+1)]`
-/

namespace A158850.P11218712833719244872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A257645 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158850.P11218712833719244872

namespace A158850

/-- `eq[1, A103961(A257645(n)+1)]` -/
def P11218712833719244872.Spec : Prop :=
  ∀ n, (P11218712833719244872.a n : ℤ) = A158850 (n + 1)

end A158850

/-! ## A158850.P4144646005175335813

`record[n%A014963(30*n+29)]`
-/

namespace A158850.P4144646005175335813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (30 * n + 29))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158850.P4144646005175335813

namespace A158850

/-- `record[n%A014963(30*n+29)]` -/
def P4144646005175335813.Spec : Prop :=
  ∀ n, P4144646005175335813.a n = A158850 (n + 1)

end A158850

/-! ## A158850.P7110039300841120722

`A008651(A132236(n+1))`
-/

namespace A158850.P7110039300841120722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A132236 (n + 1)).toNat

end

end A158850.P7110039300841120722

namespace A158850

/-- `A008651(A132236(n+1))` -/
def P7110039300841120722.Spec : Prop :=
  ∀ n, P7110039300841120722.a n = A158850 (n + 1)

end A158850

/-! ## A158850.P9886242394183817912

`A008651(p?[A249674(n)-1])`
-/

namespace A158850.P9886242394183817912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158850.P9886242394183817912

namespace A158850

/-- `A008651(p?[A249674(n)-1])` -/
def P9886242394183817912.Spec : Prop :=
  ∀ n, P9886242394183817912.a n = A158850 (n + 1)

end A158850

/-!
# A158851: a(n) = lcm(1,2,3,...,n) mod (n+1).

The programs for A158851, the canonical program `A158851.P1026612511081985715` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158851 has offset 1).

The definition of A158851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158851.P1026612511081985715

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]%(n+2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158851

/-- `∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]%(n+2)` -/
def P1026612511081985715.Spec : Prop :=
  ∀ n, P1026612511081985715.a n = A158851 (n + 1)

theorem P1026612511081985715.correct : P1026612511081985715.Spec := by
  intro n
  simp only [A158851, Nat.add_sub_cancel]

end A158851

/-! ## A158851.P11159090623977745769

`Δ[A173185(n)]%(n+2)`
-/

namespace A158851.P11159090623977745769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)

end

end A158851.P11159090623977745769

namespace A158851

/-- `Δ[A173185(n)]%(n+2)` -/
def P11159090623977745769.Spec : Prop :=
  ∀ n, P11159090623977745769.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P16361734506576385493

`Δ[A236856(n)]%(n+2)`
-/

namespace A158851.P16361734506576385493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)

end

end A158851.P16361734506576385493

namespace A158851

/-- `Δ[A236856(n)]%(n+2)` -/
def P16361734506576385493.Spec : Prop :=
  ∀ n, P16361734506576385493.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P1777405455815717563

`A003418(n+1)%(n+2)`
-/

namespace A158851.P1777405455815717563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003418 (n + 1)) (n + 2 : ℤ)

end

end A158851.P1777405455815717563

namespace A158851

/-- `A003418(n+1)%(n+2)` -/
def P1777405455815717563.Spec : Prop :=
  ∀ n, P1777405455815717563.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P9458135998735261065

`(A070198(n)+1)%(n+2)`
-/

namespace A158851.P9458135998735261065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n + 1) (n + 2 : ℤ)

end

end A158851.P9458135998735261065

namespace A158851

/-- `(A070198(n)+1)%(n+2)` -/
def P9458135998735261065.Spec : Prop :=
  ∀ n, P9458135998735261065.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P9055707049839867134

`A195507(n+2)%(n+2)`
-/

namespace A158851.P9055707049839867134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195507 (n + 2)) (n + 2 : ℤ)

end

end A158851.P9055707049839867134

namespace A158851

/-- `A195507(n+2)%(n+2)` -/
def P9055707049839867134.Spec : Prop :=
  ∀ n, P9055707049839867134.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P17942225165998503538

`∏[A014963(n+1)]%(n+2)`
-/

namespace A158851.P17942225165998503538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A158851.P17942225165998503538

namespace A158851

/-- `∏[A014963(n+1)]%(n+2)` -/
def P17942225165998503538.Spec : Prop :=
  ∀ n, P17942225165998503538.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P14863396192543692456

`(A236856(n+1)-A236856(n))%(n+2)`
-/

namespace A158851.P14863396192543692456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236856 (n + 1) - A236856 n) (n + 2 : ℤ)

end

end A158851.P14863396192543692456

namespace A158851

/-- `(A236856(n+1)-A236856(n))%(n+2)` -/
def P14863396192543692456.Spec : Prop :=
  ∀ n, P14863396192543692456.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P11526129451130265270

`A081530(n+1)%(n+2)`
-/

namespace A158851.P11526129451130265270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081530 (n + 1)) (n + 2 : ℤ)

end

end A158851.P11526129451130265270

namespace A158851

/-- `A081530(n+1)%(n+2)` -/
def P11526129451130265270.Spec : Prop :=
  ∀ n, P11526129451130265270.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P12918946372843185799

`A094308(n+2)%(n+2)`
-/

namespace A158851.P12918946372843185799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094308 (n + 2)) (n + 2 : ℤ)

end

end A158851.P12918946372843185799

namespace A158851

/-- `A094308(n+2)%(n+2)` -/
def P12918946372843185799.Spec : Prop :=
  ∀ n, P12918946372843185799.a n = A158851 (n + 1)

end A158851

/-! ## A158851.P13112036660651763629

`A181063(n+1)%(n+2)`
-/

namespace A158851.P13112036660651763629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181063 (n + 1)) (n + 2 : ℤ)

end

end A158851.P13112036660651763629

namespace A158851

/-- `A181063(n+1)%(n+2)` -/
def P13112036660651763629.Spec : Prop :=
  ∀ n, P13112036660651763629.a n = A158851 (n + 1)

end A158851

/-!
# A158852: a(n), a(n+1), a(n+2), for n=5,8,11,... are respectively the numbers of representations of the integers 2^k-2, 2^k, 2^k+2, where k=(n+4)/3, by unordered sums of two odd primes not belonging to A158759.

The programs for A158852, there is no canonical definition to state claims against.
-/

/-! ## A158852.P15579040804569312143

`A261096(and(A261091(3*n+1), A261098(n)))`
-/

namespace A158852.P15579040804569312143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 (Int.land (A261091 (3 * n + 1)) (A261098 n)).toNat

end

end A158852.P15579040804569312143

/-! ## A158852.P10901193469549400594

`A099717(n)%A119447(n+1)`
-/

namespace A158852.P10901193469549400594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099717 n) (A119447 (n + 1))

end

end A158852.P10901193469549400594

/-! ## A158852.P8494673661431694072

`A285491(2^n+1)%A057036(n+2)`
-/

namespace A158852.P8494673661431694072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285491 (2 ^ n + 1)) (A057036 (n + 2))

end

end A158852.P8494673661431694072

/-! ## A158852.P9664381739729892661

`A065363(A123203(n+1)+A006053(n))`
-/

namespace A158852.P9664381739729892661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (A123203 (n + 1) + A006053 n).toNat

end

end A158852.P9664381739729892661

/-! ## A158852.P14569073805394367417

`A133457(A346893(n)+A323300(n+1))`
-/

namespace A158852.P14569073805394367417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133457 (A346893 n + A323300 (n + 1)).toNat

end

end A158852.P14569073805394367417

/-!
# A158856: Triangle T(n, k) = coefficients of p(n, x), where p(n, x) = (1 - x^(2+floor((n-1)/2)))*(1 + (-1)^floor(n/2)*x^(1+floor(n/2))), read by rows.

The programs for A158856, there is no canonical definition to state claims against.
-/

/-! ## A158856.P6865759701698584668

`A092220(A135086(n+1))^n`
-/

namespace A158856.P6865759701698584668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (A135086 (n + 1)).toNat ^ n

end

end A158856.P6865759701698584668

/-! ## A158856.P14006743554483253631

`and(A033999(n), A092220(A135086(n+1)))`
-/

namespace A158856.P14006743554483253631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A092220 (A135086 (n + 1)).toNat)

end

end A158856.P14006743554483253631

/-! ## A158856.P4514624764907739534

`and(A092220(A135086(n+1)), A094267(n²))`
-/

namespace A158856.P4514624764907739534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092220 (A135086 (n + 1)).toNat) (A094267 (n ^ 2))

end

end A158856.P4514624764907739534

/-! ## A158856.P16473669677296273993

`(A318438(A194959(n+1))%(4-gcd(2, n)))^n²`
-/

namespace A158856.P16473669677296273993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318438 (A194959 (n + 1)).toNat) (4 - (Nat.gcd 2 n : ℤ)) ^ n ^ 2

end

end A158856.P16473669677296273993

/-! ## A158856.P1996908470073467538

`A128834(A135086(n+1)²)^n`
-/

namespace A158856.P1996908470073467538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A135086 (n + 1) ^ 2).toNat ^ n

end

end A158856.P1996908470073467538

/-!
# A158859: a(n) is formed by 2n+1 concatenations of the digit 2r+1 where n=r (mod 5).

The programs for A158859, there is no canonical definition to state claims against.
-/

/-! ## A158859.P7073723542247784061

`record[A274206(n+1)*A282797(n)]`
-/

namespace A158859.P7073723542247784061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1) * A282797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158859.P7073723542247784061

/-! ## A158859.P7940883541554070030

`A274206(2*n+1)*A282797(2*n)`
-/

namespace A158859.P7940883541554070030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (2 * n + 1) * A282797 (2 * n)

end

end A158859.P7940883541554070030

/-! ## A158859.P16214533395262535985

`A000042(2*n+1)*A065881(Δ[n²])`
-/

namespace A158859.P16214533395262535985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (2 * n + 1) * A065881 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158859.P16214533395262535985

/-! ## A158859.P18287951613062186062

`A002275(2*n+1)*A010879(2*n+1)`
-/

namespace A158859.P18287951613062186062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (2 * n + 1) * A010879 (2 * n + 1)

end

end A158859.P18287951613062186062

/-! ## A158859.P7378849591812065457

`record[A000265(A052429(n+1))*A282796(n)]`
-/

namespace A158859.P7378849591812065457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A052429 (n + 1)).toNat * A282796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158859.P7378849591812065457

/-!
# A158860: Triangle T(n,k)= ( 1 +T(n-1,k)*T(n,k-1) ) / T(n-1,k-1) initialized by T(n,0)=3n-2, T(n,k)=0 if k>=n, read by rows 0<=k

The programs for A158860, the canonical program `A158860.P13075608006886010800` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158860 has offset 1).

The definition of A158860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158860.P7872953639948162197

`A131894(n)-∑[2*char[∑[n+1]]]`
-/

namespace A158860.P7872953639948162197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131894 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A158860.P7872953639948162197

namespace A158860

/-- `A131894(n)-∑[2*char[∑[n+1]]]` -/
def P7872953639948162197.Spec : Prop :=
  ∀ n, P7872953639948162197.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P13075608006886010800

`ceil(3/a(n-1))*A025581(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A158860

/-- `ceil(3/a(n-1))*A025581(n)+1` -/
def P13075608006886010800.Spec : Prop :=
  ∀ n, P13075608006886010800.a n = A158860 (n + 1)

theorem P13075608006886010800.correct : P13075608006886010800.Spec := by
  intro n
  simp only [A158860, Nat.add_sub_cancel]

end A158860

/-! ## A158860.P13999775675098538057

`A028310(Δ[round(sqrt(2*n))²])+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A158860.P13999775675098538057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A158860.P13999775675098538057

namespace A158860

/-- `A028310(Δ[round(sqrt(2*n))²])+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P13999775675098538057.Spec : Prop :=
  ∀ n, P13999775675098538057.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P685704244616398830

`A093178(Δ[round(sqrt(2*n))²])+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A158860.P685704244616398830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (n + 1) - f1 n).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A158860.P685704244616398830

namespace A158860

/-- `A093178(Δ[round(sqrt(2*n))²])+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P685704244616398830.Spec : Prop :=
  ∀ n, P685704244616398830.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P15630891739949930433

`A004273(round(sqrt(2*n))*char[∑[n]]+1)+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A158860.P15630891739949930433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A158860.P15630891739949930433

namespace A158860

/-- `A004273(round(sqrt(2*n))*char[∑[n]]+1)+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P15630891739949930433.Spec : Prop :=
  ∀ n, P15630891739949930433.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P16222258684625979422

`C(comp[∑[n]]-n, 2)-(n+1)-A165747(round(sqrt(2*n))*char[∑[n]]+1)`
-/

namespace A158860.P16222258684625979422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) - A165747 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A158860.P16222258684625979422

namespace A158860

/-- `C(comp[∑[n]]-n, 2)-(n+1)-A165747(round(sqrt(2*n))*char[∑[n]]+1)` -/
def P16222258684625979422.Spec : Prop :=
  ∀ n, P16222258684625979422.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P287744581070639995

`A123684(A143956(n+1))`
-/

namespace A158860.P287744581070639995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A143956 (n + 1)).toNat

end

end A158860.P287744581070639995

namespace A158860

/-- `A123684(A143956(n+1))` -/
def P287744581070639995.Spec : Prop :=
  ∀ n, P287744581070639995.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P4446818270640312445

`A266285(A185782(n+1))`
-/

namespace A158860.P4446818270640312445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (A185782 (n + 1)).toNat

end

end A158860.P4446818270640312445

namespace A158860

/-- `A266285(A185782(n+1))` -/
def P4446818270640312445.Spec : Prop :=
  ∀ n, P4446818270640312445.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P9699390180267983200

`A025581(n)+or(1, A198954(n))`
-/

namespace A158860.P9699390180267983200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + Int.lor 1 (A198954 n)

end

end A158860.P9699390180267983200

namespace A158860

/-- `A025581(n)+or(1, A198954(n))` -/
def P9699390180267983200.Spec : Prop :=
  ∀ n, P9699390180267983200.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P5959232200992435882

`A130296(n+1)+A130303(n+1)-1`
-/

namespace A158860.P5959232200992435882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A130303 (n + 1) - 1)

end

end A158860.P5959232200992435882

namespace A158860

/-- `A130296(n+1)+A130303(n+1)-1` -/
def P5959232200992435882.Spec : Prop :=
  ∀ n, P5959232200992435882.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P15227060210768575097

`A130296(n+1)+A131414(n+1)-A130302(n+1)`
-/

namespace A158860.P15227060210768575097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A131414 (n + 1) - A130302 (n + 1))

end

end A158860.P15227060210768575097

namespace A158860

/-- `A130296(n+1)+A131414(n+1)-A130302(n+1)` -/
def P15227060210768575097.Spec : Prop :=
  ∀ n, P15227060210768575097.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P10563426609368874003

`A144112(record[xor(1, n)+round(sqrt(n+1))²])+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A158860.P10563426609368874003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A158860.P10563426609368874003

namespace A158860

/-- `A144112(record[xor(1, n)+round(sqrt(n+1))²])+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P10563426609368874003.Spec : Prop :=
  ∀ n, P10563426609368874003.a n = A158860 (n + 1)

end A158860

/-! ## A158860.P4830170777464449310

`A193739(Δ[round(sqrt(2*n))²]²+n)`
-/

namespace A158860.P4830170777464449310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 ((f1 (n + 1) - f1 n) ^ 2 + (n : ℤ)).toNat

end

end A158860.P4830170777464449310

namespace A158860

/-- `A193739(Δ[round(sqrt(2*n))²]²+n)` -/
def P4830170777464449310.Spec : Prop :=
  ∀ n, P4830170777464449310.a n = A158860 (n + 1)

end A158860

/-!
# A158861: The lesser of twin prime pairs with each prime in a different millennia.

The programs for A158861, there is no canonical definition to state claims against.
-/

/-! ## A158861.P9028085642919735675

`∩[A158277(n+1), A167292(n+1)]`
-/

namespace A158861.P9028085642919735675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158861.P9028085642919735675

/-! ## A158861.P5350372859228793479

`p?[abs(2-p?[n*1000+1])]`
-/

namespace A158861.P5350372859228793479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 1000 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158861.P5350372859228793479

/-! ## A158861.P9141076722600991048

`p?[p?[5*(10*20*(n+1)+4)-19]-2]`
-/

namespace A158861.P9141076722600991048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (10 * (20 * (n + 1)) + 4) : ℤ) - 19

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158861.P9141076722600991048

/-! ## A158861.P11404189380964578682

`p?[A156655(n+1)-2]`
-/

namespace A158861.P11404189380964578682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156655 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158861.P11404189380964578682

/-!
# A158862: Numbers k such that prepending 3 to the k-th triangular number produces a prime.

The programs for A158862, there is no canonical definition to state claims against.
-/

/-! ## A158862.P11722077467260144341

`A089911(A331371(n+1))+A068228(n+1)`
-/

namespace A158862.P11722077467260144341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 (A331371 (n + 1)).toNat + A068228 (n + 1)

end

end A158862.P11722077467260144341

/-!
# A158864: Numbers k such that prepending 6 to the k-th triangular number produces a prime.

The programs for A158864, there is no canonical definition to state claims against.
-/

/-! ## A158864.P12248044964803870700

`A023172(3*(n+1))-A099837(A340658(3*n+4))`
-/

namespace A158864.P12248044964803870700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (3 * (n + 1)) - A099837 (A340658 (3 * n + 4)).toNat

end

end A158864.P12248044964803870700

/-!
# A158865: Smallest maximal excess attained by an equivalence class of Hadamard matrices of order 4n.

The programs for A158865, there is no canonical definition to state claims against.
-/

/-! ## A158865.P12428429288250888835

`∑[4*comp[10^n]]`
-/

namespace A158865.P12428429288250888835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158865.P12428429288250888835

/-! ## A158865.P10658837179987896728

`4*(∑[dr(n)]+n)`
-/

namespace A158865.P10658837179987896728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A158865.P10658837179987896728

/-! ## A158865.P10163233606201949104

`2*(n+3)*dr(n)`
-/

namespace A158865.P10163233606201949104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3) * SequenceMachineLib.digitalRoot (n : ℤ))

end

end A158865.P10163233606201949104

/-!
# A158866: Indices of twin primes if the sum of these twin primes+1 is an upper twin prime.

The programs for A158866, there is no canonical definition to state claims against.
-/

/-! ## A158866.P17811464157710278

`eq[2, A195104(n+1)]+1`
-/

namespace A158866.P17811464157710278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A158866.P17811464157710278

/-! ## A158866.P7938370522694592555

`A020725(eq[2, A195104(n+1)])`
-/

namespace A158866.P7938370522694592555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A158866.P7938370522694592555

/-! ## A158866.P16974208759498674671

`A071538(A066388(n+1))`
-/

namespace A158866.P16974208759498674671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A066388 (n + 1)).toNat

end

end A158866.P16974208759498674671

/-! ## A158866.P2788770651269673550

`A071538(A069142(n+1))`
-/

namespace A158866.P2788770651269673550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A069142 (n + 1)).toNat

end

end A158866.P2788770651269673550

/-! ## A158866.P17434518030669205872

`A071538(A261463(n+2))`
-/

namespace A158866.P17434518030669205872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A261463 (n + 2)).toNat

end

end A158866.P17434518030669205872

/-!
# A158867: Triangle T(n, k) = (2*n+1)!! * 2^(1 + floor(n/2) + floor(k/2) + floor((k-1)/2)) * Beta(floor(n/2) + floor((k-1)/2) + 2, floor((n-1)/2) + floor(k/2) + 2), read by rows.

The programs for A158867, there is no canonical definition to state claims against.
-/

/-! ## A158867.P9958727409315510593

`A060546(A002262(n))*A158868(n+1)`
-/

namespace A158867.P9958727409315510593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A002262 n).toNat * A158868 (n + 1)

end

end A158867.P9958727409315510593

/-! ## A158867.P492771655534973437

`A016116(A002260(n+1))*A158868(n+1)`
-/

namespace A158867.P492771655534973437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002260 (n + 1)).toNat * A158868 (n + 1)

end

end A158867.P492771655534973437

/-! ## A158867.P2054746898364871088

`A059261(A059268(n))*A158868(n+1)`
-/

namespace A158867.P2054746898364871088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A059268 n).toNat * A158868 (n + 1)

end

end A158867.P2054746898364871088

/-!
# A158868: Triangle T(n, k) = (2*n+1)!! * 2^(floor((n-1)/2) + floor(k/2) + 1) * Beta(floor(n/2) + floor((k-1)/2) + 2, floor((n-1)/2) + floor(k/2) + 2), read by rows.

The programs for A158868, there is no canonical definition to state claims against.
-/

/-! ## A158868.P12144273974495528132

`A158867(n+1)/A060546(A002262(n))`
-/

namespace A158868.P12144273974495528132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158867 (n + 1) : ℚ) / (A060546 (A002262 n).toNat : ℚ)

end

end A158868.P12144273974495528132

/-! ## A158868.P6097350819910484339

`A158867(n+1)/A016116(A002260(n+1))`
-/

namespace A158868.P6097350819910484339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158867 (n + 1) : ℚ) / (A016116 (A002260 (n + 1)).toNat : ℚ)

end

end A158868.P6097350819910484339

/-! ## A158868.P16885336893329621528

`A158867(n+1)/A059261(A059268(n))`
-/

namespace A158868.P16885336893329621528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158867 (n + 1) : ℚ) / (A059261 (A059268 n).toNat : ℚ)

end

end A158868.P16885336893329621528

/-!
# A158869: Number of ways of filling a 2 X 3 X 2n hole with 1 X 2 X 2 bricks.

The programs for A158869, the canonical program `A158869.P10866109770096228640` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158869 has offset 0).

The definition of A158869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158869.P10866109770096228640

`6*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158869

/-- `6*a(n-1)-3*a(n-2)` -/
def P10866109770096228640.Spec : Prop :=
  ∀ n, P10866109770096228640.a n = A158869 n

theorem P10866109770096228640.correct : P10866109770096228640.Spec := by
  intro n
  simp only [A158869]

end A158869

/-! ## A158869.P12535269968517338047

`1/6*((3+sqrt(6))^(n+1)+(3-sqrt(6))^(n+1))`
-/

namespace A158869.P12535269968517338047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 6 : ℝ) * ((3 + Real.sqrt (6 : ℝ)) ^ (n + 1) + (3 - Real.sqrt (6 : ℝ)) ^ (n + 1))

end

end A158869.P12535269968517338047

namespace A158869

/-- `1/6*((3+sqrt(6))^(n+1)+(3-sqrt(6))^(n+1))` -/
def P12535269968517338047.Spec : Prop :=
  ∀ n, P12535269968517338047.a n = (A158869 n : ℝ)

theorem P12535269968517338047.correct : P12535269968517338047.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A158869, Nat.add_sub_cancel, A158869.P12535269968517338047.a, A158869.P10866109770096228640.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A158869, Nat.add_sub_cancel, A158869.P12535269968517338047.a, A158869.P10866109770096228640.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A158869

/-! ## A158869.P14128945746506444015

`ogf((1-x)/(1-6x+3x^2))`
-/

namespace A158869.P14128945746506444015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 3] n

end

end A158869.P14128945746506444015

namespace A158869

/-- `ogf((1-x)/(1-6x+3x^2))` -/
def P14128945746506444015.Spec : Prop :=
  ∀ n, P14128945746506444015.a n = A158869 n

end A158869

/-! ## A158869.P9840470937723073445

`floor((sqrt(6)+3)*a(n-1))` with `a(0)=1`
-/

namespace A158869.P9840470937723073445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (6 : ℝ) + 3) * (a (n - 1) : ℝ)⌋

end

end A158869.P9840470937723073445

namespace A158869

/-- `floor((sqrt(6)+3)*a(n-1))` -/
def P9840470937723073445.Spec : Prop :=
  ∀ n, P9840470937723073445.a n = A158869 n

end A158869

/-! ## A158869.P11342712195267411598

`∑[ceil((sqrt(6)+3)*a(n-1))]` with `a(0)=1, a(1)=4`
-/

namespace A158869.P11342712195267411598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  ⌈(Real.sqrt (6 : ℝ) + 3) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158869.P11342712195267411598

namespace A158869

/-- `∑[ceil((sqrt(6)+3)*a(n-1))]` -/
def P11342712195267411598.Spec : Prop :=
  ∀ n, P11342712195267411598.a n = A158869 n

end A158869

/-! ## A158869.P15736616377033573143

`A084120(n+1)/3`
-/

namespace A158869.P15736616377033573143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084120 (n + 1) : ℚ) / 3

end

end A158869.P15736616377033573143

namespace A158869

/-- `A084120(n+1)/3` -/
def P15736616377033573143.Spec : Prop :=
  ∀ n, P15736616377033573143.a n = (A158869 n : ℚ)

end A158869

/-! ## A158869.P8537110812216185421

`Δ[∑[A084120(n)]/3]`
-/

namespace A158869.P8537110812216185421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084120 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158869.P8537110812216185421

namespace A158869

/-- `Δ[∑[A084120(n)]/3]` -/
def P8537110812216185421.Spec : Prop :=
  ∀ n, P8537110812216185421.a n = (A158869 n : ℚ)

end A158869

/-! ## A158869.P6783636303875496138

`2*A138395(n+1)-A164550(n)`
-/

namespace A158869.P6783636303875496138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138395 (n + 1) - A164550 n

end

end A158869.P6783636303875496138

namespace A158869

/-- `2*A138395(n+1)-A164550(n)` -/
def P6783636303875496138.Spec : Prop :=
  ∀ n, P6783636303875496138.a n = A158869 n

end A158869

/-! ## A158869.P6750336293251833173

`Δ[A109112(n)%A138395(n+1)]`
-/

namespace A158869.P6750336293251833173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109112 n) (A138395 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158869.P6750336293251833173

namespace A158869

/-- `Δ[A109112(n)%A138395(n+1)]` -/
def P6750336293251833173.Spec : Prop :=
  ∀ n, P6750336293251833173.a n = A158869 n

end A158869

/-!
# A158870: Sums of the form (twin primes + 1) which are also an upper twin prime.

The programs for A158870, there is no canonical definition to state claims against.
-/

/-! ## A158870.P15528056088572999592

`A076504(n+1)+1`
-/

namespace A158870.P15528056088572999592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076504 (n + 1) + 1

end

end A158870.P15528056088572999592

/-! ## A158870.P14698522075476021082

`2*A066388(n+1)+1`
-/

namespace A158870.P14698522075476021082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066388 (n + 1) + 1

end

end A158870.P14698522075476021082

/-! ## A158870.P10643841270065973305

`2*A069142(n+1)+3`
-/

namespace A158870.P10643841270065973305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069142 (n + 1) + 3

end

end A158870.P10643841270065973305

/-! ## A158870.P4263977431900361925

`12*A177680(n+1)+1`
-/

namespace A158870.P4263977431900361925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A177680 (n + 1) + 1

end

end A158870.P4263977431900361925

/-! ## A158870.P10316892163677331641

`2*A261463(n+2)+3`
-/

namespace A158870.P10316892163677331641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261463 (n + 2) + 3

end

end A158870.P10316892163677331641

/-! ## A158870.P17775398523908996061

`2*A221310(n+4)+1`
-/

namespace A158870.P17775398523908996061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221310 (n + 4) + 1

end

end A158870.P17775398523908996061

/-! ## A158870.P12590711881514446174

`∩[A176831(n+2)+2, A176831(n+2)]`
-/

namespace A158870.P12590711881514446174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176831 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176831 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P12590711881514446174

/-! ## A158870.P10679551173127786367

`∩[A071699(n+1), A118071(n+1)]`
-/

namespace A158870.P10679551173127786367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P10679551173127786367

/-! ## A158870.P15319516794944490535

`∩[A089965(n+1), A167597(n+1)]+1`
-/

namespace A158870.P15319516794944490535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A158870.P15319516794944490535

/-! ## A158870.P7272373548411472650

`A054735(A158866(n+1))+1`
-/

namespace A158870.P7272373548411472650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (A158866 (n + 1)).toNat + 1

end

end A158870.P7272373548411472650

/-! ## A158870.P15118783103560217434

`∩[A054735(n+1), A167597(n+1)]+1`
-/

namespace A158870.P15118783103560217434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A158870.P15118783103560217434

/-! ## A158870.P13296710461111024669

`∩[A054735(n+1), A370395(n+1)]+1`
-/

namespace A158870.P13296710461111024669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A158870.P13296710461111024669

/-! ## A158870.P14725381665786888694

`∩[A112928(n+1), A118071(n+1)]`
-/

namespace A158870.P14725381665786888694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P14725381665786888694

/-! ## A158870.P11483332155754685900

`∩[A118071(n+1), A162876(n+1)]`
-/

namespace A158870.P11483332155754685900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P11483332155754685900

/-! ## A158870.P2526317372641356667

`∩[A006512(n+1), A118071(n+1)]`
-/

namespace A158870.P2526317372641356667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P2526317372641356667

/-! ## A158870.P12061214713267469778

`∩[A064077(n+1), A118071(n+1)]`
-/

namespace A158870.P12061214713267469778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P12061214713267469778

/-! ## A158870.P8989710901676081862

`∩[A067829(n+1), A118071(n+1)]`
-/

namespace A158870.P8989710901676081862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P8989710901676081862

/-! ## A158870.P9844698716014233543

`∩[A118071(n+1), A123079(n+1)]`
-/

namespace A158870.P9844698716014233543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P9844698716014233543

/-! ## A158870.P8908207334373852179

`∩[A118071(n+1), A172057(n+1)]`
-/

namespace A158870.P8908207334373852179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P8908207334373852179

/-! ## A158870.P9152551848325128288

`∩[A118071(n+1), A267945(n+1)]`
-/

namespace A158870.P9152551848325128288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158870.P9152551848325128288

/-!
# A158871: Those positive integers m where (the number of integers k, 0 <= k <= m, where the binomial coefficient C(m,k) is divisible by m) > (the number of positive integers <= m and coprime to m).

The programs for A158871, there is no canonical definition to state claims against.
-/

/-! ## A158871.P887521974748766573

`lt[A000010(abs(1-n)+1), A020475(n)]`
-/

namespace A158871.P887521974748766573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020475 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158871.P887521974748766573

/-! ## A158871.P11718889754133894864

`lt[A007012(n), A028310(A062830(n))]`
-/

namespace A158871.P11718889754133894864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062830 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158871.P11718889754133894864

/-! ## A158871.P7650038264759373444

`lt[A328449(n), A051556(n+1)]+1`
-/

namespace A158871.P7650038264759373444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A158871.P7650038264759373444

/-! ## A158871.P12704992718283019861

`lt[A337339(n+1), A299281(A327778(n))]`
-/

namespace A158871.P12704992718283019861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299281 (A327778 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158871.P12704992718283019861

/-! ## A158871.P11647356969007931039

`record[A024619(n+1)%A070061(A342577(n))]`
-/

namespace A158871.P11647356969007931039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024619 (n + 1)) (A070061 (A342577 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158871.P11647356969007931039

/-!
# A158872: G.f.: A(x) = exp(Sum_{n>=1} A158873(n)*x^n/n) = exp(Sum_{n>=1} (1 + A158873(n)*x)^n*x^n/n).

The programs for A158872, there is no canonical definition to state claims against.
-/

/-! ## A158872.P7677608713061178624

`A048774(n)+floor(n/3)`
-/

namespace A158872.P7677608713061178624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048774 n + ⌊(n : ℚ) / 3⌋

end

end A158872.P7677608713061178624

/-! ## A158872.P12684780164273142113

`A288530(n^floor((n/2)²))`
-/

namespace A158872.P12684780164273142113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288530 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊((n : ℚ) / 2) ^ 2⌋ : ℤ))).toNat

end

end A158872.P12684780164273142113

/-!
# A158873: L.g.f.: Sum_{n>=1} a(n)*x^n/n = Sum_{n>=1} (1 + a(n)*x)^n * x^n/n.

The programs for A158873, there is no canonical definition to state claims against.
-/

/-! ## A158873.P7912222871537311945

`A234741(A113725(n+1)+n)`
-/

namespace A158873.P7912222871537311945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 (A113725 (n + 1) + (n : ℤ)).toNat

end

end A158873.P7912222871537311945

/-!
# A158874: a(n) = (n + 4)*(n + 3)*(n + 2)*(n + 1)*n / 5 = 24*A000389(n+4).

The programs for A158874, the canonical program `A158874.P5308552197139117171` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158874 has offset 0).

The definition of A158874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)*(n+3)*(n+2)*(n+1)*n/5` (program `A158874.P10430715486460636847`, by `A158874.P10430715486460636847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158874.P10430715486460636847

`(n+4)*(n+3)*(n+2)*(n+1)*n/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158874.P10430715486460636847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 4) * (n + 3) * (n + 2) * (n + 1) * n : ℚ) / 5

end

end A158874.P10430715486460636847

namespace A158874

/-- `(n+4)*(n+3)*(n+2)*(n+1)*n/5` -/
def P10430715486460636847.Spec : Prop :=
  ∀ n, P10430715486460636847.a n = (A158874 n : ℚ)

theorem P10430715486460636847.correct : P10430715486460636847.Spec := by
  intro n
  simp only [A158874, Nat.add_sub_cancel, A158874.P10430715486460636847.a, A158874.P5308552197139117171.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A158874

/-! ## A158874.P5308552197139117171

`24*A000389(n+4)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A158874

/-- `24*A000389(n+4)` -/
def P5308552197139117171.Spec : Prop :=
  ∀ n, P5308552197139117171.a n = A158874 n

theorem P5308552197139117171.correct : P5308552197139117171.Spec := by
  intro n
  simp only [A158874]

end A158874

/-! ## A158874.P16042969154146265093

`24*C(n+4, 5)`
-/

namespace A158874.P16042969154146265093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose (n + 4) 5

end

end A158874.P16042969154146265093

namespace A158874

/-- `24*C(n+4, 5)` -/
def P16042969154146265093.Spec : Prop :=
  ∀ n, (P16042969154146265093.a n : ℤ) = A158874 n

theorem P16042969154146265093.correct : P16042969154146265093.Spec := by
  intro n
  simp only [A158874, Nat.add_sub_cancel, A158874.P16042969154146265093.a, A158874.P5308552197139117171.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A158874

/-! ## A158874.P18038381901016070117

`2*∑[lcm(n+2, n+3)*∑[n]]`
-/

namespace A158874.P18038381901016070117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158874.P18038381901016070117

namespace A158874

/-- `2*∑[lcm(n+2, n+3)*∑[n]]` -/
def P18038381901016070117.Spec : Prop :=
  ∀ n, (P18038381901016070117.a n : ℤ) = A158874 n

end A158874

/-! ## A158874.P17841572918441258813

`∑[∑[a(n-1)+2]²]-(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A158874.P17841572918441258813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A158874.P17841572918441258813

namespace A158874

/-- `∑[∑[a(n-1)+2]²]-(n+1)` -/
def P17841572918441258813.Spec : Prop :=
  ∀ n, P17841572918441258813.a n = A158874 n

end A158874

/-! ## A158874.P11710249124988097003

`((n+1)²+n)²+a(n-1)-1` with `a(0)=0`
-/

namespace A158874.P11710249124988097003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((n + 1) ^ 2 + n) ^ 2 : ℤ) + (a (n - 1) - 1)

end

end A158874.P11710249124988097003

namespace A158874

/-- `((n+1)²+n)²+a(n-1)-1` -/
def P11710249124988097003.Spec : Prop :=
  ∀ n, P11710249124988097003.a n = A158874 n

end A158874

/-! ## A158874.P8434390740766951243

`a(n-1)+2*n*(n+3)*∑[n+1]` with `a(0)=0`
-/

namespace A158874.P8434390740766951243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * n * ((n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A158874.P8434390740766951243

namespace A158874

/-- `a(n-1)+2*n*(n+3)*∑[n+1]` -/
def P8434390740766951243.Spec : Prop :=
  ∀ n, (P8434390740766951243.a n : ℤ) = A158874 n

end A158874

/-! ## A158874.P2489423326358118056

`∑[A062938(n)-1]`
-/

namespace A158874.P2489423326358118056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062938 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158874.P2489423326358118056

namespace A158874

/-- `∑[A062938(n)-1]` -/
def P2489423326358118056.Spec : Prop :=
  ∀ n, P2489423326358118056.a n = A158874 n

end A158874

/-! ## A158874.P5901751150732160894

`∑[2*A033486(n)]`
-/

namespace A158874.P5901751150732160894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158874.P5901751150732160894

namespace A158874

/-- `∑[2*A033486(n)]` -/
def P5901751150732160894.Spec : Prop :=
  ∀ n, P5901751150732160894.a n = A158874 n

end A158874

/-! ## A158874.P10450387675937012943

`∑[3*A162668(n)]`
-/

namespace A158874.P10450387675937012943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158874.P10450387675937012943

namespace A158874

/-- `∑[3*A162668(n)]` -/
def P10450387675937012943.Spec : Prop :=
  ∀ n, P10450387675937012943.a n = A158874 n

end A158874

/-! ## A158874.P15789552392575992413

`∑[4*A033487(n)]`
-/

namespace A158874.P15789552392575992413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158874.P15789552392575992413

namespace A158874

/-- `∑[4*A033487(n)]` -/
def P15789552392575992413.Spec : Prop :=
  ∀ n, P15789552392575992413.a n = A158874 n

end A158874

/-! ## A158874.P16505166411073121244

`2/5*A293615(n)`
-/

namespace A158874.P16505166411073121244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A293615 n : ℚ)

end

end A158874.P16505166411073121244

namespace A158874

/-- `2/5*A293615(n)` -/
def P16505166411073121244.Spec : Prop :=
  ∀ n, P16505166411073121244.a n = (A158874 n : ℚ)

end A158874

/-! ## A158874.P1036463811061834845

`A166942(n)-(n+2)`
-/

namespace A158874.P1036463811061834845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166942 n - (n + 2 : ℤ)

end

end A158874.P1036463811061834845

namespace A158874

/-- `A166942(n)-(n+2)` -/
def P1036463811061834845.Spec : Prop :=
  ∀ n, P1036463811061834845.a n = A158874 n

end A158874

/-! ## A158874.P10065458987098813213

`∑[A028387(n)²-1]`
-/

namespace A158874.P10065458987098813213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158874.P10065458987098813213

namespace A158874

/-- `∑[A028387(n)²-1]` -/
def P10065458987098813213.Spec : Prop :=
  ∀ n, P10065458987098813213.a n = A158874 n

end A158874

/-! ## A158874.P5833185472988707309

`∑[A183066(n)-(n+1)]`
-/

namespace A158874.P5833185472988707309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183066 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158874.P5833185472988707309

namespace A158874

/-- `∑[A183066(n)-(n+1)]` -/
def P5833185472988707309.Spec : Prop :=
  ∀ n, P5833185472988707309.a n = A158874 n

end A158874

/-! ## A158874.P5315258770181795937

`3*4*A277935(n+1)`
-/

namespace A158874.P5315258770181795937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A277935 (n + 1))

end

end A158874.P5315258770181795937

namespace A158874

/-- `3*4*A277935(n+1)` -/
def P5315258770181795937.Spec : Prop :=
  ∀ n, P5315258770181795937.a n = A158874 n

theorem P5315258770181795937.correct : P5315258770181795937.Spec := by
  intro n
  simp only [A158874, Nat.add_sub_cancel, A158874.P5315258770181795937.a, A158874.P5308552197139117171.a, A000389, A000389.P15450220129395289428.a, A277935, A277935.P11391963306517879859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A158874

/-! ## A158874.P8034524841305394783

`A040030(n)*A277935(n+1)`
-/

namespace A158874.P8034524841305394783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040030 n * A277935 (n + 1)

end

end A158874.P8034524841305394783

namespace A158874

/-- `A040030(n)*A277935(n+1)` -/
def P8034524841305394783.Spec : Prop :=
  ∀ n, P8034524841305394783.a n = A158874 n

end A158874

/-! ## A158874.P6670791120760033411

`∑[∑[A272871(n+1)]]`
-/

namespace A158874.P6670791120760033411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158874.P6670791120760033411

namespace A158874

/-- `∑[∑[A272871(n+1)]]` -/
def P6670791120760033411.Spec : Prop :=
  ∀ n, P6670791120760033411.a n = A158874 n

end A158874

/-! ## A158874.P13134491194346808020

`∑[A110331(n+1)²-1]`
-/

namespace A158874.P13134491194346808020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110331 (n + 1) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158874.P13134491194346808020

namespace A158874

/-- `∑[A110331(n+1)²-1]` -/
def P13134491194346808020.Spec : Prop :=
  ∀ n, P13134491194346808020.a n = A158874 n

end A158874

/-! ## A158874.P17149184138261013827

`8*A253942(n+3)`
-/

namespace A158874.P17149184138261013827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A253942 (n + 3)

end

end A158874.P17149184138261013827

namespace A158874

/-- `8*A253942(n+3)` -/
def P17149184138261013827.Spec : Prop :=
  ∀ n, P17149184138261013827.a n = A158874 n

theorem P17149184138261013827.correct : P17149184138261013827.Spec := by
  intro n
  simp only [A158874, Nat.add_sub_cancel, A158874.P17149184138261013827.a, A158874.P5308552197139117171.a, A000389, A000389.P15450220129395289428.a, A253942, A253942.P11522209056307406865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A158874

/-!
# A158875: Row sums of A099884, the XOR difference triangle of the powers of 2.

The programs for A158875, there is no canonical definition to state claims against.
-/

/-! ## A158875.P9831229379050476651

`A001317(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A158875.P9831229379050476651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001317 n + 2 * a (n - 1)

end

end A158875.P9831229379050476651

/-! ## A158875.P15024990301034549759

`A004729(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A158875.P15024990301034549759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004729 n + 2 * a (n - 1)

end

end A158875.P15024990301034549759

/-! ## A158875.P16342962227782282897

`2*a(n-1)+A053576(n)` with `a(0)=1`
-/

namespace A158875.P16342962227782282897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A053576 n

end

end A158875.P16342962227782282897

/-! ## A158875.P3472393805949641707

`record[A133179(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A158875.P3472393805949641707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * a (n - 1)

end

end A158875.P3472393805949641707

/-! ## A158875.P8627366555022293610

`(A058214(n)-A053576(n))/2`
-/

namespace A158875.P8627366555022293610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058214 n - A053576 n : ℚ) / 2

end

end A158875.P8627366555022293610

/-!
# A158876: Expansion of e.g.f.: exp( Sum_{n>=1} (n-1)! * x^n ).

The programs for A158876, there is no canonical definition to state claims against.
-/

/-! ## A158876.P9390233952895386282

`A109613(A340336(n))`
-/

namespace A158876.P9390233952895386282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A340336 n).toNat

end

end A158876.P9390233952895386282

/-! ## A158876.P9202841273893798301

`A000265(or(1, A340336(n)))`
-/

namespace A158876.P9202841273893798301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor 1 (A340336 n)).toNat

end

end A158876.P9202841273893798301

/-!
# A158879: a(n) = 4^n + n.

The programs for A158879, the canonical program `A158879.P14813342468476927609` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158879 has offset 0).

The definition of A158879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+n` (program `A158879.P14813342468476927609`, by `A158879.P14813342468476927609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158879.P14813342468476927609

`4^n+n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158879

/-- `4^n+n` -/
def P14813342468476927609.Spec : Prop :=
  ∀ n, (P14813342468476927609.a n : ℤ) = A158879 n

theorem P14813342468476927609.correct : P14813342468476927609.Spec := by
  intro n
  simp only [A158879]

end A158879

/-!
# A158880: Number of spanning trees in C_6 X P_n.

The programs for A158880, the canonical program `A158880.P13135155835513871061` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158880 has offset 1).

The definition of A158880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158880.P13135155835513871061

`6*A001906(n+1)²*A004254(n+1)²*A001109(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A158880

/-- `6*A001906(n+1)²*A004254(n+1)²*A001109(n+1)` -/
def P13135155835513871061.Spec : Prop :=
  ∀ n, P13135155835513871061.a n = A158880 (n + 1)

theorem P13135155835513871061.correct : P13135155835513871061.Spec := by
  intro n
  simp only [A158880, Nat.add_sub_cancel]

end A158880

/-! ## A158880.P12875234495745687402

`2*A003761(n+1)*A006238(n+1)`
-/

namespace A158880.P12875234495745687402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003761 (n + 1) * A006238 (n + 1))

end

end A158880.P12875234495745687402

namespace A158880

/-- `2*A003761(n+1)*A006238(n+1)` -/
def P12875234495745687402.Spec : Prop :=
  ∀ n, P12875234495745687402.a n = A158880 (n + 1)

theorem P12875234495745687402.correct : P12875234495745687402.Spec := by
  intro n
  simp only [A158880, Nat.add_sub_cancel, A158880.P12875234495745687402.a, A158880.P13135155835513871061.a, A001109, A001109.P14455961844001046772.a, A001906, A001906.P15149022156944616941.a, A003761, A003761.P174387184741111402.a, A004254, A004254.P3368397127393006179.a, A006238, A006238.P18425104944193782718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158880

/-! ## A158880.P18168706913979715238

`A173958(Δ[A023545(n+2)]-1)`
-/

namespace A158880.P18168706913979715238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 (f1 (n + 1) - f1 n - 1).toNat

end

end A158880.P18168706913979715238

namespace A158880

/-- `A173958(Δ[A023545(n+2)]-1)` -/
def P18168706913979715238.Spec : Prop :=
  ∀ n, P18168706913979715238.a n = A158880 (n + 1)

end A158880

/-! ## A158880.P15595248009056224596

`A173958(A000217(n+5)+n+1)`
-/

namespace A158880.P15595248009056224596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A158880.P15595248009056224596

namespace A158880

/-- `A173958(A000217(n+5)+n+1)` -/
def P15595248009056224596.Spec : Prop :=
  ∀ n, P15595248009056224596.a n = A158880 (n + 1)

end A158880

/-! ## A158880.P3365064545276589749

`A173958(Δ[A055831(n+4)]+n+6)`
-/

namespace A158880.P3365064545276589749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 (f1 (n + 1) - f1 n + (n + 6 : ℤ)).toNat

end

end A158880.P3365064545276589749

namespace A158880

/-- `A173958(Δ[A055831(n+4)]+n+6)` -/
def P3365064545276589749.Spec : Prop :=
  ∀ n, P3365064545276589749.a n = A158880 (n + 1)

end A158880

/-!
# A158881: a(n) = (n*2^n + 1)^(n-1).

The programs for A158881, the canonical program `A158881.P8759789898540071824` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158881 has offset 0).

The definition of A158881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158881.P8759789898540071824

`(n*2^n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158881

/-- `(n*2^n+1)^(n-1)` -/
def P8759789898540071824.Spec : Prop :=
  ∀ n, P8759789898540071824.a n = (A158881 n : ℚ)

end A158881

/-! ## A158881.P5636228154636331062

`floor(A002064(n)^(n-1))`
-/

namespace A158881.P5636228154636331062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002064 n : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A158881.P5636228154636331062

namespace A158881

/-- `floor(A002064(n)^(n-1))` -/
def P5636228154636331062.Spec : Prop :=
  ∀ n, P5636228154636331062.a n = A158881 n

end A158881

/-! ## A158881.P4431532895060820292

`floor((A048495(n+1)/2)^abs(1-n))`
-/

namespace A158881.P4431532895060820292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A048495 (n + 1) : ℚ) / 2) ^ (|1 - (n : ℤ)| : ℤ)⌋

end

end A158881.P4431532895060820292

namespace A158881

/-- `floor((A048495(n+1)/2)^abs(1-n))` -/
def P4431532895060820292.Spec : Prop :=
  ∀ n, P4431532895060820292.a n = A158881 n

end A158881

/-! ## A158881.P5239115922394002110

`floor(((A000337(n+1)+1)/2)^abs(1-n))`
-/

namespace A158881.P5239115922394002110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000337 (n + 1) + 1 : ℚ) / 2) ^ (|1 - (n : ℤ)| : ℤ)⌋

end

end A158881.P5239115922394002110

namespace A158881

/-- `floor(((A000337(n+1)+1)/2)^abs(1-n))` -/
def P5239115922394002110.Spec : Prop :=
  ∀ n, P5239115922394002110.a n = A158881 n

end A158881

/-! ## A158881.P10995059530753807714

`ceil(A002064(n)^A023443(n))`
-/

namespace A158881.P10995059530753807714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002064 n : ℚ) ^ (A023443 n : ℤ)⌉

end

end A158881.P10995059530753807714

namespace A158881

/-- `ceil(A002064(n)^A023443(n))` -/
def P10995059530753807714.Spec : Prop :=
  ∀ n, P10995059530753807714.a n = A158881 n

end A158881

/-!
# A158882: G.f. A(x) satisfies: [x^n] A(x)^n = [x^n] A(x)^(n-1) for n>1 with A(0)=A'(0)=1.

The programs for A158882, there is no canonical definition to state claims against.
-/

/-! ## A158882.P4076151386224919262

`(-1)^n*A167894(n)`
-/

namespace A158882.P4076151386224919262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A167894 n

end

end A158882.P4076151386224919262

/-! ## A158882.P14850816881216682139

`A167894(n)/A033999(n²)`
-/

namespace A158882.P14850816881216682139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167894 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A158882.P14850816881216682139

/-! ## A158882.P16282758569111789856

`A167894(n)*A253414(2*n)`
-/

namespace A158882.P16282758569111789856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167894 n * A253414 (2 * n)

end

end A158882.P16282758569111789856

/-! ## A158882.P10372856708231103502

`xor(A004442(n)-n, A167894(n)-1)`
-/

namespace A158882.P10372856708231103502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n - (n : ℤ)) (A167894 n - 1)

end

end A158882.P10372856708231103502

/-! ## A158882.P1559652407934739233

`A167894(n)/A253414(A005843(n))`
-/

namespace A158882.P1559652407934739233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167894 n : ℚ) / (A253414 (A005843 n).toNat : ℚ)

end

end A158882.P1559652407934739233

/-! ## A158882.P16705552841176106932

`A167894(n)/A253414(A008458(n))`
-/

namespace A158882.P16705552841176106932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167894 n : ℚ) / (A253414 (A008458 n).toNat : ℚ)

end

end A158882.P16705552841176106932

/-! ## A158882.P13082528981361880422

`xor(A057428(n)-A062157(n), A167894(n))`
-/

namespace A158882.P13082528981361880422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057428 n - A062157 n) (A167894 n)

end

end A158882.P13082528981361880422

/-!
# A158883: G.f. satisfies: [x^n] A(x)^(n+1) = [x^n] A(x)^n for n>1 with A(0)=A'(0)=1.

The programs for A158883, there is no canonical definition to state claims against.
-/

/-! ## A158883.P8106916665108112092

`A208896(∑[n]+n)`
-/

namespace A158883.P8106916665108112092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A158883.P8106916665108112092

/-! ## A158883.P15512374905953691642

`or(A000007(n), A208896(A000096(n)))`
-/

namespace A158883.P15512374905953691642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208896 (A000096 n).toNat)

end

end A158883.P15512374905953691642

/-! ## A158883.P1840400132224724546

`A208896(A000096(n))+A000007(n+1)`
-/

namespace A158883.P1840400132224724546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (A000096 n).toNat + A000007 (n + 1)

end

end A158883.P1840400132224724546

/-! ## A158883.P5912485447131712296

`A001065(A000040(n+1))*A208896(A000096(n))`
-/

namespace A158883.P5912485447131712296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 1)).toNat * A208896 (A000096 n).toNat

end

end A158883.P5912485447131712296

/-!
# A158884: G.f. A(x) satisfies d/dx x*A(x) = 1+x + x*[d/dx log(A(x))].

The programs for A158884, there is no canonical definition to state claims against.
-/

/-! ## A158884.P3970440679291203694

`ceil(A159606(n)/(n+1))`
-/

namespace A158884.P3970440679291203694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A159606 n : ℚ) / (n + 1 : ℚ)⌉

end

end A158884.P3970440679291203694

/-! ## A158884.P12489268762269406351

`round(A159606(n)/A000027(n+1))`
-/

namespace A158884.P12489268762269406351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A159606 n : ℚ) / (A000027 (n + 1) : ℚ))

end

end A158884.P12489268762269406351

/-! ## A158884.P16204263245023099388

`round(A159606(n)/A029579(2*n))`
-/

namespace A158884.P16204263245023099388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A159606 n : ℚ) / (A029579 (2 * n) : ℚ))

end

end A158884.P16204263245023099388

/-! ## A158884.P232792559027205231

`round(A159606(n)/A064455(2*n+1))`
-/

namespace A158884.P232792559027205231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A159606 n : ℚ) / (A064455 (2 * n + 1) : ℚ))

end

end A158884.P232792559027205231

/-! ## A158884.P17454107839791926467

`floor(A005408(n)/A016825(n)+A159606(n)/(n+1))`
-/

namespace A158884.P17454107839791926467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005408 n : ℚ) / (A016825 n : ℚ) + (A159606 n : ℚ) / (n + 1 : ℚ)⌋

end

end A158884.P17454107839791926467

/-!
# A158887: a(n) = (n+1)^n * n! * binomial(n-1 + 1/(n+1), n).

The programs for A158887, there is no canonical definition to state claims against.
-/

/-! ## A158887.P1375929284814723499

`A153189(∑[n+2]-2)`
-/

namespace A158887.P1375929284814723499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153189 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A158887.P1375929284814723499

/-! ## A158887.P6007176288138976510

`A153189(A027379(n))^A178334(n)`
-/

namespace A158887.P6007176288138976510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153189 (A027379 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A158887.P6007176288138976510

/-! ## A158887.P15156303196367224335

`lcm(A028310(n), A153189(A055998(n)))`
-/

namespace A158887.P15156303196367224335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A153189 (A055998 n).toNat)

end

end A158887.P15156303196367224335

/-! ## A158887.P1581590370982551175

`A256268(2*(n+1)²)`
-/

namespace A158887.P1581590370982551175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256268 (2 * (n + 1) ^ 2)

end

end A158887.P1581590370982551175

/-! ## A158887.P3419473174844142594

`A142589(∑[4*n]+1)`
-/

namespace A158887.P3419473174844142594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A158887.P3419473174844142594

/-!
# A158888: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(2^n*x)^n.

The programs for A158888, there is no canonical definition to state claims against.
-/

/-! ## A158888.P16568249248680874819

`xor(ceil(∏{p}[(2*n)!, n²/#])-n, ∏{digits}[n, #])`
-/

namespace A158888.P16568249248680874819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (⌈∏ p ∈ Nat.primeFactors (f1 n), (n ^ 2 : ℚ) / (p : ℚ)⌉ - (n : ℤ)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A158888.P16568249248680874819

/-!
# A158889: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n * A(n^2*x)^(1/n).

The programs for A158889, there is no canonical definition to state claims against.
-/

/-! ## A158889.P8540261192399059127

`A024417(∑[2^C(n, 2)])`
-/

namespace A158889.P8540261192399059127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158889.P8540261192399059127

/-! ## A158889.P6999997911635925609

`floor(sqrt((n+1)*A317076(n)))`
-/

namespace A158889.P6999997911635925609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n + 1 : ℤ) * A317076 n)

end

end A158889.P6999997911635925609

/-!
# A158892: Numbers k such that (x^k + 1/x^k)/(x + 1/x) is prime, where x = sqrt(3) + sqrt(2).

The programs for A158892, there is no canonical definition to state claims against.
-/

/-! ## A158892.P4500452065383862568

`A290507(A072828(n+1)-A303760(n))`
-/

namespace A158892.P4500452065383862568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290507 (A072828 (n + 1) - A303760 n).toNat

end

end A158892.P4500452065383862568

/-!
# A158893: Triangle read by rows: T(n,1)=7n-6; T(n,m)= 1+n-m, 1

The programs for A158893, the canonical program `A158893.P14217373209629324848` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158893 has offset 1).

The definition of A158893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158893.P14217373209629324848

`A004736(n+1)+6*A004526(A198954(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158893

/-- `A004736(n+1)+6*A004526(A198954(n))` -/
def P14217373209629324848.Spec : Prop :=
  ∀ n, P14217373209629324848.a n = A158893 (n + 1)

theorem P14217373209629324848.correct : P14217373209629324848.Spec := by
  intro n
  simp only [A158893, Nat.add_sub_cancel]

end A158893

/-! ## A158893.P2849082783988158261

`val(A118586(n+1), 2)+6*A004526(A198954(n))`
-/

namespace A158893.P2849082783988158261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A118586 (n + 1)).toNat 2 : ℤ) + 6 * A004526 (A198954 n).toNat

end

end A158893.P2849082783988158261

namespace A158893

/-- `val(A118586(n+1), 2)+6*A004526(A198954(n))` -/
def P2849082783988158261.Spec : Prop :=
  ∀ n, P2849082783988158261.a n = A158893 (n + 1)

end A158893

/-! ## A158893.P13764609384194022370

`A004736(n+1)+6*A003056(n*A010054(n))`
-/

namespace A158893.P13764609384194022370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 6 * A003056 ((n : ℤ) * A010054 n).toNat

end

end A158893.P13764609384194022370

namespace A158893

/-- `A004736(n+1)+6*A003056(n*A010054(n))` -/
def P13764609384194022370.Spec : Prop :=
  ∀ n, P13764609384194022370.a n = A158893 (n + 1)

end A158893

/-! ## A158893.P17037372763032333927

`gcd(7, Δ[A193739(n)])*A025581(n)+1`
-/

namespace A158893.P17037372763032333927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (f1 (n + 1) - f1 n) : ℤ) * A025581 n + 1

end

end A158893.P17037372763032333927

namespace A158893

/-- `gcd(7, Δ[A193739(n)])*A025581(n)+1` -/
def P17037372763032333927.Spec : Prop :=
  ∀ n, P17037372763032333927.a n = A158893 (n + 1)

end A158893

/-! ## A158893.P9102782442649859044

`Δ[A001106(A000194(2*n))]-A337835(2*n+1)`
-/

namespace A158893.P9102782442649859044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A000194 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A337835 (2 * n + 1)

end

end A158893.P9102782442649859044

namespace A158893

/-- `Δ[A001106(A000194(2*n))]-A337835(2*n+1)` -/
def P9102782442649859044.Spec : Prop :=
  ∀ n, P9102782442649859044.a n = A158893 (n + 1)

end A158893

/-! ## A158893.P1927426785737746097

`A000005(A130321(n))+6*A004526(A198954(n))`
-/

namespace A158893.P1927426785737746097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat + 6 * A004526 (A198954 n).toNat

end

end A158893.P1927426785737746097

namespace A158893

/-- `A000005(A130321(n))+6*A004526(A198954(n))` -/
def P1927426785737746097.Spec : Prop :=
  ∀ n, P1927426785737746097.a n = A158893 (n + 1)

end A158893

/-! ## A158893.P17747149969213447642

`A000005(A140303(n))+6*ceil((A198954(n)-1)/2)`
-/

namespace A158893.P17747149969213447642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140303 n).toNat + 6 * ⌈(A198954 n - 1 : ℚ) / 2⌉

end

end A158893.P17747149969213447642

namespace A158893

/-- `A000005(A140303(n))+6*ceil((A198954(n)-1)/2)` -/
def P17747149969213447642.Spec : Prop :=
  ∀ n, P17747149969213447642.a n = A158893 (n + 1)

end A158893

/-! ## A158893.P18021886416823198560

`A000005(A140303(n))+6*A004526(A198954(n))`
-/

namespace A158893.P18021886416823198560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140303 n).toNat + 6 * A004526 (A198954 n).toNat

end

end A158893.P18021886416823198560

namespace A158893

/-- `A000005(A140303(n))+6*A004526(A198954(n))` -/
def P18021886416823198560.Spec : Prop :=
  ∀ n, P18021886416823198560.a n = A158893 (n + 1)

end A158893

/-! ## A158893.P6276483322572517410

`A145684(n+1)/A145684(A127739(n+1))`
-/

namespace A158893.P6276483322572517410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145684 (n + 1) : ℚ) / (A145684 (A127739 (n + 1)).toNat : ℚ)

end

end A158893.P6276483322572517410

namespace A158893

/-- `A145684(n+1)/A145684(A127739(n+1))` -/
def P6276483322572517410.Spec : Prop :=
  ∀ n, P6276483322572517410.a n = (A158893 (n + 1) : ℚ)

end A158893

/-!
# A158894: Sawtooth pattern of one, then two, then three, then four etc. consecutive odd numbers, starting each time at 3.

The programs for A158894, the canonical program `A158894.P8366770793697318187` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158894 has offset 1).

The definition of A158894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158894.P1309609813204592420

`2*col(n)+3`
-/

namespace A158894.P1309609813204592420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.triCol n + 3

end

end A158894.P1309609813204592420

namespace A158894

/-- `2*col(n)+3` -/
def P1309609813204592420.Spec : Prop :=
  ∀ n, (P1309609813204592420.a n : ℤ) = A158894 (n + 1)

theorem P1309609813204592420.correct : P1309609813204592420.Spec := by
  intro n
  simp only [A158894, Nat.add_sub_cancel, A158894.P1309609813204592420.a, A158894.P8366770793697318187.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158894

/-! ## A158894.P8800460320142426633

`2*(n-C(∑[char[∑[n]]], 2))+3`
-/

namespace A158894.P8800460320142426633
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 3

end

end A158894.P8800460320142426633

namespace A158894

/-- `2*(n-C(∑[char[∑[n]]], 2))+3` -/
def P8800460320142426633.Spec : Prop :=
  ∀ n, P8800460320142426633.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P11168256261568483245

`3-2*(C(∑[char[∑[n]]], 2)-n)`
-/

namespace A158894.P11168256261568483245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))

end

end A158894.P11168256261568483245

namespace A158894

/-- `3-2*(C(∑[char[∑[n]]], 2)-n)` -/
def P11168256261568483245.Spec : Prop :=
  ∀ n, P11168256261568483245.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P198562685639492287

`3-n²%comp[∑[n-1]]+n`
-/

namespace A158894.P198562685639492287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n ^ 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℕ) : ℤ) + (n : ℤ)

end

end A158894.P198562685639492287

namespace A158894

/-- `3-n²%comp[∑[n-1]]+n` -/
def P198562685639492287.Spec : Prop :=
  ∀ n, P198562685639492287.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P11123732942181436597

`a(n-1)^(1-char[∑[n]])+2` with `a(0)=3`
-/

namespace A158894.P11123732942181436597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ) + 2

end

end A158894.P11123732942181436597

namespace A158894

/-- `a(n-1)^(1-char[∑[n]])+2` -/
def P11123732942181436597.Spec : Prop :=
  ∀ n, P11123732942181436597.a n = (A158894 (n + 1) : ℚ)

end A158894

/-! ## A158894.P1098790212018313220

`gcd((n*char[∑[n]])², a(n-1))+2` with `a(0)=3`
-/

namespace A158894.P1098790212018313220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd ((n * (if ∃ j, f1 j = n then 1 else 0)) ^ 2) (a (n - 1)) + 2

end

end A158894.P1098790212018313220

namespace A158894

/-- `gcd((n*char[∑[n]])², a(n-1))+2` -/
def P1098790212018313220.Spec : Prop :=
  ∀ n, (P1098790212018313220.a n : ℤ) = A158894 (n + 1)

end A158894

/-! ## A158894.P1170817891246288696

`2*(n-C(round(sqrt(Δ[n²])), 2)+1)+1`
-/

namespace A158894.P1170817891246288696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))).toNat 2 : ℤ) + 1) + 1

end

end A158894.P1170817891246288696

namespace A158894

/-- `2*(n-C(round(sqrt(Δ[n²])), 2)+1)+1` -/
def P1170817891246288696.Spec : Prop :=
  ∀ n, P1170817891246288696.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P6636351380632782801

`2*abs(C(comp[∑[n-1]]-n, 2)-n)+3`
-/

namespace A158894.P6636351380632782801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)| + 3

end

end A158894.P6636351380632782801

namespace A158894

/-- `2*abs(C(comp[∑[n-1]]-n, 2)-n)+3` -/
def P6636351380632782801.Spec : Prop :=
  ∀ n, P6636351380632782801.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P4370153976326061698

`2*(1-(C(comp[∑[n-1]]-n, 2)-n))+1`
-/

namespace A158894.P4370153976326061698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))) + 1

end

end A158894.P4370153976326061698

namespace A158894

/-- `2*(1-(C(comp[∑[n-1]]-n, 2)-n))+1` -/
def P4370153976326061698.Spec : Prop :=
  ∀ n, P4370153976326061698.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P16929157533757437547

`∑[char[∑[n]]]+2-(∑[2*n]%comp[∑[n]]-n)`
-/

namespace A158894.P16929157533757437547
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))

end

end A158894.P16929157533757437547

namespace A158894

/-- `∑[char[∑[n]]]+2-(∑[2*n]%comp[∑[n]]-n)` -/
def P16929157533757437547.Spec : Prop :=
  ∀ n, P16929157533757437547.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P17277892078191236145

`A005408(col(n)+1)`
-/

namespace A158894.P17277892078191236145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.triCol n + 1)

end

end A158894.P17277892078191236145

namespace A158894

/-- `A005408(col(n)+1)` -/
def P17277892078191236145.Spec : Prop :=
  ∀ n, P17277892078191236145.a n = A158894 (n + 1)

theorem P17277892078191236145.correct : P17277892078191236145.Spec := by
  intro n
  simp only [A158894, Nat.add_sub_cancel, A158894.P17277892078191236145.a, A158894.P8366770793697318187.a, A005408, A005408.P17437947328870227736.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158894

/-! ## A158894.P8366770793697318187

`A158405(n+1)+2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A158894

/-- `A158405(n+1)+2` -/
def P8366770793697318187.Spec : Prop :=
  ∀ n, P8366770793697318187.a n = A158894 (n + 1)

theorem P8366770793697318187.correct : P8366770793697318187.Spec := by
  intro n
  simp only [A158894, Nat.add_sub_cancel]

end A158894

/-! ## A158894.P14454844891180840920

`2*A002262(n)+3`
-/

namespace A158894.P14454844891180840920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002262 n + 3

end

end A158894.P14454844891180840920

namespace A158894

/-- `2*A002262(n)+3` -/
def P14454844891180840920.Spec : Prop :=
  ∀ n, P14454844891180840920.a n = A158894 (n + 1)

theorem P14454844891180840920.correct : P14454844891180840920.Spec := by
  intro n
  simp only [A158894, Nat.add_sub_cancel, A158894.P14454844891180840920.a, A158894.P8366770793697318187.a, A002262, A002262.P17823619022233514403.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158894

/-! ## A158894.P8000398958053803293

`A174028(n)/2+2`
-/

namespace A158894.P8000398958053803293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174028 n : ℚ) / 2 + 2

end

end A158894.P8000398958053803293

namespace A158894

/-- `A174028(n)/2+2` -/
def P8000398958053803293.Spec : Prop :=
  ∀ n, P8000398958053803293.a n = (A158894 (n + 1) : ℚ)

theorem P8000398958053803293.correct : P8000398958053803293.Spec := by
  intro n
  simp only [A158894, Nat.add_sub_cancel, A158894.P8000398958053803293.a, A158894.P8366770793697318187.a, A158405, A158405.P5173674940907569791.a, A174028, A174028.P741410419926483539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158894

/-! ## A158894.P9468594642998801073

`A074294(Δ[n²])+2`
-/

namespace A158894.P9468594642998801073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A158894.P9468594642998801073

namespace A158894

/-- `A074294(Δ[n²])+2` -/
def P9468594642998801073.Spec : Prop :=
  ∀ n, P9468594642998801073.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P8535741668243946191

`1+A005843(col(n)+1)`
-/

namespace A158894.P8535741668243946191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A005843 (SequenceMachineLib.triCol n + 1)

end

end A158894.P8535741668243946191

namespace A158894

/-- `1+A005843(col(n)+1)` -/
def P8535741668243946191.Spec : Prop :=
  ∀ n, P8535741668243946191.a n = A158894 (n + 1)

theorem P8535741668243946191.correct : P8535741668243946191.Spec := by
  intro n
  simp only [A158894, Nat.add_sub_cancel, A158894.P8535741668243946191.a, A158894.P8366770793697318187.a, A005843, A005843.P3167286115683555970.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158894

/-! ## A158894.P4407047942440014864

`2*A002260(n+1)+1`
-/

namespace A158894.P4407047942440014864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) + 1

end

end A158894.P4407047942440014864

namespace A158894

/-- `2*A002260(n+1)+1` -/
def P4407047942440014864.Spec : Prop :=
  ∀ n, P4407047942440014864.a n = A158894 (n + 1)

theorem P4407047942440014864.correct : P4407047942440014864.Spec := by
  intro n
  simp only [A158894, Nat.add_sub_cancel, A158894.P4407047942440014864.a, A158894.P8366770793697318187.a, A002260, A002260.P9170571874073898642.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158894

/-! ## A158894.P10368435013128907397

`A171173(2*(n+1))+2`
-/

namespace A158894.P10368435013128907397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (2 * (n + 1)) + 2

end

end A158894.P10368435013128907397

namespace A158894

/-- `A171173(2*(n+1))+2` -/
def P10368435013128907397.Spec : Prop :=
  ∀ n, P10368435013128907397.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P11509303036398920918

`A084964(A174028(n))`
-/

namespace A158894.P11509303036398920918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A174028 n).toNat

end

end A158894.P11509303036398920918

namespace A158894

/-- `A084964(A174028(n))` -/
def P11509303036398920918.Spec : Prop :=
  ∀ n, P11509303036398920918.a n = A158894 (n + 1)

end A158894

/-! ## A158894.P9620821343128197209

`A073897(A037126(n+1))`
-/

namespace A158894.P9620821343128197209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (A037126 (n + 1)).toNat

end

end A158894.P9620821343128197209

namespace A158894

/-- `A073897(A037126(n+1))` -/
def P9620821343128197209.Spec : Prop :=
  ∀ n, P9620821343128197209.a n = A158894 (n + 1)

end A158894

/-!
# A158895: A list of primes written in order of their first appearance in a table of prime factorizations of 2^k+1, k=1,2,... .

The programs for A158895, there is no canonical definition to state claims against.
-/

/-! ## A158895.P14601633051662807591

`p?[A112927(A002326(2^n))]`
-/

namespace A158895.P14601633051662807591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (A002326 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158895.P14601633051662807591

/-! ## A158895.P3709967458971053822

`p?[gcd(A112919(n+3), A112927(n+2))]`
-/

namespace A158895.P3709967458971053822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112919 (n + 3)) (A112927 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158895.P3709967458971053822

/-! ## A158895.P13969057306560313528

`p?[A112927(2*(n+1))+A112919(2*n+3)]`
-/

namespace A158895.P13969057306560313528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (2 * (n + 1)) + A112919 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158895.P13969057306560313528

/-! ## A158895.P2303116296226620105

`p?[A112927(2*(n+1))]%A066292(2*(n+1))`
-/

namespace A158895.P2303116296226620105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A066292 (2 * (n + 1)))

end

end A158895.P2303116296226620105

/-! ## A158895.P8049991121457010002

`p?[A002034(∑[2^n]+2)]`
-/

namespace A158895.P8049991121457010002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158895.P8049991121457010002

/-!
# A158896: Primes whose squares are a concatenation of 2 with some prime.

The programs for A158896, there is no canonical definition to state claims against.
-/

/-! ## A158896.P3486759964444797007

`A124662(A373002(n+1))`
-/

namespace A158896.P3486759964444797007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124662 (A373002 (n + 1)).toNat

end

end A158896.P3486759964444797007

/-!
# A158897: The elements of A059100 at indices of triangular numbers, padded with zeros.

The programs for A158897, the canonical program `A158897.P8888983181281037156` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158897 has offset 1).

The definition of A158897 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141620, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158897.P8888983181281037156

`A141620(n)+A158405(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158897

/-- `A141620(n)+A158405(n+2)` -/
def P8888983181281037156.Spec : Prop :=
  ∀ n, P8888983181281037156.a n = A158897 (n + 1)

theorem P8888983181281037156.correct : P8888983181281037156.Spec := by
  intro n
  simp only [A158897, Nat.add_sub_cancel]

end A158897

/-! ## A158897.P8102462383997147273

`(comp[∑[n]]+4+n)*char[∑[n-1]]`
-/

namespace A158897.P8102462383997147273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 4 + n) * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

end

end A158897.P8102462383997147273

namespace A158897

/-- `(comp[∑[n]]+4+n)*char[∑[n-1]]` -/
def P8102462383997147273.Spec : Prop :=
  ∀ n, (P8102462383997147273.a n : ℤ) = A158897 (n + 1)

end A158897

/-! ## A158897.P17004693586316934227

`Δ[A049480(A003056(n)+2)]`
-/

namespace A158897.P17004693586316934227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049480 (A003056 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158897.P17004693586316934227

namespace A158897

/-- `Δ[A049480(A003056(n)+2)]` -/
def P17004693586316934227.Spec : Prop :=
  ∀ n, P17004693586316934227.a n = A158897 (n + 1)

end A158897

/-! ## A158897.P7275185818059672845

`A160842(Δ[A025581(n)]+1)`
-/

namespace A158897.P7275185818059672845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160842 (f1 (n + 1) - f1 n + 1).toNat

end

end A158897.P7275185818059672845

namespace A158897

/-- `A160842(Δ[A025581(n)]+1)` -/
def P7275185818059672845.Spec : Prop :=
  ∀ n, P7275185818059672845.a n = A158897 (n + 1)

end A158897

/-! ## A158897.P14092590541336460043

`Δ[A049480(A003057(n+2))]`
-/

namespace A158897.P14092590541336460043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049480 (A003057 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158897.P14092590541336460043

namespace A158897

/-- `Δ[A049480(A003057(n+2))]` -/
def P14092590541336460043.Spec : Prop :=
  ∀ n, P14092590541336460043.a n = A158897 (n + 1)

end A158897

/-! ## A158897.P16660106615429292091

`Δ[A049480(A002024(n+1)+1)]`
-/

namespace A158897.P16660106615429292091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049480 (A002024 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158897.P16660106615429292091

namespace A158897

/-- `Δ[A049480(A002024(n+1)+1)]` -/
def P16660106615429292091.Spec : Prop :=
  ∀ n, P16660106615429292091.a n = A158897 (n + 1)

end A158897

/-! ## A158897.P6482022246313684196

`A158405(n+2)+A133128(n+1)`
-/

namespace A158897.P6482022246313684196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 2) + A133128 (n + 1)

end

end A158897.P6482022246313684196

namespace A158897

/-- `A158405(n+2)+A133128(n+1)` -/
def P6482022246313684196.Spec : Prop :=
  ∀ n, P6482022246313684196.a n = A158897 (n + 1)

end A158897

/-! ## A158897.P1591773296117343664

`A127733(n+1)+Δ[A140978(n+1)]`
-/

namespace A158897.P1591773296117343664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127733 (n + 1) + (f1 (n + 1) - f1 n)

end

end A158897.P1591773296117343664

namespace A158897

/-- `A127733(n+1)+Δ[A140978(n+1)]` -/
def P1591773296117343664.Spec : Prop :=
  ∀ n, P1591773296117343664.a n = A158897 (n + 1)

end A158897

/-! ## A158897.P2036347905908653299

`A158405(n+2)+A120070(n+3)-A120070(n+2)`
-/

namespace A158897.P2036347905908653299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 2) + (A120070 (n + 3) - A120070 (n + 2))

end

end A158897.P2036347905908653299

namespace A158897

/-- `A158405(n+2)+A120070(n+3)-A120070(n+2)` -/
def P2036347905908653299.Spec : Prop :=
  ∀ n, P2036347905908653299.a n = A158897 (n + 1)

theorem P2036347905908653299.correct : P2036347905908653299.Spec := by
  intro n
  simp only [A158897, Nat.add_sub_cancel, A158897.P2036347905908653299.a, A158897.P8888983181281037156.a, A120070, A120070.P8418683465396432844.a, A141620, A141620.P10826181863323884884.f1, A141620.P10826181863323884884.a, A158405, A158405.P5173674940907569791.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158897

/-! ## A158897.P16867697299040789210

`A063656(A010054(n+1)*A080036(n+2))`
-/

namespace A158897.P16867697299040789210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (A010054 (n + 1) * A080036 (n + 2)).toNat

end

end A158897.P16867697299040789210

namespace A158897

/-- `A063656(A010054(n+1)*A080036(n+2))` -/
def P16867697299040789210.Spec : Prop :=
  ∀ n, P16867697299040789210.a n = A158897 (n + 1)

end A158897

/-!
# A158898: Number of spanning trees in C_7 X P_n.

The programs for A158898, there is no canonical definition to state claims against.
-/

/-! ## A158898.P3649184806121119048

`A173958(A000124(n+7)-7)`
-/

namespace A158898.P3649184806121119048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 (A000124 (n + 7) - 7).toNat

end

end A158898.P3649184806121119048

/-!
# A158899: These are numbers n such that the reciprocal, 1/n, is a repeating fraction whose period is n/2 - 1.

The programs for A158899, there is no canonical definition to state claims against.
-/

/-! ## A158899.P2636421110201768754

`2*A001913(n+1)`
-/

namespace A158899.P2636421110201768754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001913 (n + 1)

end

end A158899.P2636421110201768754

/-! ## A158899.P15872472471710491427

`2*A006883(n+2)`
-/

namespace A158899.P15872472471710491427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006883 (n + 2)

end

end A158899.P15872472471710491427

/-! ## A158899.P3933573737075024641

`2*p?[A167797(n+1)]`
-/

namespace A158899.P3933573737075024641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158899.P3933573737075024641

/-! ## A158899.P14088422671676031601

`2*p?[A306355(n+3)]`
-/

namespace A158899.P14088422671676031601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158899.P14088422671676031601

/-! ## A158899.P16181059725668491778

`lcm(2, A001913(C(n+1, n)))`
-/

namespace A158899.P16181059725668491778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001913 (Nat.choose (n + 1) n))

end

end A158899.P16181059725668491778

/-! ## A158899.P8398906235325827178

`A004277(A001913(n+1))`
-/

namespace A158899.P8398906235325827178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001913 (n + 1)).toNat

end

end A158899.P8398906235325827178

/-! ## A158899.P16513817943140045371

`A073582(A060257(n+1))`
-/

namespace A158899.P16513817943140045371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (A060257 (n + 1)).toNat

end

end A158899.P16513817943140045371

/-! ## A158899.P1938288074495842868

`A291510(A106849(n+1))`
-/

namespace A158899.P1938288074495842868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291510 (A106849 (n + 1)).toNat

end

end A158899.P1938288074495842868

/-! ## A158899.P14541044867877346971

`A004277(A006883(n+2))`
-/

namespace A158899.P14541044867877346971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006883 (n + 2)).toNat

end

end A158899.P14541044867877346971

/-! ## A158899.P3013499247224398693

`A006883(n+2)+A001913(n+1)`
-/

namespace A158899.P3013499247224398693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 2) + A001913 (n + 1)

end

end A158899.P3013499247224398693

