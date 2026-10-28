import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A272100: Integers n that are the sum of three nonzero squares while n*(n+1) is not.

The programs for A272100, the canonical program `A272100.P17972857460773925838` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272100 has offset 1).

The definition of A272100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272100.P5883478160270739057

`ogf((12+7x+13x^2)/(1-x-x^2+x^3))`
-/

namespace A272100.P5883478160270739057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 7, 13] [1, -1, -1, 1] n

end

end A272100.P5883478160270739057

namespace A272100

/-- `ogf((12+7x+13x^2)/(1-x-x^2+x^3))` -/
def P5883478160270739057.Spec : Prop :=
  ∀ n, P5883478160270739057.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P17972857460773925838

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=12, a(1)=19, a(2)=44`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272100

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P17972857460773925838.Spec : Prop :=
  ∀ n, P17972857460773925838.a n = A272100 (n + 1)

theorem P17972857460773925838.correct : P17972857460773925838.Spec := by
  intro n
  simp only [A272100, Nat.add_sub_cancel]

end A272100

/-! ## A272100.P14001129652806754076

`(32*(n+1)-17-9*(-1)^(n+1))/2`
-/

namespace A272100.P14001129652806754076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((32 * (n + 1) : ℤ) - 17 - 9 * (-1) ^ (n + 1) : ℚ) / 2

end

end A272100.P14001129652806754076

namespace A272100

/-- `(32*(n+1)-17-9*(-1)^(n+1))/2` -/
def P14001129652806754076.Spec : Prop :=
  ∀ n, P14001129652806754076.a n = (A272100 (n + 1) : ℚ)

theorem P14001129652806754076.correct : P14001129652806754076.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A272100, Nat.add_sub_cancel, A272100.P14001129652806754076.a, A272100.P17972857460773925838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A272100, Nat.add_sub_cancel, A272100.P14001129652806754076.a, A272100.P17972857460773925838.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A272100

/-! ## A272100.P11543307688827199458

`a(n-2)+32` with `a(0)=12, a(1)=19`
-/

namespace A272100.P11543307688827199458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 19] fun n a =>
  a (n - 2) + 32

end

end A272100.P11543307688827199458

namespace A272100

/-- `a(n-2)+32` -/
def P11543307688827199458.Spec : Prop :=
  ∀ n, (P11543307688827199458.a n : ℤ) = A272100 (n + 1)

end A272100

/-! ## A272100.P15969278570861865538

`∑[32-a(n-1)]` with `a(0)=12, a(1)=7`
-/

namespace A272100.P15969278570861865538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, 7] fun n f1 =>
  32 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272100.P15969278570861865538

namespace A272100

/-- `∑[32-a(n-1)]` -/
def P15969278570861865538.Spec : Prop :=
  ∀ n, P15969278570861865538.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P5400215033774744482

`∑[A040135(n)]+n`
-/

namespace A272100.P5400215033774744482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A272100.P5400215033774744482

namespace A272100

/-- `∑[A040135(n)]+n` -/
def P5400215033774744482.Spec : Prop :=
  ∀ n, P5400215033774744482.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P6146348065531694847

`2*A212161(n)-n`
-/

namespace A272100.P6146348065531694847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212161 n - (n : ℤ)

end

end A272100.P6146348065531694847

namespace A272100

/-- `2*A212161(n)-n` -/
def P6146348065531694847.Spec : Prop :=
  ∀ n, P6146348065531694847.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P17891100229328001801

`∑[2*A040033(n)]+n`
-/

namespace A272100.P17891100229328001801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A272100.P17891100229328001801

namespace A272100

/-- `∑[2*A040033(n)]+n` -/
def P17891100229328001801.Spec : Prop :=
  ∀ n, P17891100229328001801.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P17734693353657160920

`∑[3*A040015(n)]+n`
-/

namespace A272100.P17734693353657160920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A272100.P17734693353657160920

namespace A272100

/-- `∑[3*A040015(n)]+n` -/
def P17734693353657160920.Spec : Prop :=
  ∀ n, P17734693353657160920.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P10137989317105093071

`∑[A040555(n)/2]+n`
-/

namespace A272100.P10137989317105093071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040555 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A272100.P10137989317105093071

namespace A272100

/-- `∑[A040555(n)/2]+n` -/
def P10137989317105093071.Spec : Prop :=
  ∀ n, P10137989317105093071.a n = (A272100 (n + 1) : ℚ)

end A272100

/-! ## A272100.P261817468077887234

`xor(5, A317332(2*n+1))`
-/

namespace A272100.P261817468077887234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A317332 (2 * n + 1))

end

end A272100.P261817468077887234

namespace A272100

/-- `xor(5, A317332(2*n+1))` -/
def P261817468077887234.Spec : Prop :=
  ∀ n, P261817468077887234.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P9526002946999769421

`3*A090773(n+1)+n`
-/

namespace A272100.P9526002946999769421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090773 (n + 1) + (n : ℤ)

end

end A272100.P9526002946999769421

namespace A272100

/-- `3*A090773(n+1)+n` -/
def P9526002946999769421.Spec : Prop :=
  ∀ n, P9526002946999769421.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P11485803995181484269

`A267985(n+1)+5+n`
-/

namespace A272100.P11485803995181484269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1) + 5 + (n : ℤ)

end

end A272100.P11485803995181484269

namespace A272100

/-- `A267985(n+1)+5+n` -/
def P11485803995181484269.Spec : Prop :=
  ∀ n, P11485803995181484269.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P13794947421862585757

`A267984(n+1)-5+n`
-/

namespace A272100.P13794947421862585757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) - 5 + (n : ℤ)

end

end A272100.P13794947421862585757

namespace A272100

/-- `A267984(n+1)-5+n` -/
def P13794947421862585757.Spec : Prop :=
  ∀ n, P13794947421862585757.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P4981575505763894089

`6*A047221(n+1)+n`
-/

namespace A272100.P4981575505763894089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A047221 (n + 1) + (n : ℤ)

end

end A272100.P4981575505763894089

namespace A272100

/-- `6*A047221(n+1)+n` -/
def P4981575505763894089.Spec : Prop :=
  ∀ n, P4981575505763894089.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P5758592930434650026

`3*(A228137(n+1)+4)-3-2*n`
-/

namespace A272100.P5758592930434650026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A228137 (n + 1) + 4) - 3 - (2 * n : ℤ)

end

end A272100.P5758592930434650026

namespace A272100

/-- `3*(A228137(n+1)+4)-3-2*n` -/
def P5758592930434650026.Spec : Prop :=
  ∀ n, P5758592930434650026.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P10905086584184983710

`3*(A168329(n+1)+2*n+1)+n`
-/

namespace A272100.P10905086584184983710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A168329 (n + 1) + (2 * n : ℤ) + 1) + (n : ℤ)

end

end A272100.P10905086584184983710

namespace A272100

/-- `3*(A168329(n+1)+2*n+1)+n` -/
def P10905086584184983710.Spec : Prop :=
  ∀ n, P10905086584184983710.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P12538058941834891794

`A082285(n)-A010691(n)`
-/

namespace A272100.P12538058941834891794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n - A010691 n

end

end A272100.P12538058941834891794

namespace A272100

/-- `A082285(n)-A010691(n)` -/
def P12538058941834891794.Spec : Prop :=
  ∀ n, P12538058941834891794.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P17686111830642938015

`xor(A010728(n), A106839(n))`
-/

namespace A272100.P17686111830642938015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010728 n) (A106839 n)

end

end A272100.P17686111830642938015

namespace A272100

/-- `xor(A010728(n), A106839(n))` -/
def P17686111830642938015.Spec : Prop :=
  ∀ n, P17686111830642938015.a n = A272100 (n + 1)

end A272100

/-! ## A272100.P9591815124016079938

`A155096(n+1)+A007494(n)`
-/

namespace A272100.P9591815124016079938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (n + 1) + A007494 n

end

end A272100.P9591815124016079938

namespace A272100

/-- `A155096(n+1)+A007494(n)` -/
def P9591815124016079938.Spec : Prop :=
  ∀ n, P9591815124016079938.a n = A272100 (n + 1)

end A272100

/-!
# A272101: Square root of largest square dividing A069482(n).

The programs for A272101, the canonical program `A272101.P1459219865942789853` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272101 has offset 1).

The definition of A272101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272101.P1459219865942789853

`A000188(A069482(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A272101

/-- `A000188(A069482(n+1))` -/
def P1459219865942789853.Spec : Prop :=
  ∀ n, P1459219865942789853.a n = A272101 (n + 1)

theorem P1459219865942789853.correct : P1459219865942789853.Spec := by
  intro n
  simp only [A272101, Nat.add_sub_cancel]

end A272101

/-! ## A272101.P9697657893632000942

`A000188(Δ[A001248(n+1)])`
-/

namespace A272101.P9697657893632000942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (n + 1) - f1 n).toNat

end

end A272101.P9697657893632000942

namespace A272101

/-- `A000188(Δ[A001248(n+1)])` -/
def P9697657893632000942.Spec : Prop :=
  ∀ n, P9697657893632000942.a n = A272101 (n + 1)

theorem P9697657893632000942.correct : P9697657893632000942.Spec := by
  intro n
  simp only [A272101, Nat.add_sub_cancel, A272101.P9697657893632000942.f1, A272101.P9697657893632000942.a, A272101.P1459219865942789853.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A001248, A001248.P16278241061688229202.a, A069482, A069482.P16588716990720648360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272101

/-! ## A272101.P11310019428759607856

`A000188(Δ[A049001(n+1)])`
-/

namespace A272101.P11310019428759607856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (n + 1) - f1 n).toNat

end

end A272101.P11310019428759607856

namespace A272101

/-- `A000188(Δ[A049001(n+1)])` -/
def P11310019428759607856.Spec : Prop :=
  ∀ n, P11310019428759607856.a n = A272101 (n + 1)

theorem P11310019428759607856.correct : P11310019428759607856.Spec := by
  intro n
  simp only [A272101, Nat.add_sub_cancel, A272101.P11310019428759607856.f1, A272101.P11310019428759607856.a, A272101.P1459219865942789853.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A049001, A049001.P8777299766092042792.a, A069482, A069482.P16588716990720648360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272101

/-! ## A272101.P18006829253750900238

`A000188(Δ[A066872(n+1)])`
-/

namespace A272101.P18006829253750900238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (n + 1) - f1 n).toNat

end

end A272101.P18006829253750900238

namespace A272101

/-- `A000188(Δ[A066872(n+1)])` -/
def P18006829253750900238.Spec : Prop :=
  ∀ n, P18006829253750900238.a n = A272101 (n + 1)

theorem P18006829253750900238.correct : P18006829253750900238.Spec := by
  intro n
  simp only [A272101, Nat.add_sub_cancel, A272101.P18006829253750900238.f1, A272101.P18006829253750900238.a, A272101.P1459219865942789853.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A066872, A066872.P16166098773502812344.a, A069482, A069482.P16588716990720648360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272101

/-! ## A272101.P7917388320738282246

`A000188(Δ[A084920(n+1)])`
-/

namespace A272101.P7917388320738282246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (n + 1) - f1 n).toNat

end

end A272101.P7917388320738282246

namespace A272101

/-- `A000188(Δ[A084920(n+1)])` -/
def P7917388320738282246.Spec : Prop :=
  ∀ n, P7917388320738282246.a n = A272101 (n + 1)

theorem P7917388320738282246.correct : P7917388320738282246.Spec := by
  intro n
  simp only [A272101, Nat.add_sub_cancel, A272101.P7917388320738282246.f1, A272101.P7917388320738282246.a, A272101.P1459219865942789853.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A069482, A069482.P16588716990720648360.a, A084920, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272101

/-! ## A272101.P4710665291877898642

`A000188(Δ[A166010(n+1)])`
-/

namespace A272101.P4710665291877898642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (n + 1) - f1 n).toNat

end

end A272101.P4710665291877898642

namespace A272101

/-- `A000188(Δ[A166010(n+1)])` -/
def P4710665291877898642.Spec : Prop :=
  ∀ n, P4710665291877898642.a n = A272101 (n + 1)

theorem P4710665291877898642.correct : P4710665291877898642.Spec := by
  intro n
  simp only [A272101, Nat.add_sub_cancel, A272101.P4710665291877898642.f1, A272101.P4710665291877898642.a, A272101.P1459219865942789853.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A069482, A069482.P16588716990720648360.a, A166010, A166010.P2375559703123786713.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272101

/-! ## A272101.P5352041449387861345

`A000188(2*A124434(n+1))`
-/

namespace A272101.P5352041449387861345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A124434 (n + 1)).toNat

end

end A272101.P5352041449387861345

namespace A272101

/-- `A000188(2*A124434(n+1))` -/
def P5352041449387861345.Spec : Prop :=
  ∀ n, P5352041449387861345.a n = A272101 (n + 1)

end A272101

/-! ## A272101.P3385842892894663348

`A000188(Δ[A000040(n+1)²])`
-/

namespace A272101.P3385842892894663348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (n + 1) - f1 n).toNat

end

end A272101.P3385842892894663348

namespace A272101

/-- `A000188(Δ[A000040(n+1)²])` -/
def P3385842892894663348.Spec : Prop :=
  ∀ n, P3385842892894663348.a n = A272101 (n + 1)

theorem P3385842892894663348.correct : P3385842892894663348.Spec := by
  intro n
  simp only [A272101, Nat.add_sub_cancel, A272101.P3385842892894663348.f1, A272101.P3385842892894663348.a, A272101.P1459219865942789853.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A069482, A069482.P16588716990720648360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272101

/-! ## A272101.P7104648132309769406

`A000188(Δ[A008578(n+2)²])`
-/

namespace A272101.P7104648132309769406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (n + 1) - f1 n).toNat

end

end A272101.P7104648132309769406

namespace A272101

/-- `A000188(Δ[A008578(n+2)²])` -/
def P7104648132309769406.Spec : Prop :=
  ∀ n, P7104648132309769406.a n = A272101 (n + 1)

end A272101

/-! ## A272101.P1378589390612119839

`A000188(Δ[sqrt(A030514(n+1))])`
-/

namespace A272101.P1378589390612119839
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A272101.P1378589390612119839

namespace A272101

/-- `A000188(Δ[sqrt(A030514(n+1))])` -/
def P1378589390612119839.Spec : Prop :=
  ∀ n, P1378589390612119839.a n = A272101 (n + 1)

end A272101

/-!
# A272102: Numerators of bivariate Taylor expansion of the incomplete elliptic integral of the first kind.

The programs for A272102, there is no canonical definition to state claims against.
-/

/-! ## A272102.P17425770105596051954

`A120362(n+1)*A165747(A002262(n))`
-/

namespace A272102.P17425770105596051954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120362 (n + 1) * A165747 (A002262 n).toNat

end

end A272102.P17425770105596051954

/-!
# A272103: Convolution of nonzero heptagonal numbers (A000566) with themselves.

The programs for A272103, the canonical program `A272103.P7405999579433352238` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272103 has offset 0).

The definition of A272103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272103.P11554909201968640414

`ogf((1+8x+16x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A272103.P11554909201968640414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 16] [1, -6, 15, -20, 15, -6, 1] n

end

end A272103.P11554909201968640414

namespace A272103

/-- `ogf((1+8x+16x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P11554909201968640414.Spec : Prop :=
  ∀ n, P11554909201968640414.a n = A272103 n

end A272103

/-! ## A272103.P7405999579433352238

`(n+1)*(n+2)*(n+3)*(5*n²+5*n+4)/24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272103

/-- `(n+1)*(n+2)*(n+3)*(5*n²+5*n+4)/24` -/
def P7405999579433352238.Spec : Prop :=
  ∀ n, P7405999579433352238.a n = (A272103 n : ℚ)

end A272103

/-! ## A272103.P3679152360310211445

`∑[∑[∑[C(5*n, 2)+1]]]`
-/

namespace A272103.P3679152360310211445
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272103.P3679152360310211445

namespace A272103

/-- `∑[∑[∑[C(5*n, 2)+1]]]` -/
def P3679152360310211445.Spec : Prop :=
  ∀ n, (P3679152360310211445.a n : ℤ) = A272103 n

end A272103

/-! ## A272103.P8759838003080817159

`∑[∑[∑[A081587(n)]]]`
-/

namespace A272103.P8759838003080817159
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272103.P8759838003080817159

namespace A272103

/-- `∑[∑[∑[A081587(n)]]]` -/
def P8759838003080817159.Spec : Prop :=
  ∀ n, P8759838003080817159.a n = A272103 n

end A272103

/-! ## A272103.P6030984817757773964

`A356251(n)+A244882(n)`
-/

namespace A272103.P6030984817757773964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356251 n + A244882 n

end

end A272103.P6030984817757773964

namespace A272103

/-- `A356251(n)+A244882(n)` -/
def P6030984817757773964.Spec : Prop :=
  ∀ n, P6030984817757773964.a n = A272103 n

end A272103

/-! ## A272103.P11079209914563123833

`A027800(n)+n*A033488(n)`
-/

namespace A272103.P11079209914563123833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + (n : ℤ) * A033488 n

end

end A272103.P11079209914563123833

namespace A272103

/-- `A027800(n)+n*A033488(n)` -/
def P11079209914563123833.Spec : Prop :=
  ∀ n, P11079209914563123833.a n = A272103 n

end A272103

/-! ## A272103.P1054849457298298337

`∑[A264850(n)+A213549(n+1)]`
-/

namespace A272103.P1054849457298298337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264850 n + A213549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272103.P1054849457298298337

namespace A272103

/-- `∑[A264850(n)+A213549(n+1)]` -/
def P1054849457298298337.Spec : Prop :=
  ∀ n, P1054849457298298337.a n = A272103 n

end A272103

/-! ## A272103.P16226497992506655689

`A256859(n+1)+n*A002417(n+1)`
-/

namespace A272103.P16226497992506655689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256859 (n + 1) + (n : ℤ) * A002417 (n + 1)

end

end A272103.P16226497992506655689

namespace A272103

/-- `A256859(n+1)+n*A002417(n+1)` -/
def P16226497992506655689.Spec : Prop :=
  ∀ n, P16226497992506655689.a n = A272103 n

end A272103

/-!
# A272104: Sum of the even numbers among the larger parts of the partitions of n into two parts.

The programs for A272104, the canonical program `A272104.P17528214037903722073` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272104 has offset 0).

The definition of A272104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272104.P17528214037903722073

`ogf((2x^3+2x^5+2x^7)/(1-x-2x^4+2x^5+x^8-x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272104

/-- `ogf((2x^3+2x^5+2x^7)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P17528214037903722073.Spec : Prop :=
  ∀ n, P17528214037903722073.a n = A272104 n

theorem P17528214037903722073.correct : P17528214037903722073.Spec := by
  intro n
  simp only [A272104]

end A272104

/-! ## A272104.P6028318724449029873

`∑[lcm(n-1, 4*and(1, n))/2]`
-/

namespace A272104.P6028318724449029873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (4 * Nat.land 1 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P6028318724449029873

namespace A272104

/-- `∑[lcm(n-1, 4*and(1, n))/2]` -/
def P6028318724449029873.Spec : Prop :=
  ∀ n, P6028318724449029873.a n = (A272104 n : ℚ)

end A272104

/-! ## A272104.P11121053507008908824

`A152749(∑[char[2*n+3]])`
-/

namespace A272104.P11121053507008908824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272104.P11121053507008908824

namespace A272104

/-- `A152749(∑[char[2*n+3]])` -/
def P11121053507008908824.Spec : Prop :=
  ∀ n, P11121053507008908824.a n = A272104 n

end A272104

/-! ## A272104.P17692918465873460344

`∑[lcm(2, n%2*A004526(n))]`
-/

namespace A272104.P17692918465873460344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n % 2 : ℕ) : ℤ) * A004526 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P17692918465873460344

namespace A272104

/-- `∑[lcm(2, n%2*A004526(n))]` -/
def P17692918465873460344.Spec : Prop :=
  ∀ n, (P17692918465873460344.a n : ℤ) = A272104 n

end A272104

/-! ## A272104.P1686366252928283731

`∑[(n-1)/2*A001222(gcd(n+1, n-3))]`
-/

namespace A272104.P1686366252928283731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (A001222 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P1686366252928283731

namespace A272104

/-- `∑[(n-1)/2*A001222(gcd(n+1, n-3))]` -/
def P1686366252928283731.Spec : Prop :=
  ∀ n, P1686366252928283731.a n = (A272104 n : ℚ)

end A272104

/-! ## A272104.P2232946694243817926

`A128422(A265428(n))`
-/

namespace A272104.P2232946694243817926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (A265428 n).toNat

end

end A272104.P2232946694243817926

namespace A272104

/-- `A128422(A265428(n))` -/
def P2232946694243817926.Spec : Prop :=
  ∀ n, P2232946694243817926.a n = A272104 n

end A272104

/-! ## A272104.P17252929701368685787

`A296160(A131055(n+1))`
-/

namespace A272104.P17252929701368685787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296160 (A131055 (n + 1)).toNat

end

end A272104.P17252929701368685787

namespace A272104

/-- `A296160(A131055(n+1))` -/
def P17252929701368685787.Spec : Prop :=
  ∀ n, P17252929701368685787.a n = A272104 n

end A272104

/-! ## A272104.P16306779962947157636

`A387541(n)-A038714(n)`
-/

namespace A272104.P16306779962947157636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387541 n - A038714 n

end

end A272104.P16306779962947157636

namespace A272104

/-- `A387541(n)-A038714(n)` -/
def P16306779962947157636.Spec : Prop :=
  ∀ n, P16306779962947157636.a n = A272104 n

end A272104

/-! ## A272104.P10765602291057665125

`2*A001318(A140106(n+1))`
-/

namespace A272104.P10765602291057665125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001318 (A140106 (n + 1)).toNat

end

end A272104.P10765602291057665125

namespace A272104

/-- `2*A001318(A140106(n+1))` -/
def P10765602291057665125.Spec : Prop :=
  ∀ n, P10765602291057665125.a n = A272104 n

end A272104

/-! ## A272104.P7737984031737412703

`∑[lcm(1-A004442(n)+n, A004526(n))]`
-/

namespace A272104.P7737984031737412703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A004442 n + (n : ℤ)) (A004526 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P7737984031737412703

namespace A272104

/-- `∑[lcm(1-A004442(n)+n, A004526(n))]` -/
def P7737984031737412703.Spec : Prop :=
  ∀ n, (P7737984031737412703.a n : ℤ) = A272104 n

end A272104

/-! ## A272104.P7256149572195576586

`∑[gcd(n+1, A011863(n+1))-A177704(n)]`
-/

namespace A272104.P7256149572195576586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A011863 (n + 1)) : ℤ) - A177704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P7256149572195576586

namespace A272104

/-- `∑[gcd(n+1, A011863(n+1))-A177704(n)]` -/
def P7256149572195576586.Spec : Prop :=
  ∀ n, P7256149572195576586.a n = A272104 n

end A272104

/-! ## A272104.P3454426091077845880

`∑[A093178(n)-A093178(A140472(n))]`
-/

namespace A272104.P3454426091077845880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A093178 (A140472 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P3454426091077845880

namespace A272104

/-- `∑[A093178(n)-A093178(A140472(n))]` -/
def P3454426091077845880.Spec : Prop :=
  ∀ n, P3454426091077845880.a n = A272104 n

end A272104

/-! ## A272104.P8446338009188049790

`A001318(n)-(A272212(n)+A026741(n))`
-/

namespace A272104.P8446338009188049790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - (A272212 n + A026741 n)

end

end A272104.P8446338009188049790

namespace A272104

/-- `A001318(n)-(A272212(n)+A026741(n))` -/
def P8446338009188049790.Spec : Prop :=
  ∀ n, P8446338009188049790.a n = A272104 n

end A272104

/-! ## A272104.P3767419079368150801

`(n-A008624(n))*A004526(A110654(n))`
-/

namespace A272104.P3767419079368150801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008624 n) * A004526 (A110654 n).toNat

end

end A272104.P3767419079368150801

namespace A272104

/-- `(n-A008624(n))*A004526(A110654(n))` -/
def P3767419079368150801.Spec : Prop :=
  ∀ n, P3767419079368150801.a n = A272104 n

end A272104

/-! ## A272104.P14208995230516976329

`∑[A093178(n)-A093178(A060681(n+1))]`
-/

namespace A272104.P14208995230516976329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A093178 (A060681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P14208995230516976329

namespace A272104

/-- `∑[A093178(n)-A093178(A060681(n+1))]` -/
def P14208995230516976329.Spec : Prop :=
  ∀ n, P14208995230516976329.a n = A272104 n

end A272104

/-! ## A272104.P11327051294010097833

`A296161(A267458(n+1))`
-/

namespace A272104.P11327051294010097833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296161 (A267458 (n + 1)).toNat

end

end A272104.P11327051294010097833

namespace A272104

/-- `A296161(A267458(n+1))` -/
def P11327051294010097833.Spec : Prop :=
  ∀ n, P11327051294010097833.a n = A272104 n

end A272104

/-! ## A272104.P9774400914319197685

`filter[A005044(n+1), A089806(#)]`
-/

namespace A272104.P9774400914319197685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089806 (f1 j).toNat = 1) n)

end

end A272104.P9774400914319197685

namespace A272104

/-- `filter[A005044(n+1), A089806(#)]` -/
def P9774400914319197685.Spec : Prop :=
  ∀ n, P9774400914319197685.a n = A272104 n

end A272104

/-! ## A272104.P1055616864179953133

`filter[A308066(2*(n+1)), A089806(#)]`
-/

namespace A272104.P1055616864179953133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089806 (f1 j).toNat = 1) n)

end

end A272104.P1055616864179953133

namespace A272104

/-- `filter[A308066(2*(n+1)), A089806(#)]` -/
def P1055616864179953133.Spec : Prop :=
  ∀ n, P1055616864179953133.a n = A272104 n

end A272104

/-! ## A272104.P6342150338352595831

`A005843(A001318(A003056(A004526(A002620(n)))))`
-/

namespace A272104.P6342150338352595831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001318 (A003056 (A004526 (A002620 n).toNat).toNat).toNat).toNat

end

end A272104.P6342150338352595831

namespace A272104

/-- `A005843(A001318(A003056(A004526(A002620(n)))))` -/
def P6342150338352595831.Spec : Prop :=
  ∀ n, P6342150338352595831.a n = A272104 n

end A272104

/-! ## A272104.P9950542936838986051

`filter[A227542(n), A089806(#)]`
-/

namespace A272104.P9950542936838986051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089806 (f1 j).toNat = 1) n)

