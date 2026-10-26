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
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A212500: a(n) is the difference between multiples of 5 with even and odd digit sum in base 4 in interval [0,4^n).

The programs for A212500, the canonical program `A212500.P7985171372572658207` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212500 has offset 1).

The definition of A212500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212500.P7985171372572658207

`10*a(n-2)-5*a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=36`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212500

/-- `10*a(n-2)-5*a(n-4)` -/
def P7985171372572658207.Spec : Prop :=
  ∀ n, P7985171372572658207.a n = A212500 (n + 1)

theorem P7985171372572658207.correct : P7985171372572658207.Spec := by
  intro n
  simp only [A212500, Nat.add_sub_cancel]

end A212500

/-! ## A212500.P15228343319137993328

`A190508(a(n-2))` with `a(0)=1, a(1)=4, a(2)=7`
-/

namespace A212500.P15228343319137993328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 7] fun n a =>
  A190508 (a (n - 2)).toNat

end

end A212500.P15228343319137993328

namespace A212500

/-- `A190508(a(n-2))` -/
def P15228343319137993328.Spec : Prop :=
  ∀ n, P15228343319137993328.a n = A212500 (n + 1)

end A212500

/-! ## A212500.P1872391261718365940

`∑[A268174(A051952(2^ceil(n/2)))]`
-/

namespace A212500.P1872391261718365940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268174 (A051952 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212500.P1872391261718365940

namespace A212500

/-- `∑[A268174(A051952(2^ceil(n/2)))]` -/
def P1872391261718365940.Spec : Prop :=
  ∀ n, P1872391261718365940.a n = A212500 (n + 1)

end A212500

/-!
# A212501: Number of (w,x,y,z) with all terms in {1,...,n} and w > x < y >= z.

The programs for A212501, the canonical program `A212501.P13628144895483221534` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212501 has offset 0).

The definition of A212501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212501.P12077187251471178138

`(n-1)*n*(n+1)*(5*n-2)/24`
-/

namespace A212501.P12077187251471178138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n : ℤ) * (n + 1 : ℤ) * ((5 * n : ℤ) - 2) : ℚ) / 24

end

end A212501.P12077187251471178138

namespace A212501

/-- `(n-1)*n*(n+1)*(5*n-2)/24` -/
def P12077187251471178138.Spec : Prop :=
  ∀ n, P12077187251471178138.a n = (A212501 n : ℚ)

theorem P12077187251471178138.correct : P12077187251471178138.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212501, Nat.add_sub_cancel, A212501.P12077187251471178138.a, A212501.P13628144895483221534.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212501, Nat.add_sub_cancel, A212501.P12077187251471178138.a, A212501.P13628144895483221534.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212501

/-! ## A212501.P13628144895483221534

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=13, a(4)=45`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212501

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13628144895483221534.Spec : Prop :=
  ∀ n, P13628144895483221534.a n = A212501 n

theorem P13628144895483221534.correct : P13628144895483221534.Spec := by
  intro n
  simp only [A212501]

end A212501

/-! ## A212501.P13002965098886560042

`Δ[(n-1)*C(n+1, 4)]`
-/

namespace A212501.P13002965098886560042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (n + 1) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212501.P13002965098886560042

namespace A212501

/-- `Δ[(n-1)*C(n+1, 4)]` -/
def P13002965098886560042.Spec : Prop :=
  ∀ n, P13002965098886560042.a n = A212501 n

end A212501

/-! ## A212501.P3293091644538987126

`∑[C(n, 3)]+C(n², 2)/3`
-/

namespace A212501.P3293091644538987126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 3

end

end A212501.P3293091644538987126

namespace A212501

/-- `∑[C(n, 3)]+C(n², 2)/3` -/
def P3293091644538987126.Spec : Prop :=
  ∀ n, P3293091644538987126.a n = (A212501 n : ℚ)

end A212501

/-! ## A212501.P13080492790709548380

`∑[n*(1-n)²-C(n, 3)]`
-/

namespace A212501.P13080492790709548380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (n : ℤ)) ^ 2 - (Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212501.P13080492790709548380

namespace A212501

/-- `∑[n*(1-n)²-C(n, 3)]` -/
def P13080492790709548380.Spec : Prop :=
  ∀ n, P13080492790709548380.a n = A212501 n

end A212501

/-! ## A212501.P13012634912349022696

`∑[∑[∑[a(n-1)+5]]]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A212501.P13012634912349022696
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212501.P13012634912349022696

namespace A212501

/-- `∑[∑[∑[a(n-1)+5]]]` -/
def P13012634912349022696.Spec : Prop :=
  ∀ n, (P13012634912349022696.a n : ℤ) = A212501 n

end A212501

/-! ## A212501.P9217225853806960413

`C(n+1, 4)+C(n², 2)/3`
-/

namespace A212501.P9217225853806960413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 4 : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 3

end

end A212501.P9217225853806960413

namespace A212501

/-- `C(n+1, 4)+C(n², 2)/3` -/
def P9217225853806960413.Spec : Prop :=
  ∀ n, P9217225853806960413.a n = (A212501 n : ℚ)

end A212501

/-! ## A212501.P12829112280675295856

`2*C(n+2, 4)+3*C(n+1, 4)`
-/

namespace A212501.P12829112280675295856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 2) 4 + 3 * Nat.choose (n + 1) 4

end

end A212501.P12829112280675295856

namespace A212501

/-- `2*C(n+2, 4)+3*C(n+1, 4)` -/
def P12829112280675295856.Spec : Prop :=
  ∀ n, (P12829112280675295856.a n : ℤ) = A212501 n

end A212501

/-! ## A212501.P11493265331318312592

`∑[A203552(n)-n²]`
-/

namespace A212501.P11493265331318312592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212501.P11493265331318312592

namespace A212501

/-- `∑[A203552(n)-n²]` -/
def P11493265331318312592.Spec : Prop :=
  ∀ n, P11493265331318312592.a n = A212501 n

end A212501

/-! ## A212501.P3609343832685015534

`A117662(n)+A090809(n)`
-/

namespace A212501.P3609343832685015534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n + A090809 n

end

end A212501.P3609343832685015534

namespace A212501

/-- `A117662(n)+A090809(n)` -/
def P3609343832685015534.Spec : Prop :=
  ∀ n, P3609343832685015534.a n = A212501 n

end A212501

/-! ## A212501.P12680588828094160748

`A002418(n)-A002412(n)`
-/

namespace A212501.P12680588828094160748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 n - A002412 n

end

end A212501.P12680588828094160748

namespace A212501

/-- `A002418(n)-A002412(n)` -/
def P12680588828094160748.Spec : Prop :=
  ∀ n, P12680588828094160748.a n = A212501 n

end A212501

/-! ## A212501.P10764562980946468916

`A071238(n)-A001296(n)`
-/

namespace A212501.P10764562980946468916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - A001296 n

end

end A212501.P10764562980946468916

namespace A212501

/-- `A071238(n)-A001296(n)` -/
def P10764562980946468916.Spec : Prop :=
  ∀ n, P10764562980946468916.a n = A212501 n

end A212501

/-! ## A212501.P11260366839161317508

`A071246(n)-A090809(n)`
-/

namespace A212501.P11260366839161317508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071246 n - A090809 n

end

end A212501.P11260366839161317508

namespace A212501

/-- `A071246(n)-A090809(n)` -/
def P11260366839161317508.Spec : Prop :=
  ∀ n, P11260366839161317508.a n = A212501 n

end A212501

/-! ## A212501.P10183256976205729146

`∑[A002413(n)-A000384(n)]`
-/

namespace A212501.P10183256976205729146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n - A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212501.P10183256976205729146

namespace A212501

/-- `∑[A002413(n)-A000384(n)]` -/
def P10183256976205729146.Spec : Prop :=
  ∀ n, P10183256976205729146.a n = A212501 n

end A212501

/-! ## A212501.P13859405992929873750

`∑[A002413(n)]-A002412(n)`
-/

namespace A212501.P13859405992929873750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002412 n

end

end A212501.P13859405992929873750

namespace A212501

/-- `∑[A002413(n)]-A002412(n)` -/
def P13859405992929873750.Spec : Prop :=
  ∀ n, P13859405992929873750.a n = A212501 n

end A212501

/-! ## A212501.P5848038737468450599

`A352405(n+1)-A318054(n)`
-/

namespace A212501.P5848038737468450599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352405 (n + 1) - A318054 n

end

end A212501.P5848038737468450599

namespace A212501

/-- `A352405(n+1)-A318054(n)` -/
def P5848038737468450599.Spec : Prop :=
  ∀ n, P5848038737468450599.a n = A212501 n

end A212501

/-! ## A212501.P14259715845964734845

`∑[∑[A005476(n)]-A005476(n)]`
-/

namespace A212501.P14259715845964734845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212501.P14259715845964734845

namespace A212501

/-- `∑[∑[A005476(n)]-A005476(n)]` -/
def P14259715845964734845.Spec : Prop :=
  ∀ n, P14259715845964734845.a n = A212501 n

end A212501

/-! ## A212501.P12925964221072232345

`A006322(n+1)-A100178(n+1)`
-/

namespace A212501.P12925964221072232345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) - A100178 (n + 1)

end

end A212501.P12925964221072232345

namespace A212501

/-- `A006322(n+1)-A100178(n+1)` -/
def P12925964221072232345.Spec : Prop :=
  ∀ n, P12925964221072232345.a n = A212501 n

end A212501

/-! ## A212501.P18059193182908739943

`A007715(n+1)-A185787(n+1)`
-/

namespace A212501.P18059193182908739943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007715 (n + 1) - A185787 (n + 1)

end

end A212501.P18059193182908739943

namespace A212501

/-- `A007715(n+1)-A185787(n+1)` -/
def P18059193182908739943.Spec : Prop :=
  ∀ n, P18059193182908739943.a n = A212501 n

end A212501

/-! ## A212501.P12633205707385663669

`A228394(n+1)-A000127(n+1)`
-/

namespace A212501.P12633205707385663669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228394 (n + 1) - A000127 (n + 1)

end

end A212501.P12633205707385663669

namespace A212501

/-- `A228394(n+1)-A000127(n+1)` -/
def P12633205707385663669.Spec : Prop :=
  ∀ n, P12633205707385663669.a n = A212501 n

end A212501

/-!
# A212502: Composite numbers k that divide the imaginary part of (1+2i)^A201629(k).

The programs for A212502, there is no canonical definition to state claims against.
-/

/-! ## A212502.P18241961205059316547

`A231958(n+3)%A231914(n+1)`
-/

namespace A212502.P18241961205059316547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231958 (n + 3)) (A231914 (n + 1))

end

end A212502.P18241961205059316547

/-! ## A212502.P14578021493759097834

`∩[A177713(n+1), A231958(n+1)]`
-/

namespace A212502.P14578021493759097834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212502.P14578021493759097834

/-! ## A212502.P10534206542521670737

`∩[A235865(n+1), A330943(n+1)]`
-/

namespace A212502.P10534206542521670737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212502.P10534206542521670737

/-! ## A212502.P18439624921698086013

`A282939(A324842(n+2))`
-/

namespace A212502.P18439624921698086013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282939 (A324842 (n + 2)).toNat

end

end A212502.P18439624921698086013

/-! ## A212502.P14995700201944238342

`∩[A231958(n+1), A327776(n+1)]`
-/

namespace A212502.P14995700201944238342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212502.P14995700201944238342

/-!
# A212503: Number of (w,x,y,z) with all terms in {1,...,n} and w

The programs for A212503, the canonical program `A212503.P7074195460241346720` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212503 has offset 0).

The definition of A212503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212503.P7074195460241346720

`A077043(n)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212503

/-- `A077043(n)²` -/
def P7074195460241346720.Spec : Prop :=
  ∀ n, P7074195460241346720.a n = A212503 n

theorem P7074195460241346720.correct : P7074195460241346720.Spec := by
  intro n
  simp only [A212503]

end A212503

/-! ## A212503.P17010105005361284999

`ceil(3*(n/2)²)²`
-/

namespace A212503.P17010105005361284999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2) ^ 2⌉ ^ 2

end

end A212503.P17010105005361284999

namespace A212503

/-- `ceil(3*(n/2)²)²` -/
def P17010105005361284999.Spec : Prop :=
  ∀ n, P17010105005361284999.a n = A212503 n

end A212503

/-! ## A212503.P14010077980959424777

`∑[comp[lcm(3, n+1)]]^2`
-/

namespace A212503.P14010077980959424777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212503.P14010077980959424777

namespace A212503

/-- `∑[comp[lcm(3, n+1)]]^2` -/
def P14010077980959424777.Spec : Prop :=
  ∀ n, (P14010077980959424777.a n : ℤ) = A212503 n

end A212503

/-! ## A212503.P1161706168193086664

`floor(∑[record[lcm(9, n)/9]]²)`
-/

namespace A212503.P1161706168193086664
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 n : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A212503.P1161706168193086664

namespace A212503

/-- `floor(∑[record[lcm(9, n)/9]]²)` -/
def P1161706168193086664.Spec : Prop :=
  ∀ n, P1161706168193086664.a n = A212503 n

end A212503

/-! ## A212503.P10016437118389720548

`floor(∑[record[n/gcd(3, n)]]²)`
-/

namespace A212503.P10016437118389720548
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A212503.P10016437118389720548

namespace A212503

/-- `floor(∑[record[n/gcd(3, n)]]²)` -/
def P10016437118389720548.Spec : Prop :=
  ∀ n, P10016437118389720548.a n = A212503 n

end A212503

/-! ## A212503.P2264091290306769784

`floor(∑[a(n-2)+3]²)` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A212503.P2264091290306769784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212503.P2264091290306769784

namespace A212503

/-- `floor(∑[a(n-2)+3]²)` -/
def P2264091290306769784.Spec : Prop :=
  ∀ n, (P2264091290306769784.a n : ℤ) = A212503 n

end A212503

/-! ## A212503.P11333173169502434389

`floor(∑[∑[3-a(n-1)]]²)` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A212503.P11333173169502434389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212503.P11333173169502434389

namespace A212503

/-- `floor(∑[∑[3-a(n-1)]]²)` -/
def P11333173169502434389.Spec : Prop :=
  ∀ n, P11333173169502434389.a n = A212503 n

end A212503

/-! ## A212503.P12018824507506250421

`(n-A001859(n))^2`
-/

namespace A212503.P12018824507506250421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A001859 n) ^ 2

end

end A212503.P12018824507506250421

namespace A212503

/-- `(n-A001859(n))^2` -/
def P12018824507506250421.Spec : Prop :=
  ∀ n, P12018824507506250421.a n = A212503 n

end A212503

/-! ## A212503.P12200087994961012561

`A238410(n+1)²/4`
-/

namespace A212503.P12200087994961012561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238410 (n + 1) ^ 2 : ℚ) / 4

end

end A212503.P12200087994961012561

namespace A212503

/-- `A238410(n+1)²/4` -/
def P12200087994961012561.Spec : Prop :=
  ∀ n, P12200087994961012561.a n = (A212503 n : ℚ)

end A212503

/-! ## A212503.P15750872755130460115

`(A000982(n)+n²)²/4`
-/

namespace A212503.P15750872755130460115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000982 n + (n ^ 2 : ℤ)) ^ 2 : ℚ) / 4

end

end A212503.P15750872755130460115

namespace A212503

/-- `(A000982(n)+n²)²/4` -/
def P15750872755130460115.Spec : Prop :=
  ∀ n, P15750872755130460115.a n = (A212503 n : ℚ)

end A212503

/-! ## A212503.P7958855888145219079

`record[(n+1-A068626(n+1))²]`
-/

namespace A212503.P7958855888145219079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A068626 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212503.P7958855888145219079

namespace A212503

/-- `record[(n+1-A068626(n+1))²]` -/
def P7958855888145219079.Spec : Prop :=
  ∀ n, P7958855888145219079.a n = A212503 n

end A212503

/-! ## A212503.P7863815276896503478

`∑[2*lt[n, A130724(n)+1]]²/4`
-/

namespace A212503.P7863815276896503478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A212503.P7863815276896503478

namespace A212503

/-- `∑[2*lt[n, A130724(n)+1]]²/4` -/
def P7863815276896503478.Spec : Prop :=
  ∀ n, P7863815276896503478.a n = (A212503 n : ℚ)

end A212503

/-! ## A212503.P4435811458295570060

`A077043(n)*A129819(2*n)`
-/

namespace A212503.P4435811458295570060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n * A129819 (2 * n)

end

end A212503.P4435811458295570060

namespace A212503

/-- `A077043(n)*A129819(2*n)` -/
def P4435811458295570060.Spec : Prop :=
  ∀ n, P4435811458295570060.a n = A212503 n

end A212503

/-! ## A212503.P3274913233846599627

`A211520(2*n+1)*A211520(2*n+1)`
-/

namespace A212503.P3274913233846599627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211520 (2 * n + 1) * A211520 (2 * n + 1)

end

end A212503.P3274913233846599627

namespace A212503

/-- `A211520(2*n+1)*A211520(2*n+1)` -/
def P3274913233846599627.Spec : Prop :=
  ∀ n, P3274913233846599627.a n = A212503 n

end A212503

/-! ## A212503.P782025822638022438

`A000290(∑[comp[3*(n+1)]])`
-/

namespace A212503.P782025822638022438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212503.P782025822638022438

namespace A212503

/-- `A000290(∑[comp[3*(n+1)]])` -/
def P782025822638022438.Spec : Prop :=
  ∀ n, P782025822638022438.a n = A212503 n

end A212503

/-! ## A212503.P6941654467032750221

`A109340(A084684(n))`
-/

namespace A212503.P6941654467032750221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109340 (A084684 n).toNat

end

end A212503.P6941654467032750221

namespace A212503

/-- `A109340(A084684(n))` -/
def P6941654467032750221.Spec : Prop :=
  ∀ n, P6941654467032750221.a n = A212503 n

end A212503

/-! ## A212503.P1078602603910266757

`A007494(n²)²/4`
-/

namespace A212503.P1078602603910266757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n ^ 2) ^ 2 : ℚ) / 4

end

end A212503.P1078602603910266757

namespace A212503

/-- `A007494(n²)²/4` -/
def P1078602603910266757.Spec : Prop :=
  ∀ n, P1078602603910266757.a n = (A212503 n : ℚ)

end A212503

/-!
# A212504: Number of (w,x,y,z) with all terms in {1,...,n} and w2z.

The programs for A212504, the canonical program `A212504.P16992995304679830641` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212504 has offset 0).

The definition of A212504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212504.P16992995304679830641

`ceil(3*n²/4)*floor((n-1)²/4)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212504

/-- `ceil(3*n²/4)*floor((n-1)²/4)` -/
def P16992995304679830641.Spec : Prop :=
  ∀ n, P16992995304679830641.a n = A212504 n

theorem P16992995304679830641.correct : P16992995304679830641.Spec := by
  intro n
  simp only [A212504]

end A212504

/-! ## A212504.P15660301925651156924

`n²*A077043(n)-A212507(n)`
-/

namespace A212504.P15660301925651156924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A077043 n - A212507 n

end

end A212504.P15660301925651156924

namespace A212504

/-- `n²*A077043(n)-A212507(n)` -/
def P15660301925651156924.Spec : Prop :=
  ∀ n, P15660301925651156924.a n = A212504 n

end A212504

/-! ## A212504.P6004447266507103476

`A212503(n)+A212505(n)-A212507(n)`
-/

namespace A212504.P6004447266507103476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212503 n + (A212505 n - A212507 n)

end

end A212504.P6004447266507103476

namespace A212504

/-- `A212503(n)+A212505(n)-A212507(n)` -/
def P6004447266507103476.Spec : Prop :=
  ∀ n, P6004447266507103476.a n = A212504 n

end A212504

/-! ## A212504.P9032910086856225782

`A077043(n)²-A000217(n)*A077043(n)`
-/

namespace A212504.P9032910086856225782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n ^ 2 - A000217 n * A077043 n

end

end A212504.P9032910086856225782

namespace A212504

/-- `A077043(n)²-A000217(n)*A077043(n)` -/
def P9032910086856225782.Spec : Prop :=
  ∀ n, P9032910086856225782.a n = A212504 n

end A212504

/-! ## A212504.P10957723858905525092

`A212508(n)+A212511(n)-A212507(n)`
-/

namespace A212504.P10957723858905525092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212508 n + (A212511 n - A212507 n)

end

end A212504.P10957723858905525092

namespace A212504

/-- `A212508(n)+A212511(n)-A212507(n)` -/
def P10957723858905525092.Spec : Prop :=
  ∀ n, P10957723858905525092.a n = A212504 n

end A212504

/-!
# A212505: Number of (w,x,y,z) with all terms in {1,...,n} and w=2z.

The programs for A212505, the canonical program `A212505.P7781266864976923561` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212505 has offset 0).

The definition of A212505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212505.P7781266864976923561

`floor(n²/4)*ceil(n²*3/4)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212505

/-- `floor(n²/4)*ceil(n²*3/4)` -/
def P7781266864976923561.Spec : Prop :=
  ∀ n, P7781266864976923561.a n = A212505 n

theorem P7781266864976923561.correct : P7781266864976923561.Spec := by
  intro n
  simp only [A212505]

end A212505

/-! ## A212505.P3955429640558231444

`floor((A032528(n)/2)²/3)`
-/

namespace A212505.P3955429640558231444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A032528 n : ℚ) / 2) ^ 2 / 3⌋

end

end A212505.P3955429640558231444

namespace A212505

/-- `floor((A032528(n)/2)²/3)` -/
def P3955429640558231444.Spec : Prop :=
  ∀ n, P3955429640558231444.a n = A212505 n

end A212505

/-! ## A212505.P14105400406155166696

`A212714(n)+A030179(n)`
-/

namespace A212505.P14105400406155166696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + A030179 n

end

end A212505.P14105400406155166696

namespace A212505

/-- `A212714(n)+A030179(n)` -/
def P14105400406155166696.Spec : Prop :=
  ∀ n, P14105400406155166696.a n = A212505 n

end A212505

/-! ## A212505.P5621801534669352254

`A212714(n)+A002620(n)²`
-/

namespace A212505.P5621801534669352254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 n + A002620 n ^ 2

end

end A212505.P5621801534669352254

namespace A212505

/-- `A212714(n)+A002620(n)²` -/
def P5621801534669352254.Spec : Prop :=
  ∀ n, P5621801534669352254.a n = A212505 n

end A212505

/-! ## A212505.P6228099286791908211

`A011863(n)+n*A034828(n)`
-/

namespace A212505.P6228099286791908211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 n + (n : ℤ) * A034828 n

end

end A212505.P6228099286791908211

namespace A212505

/-- `A011863(n)+n*A034828(n)` -/
def P6228099286791908211.Spec : Prop :=
  ∀ n, P6228099286791908211.a n = A212505 n

end A212505

/-! ## A212505.P12235434254872335375

`A002620(n)²+2*A011863(n)`
-/

namespace A212505.P12235434254872335375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n ^ 2 + 2 * A011863 n

end

end A212505.P12235434254872335375

namespace A212505

/-- `A002620(n)²+2*A011863(n)` -/
def P12235434254872335375.Spec : Prop :=
  ∀ n, P12235434254872335375.a n = A212505 n

end A212505

/-! ## A212505.P11074476939617657639

`A002620(n)²+A131479(n)/2`
-/

namespace A212505.P11074476939617657639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 n ^ 2 : ℚ) + (A131479 n : ℚ) / 2

end

end A212505.P11074476939617657639

namespace A212505

/-- `A002620(n)²+A131479(n)/2` -/
def P11074476939617657639.Spec : Prop :=
  ∀ n, P11074476939617657639.a n = (A212505 n : ℚ)

end A212505

/-! ## A212505.P10218293611489606732

`n²*A002620(n)-A030179(n)`
-/

namespace A212505.P10218293611489606732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002620 n - A030179 n

end

end A212505.P10218293611489606732

namespace A212505

/-- `n²*A002620(n)-A030179(n)` -/
def P10218293611489606732.Spec : Prop :=
  ∀ n, P10218293611489606732.a n = A212505 n

end A212505

/-! ## A212505.P1633159580754762448

`A002620(n)+A002620(n)*A331952(n)`
-/

namespace A212505.P1633159580754762448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + A002620 n * A331952 n

end

end A212505.P1633159580754762448

namespace A212505

/-- `A002620(n)+A002620(n)*A331952(n)` -/
def P1633159580754762448.Spec : Prop :=
  ∀ n, P1633159580754762448.a n = A212505 n

end A212505

/-! ## A212505.P10799545167453553880

`A002620(n)*A084684(n)-A002620(n)`
-/

namespace A212505.P10799545167453553880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A084684 n - A002620 n

end

end A212505.P10799545167453553880

namespace A212505

/-- `A002620(n)*A084684(n)-A002620(n)` -/
def P10799545167453553880.Spec : Prop :=
  ∀ n, P10799545167453553880.a n = A212505 n

end A212505

/-! ## A212505.P265911294101558735

`A212507(n)-A000217(n)*A077043(n)`
-/

namespace A212505.P265911294101558735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212507 n - A000217 n * A077043 n

end

end A212505.P265911294101558735

namespace A212505

/-- `A212507(n)-A000217(n)*A077043(n)` -/
def P265911294101558735.Spec : Prop :=
  ∀ n, P265911294101558735.a n = A212505 n

end A212505

/-! ## A212505.P9981163793838796952

`A002620(n)²+A000982(n)*A002620(n)`
-/

namespace A212505.P9981163793838796952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n ^ 2 + A000982 n * A002620 n

end

end A212505.P9981163793838796952

namespace A212505

/-- `A002620(n)²+A000982(n)*A002620(n)` -/
def P9981163793838796952.Spec : Prop :=
  ∀ n, P9981163793838796952.a n = A212505 n

end A212505

/-! ## A212505.P17094227845234141134

`A242669(A077043(n))`
-/

namespace A212505.P17094227845234141134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242669 (A077043 n).toNat

end

end A212505.P17094227845234141134

namespace A212505

/-- `A242669(A077043(n))` -/
def P17094227845234141134.Spec : Prop :=
  ∀ n, P17094227845234141134.a n = A212505 n

end A212505

/-! ## A212505.P18072973489454123253

`A242669(A256321(n)-A256320(n))`
-/

namespace A212505.P18072973489454123253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242669 (A256321 n - A256320 n).toNat

end

end A212505.P18072973489454123253

namespace A212505

/-- `A242669(A256321(n)-A256320(n))` -/
def P18072973489454123253.Spec : Prop :=
  ∀ n, P18072973489454123253.a n = A212505 n

end A212505

/-! ## A212505.P3382037006392593177

`A032438(n²)/4`
-/

namespace A212505.P3382037006392593177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032438 (n ^ 2) : ℚ) / 4

end

end A212505.P3382037006392593177

namespace A212505

/-- `A032438(n²)/4` -/
def P3382037006392593177.Spec : Prop :=
  ∀ n, P3382037006392593177.a n = (A212505 n : ℚ)

end A212505

/-! ## A212505.P3716241145712685766

`A242669(A007494(n²)/2)`
-/

namespace A212505.P3716241145712685766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242669 (SequenceMachineLib.roundAway ((A007494 (n ^ 2) : ℚ) / 2)).toNat

end

end A212505.P3716241145712685766

namespace A212505

/-- `A242669(A007494(n²)/2)` -/
def P3716241145712685766.Spec : Prop :=
  ∀ n, P3716241145712685766.a n = A212505 n

end A212505

/-! ## A212505.P7195143661211101324

`A001971(n²)+A002620(n)²`
-/

namespace A212505.P7195143661211101324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n ^ 2) + A002620 n ^ 2

end

end A212505.P7195143661211101324

namespace A212505

/-- `A001971(n²)+A002620(n)²` -/
def P7195143661211101324.Spec : Prop :=
  ∀ n, P7195143661211101324.a n = A212505 n

end A212505

/-! ## A212505.P10124556279924230128

`A002620(n)²+A002620(n²)/2`
-/

namespace A212505.P10124556279924230128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 n ^ 2 : ℚ) + (A002620 (n ^ 2) : ℚ) / 2

end

end A212505.P10124556279924230128

namespace A212505

/-- `A002620(n)²+A002620(n²)/2` -/
def P10124556279924230128.Spec : Prop :=
  ∀ n, P10124556279924230128.a n = (A212505 n : ℚ)

end A212505

/-! ## A212505.P9640426804013011180

`A002620(n²)-A002620(A000982(n))`
-/

namespace A212505.P9640426804013011180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n ^ 2) - A002620 (A000982 n).toNat

end

end A212505.P9640426804013011180

namespace A212505

/-- `A002620(n²)-A002620(A000982(n))` -/
def P9640426804013011180.Spec : Prop :=
  ∀ n, P9640426804013011180.a n = A212505 n

end A212505

/-! ## A212505.P7877639455394140356

`A004652(n²)-A004652(A000982(n))`
-/

namespace A212505.P7877639455394140356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (n ^ 2) - A004652 (A000982 n).toNat

end

end A212505.P7877639455394140356

namespace A212505

/-- `A004652(n²)-A004652(A000982(n))` -/
def P7877639455394140356.Spec : Prop :=
  ∀ n, P7877639455394140356.a n = A212505 n

end A212505

/-!
# A212506: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y<=2z.

The programs for A212506, the canonical program `A212506.P12383886949381606281` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212506 has offset 0).

The definition of A212506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212506.P12383886949381606281

`(n*(n+1)/2+floor(n²/4))²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212506

/-- `(n*(n+1)/2+floor(n²/4))²` -/
def P12383886949381606281.Spec : Prop :=
  ∀ n, P12383886949381606281.a n = (A212506 n : ℚ)

end A212506

/-! ## A212506.P17821175040708098719

`∑[and(3*n, -2)]²/4`
-/

namespace A212506.P17821175040708098719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A212506.P17821175040708098719

namespace A212506

/-- `∑[and(3*n, -2)]²/4` -/
def P17821175040708098719.Spec : Prop :=
  ∀ n, P17821175040708098719.a n = (A212506 n : ℚ)