end

end A272104.P9950542936838986051

namespace A272104

/-- `filter[A227542(n), A089806(#)]` -/
def P9950542936838986051.Spec : Prop :=
  ∀ n, P9950542936838986051.a n = A272104 n

end A272104

/-!
# A272105: Number of set partitions of [n] such that for each pair of blocks (b,c) with b<c at least one pair of consecutive numbers (i,i+1) exists with i member of b and i+1 member of c.

The programs for A272105, there is no canonical definition to state claims against.
-/

/-! ## A272105.P9967374572446319763

`A065033(A094388(n))-A047790(n)`
-/

namespace A272105.P9967374572446319763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A094388 n).toNat - A047790 n

end

end A272105.P9967374572446319763

/-! ## A272105.P961839926694199679

`A065033(A133494(n))-A047790(n)`
-/

namespace A272105.P961839926694199679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A133494 n).toNat - A047790 n

end

end A272105.P961839926694199679

/-! ## A272105.P17310672408441587248

`A097992(A000244(n))-A047790(n)`
-/

namespace A272105.P17310672408441587248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A000244 n).toNat - A047790 n

end

end A272105.P17310672408441587248

/-! ## A272105.P14959764660814034052

`A088177(A387511(n))`
-/

namespace A272105.P14959764660814034052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (A387511 n).toNat

end

end A272105.P14959764660814034052

/-!
# A272106: Absolute primes in base 3: every permutation of digits in base 3 is a prime (only the smallest representatives of the permutation classes are shown).

The programs for A272106, there is no canonical definition to state claims against.
-/

/-! ## A272106.P14340128303775975798

`p?[char[n²]+∑[3^n]]`
-/

namespace A272106.P14340128303775975798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A272106.P14340128303775975798

/-!
# A272107: Absolute primes in base 8: every permutation of digits in base 8 is a prime (only the smallest representatives of the permutation classes are shown).

The programs for A272107, there is no canonical definition to state claims against.
-/

/-! ## A272107.P5244102663137950189

`p?[∑[A000120(floor((3/2)^n))]]`
-/

namespace A272107.P5244102663137950189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊((3 : ℚ) / 2) ^ n⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272107.P5244102663137950189

/-! ## A272107.P426623162967206076

`record[A020639(A135088(n+1)+7)]`
-/

namespace A272107.P426623162967206076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135088 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272107.P426623162967206076

/-! ## A272107.P3406890914400699235

`A000040(lt[A133276(n+1), n+2])`
-/

namespace A272107.P3406890914400699235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272107.P3406890914400699235

/-! ## A272107.P5088182897328697642

`A000040(lt[A133277(n+1), n+2])`
-/

namespace A272107.P5088182897328697642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133277 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272107.P5088182897328697642

/-! ## A272107.P7504302055138801669

`A154363(A008578(n+1)-floor(11*n/30))`
-/

namespace A272107.P7504302055138801669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (A008578 (n + 1) - ⌊11 * ((n : ℚ) / 30)⌋).toNat

end

end A272107.P7504302055138801669

/-!
# A272108: Numerators of coefficients of the series of sqrt(-log(1-q)/q).

The programs for A272108, there is no canonical definition to state claims against.
-/

/-! ## A272108.P14824483237038503141

`A000265(A328874(n)+A005077(n+1))`
-/

namespace A272108.P14824483237038503141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A328874 n + A005077 (n + 1)).toNat

end

end A272108.P14824483237038503141

/-!
# A272109: Denominators of coefficients of the series of sqrt(-log(1-q)/q).

The programs for A272109, there is no canonical definition to state claims against.
-/

/-! ## A272109.P7224291357247883854

`A000027(2^n*A249277(n))`
-/

namespace A272109.P7224291357247883854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 ^ n : ℤ) * A249277 n).toNat

end

end A272109.P7224291357247883854

/-!
# A272110: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A272110, the canonical program `A272110.P4149011324347961812` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272110 has offset 0).

The definition of A272110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272110.P4149011324347961812

`Δ[A271902(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A272110

/-- `Δ[A271902(n)]` -/
def P4149011324347961812.Spec : Prop :=
  ∀ n, P4149011324347961812.a n = A272110 n

theorem P4149011324347961812.correct : P4149011324347961812.Spec := by
  intro n
  simp only [A272110]

end A272110

/-! ## A272110.P7052628949206247635

`A271902(n+1)-A271902(n)`
-/

namespace A272110.P7052628949206247635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 (n + 1) - A271902 n

end

end A272110.P7052628949206247635

namespace A272110

/-- `A271902(n+1)-A271902(n)` -/
def P7052628949206247635.Spec : Prop :=
  ∀ n, P7052628949206247635.a n = A272110 n

theorem P7052628949206247635.correct : P7052628949206247635.Spec := by
  intro n
  simp only [A272110, Nat.add_sub_cancel, A272110.P7052628949206247635.a, A272110.P4149011324347961812.f1, A272110.P4149011324347961812.a, SequenceMachineLib.memo_apply]

end A272110

/-! ## A272110.P388928161664241219

`A271902(n+1)+A001478(A271902(n)+1)+1`
-/

namespace A272110.P388928161664241219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 (n + 1) + (A001478 (A271902 n + 1).toNat + 1)

end

end A272110.P388928161664241219

namespace A272110

/-- `A271902(n+1)+A001478(A271902(n)+1)+1` -/
def P388928161664241219.Spec : Prop :=
  ∀ n, P388928161664241219.a n = A272110 n

end A272110

/-! ## A272110.P2274224142369118888

`A271902(A023443(n+2))+A001478(A271902(n))`
-/

namespace A272110.P2274224142369118888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 (A023443 (n + 2)).toNat + A001478 (A271902 n).toNat

end

end A272110.P2274224142369118888

namespace A272110

/-- `A271902(A023443(n+2))+A001478(A271902(n))` -/
def P2274224142369118888.Spec : Prop :=
  ∀ n, P2274224142369118888.a n = A272110 n

end A272110

/-!
# A272111: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A272111, there is no canonical definition to state claims against.
-/

/-! ## A272111.P17236179308629349823

`A272114(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272111.P17236179308629349823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272114 (n - 1) + a (n - 1)

end

end A272111.P17236179308629349823

/-! ## A272111.P10728157722770572171

`∑[A272114(n)]+1-A272114(n)`
-/

namespace A272111.P10728157722770572171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272114 n)

end

end A272111.P10728157722770572171

/-! ## A272111.P17616037275932258586

`A272114(n-1)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A272111.P17616037275932258586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272114 (n - 1) - (A000038 n - a (n - 1))

end

end A272111.P17616037275932258586

/-! ## A272111.P10326869930155949390

`Δ[A272113(n)]-A272114(n)`
-/

namespace A272111.P10326869930155949390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272114 n

end

end A272111.P10326869930155949390

/-! ## A272111.P3048799148863705146

`A272113(n+1)-(A272114(n)+A272113(n))`
-/

namespace A272111.P3048799148863705146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272113 (n + 1) - (A272114 n + A272113 n)

end

end A272111.P3048799148863705146

/-!
# A272112: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A272112, there is no canonical definition to state claims against.
-/

/-! ## A272112.P8714059191174707348

`A272111(2^n-1)`
-/

namespace A272112.P8714059191174707348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272111 (2 ^ n - 1)

end

end A272112.P8714059191174707348

/-! ## A272112.P5314856127430838224

`record[A272111(A304083(n))]`
-/

namespace A272112.P5314856127430838224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272111 (A304083 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272112.P5314856127430838224

/-! ## A272112.P9778306470843907357

`record[A272111(A023758(n+1))]`
-/

namespace A272112.P9778306470843907357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272111 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272112.P9778306470843907357

/-! ## A272112.P11760289737127865843

`record[A272111(A181062(n+1))]`
-/

namespace A272112.P11760289737127865843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272111 (A181062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272112.P11760289737127865843

/-! ## A272112.P10982166028902266412

`record[A272111(A243071(n+1))]`
-/

namespace A272112.P10982166028902266412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272111 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272112.P10982166028902266412

/-!
# A272113: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A272113, there is no canonical definition to state claims against.
-/

/-! ## A272113.P6610113278174342333

`∑[A272111(n)]`
-/

namespace A272113.P6610113278174342333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272113.P6610113278174342333

/-! ## A272113.P14113715327685520027

`∑[∑[A272114(n)]+1-A272114(n)]`
-/

namespace A272113.P14113715327685520027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272114 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272114 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272113.P14113715327685520027

/-! ## A272113.P14108789210398384355

`A272111(n%A088580(n))+a(n-1)` with `a(0)=1`
-/

namespace A272113.P14108789210398384355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272111 (Int.tmod (n : ℤ) (A088580 n)).toNat + a (n - 1)

end

end A272113.P14108789210398384355

/-! ## A272113.P15443741093032615984

`a(n-1)+dr(A017211(n))*A272111(n)` with `a(0)=1`
-/

namespace A272113.P15443741093032615984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (SequenceMachineLib.digitalRoot (A017211 n) : ℤ) * A272111 n

end

end A272113.P15443741093032615984

/-! ## A272113.P15119001490587892447

`A272111(n)+a(n-1)%A098931(n+1)` with `a(0)=1`
-/

namespace A272113.P15119001490587892447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272111 n + Int.tmod (a (n - 1)) (A098931 (n + 1))

end

end A272113.P15119001490587892447

/-! ## A272113.P18310464675431193257

`A272111(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A272113.P18310464675431193257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272111 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A272113.P18310464675431193257

/-!
# A272114: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 429", based on the 5-celled von Neumann neighborhood.

The programs for A272114, there is no canonical definition to state claims against.
-/

/-! ## A272114.P11183254223939461735

`Δ[A272111(n)]`
-/

namespace A272114.P11183254223939461735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272114.P11183254223939461735

/-! ## A272114.P6423100620345344294

`A272111(n+1)-A272111(n)`
-/

namespace A272114.P6423100620345344294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272111 (n + 1) - A272111 n

end

end A272114.P6423100620345344294

/-! ## A272114.P7296104228054664781

`or(A001222(A223897(n)), A271692(n))`
-/

namespace A272114.P7296104228054664781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A223897 n).toNat) (A271692 n)

end

end A272114.P7296104228054664781

/-!
# A272115: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A272115, there is no canonical definition to state claims against.
-/

/-! ## A272115.P14774387194253191430

`A272117(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272115.P14774387194253191430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272117 (n - 1) + a (n - 1)

end

end A272115.P14774387194253191430

/-! ## A272115.P3573977674339492833

`Δ[A272116(n)]-A272117(n)`
-/

namespace A272115.P3573977674339492833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272117 n

end

end A272115.P3573977674339492833

/-! ## A272115.P17973196703534806810

`A272116(n+1)-(A272117(n)+A272116(n))`
-/

namespace A272115.P17973196703534806810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272116 (n + 1) - (A272117 n + A272116 n)

end

end A272115.P17973196703534806810

/-! ## A272115.P12080274108956424023

`(2*n+1)²-A272846(n)%A016754(n)`
-/

namespace A272115.P12080274108956424023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272846 n) (A016754 n)

end

end A272115.P12080274108956424023

/-! ## A272115.P3798113164909402523

`A181385(A016825(n))-A272846(n)`
-/

namespace A272115.P3798113164909402523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272846 n

end

end A272115.P3798113164909402523

/-! ## A272115.P16612708119902873309

`A008740(A008458(n))-A272846(n)`
-/

namespace A272115.P16612708119902873309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272846 n

end

end A272115.P16612708119902873309

/-!
# A272116: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A272116, there is no canonical definition to state claims against.
-/

/-! ## A272116.P5390506000443187297

`∑[A272115(n)]`
-/

namespace A272116.P5390506000443187297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272116.P5390506000443187297

/-! ## A272116.P7028542917986397151

`A272115(n%A072154(n))+a(n-1)` with `a(0)=1`
-/

namespace A272116.P7028542917986397151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272115 (Int.tmod (n : ℤ) (A072154 n)).toNat + a (n - 1)

end

end A272116.P7028542917986397151

/-! ## A272116.P10631334815563461984

`∑[A272117(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272116.P10631334815563461984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272117 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272116.P10631334815563461984

/-! ## A272116.P34231748937680364

`∑[∑[A272117(n)]+1-A272117(n)]`
-/

namespace A272116.P34231748937680364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272117 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272116.P34231748937680364

/-! ## A272116.P866438887766482559

`∑[A016754(n)-A272846(n)]+1`
-/

namespace A272116.P866438887766482559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A272846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272116.P866438887766482559

/-! ## A272116.P7083067359896180979

`A000447(n+1)+1-∑[A272846(n)]`
-/

namespace A272116.P7083067359896180979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272116.P7083067359896180979

/-! ## A272116.P11353894953381037610

`∑[A181385(A016825(n))-A272846(n)]`
-/

namespace A272116.P11353894953381037610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272116.P11353894953381037610

/-! ## A272116.P1360680744283108874

`∑[A181385(A016825(n))]-A272848(n)`
-/

namespace A272116.P1360680744283108874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272848 n

end

end A272116.P1360680744283108874

/-! ## A272116.P526525319939257577

`∑[A008740(A008458(n))-A272846(n)]`
-/

namespace A272116.P526525319939257577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272116.P526525319939257577

/-! ## A272116.P1584588463361480302

`∑[A008740(A008458(n))]-A272848(n)`
-/

namespace A272116.P1584588463361480302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272848 n

end

end A272116.P1584588463361480302

/-!
# A272117: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

The programs for A272117, there is no canonical definition to state claims against.
-/

/-! ## A272117.P14212276118059998656

`Δ[A272115(n)]`
-/

namespace A272117.P14212276118059998656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272117.P14212276118059998656

/-! ## A272117.P16122285579279690549

`A272115(n+1)-A272115(n)`
-/

namespace A272117.P16122285579279690549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272115 (n + 1) - A272115 n

end

end A272117.P16122285579279690549

/-! ## A272117.P9940467337428059362

`Δ[(2*n+1)²-A272846(n)%A016754(n)]`
-/

namespace A272117.P9940467337428059362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272846 n) (A016754 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272117.P9940467337428059362

/-! ## A272117.P14511714750834812476

`Δ[A181385(A016825(n))-A272846(n)]`
-/

namespace A272117.P14511714750834812476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272117.P14511714750834812476

/-! ## A272117.P3758653548175829029

`Δ[A181385(A016825(n))]-A272849(n)`
-/

namespace A272117.P3758653548175829029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272849 n

end

end A272117.P3758653548175829029

/-! ## A272117.P15949661314081852504

`Δ[A008740(A008458(n))-A272846(n)]`
-/

namespace A272117.P15949661314081852504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272117.P15949661314081852504

/-! ## A272117.P4349902751757252440

`Δ[A008740(A008458(n))]-A272849(n)`
-/

namespace A272117.P4349902751757252440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272849 n

end

end A272117.P4349902751757252440

/-!
# A272118: Numbers k such that abs(6*k^2 - 342*k + 4903) is prime.

The programs for A272118, there is no canonical definition to state claims against.
-/

/-! ## A272118.P7246164103191222089

`A376555(A185246(n+2))+n-1`
-/

namespace A272118.P7246164103191222089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376555 (A185246 (n + 2)).toNat + ((n : ℤ) - 1)

end

end A272118.P7246164103191222089

/-! ## A272118.P8503055462356904875

`A002266(A186729(n))+n`
-/

namespace A272118.P8503055462356904875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A186729 n).toNat + (n : ℤ)

end

end A272118.P8503055462356904875

/-! ## A272118.P5792419731955167407

`A018843(A103379(n+1))+n`
-/

namespace A272118.P5792419731955167407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A103379 (n + 1)).toNat + (n : ℤ)

end

end A272118.P5792419731955167407

/-! ## A272118.P14591485525968921418

`A025864(A186729(n)+1)+n`
-/

namespace A272118.P14591485525968921418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 (A186729 n + 1).toNat + (n : ℤ)

end

end A272118.P14591485525968921418

/-! ## A272118.P14552411827252678263

`A025884(A186729(n)+1)+n`
-/

namespace A272118.P14552411827252678263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025884 (A186729 n + 1).toNat + (n : ℤ)

end

end A272118.P14552411827252678263

/-! ## A272118.P12811686923093190778

`A036860(A186729(n)+1)+n`
-/

namespace A272118.P12811686923093190778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036860 (A186729 n + 1).toNat + (n : ℤ)

end

end A272118.P12811686923093190778

/-! ## A272118.P15538515361060107936

`A143539(A186729(n)+1)+n`
-/

namespace A272118.P15538515361060107936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (A186729 n + 1).toNat + (n : ℤ)

end

end A272118.P15538515361060107936

/-! ## A272118.P12052014881160321503

`A308841(A186729(n)+1)%4+n`
-/

namespace A272118.P12052014881160321503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308841 (A186729 n + 1).toNat) 4 + (n : ℤ)

end

end A272118.P12052014881160321503

/-! ## A272118.P11360275793994590938

`A284562(A001263(n+1))²-1+n`
-/

namespace A272118.P11360275793994590938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 (A001263 (n + 1)).toNat ^ 2 - 1 + (n : ℤ)

end

end A272118.P11360275793994590938

/-!
# A272119: Values of a^2 + b^2 such that the equation (a^2 + b^2)^2 = x^2 + y^2 + z^2 is soluble where a, b, x, y, z are nonzero integers.

The programs for A272119, there is no canonical definition to state claims against.
-/

/-! ## A272119.P2840678485271869696

`lt[0, A063725(n)*A181786(n)]`
-/

namespace A272119.P2840678485271869696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n * A181786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272119.P2840678485271869696

/-! ## A272119.P16846775775633372241

`lt[1, A084888(n)*A181786(n)]`
-/

namespace A272119.P16846775775633372241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 n * A181786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272119.P16846775775633372241

/-! ## A272119.P1907236139657626323

`∩[A000404(n+1), A005767(n+1)]`
-/

namespace A272119.P1907236139657626323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272119.P1907236139657626323

/-! ## A272119.P18133400670585418311

`∩[A000404(n+1), A161992(n+1)]`
-/

namespace A272119.P18133400670585418311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272119.P18133400670585418311

/-! ## A272119.P17031539189893508656

`lt[A000007(A181786(n)), A025426(n)]`
-/

namespace A272119.P17031539189893508656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A181786 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272119.P17031539189893508656

/-! ## A272119.P10813047310056910647

`lt[A000038(A181786(n)), A063725(n)]`
-/

namespace A272119.P10813047310056910647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A181786 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272119.P10813047310056910647

/-! ## A272119.P1983365191059896841

`lt[A000038(A181786(n)), A084888(n)]`
-/

namespace A272119.P1983365191059896841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A181786 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272119.P1983365191059896841

/-! ## A272119.P15103971901616422158

`lt[A209229(A106621(n)), A025426(n)]`
-/

namespace A272119.P15103971901616422158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A106621 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272119.P15103971901616422158

/-! ## A272119.P4065462850813260392

`lt[A049084(A337376(n)), A084888(n)]`
-/

namespace A272119.P4065462850813260392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A337376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272119.P4065462850813260392

/-!
# A272120: Square array T(n,k), n>=1, k>=1, read by antidiagonals downwards in which column k lists the alternating row sums of the first k columns of the triangle A196020.

The programs for A272120, there is no canonical definition to state claims against.
-/

/-! ## A272120.P16129299065488124187

`A158405(n+1)-A178602(A143632(n))`
-/

namespace A272120.P16129299065488124187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) - A178602 (A143632 n).toNat

end

end A272120.P16129299065488124187

/-! ## A272120.P11446731707851804775

`A170966(A276890(n))+2*A002262(n)`
-/

namespace A272120.P11446731707851804775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170966 (A276890 n).toNat + 2 * A002262 n

end

end A272120.P11446731707851804775

/-! ## A272120.P4093641571763454232

`A170966(A276890(n))+A005843(A002262(n))`
-/

namespace A272120.P4093641571763454232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170966 (A276890 n).toNat + A005843 (A002262 n).toNat

end

end A272120.P4093641571763454232

/-! ## A272120.P17839543920955994187

`A274472(A217954(n+1))+A000038(A031884(n+1))`
-/

namespace A272120.P17839543920955994187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274472 (A217954 (n + 1)).toNat + A000038 (A031884 (n + 1)).toNat

end