end A212506

/-! ## A212506.P7418050347201549308

`∑[comp[or(2, n)]+n]²/4`
-/

namespace A212506.P7418050347201549308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A212506.P7418050347201549308

namespace A212506

/-- `∑[comp[or(2, n)]+n]²/4` -/
def P7418050347201549308.Spec : Prop :=
  ∀ n, P7418050347201549308.a n = (A212506 n : ℚ)

end A212506

/-! ## A212506.P224045950850298320

`∑[a(n-2)+3]^2` with `a(0)=0, a(1)=1`
-/

namespace A212506.P224045950850298320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212506.P224045950850298320

namespace A212506

/-- `∑[a(n-2)+3]^2` -/
def P224045950850298320.Spec : Prop :=
  ∀ n, (P224045950850298320.a n : ℤ) = A212506 n

end A212506

/-! ## A212506.P8599717472322561980

`floor(∑[a(n-2)+3]²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A212506.P8599717472322561980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212506.P8599717472322561980

namespace A212506

/-- `floor(∑[a(n-2)+3]²)` -/
def P8599717472322561980.Spec : Prop :=
  ∀ n, (P8599717472322561980.a n : ℤ) = A212506 n

end A212506

/-! ## A212506.P11617122285836264050

`ceil(∑[a(n-2)+3]²)` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A212506.P11617122285836264050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212506.P11617122285836264050

namespace A212506

/-- `ceil(∑[a(n-2)+3]²)` -/
def P11617122285836264050.Spec : Prop :=
  ∀ n, (P11617122285836264050.a n : ℤ) = A212506 n

end A212506

/-! ## A212506.P12481382654992132653

`round(∑[a(n-2)+3]²)` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A212506.P12481382654992132653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212506.P12481382654992132653

namespace A212506

/-- `round(∑[a(n-2)+3]²)` -/
def P12481382654992132653.Spec : Prop :=
  ∀ n, (P12481382654992132653.a n : ℤ) = A212506 n

end A212506

/-! ## A212506.P8256054270583404186

`∑[a(n-2)+6]²/4` with `a(0)=0, a(1)=2`
-/

namespace A212506.P8256054270583404186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A212506.P8256054270583404186

namespace A212506

/-- `∑[a(n-2)+6]²/4` -/
def P8256054270583404186.Spec : Prop :=
  ∀ n, P8256054270583404186.a n = (A212506 n : ℚ)

end A212506

/-! ## A212506.P12969988751161231882

`floor(∑[∑[3-a(n-1)]]²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A212506.P12969988751161231882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212506.P12969988751161231882

namespace A212506

/-- `floor(∑[∑[3-a(n-1)]]²)` -/
def P12969988751161231882.Spec : Prop :=
  ∀ n, P12969988751161231882.a n = A212506 n

end A212506

/-! ## A212506.P11387390587405860556

`∑[floor(3*n/2)]^A020639(4*n+6)`
-/

namespace A212506.P11387390587405860556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A020639 (4 * n + 6) : ℤ)

end

end A212506.P11387390587405860556

namespace A212506

/-- `∑[floor(3*n/2)]^A020639(4*n+6)` -/
def P11387390587405860556.Spec : Prop :=
  ∀ n, P11387390587405860556.a n = (A212506 n : ℚ)

end A212506

/-! ## A212506.P15140000183845612586

`A006578(n)*A006578(n)`
-/

namespace A212506.P15140000183845612586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A006578 n

end

end A212506.P15140000183845612586

namespace A212506

/-- `A006578(n)*A006578(n)` -/
def P15140000183845612586.Spec : Prop :=
  ∀ n, P15140000183845612586.a n = A212506 n

end A212506

/-! ## A212506.P3367550276206306648

`∑[A032766(n)]^(A157532(n+1)-1)`
-/

namespace A212506.P3367550276206306648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A157532 (n + 1) - 1 : ℤ)

end

end A212506.P3367550276206306648

namespace A212506

/-- `∑[A032766(n)]^(A157532(n+1)-1)` -/
def P3367550276206306648.Spec : Prop :=
  ∀ n, P3367550276206306648.a n = (A212506 n : ℚ)

end A212506

/-! ## A212506.P15437653396089657895

`record[(n-A322832(n)²)²]`
-/

namespace A212506.P15437653396089657895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A322832 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212506.P15437653396089657895

namespace A212506

/-- `record[(n-A322832(n)²)²]` -/
def P15437653396089657895.Spec : Prop :=
  ∀ n, P15437653396089657895.a n = A212506 n

end A212506

/-! ## A212506.P9490770961367941810

`A000290(∑[floor(3*n/2)])`
-/

namespace A212506.P9490770961367941810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212506.P9490770961367941810

namespace A212506

/-- `A000290(∑[floor(3*n/2)])` -/
def P9490770961367941810.Spec : Prop :=
  ∀ n, P9490770961367941810.a n = A212506 n

end A212506

/-!
# A212507: Number of (w,x,y,z) with all terms in {1,...,n} and w

The programs for A212507, the canonical program `A212507.P15479428626439604042` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212507 has offset 0).

The definition of A212507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212507.P422434736769538681

`(2*n*(9*n^3+6*n²+1)-(2*n-1)*(-1)^n-1)/32`
-/

namespace A212507.P422434736769538681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (9 * n ^ 3 + 6 * n ^ 2 + 1) : ℤ) - ((2 * n : ℤ) - 1) * (-1) ^ n - 1 : ℚ) / 32

end

end A212507.P422434736769538681

namespace A212507

/-- `(2*n*(9*n^3+6*n²+1)-(2*n-1)*(-1)^n-1)/32` -/
def P422434736769538681.Spec : Prop :=
  ∀ n, P422434736769538681.a n = (A212507 n : ℚ)

end A212507

/-! ## A212507.P15479428626439604042

`A006578(n)*A077043(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212507

/-- `A006578(n)*A077043(n)` -/
def P15479428626439604042.Spec : Prop :=
  ∀ n, P15479428626439604042.a n = A212507 n

theorem P15479428626439604042.correct : P15479428626439604042.Spec := by
  intro n
  simp only [A212507]

end A212507

/-! ## A212507.P4786122272034298263

`∑[A212561(n)+A059722(n)]`
-/

namespace A212507.P4786122272034298263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212561 n + A059722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212507.P4786122272034298263

namespace A212507

/-- `∑[A212561(n)+A059722(n)]` -/
def P4786122272034298263.Spec : Prop :=
  ∀ n, P4786122272034298263.a n = A212507 n

end A212507

/-! ## A212507.P16936596774671676283

`(A077043(n)+A004526(n))*A077043(n)`
-/

namespace A212507.P16936596774671676283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077043 n + A004526 n) * A077043 n

end

end A212507.P16936596774671676283

namespace A212507

/-- `(A077043(n)+A004526(n))*A077043(n)` -/
def P16936596774671676283.Spec : Prop :=
  ∀ n, P16936596774671676283.a n = A212507 n

end A212507

/-! ## A212507.P51623208133037182

`(A330707(n)-A002265(n))*A006578(n)`
-/

namespace A212507.P51623208133037182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A330707 n - A002265 n) * A006578 n

end

end A212507.P51623208133037182

namespace A212507

/-- `(A330707(n)-A002265(n))*A006578(n)` -/
def P51623208133037182.Spec : Prop :=
  ∀ n, P51623208133037182.a n = A212507 n

end A212507

/-! ## A212507.P564445147271701666

`A006578(n)*A129819(2*n)`
-/

namespace A212507.P564445147271701666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A129819 (2 * n)

end

end A212507.P564445147271701666

namespace A212507

/-- `A006578(n)*A129819(2*n)` -/
def P564445147271701666.Spec : Prop :=
  ∀ n, P564445147271701666.a n = A212507 n

end A212507

/-! ## A212507.P3143550159346120412

`A077043(n)*A129819(2*n+1)`
-/

namespace A212507.P3143550159346120412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n * A129819 (2 * n + 1)

end

end A212507.P3143550159346120412

namespace A212507

/-- `A077043(n)*A129819(2*n+1)` -/
def P3143550159346120412.Spec : Prop :=
  ∀ n, P3143550159346120412.a n = A212507 n

end A212507

/-! ## A212507.P11084532636587940760

`A129819(2*n+1)*A129819(2*n)`
-/

namespace A212507.P11084532636587940760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 (2 * n + 1) * A129819 (2 * n)

end

end A212507.P11084532636587940760

namespace A212507

/-- `A129819(2*n+1)*A129819(2*n)` -/
def P11084532636587940760.Spec : Prop :=
  ∀ n, P11084532636587940760.a n = A212507 n

end A212507

/-! ## A212507.P15095008932434891792

`A212508(n)-ceil(3*(n/2)²)*round((2-n)²/12)`
-/

namespace A212507.P15095008932434891792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212508 n - ⌈3 * ((n : ℚ) / 2) ^ 2⌉ * SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12)

end

end A212507.P15095008932434891792

namespace A212507

/-- `A212508(n)-ceil(3*(n/2)²)*round((2-n)²/12)` -/
def P15095008932434891792.Spec : Prop :=
  ∀ n, P15095008932434891792.a n = A212507 n

end A212507

/-!
# A212508: Number of (w,x,y,z) with all terms in {1,...,n} and w

The programs for A212508, the canonical program `A212508.P16126103335911313118` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212508 has offset 0).

The definition of A212508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212508.P16126103335911313118

`A212503(n)+A212505(n)-A212511(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A212508

/-- `A212503(n)+A212505(n)-A212511(n)` -/
def P16126103335911313118.Spec : Prop :=
  ∀ n, P16126103335911313118.a n = A212508 n

theorem P16126103335911313118.correct : P16126103335911313118.Spec := by
  intro n
  simp only [A212508]

end A212508

/-! ## A212508.P8057215382370645572

`A212504(n)+A212507(n)-A212511(n)`
-/

namespace A212508.P8057215382370645572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212504 n + (A212507 n - A212511 n)

end

end A212508.P8057215382370645572

namespace A212508

/-- `A212504(n)+A212507(n)-A212511(n)` -/
def P8057215382370645572.Spec : Prop :=
  ∀ n, P8057215382370645572.a n = A212508 n

end A212508

/-! ## A212508.P10256139103243525006

`A212509(n)+A212510(n)-A212511(n)`
-/

namespace A212508.P10256139103243525006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212509 n + (A212510 n - A212511 n)

end

end A212508.P10256139103243525006

namespace A212508

/-- `A212509(n)+A212510(n)-A212511(n)` -/
def P10256139103243525006.Spec : Prop :=
  ∀ n, P10256139103243525006.a n = A212508 n

end A212508

/-! ## A212508.P10799899333370386610

`A212512(n)+A212516(n)-A212520(n)`
-/

namespace A212508.P10799899333370386610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212512 n + (A212516 n - A212520 n)

end

end A212508.P10799899333370386610

namespace A212508

/-- `A212512(n)+A212516(n)-A212520(n)` -/
def P10799899333370386610.Spec : Prop :=
  ∀ n, P10799899333370386610.a n = A212508 n

end A212508

/-! ## A212508.P10458450583735505160

`A002264(A116668(n))*A077043(n)`
-/

namespace A212508.P10458450583735505160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A116668 n).toNat * A077043 n

end

end A212508.P10458450583735505160

namespace A212508

/-- `A002264(A116668(n))*A077043(n)` -/
def P10458450583735505160.Spec : Prop :=
  ∀ n, P10458450583735505160.a n = A212508 n

end A212508

/-!
# A212509: Number of (w,x,y,z) with all terms in {1,...,n} and w

The programs for A212509, the canonical program `A212509.P15785560787934543457` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212509 has offset 0).

The definition of A212509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212509.P15785560787934543457

`ceil(3*(n/2)²)*∑[floor(5*n/3)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212509

/-- `ceil(3*(n/2)²)*∑[floor(5*n/3)]` -/
def P15785560787934543457.Spec : Prop :=
  ∀ n, P15785560787934543457.a n = A212509 n

theorem P15785560787934543457.correct : P15785560787934543457.Spec := by
  intro n
  simp only [A212509]

end A212509

/-! ## A212509.P14071441289259530901

`A212508(n)+A212511(n)-A212510(n)`
-/

namespace A212509.P14071441289259530901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212508 n + (A212511 n - A212510 n)

end

end A212509.P14071441289259530901

namespace A212509

/-- `A212508(n)+A212511(n)-A212510(n)` -/
def P14071441289259530901.Spec : Prop :=
  ∀ n, P14071441289259530901.a n = A212509 n

end A212509

/-!
# A212510: Number of (w,x,y,z) with all terms in {1,...,n} and w3z.

The programs for A212510, the canonical program `A212510.P14644633675115054678` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212510 has offset 0).

The definition of A212510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212510.P14644633675115054678

`(A001840(n)-n)*A077043(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212510

/-- `(A001840(n)-n)*A077043(n)` -/
def P14644633675115054678.Spec : Prop :=
  ∀ n, P14644633675115054678.a n = A212510 n

theorem P14644633675115054678.correct : P14644633675115054678.Spec := by
  intro n
  simp only [A212510]

end A212510

/-! ## A212510.P10205354228685169974

`(A033638(n)-A001399(n))*A077043(n)`
-/

namespace A212510.P10205354228685169974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033638 n - A001399 n) * A077043 n

end

end A212510.P10205354228685169974

namespace A212510

/-- `(A033638(n)-A001399(n))*A077043(n)` -/
def P10205354228685169974.Spec : Prop :=
  ∀ n, P10205354228685169974.a n = A212510 n

end A212510

/-! ## A212510.P719427877753368948

`(A071619(n)-A000217(n))*A077043(n)`
-/

namespace A212510.P719427877753368948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071619 n - A000217 n) * A077043 n

end

end A212510.P719427877753368948

namespace A212510

/-- `(A071619(n)-A000217(n))*A077043(n)` -/
def P719427877753368948.Spec : Prop :=
  ∀ n, P719427877753368948.a n = A212510 n

end A212510

/-! ## A212510.P11459897095467584975

`(∑[A002264(n)]-A002264(n))*A077043(n)`
-/

namespace A212510.P11459897095467584975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A002264 n) * A077043 n

end

end A212510.P11459897095467584975

namespace A212510

/-- `(∑[A002264(n)]-A002264(n))*A077043(n)` -/
def P11459897095467584975.Spec : Prop :=
  ∀ n, P11459897095467584975.a n = A212510 n

end A212510

/-! ## A212510.P10177962230494665402

`A212508(n)+A212511(n)-A212509(n)`
-/

namespace A212510.P10177962230494665402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212508 n + (A212511 n - A212509 n)

end

end A212510.P10177962230494665402

namespace A212510

/-- `A212508(n)+A212511(n)-A212509(n)` -/
def P10177962230494665402.Spec : Prop :=
  ∀ n, P10177962230494665402.a n = A212510 n

end A212510

/-! ## A212510.P4158999372802195344

`A008799(A004273(n))*A211540(3*n+2)`
-/

namespace A212510.P4158999372802195344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A004273 n).toNat * A211540 (3 * n + 2)

end

end A212510.P4158999372802195344

namespace A212510

/-- `A008799(A004273(n))*A211540(3*n+2)` -/
def P4158999372802195344.Spec : Prop :=
  ∀ n, P4158999372802195344.a n = A212510 n

end A212510

/-!
# A212511: Number of (w,x,y,z) with all terms in {1,...,n} and w=3z.

The programs for A212511, the canonical program `A212511.P1413529108330921556` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212511 has offset 0).

The definition of A212511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212511.P1413529108330921556

`ceil(3*(n/2)²)*∑[floor(n/3)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212511

/-- `ceil(3*(n/2)²)*∑[floor(n/3)]` -/
def P1413529108330921556.Spec : Prop :=
  ∀ n, P1413529108330921556.a n = A212511 n

theorem P1413529108330921556.correct : P1413529108330921556.Spec := by
  intro n
  simp only [A212511]

end A212511

/-! ## A212511.P5524255956638085396

`abs(round(n*(n-1)/6)*A077043(n))`
-/

namespace A212511.P5524255956638085396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 6)) * A077043 n|

end

end A212511.P5524255956638085396

namespace A212511

/-- `abs(round(n*(n-1)/6)*A077043(n))` -/
def P5524255956638085396.Spec : Prop :=
  ∀ n, P5524255956638085396.a n = A212511 n

end A212511

/-! ## A212511.P15880797172352060968

`abs(ceil(3*(n/2)²)*A145919(n+1))`
-/

namespace A212511.P15880797172352060968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈3 * ((n : ℚ) / 2) ^ 2⌉ * A145919 (n + 1)|

end

end A212511.P15880797172352060968

namespace A212511

/-- `abs(ceil(3*(n/2)²)*A145919(n+1))` -/
def P15880797172352060968.Spec : Prop :=
  ∀ n, P15880797172352060968.a n = A212511 n

end A212511

/-! ## A212511.P2664906268927238206

`A212509(n)+A212510(n)-A212508(n)`
-/

namespace A212511.P2664906268927238206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212509 n + (A212510 n - A212508 n)

end

end A212511.P2664906268927238206

namespace A212511

/-- `A212509(n)+A212510(n)-A212508(n)` -/
def P2664906268927238206.Spec : Prop :=
  ∀ n, P2664906268927238206.a n = A212511 n

end A212511

/-!
# A212512: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y

The programs for A212512, the canonical program `A212512.P2827929840228850799` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212512 has offset 0).

The definition of A212512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212512.P13415557546174521884

`A212513(n)+A212514(n)-A212515(n)`
-/

namespace A212512.P13415557546174521884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212513 n + (A212514 n - A212515 n)

end

end A212512.P13415557546174521884

namespace A212512

/-- `A212513(n)+A212514(n)-A212515(n)` -/
def P13415557546174521884.Spec : Prop :=
  ∀ n, P13415557546174521884.a n = A212512 n

end A212512

/-! ## A212512.P2827929840228850799

`(A211540(n)+A006578(n))*A006578(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212512

/-- `(A211540(n)+A006578(n))*A006578(n)` -/
def P2827929840228850799.Spec : Prop :=
  ∀ n, P2827929840228850799.a n = A212512 n

theorem P2827929840228850799.correct : P2827929840228850799.Spec := by
  intro n
  simp only [A212512]

end A212512

/-! ## A212512.P10050629767335015278

`A212508(n)+A212520(n)-A212516(n)`
-/

namespace A212512.P10050629767335015278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212508 n + (A212520 n - A212516 n)

end

end A212512.P10050629767335015278

namespace A212512

/-- `A212508(n)+A212520(n)-A212516(n)` -/
def P10050629767335015278.Spec : Prop :=
  ∀ n, P10050629767335015278.a n = A212512 n

end A212512

/-! ## A212512.P12313154982149096712

`(A069905(4*n+1)-(n²+n)/2)*A069905(3*n+1)`
-/

namespace A212512.P12313154982149096712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A069905 (4 * n + 1) : ℚ) - (n ^ 2 + n : ℚ) / 2) * (A069905 (3 * n + 1) : ℚ)

end

end A212512.P12313154982149096712

namespace A212512

/-- `(A069905(4*n+1)-(n²+n)/2)*A069905(3*n+1)` -/
def P12313154982149096712.Spec : Prop :=
  ∀ n, P12313154982149096712.a n = (A212512 n : ℚ)

end A212512

/-! ## A212512.P5029597631557674612

`A002264(A116668(n))*A006578(n)`
-/

namespace A212512.P5029597631557674612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A116668 n).toNat * A006578 n

end

end A212512.P5029597631557674612

namespace A212512

/-- `A002264(A116668(n))*A006578(n)` -/
def P5029597631557674612.Spec : Prop :=
  ∀ n, P5029597631557674612.a n = A212512 n

end A212512

/-!
# A212513: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y<=3z.

The programs for A212513, the canonical program `A212513.P9978081440259541698` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212513 has offset 0).

The definition of A212513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212513.P9978081440259541698

`A006578(n)*A397972(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212513

/-- `A006578(n)*A397972(n)` -/
def P9978081440259541698.Spec : Prop :=
  ∀ n, P9978081440259541698.a n = A212513 n

theorem P9978081440259541698.correct : P9978081440259541698.Spec := by
  intro n
  simp only [A212513]

end A212513

/-! ## A212513.P4689107129524431930

`∑[A047220(n+1)]*A006578(n)`
-/

namespace A212513.P4689107129524431930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A006578 n

end

end A212513.P4689107129524431930

namespace A212513

/-- `∑[A047220(n+1)]*A006578(n)` -/
def P4689107129524431930.Spec : Prop :=
  ∀ n, P4689107129524431930.a n = A212513 n

end A212513

/-! ## A212513.P17913297515301282797

`∑[A047220(n+1)]*∑[A032766(n)]`
-/

namespace A212513.P17913297515301282797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212513.P17913297515301282797

namespace A212513

/-- `∑[A047220(n+1)]*∑[A032766(n)]` -/
def P17913297515301282797.Spec : Prop :=
  ∀ n, P17913297515301282797.a n = A212513 n

end A212513

/-! ## A212513.P15292853216826270016

`(A000217(n)+A000212(n))*A006578(n)`
-/

namespace A212513.P15292853216826270016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + A000212 n) * A006578 n

end

end A212513.P15292853216826270016

namespace A212513

/-- `(A000217(n)+A000212(n))*A006578(n)` -/
def P15292853216826270016.Spec : Prop :=
  ∀ n, P15292853216826270016.a n = A212513 n

end A212513

/-! ## A212513.P93233371531266134

`(A069905(n)+A006578(n))*A006578(n)`
-/

namespace A212513.P93233371531266134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069905 n + A006578 n) * A006578 n

end

end A212513.P93233371531266134

namespace A212513

/-- `(A069905(n)+A006578(n))*A006578(n)` -/
def P93233371531266134.Spec : Prop :=
  ∀ n, P93233371531266134.a n = A212513 n

end A212513

/-! ## A212513.P10723707108989719996

`(A000217(n)+A000212(n))*∑[A032766(n)]`
-/

namespace A212513.P10723707108989719996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + A000212 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212513.P10723707108989719996

namespace A212513

/-- `(A000217(n)+A000212(n))*∑[A032766(n)]` -/
def P10723707108989719996.Spec : Prop :=
  ∀ n, P10723707108989719996.a n = A212513 n

end A212513

/-! ## A212513.P13397836466319443105

`A129819(2*n+1)*A397972(n)`
-/

namespace A212513.P13397836466319443105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 (2 * n + 1) * A397972 n

end

end A212513.P13397836466319443105

namespace A212513

/-- `A129819(2*n+1)*A397972(n)` -/
def P13397836466319443105.Spec : Prop :=
  ∀ n, P13397836466319443105.a n = A212513 n

end A212513

/-! ## A212513.P12473853627181142405

`(A002264(n)+A002264(A116668(n)))*A006578(n)`
-/

namespace A212513.P12473853627181142405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 n + A002264 (A116668 n).toNat) * A006578 n

end

end A212513.P12473853627181142405

namespace A212513

/-- `(A002264(n)+A002264(A116668(n)))*A006578(n)` -/
def P12473853627181142405.Spec : Prop :=
  ∀ n, P12473853627181142405.a n = A212513 n

end A212513

/-! ## A212513.P12084324123959065902

`A002264(A116668(n)+n)*A006578(n)`
-/

namespace A212513.P12084324123959065902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A116668 n + (n : ℤ)).toNat * A006578 n

end

end A212513.P12084324123959065902

namespace A212513

/-- `A002264(A116668(n)+n)*A006578(n)` -/
def P12084324123959065902.Spec : Prop :=
  ∀ n, P12084324123959065902.a n = A212513 n

end A212513

/-!
# A212514: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y>3z.

The programs for A212514, the canonical program `A212514.P3714945399054877261` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212514 has offset 0).

The definition of A212514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212514.P3714945399054877261

`(A001840(n)-n)*A006578(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212514

/-- `(A001840(n)-n)*A006578(n)` -/
def P3714945399054877261.Spec : Prop :=
  ∀ n, P3714945399054877261.a n = A212514 n

theorem P3714945399054877261.correct : P3714945399054877261.Spec := by
  intro n
  simp only [A212514]

end A212514

/-! ## A212514.P2119315067777033944

`(n²-A397972(n))*A006578(n)`
-/

namespace A212514.P2119315067777033944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A397972 n) * A006578 n

end

end A212514.P2119315067777033944

namespace A212514

/-- `(n²-A397972(n))*A006578(n)` -/
def P2119315067777033944.Spec : Prop :=
  ∀ n, P2119315067777033944.a n = A212514 n

end A212514

/-! ## A212514.P13105039608727834076

`(A002620(n)+A000217(n))*(A001840(n)-n)`
-/

namespace A212514.P13105039608727834076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002620 n + A000217 n) * (A001840 n - (n : ℤ))

end

end A212514.P13105039608727834076

namespace A212514

/-- `(A002620(n)+A000217(n))*(A001840(n)-n)` -/
def P13105039608727834076.Spec : Prop :=
  ∀ n, P13105039608727834076.a n = A212514 n

theorem P13105039608727834076.correct : P13105039608727834076.Spec := by
  intro n
  simp only [A212514, Nat.add_sub_cancel, A212514.P13105039608727834076.a, A212514.P3714945399054877261.a, A000217, A000217.P10269402890581615239.a, A001840, A001840.P3786168868741047916.a, A002620, A002620.P9002536657626793813.a, A006578, A006578.P1959475043781476166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212514

/-! ## A212514.P4795972866883627196

`A006578(n)*A008799(A004273(n))`
-/

namespace A212514.P4795972866883627196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n * A008799 (A004273 n).toNat

end

end A212514.P4795972866883627196

namespace A212514

/-- `A006578(n)*A008799(A004273(n))` -/
def P4795972866883627196.Spec : Prop :=
  ∀ n, P4795972866883627196.a n = A212514 n

end A212514

/-! ## A212514.P14672316869008442672

`∑[A032766(n)]*A319974(A004273(n))`
-/

namespace A212514.P14672316869008442672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A319974 (A004273 n).toNat

end

end A212514.P14672316869008442672

namespace A212514

/-- `∑[A032766(n)]*A319974(A004273(n))` -/
def P14672316869008442672.Spec : Prop :=
  ∀ n, P14672316869008442672.a n = A212514 n

end A212514

/-! ## A212514.P7533050753023239868

`(A001840(n)-n)*A069905(3*n+1)`
-/

namespace A212514.P7533050753023239868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * A069905 (3 * n + 1)

end

end A212514.P7533050753023239868

namespace A212514

/-- `(A001840(n)-n)*A069905(3*n+1)` -/
def P7533050753023239868.Spec : Prop :=
  ∀ n, P7533050753023239868.a n = A212514 n

end A212514

/-!
# A212515: Number of (w,x,y,z) with all terms in {1,...,n} and w<=2x and y>=3z.

The programs for A212515, the canonical program `A212515.P9616516098672426459` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212515 has offset 0).

The definition of A212515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212515.P9616516098672426459

`∑[floor(3*n/2)]*∑[floor(n/3)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212515

/-- `∑[floor(3*n/2)]*∑[floor(n/3)]` -/
def P9616516098672426459.Spec : Prop :=
  ∀ n, P9616516098672426459.a n = A212515 n

theorem P9616516098672426459.correct : P9616516098672426459.Spec := by
  intro n
  simp only [A212515]

end A212515

/-! ## A212515.P10443843497411322243

`A212513(n)+A212514(n)-A212512(n)`
-/

namespace A212515.P10443843497411322243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212513 n + (A212514 n - A212512 n)

end

end A212515.P10443843497411322243

namespace A212515

/-- `A212513(n)+A212514(n)-A212512(n)` -/
def P10443843497411322243.Spec : Prop :=
  ∀ n, P10443843497411322243.a n = A212515 n

end A212515

/-!
# A212516: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y

The programs for A212516, the canonical program `A212516.P2497087682161663960` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212516 has offset 0).

The definition of A212516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212516.P2497087682161663960

`A212515(n)+n²*A211540(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212516

/-- `A212515(n)+n²*A211540(n)` -/
def P2497087682161663960.Spec : Prop :=
  ∀ n, P2497087682161663960.a n = A212516 n

theorem P2497087682161663960.correct : P2497087682161663960.Spec := by
  intro n
  simp only [A212516]

end A212516

/-! ## A212516.P15802217673124191532

`A212517(n)+A212518(n)-A212519(n)`
-/

namespace A212516.P15802217673124191532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212517 n + (A212518 n - A212519 n)

end

end A212516.P15802217673124191532

namespace A212516

/-- `A212517(n)+A212518(n)-A212519(n)` -/
def P15802217673124191532.Spec : Prop :=
  ∀ n, P15802217673124191532.a n = A212516 n

end A212516

/-! ## A212516.P6750324391105136460

`A212508(n)+A212520(n)-A212512(n)`
-/

namespace A212516.P6750324391105136460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212508 n + (A212520 n - A212512 n)

end

end A212516.P6750324391105136460

namespace A212516

/-- `A212508(n)+A212520(n)-A212512(n)` -/
def P6750324391105136460.Spec : Prop :=
  ∀ n, P6750324391105136460.a n = A212516 n

end A212516

/-! ## A212516.P2335630999960497095

`∑[A140106(n+1)]*A002264(A116668(n))`
-/

namespace A212516.P2335630999960497095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002264 (A116668 n).toNat

end

end A212516.P2335630999960497095

namespace A212516

/-- `∑[A140106(n+1)]*A002264(A116668(n))` -/
def P2335630999960497095.Spec : Prop :=
  ∀ n, P2335630999960497095.a n = A212516 n

end A212516

/-! ## A212516.P3054510099592866044

`∑[A140106(n+1)]*A002264(A005476(n)+1+n)`
-/

namespace A212516.P3054510099592866044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002264 (A005476 n + 1 + (n : ℤ)).toNat

end

end A212516.P3054510099592866044

namespace A212516

/-- `∑[A140106(n+1)]*A002264(A005476(n)+1+n)` -/
def P3054510099592866044.Spec : Prop :=
  ∀ n, P3054510099592866044.a n = A212516 n

end A212516

/-! ## A212516.P13609854185015844152

`A002264(A116668(n))*A028391(A002620(n))`
-/

namespace A212516.P13609854185015844152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A116668 n).toNat * A028391 (A002620 n).toNat

end

end A212516.P13609854185015844152

namespace A212516

/-- `A002264(A116668(n))*A028391(A002620(n))` -/
def P13609854185015844152.Spec : Prop :=
  ∀ n, P13609854185015844152.a n = A212516 n

end A212516

/-!
# A212517: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y<=3z.

The programs for A212517, the canonical program `A212517.P9130843482353071563` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212517 has offset 0).

The definition of A212517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212517.P9130843482353071563

`(n²-A006578(n))*A397972(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212517

/-- `(n²-A006578(n))*A397972(n)` -/
def P9130843482353071563.Spec : Prop :=
  ∀ n, P9130843482353071563.a n = A212517 n

theorem P9130843482353071563.correct : P9130843482353071563.Spec := by
  intro n
  simp only [A212517]

end A212517

/-! ## A212517.P17129503597093766270

`(A000212(n)+∑[n])*∑[A140106(n+1)]`
-/

namespace A212517.P17129503597093766270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000212 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212517.P17129503597093766270

namespace A212517

/-- `(A000212(n)+∑[n])*∑[A140106(n+1)]` -/
def P17129503597093766270.Spec : Prop :=
  ∀ n, P17129503597093766270.a n = A212517 n

end A212517

/-! ## A212517.P7689588316301288331

`(A076921(n+1)-n)*∑[A047220(n+1)]`
-/

namespace A212517.P7689588316301288331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076921 (n + 1) - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212517.P7689588316301288331

namespace A212517

/-- `(A076921(n+1)-n)*∑[A047220(n+1)]` -/
def P7689588316301288331.Spec : Prop :=
  ∀ n, P7689588316301288331.a n = A212517 n

end A212517

/-! ## A212517.P17025273779209560764

`A212509(n)+A212521(n)-A212513(n)`
-/

namespace A212517.P17025273779209560764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212509 n + (A212521 n - A212513 n)

end

end A212517.P17025273779209560764

namespace A212517

/-- `A212509(n)+A212521(n)-A212513(n)` -/
def P17025273779209560764.Spec : Prop :=
  ∀ n, P17025273779209560764.a n = A212517 n

end A212517

/-! ## A212517.P894371453632908892

`A212516(n)+A212519(n)-A212518(n)`
-/

namespace A212517.P894371453632908892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212516 n + (A212519 n - A212518 n)

end

end A212517.P894371453632908892

namespace A212517

/-- `A212516(n)+A212519(n)-A212518(n)` -/
def P894371453632908892.Spec : Prop :=
  ∀ n, P894371453632908892.a n = A212517 n

end A212517

/-! ## A212517.P11336513644390255204

`∑[A002264(5*n)]*A056847(A004652(n))`
-/

namespace A212517.P11336513644390255204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056847 (A004652 n).toNat

end

end A212517.P11336513644390255204

namespace A212517

/-- `∑[A002264(5*n)]*A056847(A004652(n))` -/
def P11336513644390255204.Spec : Prop :=
  ∀ n, P11336513644390255204.a n = A212517 n

end A212517

/-!
# A212518: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>3z.

The programs for A212518, the canonical program `A212518.P17660951834491083763` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212518 has offset 0).

The definition of A212518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212518.P17660951834491083763

`(A001840(n)-n)*∑[A140106(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212518

/-- `(A001840(n)-n)*∑[A140106(n+1)]` -/
def P17660951834491083763.Spec : Prop :=
  ∀ n, P17660951834491083763.a n = A212518 n

theorem P17660951834491083763.correct : P17660951834491083763.Spec := by
  intro n
  simp only [A212518]

end A212518

/-! ## A212518.P2374882823275789411

`A212510(n)+A212522(n)-A212514(n)`
-/

namespace A212518.P2374882823275789411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212510 n + (A212522 n - A212514 n)

end

end A212518.P2374882823275789411

namespace A212518

/-- `A212510(n)+A212522(n)-A212514(n)` -/
def P2374882823275789411.Spec : Prop :=
  ∀ n, P2374882823275789411.a n = A212518 n

end A212518

/-! ## A212518.P2770288812481487440

`A212516(n)+A212519(n)-A212517(n)`
-/

namespace A212518.P2770288812481487440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212516 n + (A212519 n - A212517 n)

end

end A212518.P2770288812481487440

namespace A212518

/-- `A212516(n)+A212519(n)-A212517(n)` -/
def P2770288812481487440.Spec : Prop :=
  ∀ n, P2770288812481487440.a n = A212518 n

end A212518

/-! ## A212518.P7831442228830123718

`A212522(n)-A212522(n)/A065033(n)`
-/

namespace A212518.P7831442228830123718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212522 n : ℚ) - (A212522 n : ℚ) / (A065033 n : ℚ)

end

end A212518.P7831442228830123718

namespace A212518

/-- `A212522(n)-A212522(n)/A065033(n)` -/
def P7831442228830123718.Spec : Prop :=
  ∀ n, P7831442228830123718.a n = (A212518 n : ℚ)

end A212518

/-! ## A212518.P11995010616076266723

`A002265(A004280(n+1))/A065033(n)*A212522(n)`
-/

namespace A212518.P11995010616076266723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (A004280 (n + 1)).toNat : ℚ) / (A065033 n : ℚ) * (A212522 n : ℚ)

end

end A212518.P11995010616076266723

namespace A212518

/-- `A002265(A004280(n+1))/A065033(n)*A212522(n)` -/
def P11995010616076266723.Spec : Prop :=
  ∀ n, P11995010616076266723.a n = (A212518 n : ℚ)

end A212518

/-!
# A212519: Number of (w,x,y,z) with all terms in {1,...,n} and w>2x and y>=3z.

The programs for A212519, the canonical program `A212519.P16552761711127633602` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212519 has offset 0).

The definition of A212519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212519.P16552761711127633602

`∑[A140106(n+1)]*∑[A002264(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212519

/-- `∑[A140106(n+1)]*∑[A002264(n)]` -/
def P16552761711127633602.Spec : Prop :=
  ∀ n, P16552761711127633602.a n = A212519 n

theorem P16552761711127633602.correct : P16552761711127633602.Spec := by
  intro n
  simp only [A212519]

end A212519

/-! ## A212519.P4328107869123782301

`(A002620(n+1)-n)*∑[A002264(n)]`
-/

namespace A212519.P4328107869123782301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002620 (n + 1) - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212519.P4328107869123782301

namespace A212519

/-- `(A002620(n+1)-n)*∑[A002264(n)]` -/
def P4328107869123782301.Spec : Prop :=
  ∀ n, P4328107869123782301.a n = A212519 n

end A212519

/-! ## A212519.P2749675864889703989

`(A076921(n+1)-n)*∑[A002264(n)]`
-/

namespace A212519.P2749675864889703989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076921 (n + 1) - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212519.P2749675864889703989

namespace A212519

/-- `(A076921(n+1)-n)*∑[A002264(n)]` -/
def P2749675864889703989.Spec : Prop :=
  ∀ n, P2749675864889703989.a n = A212519 n

end A212519

/-! ## A212519.P14314151983789008393

`(A211540(2*n)-A211540(n+1))*A008799(2*n+1)`
-/

namespace A212519.P14314151983789008393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211540 (2 * n) - A211540 (n + 1)) * A008799 (2 * n + 1)

end

end A212519.P14314151983789008393

namespace A212519

/-- `(A211540(2*n)-A211540(n+1))*A008799(2*n+1)` -/
def P14314151983789008393.Spec : Prop :=
  ∀ n, P14314151983789008393.a n = A212519 n

end A212519

/-! ## A212519.P7944587218830102608

`∑[A002264(n)]*A056847(A004652(n))`
-/

namespace A212519.P7944587218830102608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056847 (A004652 n).toNat

end

end A212519.P7944587218830102608

namespace A212519

/-- `∑[A002264(n)]*A056847(A004652(n))` -/
def P7944587218830102608.Spec : Prop :=
  ∀ n, P7944587218830102608.a n = A212519 n

end A212519

/-!
# A212520: Number of (w,x,y,z) with all terms in {1,...,n} and w>=2x and y

The programs for A212520, the canonical program `A212520.P3269239495127639660` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212520 has offset 0).

The definition of A212520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212520.P3269239495127639660

`(n²-∑[A002264(n)])*A002620(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212520

/-- `(n²-∑[A002264(n)])*A002620(n)` -/
def P3269239495127639660.Spec : Prop :=
  ∀ n, P3269239495127639660.a n = A212520 n

theorem P3269239495127639660.correct : P3269239495127639660.Spec := by
  intro n
  simp only [A212520]

end A212520

/-! ## A212520.P6135653425859700250

`(A211540(n)+A006578(n))*A002620(n)`
-/

namespace A212520.P6135653425859700250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211540 n + A006578 n) * A002620 n

end

end A212520.P6135653425859700250

namespace A212520

/-- `(A211540(n)+A006578(n))*A002620(n)` -/
def P6135653425859700250.Spec : Prop :=
  ∀ n, P6135653425859700250.a n = A212520 n

end A212520

/-! ## A212520.P8048530169644795520

`(A000212(n)+A000217(n)-A002264(n))*A002620(n)`
-/

namespace A212520.P8048530169644795520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000212 n + (A000217 n - A002264 n)) * A002620 n

end

end A212520.P8048530169644795520

namespace A212520

/-- `(A000212(n)+A000217(n)-A002264(n))*A002620(n)` -/
def P8048530169644795520.Spec : Prop :=
  ∀ n, P8048530169644795520.a n = A212520 n

end A212520

/-! ## A212520.P13664678314127720228

`(A002264(A000384(n))+A001840(n))*A002620(n)`
-/

namespace A212520.P13664678314127720228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 (A000384 n).toNat + A001840 n) * A002620 n

end

end A212520.P13664678314127720228

namespace A212520

/-- `(A002264(A000384(n))+A001840(n))*A002620(n)` -/
def P13664678314127720228.Spec : Prop :=
  ∀ n, P13664678314127720228.a n = A212520 n

end A212520

/-! ## A212520.P1359506151313182192

`A002264(A116668(n))*A002620(n)`
-/

namespace A212520.P1359506151313182192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A116668 n).toNat * A002620 n

end

end A212520.P1359506151313182192

namespace A212520

/-- `A002264(A116668(n))*A002620(n)` -/
def P1359506151313182192.Spec : Prop :=
  ∀ n, P1359506151313182192.a n = A212520 n

end A212520

/-! ## A212520.P5870379005494015308

`A002264(A005476(n)+1+n)*A002620(n)`
-/

namespace A212520.P5870379005494015308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005476 n + 1 + (n : ℤ)).toNat * A002620 n

end

end A212520.P5870379005494015308

namespace A212520

/-- `A002264(A005476(n)+1+n)*A002620(n)` -/
def P5870379005494015308.Spec : Prop :=
  ∀ n, P5870379005494015308.a n = A212520 n

end A212520

/-! ## A212520.P6697656021887434009

`A002264(A077043(n))*A002264(A116668(n))`
-/

namespace A212520.P6697656021887434009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A077043 n).toNat * A002264 (A116668 n).toNat

end

end A212520.P6697656021887434009

namespace A212520

/-- `A002264(A077043(n))*A002264(A116668(n))` -/
def P6697656021887434009.Spec : Prop :=
  ∀ n, P6697656021887434009.a n = A212520 n

end A212520

/-!
# A212521: Number of (w,x,y,z) with all terms in {1,...,n} and w>=2x and y<=3z.

The programs for A212521, the canonical program `A212521.P17755292876748873878` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212521 has offset 0).

The definition of A212521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212521.P17755292876748873878

`floor((n/2)²)*∑[floor(5*n/3)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212521

/-- `floor((n/2)²)*∑[floor(5*n/3)]` -/
def P17755292876748873878.Spec : Prop :=
  ∀ n, P17755292876748873878.a n = A212521 n

theorem P17755292876748873878.correct : P17755292876748873878.Spec := by
  intro n
  simp only [A212521]

end A212521

/-! ## A212521.P17902440730372757280

`A243655(A382203(n))-A382203(n)`
-/

namespace A212521.P17902440730372757280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243655 (A382203 n).toNat - A382203 n

end

end A212521.P17902440730372757280

namespace A212521

/-- `A243655(A382203(n))-A382203(n)` -/
def P17902440730372757280.Spec : Prop :=
  ∀ n, P17902440730372757280.a n = A212521 n

end A212521

/-!
# A212522: Number of (w,x,y,z) with all terms in {1,...,n} and w>=2x and y>3z.

The programs for A212522, the canonical program `A212522.P318812473851255918` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212522 has offset 0).

The definition of A212522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212522.P318812473851255918

`(∑[ceil(n/3)-1]+1)*A002620(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212522

/-- `(∑[ceil(n/3)-1]+1)*A002620(n)` -/
def P318812473851255918.Spec : Prop :=
  ∀ n, P318812473851255918.a n = A212522 n

theorem P318812473851255918.correct : P318812473851255918.Spec := by
  intro n
  simp only [A212522]

end A212522

/-! ## A212522.P9809387121625405504

`(A001840(n)-n)*∑[A004526(n)]`
-/

namespace A212522.P9809387121625405504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001840 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212522.P9809387121625405504

namespace A212522

/-- `(A001840(n)-n)*∑[A004526(n)]` -/
def P9809387121625405504.Spec : Prop :=
  ∀ n, P9809387121625405504.a n = A212522 n

end A212522

/-! ## A212522.P10169078878584422978

`∑[A002265(2*n)]*A058937(n+2)`
-/

namespace A212522.P10169078878584422978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A058937 (n + 2)

end

end A212522.P10169078878584422978

namespace A212522

/-- `∑[A002265(2*n)]*A058937(n+2)` -/
def P10169078878584422978.Spec : Prop :=
  ∀ n, P10169078878584422978.a n = A212522 n

end A212522

/-! ## A212522.P3021895956980114655

`∑[A271484(2*n+1)]*∑[A271484(4*n)]`
-/

namespace A212522.P3021895956980114655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212522.P3021895956980114655

namespace A212522

/-- `∑[A271484(2*n+1)]*∑[A271484(4*n)]` -/
def P3021895956980114655.Spec : Prop :=
  ∀ n, P3021895956980114655.a n = A212522 n

end A212522

/-! ## A212522.P6046476211090010508

`A002265(n²)*A058937(n+2)`
-/

namespace A212522.P6046476211090010508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n ^ 2) * A058937 (n + 2)

end

end A212522.P6046476211090010508

namespace A212522

/-- `A002265(n²)*A058937(n+2)` -/
def P6046476211090010508.Spec : Prop :=
  ∀ n, P6046476211090010508.a n = A212522 n

end A212522

/-!
# A212523: Number of (w,x,y,z) with all terms in {1,...,n} and w+x

The programs for A212523, the canonical program `A212523.P9950890251900484499` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212523 has offset 0).

The definition of A212523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212523.P9950890251900484499

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=31, a(4)=106`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212523

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9950890251900484499.Spec : Prop :=
  ∀ n, P9950890251900484499.a n = A212523 n

theorem P9950890251900484499.correct : P9950890251900484499.Spec := by
  intro n
  simp only [A212523]

end A212523

/-! ## A212523.P12263875437387502216

`C(n²+1, 2)-∑[n²]`
-/

namespace A212523.P12263875437387502216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + 1) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212523.P12263875437387502216

namespace A212523

/-- `C(n²+1, 2)-∑[n²]` -/
def P12263875437387502216.Spec : Prop :=
  ∀ n, P12263875437387502216.a n = A212523 n

end A212523

/-! ## A212523.P6192947614767273940

`(n²+(n+1)/3)*C(n, 2)`
-/

namespace A212523.P6192947614767273940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℚ) + (n + 1 : ℚ) / 3) * (Nat.choose n 2 : ℚ)

end

end A212523.P6192947614767273940

namespace A212523

/-- `(n²+(n+1)/3)*C(n, 2)` -/
def P6192947614767273940.Spec : Prop :=
  ∀ n, P6192947614767273940.a n = (A212523 n : ℚ)

end A212523

/-! ## A212523.P6547341793412744556

`∑[n*C(2*n, 2)]-n^3`
-/

namespace A212523.P6547341793412744556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 3 : ℤ)

end

end A212523.P6547341793412744556

namespace A212523

/-- `∑[n*C(2*n, 2)]-n^3` -/
def P6547341793412744556.Spec : Prop :=
  ∀ n, P6547341793412744556.a n = A212523 n

end A212523

/-! ## A212523.P18274894962041131184

`∑[2*n*(1-n)²+n]-n`
-/

namespace A212523.P18274894962041131184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A212523.P18274894962041131184

namespace A212523

/-- `∑[2*n*(1-n)²+n]-n` -/
def P18274894962041131184.Spec : Prop :=
  ∀ n, P18274894962041131184.a n = A212523 n

end A212523

/-! ## A212523.P4554739128800121803

`(n²²-A005900(n))/2`
-/

namespace A212523.P4554739128800121803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - A005900 n : ℚ) / 2

end

end A212523.P4554739128800121803

namespace A212523

/-- `(n²²-A005900(n))/2` -/
def P4554739128800121803.Spec : Prop :=
  ∀ n, P4554739128800121803.a n = (A212523 n : ℚ)

end A212523

/-! ## A212523.P16023759107913787495

`abs(A000330(n)-A037270(n))`
-/

namespace A212523.P16023759107913787495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000330 n - A037270 n|

end

end A212523.P16023759107913787495

namespace A212523

/-- `abs(A000330(n)-A037270(n))` -/
def P16023759107913787495.Spec : Prop :=
  ∀ n, P16023759107913787495.a n = A212523 n

end A212523

/-! ## A212523.P16698580640685449727

`abs(A008354(n)-A071238(n))`
-/

namespace A212523.P16698580640685449727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008354 n - A071238 n|

end

end A212523.P16698580640685449727

namespace A212523

/-- `abs(A008354(n)-A071238(n))` -/
def P16698580640685449727.Spec : Prop :=
  ∀ n, P16698580640685449727.a n = A212523 n

end A212523

/-! ## A212523.P10404732724165030453

`abs(A000578(n)-A103220(n))`
-/

namespace A212523.P10404732724165030453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A103220 n|

end

end A212523.P10404732724165030453

namespace A212523

/-- `abs(A000578(n)-A103220(n))` -/
def P10404732724165030453.Spec : Prop :=
  ∀ n, P10404732724165030453.a n = A212523 n

end A212523

/-! ## A212523.P6673820212948901612

`(A125082(n)+A064999(n))/2`
-/

namespace A212523.P6673820212948901612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125082 n + A064999 n : ℚ) / 2

end

end A212523.P6673820212948901612

namespace A212523

/-- `(A125082(n)+A064999(n))/2` -/
def P6673820212948901612.Spec : Prop :=
  ∀ n, P6673820212948901612.a n = (A212523 n : ℚ)

end A212523

/-! ## A212523.P9695692490646903586

`A212689(2*n)/4`
-/

namespace A212523.P9695692490646903586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212689 (2 * n) : ℚ) / 4

end

end A212523.P9695692490646903586

namespace A212523

/-- `A212689(2*n)/4` -/
def P9695692490646903586.Spec : Prop :=
  ∀ n, P9695692490646903586.a n = (A212523 n : ℚ)

end A212523

/-! ## A212523.P14211835772204475998

`A132295(A253909(n))`
-/

namespace A212523.P14211835772204475998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132295 (A253909 n).toNat

end

end A212523.P14211835772204475998

namespace A212523

/-- `A132295(A253909(n))` -/
def P14211835772204475998.Spec : Prop :=
  ∀ n, P14211835772204475998.a n = A212523 n

end A212523

/-!
# A212525: Primes containing a digit 3.

The programs for A212525, there is no canonical definition to state claims against.
-/

/-! ## A212525.P2060828100988572600

`p?[A062667(n+1)]`
-/

namespace A212525.P2060828100988572600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212525.P2060828100988572600

/-! ## A212525.P6345200763224514346

`∩[A004139(n+1), A062667(n+1)]`
-/

namespace A212525.P6345200763224514346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P6345200763224514346

/-! ## A212525.P2912480228540583626

`∩[A045319(n+1), A062667(n+1)]`
-/

namespace A212525.P2912480228540583626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P2912480228540583626

/-! ## A212525.P762541491608744035

`∩[A000040(n+1), A062667(n+1)]`
-/

namespace A212525.P762541491608744035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P762541491608744035

/-! ## A212525.P2389121653152375829

`∩[A006005(n+1), A062667(n+1)]`
-/

namespace A212525.P2389121653152375829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P2389121653152375829

/-! ## A212525.P2851284896053676656

`∩[A033946(n+1), A062667(n+1)]`
-/

namespace A212525.P2851284896053676656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P2851284896053676656

/-! ## A212525.P3029893195132288920

`∩[A053813(n+1), A062667(n+1)]`
-/

namespace A212525.P3029893195132288920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P3029893195132288920

/-! ## A212525.P1955844584107997359

`∩[A062667(n+1), A067126(n+1)]`
-/

namespace A212525.P1955844584107997359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P1955844584107997359

/-! ## A212525.P5360857796381765860

`∩[A055977(n+1), A062667(n+1)]`
-/

namespace A212525.P5360857796381765860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P5360857796381765860

/-! ## A212525.P3874454324998762353

`filter[A062667(n+1), A010051(#)]`
-/

namespace A212525.P3874454324998762353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A212525.P3874454324998762353

/-! ## A212525.P9265263078439624563

`record[A001414(A062667(round((n-1)/2)+2))]`
-/

namespace A212525.P9265263078439624563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A062667 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212525.P9265263078439624563

/-! ## A212525.P11365698743970925057

`∩[A001751(n+1), A062667(n+1)]`
-/

namespace A212525.P11365698743970925057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P11365698743970925057

/-! ## A212525.P5264761317037889006

`∩[A062667(n+1), A365406(n+1)]`
-/

namespace A212525.P5264761317037889006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P5264761317037889006

/-! ## A212525.P4149760701317978025

`∩[A038550(n+1), A062667(n+1)]`
-/

namespace A212525.P4149760701317978025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P4149760701317978025

/-! ## A212525.P16789262967192957235

`∩[A062667(n+1), A093641(n+1)]`
-/

namespace A212525.P16789262967192957235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P16789262967192957235

/-! ## A212525.P7946125162046375265

`∩[A062667(n+1), A123345(n+1)]`
-/

namespace A212525.P7946125162046375265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P7946125162046375265

/-! ## A212525.P575473357746874396

`∩[A062667(n+1), A100118(n+1)]`
-/

namespace A212525.P575473357746874396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P575473357746874396

/-! ## A212525.P8080625947802360449

`∩[A062667(n+1), A245303(n+1)]`
-/

namespace A212525.P8080625947802360449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P8080625947802360449

/-! ## A212525.P3591050261134140402

`∩[A062667(n+1), A119251(n+1)]`
-/

namespace A212525.P3591050261134140402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P3591050261134140402

/-! ## A212525.P1265828764373787406

`∩[A062667(n+1), A162722(n+1)]`
-/

namespace A212525.P1265828764373787406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212525.P1265828764373787406

/-!
# A212526: Negative integers in base -4.

The programs for A212526, there is no canonical definition to state claims against.
-/

/-! ## A212526.P16284348015324195873

`A007608(4*(n+1))/10`
-/

namespace A212526.P16284348015324195873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007608 (4 * (n + 1)) : ℚ) / 10

end

end A212526.P16284348015324195873

/-! ## A212526.P16610930362789926702

`floor(A007608(A004766(n+1))/10)`
-/

namespace A212526.P16610930362789926702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007608 (A004766 (n + 1)).toNat : ℚ) / 10⌋

end

end A212526.P16610930362789926702

/-! ## A212526.P10093805286560473011

`∑[or(13, A008683(A150376(n)))]`
-/

namespace A212526.P10093805286560473011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 13 (A008683 (A150376 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212526.P10093805286560473011

/-! ## A212526.P1612978792802297989

`A132429(A080926(n))+A007090(n+4)`
-/

namespace A212526.P1612978792802297989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (A080926 n).toNat + A007090 (n + 4)

end

end A212526.P1612978792802297989

/-!
# A212527: G.f. satisfies: A(x) = 1 + x*A(x)^2 / (A(I*x) * A(-I*x)).

The programs for A212527, there is no canonical definition to state claims against.
-/

/-! ## A212527.P14047062590310192139

`A013604(A047755(n)+A007318(n+1))`
-/

namespace A212527.P14047062590310192139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013604 (A047755 n + A007318 (n + 1)).toNat

end

end A212527.P14047062590310192139

/-! ## A212527.P6692244853659170889

`A115857(A000682(n+1)*A000688(n+1))`
-/

namespace A212527.P6692244853659170889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115857 (A000682 (n + 1) * A000688 (n + 1)).toNat

end

end A212527.P6692244853659170889

/-!
# A212528: The periodic part of the decimal expansion of prime(n-1) / prime(n).

The programs for A212528, there is no canonical definition to state claims against.
-/

/-! ## A212528.P15045074605287991392

`A060297(A000040(n+1))`
-/

namespace A212528.P15045074605287991392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060297 (A000040 (n + 1)).toNat

end

end A212528.P15045074605287991392

/-! ## A212528.P457690179556263257

`A000040(n+1)*A060282(n+2)`
-/

namespace A212528.P457690179556263257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A060282 (n + 2)

end

end A212528.P457690179556263257

/-!
# A212529: Negative numbers in base -2.

The programs for A212529, the canonical program `A212529.P13831011610352375140` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212529 has offset 1).

The definition of A212529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212529.P9809130194821570470

`A039724(2*(n+1))/10`
-/

namespace A212529.P9809130194821570470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039724 (2 * (n + 1)) : ℚ) / 10

end

end A212529.P9809130194821570470

namespace A212529

/-- `A039724(2*(n+1))/10` -/
def P9809130194821570470.Spec : Prop :=
  ∀ n, P9809130194821570470.a n = (A212529 (n + 1) : ℚ)

end A212529

/-! ## A212529.P13831011610352375140