end A272120.P17839543920955994187

/-! ## A272120.P5522836163340231557

`A158405(n+1)-A010051(A034299(n))`
-/

namespace A272120.P5522836163340231557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) - A010051 (A034299 n).toNat

end

end A272120.P5522836163340231557

/-!
# A272121: Absolute difference table of the divisors of the positive integers (with every table read by antidiagonals downwards).

The programs for A272121, there is no canonical definition to state claims against.
-/

/-! ## A272121.P6946011315740064569

`abs(A273135(n+1))`
-/

namespace A272121.P6946011315740064569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273135 (n + 1)|

end

end A272121.P6946011315740064569

/-! ## A272121.P9750717107243203618

`A000194(A273135(n+1)²)`
-/

namespace A272121.P9750717107243203618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A273135 (n + 1) ^ 2).toNat

end

end A272121.P9750717107243203618

/-! ## A272121.P17315968674269910880

`A000196(A273135(n+1)²)`
-/

namespace A272121.P17315968674269910880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A273135 (n + 1) ^ 2).toNat

end

end A272121.P17315968674269910880

/-! ## A272121.P8938841868862983864

`A037213(A273135(n+1)²)`
-/

namespace A272121.P8938841868862983864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A273135 (n + 1) ^ 2).toNat

end

end A272121.P8938841868862983864

/-! ## A272121.P17398692457508544036

`gcd(A000038(n), A273135(n+1))`
-/

namespace A272121.P17398692457508544036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273135 (n + 1))

end

end A272121.P17398692457508544036

/-! ## A272121.P9265566213926522982

`∑{d}[A273135(n+1), A000010(#)]`
-/

namespace A272121.P9265566213926522982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A272121.P9265566213926522982

/-! ## A272121.P15304681634837673469

`lcm(A007318(C(3, n)), A273135(n+1))`
-/

namespace A272121.P15304681634837673469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (Nat.choose 3 n)) (A273135 (n + 1))

end

end A272121.P15304681634837673469

/-! ## A272121.P8240739794803676686

`A273135(n-char[A121590(n+2)+1]+1)`
-/

namespace A272121.P8240739794803676686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121590 (n + 2) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273135 ((n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A272121.P8240739794803676686

/-! ## A272121.P10235983049701596334

`A273135(floor(A273135(n+1)/(n+1)+n+1))`
-/

namespace A272121.P10235983049701596334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273135 ⌊(A273135 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌋.toNat

end

end A272121.P10235983049701596334

/-!
# A272122: a(n) is the number of positive divisors of A003266(n).

The programs for A272122, there is no canonical definition to state claims against.
-/

/-! ## A272122.P15869924871333443508

`A000005(A003266(n+1))`
-/

namespace A272122.P15869924871333443508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003266 (n + 1)).toNat

end

end A272122.P15869924871333443508

/-! ## A272122.P11424294607069365039

`A000005(∏[ceil(sqrt(exp(n-1)))])`
-/

namespace A272122.P11424294607069365039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.exp ((n : ℤ) - 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272122.P11424294607069365039

/-! ## A272122.P553139716330217029

`∏{e}[∏[A000045(n+1)], #+1]`
-/

namespace A272122.P553139716330217029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A272122.P553139716330217029

/-! ## A272122.P9844447530369748480

`∏{e}[∏[A243063(n+1)], #+1]`
-/

namespace A272122.P9844447530369748480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243063 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A272122.P9844447530369748480

/-!
# A272123: a(n) = Fibonacci(3n) - Fibonacci(2n).

The programs for A272123, the canonical program `A272123.P16059340373194470751` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272123 has offset 0).

The definition of A272123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(3*n)-A000045(2*n)` (program `A272123.P16059340373194470751`, by `A272123.P16059340373194470751.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272123.P17412163189143161004

`ogf((x-2x^2+3x^3)/(1-7x+12x^2-x^3-x^4))`
-/

namespace A272123.P17412163189143161004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 3] [1, -7, 12, -1, -1] n

end

end A272123.P17412163189143161004

namespace A272123

/-- `ogf((x-2x^2+3x^3)/(1-7x+12x^2-x^3-x^4))` -/
def P17412163189143161004.Spec : Prop :=
  ∀ n, P17412163189143161004.a n = A272123 n

end A272123

/-! ## A272123.P3384884903232359567

`A014445(n)-A001906(n)`
-/

namespace A272123.P3384884903232359567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A001906 n

end

end A272123.P3384884903232359567

namespace A272123

/-- `A014445(n)-A001906(n)` -/
def P3384884903232359567.Spec : Prop :=
  ∀ n, P3384884903232359567.a n = A272123 n

end A272123

/-! ## A272123.P16059340373194470751

`A000045(3*n)-A000045(2*n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A272123

/-- `A000045(3*n)-A000045(2*n)` -/
def P16059340373194470751.Spec : Prop :=
  ∀ n, P16059340373194470751.a n = A272123 n

theorem P16059340373194470751.correct : P16059340373194470751.Spec := by
  intro n
  simp only [A272123]

end A272123

/-! ## A272123.P13858634837667930060

`∑{#}[n-1, A000045(2*n-1+#)]`
-/

namespace A272123.P13858634837667930060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000045 ((2 * n : ℤ) - 1 + (k : ℤ)).toNat

end

end A272123.P13858634837667930060

namespace A272123

/-- `∑{#}[n-1, A000045(2*n-1+#)]` -/
def P13858634837667930060.Spec : Prop :=
  ∀ n, P13858634837667930060.a n = A272123 n

end A272123

/-! ## A272123.P8943827250082113692

`2*A001076(n)-A001906(n)`
-/

namespace A272123.P8943827250082113692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001076 n - A001906 n

end

end A272123.P8943827250082113692

namespace A272123

/-- `2*A001076(n)-A001906(n)` -/
def P8943827250082113692.Spec : Prop :=
  ∀ n, P8943827250082113692.a n = A272123 n

end A272123

/-! ## A272123.P7142531804748141016

`A014445(n)-A000045(2*n)`
-/

namespace A272123.P7142531804748141016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A000045 (2 * n)

end

end A272123.P7142531804748141016

namespace A272123

/-- `A014445(n)-A000045(2*n)` -/
def P7142531804748141016.Spec : Prop :=
  ∀ n, P7142531804748141016.a n = A272123 n

end A272123

/-! ## A272123.P1510718743395599218

`A014445(n)-A005013(2*n)`
-/

namespace A272123.P1510718743395599218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A005013 (2 * n)

end

end A272123.P1510718743395599218

namespace A272123

/-- `A014445(n)-A005013(2*n)` -/
def P1510718743395599218.Spec : Prop :=
  ∀ n, P1510718743395599218.a n = A272123 n

end A272123

/-! ## A272123.P8765660244978864519

`A117647(2*n)-A001906(n)`
-/

namespace A272123.P8765660244978864519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n) - A001906 n

end

end A272123.P8765660244978864519

namespace A272123

/-- `A117647(2*n)-A001906(n)` -/
def P8765660244978864519.Spec : Prop :=
  ∀ n, P8765660244978864519.a n = A272123 n

end A272123

/-! ## A272123.P13783224912015723543

`A000045(3*n)-A001906(n)`
-/

namespace A272123.P13783224912015723543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) - A001906 n

end

end A272123.P13783224912015723543

namespace A272123

/-- `A000045(3*n)-A001906(n)` -/
def P13783224912015723543.Spec : Prop :=
  ∀ n, P13783224912015723543.a n = A272123 n

end A272123

/-! ## A272123.P12037692165500747317

`A000045(3*n)-Δ[A001519(n)]`
-/

namespace A272123.P12037692165500747317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) - (f1 (n + 1) - f1 n)

end

end A272123.P12037692165500747317

namespace A272123

/-- `A000045(3*n)-Δ[A001519(n)]` -/
def P12037692165500747317.Spec : Prop :=
  ∀ n, P12037692165500747317.a n = A272123 n

end A272123

/-! ## A272123.P6722325443613944953

`A212804(3*n+1)-A001906(n)`
-/

namespace A272123.P6722325443613944953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n + 1) - A001906 n

end

end A272123.P6722325443613944953

namespace A272123

/-- `A212804(3*n+1)-A001906(n)` -/
def P6722325443613944953.Spec : Prop :=
  ∀ n, P6722325443613944953.a n = A272123 n

end A272123

/-! ## A272123.P8149310815417691364

`A117647(2*n)-A000045(2*n)`
-/

namespace A272123.P8149310815417691364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n) - A000045 (2 * n)

end

end A272123.P8149310815417691364

namespace A272123

/-- `A117647(2*n)-A000045(2*n)` -/
def P8149310815417691364.Spec : Prop :=
  ∀ n, P8149310815417691364.a n = A272123 n

end A272123

/-! ## A272123.P16506044702507312015

`A001611(3*n)-A001611(2*n)`
-/

namespace A272123.P16506044702507312015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (3 * n) - A001611 (2 * n)

end

end A272123.P16506044702507312015

namespace A272123

/-- `A001611(3*n)-A001611(2*n)` -/
def P16506044702507312015.Spec : Prop :=
  ∀ n, P16506044702507312015.a n = A272123 n

theorem P16506044702507312015.correct : P16506044702507312015.Spec := by
  intro n
  simp only [A272123, Nat.add_sub_cancel, A272123.P16506044702507312015.a, A272123.P16059340373194470751.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272123

/-! ## A272123.P8067985654901877525

`A212804(3*n+1)-Δ[A001519(n)]`
-/

namespace A272123.P8067985654901877525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n + 1) - (f1 (n + 1) - f1 n)

end

end A272123.P8067985654901877525

namespace A272123

/-- `A212804(3*n+1)-Δ[A001519(n)]` -/
def P8067985654901877525.Spec : Prop :=
  ∀ n, P8067985654901877525.a n = A272123 n

end A272123

/-! ## A272123.P15157536590172359113

`A212804(3*n+1)-Δ[A212804(2*n)]`
-/

namespace A272123.P15157536590172359113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n + 1) - (f1 (n + 1) - f1 n)

end

end A272123.P15157536590172359113

namespace A272123

/-- `A212804(3*n+1)-Δ[A212804(2*n)]` -/
def P15157536590172359113.Spec : Prop :=
  ∀ n, P15157536590172359113.a n = A272123 n

end A272123

/-! ## A272123.P9479501297913337066

`A212804(3*n+1)-A212804(2*n+1)`
-/

namespace A272123.P9479501297913337066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n + 1) - A212804 (2 * n + 1)

end

end A272123.P9479501297913337066

namespace A272123

/-- `A212804(3*n+1)-A212804(2*n+1)` -/
def P9479501297913337066.Spec : Prop :=
  ∀ n, P9479501297913337066.a n = A272123 n

end A272123

/-! ## A272123.P99616734125997500

`record[A000045(A071045(n))-A000045(n)]`
-/

namespace A272123.P99616734125997500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A071045 n).toNat - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272123.P99616734125997500

namespace A272123

/-- `record[A000045(A071045(n))-A000045(n)]` -/
def P99616734125997500.Spec : Prop :=
  ∀ n, P99616734125997500.a n = A272123 n

end A272123

/-! ## A272123.P7505720840661960043

`(A047946(n)-A000032(n))*A000045(n)`
-/

namespace A272123.P7505720840661960043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047946 n - A000032 n) * A000045 n

end

end A272123.P7505720840661960043

namespace A272123

/-- `(A047946(n)-A000032(n))*A000045(n)` -/
def P7505720840661960043.Spec : Prop :=
  ∀ n, P7505720840661960043.a n = A272123 n

end A272123

/-! ## A272123.P2215017156731365059

`A001519(n)+A014445(n)-A001519(n+1)`
-/

namespace A272123.P2215017156731365059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + (A014445 n - A001519 (n + 1))

end

end A272123.P2215017156731365059

namespace A272123

/-- `A001519(n)+A014445(n)-A001519(n+1)` -/
def P2215017156731365059.Spec : Prop :=
  ∀ n, P2215017156731365059.a n = A272123 n

end A272123

/-! ## A272123.P1085950458693872141

`A033887(n)-(A015448(n)+A001906(n))`
-/

namespace A272123.P1085950458693872141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n - (A015448 n + A001906 n)

end

end A272123.P1085950458693872141

namespace A272123

/-- `A033887(n)-(A015448(n)+A001906(n))` -/
def P1085950458693872141.Spec : Prop :=
  ∀ n, P1085950458693872141.a n = A272123 n

end A272123

/-!
# A272124: a(n) = 12*n^4 + 16*n^3 + 10*n^2 + 4*n + 1.

The programs for A272124, the canonical program `A272124.P4661279543642890279` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272124 has offset 0).

The definition of A272124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n^4+16*n^3+10*n²+4*n+1` (program `A272124.P4661279543642890279`, by `A272124.P4661279543642890279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272124.P18427246430921685171