`A007088(A005352(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212529

/-- `A007088(A005352(n+1))` -/
def P13831011610352375140.Spec : Prop :=
  ∀ n, P13831011610352375140.a n = A212529 (n + 1)

theorem P13831011610352375140.correct : P13831011610352375140.Spec := by
  intro n
  simp only [A212529, Nat.add_sub_cancel]

end A212529

/-! ## A212529.P1085199168790830269

`A185544(A005351(2*(n+1)))`
-/

namespace A212529.P1085199168790830269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A005351 (2 * (n + 1))).toNat

end

end A212529.P1085199168790830269

namespace A212529

/-- `A185544(A005351(2*(n+1)))` -/
def P1085199168790830269.Spec : Prop :=
  ∀ n, P1085199168790830269.a n = A212529 (n + 1)

end A212529

/-! ## A212529.P9981996945411259716

`A185544(2*A005352(n+1))`
-/

namespace A212529.P9981996945411259716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A005352 (n + 1)).toNat

end

end A212529.P9981996945411259716

namespace A212529

/-- `A185544(2*A005352(n+1))` -/
def P9981996945411259716.Spec : Prop :=
  ∀ n, P9981996945411259716.a n = A212529 (n + 1)

end A212529

/-! ## A212529.P7854801782722278428

`A007088(A005351(2*(n+1))/2)`
-/

namespace A212529.P7854801782722278428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A005351 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A212529.P7854801782722278428

namespace A212529

/-- `A007088(A005351(2*(n+1))/2)` -/
def P7854801782722278428.Spec : Prop :=
  ∀ n, P7854801782722278428.a n = A212529 (n + 1)

end A212529

/-! ## A212529.P3179901962782099003

`A185544(A005352(n+1)+A005352(n+1))`
-/

namespace A212529.P3179901962782099003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A005352 (n + 1) + A005352 (n + 1)).toNat

end

end A212529.P3179901962782099003

namespace A212529

/-- `A185544(A005352(n+1)+A005352(n+1))` -/
def P3179901962782099003.Spec : Prop :=
  ∀ n, P3179901962782099003.a n = A212529 (n + 1)

end A212529

/-!
# A212530: Difference between the sum of the first n primes s(n) and the nearest square < s(n).

The programs for A212530, there is no canonical definition to state claims against.
-/

/-! ## A212530.P14568928779460937075

`A071797(A007504(n+1))`
-/

namespace A212530.P14568928779460937075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A007504 (n + 1)).toNat

end

end A212530.P14568928779460937075

/-! ## A212530.P8323809382349522745

`A071797(∑[A000040(n+1)])`
-/

namespace A212530.P8323809382349522745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212530.P8323809382349522745

/-! ## A212530.P4381814568532234257

`A071797(∑[A008578(n+2)])`
-/

namespace A212530.P4381814568532234257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212530.P4381814568532234257

/-! ## A212530.P4046199970569305722

`A053186(A237589(n+1))+1`
-/

namespace A212530.P4046199970569305722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A237589 (n + 1)).toNat + 1

end

end A212530.P4046199970569305722

/-! ## A212530.P10723227467244912845

`A071797(A237589(n+1)+1)`
-/

namespace A212530.P10723227467244912845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A237589 (n + 1) + 1).toNat

end

end A212530.P10723227467244912845

/-! ## A212530.P9702270612170336304

`A071797(∑[sqrt(A001248(n+1))])`
-/

namespace A212530.P9702270612170336304
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A212530.P9702270612170336304

/-! ## A212530.P8926773559258458178

`A053186(∑[record[A110560(n)]])+1`
-/

namespace A212530.P8926773559258458178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A212530.P8926773559258458178

/-! ## A212530.P1793536876904186501

`A053186(∑[A006005(n+1)])+1`
-/

namespace A212530.P1793536876904186501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A212530.P1793536876904186501

/-! ## A212530.P12661744765206372732

`A053186(A007504(n+1)-1)+1`
-/

namespace A212530.P12661744765206372732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A007504 (n + 1) - 1).toNat + 1

end

end A212530.P12661744765206372732

/-! ## A212530.P4135712237211706730

`A053186(A014284(n+2)-2)+1`
-/

namespace A212530.P4135712237211706730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A014284 (n + 2) - 2).toNat + 1

end

end A212530.P4135712237211706730

/-!
# A212531: Number of nondecreasing sequences of n 1..n integers with every element dividing the sequence sum.

The programs for A212531, there is no canonical definition to state claims against.
-/

/-! ## A212531.P10315361402005873525

`A212536(∑[4*n]+1)`
-/

namespace A212531.P10315361402005873525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212531.P10315361402005873525

/-! ## A212531.P14592420408966248945

`A212536(A001844(n))+char[25]`
-/

namespace A212531.P14592420408966248945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212531.P14592420408966248945

/-! ## A212531.P3961373695965787151

`record[A212536(A003602((n+1)²))]`
-/

namespace A212531.P3961373695965787151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212531.P3961373695965787151

/-! ## A212531.P8102056918021537805

`record[A003982(n)*A212536(n+1)]`
-/

namespace A212531.P8102056918021537805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A212536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212531.P8102056918021537805

/-! ## A212531.P2963122079208881384

`A212536(A001844(n))%A034472(n)`
-/

namespace A212531.P2963122079208881384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212536 (A001844 n).toNat) (A034472 n)

end

end A212531.P2963122079208881384

/-!
# A212532: Number of nondecreasing sequences of n 1..4 integers with every element dividing the sequence sum.

The programs for A212532, there is no canonical definition to state claims against.
-/

/-! ## A212532.P13105996587469370181

`A212536(∑[n+4]+3)`
-/

namespace A212532.P13105996587469370181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A212532.P13105996587469370181

/-! ## A212532.P15745140466220989909

`or(char[2], A212536(A055998(n+2)))`
-/

namespace A212532.P15745140466220989909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212536 (A055998 (n + 2)).toNat)

end

end A212532.P15745140466220989909

/-! ## A212532.P13947418756825458686

`A212536(Δ[A034857(n+1)])+C(n, 64)`
-/

namespace A212532.P13947418756825458686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (f1 (n + 1) - f1 n).toNat + (Nat.choose n 64 : ℤ)

end

end A212532.P13947418756825458686

/-! ## A212532.P4532673508257155112

`A212536(Δ[A034857(n+1)])%A000045(n+6)`
-/

namespace A212532.P4532673508257155112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212536 (f1 (n + 1) - f1 n).toNat) (A000045 (n + 6))

end

end A212532.P4532673508257155112

/-!
# A212533: Number of nondecreasing sequences of n 1..5 integers with every element dividing the sequence sum.

The programs for A212533, there is no canonical definition to state claims against.
-/

/-! ## A212533.P3131104996252441421

`A212536(∑[n+5]+6)`
-/

namespace A212533.P3131104996252441421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A212533.P3131104996252441421

/-! ## A212533.P14308422837966201755

`A212536(Δ[A023545(n+1)])%(3*(n+1))²`
-/

namespace A212533.P14308422837966201755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212536 (f1 (n + 1) - f1 n).toNat) ((3 * (n + 1)) ^ 2 : ℤ)

end

end A212533.P14308422837966201755

/-! ## A212533.P13120429150185036352

`A212536(Δ[A264443(n)])%A045713(n+1)`
-/

namespace A212533.P13120429150185036352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212536 (f1 (n + 1) - f1 n).toNat) (A045713 (n + 1))

end

end A212533.P13120429150185036352

/-!
# A212534: Number of nondecreasing sequences of n 1..6 integers with every element dividing the sequence sum.

The programs for A212534, there is no canonical definition to state claims against.
-/

/-! ## A212534.P1357952310602528528

`A212536(∑[n+6]+10)`
-/

namespace A212534.P1357952310602528528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A212534.P1357952310602528528

/-! ## A212534.P8666114981377824784

`A212536(A052905(n+3))%A188263(n+1)`
-/

namespace A212534.P8666114981377824784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212536 (A052905 (n + 3)).toNat) (A188263 (n + 1))

end

end A212534.P8666114981377824784

/-! ## A212534.P16875010346404623517

`A212536(A052905(n+3))+A123023(2*n+1)`
-/

namespace A212534.P16875010346404623517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A052905 (n + 3)).toNat + A123023 (2 * n + 1)

end

end A212534.P16875010346404623517

/-! ## A212534.P13223660384524888169

`A212536(A000124(n+6)-6)%A002997(n+1)`
-/

namespace A212534.P13223660384524888169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212536 (A000124 (n + 6) - 6).toNat) (A002997 (n + 1))

end

end A212534.P13223660384524888169

/-!
# A212535: Number of nondecreasing sequences of n 1..7 integers with every element dividing the sequence sum.

The programs for A212535, there is no canonical definition to state claims against.
-/

/-! ## A212535.P2655328809503702090

`A212536(A055999(n+4))`
-/

namespace A212535.P2655328809503702090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A055999 (n + 4)).toNat

end

end A212535.P2655328809503702090

/-! ## A212535.P12435050254588211175

`A212536(eq[4, A219347(n)])`
-/

namespace A212535.P12435050254588211175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212535.P12435050254588211175

/-! ## A212535.P7393241581216586717

`A212536(eq[6, A193592(n)])`
-/

namespace A212535.P7393241581216586717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212535.P7393241581216586717

/-! ## A212535.P9052563316816606198

`A212536(Δ[A023551(n+2)])`
-/

namespace A212535.P9052563316816606198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (f1 (n + 1) - f1 n).toNat

end

end A212535.P9052563316816606198

/-! ## A212535.P2372164978975655855

`A212536(A055998(n+5)-3)`
-/

namespace A212535.P2372164978975655855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A055998 (n + 5) - 3).toNat

end

end A212535.P2372164978975655855

/-!
# A212536: T(n,k)=Number of nondecreasing sequences of n 1..k integers with every element dividing the sequence sum.

The programs for A212536, there is no canonical definition to state claims against.
-/

/-! ## A212536.P18236625743878381686

`A066882(A229243(n))+A004736(n+1)`
-/

namespace A212536.P18236625743878381686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A229243 n).toNat + A004736 (n + 1)

end

end A212536.P18236625743878381686

/-! ## A212536.P8459832969604162126

`A001222(A090988(n+1)*A229243(n))`
-/

namespace A212536.P8459832969604162126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090988 (n + 1) * A229243 n).toNat

end

end A212536.P8459832969604162126

/-! ## A212536.P1902593935277662780

`A066882(A229243(n))+sqrt(A055461(n+1))`
-/

namespace A212536.P1902593935277662780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066882 (A229243 n).toNat : ℝ) + Real.sqrt (A055461 (n + 1) : ℝ)

end

end A212536.P1902593935277662780

/-! ## A212536.P8141330817749013544

`A066882(A229243(n))+A000005(A130321(n))`
-/

namespace A212536.P8141330817749013544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A229243 n).toNat + A000005 (A130321 n).toNat

end

end A212536.P8141330817749013544

/-! ## A212536.P6291627663529293715

`A066882(A229243(n))+A001222(A182944(n+1))`
-/

namespace A212536.P6291627663529293715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (A229243 n).toNat + A001222 (A182944 (n + 1)).toNat

end

end A212536.P6291627663529293715

/-!
# A212537: Number of nondecreasing sequences of 4 1..n integers with every element dividing the sequence sum.

The programs for A212537, there is no canonical definition to state claims against.
-/

/-! ## A212537.P1735293898266175232

`A212536(∑[n+3]+7)`
-/

namespace A212537.P1735293898266175232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A212537.P1735293898266175232

/-! ## A212537.P16377218681915748329

`or(char[1], A212536(A055999(n)+10))`
-/

namespace A212537.P16377218681915748329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212536 (A055999 n + 10).toNat)

end

end A212537.P16377218681915748329

/-! ## A212537.P13056556302989564303

`A212536(A000217(n+3)+4)+char[46]`
-/

namespace A212537.P13056556302989564303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212537.P13056556302989564303

/-! ## A212537.P12079911995341812176

`A212536(A055999(n)+10)%A282773(n+1)`
-/

namespace A212537.P12079911995341812176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212536 (A055999 n + 10).toNat) (A282773 (n + 1))

end

end A212537.P12079911995341812176

/-! ## A212537.P8470773773216272545

`A007318(C(2, n))*A212536(A055999(n)+10)`
-/

namespace A212537.P8470773773216272545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212536 (A055999 n + 10).toNat

end

end A212537.P8470773773216272545

/-!
# A212538: Number of nondecreasing sequences of 5 1..n integers with every element dividing the sequence sum.

The programs for A212538, there is no canonical definition to state claims against.
-/

/-! ## A212538.P1559070765413829003

`A212536(A167499(n+3))`
-/

namespace A212538.P1559070765413829003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A167499 (n + 3)).toNat

end

end A212538.P1559070765413829003

/-! ## A212538.P14039398125547921096

`A212536(A155212(n)+13)`
-/

namespace A212538.P14039398125547921096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A155212 n + 13).toNat

end

end A212538.P14039398125547921096

/-! ## A212538.P15366161469688970037

`A212536(A056000(n)+15)`
-/

namespace A212538.P15366161469688970037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A056000 n + 15).toNat

end

end A212538.P15366161469688970037

/-! ## A212538.P18134150381269529241

`A212536(A167614(n+3)+2)`
-/

namespace A212538.P18134150381269529241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A167614 (n + 3) + 2).toNat

end

end A212538.P18134150381269529241

/-! ## A212538.P5889468885368966750

`A212536(A145018(n+5)+1)`
-/

namespace A212538.P5889468885368966750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A145018 (n + 5) + 1).toNat

end

end A212538.P5889468885368966750

/-!
# A212539: Number of nondecreasing sequences of 6 1..n integers with every element dividing the sequence sum.

The programs for A212539, there is no canonical definition to state claims against.
-/

/-! ## A212539.P10996766184861300450

`A212536(∑[n+5]+16)`
-/

namespace A212539.P10996766184861300450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A212539.P10996766184861300450

/-! ## A212539.P7407675937823632330

`or(char[3], A212536(A000217(n+5)+6))`
-/

namespace A212539.P7407675937823632330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212536 (A000217 (n + 5) + 6).toNat)

end

end A212539.P7407675937823632330

/-! ## A212539.P12660352721603207893

`A212536(A000096(n+4)+7)%(n+2)²`
-/

namespace A212539.P12660352721603207893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212536 (A000096 (n + 4) + 7).toNat) ((n + 2) ^ 2 : ℤ)

end

end A212539.P12660352721603207893

/-! ## A212539.P11131603192818962197

`or(A000007(n), A212536(A253145(n+4)+6))`
-/

namespace A212539.P11131603192818962197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A212536 (A253145 (n + 4) + 6).toNat)

end

end A212539.P11131603192818962197

/-!
# A212540: Number of nondecreasing sequences of 7 1..n integers with every element dividing the sequence sum.

The programs for A212540, there is no canonical definition to state claims against.
-/

/-! ## A212540.P6181538044286707724

`A212536(A056119(n)+28)`
-/

namespace A212540.P6181538044286707724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A056119 n + 28).toNat

end

end A212540.P6181538044286707724

/-! ## A212540.P12154061184854083551

`A212536(A167499(n+5)+2)`
-/

namespace A212540.P12154061184854083551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A167499 (n + 5) + 2).toNat

end

end A212540.P12154061184854083551

/-! ## A212540.P6472659262815065018

`A212536(A000124(n+6)+6)`
-/

namespace A212540.P6472659262815065018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A000124 (n + 6) + 6).toNat

end

end A212540.P6472659262815065018

/-! ## A212540.P255886292103560918

`A212536(A000096(n+5)+8)`
-/

namespace A212540.P255886292103560918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A000096 (n + 5) + 8).toNat

end

end A212540.P255886292103560918

/-! ## A212540.P18181225407004852695

`A212536(A000217(n+6)+7)`
-/

namespace A212540.P18181225407004852695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (A000217 (n + 6) + 7).toNat

end

end A212540.P18181225407004852695

/-!
# A212542: Base 2i representation of negative integers.

The programs for A212542, there is no canonical definition to state claims against.
-/

/-! ## A212542.P11106226901652099870

`A051022(A212526(n+1))`
-/

namespace A212542.P11106226901652099870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A212526 (n + 1)).toNat

end

end A212542.P11106226901652099870

/-! ## A212542.P14892349929583437556

`A051022(A007608(4*(n+1))/10)`
-/

namespace A212542.P14892349929583437556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.roundAway ((A007608 (4 * (n + 1)) : ℚ) / 10)).toNat

end

end A212542.P14892349929583437556

/-!
# A212543: Number of partitions of n containing at least one part m-3 if m is the largest part.

The programs for A212543, there is no canonical definition to state claims against.
-/

/-! ## A212543.P18083229643663014283

`Δ[A035301(n)-A008804(n)]`
-/

namespace A212543.P18083229643663014283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035301 n - A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212543.P18083229643663014283

/-! ## A212543.P12774361754205482574

`A212551(∑[n+3]+6)`
-/

namespace A212543.P12774361754205482574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A212543.P12774361754205482574

/-! ## A212543.P2460629036826062910

`or(char[2], A212551(A167614(n+2)))`
-/

namespace A212543.P2460629036826062910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212551 (A167614 (n + 2)).toNat)

end

end A212543.P2460629036826062910

/-! ## A212543.P15816491304061768052

`A157928(n)*A212551(A167614(n+2))`
-/

namespace A212543.P15816491304061768052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A212551 (A167614 (n + 2)).toNat

end

end A212543.P15816491304061768052

/-! ## A212543.P2166843355660698180

`A212551(A167614(n+2))%A000041(n)`
-/

namespace A212543.P2166843355660698180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212551 (A167614 (n + 2)).toNat) (A000041 n)

end

end A212543.P2166843355660698180

/-! ## A212543.P1346928491593681337

`lcm(A033999(n), A212551(A167614(n+2)))`
-/

namespace A212543.P1346928491593681337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A212551 (A167614 (n + 2)).toNat)

end

end A212543.P1346928491593681337

/-! ## A212543.P14830990593489876051

`A212551(A167614(n+2))+A000035(2*n)`
-/

namespace A212543.P14830990593489876051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167614 (n + 2)).toNat + A000035 (2 * n)

end

end A212543.P14830990593489876051

/-! ## A212543.P2675871567066921516

`A000041(C(2, n))*A212551(A167614(n+2))`
-/

namespace A212543.P2675871567066921516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A212551 (A167614 (n + 2)).toNat

end

end A212543.P2675871567066921516

/-! ## A212543.P2840179340107670115

`A007318(C(2, n))*A212551(A167614(n+2))`
-/

namespace A212543.P2840179340107670115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212551 (A167614 (n + 2)).toNat

end

end A212543.P2840179340107670115

/-! ## A212543.P8087632064848456608

`A007318(gcd(n, n+1))*A212551(A167614(n+2))`
-/

namespace A212543.P8087632064848456608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A212551 (A167614 (n + 2)).toNat

end

end A212543.P8087632064848456608

/-! ## A212543.P17898938088960987486

`A001222((-1)^n+4)*A212551(A167614(n+2))`
-/

namespace A212543.P17898938088960987486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((-1) ^ n + 4).toNat * A212551 (A167614 (n + 2)).toNat

end

end A212543.P17898938088960987486

/-! ## A212543.P5515803081330138727

`A014963(2*(2*n+1))*A212551(A167614(n+2))`
-/

namespace A212543.P5515803081330138727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (2 * n + 1)) * A212551 (A167614 (n + 2)).toNat

end

end A212543.P5515803081330138727

/-! ## A212543.P16930812560786788779

`A212551(A167614(n+2))+A007423(A084354(n+1))`
-/

namespace A212543.P16930812560786788779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167614 (n + 2)).toNat + A007423 (A084354 (n + 1)).toNat

end

end A212543.P16930812560786788779

/-! ## A212543.P7957623842289845529

`A212551(A167614(n+2))+A084342(A073184(n+1))`
-/

namespace A212543.P7957623842289845529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167614 (n + 2)).toNat + A084342 (A073184 (n + 1)).toNat

end

end A212543.P7957623842289845529

/-! ## A212543.P7822256027632793886

`A212551(A167614(n+2))+A007423(A184774(n+1))`
-/

namespace A212543.P7822256027632793886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167614 (n + 2)).toNat + A007423 (A184774 (n + 1)).toNat

end

end A212543.P7822256027632793886

/-! ## A212543.P2832279276160827042

`A212551(A167614(n+2))+A007423(A184777(n+1))`
-/

namespace A212543.P2832279276160827042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167614 (n + 2)).toNat + A007423 (A184777 (n + 1)).toNat

end

end A212543.P2832279276160827042

/-! ## A212543.P12712757176695848142

`A297109(A084365(n+1))+A212551(A167614(n+2))`
-/

namespace A212543.P12712757176695848142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A084365 (n + 1)).toNat + A212551 (A167614 (n + 2)).toNat

end

end A212543.P12712757176695848142

/-! ## A212543.P10675585297962502641

`A007318(n-A002262(n))*A212551(A167614(n+2))`
-/

namespace A212543.P10675585297962502641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) - A002262 n).toNat * A212551 (A167614 (n + 2)).toNat

end

end A212543.P10675585297962502641

/-! ## A212543.P6536989535715928290

`A008683(2*A000040(n+1))*A212551(A167614(n+2))`
-/

namespace A212543.P6536989535715928290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A212551 (A167614 (n + 2)).toNat

end

end A212543.P6536989535715928290

/-!
# A212544: Number of partitions of n containing at least one part m-4 if m is the largest part.

The programs for A212544, there is no canonical definition to state claims against.
-/

/-! ## A212544.P6713879376989907656

`A212543(n+5)-A001400(n)`
-/

namespace A212544.P6713879376989907656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212543 (n + 5) - A001400 n

end

end A212544.P6713879376989907656

/-! ## A212544.P14814265597002316742

`A212543(n+5)+A001400(n)*A260196(n+2)`
-/

namespace A212544.P14814265597002316742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212543 (n + 5) + A001400 n * A260196 (n + 2)

end

end A212544.P14814265597002316742

/-! ## A212544.P1042234501357410123

`A035301(n+3)-A035300(n+3)`
-/

namespace A212544.P1042234501357410123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035301 (n + 3) - A035300 (n + 3)

end

end A212544.P1042234501357410123

/-! ## A212544.P18009552068806651675

`A035301(A020639(2*(n+1))+n+1)%A035300(n+3)`
-/

namespace A212544.P18009552068806651675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035301 (A020639 (2 * (n + 1)) + (n + 1 : ℤ)).toNat) (A035300 (n + 3))

end

end A212544.P18009552068806651675

/-! ## A212544.P14722585172436467835

`A212551(A145018(n+5))`
-/

namespace A212544.P14722585172436467835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A145018 (n + 5)).toNat

end

end A212544.P14722585172436467835

/-! ## A212544.P15708558641172067530

`A212551(A155212(n)+12)`
-/

namespace A212544.P15708558641172067530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A155212 n + 12).toNat

end

end A212544.P15708558641172067530

/-! ## A212544.P384585323970846928

`A212551(A056000(n)+14)`
-/

namespace A212544.P384585323970846928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A056000 n + 14).toNat

end

end A212544.P384585323970846928

/-! ## A212544.P827812877154308557

`A212551(eq[4, A002262(n)])`
-/

namespace A212544.P827812877154308557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212544.P827812877154308557

/-! ## A212544.P16334674483038623111

`A212551(A167614(n+3)+1)`
-/

namespace A212544.P16334674483038623111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167614 (n + 3) + 1).toNat

end

end A212544.P16334674483038623111

/-! ## A212544.P1099020452339122317

`A212551(A167499(n+3)-1)`
-/

namespace A212544.P1099020452339122317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167499 (n + 3) - 1).toNat

end

end A212544.P1099020452339122317

/-! ## A212544.P14046078203106578503

`A212551(A133263(n+4)+2)`
-/

namespace A212544.P14046078203106578503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A133263 (n + 4) + 2).toNat

end

end A212544.P14046078203106578503

/-! ## A212544.P10066790888237746384

`A212551(A166136(n+3)-2)`
-/

namespace A212544.P10066790888237746384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A166136 (n + 3) - 2).toNat

end

end A212544.P10066790888237746384

/-! ## A212544.P9755816151291363101

`A212551(A000124(n+4)+3)`
-/

namespace A212544.P9755816151291363101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000124 (n + 4) + 3).toNat

end

end A212544.P9755816151291363101

/-! ## A212544.P3389785166394802284

`A212551(A253145(n+3)+4)`
-/

namespace A212544.P3389785166394802284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A253145 (n + 3) + 4).toNat

end

end A212544.P3389785166394802284

/-! ## A212544.P1908864398545168793

`A212551(A000096(n+3)+5)`
-/

namespace A212544.P1908864398545168793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000096 (n + 3) + 5).toNat

end

end A212544.P1908864398545168793

/-! ## A212544.P16461379851264611754

`A212551(A000217(n+4)+4)`
-/

namespace A212544.P16461379851264611754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000217 (n + 4) + 4).toNat

end

end A212544.P16461379851264611754

/-! ## A212544.P10979369146980628985

`A212551(A051936(n+4)+13)`
-/

namespace A212544.P10979369146980628985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A051936 (n + 4) + 13).toNat

end

end A212544.P10979369146980628985

/-! ## A212544.P219646351565221270

`A212551(A002061(n+3)-∑[n]+7)`
-/

namespace A212544.P219646351565221270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A002061 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 7).toNat

end

end A212544.P219646351565221270

/-!
# A212545: Number of partitions of n containing at least one part m-5 if m is the largest part.

The programs for A212545, there is no canonical definition to state claims against.
-/

/-! ## A212545.P6949892213744590205

`A212551(A167499(n+4))`
-/

namespace A212545.P6949892213744590205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167499 (n + 4)).toNat

end

end A212545.P6949892213744590205

/-! ## A212545.P419144578751972009

`A212551(A166136(n+4)-1)`
-/

namespace A212545.P419144578751972009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A166136 (n + 4) - 1).toNat

end

end A212545.P419144578751972009

/-! ## A212545.P8062464196629733291

`A212551(A167614(n+4)+2)`
-/

namespace A212545.P8062464196629733291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167614 (n + 4) + 2).toNat

end

end A212545.P8062464196629733291

/-! ## A212545.P10494646274562704668

`A212551(A145018(n+6)+1)`
-/

namespace A212545.P10494646274562704668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A145018 (n + 6) + 1).toNat

end

end A212545.P10494646274562704668

/-! ## A212545.P3160167311262650399

`A212551(A000124(n+5)+4)`
-/

namespace A212545.P3160167311262650399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000124 (n + 5) + 4).toNat

end

end A212545.P3160167311262650399

/-! ## A212545.P13858267984003632634

`A212551(A000096(n+4)+6)`
-/

namespace A212545.P13858267984003632634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000096 (n + 4) + 6).toNat

end

end A212545.P13858267984003632634

/-! ## A212545.P7770613532608447058

`A212551(A000217(n+5)+5)`
-/

namespace A212545.P7770613532608447058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000217 (n + 5) + 5).toNat

end

end A212545.P7770613532608447058

/-! ## A212545.P8086170825368697256

`A212551(A034856(n+4)+7)`
-/

namespace A212545.P8086170825368697256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A034856 (n + 4) + 7).toNat

end

end A212545.P8086170825368697256

/-! ## A212545.P1637660888619545725

`A212551(Δ[A023545(n+1)]+9)`
-/

namespace A212545.P1637660888619545725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (f1 (n + 1) - f1 n + 9).toNat

end

end A212545.P1637660888619545725

/-! ## A212545.P7689530360118376429

`A212551(A055998(n+4)-(n-2))`
-/

namespace A212545.P7689530360118376429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A055998 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A212545.P7689530360118376429

/-! ## A212545.P133770883000989643

`A212551(A161680(n+7)-(n+1))`
-/

namespace A212545.P133770883000989643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A161680 (n + 7) - (n + 1 : ℤ)).toNat

end

end A212545.P133770883000989643

/-! ## A212545.P17304706861932380753

`A212551(A055999(n+4)-2*(n+1))`
-/

namespace A212545.P17304706861932380753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A212545.P17304706861932380753

/-! ## A212545.P572226003417398554

`A212551(A027379(n+3)+9-and(1, n)!)`
-/

namespace A212545.P572226003417398554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A027379 (n + 3) + 9 - (Nat.factorial (Nat.land 1 n) : ℤ)).toNat

end

end A212545.P572226003417398554

/-! ## A212545.P5954991712316094132

`A212551(A253145(n+2)+A005843(n+7))`
-/

namespace A212545.P5954991712316094132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A253145 (n + 2) + A005843 (n + 7)).toNat

end

end A212545.P5954991712316094132

/-!
# A212546: Number of partitions of n containing at least one part m-6 if m is the largest part.

The programs for A212546, there is no canonical definition to state claims against.
-/

/-! ## A212546.P15906957600941104492

`A212545(n+7)-A001402(n)`
-/

namespace A212546.P15906957600941104492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212545 (n + 7) - A001402 n

end

end A212546.P15906957600941104492

/-! ## A212546.P1016553202629673995

`A212545(n+7)-A026812(n+6)`
-/

namespace A212546.P1016553202629673995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212545 (n + 7) - A026812 (n + 6)

end

end A212546.P1016553202629673995

/-! ## A212546.P11299562120614385039

`A212545(n+7)-(A001401(n+1)-A060025(n+1))`
-/

namespace A212546.P11299562120614385039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212545 (n + 7) - (A001401 (n + 1) - A060025 (n + 1))

end

end A212546.P11299562120614385039

/-! ## A212546.P17905786968189105753

`A212545(n+7)-A152146(A167614(n+2))`
-/

namespace A212546.P17905786968189105753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212545 (n + 7) - A152146 (A167614 (n + 2)).toNat

end

end A212546.P17905786968189105753

/-! ## A212546.P11196476702348937556

`A212551(A166136(n+5))`
-/

namespace A212546.P11196476702348937556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A166136 (n + 5)).toNat

end

end A212546.P11196476702348937556

/-! ## A212546.P458513284992532951

`A212551(A302537(n)+26)`
-/

namespace A212546.P458513284992532951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A302537 n + 26).toNat

end

end A212546.P458513284992532951

/-! ## A212546.P17101338332234503396

`A212551(A056119(n)+27)`
-/

namespace A212546.P17101338332234503396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A056119 n + 27).toNat

end

end A212546.P17101338332234503396

/-! ## A212546.P12332599534788823847

`A212551(A167499(n+5)+1)`
-/

namespace A212546.P12332599534788823847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167499 (n + 5) + 1).toNat

end

end A212546.P12332599534788823847

/-! ## A212546.P12224624763419664687

`A212551(A167614(n+5)+3)`
-/

namespace A212546.P12224624763419664687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167614 (n + 5) + 3).toNat

end

end A212546.P12224624763419664687

/-! ## A212546.P5674922757365829532

`A212551(A000124(n+6)+5)`
-/

namespace A212546.P5674922757365829532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000124 (n + 6) + 5).toNat

end

end A212546.P5674922757365829532

/-! ## A212546.P15382462620565160681

`A212551(A000096(n+5)+7)`
-/

namespace A212546.P15382462620565160681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000096 (n + 5) + 7).toNat

end

end A212546.P15382462620565160681

/-! ## A212546.P9329971446825504786

`A212551(A000217(n+6)+6)`
-/

namespace A212546.P9329971446825504786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000217 (n + 6) + 6).toNat

end

end A212546.P9329971446825504786

/-! ## A212546.P6617782184893989226

`A212551(A161680(n+7)+6)`
-/

namespace A212546.P6617782184893989226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A161680 (n + 7) + 6).toNat

end

end A212546.P6617782184893989226

/-! ## A212546.P6743021373018863421

`A212551(A046691(n+4)+10)`
-/

namespace A212546.P6743021373018863421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A046691 (n + 4) + 10).toNat

end

end A212546.P6743021373018863421

/-! ## A212546.P13774942830709928434

`A212551(A133263(n+7)-(n+3))`
-/

namespace A212546.P13774942830709928434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A133263 (n + 7) - (n + 3 : ℤ)).toNat

end

end A212546.P13774942830709928434

/-! ## A212546.P18121012649483489814

`A212551(A055999(n+6)-A008486(n+4))`
-/

namespace A212546.P18121012649483489814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A055999 (n + 6) - A008486 (n + 4)).toNat

end

end A212546.P18121012649483489814

/-!
# A212547: Number of partitions of n containing at least one part m-7 if m is the largest part.

The programs for A212547, there is no canonical definition to state claims against.
-/

/-! ## A212547.P2917155040662942910

`A212546(n+8)-A008636(n)`
-/

namespace A212547.P2917155040662942910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212546 (n + 8) - A008636 n

end

end A212547.P2917155040662942910

/-! ## A212547.P2660087852311886973

`A212546(n+8)-A152157(A340266(n+2)+1)`
-/

namespace A212547.P2660087852311886973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212546 (n + 8) - A152157 (A340266 (n + 2) + 1).toNat

end

end A212547.P2660087852311886973

/-! ## A212547.P18425933810138586127

`A212551(A167487(n+6))`
-/

namespace A212547.P18425933810138586127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167487 (n + 6)).toNat

end

end A212547.P18425933810138586127

/-! ## A212547.P4537107204782401169

`A212551(eq[7, A002262(n)])`
-/

namespace A212547.P4537107204782401169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212547.P4537107204782401169

/-! ## A212547.P5496865947112405090

`A212551(A167499(n+6)+2)`
-/

namespace A212547.P5496865947112405090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167499 (n + 6) + 2).toNat

end

end A212547.P5496865947112405090

/-! ## A212547.P9704306896705700836

`A212551(A000124(n+7)+6)`
-/

namespace A212547.P9704306896705700836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000124 (n + 7) + 6).toNat

end

end A212547.P9704306896705700836

/-! ## A212547.P4479234851736209330

`A212551(A000096(n+6)+8)`
-/

namespace A212547.P4479234851736209330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000096 (n + 6) + 8).toNat

end

end A212547.P4479234851736209330

/-! ## A212547.P4612786691893500761

`A212551(A000217(n+7)+7)`
-/

namespace A212547.P4612786691893500761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000217 (n + 7) + 7).toNat

end

end A212547.P4612786691893500761

/-! ## A212547.P996932193957329822

`A212551(A055999(n+4)+13)`
-/

namespace A212547.P996932193957329822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A055999 (n + 4) + 13).toNat

end

end A212547.P996932193957329822

/-! ## A212547.P16626014532859557834

`A212551(A253145(n+8)-A005843(n+5))`
-/

namespace A212547.P16626014532859557834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A253145 (n + 8) - A005843 (n + 5)).toNat

end

end A212547.P16626014532859557834

/-!
# A212548: Number of partitions of n containing at least one part m-8 if m is the largest part.

The programs for A212548, there is no canonical definition to state claims against.
-/

/-! ## A212548.P14351694719225680713

`A212547(n+9)-∑[A266776(n)]`
-/

namespace A212548.P14351694719225680713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212547 (n + 9) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212548.P14351694719225680713

/-! ## A212548.P6789700936608670822

`A212547(A020723(n))-A026814(n+8)`
-/

namespace A212548.P6789700936608670822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212547 (A020723 n).toNat - A026814 (n + 8)

end

end A212548.P6789700936608670822

/-! ## A212548.P10126059966453028824

`A212547(A020723(n))+A026815(n)-A008638(n)`
-/

namespace A212548.P10126059966453028824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212547 (A020723 n).toNat + (A026815 n - A008638 n)

end

end A212548.P10126059966453028824

/-! ## A212548.P786365838510238606

`A212547(A020723(n))-A008637(n)`
-/

namespace A212548.P786365838510238606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212547 (A020723 n).toNat - A008637 n

end

end A212548.P786365838510238606

/-! ## A212548.P11621837781417897986

`A212551(A167499(n+7)+3)`
-/

namespace A212548.P11621837781417897986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167499 (n + 7) + 3).toNat

end

end A212548.P11621837781417897986

/-! ## A212548.P17034005087695822121

`A212551(A133263(n+8)+6)`
-/

namespace A212548.P17034005087695822121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A133263 (n + 8) + 6).toNat

end

end A212548.P17034005087695822121

/-! ## A212548.P2954216159615151883

`A212551(A000124(n+8)+7)`
-/

namespace A212548.P2954216159615151883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000124 (n + 8) + 7).toNat

end

end A212548.P2954216159615151883

/-! ## A212548.P800875878155692325

`A212551(A000096(n+7)+9)`
-/

namespace A212548.P800875878155692325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000096 (n + 7) + 9).toNat

end

end A212548.P800875878155692325

/-! ## A212548.P17848009513628311443

`A212551(A000217(n+8)+8)`
-/

namespace A212548.P17848009513628311443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000217 (n + 8) + 8).toNat

end

end A212548.P17848009513628311443

/-! ## A212548.P15208692068905861268

`A212551(A055998(n+7)-(n-2))`
-/

namespace A212548.P15208692068905861268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A055998 (n + 7) - ((n : ℤ) - 2)).toNat

end

end A212548.P15208692068905861268

/-! ## A212548.P4728351403304798269

`A212551(A161680(n+10)-(n+1))`
-/

namespace A212548.P4728351403304798269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A161680 (n + 10) - (n + 1 : ℤ)).toNat

end

end A212548.P4728351403304798269

/-!
# A212549: Number of partitions of n containing at least one part m-9 if m is the largest part.

The programs for A212549, there is no canonical definition to state claims against.
-/

/-! ## A212549.P8018998635306291285

`A212551(eq[9, A002262(n)])`
-/

namespace A212549.P8018998635306291285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212549.P8018998635306291285

/-! ## A212549.P3986279171297877439

`A212551(A000124(n+9)+8)`
-/

namespace A212549.P3986279171297877439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000124 (n + 9) + 8).toNat

end

end A212549.P3986279171297877439

/-! ## A212549.P10496362061137964378

`A212551(A000096(n+8)+10)`
-/

namespace A212549.P10496362061137964378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000096 (n + 8) + 10).toNat

end

end A212549.P10496362061137964378

/-! ## A212549.P15207021675020051402

`A212551(eq[10, A002260(n+1)])`
-/

namespace A212549.P15207021675020051402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212549.P15207021675020051402

/-! ## A212549.P1384821749463139803

`A212551(A000217(n+10)-(n+1))`
-/

namespace A212549.P1384821749463139803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A212549.P1384821749463139803

/-! ## A212549.P13187300747590441239

`A212551(A055999(n+8)-A005843(n+3))`
-/

namespace A212549.P13187300747590441239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A055999 (n + 8) - A005843 (n + 3)).toNat

end

end A212549.P13187300747590441239

/-!
# A212550: Number of partitions of n containing at least one part m-10 if m is the largest part.

The programs for A212550, there is no canonical definition to state claims against.
-/

/-! ## A212550.P424900797309540907

`A212549(n+11)-A008639(n)`
-/

namespace A212550.P424900797309540907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212549 (n + 11) - A008639 n

end

end A212550.P424900797309540907

/-! ## A212550.P12587107057546639201

`A212551(A166136(n+9)+4)`
-/

namespace A212550.P12587107057546639201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A166136 (n + 9) + 4).toNat

end

end A212550.P12587107057546639201

/-! ## A212550.P3607651868318358607

`A212551(A167499(n+9)+5)`
-/

namespace A212550.P3607651868318358607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A167499 (n + 9) + 5).toNat

end

end A212550.P3607651868318358607

/-! ## A212550.P16698721608924789791

`A212551(A077169(n+11)+5)`
-/

namespace A212550.P16698721608924789791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A077169 (n + 11) + 5).toNat

end

end A212550.P16698721608924789791

/-! ## A212550.P10558074731524227219

`A212551(A000124(n+10)+9)`
-/

namespace A212550.P10558074731524227219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000124 (n + 10) + 9).toNat

end

end A212550.P10558074731524227219

/-! ## A212550.P10921133813314453875

`A212551(A000096(n+9)+11)`
-/

namespace A212550.P10921133813314453875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000096 (n + 9) + 11).toNat

end

end A212550.P10921133813314453875

/-! ## A212550.P11784235594891626292

`A212551(A000217(n+10)+10)`
-/

namespace A212550.P11784235594891626292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A000217 (n + 10) + 10).toNat

end

end A212550.P11784235594891626292

/-! ## A212550.P2297997823683184157

`A212551(A034856(n+10)-(n-1))`
-/

namespace A212550.P2297997823683184157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A034856 (n + 10) - ((n : ℤ) - 1)).toNat

end

end A212550.P2297997823683184157

/-!
# A212551: Number of partitions T(n,k) of n containing at least one other part m-k if m is the largest part; triangle T(n,k), n>=0, 0<=k<=n.

The programs for A212551, there is no canonical definition to state claims against.
-/

/-! ## A212551.P3061363530728786896

`A060130(A182748(n)^A070564(n))`
-/

namespace A212551.P3061363530728786896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (SequenceMachineLib.roundAway ((A182748 n : ℚ) ^ (A070564 n : ℤ))).toNat

end

end A212551.P3061363530728786896

/-! ## A212551.P8942353960295880083

`A135523(or(A002182(n+1), A119502(n)))`
-/

namespace A212551.P8942353960295880083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (Int.lor (A002182 (n + 1)) (A119502 n)).toNat

end

end A212551.P8942353960295880083

/-! ## A212551.P390999191898234189

`A348422(n+1)-A151933(A276921(n))`
-/

namespace A212551.P390999191898234189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348422 (n + 1) - A151933 (A276921 n).toNat

end

end A212551.P390999191898234189

/-! ## A212551.P9515283513047275061

`(A348422(n+1)-A151815(A276921(n)))%A020722(n)`
-/

namespace A212551.P9515283513047275061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348422 (n + 1) - A151815 (A276921 n).toNat) (A020722 n)

end

end A212551.P9515283513047275061

/-!
# A212552: Smallest prime factor of p^p - 1 that is congruent to 1 modulo p where p = prime(n).

The programs for A212552, there is no canonical definition to state claims against.
-/

/-! ## A212552.P18122245511950967131

`A125571(A000040(n+1))`
-/

namespace A212552.P18122245511950967131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125571 (A000040 (n + 1)).toNat

end

end A212552.P18122245511950967131

/-! ## A212552.P7456982877597174426

`A125571(record[A006530(n+2)])`
-/

namespace A212552.P7456982877597174426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212552.P7456982877597174426

/-! ## A212552.P6407070147309948179

`A125571(record[A014963(n+2)])`
-/

namespace A212552.P6407070147309948179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212552.P6407070147309948179

/-! ## A212552.P12696686221690028155

`A125571(record[A020639(n+2)])`
-/

namespace A212552.P12696686221690028155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212552.P12696686221690028155

/-! ## A212552.P1986628804017362645

`A187023(p?[xor(1, n)+1])`
-/

namespace A212552.P1986628804017362645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187023 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A212552.P1986628804017362645

/-!
# A212553: Irreducible near matchings over 2n+1 vertices.

The programs for A212553, there is no canonical definition to state claims against.
-/

/-! ## A212553.P2466484062804619269

`A000699(n+2)*(2*(n+1)+1)*(n+2)/(2*(n+1))`
-/

namespace A212553.P2466484062804619269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000699 (n + 2) * (2 * (n + 1) + 1 : ℤ) * (n + 2 : ℤ) : ℚ) / (2 * (n + 1) : ℚ)

end

end A212553.P2466484062804619269

/-! ## A212553.P16447040194029364067

`3/2*A113332(n)`
-/

namespace A212553.P16447040194029364067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A113332 n : ℚ)

end

end A212553.P16447040194029364067

/-!
# A212556: Representations of nonnegative integers in base -4: The range of A007608.

The programs for A212556, there is no canonical definition to state claims against.
-/

/-! ## A212556.P6221807325578942318

`lt[A054055(n), A000034(A332550(n))²]`
-/

namespace A212556.P6221807325578942318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A332550 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212556.P6221807325578942318

/-! ## A212556.P12533965970172339655

`record[A064770(A001633(n+1))]`
-/

namespace A212556.P12533965970172339655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A001633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212556.P12533965970172339655

/-! ## A212556.P9711950119462296529

`lt[A102673(n), sin(A070939(n))]`
-/

namespace A212556.P9711950119462296529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A070939 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A212556.P9711950119462296529

/-! ## A212556.P683291246637940558

`eq[A064770(n), A136400(A039723(n))]`
-/

namespace A212556.P683291246637940558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A039723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A212556.P683291246637940558

/-! ## A212556.P6808683195994429706

`A222239(record[A222239(A001633(n+1))])`
-/

namespace A212556.P6808683195994429706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (A001633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212556.P6808683195994429706

/-!
# A212559: Number of functions f:{1,2,...,n}->{1,2,...,n} such that every non-recurrent element has at most one preimage.

The programs for A212559, there is no canonical definition to state claims against.
-/

/-! ## A212559.P2893301616013944092

`A032766(A116956(n)+A061138(n))`
-/

namespace A212559.P2893301616013944092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A116956 n + A061138 n).toNat

end

end A212559.P2893301616013944092

/-! ## A212559.P13026841599120857804

`A330625(n)+A188344(A151451(n))`
-/

namespace A212559.P13026841599120857804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330625 n + A188344 (A151451 n).toNat

end

end A212559.P13026841599120857804

/-!
# A212560: Number of (w,x,y,z) with all terms in {1,...,n} and w+x<=y+z.

The programs for A212560, the canonical program `A212560.P14721854543436764219` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212560 has offset 0).

The definition of A212560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212560.P12115341624923646027

`(n+2*n^3+3*n^4)/6`
-/

namespace A212560.P12115341624923646027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 * n ^ 3 + 3 * n ^ 4 : ℚ) / 6

end

end A212560.P12115341624923646027

namespace A212560

/-- `(n+2*n^3+3*n^4)/6` -/
def P12115341624923646027.Spec : Prop :=
  ∀ n, P12115341624923646027.a n = (A212560 n : ℚ)

theorem P12115341624923646027.correct : P12115341624923646027.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A212560, Nat.add_sub_cancel, A212560.P12115341624923646027.a, A212560.P14721854543436764219.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A212560, Nat.add_sub_cancel, A212560.P12115341624923646027.a, A212560.P14721854543436764219.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212560

/-! ## A212560.P14721854543436764219

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=50, a(4)=150`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212560

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14721854543436764219.Spec : Prop :=
  ∀ n, P14721854543436764219.a n = A212560 n

theorem P14721854543436764219.correct : P14721854543436764219.Spec := by
  intro n
  simp only [A212560]

end A212560

/-! ## A212560.P6158302703108615245

`∑[n²]+C(n², 2)`
-/

namespace A212560.P6158302703108615245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n ^ 2) 2

end

end A212560.P6158302703108615245

namespace A212560

/-- `∑[n²]+C(n², 2)` -/
def P6158302703108615245.Spec : Prop :=
  ∀ n, (P6158302703108615245.a n : ℤ) = A212560 n

end A212560

/-! ## A212560.P17381040785015773629

`∑[n*(4*C(n, 2)+1)]`
-/

namespace A212560.P17381040785015773629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (4 * Nat.choose n 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212560.P17381040785015773629

namespace A212560

/-- `∑[n*(4*C(n, 2)+1)]` -/
def P17381040785015773629.Spec : Prop :=
  ∀ n, (P17381040785015773629.a n : ℤ) = A212560 n

end A212560

/-! ## A212560.P16223877152708687635

`∑[lcm(n, (1-n)²)]+∑[n]²`
-/

namespace A212560.P16223877152708687635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A212560.P16223877152708687635

namespace A212560

/-- `∑[lcm(n, (1-n)²)]+∑[n]²` -/
def P16223877152708687635.Spec : Prop :=
  ∀ n, (P16223877152708687635.a n : ℤ) = A212560 n

end A212560

/-! ## A212560.P2599378129889144471

`C(∑[2*n], 2)-∑[(n-1)*2*n]`
-/

namespace A212560.P2599378129889144471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A212560.P2599378129889144471

namespace A212560

/-- `C(∑[2*n], 2)-∑[(n-1)*2*n]` -/
def P2599378129889144471.Spec : Prop :=
  ∀ n, P2599378129889144471.a n = A212560 n

end A212560

/-! ## A212560.P4282126477638864720

`∑[A059722(n)]`
-/

namespace A212560.P4282126477638864720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212560.P4282126477638864720

namespace A212560

/-- `∑[A059722(n)]` -/
def P4282126477638864720.Spec : Prop :=
  ∀ n, P4282126477638864720.a n = A212560 n

end A212560

/-! ## A212560.P15254257236147847704

`n²²-A212523(n)`
-/

namespace A212560.P15254257236147847704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212523 n

end

end A212560.P15254257236147847704

namespace A212560

/-- `n²²-A212523(n)` -/
def P15254257236147847704.Spec : Prop :=
  ∀ n, P15254257236147847704.a n = A212560 n

end A212560

/-! ## A212560.P3222645466289193348

`A071237(n)-∑[∑[n]]`
-/

namespace A212560.P3222645466289193348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212560.P3222645466289193348

namespace A212560

/-- `A071237(n)-∑[∑[n]]` -/
def P3222645466289193348.Spec : Prop :=
  ∀ n, P3222645466289193348.a n = A212560 n

end A212560

/-! ## A212560.P18283261940536673609

`A036464(n+1)+∑[n]`
-/

namespace A212560.P18283261940536673609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A212560.P18283261940536673609

namespace A212560

/-- `A036464(n+1)+∑[n]` -/
def P18283261940536673609.Spec : Prop :=
  ∀ n, P18283261940536673609.a n = A212560 n

end A212560

/-! ## A212560.P5013445397585634894

`∑[n]+A035291(n+1)/2`
-/

namespace A212560.P5013445397585634894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A035291 (n + 1) : ℚ) / 2

end

end A212560.P5013445397585634894

namespace A212560

/-- `∑[n]+A035291(n+1)/2` -/
def P5013445397585634894.Spec : Prop :=
  ∀ n, P5013445397585634894.a n = (A212560 n : ℚ)

end A212560

/-! ## A212560.P17981827831577178201

`∑[n²²]-A208536(n+1)`
-/

namespace A212560.P17981827831577178201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A208536 (n + 1)

end

end A212560.P17981827831577178201

namespace A212560

/-- `∑[n²²]-A208536(n+1)` -/
def P17981827831577178201.Spec : Prop :=
  ∀ n, P17981827831577178201.a n = A212560 n

end A212560

/-! ## A212560.P11224649870588339479

`a(n-1)+A035006(n)+n` with `a(0)=0`
-/

namespace A212560.P11224649870588339479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A035006 n + (n : ℤ))

end

end A212560.P11224649870588339479

namespace A212560

/-- `a(n-1)+A035006(n)+n` -/
def P11224649870588339479.Spec : Prop :=
  ∀ n, P11224649870588339479.a n = A212560 n

end A212560

/-! ## A212560.P3593869012128070179

`A071238(n)+A008911(n)`
-/

namespace A212560.P3593869012128070179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n + A008911 n

end

end A212560.P3593869012128070179

namespace A212560

/-- `A071238(n)+A008911(n)` -/
def P3593869012128070179.Spec : Prop :=
  ∀ n, P3593869012128070179.a n = A212560 n

end A212560

/-! ## A212560.P17430163709722883316

`A101374(n)+A051925(n)`
-/

namespace A212560.P17430163709722883316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n + A051925 n

end

end A212560.P17430163709722883316

namespace A212560

/-- `A101374(n)+A051925(n)` -/
def P17430163709722883316.Spec : Prop :=
  ∀ n, P17430163709722883316.a n = A212560 n

end A212560

/-! ## A212560.P13875104003433261034

`A212523(n)+A005900(n)`
-/

namespace A212560.P13875104003433261034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n + A005900 n

end

end A212560.P13875104003433261034

namespace A212560

/-- `A212523(n)+A005900(n)` -/
def P13875104003433261034.Spec : Prop :=
  ∀ n, P13875104003433261034.a n = A212560 n

end A212560

/-! ## A212560.P13297594039391083123

`A203552(n)+A071252(n)`
-/

namespace A212560.P13297594039391083123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n + A071252 n

end

end A212560.P13297594039391083123

namespace A212560

/-- `A203552(n)+A071252(n)` -/
def P13297594039391083123.Spec : Prop :=
  ∀ n, P13297594039391083123.a n = A212560 n

end A212560

/-! ## A212560.P9814945006291346053

`A203551(n)+A171129(n)`
-/

namespace A212560.P9814945006291346053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 n + A171129 n

end

end A212560.P9814945006291346053

namespace A212560

/-- `A203551(n)+A171129(n)` -/
def P9814945006291346053.Spec : Prop :=
  ∀ n, P9814945006291346053.a n = A212560 n

end A212560

/-! ## A212560.P2357141028094085689

`A391092(n)+A004126(n)`
-/

namespace A212560.P2357141028094085689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391092 n + A004126 n

end

end A212560.P2357141028094085689

namespace A212560

/-- `A391092(n)+A004126(n)` -/
def P2357141028094085689.Spec : Prop :=
  ∀ n, P2357141028094085689.a n = A212560 n

end A212560

/-! ## A212560.P2067891781987916567

`A071270(n)-A006325(n)`
-/

namespace A212560.P2067891781987916567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n - A006325 n

end

end A212560.P2067891781987916567

namespace A212560

/-- `A071270(n)-A006325(n)` -/
def P2067891781987916567.Spec : Prop :=
  ∀ n, P2067891781987916567.a n = A212560 n

end A212560

/-!
# A212561: Number of (w,x,y,z) with all terms in {1,...,n} and w + x = 2y + 2z.

The programs for A212561, the canonical program `A212561.P2355466971180462288` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212561 has offset 0).

The definition of A212561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212561.P2355466971180462288