`ogf((1+38x+164x^2+82x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A272124.P18427246430921685171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 38, 164, 82, 3] [1, -5, 10, -10, 5, -1] n

end

end A272124.P18427246430921685171

namespace A272124

/-- `ogf((1+38x+164x^2+82x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P18427246430921685171.Spec : Prop :=
  ∀ n, P18427246430921685171.a n = A272124 n

end A272124

/-! ## A272124.P4661279543642890279

`12*n^4+16*n^3+10*n²+4*n+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272124

/-- `12*n^4+16*n^3+10*n²+4*n+1` -/
def P4661279543642890279.Spec : Prop :=
  ∀ n, (P4661279543642890279.a n : ℤ) = A272124 n

theorem P4661279543642890279.correct : P4661279543642890279.Spec := by
  intro n
  simp only [A272124]

end A272124

/-!
# A272125: a(n) = n^3*(2*n^2+1)/3.

The programs for A272125, the canonical program `A272125.P5472917139588958984` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272125 has offset 0).

The definition of A272125 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A272125.anchor (n : ℕ) : (A272125 n : ℚ) = (n ^ 3 * (2 * n ^ 2 + 1) : ℚ) / 3` in `Proof.A272.A272125`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272125.P5472917139588958984

`n^3*(2*n²+1)/3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272125

/-- `n^3*(2*n²+1)/3` -/
def P5472917139588958984.Spec : Prop :=
  ∀ n, P5472917139588958984.a n = (A272125 n : ℚ)

end A272125

/-! ## A272125.P17199139452164866273

`ogf((x+18x^2+42x^3+18x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A272125.P17199139452164866273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 18, 42, 18, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A272125.P17199139452164866273

namespace A272125

/-- `ogf((x+18x^2+42x^3+18x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17199139452164866273.Spec : Prop :=
  ∀ n, P17199139452164866273.a n = A272125 n

end A272125

/-! ## A272125.P15883473241767337454

`Δ[(C(2*n, 3)/4)²]`
-/

namespace A272125.P15883473241767337454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 3 : ℚ) / 4) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272125.P15883473241767337454

namespace A272125

/-- `Δ[(C(2*n, 3)/4)²]` -/
def P15883473241767337454.Spec : Prop :=
  ∀ n, P15883473241767337454.a n = (A272125 n : ℚ)

end A272125

/-! ## A272125.P12493550947221097600

`n*A071270(n)`
-/

namespace A272125.P12493550947221097600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071270 n

end

end A272125.P12493550947221097600

namespace A272125

/-- `n*A071270(n)` -/
def P12493550947221097600.Spec : Prop :=
  ∀ n, P12493550947221097600.a n = A272125 n

end A272125

/-! ## A272125.P5051476669419386611

`n²*A005900(n)`
-/

namespace A272125.P5051476669419386611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A005900 n

end

end A272125.P5051476669419386611

namespace A272125

/-- `n²*A005900(n)` -/
def P5051476669419386611.Spec : Prop :=
  ∀ n, P5051476669419386611.a n = A272125 n

end A272125

/-! ## A272125.P17381753634258526522

`Δ[(n²-A000330(n))²]`
-/

namespace A272125.P17381753634258526522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A000330 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272125.P17381753634258526522

namespace A272125

/-- `Δ[(n²-A000330(n))²]` -/
def P17381753634258526522.Spec : Prop :=
  ∀ n, P17381753634258526522.a n = A272125 n

end A272125

/-! ## A272125.P3468318206681149700

`(A006331(n)-n²)*n²`
-/

namespace A272125.P3468318206681149700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006331 n - (n ^ 2 : ℤ)) * (n ^ 2 : ℤ)

end

end A272125.P3468318206681149700

namespace A272125

/-- `(A006331(n)-n²)*n²` -/
def P3468318206681149700.Spec : Prop :=
  ∀ n, P3468318206681149700.a n = A272125 n

end A272125

/-! ## A272125.P5208782774585965273

`A005900(n)*A253909(n)`
-/

namespace A272125.P5208782774585965273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n * A253909 n

end

end A272125.P5208782774585965273

namespace A272125

/-- `A005900(n)*A253909(n)` -/
def P5208782774585965273.Spec : Prop :=
  ∀ n, P5208782774585965273.a n = A272125 n

end A272125

/-! ## A272125.P17899813836962768177

`lcm(A005900(n), A387655(n))`
-/

namespace A272125.P17899813836962768177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005900 n) (A387655 n)

end

end A272125.P17899813836962768177

namespace A272125

/-- `lcm(A005900(n), A387655(n))` -/
def P17899813836962768177.Spec : Prop :=
  ∀ n, (P17899813836962768177.a n : ℤ) = A272125 n

end A272125

/-! ## A272125.P3723992990369221976

`(A059270(n)-A101986(n))*n²`
-/

namespace A272125.P3723992990369221976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059270 n - A101986 n) * (n ^ 2 : ℤ)

end

end A272125.P3723992990369221976

namespace A272125

/-- `(A059270(n)-A101986(n))*n²` -/
def P3723992990369221976.Spec : Prop :=
  ∀ n, P3723992990369221976.a n = A272125 n

end A272125

/-! ## A272125.P6633613048180219632

`A155977(n)-n²*A006527(n)`
-/

namespace A272125.P6633613048180219632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155977 n - (n ^ 2 : ℤ) * A006527 n

end

end A272125.P6633613048180219632

namespace A272125

/-- `A155977(n)-n²*A006527(n)` -/
def P6633613048180219632.Spec : Prop :=
  ∀ n, P6633613048180219632.a n = A272125 n

end A272125

/-! ## A272125.P2903688014565963489

`A002522(n)*A005900(n)-A005900(n)`
-/

namespace A272125.P2903688014565963489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A005900 n - A005900 n

end

end A272125.P2903688014565963489

namespace A272125

/-- `A002522(n)*A005900(n)-A005900(n)` -/
def P2903688014565963489.Spec : Prop :=
  ∀ n, P2903688014565963489.a n = A272125 n

end A272125

/-! ## A272125.P7885809970192252798

`n²*Δ[A006325(n)]`
-/

namespace A272125.P7885809970192252798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A272125.P7885809970192252798

namespace A272125

/-- `n²*Δ[A006325(n)]` -/
def P7885809970192252798.Spec : Prop :=
  ∀ n, P7885809970192252798.a n = A272125 n

end A272125

/-! ## A272125.P9070143569887720326

`Δ[(n+1-A081490(n+1))²]`
-/

namespace A272125.P9070143569887720326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A081490 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272125.P9070143569887720326

namespace A272125

/-- `Δ[(n+1-A081490(n+1))²]` -/
def P9070143569887720326.Spec : Prop :=
  ∀ n, P9070143569887720326.a n = A272125 n

end A272125

/-! ## A272125.P3852164455721341018

`(A006325(n+1)-A006325(n))*n²`
-/

namespace A272125.P3852164455721341018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006325 (n + 1) - A006325 n) * (n ^ 2 : ℤ)

end

end A272125.P3852164455721341018

namespace A272125

/-- `(A006325(n+1)-A006325(n))*n²` -/
def P3852164455721341018.Spec : Prop :=
  ∀ n, P3852164455721341018.a n = A272125 n

end A272125

/-! ## A272125.P17477237035085995846

`Δ[∑[A289207(n+1)²]²]`
-/

namespace A272125.P17477237035085995846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272125.P17477237035085995846

namespace A272125

/-- `Δ[∑[A289207(n+1)²]²]` -/
def P17477237035085995846.Spec : Prop :=
  ∀ n, P17477237035085995846.a n = A272125 n

end A272125

/-! ## A272125.P13709389310073324218

`Δ[(n²-Δ[A002415(n)])²]`
-/

namespace A272125.P13709389310073324218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272125.P13709389310073324218

namespace A272125

/-- `Δ[(n²-Δ[A002415(n)])²]` -/
def P13709389310073324218.Spec : Prop :=
  ∀ n, P13709389310073324218.a n = A272125 n

end A272125

/-! ## A272125.P12637601724949168084

`record[Δ[A000330(A004526(n))²]]`
-/

namespace A272125.P12637601724949168084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A004526 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272125.P12637601724949168084

namespace A272125

/-- `record[Δ[A000330(A004526(n))²]]` -/
def P12637601724949168084.Spec : Prop :=
  ∀ n, P12637601724949168084.a n = A272125 n

end A272125

/-! ## A272125.P7710235672928466471

`A005900(n)*A387539(2*n+1)`
-/

namespace A272125.P7710235672928466471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n * A387539 (2 * n + 1)

end

end A272125.P7710235672928466471

namespace A272125

/-- `A005900(n)*A387539(2*n+1)` -/
def P7710235672928466471.Spec : Prop :=
  ∀ n, P7710235672928466471.a n = A272125 n

end A272125

/-!
# A272126: a(n) = 120*n^3 + 60*n^2 + 2*n + 1.

The programs for A272126, the canonical program `A272126.P14910871158952488101` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272126 has offset 0).

The definition of A272126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `120*n^3+60*n²+2*n+1` (program `A272126.P14910871158952488101`, by `A272126.P14910871158952488101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272126.P17691341171515789315

`ogf((1+179x+479x^2+61x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A272126.P17691341171515789315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 179, 479, 61] [1, -4, 6, -4, 1] n

end

end A272126.P17691341171515789315

namespace A272126

/-- `ogf((1+179x+479x^2+61x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P17691341171515789315.Spec : Prop :=
  ∀ n, P17691341171515789315.a n = A272126 n

end A272126

/-! ## A272126.P12843783478942479011

`(2*n+1)*(60*n²+1)`
-/

namespace A272126.P12843783478942479011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (60 * n ^ 2 + 1)

end

end A272126.P12843783478942479011

namespace A272126

/-- `(2*n+1)*(60*n²+1)` -/
def P12843783478942479011.Spec : Prop :=
  ∀ n, (P12843783478942479011.a n : ℤ) = A272126 n

theorem P12843783478942479011.correct : P12843783478942479011.Spec := by
  intro n
  simp only [A272126, Nat.add_sub_cancel, A272126.P12843783478942479011.a, A272126.P14910871158952488101.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A272126

/-! ## A272126.P14910871158952488101

`120*n^3+60*n²+2*n+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272126

/-- `120*n^3+60*n²+2*n+1` -/
def P14910871158952488101.Spec : Prop :=
  ∀ n, (P14910871158952488101.a n : ℤ) = A272126 n

theorem P14910871158952488101.correct : P14910871158952488101.Spec := by
  intro n
  simp only [A272126]

end A272126

/-! ## A272126.P16773166512887012582

`(60*n²+1)*A016825(n)/2`
-/

namespace A272126.P16773166512887012582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((60 * n ^ 2 + 1 : ℤ) * A016825 n : ℚ) / 2

end

end A272126.P16773166512887012582

namespace A272126

/-- `(60*n²+1)*A016825(n)/2` -/
def P16773166512887012582.Spec : Prop :=
  ∀ n, P16773166512887012582.a n = (A272126 n : ℚ)

theorem P16773166512887012582.correct : P16773166512887012582.Spec := by
  intro n
  simp only [A272126, Nat.add_sub_cancel, A272126.P16773166512887012582.a, A272126.P14910871158952488101.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272126

/-! ## A272126.P5956846655768160573

`lcm(A157142(n), A158673(n))`
-/

namespace A272126.P5956846655768160573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157142 n) (A158673 n)

end

end A272126.P5956846655768160573

namespace A272126

/-- `lcm(A157142(n), A158673(n))` -/
def P5956846655768160573.Spec : Prop :=
  ∀ n, (P5956846655768160573.a n : ℤ) = A272126 n

end A272126

/-! ## A272126.P17996055566685853326

`A370649(Δ[n²])`
-/

namespace A272126.P17996055566685853326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370649 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A272126.P17996055566685853326

namespace A272126

/-- `A370649(Δ[n²])` -/
def P17996055566685853326.Spec : Prop :=
  ∀ n, P17996055566685853326.a n = A272126 n

end A272126

/-! ## A272126.P3806806748975522059

`lcm(2*n+1, A370649(2*n+1))`
-/

namespace A272126.P3806806748975522059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A370649 (2 * n + 1))

end

end A272126.P3806806748975522059

namespace A272126

/-- `lcm(2*n+1, A370649(2*n+1))` -/
def P3806806748975522059.Spec : Prop :=
  ∀ n, (P3806806748975522059.a n : ℤ) = A272126 n

end A272126

/-!
# A272127: a(n) = 1680*n^4 - 168*n^2 + 128*n + 1.

The programs for A272127, the canonical program `A272127.P3446953100569873930` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272127 has offset 0).

The definition of A272127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272127.P3446953100569873930

`(2*n+1)*(840*n^3-420*n²+126*n+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272127

/-- `(2*n+1)*(840*n^3-420*n²+126*n+1)` -/
def P3446953100569873930.Spec : Prop :=
  ∀ n, P3446953100569873930.a n = A272127 n

theorem P3446953100569873930.correct : P3446953100569873930.Spec := by
  intro n
  simp only [A272127]

end A272127

/-! ## A272127.P613712277556631917

`A286899((n+1)*(2*n+7))`
-/

namespace A272127.P613712277556631917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286899 ((n + 1) * (2 * n + 7))

end

end A272127.P613712277556631917

namespace A272127

/-- `A286899((n+1)*(2*n+7))` -/
def P613712277556631917.Spec : Prop :=
  ∀ n, P613712277556631917.a n = A272127 n

end A272127

/-!
# A272128: a(n) = 30240*n^5-25200*n^4+5040*n^3+7320*n^2-2638*n+1.

The programs for A272128, the canonical program `A272128.P6731190579585787227` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272128 has offset 0).

The definition of A272128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272128.P6731190579585787227

`1/4^n*∑{#}[n, (2*#+1)^10*C(2*n+1, n-#)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272128

/-- `1/4^n*∑{#}[n, (2*#+1)^10*C(2*n+1, n-#)]` -/
def P6731190579585787227.Spec : Prop :=
  ∀ n, P6731190579585787227.a n = (A272128 n : ℚ)

end A272128

/-! ## A272128.P8246529350765891249

`A286899(A091823(n+2)-2)`
-/

namespace A272128.P8246529350765891249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286899 (A091823 (n + 2) - 2).toNat

end

end A272128.P8246529350765891249

namespace A272128

/-- `A286899(A091823(n+2)-2)` -/
def P8246529350765891249.Spec : Prop :=
  ∀ n, P8246529350765891249.a n = A272128 n

end A272128

/-!
# A272129: a(n) = 32*n^2 - 56*n + 25.

The programs for A272129, the canonical program `A272129.P8632855432401845907` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272129 has offset 0).

The definition of A272129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*n²-56*n+25` (program `A272129.P8632855432401845907`, by `A272129.P8632855432401845907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272129.P3916022552171250947

`ogf((25-74x+113x^2)/(1-3x+3x^2-x^3))`
-/

namespace A272129.P3916022552171250947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [25, -74, 113] [1, -3, 3, -1] n

end

end A272129.P3916022552171250947

namespace A272129

/-- `ogf((25-74x+113x^2)/(1-3x+3x^2-x^3))` -/
def P3916022552171250947.Spec : Prop :=
  ∀ n, P3916022552171250947.a n = A272129 n

end A272129

/-! ## A272129.P8632855432401845907

`32*n²-56*n+25`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272129

/-- `32*n²-56*n+25` -/
def P8632855432401845907.Spec : Prop :=
  ∀ n, P8632855432401845907.a n = A272129 n

theorem P8632855432401845907.correct : P8632855432401845907.Spec := by
  intro n
  simp only [A272129]

end A272129

/-! ## A272129.P6252104389391724453

`A001844(abs(4-A008574(n)))`
-/

namespace A272129.P6252104389391724453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 |4 - A008574 n|.toNat

end

end A272129.P6252104389391724453

namespace A272129

/-- `A001844(abs(4-A008574(n)))` -/
def P6252104389391724453.Spec : Prop :=
  ∀ n, P6252104389391724453.a n = A272129 n

end A272129

/-! ## A272129.P13384105936277204146

`A001844(xor(2, record[A266722(n)]))`
-/

namespace A272129.P13384105936277204146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (Int.xor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A272129.P13384105936277204146

namespace A272129

/-- `A001844(xor(2, record[A266722(n)]))` -/
def P13384105936277204146.Spec : Prop :=
  ∀ n, P13384105936277204146.a n = A272129 n

end A272129

/-! ## A272129.P9684698983732772919

`A001844(xor(2, A111284(n+1)))`
-/

namespace A272129.P9684698983732772919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (Int.xor 2 (A111284 (n + 1))).toNat

end

end A272129.P9684698983732772919

namespace A272129

/-- `A001844(xor(2, A111284(n+1)))` -/
def P9684698983732772919.Spec : Prop :=
  ∀ n, P9684698983732772919.a n = A272129 n

end A272129

/-! ## A272129.P10472996415006729592

`A001844(xor(3, A004273(2*n)))`
-/

namespace A272129.P10472996415006729592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (Int.xor 3 (A004273 (2 * n))).toNat

end

end A272129.P10472996415006729592

namespace A272129

/-- `A001844(xor(3, A004273(2*n)))` -/
def P10472996415006729592.Spec : Prop :=
  ∀ n, P10472996415006729592.a n = A272129 n

end A272129

/-! ## A272129.P10496900346098949127

`A000982(xor(7, A130824(2*n)))`
-/

namespace A272129.P10496900346098949127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (Int.xor 7 (A130824 (2 * n))).toNat

end

end A272129.P10496900346098949127

namespace A272129

/-- `A000982(xor(7, A130824(2*n)))` -/
def P10496900346098949127.Spec : Prop :=
  ∀ n, P10496900346098949127.a n = A272129 n

end A272129

/-!
# A272130: a(n) = 16*n^3 + 10*n^2 + 4*n + 1.

The programs for A272130, the canonical program `A272130.P8084678550180586502` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272130 has offset 0).

The definition of A272130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^3+10*n²+4*n+1` (program `A272130.P8084678550180586502`, by `A272130.P8084678550180586502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272130.P492508437275734988

`ogf((1+27x+59x^2+9x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A272130.P492508437275734988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 27, 59, 9] [1, -4, 6, -4, 1] n

end

end A272130.P492508437275734988

namespace A272130

/-- `ogf((1+27x+59x^2+9x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P492508437275734988.Spec : Prop :=
  ∀ n, P492508437275734988.a n = A272130 n

end A272130

/-! ## A272130.P8084678550180586502

`16*n^3+10*n²+4*n+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272130

/-- `16*n^3+10*n²+4*n+1` -/
def P8084678550180586502.Spec : Prop :=
  ∀ n, (P8084678550180586502.a n : ℤ) = A272130 n

theorem P8084678550180586502.correct : P8084678550180586502.Spec := by
  intro n
  simp only [A272130]

end A272130

/-! ## A272130.P15354544750287830655

`Δ[C(2*n, 2)²]-(n+1)*2*n`
-/

namespace A272130.P15354544750287830655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n + 1) * (2 * n) : ℤ)

end

end A272130.P15354544750287830655

namespace A272130

/-- `Δ[C(2*n, 2)²]-(n+1)*2*n` -/
def P15354544750287830655.Spec : Prop :=
  ∀ n, P15354544750287830655.a n = A272130 n

theorem P15354544750287830655.correct : P15354544750287830655.Spec := by
  intro n
  simp only [A272130, Nat.add_sub_cancel, A272130.P15354544750287830655.f1, A272130.P15354544750287830655.a, A272130.P8084678550180586502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A272130

/-! ## A272130.P13814151187800609780

`abs(∑[4*n]-A341043(n+1))`
-/

namespace A272130.P13814151187800609780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A341043 (n + 1)|

end

end A272130.P13814151187800609780

namespace A272130

/-- `abs(∑[4*n]-A341043(n+1))` -/
def P13814151187800609780.Spec : Prop :=
  ∀ n, P13814151187800609780.a n = A272130 n

end A272130

/-! ## A272130.P11149355531143899245

`(A117216(n)+A010010(n))/2`
-/

namespace A272130.P11149355531143899245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117216 n + A010010 n : ℚ) / 2

end

end A272130.P11149355531143899245

namespace A272130

/-- `(A117216(n)+A010010(n))/2` -/
def P11149355531143899245.Spec : Prop :=
  ∀ n, P11149355531143899245.a n = (A272130 n : ℚ)

end A272130

/-! ## A272130.P10254184566490313947

`abs(A046142(n+1)-A001105(n))`
-/

namespace A272130.P10254184566490313947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046142 (n + 1) - A001105 n|

end

end A272130.P10254184566490313947

namespace A272130

/-- `abs(A046142(n+1)-A001105(n))` -/
def P10254184566490313947.Spec : Prop :=
  ∀ n, P10254184566490313947.a n = A272130 n

end A272130

/-! ## A272130.P6040955434838065615

`record[A305290(n+1)-∑[n-1]]`
-/

namespace A272130.P6040955434838065615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305290 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272130.P6040955434838065615

namespace A272130

/-- `record[A305290(n+1)-∑[n-1]]` -/
def P6040955434838065615.Spec : Prop :=
  ∀ n, P6040955434838065615.a n = A272130 n

end A272130

/-! ## A272130.P16453376732804313552

`(A002523(2*n+1)-A071253(2*n))/2`
-/

namespace A272130.P16453376732804313552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002523 (2 * n + 1) - A071253 (2 * n) : ℚ) / 2

end

end A272130.P16453376732804313552

namespace A272130

/-- `(A002523(2*n+1)-A071253(2*n))/2` -/
def P16453376732804313552.Spec : Prop :=
  ∀ n, P16453376732804313552.a n = (A272130 n : ℚ)

theorem P16453376732804313552.correct : P16453376732804313552.Spec := by
  intro n
  simp only [A272130, Nat.add_sub_cancel, A272130.P16453376732804313552.a, A272130.P8084678550180586502.a, A002523, A002523.P178649398705969946.a, A071253, A071253.P8759095852449772691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272130

/-! ## A272130.P14776665773950747443

`(A006000(4*n)+A002061(2*n+1))/2`
-/

namespace A272130.P14776665773950747443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006000 (4 * n) + A002061 (2 * n + 1) : ℚ) / 2

end

end A272130.P14776665773950747443

namespace A272130

/-- `(A006000(4*n)+A002061(2*n+1))/2` -/
def P14776665773950747443.Spec : Prop :=
  ∀ n, P14776665773950747443.a n = (A272130 n : ℚ)

end A272130

/-!
# A272134: a(n) = n*(15*n^2 - 15*n + 4).

The programs for A272134, the canonical program `A272134.P1787611870238833139` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272134 has offset 0).

The definition of A272134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n²-15*n+4)` (program `A272134.P1787611870238833139`, by `A272134.P1787611870238833139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272134.P8996522818277159302

`ogf((4x+52x^2+34x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A272134.P8996522818277159302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 52, 34] [1, -4, 6, -4, 1] n

end

end A272134.P8996522818277159302

namespace A272134

/-- `ogf((4x+52x^2+34x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P8996522818277159302.Spec : Prop :=
  ∀ n, P8996522818277159302.a n = A272134 n

end A272134

/-! ## A272134.P1787611870238833139

`n*(15*n²-15*n+4)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272134

/-- `n*(15*n²-15*n+4)` -/
def P1787611870238833139.Spec : Prop :=
  ∀ n, P1787611870238833139.a n = A272134 n

theorem P1787611870238833139.correct : P1787611870238833139.Spec := by
  intro n
  simp only [A272134]

end A272134

/-! ## A272134.P5642247138018388873

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=68, a(3)=282`
-/

namespace A272134.P5642247138018388873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 68, 282] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A272134.P5642247138018388873

namespace A272134

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5642247138018388873.Spec : Prop :=
  ∀ n, P5642247138018388873.a n = A272134 n

theorem P5642247138018388873.correct : P5642247138018388873.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A272134, Nat.add_sub_cancel, A272134.P5642247138018388873.a, A272134.P1787611870238833139.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A272134, Nat.add_sub_cancel, A272134.P5642247138018388873.a, A272134.P1787611870238833139.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A272134

/-! ## A272134.P10022874689895456189

`A064046(n)-n`
-/

namespace A272134.P10022874689895456189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064046 n - (n : ℤ)

end

end A272134.P10022874689895456189

namespace A272134

/-- `A064046(n)-n` -/
def P10022874689895456189.Spec : Prop :=
  ∀ n, P10022874689895456189.a n = A272134 n

theorem P10022874689895456189.correct : P10022874689895456189.Spec := by
  intro n
  simp only [A272134, Nat.add_sub_cancel, A272134.P10022874689895456189.a, A272134.P1787611870238833139.a, A064046, A064046.P17679552197568254219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272134

/-! ## A272134.P10897555677435508277

`4*n+15*A045991(n)`
-/

namespace A272134.P10897555677435508277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + 15 * A045991 n

end

end A272134.P10897555677435508277

namespace A272134

/-- `4*n+15*A045991(n)` -/
def P10897555677435508277.Spec : Prop :=
  ∀ n, P10897555677435508277.a n = A272134 n

theorem P10897555677435508277.correct : P10897555677435508277.Spec := by
  intro n
  simp only [A272134, Nat.add_sub_cancel, A272134.P10897555677435508277.a, A272134.P1787611870238833139.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272134

/-! ## A272134.P14840822987469807672

`6*n*(A192136(n)-n)-2*n`
-/

namespace A272134.P14840822987469807672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℤ) * (A192136 n - (n : ℤ))) - (2 * n : ℤ)

end

end A272134.P14840822987469807672

namespace A272134

/-- `6*n*(A192136(n)-n)-2*n` -/
def P14840822987469807672.Spec : Prop :=
  ∀ n, P14840822987469807672.a n = A272134 n

end A272134

/-! ## A272134.P10563434894499358472

`A370649(n)+A153448(n)`
-/

namespace A272134.P10563434894499358472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370649 n + A153448 n

end

end A272134.P10563434894499358472

namespace A272134

/-- `A370649(n)+A153448(n)` -/
def P10563434894499358472.Spec : Prop :=
  ∀ n, P10563434894499358472.a n = A272134 n

theorem P10563434894499358472.correct : P10563434894499358472.Spec := by
  intro n
  simp only [A272134, Nat.add_sub_cancel, A272134.P10563434894499358472.a, A272134.P1787611870238833139.a, A153448, A153448.P13695387970658973347.a, A370649, A370649.P9233916880484194882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272134

/-! ## A272134.P8947745077818620189

`A006566(n)+3*A329530(n)`
-/

namespace A272134.P8947745077818620189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n + 3 * A329530 n

end

end A272134.P8947745077818620189

namespace A272134

/-- `A006566(n)+3*A329530(n)` -/
def P8947745077818620189.Spec : Prop :=
  ∀ n, P8947745077818620189.a n = A272134 n

end A272134

/-! ## A272134.P7691188614018160749

`A002939(n)+lcm(A000567(n), A135706(n))`
-/

namespace A272134.P7691188614018160749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n + (Int.lcm (A000567 n) (A135706 n) : ℤ)

end

end A272134.P7691188614018160749

namespace A272134

/-- `A002939(n)+lcm(A000567(n), A135706(n))` -/
def P7691188614018160749.Spec : Prop :=
  ∀ n, P7691188614018160749.a n = A272134 n

end A272134

/-! ## A272134.P17002686790791113042

`A370649(2*n)/8`
-/

namespace A272134.P17002686790791113042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370649 (2 * n) : ℚ) / 8

end

end A272134.P17002686790791113042

namespace A272134

/-- `A370649(2*n)/8` -/
def P17002686790791113042.Spec : Prop :=
  ∀ n, P17002686790791113042.a n = (A272134 n : ℚ)

theorem P17002686790791113042.correct : P17002686790791113042.Spec := by
  intro n
  simp only [A272134, Nat.add_sub_cancel, A272134.P17002686790791113042.a, A272134.P1787611870238833139.a, A370649, A370649.P9233916880484194882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272134

/-!
# A272135: Numbers of ways of placing the numbers 1, ..., n on a circle (not counting rotations and reflections) such that for each s in {1, ..., n(n+1)/2}, there exists a connected subset S of the circle such that the numbers covered by S add up to s.

The programs for A272135, there is no canonical definition to state claims against.
-/

/-! ## A272135.P6175122743032996201

`ceil(A325791(n)/2)`
-/

namespace A272135.P6175122743032996201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325791 n : ℚ) / 2⌉

end

end A272135.P6175122743032996201

/-! ## A272135.P11474698927410248853

`ceil(A325790(n)/floor(2/acot(n)))`
-/

namespace A272135.P11474698927410248853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325790 n : ℚ) / (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)⌉

end

end A272135.P11474698927410248853

/-! ## A272135.P9220936283224384899

`A325791(n)/A329683(n)`
-/

namespace A272135.P9220936283224384899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325791 n : ℚ) / (A329683 n : ℚ)

end

end A272135.P9220936283224384899

/-! ## A272135.P6224712622397698680

`ceil(A325790(n)/A004277(n))`
-/

namespace A272135.P6224712622397698680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325790 n : ℚ) / (A004277 n : ℚ)⌉

end

end A272135.P6224712622397698680

/-!
# A272136: a(n+1) = a(n-1) + A001414(a(n)) with a(1)=1, a(2)=2.

The programs for A272136, there is no canonical definition to state claims against.
-/

/-! ## A272136.P5690068194984005654

`A001414(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A272136.P5690068194984005654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001414 (a (n - 1)).toNat + a (n - 2)

end

end A272136.P5690068194984005654

/-! ## A272136.P13843601282221005562

`A337310(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A272136.P13843601282221005562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A337310 (a (n - 1)).toNat + a (n - 2)

end

end A272136.P13843601282221005562

/-!
# A272137: 

The programs for A272137, there is no canonical definition to state claims against.
-/

/-! ## A272137.P6947294408893931208

`A006313(n+1)^16+1`
-/

namespace A272137.P6947294408893931208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006313 (n + 1) ^ 16 + 1

end

end A272137.P6947294408893931208

/-!
# A272138: Numbers n such that Bernoulli number B_{n} has denominator 798.

The programs for A272138, there is no canonical definition to state claims against.
-/

/-! ## A272138.P8654413858231528688

`eq[19, A166333(n)]`
-/

namespace A272138.P8654413858231528688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272138.P8654413858231528688

/-! ## A272138.P12282811669061245034

`eq[10, A007318(A346467(n+1))]`
-/

namespace A272138.P12282811669061245034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A346467 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272138.P12282811669061245034

/-!
# A272143: For a given n, and any m less than n-1, the total number of primes of the form 2^n-2^m-1.

The programs for A272143, there is no canonical definition to state claims against.
-/

/-! ## A272143.P642946087159248840

`A095058(char[1]+A005843(n)%(n+1)+1)`
-/

namespace A272143.P642946087159248840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A005843 n) (n + 1 : ℤ) + 1).toNat

end

end A272143.P642946087159248840

/-! ## A272143.P14406255671575816150

`A095058(A008619(record[A029579(n)]))`
-/

namespace A272143.P14406255671575816150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A272143.P14406255671575816150

/-! ## A272143.P5470803448539902299

`A095058(A008619(A004280(n+1)))`
-/

namespace A272143.P5470803448539902299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A008619 (A004280 (n + 1)).toNat).toNat

end

end A272143.P5470803448539902299

/-! ## A272143.P2681058418787948101

`A095058(A000720(p?[A083920(n)]))`
-/

namespace A272143.P2681058418787948101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A272143.P2681058418787948101

/-! ## A272143.P15462872070407913492

`A095058(A233583(n+1))%A005408(n)`
-/

namespace A272143.P15462872070407913492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095058 (A233583 (n + 1)).toNat) (A005408 n)

end

end A272143.P15462872070407913492

/-! ## A272143.P12812272463224911391

`A095058(A254667(n)^A178334(n))`
-/

namespace A272143.P12812272463224911391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (SequenceMachineLib.roundAway ((A254667 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A272143.P12812272463224911391

/-! ## A272143.P15785827167273812058

`A095058(A137734(∑[2*n]))`
-/

namespace A272143.P15785827167273812058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A137734 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A272143.P15785827167273812058

/-! ## A272143.P18031941329364328009

`A095058(A000196(A014206(n)))`
-/

namespace A272143.P18031941329364328009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A000196 (A014206 n).toNat).toNat

end

end A272143.P18031941329364328009

/-! ## A272143.P13745910738227267224

`A095058(A004530(A265556(n))+n)`
-/

namespace A272143.P13745910738227267224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A004530 (A265556 n).toNat + (n : ℤ)).toNat

end

end A272143.P13745910738227267224

/-!
# A272144: Convolution of A000217 and A001045.

The programs for A272144, the canonical program `A272144.P14254718832520406877` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272144 has offset 0).

The definition of A272144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272144.P14254718832520406877

`ogf(x^2/(1-4x+4x^2+2x^3-5x^4+2x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272144

/-- `ogf(x^2/(1-4x+4x^2+2x^3-5x^4+2x^5))` -/
def P14254718832520406877.Spec : Prop :=
  ∀ n, P14254718832520406877.a n = A272144 n

theorem P14254718832520406877.correct : P14254718832520406877.Spec := by
  intro n
  simp only [A272144]

end A272144

/-! ## A272144.P14334256779020537033

`∑[∑[floor(2^n/3)]]`
-/

namespace A272144.P14334256779020537033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272144.P14334256779020537033

namespace A272144

/-- `∑[∑[floor(2^n/3)]]` -/
def P14334256779020537033.Spec : Prop :=
  ∀ n, P14334256779020537033.a n = A272144 n

end A272144

/-! ## A272144.P111097559356656556

`floor((n/2)²+2*a(n-1))` with `a(0)=0`
-/

namespace A272144.P111097559356656556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n : ℚ) / 2) ^ 2 + (2 * a (n - 1) : ℚ)⌋

end

end A272144.P111097559356656556

namespace A272144

/-- `floor((n/2)²+2*a(n-1))` -/
def P111097559356656556.Spec : Prop :=
  ∀ n, P111097559356656556.a n = A272144 n

end A272144

/-! ## A272144.P8989580137116126171

`∑[floor(n/2)]+2*a(n-1)` with `a(0)=0`
-/

namespace A272144.P8989580137116126171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A272144.P8989580137116126171

namespace A272144

/-- `∑[floor(n/2)]+2*a(n-1)` -/
def P8989580137116126171.Spec : Prop :=
  ∀ n, P8989580137116126171.a n = A272144 n

end A272144

/-! ## A272144.P2515019656915473664

`2^n+a(n-2)-(n+1)` with `a(0)=0, a(1)=0`
-/

namespace A272144.P2515019656915473664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (2 ^ n : ℤ) + (a (n - 2) - (n + 1 : ℤ))

end

end A272144.P2515019656915473664

namespace A272144

/-- `2^n+a(n-2)-(n+1)` -/
def P2515019656915473664.Spec : Prop :=
  ∀ n, P2515019656915473664.a n = A272144 n

end A272144

/-! ## A272144.P6355059049165399223

`floor(2*a(n-1)+n*n/4)` with `a(0)=0`
-/

namespace A272144.P6355059049165399223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(2 * a (n - 1) : ℚ) + (n : ℚ) * ((n : ℚ) / 4)⌋

end

end A272144.P6355059049165399223

namespace A272144

/-- `floor(2*a(n-1)+n*n/4)` -/
def P6355059049165399223.Spec : Prop :=
  ∀ n, P6355059049165399223.a n = A272144 n

end A272144

/-! ## A272144.P7751394535779136334

`∑[2*a(n-1)+1]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A272144.P7751394535779136334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A272144.P7751394535779136334

namespace A272144

/-- `∑[2*a(n-1)+1]+a(n-2)` -/
def P7751394535779136334.Spec : Prop :=
  ∀ n, (P7751394535779136334.a n : ℤ) = A272144 n

end A272144

/-! ## A272144.P3595698687582580823

`2*a(n-1)-∑[a(n-2)-1]` with `a(0)=0, a(1)=0`
-/

namespace A272144.P3595698687582580823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272144.P3595698687582580823

namespace A272144

/-- `2*a(n-1)-∑[a(n-2)-1]` -/
def P3595698687582580823.Spec : Prop :=
  ∀ n, P3595698687582580823.a n = A272144 n

end A272144

/-! ## A272144.P16112581198239943783

`floor(a(n-1)+a(n-1)+(n/2)²)` with `a(0)=0`
-/

namespace A272144.P16112581198239943783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + ((n : ℚ) / 2) ^ 2)⌋

end

end A272144.P16112581198239943783

namespace A272144

/-- `floor(a(n-1)+a(n-1)+(n/2)²)` -/
def P16112581198239943783.Spec : Prop :=
  ∀ n, P16112581198239943783.a n = A272144 n

end A272144

/-! ## A272144.P805219170576293996

`a(n-1)+∑[floor(n/2)]+a(n-1)` with `a(0)=0`
-/

namespace A272144.P805219170576293996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A272144.P805219170576293996

namespace A272144

/-- `a(n-1)+∑[floor(n/2)]+a(n-1)` -/
def P805219170576293996.Spec : Prop :=
  ∀ n, P805219170576293996.a n = A272144 n

end A272144

/-! ## A272144.P17487024536555818553

`∑[a(n-1)+a(n-1)+1]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A272144.P17487024536555818553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A272144.P17487024536555818553

namespace A272144

/-- `∑[a(n-1)+a(n-1)+1]+a(n-2)` -/
def P17487024536555818553.Spec : Prop :=
  ∀ n, (P17487024536555818553.a n : ℤ) = A272144 n

end A272144

/-! ## A272144.P11905361596554851002

`a(n-2)-∑[a(n-1)-(1-a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A272144.P11905361596554851002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272144.P11905361596554851002

namespace A272144

/-- `a(n-2)-∑[a(n-1)-(1-a(n-1))]` -/
def P11905361596554851002.Spec : Prop :=
  ∀ n, P11905361596554851002.a n = A272144 n

end A272144

/-! ## A272144.P12819297925526081717

`A178420(n)+a(n-1)` with `a(0)=0`
-/

namespace A272144.P12819297925526081717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178420 n + a (n - 1)

end

end A272144.P12819297925526081717

namespace A272144

/-- `A178420(n)+a(n-1)` -/
def P12819297925526081717.Spec : Prop :=
  ∀ n, P12819297925526081717.a n = A272144 n

end A272144

/-! ## A272144.P16422738314025431193

`A000295(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A272144.P16422738314025431193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000295 n + a (n - 2)

end

end A272144.P16422738314025431193

namespace A272144

/-- `A000295(n)+a(n-2)` -/
def P16422738314025431193.Spec : Prop :=
  ∀ n, P16422738314025431193.a n = A272144 n

end A272144

/-! ## A272144.P14274066050112783170

`A130103(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A272144.P14274066050112783170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A130103 n + a (n - 2)

end

end A272144.P14274066050112783170

namespace A272144

/-- `A130103(n)+a(n-2)` -/
def P14274066050112783170.Spec : Prop :=
  ∀ n, P14274066050112783170.a n = A272144 n

end A272144

/-! ## A272144.P14456556272118073350

`A002662(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A272144.P14456556272118073350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002662 (n + 1) - a (n - 1)

end

end A272144.P14456556272118073350

namespace A272144

/-- `A002662(n+1)-a(n-1)` -/
def P14456556272118073350.Spec : Prop :=
  ∀ n, P14456556272118073350.a n = A272144 n

end A272144

/-! ## A272144.P13039729935702016919

`∑[A000225(n)-n]-a(n-1)` with `a(0)=0`
-/

namespace A272144.P13039729935702016919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A272144.P13039729935702016919

namespace A272144

/-- `∑[A000225(n)-n]-a(n-1)` -/
def P13039729935702016919.Spec : Prop :=
  ∀ n, P13039729935702016919.a n = A272144 n

end A272144

/-! ## A272144.P701492494600908760

`A026644(n)-A035106(n+1)`
-/

namespace A272144.P701492494600908760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n - A035106 (n + 1)

end

end A272144.P701492494600908760

namespace A272144

/-- `A026644(n)-A035106(n+1)` -/
def P701492494600908760.Spec : Prop :=
  ∀ n, P701492494600908760.a n = A272144 n

end A272144

/-! ## A272144.P14296570684975046386

`A084639(n)-A024206(n+1)`
-/

namespace A272144.P14296570684975046386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n - A024206 (n + 1)

end

end A272144.P14296570684975046386

namespace A272144

/-- `A084639(n)-A024206(n+1)` -/
def P14296570684975046386.Spec : Prop :=
  ∀ n, P14296570684975046386.a n = A272144 n

end A272144

/-! ## A272144.P6651072919831170765

`A257198(n+1)-A002620(n)`
-/

namespace A272144.P6651072919831170765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257198 (n + 1) - A002620 n

end

end A272144.P6651072919831170765

namespace A272144

/-- `A257198(n+1)-A002620(n)` -/
def P6651072919831170765.Spec : Prop :=
  ∀ n, P6651072919831170765.a n = A272144 n

end A272144

/-!
# A272145: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A272145, there is no canonical definition to state claims against.
-/

/-! ## A272145.P14812452913334126012

`A272148(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272145.P14812452913334126012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272148 (n - 1) + a (n - 1)

end

end A272145.P14812452913334126012

/-! ## A272145.P15693949973168287099

`A272148(n-1)-ceil(-a(A028310(n)-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A272145.P15693949973168287099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272148 (n - 1) - (-a (A028310 n - 1).toNat)

end

end A272145.P15693949973168287099

/-! ## A272145.P1641456966065090784

`A272148(n-1)-(A000038(n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A272145.P1641456966065090784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272148 (n - 1) - (A000038 n - 1) * a (n - 1)

end

end A272145.P1641456966065090784

/-! ## A272145.P11583941098978344766

`Δ[A272147(n)]-A272148(n)`
-/

namespace A272145.P11583941098978344766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272148 n

end

end A272145.P11583941098978344766

/-! ## A272145.P16694849083557767872

`A272147(n+1)-(A272148(n)+A272147(n))`
-/

namespace A272145.P16694849083557767872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272147 (n + 1) - (A272148 n + A272147 n)

end

end A272145.P16694849083557767872

/-!
# A272146: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A272146, there is no canonical definition to state claims against.
-/

/-! ## A272146.P9407175610530917409

`A272145(2^n-1)`
-/

namespace A272146.P9407175610530917409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272145 (2 ^ n - 1)

end

end A272146.P9407175610530917409

/-! ## A272146.P13187769092223759908

`record[A272145(A006068(n))]`
-/

namespace A272146.P13187769092223759908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272145 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272146.P13187769092223759908

/-! ## A272146.P10007019693019670721

`record[A272145(A173787(n))]`
-/

namespace A272146.P10007019693019670721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272145 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272146.P10007019693019670721

/-! ## A272146.P18165922701365989887

`record[A272145(Δ[A228693(n)])]`
-/

namespace A272146.P18165922701365989887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272145 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272146.P18165922701365989887

/-! ## A272146.P11668257011825457797

`and(-3, A272145(A000225(n)))`
-/

namespace A272146.P11668257011825457797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A272145 (A000225 n).toNat)

end

end A272146.P11668257011825457797

/-!
# A272147: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A272147, there is no canonical definition to state claims against.
-/

/-! ## A272147.P377691504452057033

`∑[A272145(n)]`
-/

namespace A272147.P377691504452057033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272147.P377691504452057033

/-! ## A272147.P12564838279246195140

`a(n-1)+A272145(n)+A000007(n)` with `a(0)=1`
-/

namespace A272147.P12564838279246195140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272145 n + A000007 n)

end

end A272147.P12564838279246195140

/-! ## A272147.P4670772196346731815

`a(n-1)+A272145(n)%A016958(n)` with `a(0)=1`
-/

namespace A272147.P4670772196346731815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272145 n) (A016958 n)

end

end A272147.P4670772196346731815

/-! ## A272147.P1436227249334398463

`A272145(n%A272145(n))+a(n-1)` with `a(0)=1`
-/

namespace A272147.P1436227249334398463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272145 (Int.tmod (n : ℤ) (A272145 n)).toNat + a (n - 1)

end

end A272147.P1436227249334398463

/-! ## A272147.P18256848651691157481

`∑[∑[A272148(n)]+1-A272148(n)]`
-/

namespace A272147.P18256848651691157481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272148 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272147.P18256848651691157481

/-! ## A272147.P17787346803050995129

`a(n-1)+A284258(A284252(n+1)²)+A272145(n)` with `a(0)=1`
-/

namespace A272147.P17787346803050995129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284258 (A284252 (n + 1) ^ 2).toNat + A272145 n)

end

end A272147.P17787346803050995129

/-!
# A272148: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A272148, there is no canonical definition to state claims against.
-/

/-! ## A272148.P17218033431403661066

`Δ[A272145(n)]`
-/

namespace A272148.P17218033431403661066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272148.P17218033431403661066

/-! ## A272148.P2162151587746473548

`A272145(n+1)-A272145(n)`
-/

namespace A272148.P2162151587746473548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272145 (n + 1) - A272145 n

end

end A272148.P2162151587746473548

/-!
# A272149: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A272149, there is no canonical definition to state claims against.
-/

/-! ## A272149.P17092961598275219647

`A272152(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272149.P17092961598275219647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272152 (n - 1) + a (n - 1)

end

end A272149.P17092961598275219647

/-! ## A272149.P4616896529716064527

`Δ[A272151(n)]-A272152(n)`
-/

namespace A272149.P4616896529716064527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272152 n

end

end A272149.P4616896529716064527

/-! ## A272149.P9759749771712298370

`A272151(n+1)-(A272152(n)+A272151(n))`
-/

namespace A272149.P9759749771712298370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272151 (n + 1) - (A272152 n + A272151 n)

end

end A272149.P9759749771712298370

/-!
# A272150: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A272150, there is no canonical definition to state claims against.
-/

/-! ## A272150.P1283468931607360781

`A272149(2^n-1)`
-/

namespace A272150.P1283468931607360781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272149 (2 ^ n - 1)

end

end A272150.P1283468931607360781

/-! ## A272150.P15390734637985464168

`record[A272149(A006068(n))]`
-/

namespace A272150.P15390734637985464168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272149 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272150.P15390734637985464168

/-! ## A272150.P1022532408978122146

`record[A272149(A173787(n))]`
-/

namespace A272150.P1022532408978122146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272149 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272150.P1022532408978122146

/-! ## A272150.P2852060215446399033

`record[A272149(A255565(n))]`
-/

namespace A272150.P2852060215446399033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272149 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272150.P2852060215446399033

/-! ## A272150.P521018295195649324

`record[A272149(A243071(n+1))]`
-/

namespace A272150.P521018295195649324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272149 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272150.P521018295195649324

/-!
# A272151: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A272151, there is no canonical definition to state claims against.
-/

/-! ## A272151.P353825240262851118

`∑[A272149(n)]`
-/

namespace A272151.P353825240262851118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272151.P353825240262851118

/-! ## A272151.P8514721615964256002

`∑[∑[A272152(n)]+1-A272152(n)]`
-/

namespace A272151.P8514721615964256002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272152 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272152 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272151.P8514721615964256002

/-! ## A272151.P18340146507398808485

`A272149(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A272151.P18340146507398808485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272149 (A004526 (n + n)).toNat + a (n - 1)

end

end A272151.P18340146507398808485

/-! ## A272151.P3477933408531270627

`A272149(n%A142325(n))+a(n-1)` with `a(0)=1`
-/

namespace A272151.P3477933408531270627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272149 (Int.tmod (n : ℤ) (A142325 n)).toNat + a (n - 1)

end

end A272151.P3477933408531270627

/-! ## A272151.P16790149024166433333

`A272149(n)+a(A004526(A004273(n)))` with `a(0)=1`
-/

namespace A272151.P16790149024166433333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272149 n + a (A004526 (A004273 n).toNat).toNat

end

end A272151.P16790149024166433333

/-! ## A272151.P10877889657558860794

`a(n-1)+A284258(A284252(n+1)²)+A272149(n)` with `a(0)=1`
-/

namespace A272151.P10877889657558860794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284258 (A284252 (n + 1) ^ 2).toNat + A272149 n)

end

end A272151.P10877889657558860794

/-!
# A272152: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A272152, there is no canonical definition to state claims against.
-/

/-! ## A272152.P1282501100720732063

`Δ[A272149(n)]`
-/

namespace A272152.P1282501100720732063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272152.P1282501100720732063

/-! ## A272152.P8538764335721769750

`A272149(n+1)-A272149(n)`
-/

namespace A272152.P8538764335721769750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272149 (n + 1) - A272149 n

end

end A272152.P8538764335721769750

/-!
# A272153: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A272153, there is no canonical definition to state claims against.
-/

/-! ## A272153.P13253580630376272748

`A272156(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272153.P13253580630376272748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272156 (n - 1) + a (n - 1)

end

end A272153.P13253580630376272748

/-! ## A272153.P4810880478459819348

`∑[A272156(A028310(n)-1)]-6`
-/

namespace A272153.P4810880478459819348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272156 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 6

end

end A272153.P4810880478459819348

/-! ## A272153.P9191048287709816154

`Δ[A272155(n)]-A272156(n)`
-/

namespace A272153.P9191048287709816154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272156 n

end

end A272153.P9191048287709816154

/-! ## A272153.P5857365900002397033

`A272155(n+1)-(A272156(n)+A272155(n))`
-/

namespace A272153.P5857365900002397033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272155 (n + 1) - (A272156 n + A272155 n)

end

end A272153.P5857365900002397033

/-!
# A272154: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A272154, there is no canonical definition to state claims against.
-/

/-! ## A272154.P3157358723845007935

`A272153(2^n-1)`
-/

namespace A272154.P3157358723845007935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272153 (2 ^ n - 1)

end

end A272154.P3157358723845007935

/-! ## A272154.P12042529262823684428

`record[A272153(A023758(n+1))]`
-/

namespace A272154.P12042529262823684428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272153 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272154.P12042529262823684428

/-! ## A272154.P476627709584246170

`record[A272153(A335041(n+1))]`
-/

namespace A272154.P476627709584246170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272153 (A335041 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272154.P476627709584246170

/-! ## A272154.P5985542767432833856

`record[A272153(A335042(n+1))]`
-/

namespace A272154.P5985542767432833856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272153 (A335042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272154.P5985542767432833856

/-! ## A272154.P7073687420212615400

`record[A036987(n)*A272153(n)]`
-/

namespace A272154.P7073687420212615400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A272153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272154.P7073687420212615400

/-!
# A272155: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A272155, there is no canonical definition to state claims against.
-/

/-! ## A272155.P1308332734423375634

`∑[A272153(n)]`
-/

namespace A272155.P1308332734423375634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272155.P1308332734423375634

/-! ## A272155.P6287118879232263206

`a(n-1)+A272153(n)+A000007(n)` with `a(0)=1`
-/

namespace A272155.P6287118879232263206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272153 n + A000007 n)

end

end A272155.P6287118879232263206

/-! ## A272155.P12240036467315751777

`A272153(n%A272153(n))+a(n-1)` with `a(0)=1`
-/

namespace A272155.P12240036467315751777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272153 (Int.tmod (n : ℤ) (A272153 n)).toNat + a (n - 1)

end

end A272155.P12240036467315751777

/-! ## A272155.P15516819689297032680

`a(n-1)+and(1, A131098(n+1))*A272153(n)` with `a(0)=1`
-/

namespace A272155.P15516819689297032680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land 1 (A131098 (n + 1)) * A272153 n

end

end A272155.P15516819689297032680

/-! ## A272155.P14451909332404324548

`∑[A272156(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272155.P14451909332404324548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272156 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272155.P14451909332404324548

/-! ## A272155.P9493524361944043842

`A272153(n+1)+a(n-1)-A272156(n)` with `a(0)=1`
-/

namespace A272155.P9493524361944043842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272153 (n + 1) + (a (n - 1) - A272156 n)

end

end A272155.P9493524361944043842

/-!
# A272156: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A272156, there is no canonical definition to state claims against.
-/

/-! ## A272156.P10779470871780884133

`Δ[A272153(n)]`
-/

namespace A272156.P10779470871780884133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272156.P10779470871780884133

/-! ## A272156.P17382027836163832762

`A272153(n+1)-A272153(n)`
-/

namespace A272156.P17382027836163832762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272153 (n + 1) - A272153 n

end

end A272156.P17382027836163832762

/-! ## A272156.P8526327136942232432

`A272153(n+1)+A024000(A272153(n)+1)`
-/

namespace A272156.P8526327136942232432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272153 (n + 1) + A024000 (A272153 n + 1).toNat

end

end A272156.P8526327136942232432

/-!
# A272157: Numbers n = concat(x,y) such that (x - phi(x)) * (y - phi(y)) = n - phi(n), where n - phi(n) is the Euler cototient function of n.

The programs for A272157, there is no canonical definition to state claims against.
-/

/-! ## A272157.P17129008557259103771

`∪[A105184(n+1), A129800(n+1)%A166505(n+1)]`
-/

namespace A272157.P17129008557259103771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129800 (n + 1)) (A166505 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272157.P17129008557259103771

/-! ## A272157.P7551017711381404902

`∪[A105184(n+1)%A167458(2*n+5), A129800(n+1)]`
-/

namespace A272157.P7551017711381404902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105184 (n + 1)) (A167458 (2 * n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272157.P7551017711381404902

/-!
# A272158: Expansion of e.g.f.: (sin(x) + sin(4*x)) / sin(5*x), even-indexed terms only.

The programs for A272158, there is no canonical definition to state claims against.
-/

/-! ## A272158.P18127714610809752725

`abs(A156182(2*n))`
-/

namespace A272158.P18127714610809752725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156182 (2 * n)|

end

end A272158.P18127714610809752725

/-! ## A272158.P13003693990655368917

`record[gcd(val(n+1, 2), A156182(n))]`
-/

namespace A272158.P13003693990655368917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A156182 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272158.P13003693990655368917

/-! ## A272158.P11471027700666778394

`record[abs(A156182(A014681(n)))]`
-/

namespace A272158.P11471027700666778394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156182 (A014681 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272158.P11471027700666778394

/-! ## A272158.P477241298703809195

`record[abs(A156182(A068527(n)))]`
-/

namespace A272158.P477241298703809195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156182 (A068527 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272158.P477241298703809195

/-! ## A272158.P11526986660441204924

`record[abs(A156182(A153733(n)))]`
-/

namespace A272158.P11526986660441204924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156182 (A153733 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272158.P11526986660441204924

/-!
# A272159: Numbers k such that abs(8*k^2 - 488*k + 7243) is prime.

The programs for A272159, there is no canonical definition to state claims against.
-/

/-! ## A272159.P2914440776875013305

`A053571(A111893(n+1)%(A329655(n+1)+1)+1)+n`
-/

namespace A272159.P2914440776875013305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053571 (Int.tmod (A111893 (n + 1)) (A329655 (n + 1) + 1) + 1).toNat + (n : ℤ)

end

end A272159.P2914440776875013305

/-! ## A272159.P18039488338119695705

`A275962(A377468(n+3))+n`
-/

namespace A272159.P18039488338119695705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A377468 (n + 3)).toNat + (n : ℤ)

end

end A272159.P18039488338119695705

/-! ## A272159.P1425418345950562502

`A012393(C(n+2, 64))+n`
-/

namespace A272159.P1425418345950562502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012393 (Nat.choose (n + 2) 64) + (n : ℤ)

end

end A272159.P1425418345950562502

/-! ## A272159.P14027108546785753532

`A111428(A088157(n))+n`
-/

namespace A272159.P14027108546785753532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111428 (A088157 n).toNat + (n : ℤ)

end

end A272159.P14027108546785753532

/-! ## A272159.P4483697430267051627

`A048652(A151934(n+1))+n`
-/

namespace A272159.P4483697430267051627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048652 (A151934 (n + 1)).toNat + (n : ℤ)

end

end A272159.P4483697430267051627

/-! ## A272159.P1406938005401671111

`A124762(A296092(n+1))+n`
-/

namespace A272159.P1406938005401671111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A296092 (n + 1)).toNat + (n : ℤ)

end

end A272159.P1406938005401671111

/-! ## A272159.P14842060464314791927

`A324044(A093655(n+2))+n`
-/

namespace A272159.P14842060464314791927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324044 (A093655 (n + 2)).toNat + (n : ℤ)

end

end A272159.P14842060464314791927

/-! ## A272159.P11780210325929105632

`A000122(A366958(3*n+2))+n`
-/

namespace A272159.P11780210325929105632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A366958 (3 * n + 2)).toNat + (n : ℤ)

end

end A272159.P11780210325929105632

/-! ## A272159.P6877473676625252338

`A005843(C(A055400(3*(n+1)), 64))+n`
-/

namespace A272159.P6877473676625252338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Nat.choose (A055400 (3 * (n + 1))).toNat 64) + (n : ℤ)

end

end A272159.P6877473676625252338

/-!
# A272161: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A272161, there is no canonical definition to state claims against.
-/

/-! ## A272161.P5156864258709067215

`A273143(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272161.P5156864258709067215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273143 (n - 1) + a (n - 1)

end

end A272161.P5156864258709067215

/-! ## A272161.P4950049915942276411

`Δ[A273142(n)]-A273143(n)`
-/

namespace A272161.P4950049915942276411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273143 n

end

end A272161.P4950049915942276411

/-! ## A272161.P2497255606047685444

`A273142(n+1)-(A273143(n)+A273142(n))`
-/

namespace A272161.P2497255606047685444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273142 (n + 1) - (A273143 n + A273142 n)

end

end A272161.P2497255606047685444

/-! ## A272161.P7655069123997558078

`A005408(n)-(2*n-(∑[A273143(n)]-A273143(n)))`
-/

namespace A272161.P7655069123997558078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - A273143 n))

end

end A272161.P7655069123997558078

/-! ## A272161.P4258909980491579970

`2-A024000(∑[A273143(n)]-A273143(n))`
-/

namespace A272161.P4258909980491579970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (∑ j ∈ Finset.range (n + 1), f1 j - A273143 n).toNat

end

end A272161.P4258909980491579970

/-!
# A272162: a(n) = n^5-n+1.

The programs for A272162, the canonical program `A272162.P3521161050144454669` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272162 has offset 0).

The definition of A272162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n+1` (program `A272162.P3521161050144454669`, by `A272162.P3521161050144454669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272162.P3521161050144454669

`n^5-n+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272162

/-- `n^5-n+1` -/
def P3521161050144454669.Spec : Prop :=
  ∀ n, P3521161050144454669.a n = A272162 n

theorem P3521161050144454669.correct : P3521161050144454669.Spec := by
  intro n
  simp only [A272162]

end A272162

/-! ## A272162.P13082516667312925271

`ogf((1-5x+40x^2+50x^3+35x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A272162.P13082516667312925271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 40, 50, 35, -1] [1, -6, 15, -20, 15, -6, 1] n

end

end A272162.P13082516667312925271

namespace A272162

/-- `ogf((1-5x+40x^2+50x^3+35x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13082516667312925271.Spec : Prop :=
  ∀ n, P13082516667312925271.a n = A272162 n

end A272162

/-! ## A272162.P7942630773926926922

`or(1, n^5-n)`
-/

namespace A272162.P7942630773926926922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 5 : ℤ) - (n : ℤ))

end

end A272162.P7942630773926926922

namespace A272162

/-- `or(1, n^5-n)` -/
def P7942630773926926922.Spec : Prop :=
  ∀ n, P7942630773926926922.a n = A272162 n

end A272162

/-! ## A272162.P16021367566489410576

`xor(1, n^5-n)`
-/

namespace A272162.P16021367566489410576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 5 : ℤ) - (n : ℤ))

end

end A272162.P16021367566489410576

namespace A272162

/-- `xor(1, n^5-n)` -/
def P16021367566489410576.Spec : Prop :=
  ∀ n, P16021367566489410576.a n = A272162 n

end A272162

/-! ## A272162.P489809052539653809

`abs(xor(-1, n^5)+n)`
-/

namespace A272162.P489809052539653809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (n ^ 5 : ℤ) + (n : ℤ)|

end

end A272162.P489809052539653809

namespace A272162

/-- `abs(xor(-1, n^5)+n)` -/
def P489809052539653809.Spec : Prop :=
  ∀ n, P489809052539653809.a n = A272162 n

end A272162

/-! ## A272162.P12153326680775024951

`abs(n-1-gcd(n, 2*n)^5)`
-/

namespace A272162.P12153326680775024951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 1 - (Nat.gcd n (2 * n) ^ 5 : ℤ)|

end

end A272162.P12153326680775024951

namespace A272162

/-- `abs(n-1-gcd(n, 2*n)^5)` -/
def P12153326680775024951.Spec : Prop :=
  ∀ n, P12153326680775024951.a n = A272162 n

end A272162

/-! ## A272162.P13911361284333242219

`abs(n-(A000584(n)+1))`
-/

namespace A272162.P13911361284333242219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A000584 n + 1)|

end

end A272162.P13911361284333242219

namespace A272162

/-- `abs(n-(A000584(n)+1))` -/
def P13911361284333242219.Spec : Prop :=
  ∀ n, P13911361284333242219.a n = A272162 n

end A272162

/-! ## A272162.P15138041857078495579

`abs(A024003(n)-2+n)`
-/

namespace A272162.P15138041857078495579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024003 n - 2 + (n : ℤ)|

end

end A272162.P15138041857078495579

namespace A272162

/-- `abs(A024003(n)-2+n)` -/
def P15138041857078495579.Spec : Prop :=
  ∀ n, P15138041857078495579.a n = A272162 n

end A272162

/-! ## A272162.P3730230639296562414

`abs(n^5-A023443(n))`
-/

namespace A272162.P3730230639296562414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 5 : ℤ) - A023443 n|

end

end A272162.P3730230639296562414

namespace A272162

/-- `abs(n^5-A023443(n))` -/
def P3730230639296562414.Spec : Prop :=
  ∀ n, P3730230639296562414.a n = A272162 n

end A272162

/-! ## A272162.P2454575993754902060

`abs(n*A000583(n)+1-n)`
-/

namespace A272162.P2454575993754902060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A000583 n + 1 - (n : ℤ)|

end

end A272162.P2454575993754902060

namespace A272162

/-- `abs(n*A000583(n)+1-n)` -/
def P2454575993754902060.Spec : Prop :=
  ∀ n, P2454575993754902060.a n = A272162 n

end A272162

/-! ## A272162.P736310351213101705

`abs(n*A000290(n)²+1-n)`
-/

namespace A272162.P736310351213101705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A000290 n ^ 2 + 1 - (n : ℤ)|

end

end A272162.P736310351213101705

namespace A272162

/-- `abs(n*A000290(n)²+1-n)` -/
def P736310351213101705.Spec : Prop :=
  ∀ n, P736310351213101705.a n = A272162 n

end A272162

/-!
# A272167: a(n) = Product_{k=2..n} (k^2-k)^k.

The programs for A272167, there is no canonical definition to state claims against.
-/

/-! ## A272167.P2263887538459933604

`∏[record[(n²-n)^n]]`
-/

namespace A272167.P2263887538459933604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A272167.P2263887538459933604

/-! ## A272167.P8191790014021706583

`∑[2*n]^(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A272167.P8191790014021706583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1) * a (n - 1)

end

end A272167.P8191790014021706583

/-! ## A272167.P17213774894320389560

`A195458((n+1)²+n)`
-/

namespace A272167.P17213774894320389560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195458 ((n + 1) ^ 2 + n)

end

end A272167.P17213774894320389560

/-! ## A272167.P17799643729631210049

`a(n-1)*A281997(n+1)` with `a(0)=1`
-/

namespace A272167.P17799643729631210049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A281997 (n + 1)

end

end A272167.P17799643729631210049

/-! ## A272167.P5371795767702761455

`A002109(n+1)*A267968(n)`
-/

namespace A272167.P5371795767702761455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002109 (n + 1) * A267968 n

end

end A272167.P5371795767702761455

/-!
# A272168: a(n) = Product_{k=0..n} (k^2-k)!.

The programs for A272168, there is no canonical definition to state claims against.
-/

/-! ## A272168.P12839617274913474379

`∏[(n²-n)!]`
-/

namespace A272168.P12839617274913474379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n ^ 2 : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A272168.P12839617274913474379

/-! ## A272168.P17876675454209854659

`(n²-n)!*a(n-1)` with `a(0)=1`
-/

namespace A272168.P17876675454209854659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n ^ 2 : ℤ) - (n : ℤ)).toNat * a (n - 1)

end

end A272168.P17876675454209854659

/-! ## A272168.P7142923668052277883

`∏[A362187(n)]`
-/

namespace A272168.P7142923668052277883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A272168.P7142923668052277883

/-!
# A272170: Second most significant bit of Fibonacci numbers > 1 written in base 2.

The programs for A272170, the canonical program `A272170.P5454619822345200697` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272170 has offset 3).

The definition of A272170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272170.P5454619822345200697

`floor(A000045(n+3)/2^(ceil(log2(A000045(n+3)+1))-2))-2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A272170

/-- `floor(A000045(n+3)/2^(ceil(log2(A000045(n+3)+1))-2))-2` -/
def P5454619822345200697.Spec : Prop :=
  ∀ n, P5454619822345200697.a n = A272170 (n + 3)

theorem P5454619822345200697.correct : P5454619822345200697.Spec := by
  intro n
  simp only [A272170, Nat.add_sub_cancel]

end A272170

/-! ## A272170.P8846062445911675805

`A079944(A000045(n+3)-2)`
-/

namespace A272170.P8846062445911675805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A000045 (n + 3) - 2).toNat

end

end A272170.P8846062445911675805

namespace A272170

/-- `A079944(A000045(n+3)-2)` -/
def P8846062445911675805.Spec : Prop :=
  ∀ n, P8846062445911675805.a n = A272170 (n + 3)

end A272170

/-! ## A272170.P13041691333987525323

`floor(A255875(n+1)/A255919(n+3))`
-/

namespace A272170.P13041691333987525323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A255875 (n + 1) : ℚ) / (A255919 (n + 3) : ℚ)⌋

end

end A272170.P13041691333987525323

namespace A272170

/-- `floor(A255875(n+1)/A255919(n+3))` -/
def P13041691333987525323.Spec : Prop :=
  ∀ n, P13041691333987525323.a n = A272170 (n + 3)

end A272170

/-! ## A272170.P3604765143247533427

`floor(A000071(n+3)/A255919(n+3))`
-/

namespace A272170.P3604765143247533427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000071 (n + 3) : ℚ) / (A255919 (n + 3) : ℚ)⌋

end

end A272170.P3604765143247533427

namespace A272170

/-- `floor(A000071(n+3)/A255919(n+3))` -/
def P3604765143247533427.Spec : Prop :=
  ∀ n, P3604765143247533427.a n = A272170 (n + 3)

end A272170

/-! ## A272170.P15472051554187857488

`round(A006355(n+1)/A255919(n+3))`
-/

namespace A272170.P15472051554187857488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006355 (n + 1) : ℚ) / (A255919 (n + 3) : ℚ))

end

end A272170.P15472051554187857488

namespace A272170

/-- `round(A006355(n+1)/A255919(n+3))` -/
def P15472051554187857488.Spec : Prop :=
  ∀ n, P15472051554187857488.a n = A272170 (n + 3)

end A272170

/-! ## A272170.P7153621857453968356

`round(A255919(n+1)/A255919(n+3))`
-/

namespace A272170.P7153621857453968356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A255919 (n + 1) : ℚ) / (A255919 (n + 3) : ℚ))

end

end A272170.P7153621857453968356

namespace A272170

/-- `round(A255919(n+1)/A255919(n+3))` -/
def P7153621857453968356.Spec : Prop :=
  ∀ n, P7153621857453968356.a n = A272170 (n + 3)

end A272170

/-! ## A272170.P13773839780543670365

`and(A074937(n+1), A376241(n+1))`
-/

namespace A272170.P13773839780543670365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074937 (n + 1)) (A376241 (n + 1))

end

end A272170.P13773839780543670365

namespace A272170

/-- `and(A074937(n+1), A376241(n+1))` -/
def P13773839780543670365.Spec : Prop :=
  ∀ n, P13773839780543670365.a n = A272170 (n + 3)

end A272170

/-!
# A272171: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000005 in reverse order.

The programs for A272171, the canonical program `A272171.P16960674483232534523` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272171 has offset 1).

The definition of A272171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272171.P5499299781688425863

`A000005(row(n)+1-col(n))`
-/

namespace A272171.P5499299781688425863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A272171.P5499299781688425863

namespace A272171

/-- `A000005(row(n)+1-col(n))` -/
def P5499299781688425863.Spec : Prop :=
  ∀ n, P5499299781688425863.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P16960674483232534523

`A000005(A004736(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A272171

/-- `A000005(A004736(n+1))` -/
def P16960674483232534523.Spec : Prop :=
  ∀ n, P16960674483232534523.a n = A272171 (n + 1)

theorem P16960674483232534523.correct : P16960674483232534523.Spec := by
  intro n
  simp only [A272171, Nat.add_sub_cancel]

end A272171

/-! ## A272171.P12742910550681563228

`A000005(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A272171.P12742910550681563228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A272171.P12742910550681563228

namespace A272171

/-- `A000005(C(comp[∑[n]]-n, 2)-n)` -/
def P12742910550681563228.Spec : Prop :=
  ∀ n, P12742910550681563228.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P13689990687378787936

`A032741(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A272171.P13689990687378787936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A272171.P13689990687378787936

namespace A272171

/-- `A032741(C(comp[∑[n]]-n, 2)-n)+1` -/
def P13689990687378787936.Spec : Prop :=
  ∀ n, P13689990687378787936.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P4060704981219443577

`A183063(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A272171.P4060704981219443577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A272171.P4060704981219443577

namespace A272171

/-- `A183063(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P4060704981219443577.Spec : Prop :=
  ∀ n, P4060704981219443577.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P7519983397612141969

`A000005(A025581(n)+1)`
-/

namespace A272171.P7519983397612141969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025581 n + 1).toNat

end

end A272171.P7519983397612141969

namespace A272171

/-- `A000005(A025581(n)+1)` -/
def P7519983397612141969.Spec : Prop :=
  ∀ n, P7519983397612141969.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P14598003966409337424

`A069157(A212012(n+1))`
-/

namespace A272171.P14598003966409337424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A212012 (n + 1)).toNat

end

end A272171.P14598003966409337424

namespace A272171

/-- `A069157(A212012(n+1))` -/
def P14598003966409337424.Spec : Prop :=
  ∀ n, P14598003966409337424.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P9222741433115513207

`A000005(sqrt(A055461(n+1)))`
-/

namespace A272171.P9222741433115513207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat

end

end A272171.P9222741433115513207

namespace A272171

/-- `A000005(sqrt(A055461(n+1)))` -/
def P9222741433115513207.Spec : Prop :=
  ∀ n, P9222741433115513207.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P17187148953966397729

`A000005(log2(A090988(n+1)))`
-/

namespace A272171.P17187148953966397729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat

end

end A272171.P17187148953966397729

namespace A272171

/-- `A000005(log2(A090988(n+1)))` -/
def P17187148953966397729.Spec : Prop :=
  ∀ n, P17187148953966397729.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P8019446702811474756

`A320111(2*A004736(n+1))`
-/

namespace A272171.P8019446702811474756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A004736 (n + 1)).toNat

end

end A272171.P8019446702811474756

namespace A272171

/-- `A320111(2*A004736(n+1))` -/
def P8019446702811474756.Spec : Prop :=
  ∀ n, P8019446702811474756.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P12267707941665187307

`A000005((A099375(n)+1)/2)`
-/

namespace A272171.P12267707941665187307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A099375 n + 1 : ℚ) / 2)).toNat

end

end A272171.P12267707941665187307

namespace A272171

/-- `A000005((A099375(n)+1)/2)` -/
def P12267707941665187307.Spec : Prop :=
  ∀ n, P12267707941665187307.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P8637738083501093409

`A000005(root(A055461(n+1), 2))`
-/

namespace A272171.P8637738083501093409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A055461 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A272171.P8637738083501093409

namespace A272171

/-- `A000005(root(A055461(n+1), 2))` -/
def P8637738083501093409.Spec : Prop :=
  ∀ n, P8637738083501093409.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P1894563896139342911

`A000005(val(A036561(n), 2)+1)`
-/

namespace A272171.P1894563896139342911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1)

end

end A272171.P1894563896139342911

namespace A272171

/-- `A000005(val(A036561(n), 2)+1)` -/
def P1894563896139342911.Spec : Prop :=
  ∀ n, P1894563896139342911.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P7628369341714061225

`A000005(val(A043569(n+1), 2))`
-/

namespace A272171.P7628369341714061225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2)

end

end A272171.P7628369341714061225

namespace A272171

/-- `A000005(val(A043569(n+1), 2))` -/
def P7628369341714061225.Spec : Prop :=
  ∀ n, P7628369341714061225.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P1134219228105627726

`A000005(val(A130321(n), 2)+1)`
-/

namespace A272171.P1134219228105627726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.valuation (A130321 n).toNat 2 + 1)

end

end A272171.P1134219228105627726

namespace A272171

/-- `A000005(val(A130321(n), 2)+1)` -/
def P1134219228105627726.Spec : Prop :=
  ∀ n, P1134219228105627726.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P12752215396866476109

`A000005(val(2*A036561(n), 2))`
-/

namespace A272171.P12752215396866476109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.valuation (2 * A036561 n).toNat 2)

end

end A272171.P12752215396866476109

namespace A272171

/-- `A000005(val(2*A036561(n), 2))` -/
def P12752215396866476109.Spec : Prop :=
  ∀ n, P12752215396866476109.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P6516968823914050842

`A000005(val(2*A130321(n), 2))`
-/

namespace A272171.P6516968823914050842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.valuation (2 * A130321 n).toNat 2)

end

end A272171.P6516968823914050842

namespace A272171

/-- `A000005(val(2*A130321(n), 2))` -/
def P6516968823914050842.Spec : Prop :=
  ∀ n, P6516968823914050842.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P5456142839011338111

`A000005(A127739(n+1)-n)`
-/

namespace A272171.P5456142839011338111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A127739 (n + 1) - (n : ℤ)).toNat

end

end A272171.P5456142839011338111

namespace A272171

/-- `A000005(A127739(n+1)-n)` -/
def P5456142839011338111.Spec : Prop :=
  ∀ n, P5456142839011338111.a n = A272171 (n + 1)

end A272171

/-! ## A272171.P7587376542197423426

`A221531(n+1)/A140207(n)`
-/

namespace A272171.P7587376542197423426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221531 (n + 1) : ℚ) / (A140207 n : ℚ)

end

end A272171.P7587376542197423426

namespace A272171

/-- `A221531(n+1)/A140207(n)` -/
def P7587376542197423426.Spec : Prop :=
  ∀ n, P7587376542197423426.a n = (A272171 (n + 1) : ℚ)

end A272171

/-!
# A272172: Triangle read by rows: T(n,k) in which row n lists the first n terms of A000203 in reverse order.

The programs for A272172, the canonical program `A272172.P12139415757426446480` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272172 has offset 1).

The definition of A272172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272172.P1344642555622102268

`A000203(row(n)+1-col(n))`
-/

namespace A272172.P1344642555622102268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A272172.P1344642555622102268

namespace A272172

/-- `A000203(row(n)+1-col(n))` -/
def P1344642555622102268.Spec : Prop :=
  ∀ n, P1344642555622102268.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P12139415757426446480

`A000203(A004736(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A272172

/-- `A000203(A004736(n+1))` -/
def P12139415757426446480.Spec : Prop :=
  ∀ n, P12139415757426446480.a n = A272172 (n + 1)

theorem P12139415757426446480.correct : P12139415757426446480.Spec := by
  intro n
  simp only [A272172, Nat.add_sub_cancel]

end A272172

/-! ## A272172.P14576301914227414163

`∑{d}[col(n)-(row(n)+1), #]`
-/

namespace A272172.P14576301914227414163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A272172.P14576301914227414163

namespace A272172

/-- `∑{d}[col(n)-(row(n)+1), #]` -/
def P14576301914227414163.Spec : Prop :=
  ∀ n, (P14576301914227414163.a n : ℤ) = A272172 (n + 1)

end A272172

/-! ## A272172.P3745305611247774511

`∑{d}[n-C(comp[∑[n]]-n, 2), #]`
-/

namespace A272172.P3745305611247774511
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A272172.P3745305611247774511

namespace A272172

/-- `∑{d}[n-C(comp[∑[n]]-n, 2), #]` -/
def P3745305611247774511.Spec : Prop :=
  ∀ n, (P3745305611247774511.a n : ℤ) = A272172 (n + 1)

end A272172

/-! ## A272172.P6650418045185424072

`∑{d}[A004736(n+1), #]`
-/

namespace A272172.P6650418045185424072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A272172.P6650418045185424072

namespace A272172

/-- `∑{d}[A004736(n+1), #]` -/
def P6650418045185424072.Spec : Prop :=
  ∀ n, (P6650418045185424072.a n : ℤ) = A272172 (n + 1)

end A272172

/-! ## A272172.P7856907629555286287

`∑{d}[A025581(n)+1, #]`
-/

namespace A272172.P7856907629555286287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A272172.P7856907629555286287

namespace A272172

/-- `∑{d}[A025581(n)+1, #]` -/
def P7856907629555286287.Spec : Prop :=
  ∀ n, (P7856907629555286287.a n : ℤ) = A272172 (n + 1)

end A272172

/-! ## A272172.P6992225187791052753

`∑{d}[sqrt(A055461(n+1)), #]`
-/

namespace A272172.P6992225187791052753
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A272172.P6992225187791052753

namespace A272172

/-- `∑{d}[sqrt(A055461(n+1)), #]` -/
def P6992225187791052753.Spec : Prop :=
  ∀ n, (P6992225187791052753.a n : ℤ) = A272172 (n + 1)

end A272172

/-! ## A272172.P3007310619180838474

`∑{d}[log2(A090988(n+1)), #]`
-/

namespace A272172.P3007310619180838474
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A272172.P3007310619180838474

namespace A272172

/-- `∑{d}[log2(A090988(n+1)), #]` -/
def P3007310619180838474.Spec : Prop :=
  ∀ n, (P3007310619180838474.a n : ℤ) = A272172 (n + 1)

end A272172

/-! ## A272172.P4576813119767612251

`A000203(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A272172.P4576813119767612251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A272172.P4576813119767612251

namespace A272172

/-- `A000203(C(comp[∑[n]]-n, 2)-n)` -/
def P4576813119767612251.Spec : Prop :=
  ∀ n, P4576813119767612251.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P14233340114447213649

`A245092(A099375(n))`
-/

namespace A272172.P14233340114447213649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A099375 n).toNat

end

end A272172.P14233340114447213649

namespace A272172

/-- `A245092(A099375(n))` -/
def P14233340114447213649.Spec : Prop :=
  ∀ n, P14233340114447213649.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P9790760862186727370

`A000203(A025581(n)+1)`
-/

namespace A272172.P9790760862186727370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A025581 n + 1).toNat

end

end A272172.P9790760862186727370

namespace A272172

/-- `A000203(A025581(n)+1)` -/
def P9790760862186727370.Spec : Prop :=
  ∀ n, P9790760862186727370.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P781317969465300682

`A326065(A212012(n+1))`
-/

namespace A272172.P781317969465300682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A212012 (n + 1)).toNat

end

end A272172.P781317969465300682

namespace A272172

/-- `A326065(A212012(n+1))` -/
def P781317969465300682.Spec : Prop :=
  ∀ n, P781317969465300682.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P1227008114563448504

`A000203(sqrt(A055461(n+1)))`
-/

namespace A272172.P1227008114563448504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat

end

end A272172.P1227008114563448504

namespace A272172

/-- `A000203(sqrt(A055461(n+1)))` -/
def P1227008114563448504.Spec : Prop :=
  ∀ n, P1227008114563448504.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P16600931581559160351

`A000203(log2(A090988(n+1)))`
-/

namespace A272172.P16600931581559160351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat

end

end A272172.P16600931581559160351

namespace A272172

/-- `A000203(log2(A090988(n+1)))` -/
def P16600931581559160351.Spec : Prop :=
  ∀ n, P16600931581559160351.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P13808226094057331664

`A039653(A025581(n)+1)+1`
-/

namespace A272172.P13808226094057331664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A025581 n + 1).toNat + 1

end

end A272172.P13808226094057331664

namespace A272172

/-- `A039653(A025581(n)+1)+1` -/
def P13808226094057331664.Spec : Prop :=
  ∀ n, P13808226094057331664.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P9360422100060983857

`A000203((A099375(n)+1)/2)`
-/

namespace A272172.P9360422100060983857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A099375 n + 1 : ℚ) / 2)).toNat

end

end A272172.P9360422100060983857

namespace A272172

/-- `A000203((A099375(n)+1)/2)` -/
def P9360422100060983857.Spec : Prop :=
  ∀ n, P9360422100060983857.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P11885243130820340071

`A000203(val(A036561(n), 2)+1)`
-/

namespace A272172.P11885243130820340071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1)

end

end A272172.P11885243130820340071

namespace A272172

/-- `A000203(val(A036561(n), 2)+1)` -/
def P11885243130820340071.Spec : Prop :=
  ∀ n, P11885243130820340071.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P6298168544552986336

`A000203(val(A043569(n+1), 2))`
-/

namespace A272172.P6298168544552986336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2)

end

end A272172.P6298168544552986336

namespace A272172

/-- `A000203(val(A043569(n+1), 2))` -/
def P6298168544552986336.Spec : Prop :=
  ∀ n, P6298168544552986336.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P12664196649845194895

`A000203(val(2*A036561(n), 2))`
-/

namespace A272172.P12664196649845194895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.valuation (2 * A036561 n).toNat 2)

end

end A272172.P12664196649845194895

namespace A272172

/-- `A000203(val(2*A036561(n), 2))` -/
def P12664196649845194895.Spec : Prop :=
  ∀ n, P12664196649845194895.a n = A272172 (n + 1)

end A272172

/-! ## A272172.P7043353934922472150

`A000203(A127739(n+1)-n)`
-/

namespace A272172.P7043353934922472150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A127739 (n + 1) - (n : ℤ)).toNat

end

end A272172.P7043353934922472150

namespace A272172

/-- `A000203(A127739(n+1)-n)` -/
def P7043353934922472150.Spec : Prop :=
  ∀ n, P7043353934922472150.a n = A272172 (n + 1)

end A272172

/-!
# A272173: Product of the sum of the divisors of n and the sum of the divisors of n-th prime.

The programs for A272173, the canonical program `A272173.P7571362483636851933` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272173 has offset 1).

The definition of A272173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272173.P14238928548213707517

`A000203(n+1)+A272211(n+1)`
-/

namespace A272173.P14238928548213707517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A272211 (n + 1)

end

end A272173.P14238928548213707517

namespace A272173

/-- `A000203(n+1)+A272211(n+1)` -/
def P14238928548213707517.Spec : Prop :=
  ∀ n, P14238928548213707517.a n = A272173 (n + 1)

theorem P14238928548213707517.correct : P14238928548213707517.Spec := by
  intro n
  simp only [A272173, Nat.add_sub_cancel, A272173.P14238928548213707517.a, A272173.P7571362483636851933.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008864, A008864.P9177617808325052279.a, A272211, A272211.P17519105524056241919.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272173

/-! ## A272173.P7571362483636851933

`A000203(n+1)*A008864(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A272173

/-- `A000203(n+1)*A008864(n+1)` -/
def P7571362483636851933.Spec : Prop :=
  ∀ n, P7571362483636851933.a n = A272173 (n + 1)

theorem P7571362483636851933.correct : P7571362483636851933.Spec := by
  intro n
  simp only [A272173, Nat.add_sub_cancel]

end A272173

/-! ## A272173.P2663493295626377679

`A000203(n+1)*(1+A000040(n+1))`
-/

namespace A272173.P2663493295626377679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (1 + A000040 (n + 1))

end

end A272173.P2663493295626377679

namespace A272173

/-- `A000203(n+1)*(1+A000040(n+1))` -/
def P2663493295626377679.Spec : Prop :=
  ∀ n, P2663493295626377679.a n = A272173 (n + 1)

theorem P2663493295626377679.correct : P2663493295626377679.Spec := by
  intro n
  simp only [A272173, Nat.add_sub_cancel, A272173.P2663493295626377679.a, A272173.P7571362483636851933.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272173

/-! ## A272173.P361850109900538350

`A000203(n+1)*A000203(A000040(n+1))`
-/

namespace A272173.P361850109900538350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A000203 (A000040 (n + 1)).toNat

end

end A272173.P361850109900538350

namespace A272173

/-- `A000203(n+1)*A000203(A000040(n+1))` -/
def P361850109900538350.Spec : Prop :=
  ∀ n, P361850109900538350.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P12489109020495440646

`A000203(A033286(n+1))`
-/

namespace A272173.P12489109020495440646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033286 (n + 1)).toNat

end

end A272173.P12489109020495440646

namespace A272173

/-- `A000203(A033286(n+1))` -/
def P12489109020495440646.Spec : Prop :=
  ∀ n, P12489109020495440646.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P17025808124138533583

`A000203((n+1)*A000040(n+1))`
-/

namespace A272173.P17025808124138533583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A272173.P17025808124138533583

namespace A272173

/-- `A000203((n+1)*A000040(n+1))` -/
def P17025808124138533583.Spec : Prop :=
  ∀ n, P17025808124138533583.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P5721285445852886975

`Δ[A160664(n)]*A008864(n+1)`
-/

namespace A272173.P5721285445852886975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008864 (n + 1)

end

end A272173.P5721285445852886975

namespace A272173

/-- `Δ[A160664(n)]*A008864(n+1)` -/
def P5721285445852886975.Spec : Prop :=
  ∀ n, P5721285445852886975.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P857880739616992682

`A000203(n+1)*A028815(n+1)`
-/

namespace A272173.P857880739616992682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A028815 (n + 1)

end

end A272173.P857880739616992682

namespace A272173

/-- `A000203(n+1)*A028815(n+1)` -/
def P857880739616992682.Spec : Prop :=
  ∀ n, P857880739616992682.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P12111051555084894329

`A272211(n+1)+A245092(Δ[n²])`
-/

namespace A272173.P12111051555084894329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272211 (n + 1) + A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A272173.P12111051555084894329

namespace A272173

/-- `A272211(n+1)+A245092(Δ[n²])` -/
def P12111051555084894329.Spec : Prop :=
  ∀ n, P12111051555084894329.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P6927742491822771936

`abs(A008864(n+1)*A143348(n+1))`
-/

namespace A272173.P6927742491822771936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008864 (n + 1) * A143348 (n + 1)|

end

end A272173.P6927742491822771936

namespace A272173

/-- `abs(A008864(n+1)*A143348(n+1))` -/
def P6927742491822771936.Spec : Prop :=
  ∀ n, P6927742491822771936.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P6715240930399779921

`sqrt(A072861(n+1))*A008864(n+1)`
-/

namespace A272173.P6715240930399779921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) * (A008864 (n + 1) : ℝ)

end

end A272173.P6715240930399779921

namespace A272173

/-- `sqrt(A072861(n+1))*A008864(n+1)` -/
def P6715240930399779921.Spec : Prop :=
  ∀ n, P6715240930399779921.a n = (A272173 (n + 1) : ℝ)

end A272173

/-! ## A272173.P9603435058652332649

`sqrt(A110833(n+1))*A000203(n+1)`
-/

namespace A272173.P9603435058652332649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110833 (n + 1) : ℝ) * (A000203 (n + 1) : ℝ)

end

end A272173.P9603435058652332649

namespace A272173

/-- `sqrt(A110833(n+1))*A000203(n+1)` -/
def P9603435058652332649.Spec : Prop :=
  ∀ n, P9603435058652332649.a n = (A272173 (n + 1) : ℝ)

end A272173

/-! ## A272173.P10697132548120654498

`A000203(n+1)*∑[A125266(n+1)]`
-/

namespace A272173.P10697132548120654498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272173.P10697132548120654498

namespace A272173

/-- `A000203(n+1)*∑[A125266(n+1)]` -/
def P10697132548120654498.Spec : Prop :=
  ∀ n, P10697132548120654498.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P6935740320543492614

`(Δ[A007504(n)]+1)*A000203(n+1)`
-/

namespace A272173.P6935740320543492614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A000203 (n + 1)

end

end A272173.P6935740320543492614

namespace A272173

/-- `(Δ[A007504(n)]+1)*A000203(n+1)` -/
def P6935740320543492614.Spec : Prop :=
  ∀ n, P6935740320543492614.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P13723178115392298951

`(A000040(n+1)+1)*Δ[A160664(n)]`
-/

namespace A272173.P13723178115392298951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1) * (f1 (n + 1) - f1 n)

end

end A272173.P13723178115392298951

namespace A272173

/-- `(A000040(n+1)+1)*Δ[A160664(n)]` -/
def P13723178115392298951.Spec : Prop :=
  ∀ n, P13723178115392298951.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P15488726961724521570

`(A006093(n+1)+2)*A000203(n+1)`
-/

namespace A272173.P15488726961724521570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 2) * A000203 (n + 1)

end

end A272173.P15488726961724521570

namespace A272173

/-- `(A006093(n+1)+2)*A000203(n+1)` -/
def P15488726961724521570.Spec : Prop :=
  ∀ n, P15488726961724521570.a n = A272173 (n + 1)

theorem P15488726961724521570.correct : P15488726961724521570.Spec := by
  intro n
  simp only [A272173, Nat.add_sub_cancel, A272173.P15488726961724521570.a, A272173.P7571362483636851933.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272173

/-! ## A272173.P1738402302061152347

`(A052147(n+1)-1)*A000203(n+1)`
-/

namespace A272173.P1738402302061152347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 1) * A000203 (n + 1)

end

end A272173.P1738402302061152347

namespace A272173

/-- `(A052147(n+1)-1)*A000203(n+1)` -/
def P1738402302061152347.Spec : Prop :=
  ∀ n, P1738402302061152347.a n = A272173 (n + 1)

theorem P1738402302061152347.correct : P1738402302061152347.Spec := by
  intro n
  simp only [A272173, Nat.add_sub_cancel, A272173.P1738402302061152347.a, A272173.P7571362483636851933.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008864, A008864.P9177617808325052279.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272173

/-! ## A272173.P2108536897359980030

`(A113935(n+1)-2)*A000203(n+1)`
-/

namespace A272173.P2108536897359980030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113935 (n + 1) - 2) * A000203 (n + 1)

end

end A272173.P2108536897359980030

namespace A272173

/-- `(A113935(n+1)-2)*A000203(n+1)` -/
def P2108536897359980030.Spec : Prop :=
  ∀ n, P2108536897359980030.a n = A272173 (n + 1)

theorem P2108536897359980030.correct : P2108536897359980030.Spec := by
  intro n
  simp only [A272173, Nat.add_sub_cancel, A272173.P2108536897359980030.a, A272173.P7571362483636851933.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008864, A008864.P9177617808325052279.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272173

/-! ## A272173.P6277639633598522830

`A008864(n+1)*A245092(2*n+1)`
-/

namespace A272173.P6277639633598522830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A245092 (2 * n + 1)

end

end A272173.P6277639633598522830

namespace A272173

/-- `A008864(n+1)*A245092(2*n+1)` -/
def P6277639633598522830.Spec : Prop :=
  ∀ n, P6277639633598522830.a n = A272173 (n + 1)

end A272173

/-! ## A272173.P7927904800380021544

`A000203(n+1)/2*A089241(n+1)`
-/

namespace A272173.P7927904800380021544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / 2 * (A089241 (n + 1) : ℚ)

end

end A272173.P7927904800380021544

namespace A272173

/-- `A000203(n+1)/2*A089241(n+1)` -/
def P7927904800380021544.Spec : Prop :=
  ∀ n, P7927904800380021544.a n = (A272173 (n + 1) : ℚ)

theorem P7927904800380021544.correct : P7927904800380021544.Spec := by
  intro n
  simp only [A272173, Nat.add_sub_cancel, A272173.P7927904800380021544.a, A272173.P7571362483636851933.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008864, A008864.P9177617808325052279.a, A089241, A089241.P14705987553220613803.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272173

/-!
# A272174: Values of a^3 + b^3 such that the equation a^3 + b^3 = x^2 + y^2 + z^2 is not soluble where a, b > 0 and x, y, z >= 0.

The programs for A272174, there is no canonical definition to state claims against.
-/

/-! ## A272174.P15627350723536367288

`∩[A003325(n+1), A004215(n+1)]`
-/

namespace A272174.P15627350723536367288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272174.P15627350723536367288

/-! ## A272174.P12472610540946577036

`∩[A004215(n+1), A338667(n+1)]`
-/

namespace A272174.P12472610540946577036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272174.P12472610540946577036

/-! ## A272174.P2138503449774347701

`filter[A003325(n+1), A072401(#)]`
-/

namespace A272174.P2138503449774347701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A272174.P2138503449774347701

/-! ## A272174.P5050603327267648797

`filter[A068537(n+1), A072401(#)]`
-/

namespace A272174.P5050603327267648797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A272174.P5050603327267648797

/-! ## A272174.P18129966436828241198

`filter[A338667(n+1), A072401(#)]`
-/

namespace A272174.P18129966436828241198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A272174.P18129966436828241198

/-!
# A272176: Primes p such that p + 44 is also prime.

The programs for A272176, the canonical program `A272176.P6402996398468169714` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272176 has offset 1).

The definition of A272176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272176.P6402996398468169714

`p?[p?[2*n+1]-44]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272176

/-- `p?[p?[2*n+1]-44]` -/
def P6402996398468169714.Spec : Prop :=
  ∀ n, P6402996398468169714.a n = A272176 (n + 1)

theorem P6402996398468169714.correct : P6402996398468169714.Spec := by
  intro n
  simp only [A272176, Nat.add_sub_cancel]

end A272176

/-! ## A272176.P8669127955225819014

`p?[A172367(n+1)-40]`
-/

namespace A272176.P8669127955225819014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P8669127955225819014

namespace A272176

/-- `p?[A172367(n+1)-40]` -/
def P8669127955225819014.Spec : Prop :=
  ∀ n, P8669127955225819014.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P12023071646431908736

`p?[A040976(n+1)-42]`
-/

namespace A272176.P12023071646431908736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P12023071646431908736

namespace A272176

/-- `p?[A040976(n+1)-42]` -/
def P12023071646431908736.Spec : Prop :=
  ∀ n, P12023071646431908736.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P13322634819212142265

`p?[A006093(n+1)-43]`
-/

namespace A272176.P13322634819212142265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P13322634819212142265

namespace A272176

/-- `p?[A006093(n+1)-43]` -/
def P13322634819212142265.Spec : Prop :=
  ∀ n, P13322634819212142265.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P3503149586194189371

`p?[A000040(n+1)-44]`
-/

namespace A272176.P3503149586194189371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P3503149586194189371

namespace A272176

/-- `p?[A000040(n+1)-44]` -/
def P3503149586194189371.Spec : Prop :=
  ∀ n, P3503149586194189371.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P14399119288008914498

`p?[A004139(n+1)-44]`
-/

namespace A272176.P14399119288008914498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P14399119288008914498

namespace A272176

/-- `p?[A004139(n+1)-44]` -/
def P14399119288008914498.Spec : Prop :=
  ∀ n, P14399119288008914498.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P2865033214427363706

`p?[A008578(n+1)-44]`
-/

namespace A272176.P2865033214427363706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P2865033214427363706

namespace A272176

/-- `p?[A008578(n+1)-44]` -/
def P2865033214427363706.Spec : Prop :=
  ∀ n, P2865033214427363706.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P10540258091836967644

`p?[A065091(n+1)-44]`
-/

namespace A272176.P10540258091836967644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P10540258091836967644

namespace A272176

/-- `p?[A065091(n+1)-44]` -/
def P10540258091836967644.Spec : Prop :=
  ∀ n, P10540258091836967644.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P7326577944476401663

`p?[A326155(n+1)-44]`
-/

namespace A272176.P7326577944476401663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326155 (n + 1) - 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P7326577944476401663

namespace A272176

/-- `p?[A326155(n+1)-44]` -/
def P7326577944476401663.Spec : Prop :=
  ∀ n, P7326577944476401663.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P14632135949826240615

`p?[A225648(n+1)-44]`
-/

namespace A272176.P14632135949826240615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (n + 1) - 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272176.P14632135949826240615

namespace A272176

/-- `p?[A225648(n+1)-44]` -/
def P14632135949826240615.Spec : Prop :=
  ∀ n, P14632135949826240615.a n = A272176 (n + 1)

end A272176

/-! ## A272176.P2933015888154005621

`record[p?[A336650(A005117(n+1))-44]]`
-/

namespace A272176.P2933015888154005621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336650 (A005117 (n + 1)).toNat - 44

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272176.P2933015888154005621

namespace A272176

/-- `record[p?[A336650(A005117(n+1))-44]]` -/
def P2933015888154005621.Spec : Prop :=
  ∀ n, P2933015888154005621.a n = A272176 (n + 1)

end A272176

/-!
# A272177: Alternating row sum of row 2n in A238453.

The programs for A272177, there is no canonical definition to state claims against.
-/

/-! ## A272177.P10395795950919197567

`A023187(A148172(n))`
-/

namespace A272177.P10395795950919197567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023187 (A148172 n).toNat

end

end A272177.P10395795950919197567

/-! ## A272177.P9151051848627845261

`A003173(A032616(n)+2)-1`
-/

namespace A272177.P9151051848627845261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003173 (A032616 n + 2).toNat - 1

end

end A272177.P9151051848627845261

/-!
# A272178: Absolute value of alternating row sum of row 2n in A238498.

The programs for A272178, there is no canonical definition to state claims against.
-/

/-! ## A272178.P11742545158204276578

`floor((floor(A277570(6^n+1)/11)+1)/11)+1`
-/

namespace A272178.P11742545158204276578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A277570 (6 ^ n + 1) : ℚ) / 11⌋ + 1 : ℚ) / 11⌋ + 1

end

end A272178.P11742545158204276578

/-! ## A272178.P2284832052860291705

`abs(A349134(A074707(n)))`
-/

namespace A272178.P2284832052860291705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349134 (A074707 n).toNat|

end

end A272178.P2284832052860291705

/-!
# A272179: a(n) = Product_{k=0..n} (n^2 - k).

The programs for A272179, there is no canonical definition to state claims against.
-/

/-! ## A272179.P10436253286240535319

`(n+1)!*C(n², n+1)`
-/

namespace A272179.P10436253286240535319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (n ^ 2) (n + 1)

end

end A272179.P10436253286240535319

/-! ## A272179.P3039442011462608369

`C(n², n+1)*∏[n+1]`
-/

namespace A272179.P3039442011462608369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A272179.P3039442011462608369

/-! ## A272179.P12789539444153079343

`(n+1)!*A178842(n+1)`
-/

namespace A272179.P12789539444153079343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A178842 (n + 1)

end

end A272179.P12789539444153079343

/-! ## A272179.P2460703583442211651

`A000142(n+1)*A178842(n+1)`
-/

namespace A272179.P2460703583442211651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A178842 (n + 1)

end

end A272179.P2460703583442211651

/-! ## A272179.P14536530017020900843

`Δ[A003422(n+1)]*A178842(n+1)`
-/

namespace A272179.P14536530017020900843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A178842 (n + 1)

end

end A272179.P14536530017020900843

/-!
# A272180: a(n) = Product_{k=0..n} (n^2 + k).

The programs for A272180, there is no canonical definition to state claims against.
-/

/-! ## A272180.P17135359651578969169

`(n+1)!*C(∑[2*n], n+1)`
-/

namespace A272180.P17135359651578969169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1)

end

end A272180.P17135359651578969169

/-! ## A272180.P12939558079134042757

`C(n²+n, n+1)*∏[n+1]`
-/

namespace A272180.P12939558079134042757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + n) (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A272180.P12939558079134042757

/-! ## A272180.P2943238639288939279

`n!*A135860(n)*n²`
-/

namespace A272180.P2943238639288939279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A135860 n * (n ^ 2 : ℤ)

end

end A272180.P2943238639288939279

/-! ## A272180.P15819446629931399175

`A054688(n)*A062119(n+1)`
-/

namespace A272180.P15819446629931399175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054688 n * A062119 (n + 1)

end

end A272180.P15819446629931399175

/-! ## A272180.P11443368877747635569

`∏{digits}[A038378(n+1), n²+#]`
-/

namespace A272180.P11443368877747635569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => n ^ 2 + x).prod

end

end A272180.P11443368877747635569

/-!
# A272184: Numbers n such that Bernoulli number B_{n} has denominator 282.

The programs for A272184, there is no canonical definition to state claims against.
-/

/-! ## A272184.P7260799648010278023

`eq[9, A007318(A346467(n+1))]`
-/

namespace A272184.P7260799648010278023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A346467 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272184.P7260799648010278023

/-!
# A272185: Numbers n such that Bernoulli number B_{n} has denominator 870.

The programs for A272185, there is no canonical definition to state claims against.
-/

/-! ## A272185.P2614944276851202605

`eq[9, A000720(A346467(n+1))]`
-/

namespace A272185.P2614944276851202605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A346467 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272185.P2614944276851202605

/-!
# A272187: Number of strongly decreasing partitions of n into odd parts.

The programs for A272187, there is no canonical definition to state claims against.
-/

/-! ## A272187.P11374841693553060287

`∑{e}[7^A000607(A183041(n)), #]`
-/

namespace A272187.P11374841693553060287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A000607 (A183041 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A272187.P11374841693553060287

/-! ## A272187.P2331930639055828205

`A000607(A183041(n)%A247673(2*(n+3)))`
-/

namespace A272187.P2331930639055828205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (Int.tmod (A183041 n) (A247673 (2 * (n + 3)))).toNat

end

end A272187.P2331930639055828205

/-! ## A272187.P9102575978464385883

`A000607(A183041(n))^A007318(A090181(n))`
-/

namespace A272187.P9102575978464385883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000607 (A183041 n).toNat : ℚ) ^ (A007318 (A090181 n).toNat : ℤ)

end

end A272187.P9102575978464385883

/-! ## A272187.P5922257791328040367

`A352166(lt[A008616(n), 3])`
-/

namespace A272187.P5922257791328040367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352166 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272187.P5922257791328040367

/-! ## A272187.P13141284912090259470

`A352166(lt[A084964(n), 12])`
-/

namespace A272187.P13141284912090259470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352166 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272187.P13141284912090259470

/-!
# A272188: Triangle with 2*n+1 terms per row, read by rows: the first row is 1 (by decree), following rows contain 0 to 2n+1 but omitting 2n.

The programs for A272188, there is no canonical definition to state claims against.
-/

/-! ## A272188.P14817151307344431647

`Δ[floor(sqrt(n))]+n-floor(sqrt(n))²`
-/

namespace A272188.P14817151307344431647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))

end

end A272188.P14817151307344431647

/-! ## A272188.P16241743167371948202

`or(n-floor(sqrt(n))², Δ[floor(sqrt(n))])`
-/

namespace A272188.P16241743167371948202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A272188.P16241743167371948202

/-! ## A272188.P7724959908297869419

`xor(n-floor(sqrt(n))², Δ[floor(sqrt(n))])`
-/

namespace A272188.P7724959908297869419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A272188.P7724959908297869419

/-! ## A272188.P16531864724550927310

`floor(A196199(n)+sqrt(n+1))`
-/

namespace A272188.P16531864724550927310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196199 n : ℝ) + Real.sqrt (n + 1 : ℝ)⌋

end

end A272188.P16531864724550927310

/-! ## A272188.P6213404871946511105

`A128138(comp[round(sqrt(n))²+n])`
-/

namespace A272188.P6213404871946511105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A272188.P6213404871946511105

/-! ## A272188.P5196987948318677065

`abs(A010052(n+1)+n-floor(sqrt(n))²)`
-/

namespace A272188.P5196987948318677065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010052 (n + 1) + ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))|