`(n-1)*(2*n²+1-(-1)^n)/8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212561

/-- `(n-1)*(2*n²+1-(-1)^n)/8` -/
def P2355466971180462288.Spec : Prop :=
  ∀ n, P2355466971180462288.a n = (A212561 n : ℚ)

end A212561

/-! ## A212561.P4056192676972997234

`∑[A329482(n)-n]-1`
-/

namespace A212561.P4056192676972997234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329482 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A212561.P4056192676972997234

namespace A212561

/-- `∑[A329482(n)-n]-1` -/
def P4056192676972997234.Spec : Prop :=
  ∀ n, P4056192676972997234.a n = A212561 n

end A212561

/-! ## A212561.P8772397581255602660

`∑[∑[lcm(2, n+1)-1]]-A247643(n)`
-/

namespace A212561.P8772397581255602660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A247643 n

end

end A212561.P8772397581255602660

namespace A212561

/-- `∑[∑[lcm(2, n+1)-1]]-A247643(n)` -/
def P8772397581255602660.Spec : Prop :=
  ∀ n, P8772397581255602660.a n = A212561 n

end A212561

/-! ## A212561.P3905583700082251447

`A131474(n)-A147685(n)`
-/

namespace A212561.P3905583700082251447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 n - A147685 n

end

end A212561.P3905583700082251447

namespace A212561

/-- `A131474(n)-A147685(n)` -/
def P3905583700082251447.Spec : Prop :=
  ∀ n, P3905583700082251447.a n = A212561 n

end A212561

/-! ## A212561.P7462291306615972314

`A212578(n)-A131941(n)`
-/

namespace A212561.P7462291306615972314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n - A131941 n

end

end A212561.P7462291306615972314

namespace A212561

/-- `A212578(n)-A131941(n)` -/
def P7462291306615972314.Spec : Prop :=
  ∀ n, P7462291306615972314.a n = A212561 n

end A212561

/-! ## A212561.P146941141460891360

`A212563(n)-A212562(n)`
-/

namespace A212561.P146941141460891360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212563 n - A212562 n

end

end A212561.P146941141460891360

namespace A212561

/-- `A212563(n)-A212562(n)` -/
def P146941141460891360.Spec : Prop :=
  ∀ n, P146941141460891360.a n = A212561 n

end A212561

/-! ## A212561.P15486149216027950363

`A212565(n)-A212564(n)`
-/

namespace A212561.P15486149216027950363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212565 n - A212564 n

end

end A212561.P15486149216027950363

namespace A212561

/-- `A212565(n)-A212564(n)` -/
def P15486149216027950363.Spec : Prop :=
  ∀ n, P15486149216027950363.a n = A212561 n

end A212561

/-! ## A212561.P12091265672178401108

`A005997(n+1)-A247643(n)`
-/

namespace A212561.P12091265672178401108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) - A247643 n

end

end A212561.P12091265672178401108

namespace A212561

/-- `A005997(n+1)-A247643(n)` -/
def P12091265672178401108.Spec : Prop :=
  ∀ n, P12091265672178401108.a n = A212561 n

end A212561

/-! ## A212561.P9665253028072107

`A005998(n+1)-A257083(n)`
-/

namespace A212561.P9665253028072107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005998 (n + 1) - A257083 n

end

end A212561.P9665253028072107

namespace A212561

/-- `A005998(n+1)-A257083(n)` -/
def P9665253028072107.Spec : Prop :=
  ∀ n, P9665253028072107.a n = A212561 n

end A212561

/-! ## A212561.P16307221278872796588

`2*A034828(n)-A008794(n)`
-/

namespace A212561.P16307221278872796588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034828 n - A008794 n

end

end A212561.P16307221278872796588

namespace A212561

/-- `2*A034828(n)-A008794(n)` -/
def P16307221278872796588.Spec : Prop :=
  ∀ n, P16307221278872796588.a n = A212561 n

end A212561

/-! ## A212561.P8095900159431613736

`n*A002620(n)-A008794(n)`
-/

namespace A212561.P8095900159431613736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002620 n - A008794 n

end

end A212561.P8095900159431613736

namespace A212561

/-- `n*A002620(n)-A008794(n)` -/
def P8095900159431613736.Spec : Prop :=
  ∀ n, P8095900159431613736.a n = A212561 n

end A212561

/-! ## A212561.P7094988975837762652

`n*A002620(n)-A004526(n)²`
-/

namespace A212561.P7094988975837762652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002620 n - A004526 n ^ 2

end

end A212561.P7094988975837762652

namespace A212561

/-- `n*A002620(n)-A004526(n)²` -/
def P7094988975837762652.Spec : Prop :=
  ∀ n, P7094988975837762652.a n = A212561 n

end A212561

/-! ## A212561.P16534509897512965636

`n*A004652(n)-A110654(n)²`
-/

namespace A212561.P16534509897512965636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004652 n - A110654 n ^ 2

end

end A212561.P16534509897512965636

namespace A212561

/-- `n*A004652(n)-A110654(n)²` -/
def P16534509897512965636.Spec : Prop :=
  ∀ n, P16534509897512965636.a n = A212561 n

end A212561

/-! ## A212561.P14600683959353765656

`n*∑[A110654(n)]-A077043(n)`
-/

namespace A212561.P14600683959353765656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A077043 n

end

end A212561.P14600683959353765656

namespace A212561

/-- `n*∑[A110654(n)]-A077043(n)` -/
def P14600683959353765656.Spec : Prop :=
  ∀ n, P14600683959353765656.a n = A212561 n

end A212561

/-! ## A212561.P3015226889840218185

`A005999(n+1)-A140144(n+1)`
-/

namespace A212561.P3015226889840218185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005999 (n + 1) - A140144 (n + 1)

end

end A212561.P3015226889840218185

namespace A212561

/-- `A005999(n+1)-A140144(n+1)` -/
def P3015226889840218185.Spec : Prop :=
  ∀ n, P3015226889840218185.a n = A212561 n

end A212561

/-! ## A212561.P9521013253232836789

`n*A002620(n)-A002620(A052928(n))`
-/

namespace A212561.P9521013253232836789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002620 n - A002620 (A052928 n).toNat

end

end A212561.P9521013253232836789

namespace A212561

/-- `n*A002620(n)-A002620(A052928(n))` -/
def P9521013253232836789.Spec : Prop :=
  ∀ n, P9521013253232836789.a n = A212561 n

end A212561

/-! ## A212561.P15210558122935664499

`A213389(n+1)-A174114(n+1)`
-/

namespace A212561.P15210558122935664499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 (n + 1) - A174114 (n + 1)

end

end A212561.P15210558122935664499

namespace A212561

/-- `A213389(n+1)-A174114(n+1)` -/
def P15210558122935664499.Spec : Prop :=
  ∀ n, P15210558122935664499.a n = A212561 n

end A212561

/-! ## A212561.P9872131705229967090

`n*A002620(n+1)-A129819(2*n)`
-/

namespace A212561.P9872131705229967090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002620 (n + 1) - A129819 (2 * n)

end

end A212561.P9872131705229967090

namespace A212561

/-- `n*A002620(n+1)-A129819(2*n)` -/
def P9872131705229967090.Spec : Prop :=
  ∀ n, P9872131705229967090.a n = A212561 n

end A212561

/-!
# A212562: Number of (w,x,y,z) with all terms in {1,...,n} and w+x

The programs for A212562, the canonical program `A212562.P9619993933328220815` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212562 has offset 0).

The definition of A212562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212562.P9619993933328220815

`n^4-A212565(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212562

/-- `n^4-A212565(n)` -/
def P9619993933328220815.Spec : Prop :=
  ∀ n, P9619993933328220815.a n = A212562 n

theorem P9619993933328220815.correct : P9619993933328220815.Spec := by
  intro n
  simp only [A212562]

end A212562

/-! ## A212562.P1920939938683210949

`A212563(n)-A212561(n)`
-/

namespace A212562.P1920939938683210949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212563 n - A212561 n

end

end A212562.P1920939938683210949

namespace A212562

/-- `A212563(n)-A212561(n)` -/
def P1920939938683210949.Spec : Prop :=
  ∀ n, P1920939938683210949.a n = A212562 n

theorem P1920939938683210949.correct : P1920939938683210949.Spec := by
  intro n
  simp only [A212562, Nat.add_sub_cancel, A212562.P1920939938683210949.a, A212562.P9619993933328220815.a, A212561, A212561.P2355466971180462288.a, A212563, A212563.P15478231082037985725.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212562

/-! ## A212562.P8403700941064309307

`abs(A000583(n)-A212565(n))`
-/

namespace A212562.P8403700941064309307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212565 n|

end

end A212562.P8403700941064309307

namespace A212562

/-- `abs(A000583(n)-A212565(n))` -/
def P8403700941064309307.Spec : Prop :=
  ∀ n, P8403700941064309307.a n = A212562 n

end A212562

/-! ## A212562.P17037544348299646775

`A212563(n)+A212564(n)-A212565(n)`
-/

namespace A212562.P17037544348299646775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212563 n + (A212564 n - A212565 n)

end

end A212562.P17037544348299646775

namespace A212562

/-- `A212563(n)+A212564(n)-A212565(n)` -/
def P17037544348299646775.Spec : Prop :=
  ∀ n, P17037544348299646775.a n = A212562 n

theorem P17037544348299646775.correct : P17037544348299646775.Spec := by
  intro n
  simp only [A212562, Nat.add_sub_cancel, A212562.P17037544348299646775.a, A212562.P9619993933328220815.a, A212563, A212563.P15478231082037985725.a, A212564, A212564.P74518275513655976.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212561, A212561.P2355466971180462288.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212562

/-! ## A212562.P15731697530538098828

`A212571(n)+A212574(n)-A212565(n)`
-/

namespace A212562.P15731697530538098828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + (A212574 n - A212565 n)

end

end A212562.P15731697530538098828

namespace A212562

/-- `A212571(n)+A212574(n)-A212565(n)` -/
def P15731697530538098828.Spec : Prop :=
  ∀ n, P15731697530538098828.a n = A212562 n

theorem P15731697530538098828.correct : P15731697530538098828.Spec := by
  intro n
  simp only [A212562, Nat.add_sub_cancel, A212562.P15731697530538098828.a, A212562.P9619993933328220815.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212571, A212571.P10300611427590139486.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212562

/-! ## A212562.P8797592782945696159

`A000583(n)-cos(A000007(n))*A212565(n)`
-/

namespace A212562.P8797592782945696159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000583 n : ℝ) - Real.cos (A000007 n : ℝ) * (A212565 n : ℝ)

end

end A212562.P8797592782945696159

namespace A212562

/-- `A000583(n)-cos(A000007(n))*A212565(n)` -/
def P8797592782945696159.Spec : Prop :=
  ∀ n, P8797592782945696159.a n = (A212562 n : ℝ)

end A212562

/-! ## A212562.P3143758287083808439

`A211787(n)+A211797(n)-A212565(n)`
-/

namespace A212562.P3143758287083808439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212565 n)

end

end A212562.P3143758287083808439

namespace A212562

/-- `A211787(n)+A211797(n)-A212565(n)` -/
def P3143758287083808439.Spec : Prop :=
  ∀ n, P3143758287083808439.a n = A212562 n

end A212562

/-!
# A212563: Number of (w,x,y,z) with all terms in {1,...,n} and w+x<=2y+2z.

The programs for A212563, the canonical program `A212563.P15478231082037985725` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212563 has offset 0).

The definition of A212563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212563.P5268257304447807728

`n²²-A212564(n)`
-/

namespace A212563.P5268257304447807728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212564 n

end

end A212563.P5268257304447807728

namespace A212563

/-- `n²²-A212564(n)` -/
def P5268257304447807728.Spec : Prop :=
  ∀ n, P5268257304447807728.a n = A212563 n

theorem P5268257304447807728.correct : P5268257304447807728.Spec := by
  intro n
  simp only [A212563, Nat.add_sub_cancel, A212563.P5268257304447807728.a, A212563.P15478231082037985725.a, A212561, A212561.P2355466971180462288.a, A212562, A212562.P9619993933328220815.a, A212564, A212564.P74518275513655976.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212563

/-! ## A212563.P15478231082037985725

`A212562(n)+A212561(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A212563

/-- `A212562(n)+A212561(n)` -/
def P15478231082037985725.Spec : Prop :=
  ∀ n, P15478231082037985725.a n = A212563 n

theorem P15478231082037985725.correct : P15478231082037985725.Spec := by
  intro n
  simp only [A212563]

end A212563

/-! ## A212563.P6696913842516457180

`abs(A000583(n)-A212564(n))`
-/

namespace A212563.P6696913842516457180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212564 n|

end

end A212563.P6696913842516457180

namespace A212563

/-- `abs(A000583(n)-A212564(n))` -/
def P6696913842516457180.Spec : Prop :=
  ∀ n, P6696913842516457180.a n = A212563 n

end A212563

/-! ## A212563.P8938398248480902971

`A212562(n)+A212565(n)-A212564(n)`
-/

namespace A212563.P8938398248480902971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212562 n + (A212565 n - A212564 n)

end

end A212563.P8938398248480902971

namespace A212563

/-- `A212562(n)+A212565(n)-A212564(n)` -/
def P8938398248480902971.Spec : Prop :=
  ∀ n, P8938398248480902971.a n = A212563 n

theorem P8938398248480902971.correct : P8938398248480902971.Spec := by
  intro n
  simp only [A212563, Nat.add_sub_cancel, A212563.P8938398248480902971.a, A212563.P15478231082037985725.a, A212561, A212561.P2355466971180462288.a, A212562, A212562.P9619993933328220815.a, A212564, A212564.P74518275513655976.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212563

/-! ## A212563.P18101070426289908494

`A212571(n)+A212574(n)-A212564(n)`
-/

namespace A212563.P18101070426289908494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + (A212574 n - A212564 n)

end

end A212563.P18101070426289908494

namespace A212563

/-- `A212571(n)+A212574(n)-A212564(n)` -/
def P18101070426289908494.Spec : Prop :=
  ∀ n, P18101070426289908494.a n = A212563 n

theorem P18101070426289908494.correct : P18101070426289908494.Spec := by
  intro n
  simp only [A212563, Nat.add_sub_cancel, A212563.P18101070426289908494.a, A212563.P15478231082037985725.a, A212561, A212561.P2355466971180462288.a, A212562, A212562.P9619993933328220815.a, A212564, A212564.P74518275513655976.a, A212571, A212571.P10300611427590139486.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212563

/-! ## A212563.P2483255584095839911

`(A000583(n)-A212564(n))*A057427(n)`
-/

namespace A212563.P2483255584095839911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212564 n) * A057427 n

end

end A212563.P2483255584095839911

namespace A212563

/-- `(A000583(n)-A212564(n))*A057427(n)` -/
def P2483255584095839911.Spec : Prop :=
  ∀ n, P2483255584095839911.a n = A212563 n

end A212563

/-! ## A212563.P11197075157462168619

`(A000583(n)-A212564(n))*A001222(A040992(n+1))`
-/

namespace A212563.P11197075157462168619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212564 n) * A001222 (A040992 (n + 1)).toNat

end

end A212563.P11197075157462168619

namespace A212563

/-- `(A000583(n)-A212564(n))*A001222(A040992(n+1))` -/
def P11197075157462168619.Spec : Prop :=
  ∀ n, P11197075157462168619.a n = A212563 n

end A212563

/-! ## A212563.P7084424329687362291

`A211787(n)+A211797(n)-A212564(n)`
-/

namespace A212563.P7084424329687362291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212564 n)

end

end A212563.P7084424329687362291

namespace A212563

/-- `A211787(n)+A211797(n)-A212564(n)` -/
def P7084424329687362291.Spec : Prop :=
  ∀ n, P7084424329687362291.a n = A212563 n

end A212563

/-! ## A212563.P11349605847551412488

`A212063(n)+A212064(n)-A212564(n)`
-/

namespace A212563.P11349605847551412488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A212564 n)

end

end A212563.P11349605847551412488

namespace A212563

/-- `A212063(n)+A212064(n)-A212564(n)` -/
def P11349605847551412488.Spec : Prop :=
  ∀ n, P11349605847551412488.a n = A212563 n

end A212563

/-! ## A212563.P615516150538079568

`A000583(n)-A212564(n)%A134610(n+1)`
-/

namespace A212563.P615516150538079568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - Int.tmod (A212564 n) (A134610 (n + 1))

end

end A212563.P615516150538079568

namespace A212563

/-- `A000583(n)-A212564(n)%A134610(n+1)` -/
def P615516150538079568.Spec : Prop :=
  ∀ n, P615516150538079568.a n = A212563 n

end A212563

/-!
# A212564: Number of (w,x,y,z) with all terms in {1,...,n} and w + x > 2y + 2z.

The programs for A212564, the canonical program `A212564.P74518275513655976` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212564 has offset 0).

The definition of A212564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212564.P74518275513655976

`n²²-A212563(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A212564

/-- `n²²-A212563(n)` -/
def P74518275513655976.Spec : Prop :=
  ∀ n, P74518275513655976.a n = A212564 n

theorem P74518275513655976.correct : P74518275513655976.Spec := by
  intro n
  simp only [A212564]

end A212564

/-! ## A212564.P6063394342134196435

`A212565(n)-A212561(n)`
-/

namespace A212564.P6063394342134196435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212565 n - A212561 n

end

end A212564.P6063394342134196435

namespace A212564

/-- `A212565(n)-A212561(n)` -/
def P6063394342134196435.Spec : Prop :=
  ∀ n, P6063394342134196435.a n = A212564 n

theorem P6063394342134196435.correct : P6063394342134196435.Spec := by
  intro n
  simp only [A212564, Nat.add_sub_cancel, A212564.P6063394342134196435.a, A212564.P74518275513655976.a, A212561, A212561.P2355466971180462288.a, A212563, A212563.P15478231082037985725.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212562, A212562.P9619993933328220815.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212564

/-! ## A212564.P5166282767244301437

`abs(A000583(n)-A212563(n))`
-/

namespace A212564.P5166282767244301437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212563 n|

end

end A212564.P5166282767244301437

namespace A212564

/-- `abs(A000583(n)-A212563(n))` -/
def P5166282767244301437.Spec : Prop :=
  ∀ n, P5166282767244301437.a n = A212564 n

end A212564

/-! ## A212564.P7936768782778415246

`A002523(n)-(A212563(n)+1)`
-/

namespace A212564.P7936768782778415246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212563 n + 1)

end

end A212564.P7936768782778415246

namespace A212564

/-- `A002523(n)-(A212563(n)+1)` -/
def P7936768782778415246.Spec : Prop :=
  ∀ n, P7936768782778415246.a n = A212564 n

theorem P7936768782778415246.correct : P7936768782778415246.Spec := by
  intro n
  simp only [A212564, Nat.add_sub_cancel, A212564.P7936768782778415246.a, A212564.P74518275513655976.a, A002523, A002523.P178649398705969946.a, A212563, A212563.P15478231082037985725.a, A212561, A212561.P2355466971180462288.a, A212562, A212562.P9619993933328220815.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212564

/-! ## A212564.P3235835273183626064

`A212562(n)+A212565(n)-A212563(n)`
-/

namespace A212564.P3235835273183626064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212562 n + (A212565 n - A212563 n)

end

end A212564.P3235835273183626064

namespace A212564

/-- `A212562(n)+A212565(n)-A212563(n)` -/
def P3235835273183626064.Spec : Prop :=
  ∀ n, P3235835273183626064.a n = A212564 n

theorem P3235835273183626064.correct : P3235835273183626064.Spec := by
  intro n
  simp only [A212564, Nat.add_sub_cancel, A212564.P3235835273183626064.a, A212564.P74518275513655976.a, A212562, A212562.P9619993933328220815.a, A212563, A212563.P15478231082037985725.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212561, A212561.P2355466971180462288.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212564

/-! ## A212564.P2016724638953552294

`A212571(n)+A212574(n)-A212563(n)`
-/

namespace A212564.P2016724638953552294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + (A212574 n - A212563 n)

end

end A212564.P2016724638953552294

namespace A212564

/-- `A212571(n)+A212574(n)-A212563(n)` -/
def P2016724638953552294.Spec : Prop :=
  ∀ n, P2016724638953552294.a n = A212564 n

theorem P2016724638953552294.correct : P2016724638953552294.Spec := by
  intro n
  simp only [A212564, Nat.add_sub_cancel, A212564.P2016724638953552294.a, A212564.P74518275513655976.a, A212563, A212563.P15478231082037985725.a, A212571, A212571.P10300611427590139486.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212561, A212561.P2355466971180462288.a, A212562, A212562.P9619993933328220815.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212564

/-! ## A212564.P1474482267003020097

`(A000583(n)-A212563(n))*A157928(n)`
-/

namespace A212564.P1474482267003020097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212563 n) * A157928 n

end

end A212564.P1474482267003020097

namespace A212564

/-- `(A000583(n)-A212563(n))*A157928(n)` -/
def P1474482267003020097.Spec : Prop :=
  ∀ n, P1474482267003020097.a n = A212564 n

end A212564

/-! ## A212564.P3483017080840903754

`A000583(n)%A212563(A000007(n)+n)`
-/

namespace A212564.P3483017080840903754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n) (A212563 (A000007 n + (n : ℤ)).toNat)

end

end A212564.P3483017080840903754

namespace A212564

/-- `A000583(n)%A212563(A000007(n)+n)` -/
def P3483017080840903754.Spec : Prop :=
  ∀ n, P3483017080840903754.a n = A212564 n

end A212564

/-! ## A212564.P3169522241493492316

`(A000583(n)-A212563(n))%∑[A000578(n+1)]`
-/

namespace A212564.P3169522241493492316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212563 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212564.P3169522241493492316

namespace A212564

/-- `(A000583(n)-A212563(n))%∑[A000578(n+1)]` -/
def P3169522241493492316.Spec : Prop :=
  ∀ n, P3169522241493492316.a n = A212564 n

end A212564

/-! ## A212564.P3220881755277482155

`(A000583(n)-A212563(n))*A242481(2*n+1)`
-/

namespace A212564.P3220881755277482155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A212563 n) * A242481 (2 * n + 1)

end

end A212564.P3220881755277482155

namespace A212564

/-- `(A000583(n)-A212563(n))*A242481(2*n+1)` -/
def P3220881755277482155.Spec : Prop :=
  ∀ n, P3220881755277482155.a n = A212564 n

end A212564

/-! ## A212564.P17023903542574474820

`A211787(n)+A211797(n)-A212563(n)`
-/

namespace A212564.P17023903542574474820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212563 n)

end

end A212564.P17023903542574474820

namespace A212564

/-- `A211787(n)+A211797(n)-A212563(n)` -/
def P17023903542574474820.Spec : Prop :=
  ∀ n, P17023903542574474820.a n = A212564 n

end A212564

/-! ## A212564.P1039806356237194625

`A212106(n)+A212107(n)-A212563(n)`
-/

namespace A212564.P1039806356237194625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + (A212107 n - A212563 n)

end

end A212564.P1039806356237194625

namespace A212564

/-- `A212106(n)+A212107(n)-A212563(n)` -/
def P1039806356237194625.Spec : Prop :=
  ∀ n, P1039806356237194625.a n = A212564 n

end A212564

/-!
# A212565: Number of (w,x,y,z) with all terms in {1,...,n} and w+x>=2y+2z.

The programs for A212565, the canonical program `A212565.P5070263067435568383` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212565 has offset 0).

The definition of A212565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212565.P8217325328570383736

`n²²-A212562(n)`
-/

namespace A212565.P8217325328570383736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212562 n

end

end A212565.P8217325328570383736

namespace A212565

/-- `n²²-A212562(n)` -/
def P8217325328570383736.Spec : Prop :=
  ∀ n, P8217325328570383736.a n = A212565 n

theorem P8217325328570383736.correct : P8217325328570383736.Spec := by
  intro n
  simp only [A212565, Nat.add_sub_cancel, A212565.P8217325328570383736.a, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212562, A212562.P9619993933328220815.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212565

/-! ## A212565.P5070263067435568383

`∑[A212969(n)-C(n, 2)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212565

/-- `∑[A212969(n)-C(n, 2)]` -/
def P5070263067435568383.Spec : Prop :=
  ∀ n, P5070263067435568383.a n = A212565 n

theorem P5070263067435568383.correct : P5070263067435568383.Spec := by
  intro n
  simp only [A212565]

end A212565

/-! ## A212565.P13836170604027285553

`∑[(n-1)*(2*n*(7*n-2)-3*(-1)^n+3)/24-A161680(n)]`
-/

namespace A212565.P13836170604027285553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((2 * ((n : ℤ) * ((7 * n : ℤ) - 2)) - 3 * (-1) ^ n + 3 : ℚ) / 24) - (A161680 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212565.P13836170604027285553

namespace A212565

/-- `∑[(n-1)*(2*n*(7*n-2)-3*(-1)^n+3)/24-A161680(n)]` -/
def P13836170604027285553.Spec : Prop :=
  ∀ n, P13836170604027285553.a n = (A212565 n : ℚ)

end A212565

/-! ## A212565.P10519246444515038646

`A212564(n)+A212561(n)`
-/

namespace A212565.P10519246444515038646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212564 n + A212561 n

end

end A212565.P10519246444515038646

namespace A212565

/-- `A212564(n)+A212561(n)` -/
def P10519246444515038646.Spec : Prop :=
  ∀ n, P10519246444515038646.a n = A212565 n

theorem P10519246444515038646.correct : P10519246444515038646.Spec := by
  intro n
  simp only [A212565, Nat.add_sub_cancel, A212565.P10519246444515038646.a, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212561, A212561.P2355466971180462288.a, A212564, A212564.P74518275513655976.a, A212969, A212969.P7426317978988481171.a, A212563, A212563.P15478231082037985725.a, A212562, A212562.P9619993933328220815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212565

/-! ## A212565.P17916506263422563424

`abs(A000583(n)-A212562(n))`
-/

namespace A212565.P17916506263422563424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212562 n|

end

end A212565.P17916506263422563424

namespace A212565

/-- `abs(A000583(n)-A212562(n))` -/
def P17916506263422563424.Spec : Prop :=
  ∀ n, P17916506263422563424.a n = A212565 n

end A212565

/-! ## A212565.P14038770329408055218

`A257055(n)-A227327(n+1)`
-/

namespace A212565.P14038770329408055218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n - A227327 (n + 1)

end

end A212565.P14038770329408055218

namespace A212565

/-- `A257055(n)-A227327(n+1)` -/
def P14038770329408055218.Spec : Prop :=
  ∀ n, P14038770329408055218.a n = A212565 n

end A212565

/-! ## A212565.P13853658055139783612

`A212563(n)+A212564(n)-A212562(n)`
-/

namespace A212565.P13853658055139783612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212563 n + (A212564 n - A212562 n)

end

end A212565.P13853658055139783612

namespace A212565

/-- `A212563(n)+A212564(n)-A212562(n)` -/
def P13853658055139783612.Spec : Prop :=
  ∀ n, P13853658055139783612.a n = A212565 n

theorem P13853658055139783612.correct : P13853658055139783612.Spec := by
  intro n
  simp only [A212565, Nat.add_sub_cancel, A212565.P13853658055139783612.a, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212562, A212562.P9619993933328220815.a, A212563, A212563.P15478231082037985725.a, A212564, A212564.P74518275513655976.a, A212969, A212969.P7426317978988481171.a, A212561, A212561.P2355466971180462288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212565

/-! ## A212565.P1956927177615265648

`A000217(n)+A008911(n)-A227327(n+1)`
-/

namespace A212565.P1956927177615265648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A008911 n - A227327 (n + 1))

end

end A212565.P1956927177615265648

namespace A212565

/-- `A000217(n)+A008911(n)-A227327(n+1)` -/
def P1956927177615265648.Spec : Prop :=
  ∀ n, P1956927177615265648.a n = A212565 n

end A212565

/-! ## A212565.P17296926899131667741

`A211787(n)+A211797(n)-A212562(n)`
-/

namespace A212565.P17296926899131667741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212562 n)

end

end A212565.P17296926899131667741

namespace A212565

/-- `A211787(n)+A211797(n)-A212562(n)` -/
def P17296926899131667741.Spec : Prop :=
  ∀ n, P17296926899131667741.a n = A212565 n

end A212565

/-!
# A212566: Number of (w,x,y,z) with all terms in {1,...,n} and w+x=3y+3z.

The programs for A212566, the canonical program `A212566.P3077984912247403167` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212566 has offset 0).

The definition of A212566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212566.P3077984912247403167

`A061263(n)-A007590(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212566

/-- `A061263(n)-A007590(A004396(n))` -/
def P3077984912247403167.Spec : Prop :=
  ∀ n, P3077984912247403167.a n = A212566 n

theorem P3077984912247403167.correct : P3077984912247403167.Spec := by
  intro n
  simp only [A212566]

end A212566

/-! ## A212566.P10283693936761160085

`∑[A128422(n+1)]-A161680(A004396(n))`
-/

namespace A212566.P10283693936761160085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161680 (A004396 n).toNat

end

end A212566.P10283693936761160085

namespace A212566

/-- `∑[A128422(n+1)]-A161680(A004396(n))` -/
def P10283693936761160085.Spec : Prop :=
  ∀ n, P10283693936761160085.a n = A212566 n

end A212566

/-! ## A212566.P3048143633055412101

`A158925(A186240(n))`
-/

namespace A212566.P3048143633055412101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (A186240 n).toNat

end

end A212566.P3048143633055412101

namespace A212566

/-- `A158925(A186240(n))` -/
def P3048143633055412101.Spec : Prop :=
  ∀ n, P3048143633055412101.a n = A212566 n

end A212566

/-! ## A212566.P16383626495268856842

`∑[∑[A056654(A325831(n))%(n+1)]]`
-/

namespace A212566.P16383626495268856842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056654 (A325831 n).toNat) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212566.P16383626495268856842

namespace A212566

/-- `∑[∑[A056654(A325831(n))%(n+1)]]` -/
def P16383626495268856842.Spec : Prop :=
  ∀ n, P16383626495268856842.a n = A212566 n

end A212566

/-!
# A212568: Number of (w,x,y,z) with all terms in {1,...,n} and w<|x-y|+|y-z|.

The programs for A212568, the canonical program `A212568.P16414891719575577319` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212568 has offset 0).

The definition of A212568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212568.P16414891719575577319

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=24, a(4)=98, a(5)=272`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212568

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P16414891719575577319.Spec : Prop :=
  ∀ n, P16414891719575577319.a n = A212568 n

theorem P16414891719575577319.correct : P16414891719575577319.Spec := by
  intro n
  simp only [A212568]

end A212568

/-! ## A212568.P5432663866035647701

`n^4-A212675(n)`
-/

namespace A212568.P5432663866035647701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212675 n

end

end A212568.P5432663866035647701

namespace A212568

/-- `n^4-A212675(n)` -/
def P5432663866035647701.Spec : Prop :=
  ∀ n, P5432663866035647701.a n = A212568 n

end A212568

/-! ## A212568.P7633645939584484386

`A212673(n)-A212692(n)`
-/

namespace A212568.P7633645939584484386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n - A212692 n

end

end A212568.P7633645939584484386

namespace A212568

/-- `A212673(n)-A212692(n)` -/
def P7633645939584484386.Spec : Prop :=
  ∀ n, P7633645939584484386.a n = A212568 n

end A212568

/-! ## A212568.P10782078631592271227

`abs(A000583(n)-A212675(n))`
-/

namespace A212568.P10782078631592271227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212675 n|

end

end A212568.P10782078631592271227

namespace A212568

/-- `abs(A000583(n)-A212675(n))` -/
def P10782078631592271227.Spec : Prop :=
  ∀ n, P10782078631592271227.a n = A212568 n

end A212568

/-! ## A212568.P15192073669039279825

`A212673(n)+A212674(n)-A212675(n)`
-/

namespace A212568.P15192073669039279825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n + (A212674 n - A212675 n)

end

end A212568.P15192073669039279825

namespace A212568

/-- `A212673(n)+A212674(n)-A212675(n)` -/
def P15192073669039279825.Spec : Prop :=
  ∀ n, P15192073669039279825.a n = A212568 n

end A212568

/-! ## A212568.P8330976007001051174

`A212687(n)+A212688(n)-A212675(n)`
-/

namespace A212568.P8330976007001051174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212687 n + (A212688 n - A212675 n)

end

end A212568.P8330976007001051174

namespace A212568

/-- `A212687(n)+A212688(n)-A212675(n)` -/
def P8330976007001051174.Spec : Prop :=
  ∀ n, P8330976007001051174.a n = A212568 n

end A212568

/-! ## A212568.P17111545522953080655

`A212689(n)+A212690(n)-A212675(n)`
-/

namespace A212568.P17111545522953080655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212689 n + (A212690 n - A212675 n)

end

end A212568.P17111545522953080655

namespace A212568

/-- `A212689(n)+A212690(n)-A212675(n)` -/
def P17111545522953080655.Spec : Prop :=
  ∀ n, P17111545522953080655.a n = A212568 n

end A212568

/-!
# A212569: Number of (w,x,y,z) with all terms in {0,...,n} such that range{w,x,y,z} is not one of the numbers w,x,y,z.

The programs for A212569, the canonical program `A212569.P14873556270182437643` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212569 has offset 0).

The definition of A212569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212569.P14873556270182437643

`(n+1)²²-A212746(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212569

/-- `(n+1)²²-A212746(n)` -/
def P14873556270182437643.Spec : Prop :=
  ∀ n, P14873556270182437643.a n = A212569 n

theorem P14873556270182437643.correct : P14873556270182437643.Spec := by
  intro n
  simp only [A212569]

end A212569

/-! ## A212569.P4752203096545471991

`abs(∑[A005917(n+1)]-A212746(n))`
-/

namespace A212569.P4752203096545471991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A212746 n|

end

end A212569.P4752203096545471991

namespace A212569

/-- `abs(∑[A005917(n+1)]-A212746(n))` -/
def P4752203096545471991.Spec : Prop :=
  ∀ n, P4752203096545471991.a n = A212569 n

end A212569

/-! ## A212569.P213157567329814871

`A212740(n)+A212741(n)-A212746(n)`
-/

namespace A212569.P213157567329814871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n + (A212741 n - A212746 n)

end

end A212569.P213157567329814871

namespace A212569

/-- `A212740(n)+A212741(n)-A212746(n)` -/
def P213157567329814871.Spec : Prop :=
  ∀ n, P213157567329814871.a n = A212569 n

theorem P213157567329814871.correct : P213157567329814871.Spec := by
  intro n
  simp only [A212569, Nat.add_sub_cancel, A212569.P213157567329814871.a, A212569.P14873556270182437643.a, A212740, A212740.P15510474678281621434.a, A212741, A212741.P3519736066296721544.a, A212746, A212746.P3888124398472683356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212569

/-! ## A212569.P3081017489422264014

`A212742(n)+A212743(n)-A212746(n)`
-/

namespace A212569.P3081017489422264014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 n + (A212743 n - A212746 n)

end

end A212569.P3081017489422264014

namespace A212569

/-- `A212742(n)+A212743(n)-A212746(n)` -/
def P3081017489422264014.Spec : Prop :=
  ∀ n, P3081017489422264014.a n = A212569 n

theorem P3081017489422264014.correct : P3081017489422264014.Spec := by
  intro n
  simp only [A212569, Nat.add_sub_cancel, A212569.P3081017489422264014.a, A212569.P14873556270182437643.a, A212742, A212742.P6615112859734438105.a, A212743, A212743.P8901795894585003481.a, A212746, A212746.P3888124398472683356.a, A212740, A212740.P15510474678281621434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212569

/-! ## A212569.P2489901858444656619

`A005917(n+1)+A000583(n)-A212746(n)`
-/

namespace A212569.P2489901858444656619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) + (A000583 n - A212746 n)

end

end A212569.P2489901858444656619

namespace A212569

/-- `A005917(n+1)+A000583(n)-A212746(n)` -/
def P2489901858444656619.Spec : Prop :=
  ∀ n, P2489901858444656619.a n = A212569 n

theorem P2489901858444656619.correct : P2489901858444656619.Spec := by
  intro n
  simp only [A212569, Nat.add_sub_cancel, A212569.P2489901858444656619.a, A212569.P14873556270182437643.a, A000583, A000583.P14547500281748394449.a, A005917, A005917.P593194106963301078.a, A212746, A212746.P3888124398472683356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212569

/-! ## A212569.P1927944877281926333

`abs(A000583(n+1)-A212746(n))`
-/

namespace A212569.P1927944877281926333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 (n + 1) - A212746 n|

end

end A212569.P1927944877281926333

namespace A212569

/-- `abs(A000583(n+1)-A212746(n))` -/
def P1927944877281926333.Spec : Prop :=
  ∀ n, P1927944877281926333.a n = A212569 n

end A212569

/-! ## A212569.P15909108392356535222

`A212740(n+1)+A212743(n)-A212746(n)`
-/

namespace A212569.P15909108392356535222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 (n + 1) + (A212743 n - A212746 n)

end

end A212569.P15909108392356535222

namespace A212569

/-- `A212740(n+1)+A212743(n)-A212746(n)` -/
def P15909108392356535222.Spec : Prop :=
  ∀ n, P15909108392356535222.a n = A212569 n

theorem P15909108392356535222.correct : P15909108392356535222.Spec := by
  intro n
  simp only [A212569, Nat.add_sub_cancel, A212569.P15909108392356535222.a, A212569.P14873556270182437643.a, A212740, A212740.P15510474678281621434.a, A212743, A212743.P8901795894585003481.a, A212746, A212746.P3888124398472683356.a, A212742, A212742.P6615112859734438105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212569

/-! ## A212569.P11471516752707043538

`A212088(n+1)+A212089(n+1)-A212746(n)`
-/

namespace A212569.P11471516752707043538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 (n + 1) + (A212089 (n + 1) - A212746 n)

end

end A212569.P11471516752707043538

namespace A212569

/-- `A212088(n+1)+A212089(n+1)-A212746(n)` -/
def P11471516752707043538.Spec : Prop :=
  ∀ n, P11471516752707043538.a n = A212569 n

end A212569

/-! ## A212569.P12803809071258279695

`A212134(n+1)+A212135(n+1)-A212746(n)`
-/

namespace A212569.P12803809071258279695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 (n + 1) + (A212135 (n + 1) - A212746 n)

end

end A212569.P12803809071258279695

namespace A212569

/-- `A212134(n+1)+A212135(n+1)-A212746(n)` -/
def P12803809071258279695.Spec : Prop :=
  ∀ n, P12803809071258279695.a n = A212569 n

end A212569

/-! ## A212569.P2973867304870795629

`A212249(n+1)+A212250(n+1)-A212746(n)`
-/

namespace A212569.P2973867304870795629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 (n + 1) + (A212250 (n + 1) - A212746 n)

end

end A212569.P2973867304870795629

namespace A212569

/-- `A212249(n+1)+A212250(n+1)-A212746(n)` -/
def P2973867304870795629.Spec : Prop :=
  ∀ n, P2973867304870795629.a n = A212569 n

end A212569

/-! ## A212569.P16318446107588103183

`char[2]*A051699(n)+A000583(n+1)-A212746(n)`
-/

namespace A212569.P16318446107588103183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A051699 n + (A000583 (n + 1) - A212746 n)

end

end A212569.P16318446107588103183

namespace A212569

/-- `char[2]*A051699(n)+A000583(n+1)-A212746(n)` -/
def P16318446107588103183.Spec : Prop :=
  ∀ n, P16318446107588103183.a n = A212569 n

end A212569

/-! ## A212569.P9094691263585757963

`A007814(2*n+1)+A000583(n+1)-A212746(n)`
-/

namespace A212569.P9094691263585757963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + (A000583 (n + 1) - A212746 n)

end

end A212569.P9094691263585757963

namespace A212569

/-- `A007814(2*n+1)+A000583(n+1)-A212746(n)` -/
def P9094691263585757963.Spec : Prop :=
  ∀ n, P9094691263585757963.a n = A212569 n

end A212569

/-! ## A212569.P3574525674483890020

`(A000583(n+1)-A212746(n))*A014963(15*(n+1))`
-/

namespace A212569.P3574525674483890020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 (n + 1) - A212746 n) * A014963 (15 * (n + 1))

end

end A212569.P3574525674483890020

namespace A212569

/-- `(A000583(n+1)-A212746(n))*A014963(15*(n+1))` -/
def P3574525674483890020.Spec : Prop :=
  ∀ n, P3574525674483890020.a n = A212569 n

end A212569

/-! ## A212569.P2898351746075244199

`A211787(n+1)+A211797(n+1)-A212746(n)`
-/

namespace A212569.P2898351746075244199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 (n + 1) + (A211797 (n + 1) - A212746 n)

end

end A212569.P2898351746075244199

namespace A212569

/-- `A211787(n+1)+A211797(n+1)-A212746(n)` -/
def P2898351746075244199.Spec : Prop :=
  ∀ n, P2898351746075244199.a n = A212569 n

end A212569

/-! ## A212569.P2992733950598735250

`A212151(n+1)+A212240(n+1)-A212746(n)`
-/

namespace A212569.P2992733950598735250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 1) + (A212240 (n + 1) - A212746 n)

end

end A212569.P2992733950598735250

namespace A212569

/-- `A212151(n+1)+A212240(n+1)-A212746(n)` -/
def P2992733950598735250.Spec : Prop :=
  ∀ n, P2992733950598735250.a n = A212569 n

end A212569

/-! ## A212569.P469223397052274044

`A212104(n+1)+A212105(n+1)-A212746(n)`
-/

namespace A212569.P469223397052274044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 (n + 1) + (A212105 (n + 1) - A212746 n)

end

end A212569.P469223397052274044

namespace A212569

/-- `A212104(n+1)+A212105(n+1)-A212746(n)` -/
def P469223397052274044.Spec : Prop :=
  ∀ n, P469223397052274044.a n = A212569 n

end A212569

/-! ## A212569.P5795281474943148453

`A212106(n+1)+A212107(n+1)-A212746(n)`
-/

namespace A212569.P5795281474943148453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 (n + 1) + (A212107 (n + 1) - A212746 n)

end

end A212569.P5795281474943148453

namespace A212569

/-- `A212106(n+1)+A212107(n+1)-A212746(n)` -/
def P5795281474943148453.Spec : Prop :=
  ∀ n, P5795281474943148453.a n = A212569 n

end A212569

/-!
# A212570: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|=|x-y|+|y-z|.

The programs for A212570, the canonical program `A212570.P271870078164672560` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212570 has offset 0).

The definition of A212570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212570.P271870078164672560

`n^3-∑[2*floor(n/2)²]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212570

/-- `n^3-∑[2*floor(n/2)²]` -/
def P271870078164672560.Spec : Prop :=
  ∀ n, P271870078164672560.a n = A212570 n

theorem P271870078164672560.correct : P271870078164672560.Spec := by
  intro n
  simp only [A212570]

end A212570

/-! ## A212570.P18431892393936856485

`abs(2*A212578(n)-n)`
-/

namespace A212570.P18431892393936856485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A212578 n - (n : ℤ)|

end

end A212570.P18431892393936856485

namespace A212570

/-- `abs(2*A212578(n)-n)` -/
def P18431892393936856485.Spec : Prop :=
  ∀ n, P18431892393936856485.a n = A212570 n

end A212570

/-! ## A212570.P16757089300297630514

`abs(A004068(n)-A142150(n))`
-/

namespace A212570.P16757089300297630514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004068 n - A142150 n|

end

end A212570.P16757089300297630514

namespace A212570

/-- `abs(A004068(n)-A142150(n))` -/
def P16757089300297630514.Spec : Prop :=
  ∀ n, P16757089300297630514.a n = A212570 n

end A212570

/-! ## A212570.P11037834889767227009

`or(2*A212578(n)-n, A000035(n))`
-/

namespace A212570.P11037834889767227009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A212578 n - (n : ℤ)) (A000035 n)

end

end A212570.P11037834889767227009

namespace A212570

/-- `or(2*A212578(n)-n, A000035(n))` -/
def P11037834889767227009.Spec : Prop :=
  ∀ n, P11037834889767227009.a n = A212570 n

end A212570

/-! ## A212570.P7984836040294830862

`abs(A220082(n+1)-∑[A220082(n+1)])`
-/

namespace A212570.P7984836040294830862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A220082 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A212570.P7984836040294830862

namespace A212570

/-- `abs(A220082(n+1)-∑[A220082(n+1)])` -/
def P7984836040294830862.Spec : Prop :=
  ∀ n, P7984836040294830862.a n = A212570 n

end A212570

/-! ## A212570.P5026404841315763320

`(2*A212578(n)-n)*A001221(A001316(n))`
-/

namespace A212570.P5026404841315763320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A212578 n - (n : ℤ)) * A001221 (A001316 n).toNat

end

end A212570.P5026404841315763320

namespace A212570

/-- `(2*A212578(n)-n)*A001221(A001316(n))` -/
def P5026404841315763320.Spec : Prop :=
  ∀ n, P5026404841315763320.a n = A212570 n

end A212570

/-! ## A212570.P14735022007691792290

`xor(2*A212578(n)-n, A000035(2*n))`
-/

namespace A212570.P14735022007691792290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A212578 n - (n : ℤ)) (A000035 (2 * n))

end

end A212570.P14735022007691792290

namespace A212570

/-- `xor(2*A212578(n)-n, A000035(2*n))` -/
def P14735022007691792290.Spec : Prop :=
  ∀ n, P14735022007691792290.a n = A212570 n

end A212570

/-! ## A212570.P15287736364081824916

`(2*A212578(n)-n)*A000035(2*n+1)`
-/

namespace A212570.P15287736364081824916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A212578 n - (n : ℤ)) * A000035 (2 * n + 1)

end

end A212570.P15287736364081824916

namespace A212570

/-- `(2*A212578(n)-n)*A000035(2*n+1)` -/
def P15287736364081824916.Spec : Prop :=
  ∀ n, P15287736364081824916.a n = A212570 n

end A212570

/-!
# A212571: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|<|x-y|+|y-z|.

The programs for A212571, the canonical program `A212571.P10300611427590139486` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212571 has offset 0).

The definition of A212571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212571.P10300611427590139486

`n²²-A212574(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212571

/-- `n²²-A212574(n)` -/
def P10300611427590139486.Spec : Prop :=
  ∀ n, P10300611427590139486.a n = A212571 n

theorem P10300611427590139486.correct : P10300611427590139486.Spec := by
  intro n
  simp only [A212571]

end A212571

/-! ## A212571.P7827853341831196337

`A212572(n)-A212570(n)`
-/

namespace A212571.P7827853341831196337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212572 n - A212570 n

end

end A212571.P7827853341831196337

namespace A212571

/-- `A212572(n)-A212570(n)` -/
def P7827853341831196337.Spec : Prop :=
  ∀ n, P7827853341831196337.a n = A212571 n

theorem P7827853341831196337.correct : P7827853341831196337.Spec := by
  intro n
  simp only [A212571, Nat.add_sub_cancel, A212571.P7827853341831196337.a, A212571.P10300611427590139486.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212572, A212572.P15356776701281447964.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212571

/-! ## A212571.P7428833011286122216

`A142150(n)+A212572(n)-A004068(n)`
-/

namespace A212571.P7428833011286122216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + (A212572 n - A004068 n)

end

end A212571.P7428833011286122216

namespace A212571

/-- `A142150(n)+A212572(n)-A004068(n)` -/
def P7428833011286122216.Spec : Prop :=
  ∀ n, P7428833011286122216.a n = A212571 n

end A212571

/-! ## A212571.P11042945075875092782

`A212572(n)-(A203552(n)+A050187(n))`
-/

namespace A212571.P11042945075875092782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212572 n - (A203552 n + A050187 n)

end

end A212571.P11042945075875092782

namespace A212571

/-- `A212572(n)-(A203552(n)+A050187(n))` -/
def P11042945075875092782.Spec : Prop :=
  ∀ n, P11042945075875092782.a n = A212571 n

end A212571

/-! ## A212571.P4538841851021151806

`A212572(n)+A212573(n)-A212574(n)`
-/

namespace A212571.P4538841851021151806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212572 n + (A212573 n - A212574 n)

end

end A212571.P4538841851021151806

namespace A212571

/-- `A212572(n)+A212573(n)-A212574(n)` -/
def P4538841851021151806.Spec : Prop :=
  ∀ n, P4538841851021151806.a n = A212571 n

theorem P4538841851021151806.correct : P4538841851021151806.Spec := by
  intro n
  simp only [A212571, Nat.add_sub_cancel, A212571.P4538841851021151806.a, A212571.P10300611427590139486.a, A212572, A212572.P15356776701281447964.a, A212573, A212573.P10750861225412555263.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212571

/-! ## A212571.P9063067588582745009

`A212568(n)+A212675(n)-A212574(n)`
-/

namespace A212571.P9063067588582745009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212568 n + (A212675 n - A212574 n)

end

end A212571.P9063067588582745009

namespace A212571

/-- `A212568(n)+A212675(n)-A212574(n)` -/
def P9063067588582745009.Spec : Prop :=
  ∀ n, P9063067588582745009.a n = A212571 n

end A212571

/-! ## A212571.P12204211195432906306

`A065033(n)%A008619(n)+A212572(n)-A004068(n)`
-/

namespace A212571.P12204211195432906306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 n) (A008619 n) + (A212572 n - A004068 n)

end

end A212571.P12204211195432906306

namespace A212571

/-- `A065033(n)%A008619(n)+A212572(n)-A004068(n)` -/
def P12204211195432906306.Spec : Prop :=
  ∀ n, P12204211195432906306.a n = A212571 n

end A212571

/-! ## A212571.P18298129743000768363

`n²²-A212573(n+1)+n`
-/

namespace A212571.P18298129743000768363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212573 (n + 1) + (n : ℤ)

end

end A212571.P18298129743000768363

namespace A212571

/-- `n²²-A212573(n+1)+n` -/
def P18298129743000768363.Spec : Prop :=
  ∀ n, P18298129743000768363.a n = A212571 n

end A212571

/-! ## A212571.P13790812465684250848

`A211787(n)+A211797(n)-A212574(n)`
-/

namespace A212571.P13790812465684250848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212574 n)

end

end A212571.P13790812465684250848

namespace A212571

/-- `A211787(n)+A211797(n)-A212574(n)` -/
def P13790812465684250848.Spec : Prop :=
  ∀ n, P13790812465684250848.a n = A212571 n

end A212571

/-! ## A212571.P15363257284488589891

`A212104(n)+A212105(n)-A212574(n)`
-/

namespace A212571.P15363257284488589891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 n + (A212105 n - A212574 n)

end

end A212571.P15363257284488589891

namespace A212571

/-- `A212104(n)+A212105(n)-A212574(n)` -/
def P15363257284488589891.Spec : Prop :=
  ∀ n, P15363257284488589891.a n = A212571 n

end A212571

/-! ## A212571.P1398355827698862223

`A212106(n)+A212107(n)-A212574(n)`
-/

namespace A212571.P1398355827698862223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + (A212107 n - A212574 n)

end

end A212571.P1398355827698862223

namespace A212571

/-- `A212106(n)+A212107(n)-A212574(n)` -/
def P1398355827698862223.Spec : Prop :=
  ∀ n, P1398355827698862223.a n = A212571 n

end A212571

/-!
# A212572: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x| <= |x-y| + |y-z|.

The programs for A212572, the canonical program `A212572.P15356776701281447964` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212572 has offset 0).

The definition of A212572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212572.P3058955963348499096

`n²²-A212573(n)`
-/

namespace A212572.P3058955963348499096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212573 n

end

end A212572.P3058955963348499096

namespace A212572

/-- `n²²-A212573(n)` -/
def P3058955963348499096.Spec : Prop :=
  ∀ n, P3058955963348499096.a n = A212572 n

theorem P3058955963348499096.correct : P3058955963348499096.Spec := by
  intro n
  simp only [A212572, Nat.add_sub_cancel, A212572.P3058955963348499096.a, A212572.P15356776701281447964.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212571, A212571.P10300611427590139486.a, A212573, A212573.P10750861225412555263.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212572

/-! ## A212572.P15356776701281447964

`A212571(n)+A212570(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A212572

/-- `A212571(n)+A212570(n)` -/
def P15356776701281447964.Spec : Prop :=
  ∀ n, P15356776701281447964.a n = A212572 n

theorem P15356776701281447964.correct : P15356776701281447964.Spec := by
  intro n
  simp only [A212572]

end A212572

/-! ## A212572.P16028452572067580446

`abs(A000583(n)-A212573(n))`
-/

namespace A212572.P16028452572067580446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A212573 n|

end

end A212572.P16028452572067580446

namespace A212572

/-- `abs(A000583(n)-A212573(n))` -/
def P16028452572067580446.Spec : Prop :=
  ∀ n, P16028452572067580446.a n = A212572 n

end A212572

/-! ## A212572.P9076842476588570718

`A004068(n)+A212571(n)-A142150(n)`
-/

namespace A212572.P9076842476588570718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 n + (A212571 n - A142150 n)

end

end A212572.P9076842476588570718

namespace A212572

/-- `A004068(n)+A212571(n)-A142150(n)` -/
def P9076842476588570718.Spec : Prop :=
  ∀ n, P9076842476588570718.a n = A212572 n

end A212572

/-! ## A212572.P13067592587385152241

`A212562(n)+A212565(n)-A212573(n)`
-/

namespace A212572.P13067592587385152241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212562 n + (A212565 n - A212573 n)

end

end A212572.P13067592587385152241

namespace A212572

/-- `A212562(n)+A212565(n)-A212573(n)` -/
def P13067592587385152241.Spec : Prop :=
  ∀ n, P13067592587385152241.a n = A212572 n

theorem P13067592587385152241.correct : P13067592587385152241.Spec := by
  intro n
  simp only [A212572, Nat.add_sub_cancel, A212572.P13067592587385152241.a, A212572.P15356776701281447964.a, A212562, A212562.P9619993933328220815.a, A212565, A212565.P5070263067435568383.f1, A212565.P5070263067435568383.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212571, A212571.P10300611427590139486.a, A212573, A212573.P10750861225412555263.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212969, A212969.P7426317978988481171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212572

/-! ## A212572.P4808524131974021710

`A212571(n)+A212574(n)-A212573(n)`
-/

namespace A212572.P4808524131974021710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + (A212574 n - A212573 n)

end

end A212572.P4808524131974021710

namespace A212572

/-- `A212571(n)+A212574(n)-A212573(n)` -/
def P4808524131974021710.Spec : Prop :=
  ∀ n, P4808524131974021710.a n = A212572 n

theorem P4808524131974021710.correct : P4808524131974021710.Spec := by
  intro n
  simp only [A212572, Nat.add_sub_cancel, A212572.P4808524131974021710.a, A212572.P15356776701281447964.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212571, A212571.P10300611427590139486.a, A212573, A212573.P10750861225412555263.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212572

/-! ## A212572.P16413871884444658911

`(A000583(n)-A212573(n))%A053367(n)`
-/

namespace A212572.P16413871884444658911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A212573 n) (A053367 n)

end

end A212572.P16413871884444658911

namespace A212572

/-- `(A000583(n)-A212573(n))%A053367(n)` -/
def P16413871884444658911.Spec : Prop :=
  ∀ n, P16413871884444658911.a n = A212572 n

end A212572

/-! ## A212572.P11809093298159502730

`A001222(gcd(n, n+1))+A000583(n)-A212573(n)`
-/

namespace A212572.P11809093298159502730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) + (A000583 n - A212573 n)

end

end A212572.P11809093298159502730

namespace A212572

/-- `A001222(gcd(n, n+1))+A000583(n)-A212573(n)` -/
def P11809093298159502730.Spec : Prop :=
  ∀ n, P11809093298159502730.a n = A212572 n

end A212572

/-! ## A212572.P17541044561797012307

`A000035(2*(n+1))+A000583(n)-A212573(n)`
-/

namespace A212572.P17541044561797012307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1)) + (A000583 n - A212573 n)

end

end A212572.P17541044561797012307

namespace A212572

/-- `A000035(2*(n+1))+A000583(n)-A212573(n)` -/
def P17541044561797012307.Spec : Prop :=
  ∀ n, P17541044561797012307.a n = A212572 n

end A212572

/-! ## A212572.P15760144822851397359

`A211787(n)+A211797(n)-A212573(n)`
-/

namespace A212572.P15760144822851397359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212573 n)

end

end A212572.P15760144822851397359

namespace A212572

/-- `A211787(n)+A211797(n)-A212573(n)` -/
def P15760144822851397359.Spec : Prop :=
  ∀ n, P15760144822851397359.a n = A212572 n

end A212572

/-!
# A212573: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|>|x-y|+|y-z|.

The programs for A212573, the canonical program `A212573.P10750861225412555263` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212573 has offset 0).

The definition of A212573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212573.P10750861225412555263

`n²²-A212572(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A212573

/-- `n²²-A212572(n)` -/
def P10750861225412555263.Spec : Prop :=
  ∀ n, P10750861225412555263.a n = A212573 n

theorem P10750861225412555263.correct : P10750861225412555263.Spec := by
  intro n
  simp only [A212573]

end A212573

/-! ## A212573.P7108690373306801918

`A212574(n)-A212570(n)`
-/

namespace A212573.P7108690373306801918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212574 n - A212570 n

end

end A212573.P7108690373306801918

namespace A212573

/-- `A212574(n)-A212570(n)` -/
def P7108690373306801918.Spec : Prop :=
  ∀ n, P7108690373306801918.a n = A212573 n

theorem P7108690373306801918.correct : P7108690373306801918.Spec := by
  intro n
  simp only [A212573, Nat.add_sub_cancel, A212573.P7108690373306801918.a, A212573.P10750861225412555263.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212572, A212572.P15356776701281447964.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212571, A212571.P10300611427590139486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212573

/-! ## A212573.P9340718884912776685

`A002523(n)-(A212572(n)+1)`
-/

namespace A212573.P9340718884912776685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A212572 n + 1)

end

end A212573.P9340718884912776685

namespace A212573

/-- `A002523(n)-(A212572(n)+1)` -/
def P9340718884912776685.Spec : Prop :=
  ∀ n, P9340718884912776685.a n = A212573 n

theorem P9340718884912776685.correct : P9340718884912776685.Spec := by
  intro n
  simp only [A212573, Nat.add_sub_cancel, A212573.P9340718884912776685.a, A212573.P10750861225412555263.a, A002523, A002523.P178649398705969946.a, A212572, A212572.P15356776701281447964.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212571, A212571.P10300611427590139486.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212573

/-! ## A212573.P9227494261519025855

`2*(∑[A212578(n)]-A212578(n))`
-/

namespace A212573.P9227494261519025855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A212578 n)

end

end A212573.P9227494261519025855

namespace A212573

/-- `2*(∑[A212578(n)]-A212578(n))` -/
def P9227494261519025855.Spec : Prop :=
  ∀ n, P9227494261519025855.a n = A212573 n

end A212573

/-! ## A212573.P7959544345721468681

`A212571(n)+A212574(n)-A212572(n)`
-/

namespace A212573.P7959544345721468681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212571 n + (A212574 n - A212572 n)

end

end A212573.P7959544345721468681

namespace A212573

/-- `A212571(n)+A212574(n)-A212572(n)` -/
def P7959544345721468681.Spec : Prop :=
  ∀ n, P7959544345721468681.a n = A212573 n

theorem P7959544345721468681.correct : P7959544345721468681.Spec := by
  intro n
  simp only [A212573, Nat.add_sub_cancel, A212573.P7959544345721468681.a, A212573.P10750861225412555263.a, A212571, A212571.P10300611427590139486.a, A212572, A212572.P15356776701281447964.a, A212574, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212573

/-! ## A212573.P16656252659443848023

`A211787(n)+A211797(n)-A212572(n)`
-/

namespace A212573.P16656252659443848023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212572 n)

end

end A212573.P16656252659443848023

namespace A212573

/-- `A211787(n)+A211797(n)-A212572(n)` -/
def P16656252659443848023.Spec : Prop :=
  ∀ n, P16656252659443848023.a n = A212573 n

end A212573

/-!
# A212574: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x|>=|x-y|+|y-z|.

The programs for A212574, the canonical program `A212574.P17770869569289382826` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212574 has offset 0).

The definition of A212574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212574.P4426734872432340080

`n²²-A212571(n)`
-/

namespace A212574.P4426734872432340080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A212571 n

end

end A212574.P4426734872432340080

namespace A212574

/-- `n²²-A212571(n)` -/
def P4426734872432340080.Spec : Prop :=
  ∀ n, P4426734872432340080.a n = A212574 n

theorem P4426734872432340080.correct : P4426734872432340080.Spec := by
  intro n
  simp only [A212574, Nat.add_sub_cancel, A212574.P4426734872432340080.a, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212571, A212571.P10300611427590139486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212574

/-! ## A212574.P11454712725233729983

`∑[2*A212578(n)]-n`
-/

namespace A212574.P11454712725233729983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A212574.P11454712725233729983

namespace A212574

/-- `∑[2*A212578(n)]-n` -/
def P11454712725233729983.Spec : Prop :=
  ∀ n, P11454712725233729983.a n = A212574 n

end A212574

/-! ## A212574.P17770869569289382826

`∑[A212570(n)]+C(n, 2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212574

/-- `∑[A212570(n)]+C(n, 2)` -/
def P17770869569289382826.Spec : Prop :=
  ∀ n, P17770869569289382826.a n = A212574 n

theorem P17770869569289382826.correct : P17770869569289382826.Spec := by
  intro n
  simp only [A212574]

end A212574

/-! ## A212574.P2366760517951461969

`A212573(n)+A212570(n)`
-/

namespace A212574.P2366760517951461969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212573 n + A212570 n

end

end A212574.P2366760517951461969

namespace A212574

/-- `A212573(n)+A212570(n)` -/
def P2366760517951461969.Spec : Prop :=
  ∀ n, P2366760517951461969.a n = A212574 n

theorem P2366760517951461969.correct : P2366760517951461969.Spec := by
  intro n
  simp only [A212574, Nat.add_sub_cancel, A212574.P2366760517951461969.a, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212573, A212573.P10750861225412555263.a, A212572, A212572.P15356776701281447964.a, A212571, A212571.P10300611427590139486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212574

/-! ## A212574.P7696329192025709186

`A212572(n)+A212573(n)-A212571(n)`
-/

namespace A212574.P7696329192025709186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212572 n + (A212573 n - A212571 n)

end

end A212574.P7696329192025709186

namespace A212574

/-- `A212572(n)+A212573(n)-A212571(n)` -/
def P7696329192025709186.Spec : Prop :=
  ∀ n, P7696329192025709186.a n = A212574 n

theorem P7696329192025709186.correct : P7696329192025709186.Spec := by
  intro n
  simp only [A212574, Nat.add_sub_cancel, A212574.P7696329192025709186.a, A212574.P17770869569289382826.f1, A212574.P17770869569289382826.a, A212570, A212570.P271870078164672560.f1, A212570.P271870078164672560.a, A212571, A212571.P10300611427590139486.a, A212572, A212572.P15356776701281447964.a, A212573, A212573.P10750861225412555263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212574

/-! ## A212574.P5869950239973104849

`A212573(n+1)-n`
-/

namespace A212574.P5869950239973104849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212573 (n + 1) - (n : ℤ)

end

end A212574.P5869950239973104849

namespace A212574

/-- `A212573(n+1)-n` -/
def P5869950239973104849.Spec : Prop :=
  ∀ n, P5869950239973104849.a n = A212574 n

end A212574

/-! ## A212574.P6494973954345819746

`A211787(n)+A211797(n)-A212571(n)`
-/

namespace A212574.P6494973954345819746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A212571 n)

end

end A212574.P6494973954345819746

namespace A212574

/-- `A211787(n)+A211797(n)-A212571(n)` -/
def P6494973954345819746.Spec : Prop :=
  ∀ n, P6494973954345819746.a n = A212574 n

end A212574

/-!
# A212578: Number of (w,x,y,z) with all terms in {1,...,n} and |w-x| = 2*|x-y| - |y-z|.

The programs for A212578, the canonical program `A212578.P4747266205791069516` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212578 has offset 0).

The definition of A212578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212578.P5478836619081097871

`n/3*∑[a(n-2)+5]-n²` with `a(0)=1, a(1)=5`
-/

namespace A212578.P5478836619081097871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n ^ 2 : ℚ)

end

end A212578.P5478836619081097871

namespace A212578

/-- `n/3*∑[a(n-2)+5]-n²` -/
def P5478836619081097871.Spec : Prop :=
  ∀ n, P5478836619081097871.a n = (A212578 n : ℚ)

end A212578

/-! ## A212578.P4293007641462777660

`A212970(n)-n²`
-/

namespace A212578.P4293007641462777660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212970 n - (n ^ 2 : ℤ)

end

end A212578.P4293007641462777660

namespace A212578

/-- `A212970(n)-n²` -/
def P4293007641462777660.Spec : Prop :=
  ∀ n, P4293007641462777660.a n = A212578 n

end A212578

/-! ## A212578.P9329511044493638279

`(A212570(n)+n)/2`
-/

namespace A212578.P9329511044493638279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212570 n + (n : ℤ) : ℚ) / 2

end

end A212578.P9329511044493638279

namespace A212578

/-- `(A212570(n)+n)/2` -/
def P9329511044493638279.Spec : Prop :=
  ∀ n, P9329511044493638279.a n = (A212578 n : ℚ)

end A212578

/-! ## A212578.P4747266205791069516

`A006527(n)+∑[2*C(ceil(n/2), 2)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212578

/-- `A006527(n)+∑[2*C(ceil(n/2), 2)]` -/
def P4747266205791069516.Spec : Prop :=
  ∀ n, P4747266205791069516.a n = A212578 n

theorem P4747266205791069516.correct : P4747266205791069516.Spec := by
  intro n
  simp only [A212578]

end A212578

/-! ## A212578.P7669767469824311200

`A006584(n)+A006527(n)`
-/

namespace A212578.P7669767469824311200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 n + A006527 n

end

end A212578.P7669767469824311200

namespace A212578

/-- `A006584(n)+A006527(n)` -/
def P7669767469824311200.Spec : Prop :=
  ∀ n, P7669767469824311200.a n = A212578 n

end A212578

/-! ## A212578.P14006776107298165434

`A212561(n)+A131941(n)`
-/

namespace A212578.P14006776107298165434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212561 n + A131941 n

end

end A212578.P14006776107298165434

namespace A212578

/-- `A212561(n)+A131941(n)` -/
def P14006776107298165434.Spec : Prop :=
  ∀ n, P14006776107298165434.a n = A212578 n

end A212578

/-! ## A212578.P6842367413755976802

`A034262(n)-A061349(n)`
-/

namespace A212578.P6842367413755976802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n - A061349 n

end

end A212578.P6842367413755976802

namespace A212578

/-- `A034262(n)-A061349(n)` -/
def P6842367413755976802.Spec : Prop :=
  ∀ n, P6842367413755976802.a n = A212578 n

end A212578

/-! ## A212578.P17462842976400358759

`A325517(n)-A071244(n)`
-/

namespace A212578.P17462842976400358759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325517 n - A071244 n

end

end A212578.P17462842976400358759

namespace A212578

/-- `A325517(n)-A071244(n)` -/
def P17462842976400358759.Spec : Prop :=
  ∀ n, P17462842976400358759.a n = A212578 n

end A212578

/-! ## A212578.P12229608361622784226

`A325656(n)-A071246(n)`
-/

namespace A212578.P12229608361622784226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325656 n - A071246 n

end

end A212578.P12229608361622784226

namespace A212578

/-- `A325656(n)-A071246(n)` -/
def P12229608361622784226.Spec : Prop :=
  ∀ n, P12229608361622784226.a n = A212578 n

end A212578

/-! ## A212578.P8177313901124815623

`A006003(n)-∑[A008794(n)]`
-/

namespace A212578.P8177313901124815623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212578.P8177313901124815623

namespace A212578

/-- `A006003(n)-∑[A008794(n)]` -/
def P8177313901124815623.Spec : Prop :=
  ∀ n, P8177313901124815623.a n = A212578 n

end A212578

/-! ## A212578.P8783145200428031824

`∑[A247643(n)]-A247643(n)`
-/

namespace A212578.P8783145200428031824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A247643 n

end

end A212578.P8783145200428031824

namespace A212578

/-- `∑[A247643(n)]-A247643(n)` -/
def P8783145200428031824.Spec : Prop :=
  ∀ n, P8783145200428031824.a n = A212578 n

end A212578

/-! ## A212578.P17039420247183950629

`A212682(n)-A036464(n+1)`
-/

namespace A212578.P17039420247183950629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212682 n - A036464 (n + 1)

end

end A212578.P17039420247183950629

namespace A212578

/-- `A212682(n)-A036464(n+1)` -/
def P17039420247183950629.Spec : Prop :=
  ∀ n, P17039420247183950629.a n = A212578 n

end A212578

/-! ## A212578.P895239325084975975

`A272459(n+1)-A032438(n)`
-/

namespace A212578.P895239325084975975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272459 (n + 1) - A032438 n

end

end A212578.P895239325084975975

namespace A212578

/-- `A272459(n+1)-A032438(n)` -/
def P895239325084975975.Spec : Prop :=
  ∀ n, P895239325084975975.a n = A212578 n

end A212578

/-! ## A212578.P7448479988887368631

`(A026741(n)+A004068(n))/2`
-/

namespace A212578.P7448479988887368631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 n + A004068 n : ℚ) / 2

end

end A212578.P7448479988887368631

namespace A212578

/-- `(A026741(n)+A004068(n))/2` -/
def P7448479988887368631.Spec : Prop :=
  ∀ n, P7448479988887368631.a n = (A212578 n : ℚ)

end A212578

/-! ## A212578.P8381962457089579827

`(A213389(n)+A061349(n))/2`
-/

namespace A212578.P8381962457089579827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213389 n + A061349 n : ℚ) / 2

end

end A212578.P8381962457089579827

namespace A212578

/-- `(A213389(n)+A061349(n))/2` -/
def P8381962457089579827.Spec : Prop :=
  ∀ n, P8381962457089579827.a n = (A212578 n : ℚ)

end A212578

/-! ## A212578.P7551016840182220772

`A213389(n)+A212686(n)/2`
-/

namespace A212578.P7551016840182220772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213389 n : ℚ) + (A212686 n : ℚ) / 2

end

end A212578.P7551016840182220772

namespace A212578

/-- `A213389(n)+A212686(n)/2` -/
def P7551016840182220772.Spec : Prop :=
  ∀ n, P7551016840182220772.a n = (A212578 n : ℚ)

end A212578

/-! ## A212578.P4354987486911942067

`A061349(n)-A212686(n)/2`
-/

namespace A212578.P4354987486911942067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061349 n : ℚ) - (A212686 n : ℚ) / 2

end

end A212578.P4354987486911942067

namespace A212578

/-- `A061349(n)-A212686(n)/2` -/
def P4354987486911942067.Spec : Prop :=
  ∀ n, P4354987486911942067.a n = (A212578 n : ℚ)

end A212578

/-! ## A212578.P4702671340718054271

`A005900(n)-n*A002620(n)`
-/

namespace A212578.P4702671340718054271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - (n : ℤ) * A002620 n

end

end A212578.P4702671340718054271

namespace A212578

/-- `A005900(n)-n*A002620(n)` -/
def P4702671340718054271.Spec : Prop :=
  ∀ n, P4702671340718054271.a n = A212578 n

end A212578

/-! ## A212578.P7010443090024733674

`A006003(n)-∑[A004526(n)²]`
-/

namespace A212578.P7010443090024733674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212578.P7010443090024733674

namespace A212578

/-- `A006003(n)-∑[A004526(n)²]` -/
def P7010443090024733674.Spec : Prop :=
  ∀ n, P7010443090024733674.a n = A212578 n

end A212578

/-! ## A212578.P9693039212847929030

`A027444(n)-(A061349(n)+n²)`
-/

namespace A212578.P9693039212847929030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n - (A061349 n + (n ^ 2 : ℤ))

end

end A212578.P9693039212847929030

namespace A212578

/-- `A027444(n)-(A061349(n)+n²)` -/
def P9693039212847929030.Spec : Prop :=
  ∀ n, P9693039212847929030.a n = A212578 n

end A212578

/-!
# A212579: Number of (w,x,y,z) with all terms in {1,...,n} and min{|w-x|,|w-y|}=min{|x-y|,|x-z|}.

The programs for A212579, there is no canonical definition to state claims against.
-/

/-! ## A212579.P15782584800756945858

`A307531(n*A046023(n))`
-/

namespace A212579.P15782584800756945858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 ((n : ℤ) * A046023 n).toNat

end

end A212579.P15782584800756945858

/-! ## A212579.P16659554473314546442

`∑[∑[A000360(A272146(n))]]`
-/

namespace A212579.P16659554473314546442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (A272146 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212579.P16659554473314546442

/-!
# A212580: Number of equivalence classes of S_n under transformations of positionally and numerically adjacent elements of the form abc <--> acb where a

The programs for A212580, there is no canonical definition to state claims against.
-/

/-! ## A212580.P18002589792305686353

`A343535(A001840(n))`
-/

namespace A212580.P18002589792305686353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343535 (A001840 n).toNat

end

end A212580.P18002589792305686353

/-! ## A212580.P16654707575877564364

`A343535(A002264(∑[n+1]))`
-/

namespace A212580.P16654707575877564364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343535 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A212580.P16654707575877564364

/-! ## A212580.P134203518509371343

`A343535(∑[A008615(2*n)])`
-/

namespace A212580.P134203518509371343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343535 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212580.P134203518509371343

/-! ## A212580.P4902820844954300810

`A343535(∑[n]-A000212(n))`
-/

namespace A212580.P4902820844954300810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343535 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000212 n).toNat

end

end A212580.P4902820844954300810

/-!
# A212584: Nonnegative walks of length n on the x-axis starting at the origin using steps {1,-1} and visiting no point more than twice.

The programs for A212584, the canonical program `A212584.P5492663640177361667` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212584 has offset 0).

The definition of A212584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212584.P5492663640177361667

`a(n-2)+a(n-4)+a(n-5)+1` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212584

/-- `a(n-2)+a(n-4)+a(n-5)+1` -/
def P5492663640177361667.Spec : Prop :=
  ∀ n, (P5492663640177361667.a n : ℤ) = A212584 n

theorem P5492663640177361667.correct : P5492663640177361667.Spec := by
  intro n
  simp only [A212584]

end A212584

/-! ## A212584.P5041510880915218907

`A137200(n+1)-n%2`
-/

namespace A212584.P5041510880915218907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137200 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A212584.P5041510880915218907

namespace A212584

/-- `A137200(n+1)-n%2` -/
def P5041510880915218907.Spec : Prop :=
  ∀ n, P5041510880915218907.a n = A212584 n

end A212584

/-! ## A212584.P11770389282260400389

`A193146(n)+A017898(n+1)`
-/

namespace A212584.P11770389282260400389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193146 n + A017898 (n + 1)

end

end A212584.P11770389282260400389

namespace A212584

/-- `A193146(n)+A017898(n+1)` -/
def P11770389282260400389.Spec : Prop :=
  ∀ n, P11770389282260400389.a n = A212584 n

end A212584

/-! ## A212584.P15239712160650125985

`A137200(n+1)-A000035(n)`
-/