end

end A272188.P5196987948318677065

/-! ## A272188.P11315351968568509112

`A053186(comp[n*(n+3)]+∑[char[n²]])`
-/

namespace A272188.P11315351968568509112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A272188.P11315351968568509112

/-! ## A272188.P1236126474762747434

`A002262(eq[∑[char[∑[n]]]%2, char[comp[∑[n-1]]]])`
-/

namespace A272188.P1236126474762747434
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def f8 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ (x : ℤ)) n

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f5 j) n)

end

end A272188.P1236126474762747434

/-! ## A272188.P8361508456587322192

`A002262(A161983(n+1)-1)`
-/

namespace A272188.P8361508456587322192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A161983 (n + 1) - 1).toNat

end

end A272188.P8361508456587322192

/-! ## A272188.P2081160422184217172

`A002262(A007606(n+2)-2)`
-/

namespace A272188.P2081160422184217172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A007606 (n + 2) - 2).toNat

end

end A272188.P2081160422184217172

/-!
# A272189: Values of A004215(n) such that A004215(n+1) = A004215(n) + 8 = A004215(n-1) + 16.

The programs for A272189, there is no canonical definition to state claims against.
-/

/-! ## A272189.P13558594888309730689

`∩[A004215(n+1), A003056(A003215(n))]`
-/