namespace A212584.P15239712160650125985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137200 (n + 1) - A000035 n

end

end A212584.P15239712160650125985

namespace A212584

/-- `A137200(n+1)-A000035(n)` -/
def P15239712160650125985.Spec : Prop :=
  ∀ n, P15239712160650125985.a n = A212584 n

end A212584

/-! ## A212584.P12016332490455879816

`A137200(n+1)-Δ[A008619(n)]`
-/

namespace A212584.P12016332490455879816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137200 (n + 1) - (f1 (n + 1) - f1 n)

end

end A212584.P12016332490455879816

namespace A212584

/-- `A137200(n+1)-Δ[A008619(n)]` -/
def P12016332490455879816.Spec : Prop :=
  ∀ n, P12016332490455879816.a n = A212584 n

end A212584

/-! ## A212584.P3622219964869272913

`A137200(n+1)-char[A005408(n)]`
-/

namespace A212584.P3622219964869272913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137200 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A212584.P3622219964869272913

namespace A212584

/-- `A137200(n+1)-char[A005408(n)]` -/
def P3622219964869272913.Spec : Prop :=
  ∀ n, P3622219964869272913.a n = A212584 n

end A212584

/-!
# A212585: Walks of length n on the x-axis using steps {1,-1} and visiting no point more than twice.

The programs for A212585, there is no canonical definition to state claims against.
-/

/-! ## A212585.P7611313744130739830

`∑[A085914(record[A163281(n+1)])]`
-/

namespace A212585.P7611313744130739830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163281 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085914 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212585.P7611313744130739830

/-! ## A212585.P874890343518612711

`A096491(A370304(n))`
-/

namespace A212585.P874890343518612711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A370304 n).toNat

end

end A212585.P874890343518612711

/-! ## A212585.P4765740636496208

`A231236(A098151(n)+1)`
-/

namespace A212585.P4765740636496208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231236 (A098151 n + 1).toNat

end

end A212585.P4765740636496208

/-! ## A212585.P783349587058222451

`A231236(A137414(n)+1)`
-/

namespace A212585.P783349587058222451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231236 (A137414 n + 1).toNat

end

end A212585.P783349587058222451

/-! ## A212585.P13368484909381040547

`A338117(2^n)+A265063(n)-A001221(A283592(2*n))`
-/

namespace A212585.P13368484909381040547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 ^ n) + (A265063 n - A001221 (A283592 (2 * n)).toNat)

end

end A212585.P13368484909381040547

/-!
# A212586: Nonnegative walks of length n on the x-axis starting at the origin using steps {1,0,-1} and visiting no point more than twice.

The programs for A212586, there is no canonical definition to state claims against.
-/

/-! ## A212586.P8118073662583723814

`A289764(n)+A139353(A078591(n))`
-/

namespace A212586.P8118073662583723814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289764 n + A139353 (A078591 n).toNat

end

end A212586.P8118073662583723814

/-! ## A212586.P12351365023867277914

`A374744(A026643(n))+A114279(n)`
-/

namespace A212586.P12351365023867277914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374744 (A026643 n).toNat + A114279 n

end

end A212586.P12351365023867277914

/-! ## A212586.P18230058051829396456

`A000006(or(A001891(n), A052965(n)))`
-/

namespace A212586.P18230058051829396456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (Int.lor (A001891 n) (A052965 n)).toNat

end

end A212586.P18230058051829396456

/-! ## A212586.P7919817382144969372

`floor(A083300(n)/A004396(A102898(n)))`
-/

namespace A212586.P7919817382144969372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083300 n : ℚ) / (A004396 (A102898 n).toNat : ℚ)⌋

end

end A212586.P7919817382144969372

/-!
# A212587: Walks of length n on the x-axis using steps {1,0,-1} and visiting no point more than twice.

The programs for A212587, there is no canonical definition to state claims against.
-/

/-! ## A212587.P251220429623652333

`A292383(A000142(n))+A028346(n)`
-/

namespace A212587.P251220429623652333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A000142 n).toNat + A028346 n

end

end A212587.P251220429623652333

/-! ## A212587.P7801269509246611789

`A014419(A026778(n))`
-/

namespace A212587.P7801269509246611789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A026778 n).toNat

end

end A212587.P7801269509246611789

/-!
# A212589: Walks with n steps on the x-axis using steps {1,0,-1} and visiting no point more than twice.

The programs for A212589, there is no canonical definition to state claims against.
-/

/-! ## A212589.P7090740426893338772

`∑[A002024(A321380(∑[n+3]-3))]`
-/

namespace A212589.P7090740426893338772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A321380 (∑ j ∈ Finset.range (n + 1), f2 j - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212589.P7090740426893338772

/-! ## A212589.P18228617841015726507

`A296241(A222147(n+1))`
-/

namespace A212589.P18228617841015726507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296241 (A222147 (n + 1)).toNat

end

end A212589.P18228617841015726507

/-! ## A212589.P11248399434982881907

`A353528(A118352(n))+A131253(n)`
-/

namespace A212589.P11248399434982881907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353528 (A118352 n).toNat + A131253 n

end

end A212589.P11248399434982881907

/-!
# A212591: a(n) is the smallest value of k for which A020986(k) = n.

The programs for A212591, the canonical program `A212591.P6513515405958816910` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212591 has offset 1).

The definition of A212591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212591.P6513515405958816910

`floor((A000695(n+1)+A000695(n))/4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212591

/-- `floor((A000695(n+1)+A000695(n))/4)` -/
def P6513515405958816910.Spec : Prop :=
  ∀ n, P6513515405958816910.a n = A212591 (n + 1)

theorem P6513515405958816910.correct : P6513515405958816910.Spec := by
  intro n
  simp only [A212591, Nat.add_sub_cancel]

end A212591

/-! ## A212591.P1025193053935528199

`A000217(n)-(A213673(n+1)+A213673(n))`
-/

namespace A212591.P1025193053935528199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A213673 (n + 1) + A213673 n)

end

end A212591.P1025193053935528199

namespace A212591

/-- `A000217(n)-(A213673(n+1)+A213673(n))` -/
def P1025193053935528199.Spec : Prop :=
  ∀ n, P1025193053935528199.a n = A212591 (n + 1)

end A212591

/-! ## A212591.P1356856917589004337

`A000695(A004526(n+1))+A000695(A004526(n))`
-/

namespace A212591.P1356856917589004337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A004526 (n + 1)).toNat + A000695 (A004526 n).toNat

end

end A212591.P1356856917589004337

namespace A212591

/-- `A000695(A004526(n+1))+A000695(A004526(n))` -/
def P1356856917589004337.Spec : Prop :=
  ∀ n, P1356856917589004337.a n = A212591 (n + 1)

end A212591

/-! ## A212591.P7273456933738694225

`A003714(A062877(n+1)-1)`
-/

namespace A212591.P7273456933738694225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A062877 (n + 1) - 1).toNat

end

end A212591.P7273456933738694225

namespace A212591

/-- `A003714(A062877(n+1)-1)` -/
def P7273456933738694225.Spec : Prop :=
  ∀ n, P7273456933738694225.a n = A212591 (n + 1)

end A212591

/-! ## A212591.P7166968451830428825

`A003714(A036796(n+1)-2)`
-/

namespace A212591.P7166968451830428825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A036796 (n + 1) - 2).toNat

end

end A212591.P7166968451830428825

namespace A212591

/-- `A003714(A036796(n+1)-2)` -/
def P7166968451830428825.Spec : Prop :=
  ∀ n, P7166968451830428825.a n = A212591 (n + 1)

end A212591

/-! ## A212591.P10292390728103200849

`A105425(A178482(n+1)-1)/2`
-/

namespace A212591.P10292390728103200849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105425 (A178482 (n + 1) - 1).toNat : ℚ) / 2

end

end A212591.P10292390728103200849

namespace A212591

/-- `A105425(A178482(n+1)-1)/2` -/
def P10292390728103200849.Spec : Prop :=
  ∀ n, P10292390728103200849.a n = (A212591 (n + 1) : ℚ)

end A212591

/-! ## A212591.P13460803584535450040

`A003714(A054204(n+1)-1)/2`
-/

namespace A212591.P13460803584535450040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003714 (A054204 (n + 1) - 1).toNat : ℚ) / 2

end

end A212591.P13460803584535450040

namespace A212591

/-- `A003714(A054204(n+1)-1)/2` -/
def P13460803584535450040.Spec : Prop :=
  ∀ n, P13460803584535450040.a n = (A212591 (n + 1) : ℚ)

end A212591

/-! ## A212591.P11893182550514472432

`∑[A006369(A001971(and(n+1, -n)))]`
-/

namespace A212591.P11893182550514472432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A001971 (Int.land (n + 1 : ℤ) (-(n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212591.P11893182550514472432

namespace A212591

/-- `∑[A006369(A001971(and(n+1, -n)))]` -/
def P11893182550514472432.Spec : Prop :=
  ∀ n, P11893182550514472432.a n = A212591 (n + 1)

end A212591

/-! ## A212591.P3769701251289152121

`lt[A292373(n), A003958(A292371(n)+1)%2]`
-/

namespace A212591.P3769701251289152121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003958 (A292371 n + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A212591.P3769701251289152121

namespace A212591

/-- `lt[A292373(n), A003958(A292371(n)+1)%2]` -/
def P3769701251289152121.Spec : Prop :=
  ∀ n, (P3769701251289152121.a n : ℤ) = A212591 (n + 1)

end A212591

/-! ## A212591.P6578300063336327502

`A093573(∑[n]+1)`
-/

namespace A212591.P6578300063336327502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093573 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212591.P6578300063336327502

namespace A212591

/-- `A093573(∑[n]+1)` -/
def P6578300063336327502.Spec : Prop :=
  ∀ n, P6578300063336327502.a n = A212591 (n + 1)

end A212591

/-! ## A212591.P10881524636272976890

`A374356(A270804(n))`
-/

namespace A212591.P10881524636272976890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374356 (A270804 n).toNat

end

end A212591.P10881524636272976890

namespace A212591

/-- `A374356(A270804(n))` -/
def P10881524636272976890.Spec : Prop :=
  ∀ n, P10881524636272976890.a n = A212591 (n + 1)

end A212591

/-! ## A212591.P8274386653698928484

`A184617(eq[A059906(2*n)², A059906(2*n)])`
-/

namespace A212591.P8274386653698928484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A212591.P8274386653698928484

namespace A212591

/-- `A184617(eq[A059906(2*n)², A059906(2*n)])` -/
def P8274386653698928484.Spec : Prop :=
  ∀ n, P8274386653698928484.a n = A212591 (n + 1)

end A212591

/-!
# A212595: Let f(n) = 2n-7. Difference between f(n) and the nearest prime < f(n).

The programs for A212595, the canonical program `A212595.P16881548213722038787` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212595 has offset 10).

The definition of A212595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212595.P8839073196709218685

`A049716(n+6)`
-/

namespace A212595.P8839073196709218685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 6)

end

end A212595.P8839073196709218685

namespace A212595

/-- `A049716(n+6)` -/
def P8839073196709218685.Spec : Prop :=
  ∀ n, P8839073196709218685.a n = A212595 (n + 10)

end A212595

/-! ## A212595.P8703613322463729215

`A238737(n+5)+1`
-/

namespace A212595.P8703613322463729215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (n + 5) + 1

end

end A212595.P8703613322463729215

namespace A212595

/-- `A238737(n+5)+1` -/
def P8703613322463729215.Spec : Prop :=
  ∀ n, P8703613322463729215.a n = A212595 (n + 10)

theorem P8703613322463729215.correct : P8703613322463729215.Spec := by
  intro n
  simp only [A212595, Nat.add_sub_cancel, A212595.P8703613322463729215.a, A212595.P16881548213722038787.a, A175851, A175851.P13592010490707745070.a, A238737, A238737.P4243855582569951164.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212595

/-! ## A212595.P8365841794532769439

`A049653(n+6)+1`
-/

namespace A212595.P8365841794532769439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 6) + 1

end

end A212595.P8365841794532769439

namespace A212595

/-- `A049653(n+6)+1` -/
def P8365841794532769439.Spec : Prop :=
  ∀ n, P8365841794532769439.a n = A212595 (n + 10)

end A212595

/-! ## A212595.P12483043067299478378

`2*A049847(n+6)`
-/

namespace A212595.P12483043067299478378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049847 (n + 6)

end

end A212595.P12483043067299478378

namespace A212595

/-- `2*A049847(n+6)` -/
def P12483043067299478378.Spec : Prop :=
  ∀ n, P12483043067299478378.a n = A212595 (n + 10)

end A212595

/-! ## A212595.P16881548213722038787

`A175851(2*(n+6))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A212595

/-- `A175851(2*(n+6))` -/
def P16881548213722038787.Spec : Prop :=
  ∀ n, P16881548213722038787.a n = A212595 (n + 10)

theorem P16881548213722038787.correct : P16881548213722038787.Spec := by
  intro n
  simp only [A212595, Nat.add_sub_cancel]

end A212595

/-! ## A212595.P16196830005783855972

`A049711(A020739(n+3))+1`
-/

namespace A212595.P16196830005783855972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A020739 (n + 3)).toNat + 1

end

end A212595.P16196830005783855972

namespace A212595

/-- `A049711(A020739(n+3))+1` -/
def P16196830005783855972.Spec : Prop :=
  ∀ n, P16196830005783855972.a n = A212595 (n + 10)

end A212595

/-! ## A212595.P10081630303877370564

`A049711(Δ[(n+6)²])`
-/

namespace A212595.P10081630303877370564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 6) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A212595.P10081630303877370564

namespace A212595

/-- `A049711(Δ[(n+6)²])` -/
def P10081630303877370564.Spec : Prop :=
  ∀ n, P10081630303877370564.a n = A212595 (n + 10)

end A212595

/-! ## A212595.P41010543571640305

`A064722(2*(n+6))+1`
-/

namespace A212595.P41010543571640305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (2 * (n + 6)) + 1

end

end A212595.P41010543571640305

namespace A212595

/-- `A064722(2*(n+6))+1` -/
def P41010543571640305.Spec : Prop :=
  ∀ n, P41010543571640305.a n = A212595 (n + 10)

theorem P41010543571640305.correct : P41010543571640305.Spec := by
  intro n
  simp only [A212595, Nat.add_sub_cancel, A212595.P41010543571640305.a, A212595.P16881548213722038787.a, A064722, A064722.P17255395012520951887.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A212595

/-!
# A212596: Number of cards required to build a Menger sponge of level n in origami.

The programs for A212596, the canonical program `A212596.P8113814533784482940` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212596 has offset 0).

The definition of A212596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212596.P8113814533784482940

`4*(8^n+2*20^n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A212596

/-- `4*(8^n+2*20^n)` -/
def P8113814533784482940.Spec : Prop :=
  ∀ n, (P8113814533784482940.a n : ℤ) = A212596 n

theorem P8113814533784482940.correct : P8113814533784482940.Spec := by
  intro n
  simp only [A212596]

end A212596

/-! ## A212596.P6180414255840574187

`28*a(n-1)-160*a(n-2)` with `a(0)=12, a(1)=192`
-/

namespace A212596.P6180414255840574187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 192] fun n a =>
  28 * a (n - 1) - 160 * a (n - 2)

end

end A212596.P6180414255840574187

namespace A212596

/-- `28*a(n-1)-160*a(n-2)` -/
def P6180414255840574187.Spec : Prop :=
  ∀ n, P6180414255840574187.a n = A212596 n

theorem P6180414255840574187.correct : P6180414255840574187.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A212596, Nat.add_sub_cancel, A212596.P6180414255840574187.a, A212596.P8113814533784482940.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A212596, Nat.add_sub_cancel, A212596.P6180414255840574187.a, A212596.P8113814533784482940.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212596

/-! ## A212596.P14605197249132828922

`20*a(n-1)-6*8^n` with `a(0)=12`
-/

namespace A212596.P14605197249132828922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  20 * a (n - 1) - (6 * 8 ^ n : ℤ)

end

end A212596.P14605197249132828922

namespace A212596

/-- `20*a(n-1)-6*8^n` -/
def P14605197249132828922.Spec : Prop :=
  ∀ n, P14605197249132828922.a n = A212596 n

theorem P14605197249132828922.correct : P14605197249132828922.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A212596, Nat.add_sub_cancel, A212596.P14605197249132828922.a, A212596.P8113814533784482940.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A212596, Nat.add_sub_cancel, A212596.P14605197249132828922.a, A212596.P8113814533784482940.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A212596

/-!
# A212597: Number of ways of writing n in the form i*j+k*m with 0

The programs for A212597, there is no canonical definition to state claims against.
-/

/-! ## A212597.P2787065961196925846

`A330572(n)-A338671(n+1)`
-/

namespace A212597.P2787065961196925846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330572 n - A338671 (n + 1)

end

end A212597.P2787065961196925846

/-! ## A212597.P18041299744400494198

`A338671(n+1)-A110654(A183063(n+1))`
-/

namespace A212597.P18041299744400494198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338671 (n + 1) - A110654 (A183063 (n + 1)).toNat

end

end A212597.P18041299744400494198

/-! ## A212597.P12966297450319229347

`A338671(n+1)-A034178(2*(n+1))`
-/

namespace A212597.P12966297450319229347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338671 (n + 1) - A034178 (2 * (n + 1))

end

end A212597.P12966297450319229347

/-! ## A212597.P13912129426296036456

`A110654(A330572(n)-A034178(2*(n+1)))`
-/

namespace A212597.P13912129426296036456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A330572 n - A034178 (2 * (n + 1))).toNat

end

end A212597.P13912129426296036456

/-!
# A212598: a(n) = n - m!, where m is the largest number such that m! <= n.

The programs for A212598, the canonical program `A212598.P13917646882631558070` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212598 has offset 1).

The definition of A212598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212598.P15106078665682599164

`1-∑[char[n!-1]]!+n`
-/

namespace A212598.P15106078665682599164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (n : ℤ)

end

end A212598.P15106078665682599164

namespace A212598

/-- `1-∑[char[n!-1]]!+n` -/
def P15106078665682599164.Spec : Prop :=
  ∀ n, P15106078665682599164.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P1941287498580482015

`1-(∑[char[n!-1]]!-n)`
-/

namespace A212598.P1941287498580482015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ))

end

end A212598.P1941287498580482015

namespace A212598

/-- `1-(∑[char[n!-1]]!-n)` -/
def P1941287498580482015.Spec : Prop :=
  ∀ n, P1941287498580482015.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P13917646882631558070

`1-A048764(n+1)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A212598

/-- `1-A048764(n+1)+n` -/
def P13917646882631558070.Spec : Prop :=
  ∀ n, P13917646882631558070.a n = A212598 (n + 1)

theorem P13917646882631558070.correct : P13917646882631558070.Spec := by
  intro n
  simp only [A212598, Nat.add_sub_cancel]

end A212598

/-! ## A212598.P8097687505241904259

`1-A084558(n+1)!+n`
-/

namespace A212598.P8097687505241904259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.factorial (A084558 (n + 1)).toNat : ℤ) + (n : ℤ)

end

end A212598.P8097687505241904259

namespace A212598

/-- `1-A084558(n+1)!+n` -/
def P8097687505241904259.Spec : Prop :=
  ∀ n, P8097687505241904259.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P8973771216932868680

`n-A033312(∑[char[A033312(n)]])`
-/

namespace A212598.P8973771216932868680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212598.P8973771216932868680

namespace A212598

/-- `n-A033312(∑[char[A033312(n)]])` -/
def P8973771216932868680.Spec : Prop :=
  ∀ n, P8973771216932868680.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P9993374975778198108

`n-A033312(∑[A316341(n+1)])`
-/

namespace A212598.P9993374975778198108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033312 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212598.P9993374975778198108

namespace A212598

/-- `n-A033312(∑[A316341(n+1)])` -/
def P9993374975778198108.Spec : Prop :=
  ∀ n, P9993374975778198108.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P6541956371180597463

`A276009(n+1)+A276008(A257687(n+1))`
-/

namespace A212598.P6541956371180597463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 (n + 1) + A276008 (A257687 (n + 1)).toNat

end

end A212598.P6541956371180597463

namespace A212598

/-- `A276009(n+1)+A276008(A257687(n+1))` -/
def P6541956371180597463.Spec : Prop :=
  ∀ n, P6541956371180597463.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P10470297137956566390

`n+1-A257686(A059590(A275727(n+1)))`
-/

namespace A212598.P10470297137956566390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A257686 (A059590 (A275727 (n + 1)).toNat).toNat

end

end A212598.P10470297137956566390

namespace A212598

/-- `n+1-A257686(A059590(A275727(n+1)))` -/
def P10470297137956566390.Spec : Prop :=
  ∀ n, P10470297137956566390.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P1754332142916127198

`n+1-A276008(A257686(n+1))`
-/

namespace A212598.P1754332142916127198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A276008 (A257686 (n + 1)).toNat

end

end A212598.P1754332142916127198

namespace A212598

/-- `n+1-A276008(A257686(n+1))` -/
def P1754332142916127198.Spec : Prop :=
  ∀ n, P1754332142916127198.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P8277766390304673009

`A276009(A257686(n+1))+A257687(n+1)`
-/

namespace A212598.P8277766390304673009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 (A257686 (n + 1)).toNat + A257687 (n + 1)

end

end A212598.P8277766390304673009

namespace A212598

/-- `A276009(A257686(n+1))+A257687(n+1)` -/
def P8277766390304673009.Spec : Prop :=
  ∀ n, P8277766390304673009.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P5846195261815191573

`A257687(A225901(A048764(n+1))+n+1)`
-/

namespace A212598.P5846195261815191573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (A225901 (A048764 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A212598.P5846195261815191573

namespace A212598

/-- `A257687(A225901(A048764(n+1))+n+1)` -/
def P5846195261815191573.Spec : Prop :=
  ∀ n, P5846195261815191573.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P16482770463044644887

`A257687(A276149(A048764(n+1))+n+1)`
-/

namespace A212598.P16482770463044644887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (A276149 (A048764 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A212598.P16482770463044644887

namespace A212598

/-- `A257687(A276149(A048764(n+1))+n+1)` -/
def P16482770463044644887.Spec : Prop :=
  ∀ n, P16482770463044644887.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P7409615194296455202

`n+1-A130493(A034968(A343041(n+1)))`
-/

namespace A212598.P7409615194296455202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A130493 (A034968 (A343041 (n + 1)).toNat).toNat

end

end A212598.P7409615194296455202

namespace A212598

/-- `n+1-A130493(A034968(A343041(n+1)))` -/
def P7409615194296455202.Spec : Prop :=
  ∀ n, P7409615194296455202.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P16159229878542303422

`1-A138902(A145475(n+1))+n`
-/

namespace A212598.P16159229878542303422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138902 (A145475 (n + 1)).toNat + (n : ℤ)

end

end A212598.P16159229878542303422

namespace A212598

/-- `1-A138902(A145475(n+1))+n` -/
def P16159229878542303422.Spec : Prop :=
  ∀ n, P16159229878542303422.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P13813389946616734367

`1-A138902(A156124(n+1))+n`
-/

namespace A212598.P13813389946616734367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138902 (A156124 (n + 1)).toNat + (n : ℤ)

end

end A212598.P13813389946616734367

namespace A212598

/-- `1-A138902(A156124(n+1))+n` -/
def P13813389946616734367.Spec : Prop :=
  ∀ n, P13813389946616734367.a n = A212598 (n + 1)

end A212598

/-! ## A212598.P10247942945369726455

`1-A138902(A092595(n+1))+n`
-/

namespace A212598.P10247942945369726455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138902 (A092595 (n + 1)).toNat + (n : ℤ)

end

end A212598.P10247942945369726455

namespace A212598

/-- `1-A138902(A092595(n+1))+n` -/
def P10247942945369726455.Spec : Prop :=
  ∀ n, P10247942945369726455.a n = A212598 (n + 1)

end A212598

/-!
# A212599: Number of functions on n labeled points to themselves (endofunctions) such that the number of cycles of f that have each even size is even.

The programs for A212599, there is no canonical definition to state claims against.
-/

/-! ## A212599.P7419934715515160045

`A065033((n+1)*n^abs(1-n))`
-/

namespace A212599.P7419934715515160045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat

end

end A212599.P7419934715515160045

/-! ## A212599.P16413448124727812740

`A123108(lcm(n+1, n^abs(1-n)))`
-/

namespace A212599.P16413448124727812740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| : ℤ))))

end

end A212599.P16413448124727812740