namespace A272189.P13558594888309730689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003215 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272189.P13558594888309730689

/-! ## A272189.P8810617060268839072

`A131876(A193868(n+2))`
-/

namespace A272189.P8810617060268839072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131876 (A193868 (n + 2)).toNat

end

end A272189.P8810617060268839072

/-!
# A272190: Either 6th power of a prime, or product of the square of two different primes.

The programs for A272190, the canonical program `A272190.P4499530173300394129` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272190 has offset 1).

The definition of A272190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272190.P4499530173300394129

`A030513(n+1)²`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A272190

/-- `A030513(n+1)²` -/
def P4499530173300394129.Spec : Prop :=
  ∀ n, P4499530173300394129.a n = A272190 (n + 1)

theorem P4499530173300394129.correct : P4499530173300394129.Spec := by
  intro n
  simp only [A272190, Nat.add_sub_cancel]

end A272190

/-! ## A272190.P4993247687201119959

`(eq[4, A000005(n+1)]+1)²`
-/

namespace A272190.P4993247687201119959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A272190.P4993247687201119959

namespace A272190

/-- `(eq[4, A000005(n+1)]+1)²` -/
def P4993247687201119959.Spec : Prop :=
  ∀ n, (P4993247687201119959.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P3993363019564283601

`eq[4, A000005(ceil(abs(γ-n)))]²`
-/

namespace A272190.P3993363019564283601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A272190.P3993363019564283601

namespace A272190

/-- `eq[4, A000005(ceil(abs(γ-n)))]²` -/
def P3993363019564283601.Spec : Prop :=
  ∀ n, (P3993363019564283601.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P9377879074217427110

`(eq[4, A000005(n+2)]+2)^2`
-/

namespace A272190.P9377879074217427110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) ^ 2

end

end A272190.P9377879074217427110

namespace A272190

/-- `(eq[4, A000005(n+2)]+2)^2` -/
def P9377879074217427110.Spec : Prop :=
  ∀ n, (P9377879074217427110.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P5885958207413618835

`∪[A030516(n+1), A085986(n+1)]`
-/

namespace A272190.P5885958207413618835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272190.P5885958207413618835

namespace A272190

/-- `∪[A030516(n+1), A085986(n+1)]` -/
def P5885958207413618835.Spec : Prop :=
  ∀ n, (P5885958207413618835.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P5608221631887758324

`A007422(n+2)²`
-/

namespace A272190.P5608221631887758324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2) ^ 2

end

end A272190.P5608221631887758324

namespace A272190

/-- `A007422(n+2)²` -/
def P5608221631887758324.Spec : Prop :=
  ∀ n, P5608221631887758324.a n = A272190 (n + 1)

end A272190

/-! ## A272190.P12370591302722006130

`A007422(n+2)*A030513(n+1)`
-/

namespace A272190.P12370591302722006130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2) * A030513 (n + 1)

end

end A272190.P12370591302722006130

namespace A272190

/-- `A007422(n+2)*A030513(n+1)` -/
def P12370591302722006130.Spec : Prop :=
  ∀ n, P12370591302722006130.a n = A272190 (n + 1)

theorem P12370591302722006130.correct : P12370591302722006130.Spec := by
  intro n
  simp only [A272190, Nat.add_sub_cancel, A272190.P12370591302722006130.a, A272190.P4499530173300394129.a, A007422, A007422.P2892307068334706217.f1, A007422.P2892307068334706217.a, A030513, A030513.P1414838510973468407.a, A354927, A354927.P9536107206795731212.a, A140482, A140482.P11303161972345714232.a, A000005, A000005.P16091521709108585461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A272190

/-! ## A272190.P4647011547551412286

`∩[A036436(n+1), A084116(n+1)]²`
-/

namespace A272190.P4647011547551412286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P4647011547551412286

namespace A272190

/-- `∩[A036436(n+1), A084116(n+1)]²` -/
def P4647011547551412286.Spec : Prop :=
  ∀ n, (P4647011547551412286.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P5828274848921563941

`∩[A007964(n+1), A036455(n+1)]²`
-/

namespace A272190.P5828274848921563941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P5828274848921563941

namespace A272190

/-- `∩[A007964(n+1), A036455(n+1)]²` -/
def P5828274848921563941.Spec : Prop :=
  ∀ n, (P5828274848921563941.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P3558526693758821332

`∩[A007964(n+1), A065985(n+1)]²`
-/

namespace A272190.P3558526693758821332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P3558526693758821332

namespace A272190

/-- `∩[A007964(n+1), A065985(n+1)]²` -/
def P3558526693758821332.Spec : Prop :=
  ∀ n, (P3558526693758821332.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P7442281817511494235

`eq[9, A226602(n)]²`
-/

namespace A272190.P7442281817511494235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A272190.P7442281817511494235

namespace A272190

/-- `eq[9, A226602(n)]²` -/
def P7442281817511494235.Spec : Prop :=
  ∀ n, (P7442281817511494235.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P9659708478578257081

`(eq[2, A292286(n+1)]+1)²`
-/

namespace A272190.P9659708478578257081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A272190.P9659708478578257081

namespace A272190

/-- `(eq[2, A292286(n+1)]+1)²` -/
def P9659708478578257081.Spec : Prop :=
  ∀ n, (P9659708478578257081.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P5538593536928396384

`∩[A000379(n+1), A084116(n+1)]²`
-/

namespace A272190.P5538593536928396384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P5538593536928396384

namespace A272190

/-- `∩[A000379(n+1), A084116(n+1)]²` -/
def P5538593536928396384.Spec : Prop :=
  ∀ n, (P5538593536928396384.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P12612384716353694441

`∩[A002808(n+1), A084116(n+1)]²`
-/

namespace A272190.P12612384716353694441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P12612384716353694441

namespace A272190

/-- `∩[A002808(n+1), A084116(n+1)]²` -/
def P12612384716353694441.Spec : Prop :=
  ∀ n, (P12612384716353694441.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P416870373158921936

`(eq[1, A069023(n+1)]+1)²`
-/

namespace A272190.P416870373158921936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A272190.P416870373158921936

namespace A272190

/-- `(eq[1, A069023(n+1)]+1)²` -/
def P416870373158921936.Spec : Prop :=
  ∀ n, (P416870373158921936.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P13463626013262407981

`∩[A036455(n+1), A037144(n+1)]²`
-/

namespace A272190.P13463626013262407981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P13463626013262407981

namespace A272190

/-- `∩[A036455(n+1), A037144(n+1)]²` -/
def P13463626013262407981.Spec : Prop :=
  ∀ n, (P13463626013262407981.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P7360158649648750067

`∩[A000452(n+1), A328338(n+1)]²`
-/

namespace A272190.P7360158649648750067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P7360158649648750067

namespace A272190

/-- `∩[A000452(n+1), A328338(n+1)]²` -/
def P7360158649648750067.Spec : Prop :=
  ∀ n, (P7360158649648750067.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P5555868393322196604

`∩[A063806(n+1), A211337(n+1)]²`
-/

namespace A272190.P5555868393322196604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P5555868393322196604

namespace A272190

/-- `∩[A063806(n+1), A211337(n+1)]²` -/
def P5555868393322196604.Spec : Prop :=
  ∀ n, (P5555868393322196604.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P4992917214563516851

`∩[A007964(n+2), A048943(n+2)]²`
-/

namespace A272190.P4992917214563516851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A272190.P4992917214563516851

namespace A272190

/-- `∩[A007964(n+2), A048943(n+2)]²` -/
def P4992917214563516851.Spec : Prop :=
  ∀ n, (P4992917214563516851.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P2099515190190699311

`∩[comp[A084111(n+1)], A084116(n+1)]²`
-/

namespace A272190.P2099515190190699311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n ^ 2

end

end A272190.P2099515190190699311

namespace A272190

/-- `∩[comp[A084111(n+1)], A084116(n+1)]²` -/
def P2099515190190699311.Spec : Prop :=
  ∀ n, (P2099515190190699311.a n : ℤ) = A272190 (n + 1)

end A272190

/-! ## A272190.P4082838128024887994

`eq[4, ∑{e}[n, #+1]]²`
-/

namespace A272190.P4082838128024887994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A272190.P4082838128024887994

namespace A272190

/-- `eq[4, ∑{e}[n, #+1]]²` -/
def P4082838128024887994.Spec : Prop :=
  ∀ n, (P4082838128024887994.a n : ℤ) = A272190 (n + 1)

end A272190

/-!
# A272191: Either 8th power of a prime, or product of a square and a cube of two different primes.

The programs for A272191, there is no canonical definition to state claims against.
-/

/-! ## A272191.P3003441941109765433

`∪[A143610(n+1), A179645(n+1)]`
-/

namespace A272191.P3003441941109765433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272191.P3003441941109765433

/-! ## A272191.P11290616025523126244

`A216426(record[A195011(3*n+4)])`
-/

namespace A272191.P11290616025523126244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195011 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A272191.P11290616025523126244

/-!
# A272194: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A272194, there is no canonical definition to state claims against.
-/

/-! ## A272194.P17237236679781886211

`A272251(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272194.P17237236679781886211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272251 (n - 1) + a (n - 1)

end

end A272194.P17237236679781886211

/-! ## A272194.P12251438814195914360

`Δ[A272250(n)]-A272251(n)`
-/

namespace A272194.P12251438814195914360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272251 n

end

end A272194.P12251438814195914360

/-! ## A272194.P5716410015130171755

`A272250(n+1)-(A272251(n)+A272250(n))`
-/

namespace A272194.P5716410015130171755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272250 (n + 1) - (A272251 n + A272250 n)

end

end A272194.P5716410015130171755

/-! ## A272194.P10941614721420543878

`A016754(n)-A272734(n)%A011199(n)`
-/

namespace A272194.P10941614721420543878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A272734 n) (A011199 n)

end

end A272194.P10941614721420543878

/-! ## A272194.P14314383585375178798

`A016754(n+1)%(A272734(n+1)+A272251(n))`
-/

namespace A272194.P14314383585375178798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 (n + 1)) (A272734 (n + 1) + A272251 n)

end

end A272194.P14314383585375178798

/-! ## A272194.P8753046305325678648

`A181385(A016825(n))-A272734(n)`
-/

namespace A272194.P8753046305325678648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272734 n

end

end A272194.P8753046305325678648

/-! ## A272194.P14515234153038331464

`A008740(A008458(n))-A272734(n)`
-/

namespace A272194.P14515234153038331464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272734 n

end

end A272194.P14515234153038331464

/-! ## A272194.P5046549879610048175

`A022144(A000217(n))+1-A272734(n)`
-/

namespace A272194.P5046549879610048175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat + (1 - A272734 n)

end

end A272194.P5046549879610048175

/-!
# A272195: Numbers k such that (64*10^k + 287)/9 is prime.

The programs for A272195, there is no canonical definition to state claims against.
-/

/-! ## A272195.P6347135310812662616

`A330996(A365695(n))+A191926(n+1)`
-/

namespace A272195.P6347135310812662616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330996 (A365695 n).toNat + A191926 (n + 1)

end

end A272195.P6347135310812662616

/-!
# A272196: Number of solutions of the congruence y^2 == x^3 - 4*x^2 + 16 (mod p) as p runs through the primes.

The programs for A272196, there is no canonical definition to state claims against.
-/

/-! ## A272196.P8771865473287644584

`abs(A073579(n+1))-A002070(n+1)`
-/

namespace A272196.P8771865473287644584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073579 (n + 1)| - A002070 (n + 1)

end

end A272196.P8771865473287644584

/-! ## A272196.P5987611947000545222

`A008578(n+2)-(A002070(n+1)+A000038(n))`
-/

namespace A272196.P5987611947000545222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (A002070 (n + 1) + A000038 n)

end

end A272196.P5987611947000545222

/-! ## A272196.P17776685893458017687

`A004442(A006093(n+1))-A002070(n+1)`
-/

namespace A272196.P17776685893458017687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A006093 (n + 1)).toNat - A002070 (n + 1)

end

end A272196.P17776685893458017687

/-! ## A272196.P1956982782268887798

`A000040(n+1)-A006571(A008578(n+2))%(n+1)`
-/

namespace A272196.P1956982782268887798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - Int.tmod (A006571 (A008578 (n + 2)).toNat) (n + 1 : ℤ)

end

end A272196.P1956982782268887798

/-! ## A272196.P2986109009417013423

`A000040(n+1)-A226075(p?[A080412(n)])`
-/

namespace A272196.P2986109009417013423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A226075 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A272196.P2986109009417013423

/-! ## A272196.P11279840146670016790

`A000040(n+1)-A226075(p?[A181762(n)])`
-/

namespace A272196.P11279840146670016790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A226075 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A272196.P11279840146670016790

/-! ## A272196.P3113525619346213467

`A376073(n+1)-A000038(n)`
-/

namespace A272196.P3113525619346213467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376073 (n + 1) - A000038 n

end

end A272196.P3113525619346213467

/-! ## A272196.P17519292767390540058

`A376073(n+1)/A054977(n)`
-/

namespace A272196.P17519292767390540058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376073 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A272196.P17519292767390540058

/-! ## A272196.P9407959320926102699

`A160656(n+1)-A002070(n+1)`
-/

namespace A272196.P9407959320926102699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 1) - A002070 (n + 1)

end

end A272196.P9407959320926102699

/-!
# A272197: Number of solutions of the congruence y^2 == x^3 + 1 (mod p) as p runs through the primes.

The programs for A272197, there is no canonical definition to state claims against.
-/

/-! ## A272197.P15448595194617728008

`A000040(n+1)-A272198(n+1)`
-/

namespace A272197.P15448595194617728008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A272198 (n + 1)

end

end A272197.P15448595194617728008

/-! ## A272197.P1094908970716808589

`A008864(n+1)-(A272198(n+1)+1)`
-/

namespace A272197.P1094908970716808589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A272198 (n + 1) + 1)

end

end A272197.P1094908970716808589

/-! ## A272197.P2965088052946667254

`A271227(n+1)+A271228(n+1)-A272198(n+1)`
-/

namespace A272197.P2965088052946667254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271227 (n + 1) + (A271228 (n + 1) - A272198 (n + 1))

end

end A272197.P2965088052946667254

/-! ## A272197.P10871889835382952093

`A272202(n+1)+A272203(n+1)-A272198(n+1)`
-/

namespace A272197.P10871889835382952093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272202 (n + 1) + (A272203 (n + 1) - A272198 (n + 1))

end

end A272197.P10871889835382952093

/-! ## A272197.P3068680786997886758

`A008578(n+2)-A272198(n+1)`
-/

namespace A272197.P3068680786997886758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A272198 (n + 1)

end

end A272197.P3068680786997886758

/-! ## A272197.P14637233706939370105

`A182986(n+2)-A272198(n+1)`
-/

namespace A272197.P14637233706939370105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A272198 (n + 1)

end

end A272197.P14637233706939370105

/-! ## A272197.P6263577498579215346

`record[A006530(n+2)]-A272198(n+1)`
-/

namespace A272197.P6263577498579215346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272198 (n + 1)

end

end A272197.P6263577498579215346

/-! ## A272197.P14058912103742699367

`record[A020639(n+2)]-A272198(n+1)`
-/

namespace A272197.P14058912103742699367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272198 (n + 1)

end

end A272197.P14058912103742699367

/-! ## A272197.P634115594087688262

`record[A000010(n+1)+1]-A272198(n+1)`
-/

namespace A272197.P634115594087688262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272198 (n + 1)

end

end A272197.P634115594087688262

/-! ## A272197.P10025868380560968122

`eq[1, A001222(n+1)]+1-A272198(n+1)`
-/

namespace A272197.P10025868380560968122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A272198 (n + 1)

end

end A272197.P10025868380560968122

/-! ## A272197.P2066099435500783530

`eq[2, A000005(n+1)]+1-A272198(n+1)`
-/

namespace A272197.P2066099435500783530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A272198 (n + 1)

end

end A272197.P2066099435500783530

/-! ## A272197.P12019572081995320393

`lt[A001222(n+2), 2]+2-A272198(n+1)`
-/

namespace A272197.P12019572081995320393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) - A272198 (n + 1)

end

end A272197.P12019572081995320393

/-! ## A272197.P16461554917725445725

`p?[A000037(n+1)]-A272198(n+1)`
-/

namespace A272197.P16461554917725445725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272198 (n + 1)

end

end A272197.P16461554917725445725

/-! ## A272197.P2993582691909398798

`record[A014963(n+2)]-A272198(n+1)`
-/

namespace A272197.P2993582691909398798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272198 (n + 1)

end

end A272197.P2993582691909398798

/-! ## A272197.P13915910658548178084

`p?[A060000(n+1)]-A272198(n+1)`
-/

namespace A272197.P13915910658548178084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272198 (n + 1)

end

end A272197.P13915910658548178084

/-! ## A272197.P11580936689838241177

`p?[A090223(n)]-A272198(n+1)`
-/

namespace A272197.P11580936689838241177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272198 (n + 1)

end

end A272197.P11580936689838241177

/-! ## A272197.P13416652360961688057

`p?[A050369(n+1)]-A272198(n+1)`
-/

namespace A272197.P13416652360961688057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272198 (n + 1)

end

end A272197.P13416652360961688057

/-!
# A272198: The p-defect p - N(p) of the congruence y^2 == x^3 + 1 (mod p) for primes p, where N(p) is the number of solutions given by A272197(n).

The programs for A272198, there is no canonical definition to state claims against.
-/

/-! ## A272198.P4497286507662643981

`Δ[A007504(n)]-A272197(n+1)`
-/

namespace A272198.P4497286507662643981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272197 (n + 1)

end

end A272198.P4497286507662643981

/-! ## A272198.P678268889173605532

`A000040(n+1)-A272197(n+1)`
-/

namespace A272198.P678268889173605532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A272197 (n + 1)

end

end A272198.P678268889173605532

/-! ## A272198.P7598516184718383977

`A070750(n+1)*A272203(n+1)`
-/

namespace A272198.P7598516184718383977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A272203 (n + 1)

end

end A272198.P7598516184718383977

/-! ## A272198.P16236769095550998655

`A272202(n+1)+A272203(n+1)-A272197(n+1)`
-/

namespace A272198.P16236769095550998655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272202 (n + 1) + (A272203 (n + 1) - A272197 (n + 1))

end

end A272198.P16236769095550998655

/-! ## A272198.P2086434423187195579

`p?[A000961(n+1)]-A272197(n+1)`
-/

namespace A272198.P2086434423187195579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272197 (n + 1)

end

end A272198.P2086434423187195579

/-! ## A272198.P7586226957404340232

`record[A006530(n+2)]-A272197(n+1)`
-/

namespace A272198.P7586226957404340232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272197 (n + 1)

end

end A272198.P7586226957404340232

/-! ## A272198.P16841605762120384813

`record[A020639(n+2)]-A272197(n+1)`
-/

namespace A272198.P16841605762120384813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272197 (n + 1)

end

end A272198.P16841605762120384813

/-! ## A272198.P7168728593466697603

`record[A000010(n+1)+1]-A272197(n+1)`
-/

namespace A272198.P7168728593466697603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272197 (n + 1)

end

end A272198.P7168728593466697603

/-! ## A272198.P3824000240097204812

`eq[1, A001222(n+1)]+1-A272197(n+1)`
-/

namespace A272198.P3824000240097204812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A272197 (n + 1)

end

end A272198.P3824000240097204812

/-! ## A272198.P10291289888876479976

`eq[2, A000005(n+1)]+1-A272197(n+1)`
-/

namespace A272198.P10291289888876479976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A272197 (n + 1)

end

end A272198.P10291289888876479976

/-! ## A272198.P6128846187176429509

`lt[A001222(n+2), 2]+2-A272197(n+1)`
-/

namespace A272198.P6128846187176429509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) - A272197 (n + 1)

end

end A272198.P6128846187176429509

/-! ## A272198.P17179941530195191802

`p?[A005100(n+1)]-A272197(n+1)`
-/

namespace A272198.P17179941530195191802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272197 (n + 1)

end

end A272198.P17179941530195191802

/-! ## A272198.P6837026857729600258

`p?[A122825(n+1)-2]-A272197(n+1)`
-/

namespace A272198.P6837026857729600258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272197 (n + 1)

end

end A272198.P6837026857729600258

/-! ## A272198.P12929311086999669004

`p?[A014681(n)]-A272197(n+1)`
-/

namespace A272198.P12929311086999669004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272197 (n + 1)

end

end A272198.P12929311086999669004

/-! ## A272198.P14912273259733497619

`p?[A139693(n)]-A272197(n+1)`
-/

namespace A272198.P14912273259733497619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272197 (n + 1)

end

end A272198.P14912273259733497619

/-! ## A272198.P14455909161118038019

`record[A014963(n+2)]-A272197(n+1)`
-/

namespace A272198.P14455909161118038019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272197 (n + 1)

end

end A272198.P14455909161118038019

/-!
# A272199: Expansion of 1/(1 - 2*x + 13*x^2).

The programs for A272199, the canonical program `A272199.P1356672935930454239` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272199 has offset 0).

The definition of A272199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+13x^2))` (program `A272199.P1356672935930454239`, by `A272199.P1356672935930454239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272199.P1356672935930454239

`ogf(1/(1-2x+13x^2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A272199

/-- `ogf(1/(1-2x+13x^2))` -/
def P1356672935930454239.Spec : Prop :=
  ∀ n, P1356672935930454239.a n = A272199 n

theorem P1356672935930454239.correct : P1356672935930454239.Spec := by
  intro n
  simp only [A272199]

end A272199

/-! ## A272199.P17925886166174488715

`2*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A272199.P17925886166174488715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - 13 * a (n - 2)

end

end A272199.P17925886166174488715

namespace A272199

/-- `2*a(n-1)-13*a(n-2)` -/
def P17925886166174488715.Spec : Prop :=
  ∀ n, P17925886166174488715.a n = A272199 n

end A272199

