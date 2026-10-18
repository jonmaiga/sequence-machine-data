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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A124000: Semiprimes in A006987(n), or semiprime binomial coefficients: C(n,k), 2 <= k <= n-2.

The programs for A124000, there is no canonical definition to state claims against.
-/

/-! ## A124000.P6660869521367560631

`filter[A006987(n+1), A354927(#)]`
-/

namespace A124000.P6660869521367560631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A124000.P6660869521367560631

/-! ## A124000.P17350184750533165816

`filter[A182237(n+1), A354927(#)]`
-/

namespace A124000.P17350184750533165816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A124000.P17350184750533165816

/-! ## A124000.P3991276442777418899

`∩[A001358(n+1), A325472(n+1)]`
-/

namespace A124000.P3991276442777418899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124000.P3991276442777418899

/-! ## A124000.P4869268926591827702

`filter[A006987(n+1), A064911(#)]`
-/

namespace A124000.P4869268926591827702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A124000.P4869268926591827702

/-! ## A124000.P12232616461613152237

`filter[A006987(n+1), A101040(#)]`
-/

namespace A124000.P12232616461613152237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A124000.P12232616461613152237

/-!
# A124001: Difference between first twin prime > 10^n and 10^n.

The programs for A124001, there is no canonical definition to state claims against.
-/

/-! ## A124001.P5281972714018533785

`A092245(n+1)-10^n`
-/

namespace A124001.P5281972714018533785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092245 (n + 1) - (10 ^ n : ℤ)

end

end A124001.P5281972714018533785

/-! ## A124001.P6073540029891017214

`abs(A092245(n+1)-A011557(n))`
-/

namespace A124001.P6073540029891017214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092245 (n + 1) - A011557 n|

end

end A124001.P6073540029891017214

/-!
# A124004: Number of possible Reversi games at the end of the n-th ply.

The programs for A124004, there is no canonical definition to state claims against.
-/

/-! ## A124004.P16618332819664709405

`A276040(A150725(n))`
-/

namespace A124004.P16618332819664709405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276040 (A150725 n).toNat

end

end A124004.P16618332819664709405

/-!
# A124005: Number of different Othello positions at the end of the n-th ply.

The programs for A124005, there is no canonical definition to state claims against.
-/

/-! ## A124005.P11621910761692019324

`A283681((n+3)^n+n)`
-/

namespace A124005.P11621910761692019324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283681 ((n + 3) ^ n + n)

end

end A124005.P11621910761692019324

/-!
# A124006: Number of Othello positions with unique realization at the end of the n-th ply.

The programs for A124006, there is no canonical definition to state claims against.
-/

/-! ## A124006.P13431549297466372140

`A004275(or(1, A006373(n)))`
-/

namespace A124006.P13431549297466372140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.lor 1 (A006373 n)).toNat

end

end A124006.P13431549297466372140

/-! ## A124006.P11539232491299552854

`A092535(or(1, A006373(n)))`
-/

namespace A124006.P11539232491299552854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (Int.lor 1 (A006373 n)).toNat

end

end A124006.P11539232491299552854

/-!
# A124007: Number of permutations of n distinct letters (ABCD...) each of which appears thrice with n-3 fixed points.

The programs for A124007, there is no canonical definition to state claims against.
-/

/-! ## A124007.P11365828308280811125

`∑[54*C(n, 2)]`
-/

namespace A124007.P11365828308280811125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124007.P11365828308280811125

/-! ## A124007.P10554122724689219685

`54*C(n+1, 3)`
-/

namespace A124007.P10554122724689219685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  54 * Nat.choose (n + 1) 3

end

end A124007.P10554122724689219685

/-! ## A124007.P8213796075497179623

`9*(n^3-n)`
-/

namespace A124007.P8213796075497179623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((n ^ 3 : ℤ) - (n : ℤ))

end

end A124007.P8213796075497179623

/-! ## A124007.P5857088232726729908

`Δ[18*C(C(n, 2), 2)]`
-/

namespace A124007.P5857088232726729908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * Nat.choose (Nat.choose n 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A124007.P5857088232726729908

/-! ## A124007.P8218081384979884609

`∑[27*lcm(n, 1-n)]`
-/

namespace A124007.P8218081384979884609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * Int.lcm (n : ℤ) (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124007.P8218081384979884609

/-!
# A124008: Number of permutations of n distinct letters (ABCD...) each of which appears thrice with n-4 fixed points.

The programs for A124008, there is no canonical definition to state claims against.
-/

/-! ## A124008.P17688224729438627954

`A059058(∑[2*(n+2)+n+3])`
-/

namespace A124008.P17688224729438627954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) + (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124008.P17688224729438627954

/-!
# A124009: Number of permutations of n distinct letters (ABCD...) each of which appears thrice with one fixed point.

The programs for A124009, there is no canonical definition to state claims against.
-/

/-! ## A124009.P11123088192077362144

`A059058(∑[n+2]+n²)`
-/

namespace A124009.P11123088192077362144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A124009.P11123088192077362144

/-!
# A124010: Triangle in which first row is 0, n-th row (n>1) lists the exponents of distinct prime factors ("ordered prime signature") in the prime factorization of n.

The programs for A124010, there is no canonical definition to state claims against.
-/

/-! ## A124010.P7567687512574619267

`∑{e}[A141809(n+1), #]`
-/

namespace A124010.P7567687512574619267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A124010.P7567687512574619267

/-! ## A124010.P16183451240947783722

`A001222(A141809(n+1))`
-/

namespace A124010.P16183451240947783722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141809 (n + 1)).toNat

end

end A124010.P16183451240947783722

/-! ## A124010.P17587550559314377412

`∑{d}[A141809(n+1), A001221(#)]`
-/

namespace A124010.P17587550559314377412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A124010.P17587550559314377412

/-! ## A124010.P868077435417752197

`A067029(A141809(2*n+1-n))`
-/

namespace A124010.P868077435417752197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A141809 (2 * n + 1 - n)).toNat

end

end A124010.P868077435417752197

/-! ## A124010.P8167386803174439927

`A000005(A141809(n+1))-A033999(n)²`
-/

namespace A124010.P8167386803174439927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A141809 (n + 1)).toNat - A033999 n ^ 2

end

end A124010.P8167386803174439927

/-! ## A124010.P13349708832635612085

`A035306(2*(n+1))%(n+1)`
-/

namespace A124010.P13349708832635612085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035306 (2 * (n + 1))) (n + 1 : ℤ)

end

end A124010.P13349708832635612085

/-! ## A124010.P8152783066377015890

`ceil(A035306(2*n+2)-acot(n))`
-/

namespace A124010.P8152783066377015890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035306 (2 * n + 2) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A124010.P8152783066377015890

/-! ## A124010.P6110666832596388996

`A035306(2*(n+1))*A057427(n)`
-/

namespace A124010.P6110666832596388996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * (n + 1)) * A057427 n

end

end A124010.P6110666832596388996

/-! ## A124010.P11693944806605259666

`A001222(A035306(2*n+1))*A035306(2*(n+1))`
-/

namespace A124010.P11693944806605259666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A035306 (2 * n + 1)).toNat * A035306 (2 * (n + 1))

end

end A124010.P11693944806605259666

/-! ## A124010.P14514100799323912916

`A000720(2*n+1)+A035306(2*(n+1))-A000720(2*(n+1))`
-/

namespace A124010.P14514100799323912916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) + (A035306 (2 * (n + 1)) - A000720 (2 * (n + 1)))

end

end A124010.P14514100799323912916

/-! ## A124010.P356464844144351633

`A035306(2*(n+1))-and(1, A000079(n)²)`
-/

namespace A124010.P356464844144351633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * (n + 1)) - Int.land 1 (A000079 n ^ 2)

end

end A124010.P356464844144351633

/-! ## A124010.P9283057969963237986

`A035306(2*(n+1))-and(1, A000079(2*n))`
-/

namespace A124010.P9283057969963237986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035306 (2 * (n + 1)) - Int.land 1 (A000079 (2 * n))

end

end A124010.P9283057969963237986

/-!
# A124011: Add three, add six, add nine, ....

The programs for A124011, the canonical program `A124011.P4039193050665349480` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124011 has offset 1).

The definition of A124011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124011.P4039193050665349480

`3*n+a(n-1)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124011

/-- `3*n+a(n-1)` -/
def P4039193050665349480.Spec : Prop :=
  ∀ n, (P4039193050665349480.a n : ℤ) = A124011 (n + 1)

theorem P4039193050665349480.correct : P4039193050665349480.Spec := by
  intro n
  simp only [A124011, Nat.add_sub_cancel]

end A124011

/-! ## A124011.P17777656763723092668

`3*(n+1)*n/2+5`
-/

namespace A124011.P17777656763723092668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) * ((n : ℚ) / 2)) + 5

end

end A124011.P17777656763723092668

namespace A124011

/-- `3*(n+1)*n/2+5` -/
def P17777656763723092668.Spec : Prop :=
  ∀ n, P17777656763723092668.a n = (A124011 (n + 1) : ℚ)

theorem P17777656763723092668.correct : P17777656763723092668.Spec := by
  intro n
  induction n with
  | zero => simp [A124011, A124011.P17777656763723092668.a, A124011.P4039193050665349480.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A124011, Nat.add_sub_cancel, A124011.P17777656763723092668.a, A124011.P4039193050665349480.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A124011

/-! ## A124011.P3890841031941485234

`∑[a(n-1)+3]` with `a(0)=5, a(1)=3`
-/

namespace A124011.P3890841031941485234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124011.P3890841031941485234

namespace A124011

/-- `∑[a(n-1)+3]` -/
def P3890841031941485234.Spec : Prop :=
  ∀ n, (P3890841031941485234.a n : ℤ) = A124011 (n + 1)

end A124011

/-! ## A124011.P13867892181576774365

`ceil(3*(C(n+1, 2)+ϕ))`
-/

namespace A124011.P13867892181576774365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((Nat.choose (n + 1) 2 : ℝ) + Real.goldenRatio)⌉

end

end A124011.P13867892181576774365

namespace A124011

/-- `ceil(3*(C(n+1, 2)+ϕ))` -/
def P13867892181576774365.Spec : Prop :=
  ∀ n, P13867892181576774365.a n = A124011 (n + 1)

end A124011

/-! ## A124011.P10647315179288097335

`round(3*(C(n+1, 2)+ϕ))`
-/

namespace A124011.P10647315179288097335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.choose (n + 1) 2 : ℝ) + Real.goldenRatio))

end

end A124011.P10647315179288097335

namespace A124011

/-- `round(3*(C(n+1, 2)+ϕ))` -/
def P10647315179288097335.Spec : Prop :=
  ∀ n, P10647315179288097335.a n = A124011 (n + 1)

end A124011

/-! ## A124011.P1679841098719055678

`Δ[(n+1)*(C(n, 2)+5)]`
-/

namespace A124011.P1679841098719055678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.choose n 2 + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A124011.P1679841098719055678

namespace A124011

/-- `Δ[(n+1)*(C(n, 2)+5)]` -/
def P1679841098719055678.Spec : Prop :=
  ∀ n, P1679841098719055678.a n = A124011 (n + 1)

end A124011

/-! ## A124011.P4986048078707685139

`∑[3*n%a(n-1)]` with `a(0)=5`
-/

namespace A124011.P4986048078707685139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  3 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124011.P4986048078707685139

namespace A124011

/-- `∑[3*n%a(n-1)]` -/
def P4986048078707685139.Spec : Prop :=
  ∀ n, (P4986048078707685139.a n : ℤ) = A124011 (n + 1)

end A124011

/-! ## A124011.P16558636886889886313

`abs(n-a(n-1)-4*n)` with `a(0)=5`
-/

namespace A124011.P16558636886889886313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |(n : ℤ) - a (n - 1) - (4 * n : ℤ)|

end

end A124011.P16558636886889886313

namespace A124011

/-- `abs(n-a(n-1)-4*n)` -/
def P16558636886889886313.Spec : Prop :=
  ∀ n, P16558636886889886313.a n = A124011 (n + 1)

end A124011

/-! ## A124011.P3303268522936186899

`floor(4*n-(n-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A124011.P3303268522936186899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (4 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A124011.P3303268522936186899

namespace A124011

/-- `floor(4*n-(n-a(n-1)))` -/
def P3303268522936186899.Spec : Prop :=
  ∀ n, P3303268522936186899.a n = A124011 (n + 1)

end A124011

/-! ## A124011.P5097623361082016090

`round(cosh(log(n*3*(n+1)+9)))`
-/

namespace A124011.P5097623361082016090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (n * (3 * (n + 1)) + 9 : ℝ)))

end

end A124011.P5097623361082016090

namespace A124011

/-- `round(cosh(log(n*3*(n+1)+9)))` -/
def P5097623361082016090.Spec : Prop :=
  ∀ n, P5097623361082016090.a n = A124011 (n + 1)

end A124011

/-! ## A124011.P1121048492367499508

`floor(a(n-1)+n+n+n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A124011.P1121048492367499508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + n + n + n

end

end A124011.P1121048492367499508

namespace A124011

/-- `floor(a(n-1)+n+n+n)` -/
def P1121048492367499508.Spec : Prop :=
  ∀ n, (P1121048492367499508.a n : ℤ) = A124011 (n + 1)

end A124011

/-! ## A124011.P11678726616608763491

`∑[5-(4/2-a(n-1))]` with `a(0)=5, a(1)=3`
-/

namespace A124011.P11678726616608763491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  5 - ((4 : ℚ) / 2 - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124011.P11678726616608763491

namespace A124011

/-- `∑[5-(4/2-a(n-1))]` -/
def P11678726616608763491.Spec : Prop :=
  ∀ n, P11678726616608763491.a n = (A124011 (n + 1) : ℚ)

end A124011

/-! ## A124011.P11922466959646881306

`4*(n-(n-a(n-1))/4)` with `a(0)=5`
-/

namespace A124011.P11922466959646881306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * ((n : ℚ) - ((n : ℚ) - a (n - 1)) / 4)

end

end A124011.P11922466959646881306

namespace A124011

/-- `4*(n-(n-a(n-1))/4)` -/
def P11922466959646881306.Spec : Prop :=
  ∀ n, P11922466959646881306.a n = (A124011 (n + 1) : ℚ)

end A124011

/-! ## A124011.P11272038746899558017

`∑[n*(3*n-a(n-1))]` with `a(0)=5, a(1)=3`
-/

namespace A124011.P11272038746899558017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  (n : ℤ) * ((3 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124011.P11272038746899558017

namespace A124011

/-- `∑[n*(3*n-a(n-1))]` -/
def P11272038746899558017.Spec : Prop :=
  ∀ n, P11272038746899558017.a n = A124011 (n + 1)

end A124011

/-! ## A124011.P1966497523267628997

`(A378569(n)+3)/2`
-/

namespace A124011.P1966497523267628997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378569 n + 3 : ℚ) / 2

end

end A124011.P1966497523267628997

namespace A124011

/-- `(A378569(n)+3)/2` -/
def P1966497523267628997.Spec : Prop :=
  ∀ n, P1966497523267628997.a n = (A124011 (n + 1) : ℚ)

end A124011

/-! ## A124011.P2121620008241290728

`A228318(n+1)%A269457(n)`
-/

namespace A124011.P2121620008241290728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228318 (n + 1)) (A269457 n)

end

end A124011.P2121620008241290728

namespace A124011

/-- `A228318(n+1)%A269457(n)` -/
def P2121620008241290728.Spec : Prop :=
  ∀ n, P2121620008241290728.a n = A124011 (n + 1)

end A124011

/-! ## A124011.P1383849427110036417

`A304162(n+1)%A339048(n)`
-/

namespace A124011.P1383849427110036417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304162 (n + 1)) (A339048 n)

end

end A124011.P1383849427110036417

namespace A124011

/-- `A304162(n+1)%A339048(n)` -/
def P1383849427110036417.Spec : Prop :=
  ∀ n, P1383849427110036417.a n = A124011 (n + 1)

end A124011

/-!
# A124014: a(n) = the sum of the terms in the n-th antidiagonal of A124975.

The programs for A124014, there is no canonical definition to state claims against.
-/

/-! ## A124014.P8529420578591288926

`A019529(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A124014.P8529420578591288926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  A019529 (a (n - 1)).toNat

end

end A124014.P8529420578591288926

/-! ## A124014.P13593838044953582396

`2*A283106(a(n-1)+1)` with `a(0)=1`
-/

namespace A124014.P13593838044953582396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A283106 (a (n - 1) + 1).toNat

end

end A124014.P13593838044953582396

/-!
# A124016: Number of connected d-complete posets with n elements.

The programs for A124016, there is no canonical definition to state claims against.
-/

/-! ## A124016.P5442359195787563598

`round((A313894(n)-4+n)^(n/5))`
-/

namespace A124016.P5442359195787563598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313894 n - 4 + (n : ℤ) : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A124016.P5442359195787563598

/-! ## A124016.P2429893459381123037

`A191877(A347764(n))`
-/

namespace A124016.P2429893459381123037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191877 (A347764 n).toNat

end

end A124016.P2429893459381123037

/-! ## A124016.P8950625215203508037

`A100679(A002861(n+1))`
-/

namespace A124016.P8950625215203508037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100679 (A002861 (n + 1)).toNat

end

end A124016.P8950625215203508037

/-! ## A124016.P1110407348875490076

`A127757(A138017(n+1))`
-/

namespace A124016.P1110407348875490076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A138017 (n + 1)).toNat

end

end A124016.P1110407348875490076

/-! ## A124016.P6601724597158289322

`A275210(n)+A107113(n)`
-/

namespace A124016.P6601724597158289322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275210 n + A107113 n

end

end A124016.P6601724597158289322

/-!
# A124017: Numbers n for which 2n-1, 4n-1, 8n-1, 16n-1 and 32n-1 are primes.

The programs for A124017, there is no canonical definition to state claims against.
-/

/-! ## A124017.P12460120453277754465

`ceil(A023302(n+2)/2)`
-/

namespace A124017.P12460120453277754465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023302 (n + 2) : ℚ) / 2⌉

end

end A124017.P12460120453277754465

/-! ## A124017.P1449644485699359778

`ceil(A162019(n+2)/8)`
-/

namespace A124017.P1449644485699359778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162019 (n + 2) : ℚ) / 8⌉

end

end A124017.P1449644485699359778

/-! ## A124017.P14252010550893049673

`∩[A101794(n+1), A124494(n+1)]`
-/

namespace A124017.P14252010550893049673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124017.P14252010550893049673

/-! ## A124017.P4598126800963742509

`round(A162019(n+2)/8)%A017020(n)`
-/

namespace A124017.P4598126800963742509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A162019 (n + 2) : ℚ) / 8)) (A017020 n)

end

end A124017.P4598126800963742509

/-! ## A124017.P9942689830772794174

`lcm(round(A162019(n+2)/8), A033999(n))`
-/

namespace A124017.P9942689830772794174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A162019 (n + 2) : ℚ) / 8)) (A033999 n)

end

end A124017.P9942689830772794174

/-! ## A124017.P3803607932439459706

`A000007(n+1)+round(A162019(n+2)/8)`
-/

namespace A124017.P3803607932439459706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A162019 (n + 2) : ℚ) / 8)

end

end A124017.P3803607932439459706

/-! ## A124017.P13391654948066312491

`round(A162019(n+2)/8)*A000034(2*n)`
-/

namespace A124017.P13391654948066312491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A162019 (n + 2) : ℚ) / 8) * A000034 (2 * n)

end

end A124017.P13391654948066312491

/-! ## A124017.P15494885786836790301

`or(round(A162019(n+2)/8), A069517(2*n+1))`
-/

namespace A124017.P15494885786836790301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A162019 (n + 2) : ℚ) / 8)) (A069517 (2 * n + 1))

end

end A124017.P15494885786836790301

/-! ## A124017.P7506088856616988732

`round(A162019(n+2)/8)*A014963(A138511(n+1))`
-/

namespace A124017.P7506088856616988732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A162019 (n + 2) : ℚ) / 8) * A014963 (A138511 (n + 1)).toNat

end

end A124017.P7506088856616988732

/-! ## A124017.P7049797994926822263

`A069517(A001748(n+1))+round(A162019(n+2)/8)`
-/

namespace A124017.P7049797994926822263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A001748 (n + 1)).toNat + SequenceMachineLib.roundAway ((A162019 (n + 2) : ℚ) / 8)

end

end A124017.P7049797994926822263

/-! ## A124017.P1714447359103391222

`∩[A101794(n+1), A124493(n+1)]`
-/

namespace A124017.P1714447359103391222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124017.P1714447359103391222

/-! ## A124017.P14596210755549966069

`A069517(A044288(n+1)-n)+round(A162019(n+2)/8)`
-/

namespace A124017.P14596210755549966069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A044288 (n + 1) - (n : ℤ)).toNat + SequenceMachineLib.roundAway ((A162019 (n + 2) : ℚ) / 8)

end

end A124017.P14596210755549966069

/-!
# A124018: Triangle T(n,k) = A136451(n,k), except T(0,0)=2.

The programs for A124018, there is no canonical definition to state claims against.
-/

/-! ## A124018.P12053343947350493092

`A136451(floor(acot(n)+n))`
-/

namespace A124018.P12053343947350493092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136451 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A124018.P12053343947350493092

/-! ## A124018.P2840566973779645320

`A136451(n^floor(atan(n)))`
-/

namespace A124018.P2840566973779645320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136451 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A124018.P2840566973779645320

/-! ## A124018.P9320456014884425317

`ceil(acot(n))*A136451(n)`
-/

namespace A124018.P9320456014884425317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A136451 n

end

end A124018.P9320456014884425317

/-! ## A124018.P9757872338053363688

`A136451(C(n, floor(atan(n))))`
-/

namespace A124018.P9757872338053363688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136451 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A124018.P9757872338053363688

/-! ## A124018.P14305093017123035472

`A136451(or(n, floor(acot(n))))`
-/

namespace A124018.P14305093017123035472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136451 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A124018.P14305093017123035472

/-! ## A124018.P1484213142598913501

`A136451(round(sqrt(n²+1)))`
-/

namespace A124018.P1484213142598913501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136451 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A124018.P1484213142598913501

/-! ## A124018.P2298069551959705099

`A136451(n)+A000007(n)`
-/

namespace A124018.P2298069551959705099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136451 n + A000007 n

end

end A124018.P2298069551959705099

/-! ## A124018.P10764534825268341534

`A151878(n)+A136451(n)`
-/

namespace A124018.P10764534825268341534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A136451 n

end

end A124018.P10764534825268341534

/-! ## A124018.P15232015877043958382

`A151909(n)+A136451(n)`
-/

namespace A124018.P15232015877043958382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A136451 n

end

end A124018.P15232015877043958382

/-! ## A124018.P5144731621460281461

`A151933(n)+A136451(n)`
-/

namespace A124018.P5144731621460281461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A136451 n

end

end A124018.P5144731621460281461

/-!
# A124019: Triangle read by rows: T(0,0)=1; for n>=1 T(n,k) is the coefficient of x^k in the monic characteristic polynomial of the n X n band matrix with main diagonal 2,3,3,..., subdiagonal -3,-3,-3,..., sub-subdiagonal 1,1,1,... and superdiagonal -1,-1,-1,... (0<=k<=n).

The programs for A124019, there is no canonical definition to state claims against.
-/

/-! ## A124019.P12490230765732862868

`(and(2, comp[∑[n]]+n)-1)*A124819(n)`
-/

namespace A124019.P12490230765732862868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A124819 n

end

end A124019.P12490230765732862868

/-! ## A124019.P2265235623103211336

`A097807(n)*A124819(n)`
-/

namespace A124019.P2265235623103211336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A124819 n

end

end A124019.P2265235623103211336

/-! ## A124019.P17577747722171124696

`A015343(A025581(n))*A124819(n)`
-/

namespace A124019.P17577747722171124696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A025581 n).toNat * A124819 n

end

end A124019.P17577747722171124696

/-! ## A124019.P7752571457134341215

`A015343(A051933(n))*A124819(n)`
-/

namespace A124019.P7752571457134341215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A051933 n).toNat * A124819 n

end

end A124019.P7752571457134341215

/-! ## A124019.P13386424887338848027

`A033999(A063656(n))*A124819(n)`
-/

namespace A124019.P13386424887338848027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A124819 n

end

end A124019.P13386424887338848027

/-! ## A124019.P5010929375832095851

`A020985(A130330(n))*A124819(n)`
-/

namespace A124019.P5010929375832095851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A124819 n

end

end A124019.P5010929375832095851

/-! ## A124019.P13658680413182020572

`A124819(n)*A164677(A099375(n))`
-/

namespace A124019.P13658680413182020572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124819 n * A164677 (A099375 n).toNat

end

end A124019.P13658680413182020572

/-! ## A124019.P12064595721047157342

`A124819(n)/A097807(A254109(n))`
-/

namespace A124019.P12064595721047157342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124819 n : ℚ) / (A097807 (A254109 n).toNat : ℚ)

end

end A124019.P12064595721047157342

/-! ## A124019.P8150899453372749212

`A124819(n)/A033999(A025581(n)²)`
-/

namespace A124019.P8150899453372749212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124819 n : ℚ) / (A033999 (A025581 n ^ 2).toNat : ℚ)

end

end A124019.P8150899453372749212

/-! ## A124019.P3357430930856149433

`A033999(A025581(n)+2)*A124819(n)`
-/

namespace A124019.P3357430930856149433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n + 2).toNat * A124819 n

end

end A124019.P3357430930856149433

/-!
# A124023: G.f.: 1/(1-2*x-6*x^2+4*x^3).

The programs for A124023, the canonical program `A124023.P7075286621203498317` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124023 has offset 0).

The definition of A124023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124023.P7075286621203498317

`2*(A003480(n)-a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124023

/-- `2*(A003480(n)-a(n-1))` -/
def P7075286621203498317.Spec : Prop :=
  ∀ n, P7075286621203498317.a n = A124023 n

theorem P7075286621203498317.correct : P7075286621203498317.Spec := by
  intro n
  simp only [A124023]

end A124023

/-! ## A124023.P9427641912313014173

`A007070(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A124023.P9427641912313014173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007070 n - 2 * a (n - 1)

end

end A124023.P9427641912313014173

namespace A124023

/-- `A007070(n)-2*a(n-1)` -/
def P9427641912313014173.Spec : Prop :=
  ∀ n, P9427641912313014173.a n = A124023 n

end A124023

/-! ## A124023.P5781168964990573487

`A006012(n)+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A124023.P5781168964990573487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006012 n + 4 * a (n - 2)

end

end A124023.P5781168964990573487

namespace A124023

/-- `A006012(n)+4*a(n-2)` -/
def P5781168964990573487.Spec : Prop :=
  ∀ n, P5781168964990573487.a n = A124023 n

end A124023

/-! ## A124023.P1765319796752364624

`∑[A007052(n)]-2*a(n-1)` with `a(0)=1`
-/

namespace A124023.P1765319796752364624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * a (n - 1)

end

end A124023.P1765319796752364624

namespace A124023

/-- `∑[A007052(n)]-2*a(n-1)` -/
def P1765319796752364624.Spec : Prop :=
  ∀ n, P1765319796752364624.a n = A124023 n

end A124023

/-! ## A124023.P5636842184889384482

`A204089(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A124023.P5636842184889384482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204089 (n + 1) - 2 * a (n - 1)

end

end A124023.P5636842184889384482

namespace A124023

/-- `A204089(n+1)-2*a(n-1)` -/
def P5636842184889384482.Spec : Prop :=
  ∀ n, P5636842184889384482.a n = A124023 n

end A124023

/-!
# A124025: Recursive polynomial from a tridiagonal matrix version of A123965: p(k, x) = ((x - b(k - 1))*p(k - 1, x) - a(k - 2) *p(k - 2, x))/a(n - 1); a(n)=-1;b(n)=3;.

The programs for A124025, there is no canonical definition to state claims against.
-/

/-! ## A124025.P122568517623369710

`A123965(n)%(9*n+7)²`
-/

namespace A124025.P122568517623369710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123965 n) ((9 * n + 7) ^ 2 : ℤ)

end

end A124025.P122568517623369710

/-! ## A124025.P13406341167570521121

`A123965(A272159(n+1))`
-/

namespace A124025.P13406341167570521121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 (A272159 (n + 1)).toNat

end

end A124025.P13406341167570521121

/-! ## A124025.P15623305911776886555

`A123965(n)+char[A094776(n)]`
-/

namespace A124025.P15623305911776886555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094776 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A124025.P15623305911776886555

/-! ## A124025.P6552475093844956201

`A123965(n)+char[A267078(n)]`
-/

namespace A124025.P6552475093844956201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A124025.P6552475093844956201

/-! ## A124025.P12487526742080388719

`A123965(n*A323022(n+1))`
-/

namespace A124025.P12487526742080388719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 ((n : ℤ) * A323022 (n + 1)).toNat

end

end A124025.P12487526742080388719

/-! ## A124025.P16234708049625356767

`A123965(lcm(n, A323022(n+1)))`
-/

namespace A124025.P16234708049625356767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 (Int.lcm (n : ℤ) (A323022 (n + 1)))

end

end A124025.P16234708049625356767

/-! ## A124025.P1565046888023583304

`A123965(n)+C(A003056(n), 12)`
-/

namespace A124025.P1565046888023583304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 n + (Nat.choose (A003056 n).toNat 12 : ℤ)

end

end A124025.P1565046888023583304

/-! ## A124025.P7831344575289499286

`A335514(floor(n/12))+A123965(n)`
-/

namespace A124025.P7831344575289499286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335514 ⌊(n : ℚ) / 12⌋.toNat + A123965 n

end

end A124025.P7831344575289499286

/-! ## A124025.P2907379375559804380

`A123965(n)+char[A138817(n+1)]`
-/

namespace A124025.P2907379375559804380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138817 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A124025.P2907379375559804380

/-! ## A124025.P3860209317413450199

`A123965(n)+char[A157888(n+1)]`
-/

namespace A124025.P3860209317413450199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157888 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123965 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A124025.P3860209317413450199

/-!
# A124026: Let M = {{0, -1, 2}, {-1, 2, -1}, {2, -1, 0}}; v[1] = {0, 0, 1}; v[n] = M.v[n - 1]; then a(n) = v[n][[1]].

The programs for A124026, the canonical program `A124026.P2667189305924375580` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124026 has offset 1).

The definition of A124026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124026.P2667189305924375580

`2*a(n-1)+6*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124026

/-- `2*a(n-1)+6*a(n-2)-4*a(n-3)` -/
def P2667189305924375580.Spec : Prop :=
  ∀ n, P2667189305924375580.a n = A124026 (n + 1)

theorem P2667189305924375580.correct : P2667189305924375580.Spec := by
  intro n
  simp only [A124026, Nat.add_sub_cancel]

end A124026

/-! ## A124026.P10066471236283993092

`A024175(n+1)-A199572(n)`
-/

namespace A124026.P10066471236283993092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1) - A199572 n

end

end A124026.P10066471236283993092

namespace A124026

/-- `A024175(n+1)-A199572(n)` -/
def P10066471236283993092.Spec : Prop :=
  ∀ n, P10066471236283993092.a n = A124026 (n + 1)

end A124026

/-! ## A124026.P7790816707226972621

`A024175(n+1)-A077957(n)²`
-/

namespace A124026.P7790816707226972621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1) - A077957 n ^ 2

end

end A124026.P7790816707226972621

namespace A124026

/-- `A024175(n+1)-A077957(n)²` -/
def P7790816707226972621.Spec : Prop :=
  ∀ n, P7790816707226972621.a n = A124026 (n + 1)

end A124026

/-! ## A124026.P11919230653068766131

`A024175(n+1)-(1-A052552(n))²`
-/

namespace A124026.P11919230653068766131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1) - (1 - A052552 n) ^ 2

end

end A124026.P11919230653068766131

namespace A124026

/-- `A024175(n+1)-(1-A052552(n))²` -/
def P11919230653068766131.Spec : Prop :=
  ∀ n, P11919230653068766131.a n = A124026 (n + 1)

end A124026

/-! ## A124026.P17035364395598918266

`((-2)^(1+n)+(2-sqrt(2))^n+(2+sqrt(2))^n)/4`
-/

namespace A124026.P17035364395598918266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((-2) ^ (1 + n) : ℝ) + (2 - Real.sqrt (2 : ℝ)) ^ n + (2 + Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A124026.P17035364395598918266

namespace A124026

/-- `((-2)^(1+n)+(2-sqrt(2))^n+(2+sqrt(2))^n)/4` -/
def P17035364395598918266.Spec : Prop :=
  ∀ n, P17035364395598918266.a n = (A124026 (n + 1) : ℝ)

end A124026

/-!
# A124027: G. J. Chaitin's numbers of s-expressions of size n are given by the coefficients of polynomials p(k, x) satisfying p(k, x) = Sum[p(j, x)*p(k - j, x), {j, 2, k - 1}]. The coefficients of these polynomials give the triangle shown here.

The programs for A124027, there is no canonical definition to state claims against.
-/

/-! ## A124027.P6327419396950281660

`A269242(A322926(n)+A268726(n))`
-/

namespace A124027.P6327419396950281660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269242 (A322926 n + A268726 n).toNat

end

end A124027.P6327419396950281660

/-! ## A124027.P16496665859619984300

`A017913(n)%A304486(A250120(n))`
-/

namespace A124027.P16496665859619984300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017913 n) (A304486 (A250120 n).toNat)

end

end A124027.P16496665859619984300

/-! ## A124027.P7770702184844645985

`A259313(A266744(n))%A070939(n)`
-/

namespace A124027.P7770702184844645985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259313 (A266744 n).toNat) (A070939 n)

end

end A124027.P7770702184844645985

/-! ## A124027.P10196532813749555047

`and(A339409(n), A347187(A023360(n)))`
-/

namespace A124027.P10196532813749555047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A339409 n) (A347187 (A023360 n).toNat)

end

end A124027.P10196532813749555047

/-! ## A124027.P12790439954579167926

`A033093(A327048(n))%A348485(n+1)`
-/

namespace A124027.P12790439954579167926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033093 (A327048 n).toNat) (A348485 (n + 1))

end

end A124027.P12790439954579167926

/-!
# A124029: Triangle T(n,k) with the coefficient [x^k] of the characteristic polynomial of the following n X n triangular matrix: 4 on the main diagonal, -1 of the two adjacent subdiagonals, 0 otherwise.

The programs for A124029, there is no canonical definition to state claims against.
-/

/-! ## A124029.P189998480487905375

`A123966(n)/A016777(C(2, n+2))`
-/

namespace A124029.P189998480487905375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123966 n : ℚ) / (A016777 (Nat.choose 2 (n + 2)) : ℚ)

end

end A124029.P189998480487905375

/-! ## A124029.P16454452447656138171

`A123966(n)^A001221(A001316(n))`
-/

namespace A124029.P16454452447656138171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123966 n : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A124029.P16454452447656138171

/-! ## A124029.P10778224294056189045

`A123966(n)^A001221(A034699(n+1))`
-/

namespace A124029.P10778224294056189045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123966 n : ℚ) ^ (A001221 (A034699 (n + 1)).toNat : ℤ)

end

end A124029.P10778224294056189045

/-! ## A124029.P9403687722703383466

`A123966(n)^A001221(A175944(n+1))`
-/

namespace A124029.P9403687722703383466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123966 n : ℚ) ^ (A001221 (A175944 (n + 1)).toNat : ℤ)

end

end A124029.P9403687722703383466

/-! ## A124029.P7271807952739011343

`Δ[A010751(n)]*A159764(n)`
-/

namespace A124029.P7271807952739011343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A159764 n

end

end A124029.P7271807952739011343

/-! ## A124029.P10423559520120344731

`A123966(n)^Δ[A002262(n)]`
-/

namespace A124029.P10423559520120344731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123966 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A124029.P10423559520120344731

/-! ## A124029.P7348842823251415574

`A123966(n)^A001222(A008578(n+1))`
-/

namespace A124029.P7348842823251415574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123966 n : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A124029.P7348842823251415574

/-! ## A124029.P8129930946263136337

`A123967(n)/A179900(n)*A159764(n)`
-/

namespace A124029.P8129930946263136337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123967 n : ℚ) / (A179900 n : ℚ) * (A159764 n : ℚ)

end

end A124029.P8129930946263136337

/-! ## A124029.P11494791319910221208

`A123966(n)%A000412(n)`
-/

namespace A124029.P11494791319910221208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123966 n) (A000412 n)

end

end A124029.P11494791319910221208

/-! ## A124029.P1086269626067591415

`A033999(A133280(n))*A159764(n)`
-/

namespace A124029.P1086269626067591415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A133280 n).toNat * A159764 n

end

end A124029.P1086269626067591415

/-!
# A124033: Number of n-digit numbers having exactly n prime factors (counted with multiplicity).

The programs for A124033, there is no canonical definition to state claims against.
-/

/-! ## A124033.P15583647601165104501

`A036335(n+1)+4*floor(acot(n))`
-/

namespace A124033.P15583647601165104501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036335 (n + 1) + 4 * ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A124033.P15583647601165104501

/-! ## A124033.P15878718638638855668

`A036335(n+1)+A000038(n)²`
-/

namespace A124033.P15878718638638855668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036335 (n + 1) + A000038 n ^ 2

end

end A124033.P15878718638638855668

/-! ## A124033.P248571168521541366

`or(A248394(3*(n+1))², A036335(n+1))`
-/

namespace A124033.P248571168521541366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A248394 (3 * (n + 1)) ^ 2) (A036335 (n + 1))

end

end A124033.P248571168521541366

/-! ## A124033.P2049521785763956613

`or(A007462(floor(3/(n+1))), A036335(n+1))`
-/

namespace A124033.P2049521785763956613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007462 ⌊3 / (n + 1 : ℚ)⌋.toNat) (A036335 (n + 1))

end

end A124033.P2049521785763956613

/-! ## A124033.P9303017573245361560

`or(A032766(floor(3/(n+1))), A036335(n+1))`
-/

namespace A124033.P9303017573245361560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032766 ⌊3 / (n + 1 : ℚ)⌋.toNat) (A036335 (n + 1))

end

end A124033.P9303017573245361560

/-!
# A124037: Triangle read by rows: row n gives coefficients of increasing powers of x in characteristic polynomial of the matrix (-1)^n*M_n, where M_n is the tridiagonal matrix defined in the Comments line.

The programs for A124037, there is no canonical definition to state claims against.
-/

/-! ## A124037.P1287208788224144753

`2*A123971(n)-A123965(n)`
-/

namespace A124037.P1287208788224144753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123971 n - A123965 n

end

end A124037.P1287208788224144753

/-! ## A124037.P4370245448048216679

`A033999(A003056(n))*A126126(n)`
-/

namespace A124037.P4370245448048216679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A126126 n

end

end A124037.P4370245448048216679

/-! ## A124037.P15244465643215672845

`A033999(A002262(n))*A238731(n)`
-/

namespace A124037.P15244465643215672845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A238731 n

end

end A124037.P15244465643215672845

/-! ## A124037.P7890236436818061603

`A097807(A057944(n))*A126126(n)`
-/

namespace A124037.P7890236436818061603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A057944 n).toNat * A126126 n

end

end A124037.P7890236436818061603

/-! ## A124037.P16829150504805071412

`A165326(A002260(n+1))*A238731(n)`
-/

namespace A124037.P16829150504805071412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A002260 (n + 1)).toNat * A238731 n

end

end A124037.P16829150504805071412

/-! ## A124037.P8420197753353526749

`A033999(A003057(n+2))*A126126(n)`
-/

namespace A124037.P8420197753353526749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003057 (n + 2)).toNat * A126126 n

end

end A124037.P8420197753353526749

/-! ## A124037.P12538844286042195462

`Δ[A010751(n)]*A126126(n)`
-/

namespace A124037.P12538844286042195462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A126126 n

end

end A124037.P12538844286042195462

/-! ## A124037.P5307610541365661733

`A008836(A059268(n))*A238731(n)`
-/

namespace A124037.P5307610541365661733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A238731 n

end

end A124037.P5307610541365661733

/-! ## A124037.P16285667204432605130

`abs(A126126(n))*A093829(A059268(n))`
-/

namespace A124037.P16285667204432605130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126126 n| * A093829 (A059268 n).toNat

end

end A124037.P16285667204432605130

/-!
# A124038: Triangle read by rows: T(n, k) = T(n-1, k-1) - T(n-2, k), with T(n, n) = 1, T(n, n-1) = -2.

The programs for A124038, the canonical program `A124038.P9601682985692789633` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124038 has offset 0).

The definition of A124038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124038.P9601682985692789633

`A130777(n)*A131406(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124038

/-- `A130777(n)*A131406(n+1)` -/
def P9601682985692789633.Spec : Prop :=
  ∀ n, P9601682985692789633.a n = A124038 n

theorem P9601682985692789633.correct : P9601682985692789633.Spec := by
  intro n
  simp only [A124038]

end A124038

/-! ## A124038.P15770723801096232288

`2*A130777(n)-A049310(n)`
-/

namespace A124038.P15770723801096232288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130777 n - A049310 n

end

end A124038.P15770723801096232288

namespace A124038

/-- `2*A130777(n)-A049310(n)` -/
def P15770723801096232288.Spec : Prop :=
  ∀ n, P15770723801096232288.a n = A124038 n

end A124038

/-! ## A124038.P9408307894835371186

`A130321(n)%3*A130777(n)`
-/

namespace A124038.P9408307894835371186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130321 n) 3 * A130777 n

end

end A124038.P9408307894835371186

namespace A124038

/-- `A130321(n)%3*A130777(n)` -/
def P9408307894835371186.Spec : Prop :=
  ∀ n, P9408307894835371186.a n = A124038 n

end A124038

/-! ## A124038.P755716726948558220

`(2-A128174(n+1))*A130777(n)`
-/

namespace A124038.P755716726948558220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A128174 (n + 1)) * A130777 n

end

end A124038.P755716726948558220

namespace A124038

/-- `(2-A128174(n+1))*A130777(n)` -/
def P755716726948558220.Spec : Prop :=
  ∀ n, P755716726948558220.a n = A124038 n

end A124038

/-! ## A124038.P5198704137906272682

`(A025581(n)%2+1)*A130777(n)`
-/

namespace A124038.P5198704137906272682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A025581 n) 2 + 1) * A130777 n

end

end A124038.P5198704137906272682

namespace A124038

/-- `(A025581(n)%2+1)*A130777(n)` -/
def P5198704137906272682.Spec : Prop :=
  ∀ n, P5198704137906272682.a n = A124038 n

end A124038

/-! ## A124038.P11592852451005952740

`gcd(2, A004736(n+1))*A130777(n)`
-/

namespace A124038.P11592852451005952740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A004736 (n + 1)) : ℤ) * A130777 n

end

end A124038.P11592852451005952740

namespace A124038

/-- `gcd(2, A004736(n+1))*A130777(n)` -/
def P11592852451005952740.Spec : Prop :=
  ∀ n, P11592852451005952740.a n = A124038 n

end A124038

/-! ## A124038.P17021775305864502494

`A000034(A025581(n))*A130777(n)`
-/

namespace A124038.P17021775305864502494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A025581 n).toNat * A130777 n

end

end A124038.P17021775305864502494

namespace A124038

/-- `A000034(A025581(n))*A130777(n)` -/
def P17021775305864502494.Spec : Prop :=
  ∀ n, P17021775305864502494.a n = A124038 n

end A124038

/-! ## A124038.P17431959336064001074

`A000034(A051162(n))*A130777(n)`
-/

namespace A124038.P17431959336064001074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A051162 n).toNat * A130777 n

end

end A124038.P17431959336064001074

namespace A124038

/-- `A000034(A051162(n))*A130777(n)` -/
def P17431959336064001074.Spec : Prop :=
  ∀ n, P17431959336064001074.a n = A124038 n

end A124038

/-! ## A124038.P12622967188738525506

`A000034(A054238(n))*A130777(n)`
-/

namespace A124038.P12622967188738525506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A054238 n).toNat * A130777 n

end

end A124038.P12622967188738525506

namespace A124038

/-- `A000034(A054238(n))*A130777(n)` -/
def P12622967188738525506.Spec : Prop :=
  ∀ n, P12622967188738525506.a n = A124038 n

end A124038

/-! ## A124038.P11389853414348771030

`A000034(A063656(n))*A130777(n)`
-/

namespace A124038.P11389853414348771030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A063656 n).toNat * A130777 n

end

end A124038.P11389853414348771030

namespace A124038

/-- `A000034(A063656(n))*A130777(n)` -/
def P11389853414348771030.Spec : Prop :=
  ∀ n, P11389853414348771030.a n = A124038 n

end A124038

/-!
# A124041: Numbers k such that 2*k+1, 4*k+1 and 8*k+1 are primes.

The programs for A124041, the canonical program `A124041.P16176855552741418478` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124041 has offset 1).

The definition of A124041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124041.P16176855552741418478

`floor(A057326(n+2)/2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A124041

/-- `floor(A057326(n+2)/2)` -/
def P16176855552741418478.Spec : Prop :=
  ∀ n, P16176855552741418478.a n = A124041 (n + 1)

theorem P16176855552741418478.correct : P16176855552741418478.Spec := by
  intro n
  simp only [A124041, Nat.add_sub_cancel]

end A124041

/-! ## A124041.P9218015299475669806

`∑[A004525(Δ[A057326(n+1)])]`
-/

namespace A124041.P9218015299475669806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057326 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124041.P9218015299475669806

namespace A124041

/-- `∑[A004525(Δ[A057326(n+1)])]` -/
def P9218015299475669806.Spec : Prop :=
  ∀ n, P9218015299475669806.a n = A124041 (n + 1)

end A124041

/-! ## A124041.P1691383539734041116

`∑[A110654(Δ[A057326(n+1)])]`
-/

namespace A124041.P1691383539734041116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057326 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124041.P1691383539734041116

namespace A124041

/-- `∑[A110654(Δ[A057326(n+1)])]` -/
def P1691383539734041116.Spec : Prop :=
  ∀ n, P1691383539734041116.a n = A124041 (n + 1)

end A124041

/-! ## A124041.P14205114192314491530

`∩[A123998(n+1), A320599(n+1)]`
-/

namespace A124041.P14205114192314491530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124041.P14205114192314491530

namespace A124041

/-- `∩[A123998(n+1), A320599(n+1)]` -/
def P14205114192314491530.Spec : Prop :=
  ∀ n, (P14205114192314491530.a n : ℤ) = A124041 (n + 1)

end A124041

/-! ## A124041.P9710396236228313425

`∩[A005123(n+1), A123998(n+1)]`
-/

namespace A124041.P9710396236228313425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124041.P9710396236228313425

namespace A124041

/-- `∩[A005123(n+1), A123998(n+1)]` -/
def P9710396236228313425.Spec : Prop :=
  ∀ n, (P9710396236228313425.a n : ℤ) = A124041 (n + 1)

end A124041

/-! ## A124041.P11941870009236903882

`∩[A067812(n+1), A320599(n+1)]`
-/

namespace A124041.P11941870009236903882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124041.P11941870009236903882

namespace A124041

/-- `∩[A067812(n+1), A320599(n+1)]` -/
def P11941870009236903882.Spec : Prop :=
  ∀ n, (P11941870009236903882.a n : ℤ) = A124041 (n + 1)

end A124041

/-! ## A124041.P4093281088124198116

`∩[A005097(n+1), A320599(n+1)]`
-/

namespace A124041.P4093281088124198116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124041.P4093281088124198116

namespace A124041

/-- `∩[A005097(n+1), A320599(n+1)]` -/
def P4093281088124198116.Spec : Prop :=
  ∀ n, (P4093281088124198116.a n : ℤ) = A124041 (n + 1)

end A124041

/-! ## A124041.P12920930868753556452

`∩[A102781(n+1), A320599(n+1)]`
-/

namespace A124041.P12920930868753556452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124041.P12920930868753556452

namespace A124041

/-- `∩[A102781(n+1), A320599(n+1)]` -/
def P12920930868753556452.Spec : Prop :=
  ∀ n, (P12920930868753556452.a n : ℤ) = A124041 (n + 1)

end A124041

/-! ## A124041.P14300233398164824597

`filter[A320599(n+1), A101264(#)]`
-/

namespace A124041.P14300233398164824597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A124041.P14300233398164824597

namespace A124041

/-- `filter[A320599(n+1), A101264(#)]` -/
def P14300233398164824597.Spec : Prop :=
  ∀ n, P14300233398164824597.a n = A124041 (n + 1)

end A124041

/-! ## A124041.P10691960235695405507

`∩[A079111(n+1), A320599(n+1)]`
-/

namespace A124041.P10691960235695405507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124041.P10691960235695405507

namespace A124041

/-- `∩[A079111(n+1), A320599(n+1)]` -/
def P10691960235695405507.Spec : Prop :=
  ∀ n, (P10691960235695405507.a n : ℤ) = A124041 (n + 1)

end A124041

/-!
# A124042: Number of permutations of n distinct letters (ABCD...) each of which appears thrice with two fixed points.

The programs for A124042, there is no canonical definition to state claims against.
-/

/-! ## A124042.P13375550134682019846

`A059058(A143689(n+1)+1)`
-/

namespace A124042.P13375550134682019846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (A143689 (n + 1) + 1).toNat

end

end A124042.P13375550134682019846

/-! ## A124042.P9243371005300671339

`A059058(A000326(n+1)+2)`
-/

namespace A124042.P9243371005300671339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (A000326 (n + 1) + 2).toNat

end

end A124042.P9243371005300671339

/-! ## A124042.P7619017003359460125

`A059058(n²+A000217(n+2))`
-/

namespace A124042.P7619017003359460125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 ((n ^ 2 : ℤ) + A000217 (n + 2)).toNat

end

end A124042.P7619017003359460125

/-! ## A124042.P6795761089716155062

`A059058(A001318(2*n+1)+2)`
-/

namespace A124042.P6795761089716155062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (A001318 (2 * n + 1) + 2).toNat

end

end A124042.P6795761089716155062

/-!
# A124043: Number of permutations of n distinct letters (ABCD...) each of which appears thrice with three fixed points.

The programs for A124043, there is no canonical definition to state claims against.
-/

/-! ## A124043.P1207856147918092758

`A059058(A143689(n+1)+2)`
-/

namespace A124043.P1207856147918092758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (A143689 (n + 1) + 2).toNat

end

end A124043.P1207856147918092758

/-! ## A124043.P16382586304340170724

`A059058(A115067(n+1)+4)`
-/

namespace A124043.P16382586304340170724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (A115067 (n + 1) + 4).toNat

end

end A124043.P16382586304340170724

/-! ## A124043.P16261760228734214858

`A059058(A152947(2*(n+2))-A055998(n))`
-/

namespace A124043.P16261760228734214858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (A152947 (2 * (n + 2)) - A055998 n).toNat

end

end A124043.P16261760228734214858

/-!
# A124044: Number of ways to express 4n+3 as the sum of an odd square and twice a prime.

The programs for A124044, there is no canonical definition to state claims against.
-/

/-! ## A124044.P6822178631500744835

`A001221(A328097(n+1)+A105725(n+1))`
-/

namespace A124044.P6822178631500744835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328097 (n + 1) + A105725 (n + 1)).toNat

end

end A124044.P6822178631500744835

/-! ## A124044.P4861568655613054414

`A206719(A382492(n+1))`
-/

namespace A124044.P4861568655613054414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (A382492 (n + 1)).toNat

end

end A124044.P4861568655613054414

/-! ## A124044.P4946347906648271083

`A062501(A284839(n+1))`
-/

namespace A124044.P4946347906648271083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062501 (A284839 (n + 1)).toNat

end

end A124044.P4946347906648271083

/-! ## A124044.P14955116751731508385

`A072649(A033676(n+1))%A343577(n)`
-/

namespace A124044.P14955116751731508385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072649 (A033676 (n + 1)).toNat) (A343577 n)

end

end A124044.P14955116751731508385

/-! ## A124044.P11953926240357942052

`A029931(A033676(n+1)%A003287(n+1))`
-/

namespace A124044.P11953926240357942052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (Int.tmod (A033676 (n + 1)) (A003287 (n + 1))).toNat

end

end A124044.P11953926240357942052

/-!
# A124049: a(n) = c is least number such that 10^n/2 - /+ c are primes.

The programs for A124049, there is no canonical definition to state claims against.
-/

/-! ## A124049.P7145804202262023118

`3*A108163(n+1)`
-/

namespace A124049.P7145804202262023118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108163 (n + 1)

end

end A124049.P7145804202262023118

/-! ## A124049.P5685744008827322071

`A008585(A108163(n+1))`
-/

namespace A124049.P5685744008827322071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A108163 (n + 1)).toNat

end

end A124049.P5685744008827322071

/-! ## A124049.P13037320808288753824

`A007494(lcm(2, A108163(n+1)))`
-/

namespace A124049.P13037320808288753824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (Int.lcm 2 (A108163 (n + 1)))

end

end A124049.P13037320808288753824

/-! ## A124049.P8377878581592587937

`A269382(A108163(n+1))+A057427(n)`
-/

namespace A124049.P8377878581592587937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269382 (A108163 (n + 1)).toNat + A057427 n

end

end A124049.P8377878581592587937

/-! ## A124049.P3176588967419792475

`A269382(A108163(n+1))+A178334(n)`
-/

namespace A124049.P3176588967419792475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269382 (A108163 (n + 1)).toNat + A178334 n

end

end A124049.P3176588967419792475

/-!
# A124051: Quasi-mirror of A062196 formatted as a triangular array.

The programs for A124051, the canonical program `A124051.P3647775880006845545` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124051 has offset 0).

The definition of A124051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124051.P9232800011511009

`A074909(n)*A168577(n+2)`
-/

namespace A124051.P9232800011511009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A168577 (n + 2)

end

end A124051.P9232800011511009

namespace A124051

/-- `A074909(n)*A168577(n+2)` -/
def P9232800011511009.Spec : Prop :=
  ∀ n, P9232800011511009.a n = A124051 n

end A124051

/-! ## A124051.P3647775880006845545

`A074909(lt[2, A002260(n+1)])*A074909(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124051

/-- `A074909(lt[2, A002260(n+1)])*A074909(n)` -/
def P3647775880006845545.Spec : Prop :=
  ∀ n, P3647775880006845545.a n = A124051 n

theorem P3647775880006845545.correct : P3647775880006845545.Spec := by
  intro n
  simp only [A124051]

end A124051

/-! ## A124051.P10780060375526605149

`A074909(A140978(n+1)-n)*A074909(n)`
-/

namespace A124051.P10780060375526605149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A140978 (n + 1) - (n : ℤ)).toNat * A074909 n

end

end A124051.P10780060375526605149

namespace A124051

/-- `A074909(A140978(n+1)-n)*A074909(n)` -/
def P10780060375526605149.Spec : Prop :=
  ∀ n, P10780060375526605149.a n = A124051 n

end A124051

/-! ## A124051.P9181403088932889261

`A062196(2*A004736(n+1)+n)`
-/

namespace A124051.P9181403088932889261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A124051.P9181403088932889261

namespace A124051

/-- `A062196(2*A004736(n+1)+n)` -/
def P9181403088932889261.Spec : Prop :=
  ∀ n, P9181403088932889261.a n = A124051 n

end A124051

/-! ## A124051.P9960715484241355245

`A062196(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A124051.P9960715484241355245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A124051.P9960715484241355245

namespace A124051

/-- `A062196(A004736(n+1)+A004736(n+1)+n)` -/
def P9960715484241355245.Spec : Prop :=
  ∀ n, P9960715484241355245.a n = A124051 n

end A124051

/-! ## A124051.P6655899834290337951

`A074909(n)*A135278(eq[0, A103451(n)])`
-/

namespace A124051.P6655899834290337951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124051.P6655899834290337951

namespace A124051

/-- `A074909(n)*A135278(eq[0, A103451(n)])` -/
def P6655899834290337951.Spec : Prop :=
  ∀ n, P6655899834290337951.a n = A124051 n

end A124051

/-! ## A124051.P13314978521091014697

`A074909(n)*A135278(eq[0, A103452(n)])`
-/

namespace A124051.P13314978521091014697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124051.P13314978521091014697

namespace A124051

/-- `A074909(n)*A135278(eq[0, A103452(n)])` -/
def P13314978521091014697.Spec : Prop :=
  ∀ n, P13314978521091014697.a n = A124051 n

end A124051

/-! ## A124051.P16695192572132713115

`A074909(n)*A135278(eq[0, A145677(n)])`
-/

namespace A124051.P16695192572132713115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A135278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124051.P16695192572132713115

namespace A124051

/-- `A074909(n)*A135278(eq[0, A145677(n)])` -/
def P16695192572132713115.Spec : Prop :=
  ∀ n, P16695192572132713115.a n = A124051 n

end A124051

/-! ## A124051.P7928916284365255838

`A074909(lt[1, A002262(n)])*A074909(n)`
-/

namespace A124051.P7928916284365255838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A074909 n

end

end A124051.P7928916284365255838

namespace A124051

/-- `A074909(lt[1, A002262(n)])*A074909(n)` -/
def P7928916284365255838.Spec : Prop :=
  ∀ n, P7928916284365255838.a n = A124051 n

end A124051

/-! ## A124051.P12844070796738632405

`A007318(lt[1, A123125(n)])*A074909(n)`
-/

namespace A124051.P12844070796738632405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A074909 n

end

end A124051.P12844070796738632405

namespace A124051

/-- `A007318(lt[1, A123125(n)])*A074909(n)` -/
def P12844070796738632405.Spec : Prop :=
  ∀ n, P12844070796738632405.a n = A124051 n

end A124051

/-!
# A124052: a(n) = sigma(lcm(1,2,...,n)) = A000203(A003418(n)).

The programs for A124052, the canonical program `A124052.P2153594134558953165` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124052 has offset 1).

The definition of A124052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124052.P2153594134558953165

`A000203(A003418(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124052

/-- `A000203(A003418(n+1))` -/
def P2153594134558953165.Spec : Prop :=
  ∀ n, P2153594134558953165.a n = A124052 (n + 1)

theorem P2153594134558953165.correct : P2153594134558953165.Spec := by
  intro n
  simp only [A124052, Nat.add_sub_cancel]

end A124052

/-! ## A124052.P7589837639493894726

`∏[A000203(n+1)/A000203(A048671(n+1))]`
-/

namespace A124052.P7589837639493894726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000203 (A048671 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A124052.P7589837639493894726

namespace A124052

/-- `∏[A000203(n+1)/A000203(A048671(n+1))]` -/
def P7589837639493894726.Spec : Prop :=
  ∀ n, P7589837639493894726.a n = (A124052 (n + 1) : ℚ)

end A124052

/-! ## A124052.P4795676816683890222

`∏[A117553(n+1)/A117553(A048671(n+1))]`
-/

namespace A124052.P4795676816683890222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117553 (n + 1) : ℚ) / (A117553 (A048671 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A124052.P4795676816683890222

namespace A124052

/-- `∏[A117553(n+1)/A117553(A048671(n+1))]` -/
def P4795676816683890222.Spec : Prop :=
  ∀ n, P4795676816683890222.a n = (A124052 (n + 1) : ℚ)

end A124052

/-! ## A124052.P15837687991846625607

`A337203(A342766(n+1))`
-/

namespace A124052.P15837687991846625607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337203 (A342766 (n + 1)).toNat

end

end A124052.P15837687991846625607

namespace A124052

/-- `A337203(A342766(n+1))` -/
def P15837687991846625607.Spec : Prop :=
  ∀ n, P15837687991846625607.a n = A124052 (n + 1)

end A124052

/-! ## A124052.P13281040176371779974

`∑{d}[lcm(n+1, a(n-1)), #]` with `a(0)=1`
-/

namespace A124052.P13281040176371779974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (n + 1) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A124052.P13281040176371779974

namespace A124052

/-- `∑{d}[lcm(n+1, a(n-1)), #]` -/
def P13281040176371779974.Spec : Prop :=
  ∀ n, (P13281040176371779974.a n : ℤ) = A124052 (n + 1)

end A124052

/-!
# A124056: a(1)=1. a(n) = number of terms from among the first (n-1) terms of the sequence which divide a(n-1).

The programs for A124056, there is no canonical definition to state claims against.
-/

/-! ## A124056.P7441674119509679273

`A116543(∑[abs(A014309(n+1))])`
-/

namespace A124056.P7441674119509679273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014309 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124056.P7441674119509679273

/-! ## A124056.P3815445038779415954

`A116543(∑[A014309(n+1)]+2)`
-/

namespace A124056.P3815445038779415954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A124056.P3815445038779415954

/-! ## A124056.P1430185935194545421

`A359034(comp[A037055(3*n+2)]+1)`
-/

namespace A124056.P1430185935194545421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359034 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A124056.P1430185935194545421

/-! ## A124056.P15002848202383105964

`A001222((6*n²+5)*A069916(n))`
-/

namespace A124056.P15002848202383105964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((6 * n ^ 2 + 5 : ℤ) * A069916 n).toNat

end

end A124056.P15002848202383105964

/-! ## A124056.P6298604371107016166

`A000120(A290114(n)+A000837(n))`
-/

namespace A124056.P6298604371107016166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A290114 n + A000837 n).toNat

end

end A124056.P6298604371107016166

/-!
# A124057: Numbers n such that n, n+1, n+2 and n+3 are products of exactly 3 primes.

The programs for A124057, the canonical program `A124057.P16684972214532472139` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124057 has offset 1).

The definition of A124057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1741 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124057.P3223722477423330720

`∩[A045940(n+1), A113789(n+1)]`
-/

namespace A124057.P3223722477423330720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124057.P3223722477423330720

namespace A124057

/-- `∩[A045940(n+1), A113789(n+1)]` -/
def P3223722477423330720.Spec : Prop :=
  ∀ n, (P3223722477423330720.a n : ℤ) = A124057 (n + 1)

end A124057

/-! ## A124057.P16684972214532472139

`∩[A113789(n+2)-1, A113789(n+2)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A124057

/-- `∩[A113789(n+2)-1, A113789(n+2)]` -/
def P16684972214532472139.Spec : Prop :=
  ∀ n, (P16684972214532472139.a n : ℤ) = A124057 (n + 1)

theorem P16684972214532472139.correct : P16684972214532472139.Spec := by
  intro n
  simp only [A124057, Nat.add_sub_cancel]

end A124057

/-! ## A124057.P17310361294935450185

`∩[A045939(n+1), A124940(n+1)]`
-/

namespace A124057.P17310361294935450185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124057.P17310361294935450185

namespace A124057

/-- `∩[A045939(n+1), A124940(n+1)]` -/
def P17310361294935450185.Spec : Prop :=
  ∀ n, (P17310361294935450185.a n : ℤ) = A124057 (n + 1)

end A124057

/-! ## A124057.P6366122396206467046

`∩[A045940(n+1), A124940(n+1)]`
-/

namespace A124057.P6366122396206467046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124057.P6366122396206467046

namespace A124057

/-- `∩[A045940(n+1), A124940(n+1)]` -/
def P6366122396206467046.Spec : Prop :=
  ∀ n, (P6366122396206467046.a n : ℤ) = A124057 (n + 1)

end A124057

/-! ## A124057.P3656429952266252330

`∩[A113789(n+1), A124940(n+1)]`
-/

namespace A124057.P3656429952266252330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124057.P3656429952266252330

namespace A124057

/-- `∩[A113789(n+1), A124940(n+1)]` -/
def P3656429952266252330.Spec : Prop :=
  ∀ n, (P3656429952266252330.a n : ℤ) = A124057 (n + 1)

end A124057

/-! ## A124057.P10566466825123345492

`∩[A045939(n+1)-1, A259504(n+1)]`
-/

namespace A124057.P10566466825123345492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124057.P10566466825123345492

namespace A124057

/-- `∩[A045939(n+1)-1, A259504(n+1)]` -/
def P10566466825123345492.Spec : Prop :=
  ∀ n, (P10566466825123345492.a n : ℤ) = A124057 (n + 1)

end A124057

/-! ## A124057.P4917573319460673391

`∩[A259504(n+2)-2, A259504(n+2)]`
-/

namespace A124057.P4917573319460673391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124057.P4917573319460673391

namespace A124057

/-- `∩[A259504(n+2)-2, A259504(n+2)]` -/
def P4917573319460673391.Spec : Prop :=
  ∀ n, (P4917573319460673391.a n : ℤ) = A124057 (n + 1)

end A124057

/-! ## A124057.P13859378509767161757

`filter[A045940(n+1), A358753(#)]`
-/

namespace A124057.P13859378509767161757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A124057.P13859378509767161757

namespace A124057

/-- `filter[A045940(n+1), A358753(#)]` -/
def P13859378509767161757.Spec : Prop :=
  ∀ n, P13859378509767161757.a n = A124057 (n + 1)

end A124057

/-! ## A124057.P18165131267708441536

`filter[A045940(n+1), A373975(#)]`
-/

namespace A124057.P18165131267708441536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A124057.P18165131267708441536

namespace A124057

/-- `filter[A045940(n+1), A373975(#)]` -/
def P18165131267708441536.Spec : Prop :=
  ∀ n, P18165131267708441536.a n = A124057 (n + 1)

end A124057

/-! ## A124057.P4219088727034678313

`filter[A045940(n+1), A340369(#)]`
-/

namespace A124057.P4219088727034678313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A124057.P4219088727034678313

namespace A124057

/-- `filter[A045940(n+1), A340369(#)]` -/
def P4219088727034678313.Spec : Prop :=
  ∀ n, P4219088727034678313.a n = A124057 (n + 1)

end A124057

/-!
# A124058: Smallest of the first occurrence of n consecutive integers with all different prime signatures.

The programs for A124058, there is no canonical definition to state claims against.
-/

/-! ## A124058.P10496377552112143290

`A083790(n+1)+C(2, n²)`
-/

namespace A124058.P10496377552112143290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083790 (n + 1) + (Nat.choose 2 (n ^ 2) : ℤ)

end

end A124058.P10496377552112143290

/-! ## A124058.P4253136093288354740

`A130706(n)+A083790(n+1)`
-/

namespace A124058.P4253136093288354740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + A083790 (n + 1)

end

end A124058.P4253136093288354740

/-! ## A124058.P15955023463447861380

`A083788(A000124(n))+C(2, n²)`
-/

namespace A124058.P15955023463447861380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083788 (A000124 n).toNat + (Nat.choose 2 (n ^ 2) : ℤ)

end

end A124058.P15955023463447861380

/-! ## A124058.P2436766106192398650

`A130706(n)+A083788(∑[n]+1)`
-/

namespace A124058.P2436766106192398650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + A083788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A124058.P2436766106192398650

/-! ## A124058.P17696686682229018839

`A083790(n+1)+A006139(n)%4`
-/

namespace A124058.P17696686682229018839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083790 (n + 1) + Int.tmod (A006139 n) 4

end

end A124058.P17696686682229018839

/-!
# A124059: Number of connected asymmetric graphs with n nodes.

The programs for A124059, there is no canonical definition to state claims against.
-/

/-! ## A124059.P14367675216452141107

`A003400(n+1)-A275867(n+1)`
-/

namespace A124059.P14367675216452141107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003400 (n + 1) - A275867 (n + 1)

end

end A124059.P14367675216452141107

/-! ## A124059.P2212116796463457427

`A330343(n+1)/(n+1)!-A275867(n+1)`
-/

namespace A124059.P2212116796463457427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ) - (A275867 (n + 1) : ℚ)

end

end A124059.P2212116796463457427

/-! ## A124059.P10122347008529653228

`A330343(n+1)/∏[A077168(n)]-A275867(n+1)`
-/

namespace A124059.P10122347008529653228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A275867 (n + 1) : ℚ)

end

end A124059.P10122347008529653228

/-! ## A124059.P74901572302698334

`A330343(n+1)/record[A084938(n)]-A275867(n+1)`
-/

namespace A124059.P74901572302698334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330343 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (A275867 (n + 1) : ℚ)

end

end A124059.P74901572302698334

/-! ## A124059.P15153229907471251731

`A275867(A114904(n+1))+A000007(n)`
-/

namespace A124059.P15153229907471251731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275867 (A114904 (n + 1)).toNat + A000007 n

end

end A124059.P15153229907471251731

/-!
# A124060: T totaler sequence. Number of t's in the American spelling of numbers.

The programs for A124060, there is no canonical definition to state claims against.
-/

/-! ## A124060.P8431613158550246437

`A268643(and(A260829(n+1), A260830(n+1)))`
-/

namespace A124060.P8431613158550246437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (Int.land (A260829 (n + 1)) (A260830 (n + 1))).toNat

end

end A124060.P8431613158550246437

/-! ## A124060.P4304493093284493012

`val(A001316(A247603(n+2)), 16)`
-/

namespace A124060.P4304493093284493012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A247603 (n + 2)).toNat).toNat 16

end

end A124060.P4304493093284493012

/-! ## A124060.P335654708579844489

`A060838(A233271(A341209(n)))`
-/

namespace A124060.P335654708579844489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A233271 (A341209 n).toNat).toNat

end

end A124060.P335654708579844489

/-! ## A124060.P5087480969427520471

`A043562(n)-A039982(A000021(n))`
-/

namespace A124060.P5087480969427520471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n - A039982 (A000021 n).toNat

end

end A124060.P5087480969427520471

/-! ## A124060.P7888635739389984968

`A124761(eq[A233427(n), A294647(n+1)])`
-/

namespace A124060.P7888635739389984968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124060.P7888635739389984968

/-!
# A124062: Number of ways to write n as an ordered sum of 1's, 2's and 3's such that no 2 precedes any 1.

The programs for A124062, the canonical program `A124062.P13614805138597769082` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124062 has offset 0).

The definition of A124062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124062.P13614805138597769082

`A000930(n+3)-A000931(n+7)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124062

/-- `A000930(n+3)-A000931(n+7)` -/
def P13614805138597769082.Spec : Prop :=
  ∀ n, P13614805138597769082.a n = A124062 n

theorem P13614805138597769082.correct : P13614805138597769082.Spec := by
  intro n
  simp only [A124062]

end A124062

/-! ## A124062.P8241910803575786007

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8`
-/

namespace A124062.P8241910803575786007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 5) - a (n - 6)

end

end A124062.P8241910803575786007

namespace A124062

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)-a(n-6)` -/
def P8241910803575786007.Spec : Prop :=
  ∀ n, P8241910803575786007.a n = A124062 n

end A124062

/-! ## A124062.P3640839452240818084

`A077868(n)-A023434(n)`
-/

namespace A124062.P3640839452240818084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n - A023434 n

end

end A124062.P3640839452240818084

namespace A124062

/-- `A077868(n)-A023434(n)` -/
def P3640839452240818084.Spec : Prop :=
  ∀ n, P3640839452240818084.a n = A124062 n

end A124062

/-! ## A124062.P15978657182851086715

`∑[A000930(n)]-A023434(n)`
-/

namespace A124062.P15978657182851086715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023434 n

end

end A124062.P15978657182851086715

namespace A124062

/-- `∑[A000930(n)]-A023434(n)` -/
def P15978657182851086715.Spec : Prop :=
  ∀ n, P15978657182851086715.a n = A124062 n

end A124062

/-! ## A124062.P5004239455986585878

`∑[A000930(n)-A000931(n+2)]`
-/

namespace A124062.P5004239455986585878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A000931 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124062.P5004239455986585878

namespace A124062

/-- `∑[A000930(n)-A000931(n+2)]` -/
def P5004239455986585878.Spec : Prop :=
  ∀ n, P5004239455986585878.a n = A124062 n

end A124062

/-! ## A124062.P2224274336942922054

`A000930(n+3)-(A023434(n)+1)`
-/

namespace A124062.P2224274336942922054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 3) - (A023434 n + 1)

end

end A124062.P2224274336942922054

namespace A124062

/-- `A000930(n+3)-(A023434(n)+1)` -/
def P2224274336942922054.Spec : Prop :=
  ∀ n, P2224274336942922054.a n = A124062 n

end A124062

/-! ## A124062.P3911881557734014258

`A000930(n+3)-A134816(n+3)`
-/

namespace A124062.P3911881557734014258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 3) - A134816 (n + 3)

end

end A124062.P3911881557734014258

namespace A124062

/-- `A000930(n+3)-A134816(n+3)` -/
def P3911881557734014258.Spec : Prop :=
  ∀ n, P3911881557734014258.a n = A124062 n

end A124062

/-! ## A124062.P4890316408005923108

`A023435(n+1)+A023435(n)-A023434(n)`
-/

namespace A124062.P4890316408005923108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (n + 1) + (A023435 n - A023434 n)

end

end A124062.P4890316408005923108

namespace A124062

/-- `A023435(n+1)+A023435(n)-A023434(n)` -/
def P4890316408005923108.Spec : Prop :=
  ∀ n, P4890316408005923108.a n = A124062 n

end A124062

/-! ## A124062.P7452512471188774249

`Δ[A048625(n)-A164315(n)]`
-/

namespace A124062.P7452512471188774249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 n - A164315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124062.P7452512471188774249

namespace A124062

/-- `Δ[A048625(n)-A164315(n)]` -/
def P7452512471188774249.Spec : Prop :=
  ∀ n, P7452512471188774249.a n = A124062 n

end A124062

/-!
# A124065: Numbers k such that 8*k - 1 and 8*k + 1 are twin primes.

The programs for A124065, there is no canonical definition to state claims against.
-/

/-! ## A124065.P9555717512452211679

`3*A137920(n+1)`
-/

namespace A124065.P9555717512452211679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A137920 (n + 1)

end

end A124065.P9555717512452211679

/-! ## A124065.P2948616320783559872

`∩[A005122(n+1), A005123(n+1)]`
-/

namespace A124065.P2948616320783559872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124065.P2948616320783559872

/-! ## A124065.P15752108586451594788

`∩[A005123(n+1), A139487(n+1)+1]`
-/

namespace A124065.P15752108586451594788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124065.P15752108586451594788

/-! ## A124065.P18248197893045026763

`A008486(A137920(n+1))`
-/

namespace A124065.P18248197893045026763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A137920 (n + 1)).toNat

end

end A124065.P18248197893045026763

/-! ## A124065.P9947699992029685421

`A008585(A137920(n+1)%A046309(n+1))`
-/

namespace A124065.P9947699992029685421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A137920 (n + 1)) (A046309 (n + 1))).toNat

end

end A124065.P9947699992029685421

/-! ## A124065.P16470647545767010353

`A008585(A137920(n+1))%A157947(n+1)`
-/

namespace A124065.P16470647545767010353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A137920 (n + 1)).toNat) (A157947 (n + 1))

end

end A124065.P16470647545767010353

/-! ## A124065.P11949475739568961234

`A328311(A074965(n+1))+A008585(A137920(n+1))`
-/

namespace A124065.P11949475739568961234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (A074965 (n + 1)).toNat + A008585 (A137920 (n + 1)).toNat

end

end A124065.P11949475739568961234

/-! ## A124065.P3542060924231163097

`A008585(A137920(n+1)+n)-A008585(n)`
-/

namespace A124065.P3542060924231163097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A137920 (n + 1) + (n : ℤ)).toNat - A008585 n

end

end A124065.P3542060924231163097

/-!
# A124066: a(n) = the sum of the terms in the n-th antidiagonal of A124976.

The programs for A124066, there is no canonical definition to state claims against.
-/

/-! ## A124066.P4347517344465967327

`or(2, A004137(a(n-1)+1))` with `a(0)=1, a(1)=2`
-/

namespace A124066.P4347517344465967327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 2 (A004137 (a (n - 1) + 1).toNat)

end

end A124066.P4347517344465967327

/-! ## A124066.P10895252597109212250

`floor(A345179(2^n)/round(1/acot(n)))`
-/

namespace A124066.P10895252597109212250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345179 (2 ^ n) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)⌋

end

end A124066.P10895252597109212250

/-!
# A124067: Numbers k such that 2*F(k) + 1 is a prime, where F = A000045.

The programs for A124067, there is no canonical definition to state claims against.
-/

/-! ## A124067.P2871826139274784336

`lt[A362376(n+1), 4]+1`
-/

namespace A124067.P2871826139274784336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362376 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A124067.P2871826139274784336

/-!
# A124068: Fixed points for operation of repeatedly replacing a number with the sum of the seventh power of its digits.

The programs for A124068, there is no canonical definition to state claims against.
-/

/-! ## A124068.P18440394070561290596

`A252648(n+35)`
-/

namespace A124068.P18440394070561290596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (n + 35)

end

end A124068.P18440394070561290596

/-! ## A124068.P17272396134498703415

`record[C(n, n²)-A015156(n)*A252648(n)]`
-/

namespace A124068.P17272396134498703415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) - A015156 n * A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124068.P17272396134498703415

/-!
# A124069: Fixed points for operation of repeatedly replacing a number with the sum of the eighth power of its digits.

The programs for A124069, there is no canonical definition to state claims against.
-/

/-! ## A124069.P6887915512374055513

`A252648(n+42)`
-/

namespace A124069.P6887915512374055513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (n + 42)

end

end A124069.P6887915512374055513

/-!
# A124070: Number of permutations of n distinct letters (ABCD...) each of which appears thrice with 4 fixed points.

The programs for A124070, there is no canonical definition to state claims against.
-/

/-! ## A124070.P10107820249905262193

`A059058(A059845(n)+9)`
-/

namespace A124070.P10107820249905262193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (A059845 n + 9).toNat

end

end A124070.P10107820249905262193

/-!
# A124071: a(1)=1. a(n) = GCD(n,a(n-1)) + GCD(n+1,a(n-1)).

The programs for A124071, the canonical program `A124071.P3452716827521877398` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124071 has offset 1).

The definition of A124071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124071.P3452716827521877398

`gcd(n+1, a(n-1))+gcd(n+2, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124071

/-- `gcd(n+1, a(n-1))+gcd(n+2, a(n-1))` -/
def P3452716827521877398.Spec : Prop :=
  ∀ n, (P3452716827521877398.a n : ℤ) = A124071 (n + 1)

theorem P3452716827521877398.correct : P3452716827521877398.Spec := by
  intro n
  simp only [A124071, Nat.add_sub_cancel]

end A124071

/-! ## A124071.P5638855324312386968

`A062756(A147650(3*n+1)+7)+1`
-/

namespace A124071.P5638855324312386968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A147650 (3 * n + 1) + 7).toNat + 1

end

end A124071.P5638855324312386968

namespace A124071

/-- `A062756(A147650(3*n+1)+7)+1` -/
def P5638855324312386968.Spec : Prop :=
  ∀ n, P5638855324312386968.a n = A124071 (n + 1)

end A124071

/-! ## A124071.P16289955661942446996

`A088748(A220182(n+1)%A095416(n))`
-/

namespace A124071.P16289955661942446996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (Int.tmod (A220182 (n + 1)) (A095416 n)).toNat

end

end A124071.P16289955661942446996

namespace A124071

/-- `A088748(A220182(n+1)%A095416(n))` -/
def P16289955661942446996.Spec : Prop :=
  ∀ n, P16289955661942446996.a n = A124071 (n + 1)

end A124071

/-! ## A124071.P17883601750742593103

`A330960(A007947((n+1)^4)+7)`
-/

namespace A124071.P17883601750742593103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (A007947 ((n + 1) ^ 4) + 7).toNat

end

end A124071.P17883601750742593103

namespace A124071

/-- `A330960(A007947((n+1)^4)+7)` -/
def P17883601750742593103.Spec : Prop :=
  ∀ n, P17883601750742593103.a n = A124071 (n + 1)

end A124071

/-! ## A124071.P6090614053338515915

`A053735(n+3)*A340535(A186714(3*n+5))`
-/

namespace A124071.P6090614053338515915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 3) * A340535 (A186714 (3 * n + 5)).toNat

end

end A124071.P6090614053338515915

namespace A124071

/-- `A053735(n+3)*A340535(A186714(3*n+5))` -/
def P6090614053338515915.Spec : Prop :=
  ∀ n, P6090614053338515915.a n = A124071 (n + 1)

end A124071

/-!
# A124072: First differences of A129819.

The programs for A124072, the canonical program `A124072.P2908281059257603438` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124072 has offset 0).

The definition of A124072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124072.P2908281059257603438

`floor(ceil(n/2)/gcd(2, n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124072

/-- `floor(ceil(n/2)/gcd(2, n))` -/
def P2908281059257603438.Spec : Prop :=
  ∀ n, P2908281059257603438.a n = A124072 n

theorem P2908281059257603438.correct : P2908281059257603438.Spec := by
  intro n
  simp only [A124072]

end A124072

/-! ## A124072.P17392316553740694206

`floor((lcm(2, n+2)-1)/4)`
-/

namespace A124072.P17392316553740694206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 2 (n + 2) : ℤ) - 1 : ℚ) / 4⌋

end

end A124072.P17392316553740694206

namespace A124072

/-- `floor((lcm(2, n+2)-1)/4)` -/
def P17392316553740694206.Spec : Prop :=
  ∀ n, P17392316553740694206.a n = A124072 n

end A124072

/-! ## A124072.P10204433247531124078

`floor((n+1)/((-1)^n+3))`
-/

namespace A124072.P10204433247531124078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((-1) ^ n + 3 : ℚ)⌋

end

end A124072.P10204433247531124078

namespace A124072

/-- `floor((n+1)/((-1)^n+3))` -/
def P10204433247531124078.Spec : Prop :=
  ∀ n, P10204433247531124078.a n = A124072 n

end A124072

/-! ## A124072.P15022770781175952413

`a(xor(1, n-3))+1` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A124072.P15022770781175952413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (Int.xor 1 ((n : ℤ) - 3)).toNat + 1

end

end A124072.P15022770781175952413

namespace A124072

/-- `a(xor(1, n-3))+1` -/
def P15022770781175952413.Spec : Prop :=
  ∀ n, (P15022770781175952413.a n : ℤ) = A124072 n

end A124072

/-! ## A124072.P15047495134758584321

`ceil((n+2)/gcd(4, 2*n))-1`
-/

namespace A124072.P15047495134758584321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / (Nat.gcd 4 (2 * n) : ℚ)⌉ - 1

end

end A124072.P15047495134758584321

namespace A124072

/-- `ceil((n+2)/gcd(4, 2*n))-1` -/
def P15047495134758584321.Spec : Prop :=
  ∀ n, P15047495134758584321.a n = A124072 n

end A124072

/-! ## A124072.P1355621473410197731

`-ceil((n+1)/(2*or(n, -2)))`
-/

namespace A124072.P1355621473410197731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n + 1 : ℚ) / (2 * Int.lor (n : ℤ) (-2) : ℚ)⌉

end

end A124072.P1355621473410197731

namespace A124072

/-- `-ceil((n+1)/(2*or(n, -2)))` -/
def P1355621473410197731.Spec : Prop :=
  ∀ n, P1355621473410197731.a n = A124072 n

end A124072

/-! ## A124072.P19892115782195113

`∑[a(n-4)-(-1)^n]` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=2`
-/

namespace A124072.P19892115782195113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 2] fun n f1 =>
  f1 (n - 4) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124072.P19892115782195113

namespace A124072

/-- `∑[a(n-4)-(-1)^n]` -/
def P19892115782195113.Spec : Prop :=
  ∀ n, P19892115782195113.a n = A124072 n

end A124072

/-! ## A124072.P9019362000076745874

`floor((3*n+1)/4)-a(n-1)` with `a(0)=0`
-/

namespace A124072.P9019362000076745874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(3 * n + 1 : ℚ) / 4⌋ - a (n - 1)

end

end A124072.P9019362000076745874

namespace A124072

/-- `floor((3*n+1)/4)-a(n-1)` -/
def P9019362000076745874.Spec : Prop :=
  ∀ n, P9019362000076745874.a n = A124072 n

end A124072

/-! ## A124072.P1534853527921725823

`floor((1-n)/4-a(n-1))+n` with `a(0)=0`
-/

namespace A124072.P1534853527921725823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(1 - (n : ℤ) : ℚ) / 4 - (a (n - 1) : ℚ)⌋ + (n : ℤ)

end

end A124072.P1534853527921725823

namespace A124072

/-- `floor((1-n)/4-a(n-1))+n` -/
def P1534853527921725823.Spec : Prop :=
  ∀ n, P1534853527921725823.a n = A124072 n

end A124072

/-! ## A124072.P17317861797413041876

`floor((1-n)/4)-(a(n-1)-n)` with `a(0)=0`
-/

namespace A124072.P17317861797413041876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(1 - (n : ℤ) : ℚ) / 4⌋ - (a (n - 1) - (n : ℤ))

end

end A124072.P17317861797413041876

namespace A124072

/-- `floor((1-n)/4)-(a(n-1)-n)` -/
def P17317861797413041876.Spec : Prop :=
  ∀ n, P17317861797413041876.a n = A124072 n

end A124072

/-! ## A124072.P8601811905058623710

`∑[(n+1)%2]%(a(n-2)+2)` with `a(0)=0, a(1)=1`
-/

namespace A124072.P8601811905058623710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (a (n - 2) + 2)

end

end A124072.P8601811905058623710

namespace A124072

/-- `∑[(n+1)%2]%(a(n-2)+2)` -/
def P8601811905058623710.Spec : Prop :=
  ∀ n, (P8601811905058623710.a n : ℤ) = A124072 n

end A124072

/-! ## A124072.P10126553468307497021

`a(n-4)+gcd(n+1, n-1)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A124072.P10126553468307497021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 2] fun n a =>
  a (n - 4) + Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)

end

end A124072.P10126553468307497021

namespace A124072

/-- `a(n-4)+gcd(n+1, n-1)` -/
def P10126553468307497021.Spec : Prop :=
  ∀ n, (P10126553468307497021.a n : ℤ) = A124072 n

end A124072

/-! ## A124072.P10855010546683514120

`(n-a(n-2))%(a(n-3)-n)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A124072.P10855010546683514120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  Int.tmod ((n : ℤ) - a (n - 2)) (a (n - 3) - (n : ℤ))

end

end A124072.P10855010546683514120

namespace A124072

/-- `(n-a(n-2))%(a(n-3)-n)` -/
def P10855010546683514120.Spec : Prop :=
  ∀ n, P10855010546683514120.a n = A124072 n

end A124072

/-! ## A124072.P2024610454943260669

`∑[∑[2/a(n-2)]-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A124072.P2024610454943260669
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, -1] fun n f2 =>
  2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, -1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124072.P2024610454943260669

namespace A124072

/-- `∑[∑[2/a(n-2)]-a(n-3)]` -/
def P2024610454943260669.Spec : Prop :=
  ∀ n, P2024610454943260669.a n = (A124072 n : ℚ)

end A124072

/-! ## A124072.P16131133741780152624

`A130722(n)+and(1, n)`
-/

namespace A124072.P16131133741780152624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 n + (Nat.land 1 n : ℤ)

end

end A124072.P16131133741780152624

namespace A124072

/-- `A130722(n)+and(1, n)` -/
def P16131133741780152624.Spec : Prop :=
  ∀ n, P16131133741780152624.a n = A124072 n

end A124072

/-! ## A124072.P10806049522546597551

`ceil((n-A027656(n))/2)`
-/

namespace A124072.P10806049522546597551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A027656 n : ℚ) / 2⌉

end

end A124072.P10806049522546597551

namespace A124072

/-- `ceil((n-A027656(n))/2)` -/
def P10806049522546597551.Spec : Prop :=
  ∀ n, P10806049522546597551.a n = A124072 n

end A124072

/-! ## A124072.P7975859454973433478

`ceil((n-A110514(n))/2)`
-/

namespace A124072.P7975859454973433478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A110514 n : ℚ) / 2⌉

end

end A124072.P7975859454973433478

namespace A124072

/-- `ceil((n-A110514(n))/2)` -/
def P7975859454973433478.Spec : Prop :=
  ∀ n, P7975859454973433478.a n = A124072 n

end A124072

/-! ## A124072.P16722153934861472

`A319007(n+1)%(n+3)`
-/

namespace A124072.P16722153934861472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319007 (n + 1)) (n + 3 : ℤ)

end

end A124072.P16722153934861472

namespace A124072

/-- `A319007(n+1)%(n+3)` -/
def P16722153934861472.Spec : Prop :=
  ∀ n, P16722153934861472.a n = A124072 n

end A124072

/-! ## A124072.P3200235908595376887

`A130722(n)+A000035(n)`
-/

namespace A124072.P3200235908595376887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 n + A000035 n

end

end A124072.P3200235908595376887

namespace A124072

/-- `A130722(n)+A000035(n)` -/
def P3200235908595376887.Spec : Prop :=
  ∀ n, P3200235908595376887.a n = A124072 n

end A124072

/-! ## A124072.P6944545949457868602

`A066530(n)-A106466(n)`
-/

namespace A124072.P6944545949457868602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 n - A106466 n

end

end A124072.P6944545949457868602

namespace A124072

/-- `A066530(n)-A106466(n)` -/
def P6944545949457868602.Spec : Prop :=
  ∀ n, P6944545949457868602.a n = A124072 n

end A124072

/-!
# A124073: Number of permutations of n distinct letters (ABCD...) each of which appears 4 times with one fixed point.

The programs for A124073, there is no canonical definition to state claims against.
-/

/-! ## A124073.P14117029093388318874

`A059060(A130883(n+1))`
-/

namespace A124073.P14117029093388318874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A130883 (n + 1)).toNat

end

end A124073.P14117029093388318874

/-! ## A124073.P7202426351918443433

`A059060(A033816(n)-1)`
-/

namespace A124073.P7202426351918443433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A033816 n - 1).toNat

end

end A124073.P7202426351918443433

/-! ## A124073.P14913510832177826242

`A059060(A046092(n)+n+2)`
-/

namespace A124073.P14913510832177826242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A046092 n + (n + 2 : ℤ)).toNat

end

end A124073.P14913510832177826242

/-!
# A124076: Numbers of the form Abs[m^m - n^n], where integers m,n>0.

The programs for A124076, there is no canonical definition to state claims against.
-/

/-! ## A124076.P5121596318003350555

`record[Δ[A227738(n+1)^A227738(n+1)]]`
-/

namespace A124076.P5121596318003350555
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227738 (n + 1) : ℚ) ^ (A227738 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124076.P5121596318003350555

/-! ## A124076.P9712091143137117923

`record[Δ[A227739(n+1)^A227739(n+1)]]`
-/

namespace A124076.P9712091143137117923
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227739 (n + 1) : ℚ) ^ (A227739 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124076.P9712091143137117923

/-! ## A124076.P1048408441236148005

`record[A000312(A003056(n))-A095891(n+1)]`
-/

namespace A124076.P1048408441236148005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A003056 n).toNat - A095891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124076.P1048408441236148005

/-! ## A124076.P13243671386888212373

`record[A000312(A002024(n+1))-A095891(n+1)]`
-/

namespace A124076.P13243671386888212373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002024 (n + 1)).toNat - A095891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124076.P13243671386888212373

/-! ## A124076.P3269211951473759848

`record[A033918(A127739(n+1))-A095891(n+1)]`
-/

namespace A124076.P3269211951473759848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (A127739 (n + 1)).toNat - A095891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124076.P3269211951473759848

/-!
# A124078: a(n) = H(n)*n!/(floor(n/2))!, where H(n) = Sum_{k=1..n} 1/k, the n-th harmonic number.

The programs for A124078, there is no canonical definition to state claims against.
-/

/-! ## A124078.P4318692590593836322

`∪[A123989(n), A124079(n)]`
-/

namespace A124078.P4318692590593836322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124078.P4318692590593836322

/-! ## A124078.P13598072385151263948

`A000254(n)/A081123(n)`
-/

namespace A124078.P13598072385151263948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 n : ℚ) / (A081123 n : ℚ)

end

end A124078.P13598072385151263948

/-! ## A124078.P3382644914731960137

`abs(A081048(n)/A081123(n))`
-/

namespace A124078.P3382644914731960137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A081048 n : ℚ) / (A081123 n : ℚ)|

end

end A124078.P3382644914731960137

/-! ## A124078.P12142389898832171980

`A000254(n)/A004526(n)!`
-/

namespace A124078.P12142389898832171980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 n : ℚ) / (Nat.factorial (A004526 n).toNat : ℚ)

end

end A124078.P12142389898832171980

/-! ## A124078.P11054427432871032207

`A000254(n)/A123108(n)!`
-/

namespace A124078.P11054427432871032207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 n : ℚ) / (Nat.factorial (A123108 n).toNat : ℚ)

end

end A124078.P11054427432871032207

/-!
# A124079: a(n) = H(2n+1)*(2n+1)!/n!, where H(n) = Sum_{k=1..n} 1/k, the n-th harmonic number.

The programs for A124079, there is no canonical definition to state claims against.
-/

/-! ## A124079.P6961127843657057678

`A124078(Δ[n²])`
-/

namespace A124079.P6961127843657057678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A124079.P6961127843657057678

/-! ## A124079.P16189117323905949644

`A000254(Δ[n²])/n!`
-/

namespace A124079.P16189117323905949644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A124079.P16189117323905949644

/-! ## A124079.P13821060299761444540

`floor(A000254(2*n+1)/n!)`
-/

namespace A124079.P13821060299761444540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000254 (2 * n + 1) : ℚ) / (Nat.factorial n : ℚ)⌋

end

end A124079.P13821060299761444540

/-! ## A124079.P14885565414985133981

`A000254(Δ[n²])/A000142(n)`
-/

namespace A124079.P14885565414985133981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A000142 n : ℚ)

end

end A124079.P14885565414985133981

/-! ## A124079.P10979786787112791918

`record[A081048(n+1)]/A000142(n)`
-/

namespace A124079.P10979786787112791918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081048 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000142 n : ℚ)

end

end A124079.P10979786787112791918

/-!
# A124080: 10 times triangular numbers: a(n) = 5*n*(n + 1).

The programs for A124080, the canonical program `A124080.P7325129698954842015` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124080 has offset 0).

The definition of A124080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(n+1)` (program `A124080.P7325129698954842015`, by `A124080.P7325129698954842015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124080.P7325129698954842015

`5*n*(n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124080

/-- `5*n*(n+1)` -/
def P7325129698954842015.Spec : Prop :=
  ∀ n, (P7325129698954842015.a n : ℤ) = A124080 n

theorem P7325129698954842015.correct : P7325129698954842015.Spec := by
  intro n
  simp only [A124080]

end A124080

/-! ## A124080.P6523040160243805737

`A062786(n+1)-1`
-/

namespace A124080.P6523040160243805737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) - 1

end

end A124080.P6523040160243805737

namespace A124080

/-- `A062786(n+1)-1` -/
def P6523040160243805737.Spec : Prop :=
  ∀ n, P6523040160243805737.a n = A124080 n

end A124080

/-! ## A124080.P11645274167797545668

`A049598(n)-A002378(n)`
-/

namespace A124080.P11645274167797545668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n - A002378 n

end

end A124080.P11645274167797545668

namespace A124080

/-- `A049598(n)-A002378(n)` -/
def P11645274167797545668.Spec : Prop :=
  ∀ n, P11645274167797545668.a n = A124080 n

end A124080

/-! ## A124080.P1431569354514852775

`A131242(10*n+9)`
-/

namespace A124080.P1431569354514852775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (10 * n + 9)

end

end A124080.P1431569354514852775

namespace A124080

/-- `A131242(10*n+9)` -/
def P1431569354514852775.Spec : Prop :=
  ∀ n, P1431569354514852775.a n = A124080 n

end A124080

/-! ## A124080.P1969447696342329282

`∑[n]/tan(acot(10))`
-/

namespace A124080.P1969447696342329282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (10 : ℝ))

end

end A124080.P1969447696342329282

namespace A124080

/-- `∑[n]/tan(acot(10))` -/
def P1969447696342329282.Spec : Prop :=
  ∀ n, P1969447696342329282.a n = (A124080 n : ℝ)

end A124080

/-! ## A124080.P6730390078061757555

`∑[n]/cot(atan(10))`
-/

namespace A124080.P6730390078061757555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (10 : ℝ))

end

end A124080.P6730390078061757555

namespace A124080

/-- `∑[n]/cot(atan(10))` -/
def P6730390078061757555.Spec : Prop :=
  ∀ n, P6730390078061757555.a n = (A124080 n : ℝ)

end A124080

/-! ## A124080.P1341080965967917792

`abs(∑[a(n-1)+10])` with `a(0)=0`
-/

namespace A124080.P1341080965967917792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124080.P1341080965967917792

namespace A124080

/-- `abs(∑[a(n-1)+10])` -/
def P1341080965967917792.Spec : Prop :=
  ∀ n, (P1341080965967917792.a n : ℤ) = A124080 n

end A124080

/-! ## A124080.P15616325157824740907

`-∑[a(n-1)-10]` with `a(0)=0`
-/

namespace A124080.P15616325157824740907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124080.P15616325157824740907

namespace A124080

/-- `-∑[a(n-1)-10]` -/
def P15616325157824740907.Spec : Prop :=
  ∀ n, P15616325157824740907.a n = A124080 n

end A124080

/-! ## A124080.P3157920831021537052

`floor(∑[a(n-1)+10])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A124080.P3157920831021537052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124080.P3157920831021537052

namespace A124080

/-- `floor(∑[a(n-1)+10])` -/
def P3157920831021537052.Spec : Prop :=
  ∀ n, (P3157920831021537052.a n : ℤ) = A124080 n

end A124080

/-! ## A124080.P4155147265191318367

`ceil(∑[a(n-1)+10])` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A124080.P4155147265191318367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124080.P4155147265191318367

namespace A124080

/-- `ceil(∑[a(n-1)+10])` -/
def P4155147265191318367.Spec : Prop :=
  ∀ n, (P4155147265191318367.a n : ℤ) = A124080 n

end A124080

/-! ## A124080.P6345280689647661282

`round(∑[a(n-1)+10])` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A124080.P6345280689647661282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124080.P6345280689647661282

namespace A124080

/-- `round(∑[a(n-1)+10])` -/
def P6345280689647661282.Spec : Prop :=
  ∀ n, (P6345280689647661282.a n : ℤ) = A124080 n

end A124080

/-!
# A124081: Primes of the form 2*F(k) + 1.

The programs for A124081, there is no canonical definition to state claims against.
-/

/-! ## A124081.P1588435244045155591

`2*A000045(A124067(n+2))+1`
-/

namespace A124081.P1588435244045155591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (A124067 (n + 2)).toNat + 1

end

end A124081.P1588435244045155591

/-! ## A124081.P12383776677799616811

`A001588(A124067(n+2))`
-/

namespace A124081.P12383776677799616811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (A124067 (n + 2)).toNat

end

end A124081.P12383776677799616811

/-! ## A124081.P18223019526717355334

`p?[a(n-1)+a(n-2)-1]` with `a(0)=3, a(1)=5`
-/

namespace A124081.P18223019526717355334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124081.P18223019526717355334

/-! ## A124081.P6745283824464642614

`p?[a(n-1)-(1-a(n-2))]` with `a(0)=3, a(1)=5`
-/

namespace A124081.P6745283824464642614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124081.P6745283824464642614

/-! ## A124081.P5890898582423645637

`p?[A001588(n+2)]`
-/

namespace A124081.P5890898582423645637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124081.P5890898582423645637

/-!
# A124087: 9th column of Catalan triangle A009766.

The programs for A124087, the canonical program `A124087.P3811081529198837784` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124087 has offset 15).

The definition of A124087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124087.P3811081529198837784

`C(n+15, 8)-C(n+15, 6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124087

/-- `C(n+15, 8)-C(n+15, 6)` -/
def P3811081529198837784.Spec : Prop :=
  ∀ n, P3811081529198837784.a n = A124087 (n + 15)

theorem P3811081529198837784.correct : P3811081529198837784.Spec := by
  intro n
  simp only [A124087, Nat.add_sub_cancel]

end A124087

/-! ## A124087.P10861570023719256590

`∑[A064061(n+1)]`
-/

namespace A124087.P10861570023719256590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124087.P10861570023719256590

namespace A124087

/-- `∑[A064061(n+1)]` -/
def P10861570023719256590.Spec : Prop :=
  ∀ n, P10861570023719256590.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P13552816588752763621

`∑[abs(Δ[A115133(n)])]`
-/

namespace A124087.P13552816588752763621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124087.P13552816588752763621

namespace A124087

/-- `∑[abs(Δ[A115133(n)])]` -/
def P13552816588752763621.Spec : Prop :=
  ∀ n, P13552816588752763621.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P16186383656443816968

`∑[record[A064061(abs(1-n))]]`
-/

namespace A124087.P16186383656443816968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064061 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124087.P16186383656443816968

namespace A124087

/-- `∑[record[A064061(abs(1-n))]]` -/
def P16186383656443816968.Spec : Prop :=
  ∀ n, P16186383656443816968.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P8170011397099072453

`∑[A115133(n+1)-A115133(n)]`
-/

namespace A124087.P8170011397099072453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115133 (n + 1) - A115133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124087.P8170011397099072453

namespace A124087

/-- `∑[A115133(n+1)-A115133(n)]` -/
def P8170011397099072453.Spec : Prop :=
  ∀ n, P8170011397099072453.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P16049676069676960872

`A166813(A020719(n))-A166810(A020723(n))`
-/

namespace A124087.P16049676069676960872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (A020719 n).toNat - A166810 (A020723 n).toNat

end

end A124087.P16049676069676960872

namespace A124087

/-- `A166813(A020719(n))-A166810(A020723(n))` -/
def P16049676069676960872.Spec : Prop :=
  ∀ n, P16049676069676960872.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P677526057864767128

`∑[A014963(15*(n+1))*Δ[A115133(n)]]`
-/

namespace A124087.P677526057864767128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124087.P677526057864767128

namespace A124087

/-- `∑[A014963(15*(n+1))*Δ[A115133(n)]]` -/
def P677526057864767128.Spec : Prop :=
  ∀ n, P677526057864767128.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P4831994083795205218

`∑[Δ[A115133(n)]%A216900(n+2)]`
-/

namespace A124087.P4831994083795205218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A216900 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124087.P4831994083795205218

namespace A124087

/-- `∑[Δ[A115133(n)]%A216900(n+2)]` -/
def P4831994083795205218.Spec : Prop :=
  ∀ n, P4831994083795205218.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P1558001634754476885

`A008315(eq[8, n%floor(sqrt(n+1))])`
-/

namespace A124087.P1558001634754476885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124087.P1558001634754476885

namespace A124087

/-- `A008315(eq[8, n%floor(sqrt(n+1))])` -/
def P1558001634754476885.Spec : Prop :=
  ∀ n, P1558001634754476885.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P10943220015382303948

`A008315(eq[8, A055087(n)])`
-/

namespace A124087.P10943220015382303948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124087.P10943220015382303948

namespace A124087

/-- `A008315(eq[8, A055087(n)])` -/
def P10943220015382303948.Spec : Prop :=
  ∀ n, P10943220015382303948.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P1358694215841247532

`A009766(eq[8, A004736(n+1)]+16)`
-/

namespace A124087.P1358694215841247532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 16)

end

end A124087.P1358694215841247532

namespace A124087

/-- `A009766(eq[8, A004736(n+1)]+16)` -/
def P1358694215841247532.Spec : Prop :=
  ∀ n, P1358694215841247532.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P3677375899670129259

`A009766(A000217(n+9)-(n+1))`
-/

namespace A124087.P3677375899670129259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A124087.P3677375899670129259

namespace A124087

/-- `A009766(A000217(n+9)-(n+1))` -/
def P3677375899670129259.Spec : Prop :=
  ∀ n, P3677375899670129259.a n = A124087 (n + 15)

end A124087

/-! ## A124087.P2374799828390423006

`A009766(A001478(n+1)+A000217(n+9))`
-/

namespace A124087.P2374799828390423006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A001478 (n + 1) + A000217 (n + 9)).toNat

end

end A124087.P2374799828390423006

namespace A124087

/-- `A009766(A001478(n+1)+A000217(n+9))` -/
def P2374799828390423006.Spec : Prop :=
  ∀ n, P2374799828390423006.a n = A124087 (n + 15)

end A124087

/-!
# A124088: 10th column of Catalan triangle A009766.

The programs for A124088, the canonical program `A124088.P701931833552564999` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124088 has offset 17).

The definition of A124088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124088.P701931833552564999

`C(n+17, 9)-C(n+17, 7)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124088

/-- `C(n+17, 9)-C(n+17, 7)` -/
def P701931833552564999.Spec : Prop :=
  ∀ n, P701931833552564999.a n = A124088 (n + 17)

theorem P701931833552564999.correct : P701931833552564999.Spec := by
  intro n
  simp only [A124088, Nat.add_sub_cancel]

end A124088

/-! ## A124088.P6090225872293728711

`∑[A124087(n+1)]`
-/

namespace A124088.P6090225872293728711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124087 (n + 1 + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124088.P6090225872293728711

namespace A124088

/-- `∑[A124087(n+1)]` -/
def P6090225872293728711.Spec : Prop :=
  ∀ n, P6090225872293728711.a n = A124088 (n + 17)

end A124088

/-! ## A124088.P267815826254834335

`∑[record[A124087(abs(1-n))]]`
-/

namespace A124088.P267815826254834335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124087 (|1 - (n : ℤ)|.toNat + 15)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124088.P267815826254834335

namespace A124088

/-- `∑[record[A124087(abs(1-n))]]` -/
def P267815826254834335.Spec : Prop :=
  ∀ n, P267815826254834335.a n = A124088 (n + 17)

end A124088

/-! ## A124088.P1161022990253539077

`A000582(n+18)-Δ[A000582(n+18)]`
-/

namespace A124088.P1161022990253539077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 18) - (f1 (n + 1) - f1 n)

end

end A124088.P1161022990253539077

namespace A124088

/-- `A000582(n+18)-Δ[A000582(n+18)]` -/
def P1161022990253539077.Spec : Prop :=
  ∀ n, P1161022990253539077.a n = A124088 (n + 17)

end A124088

/-! ## A124088.P11710677479513892830

`A008315(eq[9, n%floor(sqrt(n+1))])`
-/

namespace A124088.P11710677479513892830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124088.P11710677479513892830

namespace A124088

/-- `A008315(eq[9, n%floor(sqrt(n+1))])` -/
def P11710677479513892830.Spec : Prop :=
  ∀ n, P11710677479513892830.a n = A124088 (n + 17)

end A124088

/-! ## A124088.P3333242874909613759

`A009766(eq[9, A002262(n)])`
-/

namespace A124088.P3333242874909613759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124088.P3333242874909613759

namespace A124088

/-- `A009766(eq[9, A002262(n)])` -/
def P3333242874909613759.Spec : Prop :=
  ∀ n, P3333242874909613759.a n = A124088 (n + 17)

end A124088

/-! ## A124088.P3792384222632408784

`A009766(eq[10, A002260(n+1)])`
-/

namespace A124088.P3792384222632408784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124088.P3792384222632408784

namespace A124088

/-- `A009766(eq[10, A002260(n+1)])` -/
def P3792384222632408784.Spec : Prop :=
  ∀ n, P3792384222632408784.a n = A124088 (n + 17)

end A124088

/-! ## A124088.P1538092820775384138

`A009766(A000217(n+10)-(n+1))`
-/

namespace A124088.P1538092820775384138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A124088.P1538092820775384138

namespace A124088

/-- `A009766(A000217(n+10)-(n+1))` -/
def P1538092820775384138.Spec : Prop :=
  ∀ n, P1538092820775384138.a n = A124088 (n + 17)

end A124088

/-! ## A124088.P7737996835591557980

`A033184(A000217(n+9)+n+1)`
-/

namespace A124088.P7737996835591557980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A124088.P7737996835591557980

namespace A124088

/-- `A033184(A000217(n+9)+n+1)` -/
def P7737996835591557980.Spec : Prop :=
  ∀ n, P7737996835591557980.a n = A124088 (n + 17)

end A124088

/-! ## A124088.P13416779065229871029

`A153452(A332797(n+2))`
-/

namespace A124088.P13416779065229871029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A332797 (n + 2)).toNat

end

end A124088.P13416779065229871029

namespace A124088

/-- `A153452(A332797(n+2))` -/
def P13416779065229871029.Spec : Prop :=
  ∀ n, P13416779065229871029.a n = A124088 (n + 17)

end A124088

/-!
# A124089: a(n) = binomial(n,6)-1.

The programs for A124089, the canonical program `A124089.P16269199596857535660` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124089 has offset 6).

The definition of A124089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)-1` (program `A124089.P16269199596857535660`, by `A124089.P16269199596857535660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124089.P16269199596857535660

`C(n+6, 6)-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124089

/-- `C(n+6, 6)-1` -/
def P16269199596857535660.Spec : Prop :=
  ∀ n, P16269199596857535660.a n = A124089 (n + 6)

theorem P16269199596857535660.correct : P16269199596857535660.Spec := by
  intro n
  simp only [A124089, Nat.add_sub_cancel]

end A124089

/-! ## A124089.P11493713524206357758

`A000579(n+6)-1`
-/

namespace A124089.P11493713524206357758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) - 1

end

end A124089.P11493713524206357758

namespace A124089

/-- `A000579(n+6)-1` -/
def P11493713524206357758.Spec : Prop :=
  ∀ n, P11493713524206357758.a n = A124089 (n + 6)

end A124089

/-! ## A124089.P7053218358528375308

`record[C(n, 6)-floor(atan(n))]`
-/

namespace A124089.P7053218358528375308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 6 : ℤ) - ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124089.P7053218358528375308

namespace A124089

/-- `record[C(n, 6)-floor(atan(n))]` -/
def P7053218358528375308.Spec : Prop :=
  ∀ n, P7053218358528375308.a n = A124089 (n + 6)

end A124089

/-! ## A124089.P9487631781881203091

`∑[∑[∑[∑[∑[n+1]]]]]-1`
-/

namespace A124089.P9487631781881203091
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A124089.P9487631781881203091

namespace A124089

/-- `∑[∑[∑[∑[∑[n+1]]]]]-1` -/
def P9487631781881203091.Spec : Prop :=
  ∀ n, P9487631781881203091.a n = A124089 (n + 6)

end A124089

/-! ## A124089.P11245514578133169389

`(A107418(n)-A000292(n+1))/A000292(n+1)`
-/

namespace A124089.P11245514578133169389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107418 n - A000292 (n + 1) : ℚ) / (A000292 (n + 1) : ℚ)

end

end A124089.P11245514578133169389

namespace A124089

/-- `(A107418(n)-A000292(n+1))/A000292(n+1)` -/
def P11245514578133169389.Spec : Prop :=
  ∀ n, P11245514578133169389.a n = (A124089 (n + 6) : ℚ)

end A124089

/-! ## A124089.P1387080588826140795

`(A120409(n+1)-A120408(n+2))/A120408(n+2)`
-/

namespace A124089.P1387080588826140795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120409 (n + 1) - A120408 (n + 2) : ℚ) / (A120408 (n + 2) : ℚ)

end

end A124089.P1387080588826140795

namespace A124089

/-- `(A120409(n+1)-A120408(n+2))/A120408(n+2)` -/
def P1387080588826140795.Spec : Prop :=
  ∀ n, P1387080588826140795.a n = (A124089 (n + 6) : ℚ)

end A124089

/-! ## A124089.P9575682408949011985

`record[∑[C(n, 5)-char[1]]]`
-/

namespace A124089.P9575682408949011985
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124089.P9575682408949011985

namespace A124089

/-- `record[∑[C(n, 5)-char[1]]]` -/
def P9575682408949011985.Spec : Prop :=
  ∀ n, P9575682408949011985.a n = A124089 (n + 6)

end A124089

/-! ## A124089.P3220067185068303693

`∑[record[Δ[A299338(n)]]]`
-/

namespace A124089.P3220067185068303693
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124089.P3220067185068303693

namespace A124089

/-- `∑[record[Δ[A299338(n)]]]` -/
def P3220067185068303693.Spec : Prop :=
  ∀ n, P3220067185068303693.a n = A124089 (n + 6)

end A124089

/-! ## A124089.P18237611266641801077

`(A082140(n)-A011782(n))/A011782(n)`
-/

namespace A124089.P18237611266641801077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082140 n - A011782 n : ℚ) / (A011782 n : ℚ)

end

end A124089.P18237611266641801077

namespace A124089

/-- `(A082140(n)-A011782(n))/A011782(n)` -/
def P18237611266641801077.Spec : Prop :=
  ∀ n, P18237611266641801077.a n = (A124089 (n + 6) : ℚ)

end A124089

/-! ## A124089.P8722241134591238060

`(A002409(n)-A000079(n))/A000079(n)`
-/

namespace A124089.P8722241134591238060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n - A000079 n : ℚ) / (A000079 n : ℚ)

end

end A124089.P8722241134591238060

namespace A124089

/-- `(A002409(n)-A000079(n))/A000079(n)` -/
def P8722241134591238060.Spec : Prop :=
  ∀ n, P8722241134591238060.a n = (A124089 (n + 6) : ℚ)

end A124089

/-! ## A124089.P17701479255298639189

`(A002409(n)-A011782(n+1))/A011782(n+1)`
-/

namespace A124089.P17701479255298639189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n - A011782 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A124089.P17701479255298639189

namespace A124089

/-- `(A002409(n)-A011782(n+1))/A011782(n+1)` -/
def P17701479255298639189.Spec : Prop :=
  ∀ n, P17701479255298639189.a n = (A124089 (n + 6) : ℚ)

end A124089

/-! ## A124089.P14556763274081582645

`(A054337(n)-A000302(n))/A000302(n)`
-/

namespace A124089.P14556763274081582645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054337 n - A000302 n : ℚ) / (A000302 n : ℚ)

end

end A124089.P14556763274081582645

namespace A124089

/-- `(A054337(n)-A000302(n))/A000302(n)` -/
def P14556763274081582645.Spec : Prop :=
  ∀ n, P14556763274081582645.a n = (A124089 (n + 6) : ℚ)

end A124089

/-! ## A124089.P12578648587496915096

`record[A193636(n)-A193635(n+3)]`
-/

namespace A124089.P12578648587496915096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 n - A193635 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124089.P12578648587496915096

namespace A124089

/-- `record[A193636(n)-A193635(n+3)]` -/
def P12578648587496915096.Spec : Prop :=
  ∀ n, P12578648587496915096.a n = A124089 (n + 6)

end A124089

/-!
# A124090: a(n) = C(n,7)-1.

The programs for A124090, the canonical program `A124090.P5259538866810562984` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124090 has offset 7).

The definition of A124090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)-1` (program `A124090.P5259538866810562984`, by `A124090.P5259538866810562984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124090.P5259538866810562984

`C(n+7, 7)-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124090

/-- `C(n+7, 7)-1` -/
def P5259538866810562984.Spec : Prop :=
  ∀ n, P5259538866810562984.a n = A124090 (n + 7)

theorem P5259538866810562984.correct : P5259538866810562984.Spec := by
  intro n
  simp only [A124090, Nat.add_sub_cancel]

end A124090

/-! ## A124090.P77503174912122951

`xor(-1, -C(n+7, 7))`
-/

namespace A124090.P77503174912122951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(Nat.choose (n + 7) 7 : ℤ))

end

end A124090.P77503174912122951

namespace A124090

/-- `xor(-1, -C(n+7, 7))` -/
def P77503174912122951.Spec : Prop :=
  ∀ n, P77503174912122951.a n = A124090 (n + 7)

end A124090

/-! ## A124090.P757764488470414248

`∑[∑[∑[∑[∑[∑[n+1]]]]]]-1`
-/

namespace A124090.P757764488470414248
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A124090.P757764488470414248

namespace A124090

/-- `∑[∑[∑[∑[∑[∑[n+1]]]]]]-1` -/
def P757764488470414248.Spec : Prop :=
  ∀ n, P757764488470414248.a n = A124090 (n + 7)

end A124090

/-! ## A124090.P87658532336932832

`∑[C(n+6, 6)%C(n+7, 7)]`
-/

namespace A124090.P87658532336932832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 6 % Nat.choose (n + 7) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124090.P87658532336932832

namespace A124090

/-- `∑[C(n+6, 6)%C(n+7, 7)]` -/
def P87658532336932832.Spec : Prop :=
  ∀ n, (P87658532336932832.a n : ℤ) = A124090 (n + 7)

end A124090

/-! ## A124090.P14304030782378181351

`abs(1-A000580(n+7))`
-/

namespace A124090.P14304030782378181351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000580 (n + 7)|

end

end A124090.P14304030782378181351

namespace A124090

/-- `abs(1-A000580(n+7))` -/
def P14304030782378181351.Spec : Prop :=
  ∀ n, P14304030782378181351.a n = A124090 (n + 7)

end A124090

/-! ## A124090.P1742303715335513360

`∑[xor(C(n+6, 6), A000007(n))]`
-/

namespace A124090.P1742303715335513360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose (n + 6) 6 : ℤ) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124090.P1742303715335513360

namespace A124090

/-- `∑[xor(C(n+6, 6), A000007(n))]` -/
def P1742303715335513360.Spec : Prop :=
  ∀ n, P1742303715335513360.a n = A124090 (n + 7)

end A124090

/-! ## A124090.P5188975943472974607

`A127228(n+4)%A000580(n+7)`
-/

namespace A124090.P5188975943472974607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A000580 (n + 7))

end

end A124090.P5188975943472974607

namespace A124090

/-- `A127228(n+4)%A000580(n+7)` -/
def P5188975943472974607.Spec : Prop :=
  ∀ n, P5188975943472974607.a n = A124090 (n + 7)

end A124090

/-! ## A124090.P5543727651366397583

`A127229(n+5)%A000580(n+7)`
-/

namespace A124090.P5543727651366397583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A000580 (n + 7))

end

end A124090.P5543727651366397583

namespace A124090

/-- `A127229(n+5)%A000580(n+7)` -/
def P5543727651366397583.Spec : Prop :=
  ∀ n, P5543727651366397583.a n = A124090 (n + 7)

end A124090

/-! ## A124090.P3738160050375981967

`(A104670(n)-A000217(n+1))/A000217(n+1)`
-/

namespace A124090.P3738160050375981967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104670 n - A000217 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A124090.P3738160050375981967

namespace A124090

/-- `(A104670(n)-A000217(n+1))/A000217(n+1)` -/
def P3738160050375981967.Spec : Prop :=
  ∀ n, P3738160050375981967.a n = (A124090 (n + 7) : ℚ)

end A124090

/-! ## A124090.P338901115276925177

`record[A057428(n)+C(n, 7)]`
-/

namespace A124090.P338901115276925177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (Nat.choose n 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124090.P338901115276925177

namespace A124090

/-- `record[A057428(n)+C(n, 7)]` -/
def P338901115276925177.Spec : Prop :=
  ∀ n, P338901115276925177.a n = A124090 (n + 7)

end A124090

/-! ## A124090.P770043140073636678

`record[C(n, 7)-A057427(n)]`
-/

namespace A124090.P770043140073636678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 7 : ℤ) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124090.P770043140073636678

namespace A124090

/-- `record[C(n, 7)-A057427(n)]` -/
def P770043140073636678.Spec : Prop :=
  ∀ n, P770043140073636678.a n = A124090 (n + 7)

end A124090

/-! ## A124090.P4471610565677497075

`(A120410(n+1)-A120409(n+2))/A120409(n+2)`
-/

namespace A124090.P4471610565677497075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120410 (n + 1) - A120409 (n + 2) : ℚ) / (A120409 (n + 2) : ℚ)

end

end A124090.P4471610565677497075

namespace A124090

/-- `(A120410(n+1)-A120409(n+2))/A120409(n+2)` -/
def P4471610565677497075.Spec : Prop :=
  ∀ n, P4471610565677497075.a n = (A124090 (n + 7) : ℚ)

end A124090

/-! ## A124090.P12957411160358861308

`(A082141(n)-A011782(n))/A011782(n)`
-/

namespace A124090.P12957411160358861308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082141 n - A011782 n : ℚ) / (A011782 n : ℚ)

end

end A124090.P12957411160358861308

namespace A124090

/-- `(A082141(n)-A011782(n))/A011782(n)` -/
def P12957411160358861308.Spec : Prop :=
  ∀ n, P12957411160358861308.a n = (A124090 (n + 7) : ℚ)

end A124090

/-! ## A124090.P16674675344214200386

`(A054851(n+7)-A000079(n))/A000079(n)`
-/

namespace A124090.P16674675344214200386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (n + 7) - A000079 n : ℚ) / (A000079 n : ℚ)

end

end A124090.P16674675344214200386

namespace A124090

/-- `(A054851(n+7)-A000079(n))/A000079(n)` -/
def P16674675344214200386.Spec : Prop :=
  ∀ n, P16674675344214200386.a n = (A124090 (n + 7) : ℚ)

end A124090

/-! ## A124090.P16107753556782630173

`(A054851(n+7)-A011782(n+1))/A011782(n+1)`
-/

namespace A124090.P16107753556782630173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (n + 7) - A011782 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A124090.P16107753556782630173

namespace A124090

/-- `(A054851(n+7)-A011782(n+1))/A011782(n+1)` -/
def P16107753556782630173.Spec : Prop :=
  ∀ n, P16107753556782630173.a n = (A124090 (n + 7) : ℚ)

end A124090

/-! ## A124090.P2851813781884527262

`(A054338(n)-A000302(n))/A000302(n)`
-/

namespace A124090.P2851813781884527262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054338 n - A000302 n : ℚ) / (A000302 n : ℚ)

end

end A124090.P2851813781884527262

namespace A124090

/-- `(A054338(n)-A000302(n))/A000302(n)` -/
def P2851813781884527262.Spec : Prop :=
  ∀ n, P2851813781884527262.a n = (A124090 (n + 7) : ℚ)

end A124090

/-!
# A124091: Decimal expansion of Fibonacci binary constant: Sum{i>=0} (1/2)^Fibonacci(i).

The programs for A124091, there is no canonical definition to state claims against.
-/

/-! ## A124091.P3394572698713177199

`A084119(n)+and(1, A008574(n))`
-/

namespace A124091.P3394572698713177199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084119 (n + 1) + Int.land 1 (A008574 n)

end

end A124091.P3394572698713177199

/-! ## A124091.P6509548804492579327

`A084119(n)+∏{d}[n, A000720(#)]`
-/

namespace A124091.P6509548804492579327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084119 (n + 1) + ∏ d ∈ Nat.divisors (f1 n), A000720 d

end

end A124091.P6509548804492579327

/-! ## A124091.P13038094738769634474

`A316341(2*n+1)+A084119(n)`
-/

namespace A124091.P13038094738769634474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (2 * n + 1) + A084119 (n + 1)

end

end A124091.P13038094738769634474

/-! ## A124091.P14416617019180029942

`A084119(n)+val(A000040(n+1), 2)`
-/

namespace A124091.P14416617019180029942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084119 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A124091.P14416617019180029942

/-! ## A124091.P12602839595875871782

`A084119(n)+A010054(A010054(n)+n)`
-/

namespace A124091.P12602839595875871782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084119 (n + 1) + A010054 (A010054 n + (n : ℤ)).toNat

end

end A124091.P12602839595875871782

/-! ## A124091.P18381139298448125420

`A084119(n)+and(1, A264980(n))`
-/

namespace A124091.P18381139298448125420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084119 (n + 1) + Int.land 1 (A264980 n)

end

end A124091.P18381139298448125420

/-! ## A124091.P7101718763201125936

`A084119(n)+A125600(n)-A181313(n)`
-/

namespace A124091.P7101718763201125936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084119 (n + 1) + (A125600 n - A181313 n)

end

end A124091.P7101718763201125936

/-!
# A124092: From a question about accepting states in certain finite automata.

The programs for A124092, there is no canonical definition to state claims against.
-/

/-! ## A124092.P8739941875834403747

`∑{d}[A113184(A275856(2*n)), #]`
-/

namespace A124092.P8739941875834403747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (A275856 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A124092.P8739941875834403747

/-!
# A124093: Triangular numbers alternating with squares.

The programs for A124093, the canonical program `A124093.P13548339268058248860` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124093 has offset 0).

The definition of A124093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124093.P13548339268058248860

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=3, a(5)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124093

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P13548339268058248860.Spec : Prop :=
  ∀ n, P13548339268058248860.a n = A124093 n

theorem P13548339268058248860.correct : P13548339268058248860.Spec := by
  intro n
  simp only [A124093]

end A124093

/-! ## A124093.P7414142029572569393

`(3*n²-2*n+2-(n²-6*n+2)*(-1)^n)/16`
-/

namespace A124093.P7414142029572569393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 : ℤ) - (2 * n : ℤ) + (2 - ((n ^ 2 : ℤ) - (6 * n : ℤ) + 2) * (-1) ^ n) : ℚ) / 16

end

end A124093.P7414142029572569393

namespace A124093

/-- `(3*n²-2*n+2-(n²-6*n+2)*(-1)^n)/16` -/
def P7414142029572569393.Spec : Prop :=
  ∀ n, P7414142029572569393.a n = (A124093 n : ℚ)

theorem P7414142029572569393.correct : P7414142029572569393.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A124093, Nat.add_sub_cancel, A124093.P7414142029572569393.a, A124093.P13548339268058248860.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A124093, Nat.add_sub_cancel, A124093.P7414142029572569393.a, A124093.P13548339268058248860.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124093

/-! ## A124093.P9396933493925286818

`A123596(xor(1, n))`
-/

namespace A124093.P9396933493925286818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (Nat.xor 1 n)

end

end A124093.P9396933493925286818

namespace A124093

/-- `A123596(xor(1, n))` -/
def P9396933493925286818.Spec : Prop :=
  ∀ n, P9396933493925286818.a n = A124093 n

end A124093

/-! ## A124093.P5151615964362032914

`A123596(A004442(n))`
-/

namespace A124093.P5151615964362032914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (A004442 n).toNat

end

end A124093.P5151615964362032914

namespace A124093

/-- `A123596(A004442(n))` -/
def P5151615964362032914.Spec : Prop :=
  ∀ n, P5151615964362032914.a n = A124093 n

end A124093

/-! ## A124093.P12658742561599475929

`A114210(n+1)-A114209(n+1)`
-/

namespace A124093.P12658742561599475929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114210 (n + 1) - A114209 (n + 1)

end

end A124093.P12658742561599475929

namespace A124093

/-- `A114210(n+1)-A114209(n+1)` -/
def P12658742561599475929.Spec : Prop :=
  ∀ n, P12658742561599475929.a n = A124093 n

end A124093

/-! ## A124093.P17606194456753913503

`A000124(n)-(A106247(n)+A002620(n))`
-/

namespace A124093.P17606194456753913503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A106247 n + A002620 n)

end

end A124093.P17606194456753913503

namespace A124093

/-- `A000124(n)-(A106247(n)+A002620(n))` -/
def P17606194456753913503.Spec : Prop :=
  ∀ n, P17606194456753913503.a n = A124093 n

end A124093

/-! ## A124093.P1848678443723636741

`A123596(n+1)-n*A000035(n)`
-/

namespace A124093.P1848678443723636741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (n + 1) - (n : ℤ) * A000035 n

end

end A124093.P1848678443723636741

namespace A124093

/-- `A123596(n+1)-n*A000035(n)` -/
def P1848678443723636741.Spec : Prop :=
  ∀ n, P1848678443723636741.a n = A124093 n

end A124093

/-! ## A124093.P2272959407298838467

`A103221(n+1)+A114210(n+1)-A008731(n+1)`
-/

namespace A124093.P2272959407298838467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1) + (A114210 (n + 1) - A008731 (n + 1))

end

end A124093.P2272959407298838467

namespace A124093

/-- `A103221(n+1)+A114210(n+1)-A008731(n+1)` -/
def P2272959407298838467.Spec : Prop :=
  ∀ n, P2272959407298838467.a n = A124093 n

end A124093

/-! ## A124093.P2307802887831362316

`A123596(n+1)+A363268(n+1)-A363283(n+1)`
-/

namespace A124093.P2307802887831362316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (n + 1) + (A363268 (n + 1) - A363283 (n + 1))

end

end A124093.P2307802887831362316

namespace A124093

/-- `A123596(n+1)+A363268(n+1)-A363283(n+1)` -/
def P2307802887831362316.Spec : Prop :=
  ∀ n, P2307802887831362316.a n = A124093 n

end A124093

/-! ## A124093.P304821568730413620

`A014682((A057979(n)+A004526(n))*A004526(n))`
-/

namespace A124093.P304821568730413620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((A057979 n + A004526 n) * A004526 n).toNat

end

end A124093.P304821568730413620

namespace A124093

/-- `A014682((A057979(n)+A004526(n))*A004526(n))` -/
def P304821568730413620.Spec : Prop :=
  ∀ n, P304821568730413620.a n = A124093 n

end A124093

/-! ## A124093.P10695852762123552223

`A139600(A165157(n+1))`
-/

namespace A124093.P10695852762123552223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A165157 (n + 1)).toNat

end

end A124093.P10695852762123552223

namespace A124093

/-- `A139600(A165157(n+1))` -/
def P10695852762123552223.Spec : Prop :=
  ∀ n, P10695852762123552223.a n = A124093 n

end A124093

/-! ## A124093.P4593845073808775723

`A110962(xor(1, n)²)`
-/

namespace A124093.P4593845073808775723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (Nat.xor 1 n ^ 2)

end

end A124093.P4593845073808775723

namespace A124093

/-- `A110962(xor(1, n)²)` -/
def P4593845073808775723.Spec : Prop :=
  ∀ n, P4593845073808775723.a n = A124093 n

end A124093

/-! ## A124093.P14305603837817167129

`A110962(A295041(2*n)²)`
-/

namespace A124093.P14305603837817167129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A295041 (2 * n) ^ 2).toNat

end

end A124093.P14305603837817167129

namespace A124093

/-- `A110962(A295041(2*n)²)` -/
def P14305603837817167129.Spec : Prop :=
  ∀ n, P14305603837817167129.a n = A124093 n

end A124093

/-! ## A124093.P7635731709029040587

`A057979(n)²*A057979(∑[A093178(n)])`
-/

namespace A124093.P7635731709029040587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n ^ 2 * A057979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124093.P7635731709029040587

namespace A124093

/-- `A057979(n)²*A057979(∑[A093178(n)])` -/
def P7635731709029040587.Spec : Prop :=
  ∀ n, P7635731709029040587.a n = A124093 n

end A124093

/-! ## A124093.P6603102596079805051

`A004525((A057979(n)+A004526(n))*A004526(n))`
-/

namespace A124093.P6603102596079805051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((A057979 n + A004526 n) * A004526 n).toNat

end

end A124093.P6603102596079805051

namespace A124093

/-- `A004525((A057979(n)+A004526(n))*A004526(n))` -/
def P6603102596079805051.Spec : Prop :=
  ∀ n, P6603102596079805051.a n = A124093 n

end A124093

/-! ## A124093.P12835498962507778148

`A004526((A057979(n)+A004526(n))*A004526(n))`
-/

namespace A124093.P12835498962507778148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A057979 n + A004526 n) * A004526 n).toNat

end

end A124093.P12835498962507778148

namespace A124093

/-- `A004526((A057979(n)+A004526(n))*A004526(n))` -/
def P12835498962507778148.Spec : Prop :=
  ∀ n, P12835498962507778148.a n = A124093 n

end A124093

/-! ## A124093.P5125431268450034998

`floor(A060789(xor(1, n)²+1)/4)`
-/

namespace A124093.P5125431268450034998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060789 (Nat.xor 1 n ^ 2 + 1) : ℚ) / 4⌋

end

end A124093.P5125431268450034998

namespace A124093

/-- `floor(A060789(xor(1, n)²+1)/4)` -/
def P5125431268450034998.Spec : Prop :=
  ∀ n, P5125431268450034998.a n = A124093 n

end A124093

/-! ## A124093.P8791488294783633642

`A025480(A025480(xor(1, n)²))`
-/

namespace A124093.P8791488294783633642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A025480 (Nat.xor 1 n ^ 2)).toNat

end

end A124093.P8791488294783633642

namespace A124093

/-- `A025480(A025480(xor(1, n)²))` -/
def P8791488294783633642.Spec : Prop :=
  ∀ n, P8791488294783633642.a n = A124093 n

end A124093

/-! ## A124093.P13418755177019035161

`A025480(A025480(A004442(n)²))`
-/

namespace A124093.P13418755177019035161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A025480 (A004442 n ^ 2).toNat).toNat

end

end A124093.P13418755177019035161

namespace A124093

/-- `A025480(A025480(A004442(n)²))` -/
def P13418755177019035161.Spec : Prop :=
  ∀ n, P13418755177019035161.a n = A124093 n

end A124093

/-! ## A124093.P9397182407298158406

`A025480(A025480(A295041(2*n)²))`
-/

namespace A124093.P9397182407298158406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A025480 (A295041 (2 * n) ^ 2).toNat).toNat

end

end A124093.P9397182407298158406

namespace A124093

/-- `A025480(A025480(A295041(2*n)²))` -/
def P9397182407298158406.Spec : Prop :=
  ∀ n, P9397182407298158406.a n = A124093 n

end A124093

/-!
# A124095: Happy numbers without zeros and with digits in nondecreasing order.

The programs for A124095, there is no canonical definition to state claims against.
-/

/-! ## A124095.P11033476384947236726

`∩[A007770(n+1), A009994(n+1)]`
-/

namespace A124095.P11033476384947236726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124095.P11033476384947236726

/-! ## A124095.P3211885441144297310

`record[A004185(A007770(n+1))]`
-/

namespace A124095.P3211885441144297310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A007770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124095.P3211885441144297310

/-! ## A124095.P10524013976935129169

`eq[A031176(n)², A193582(n)]`
-/

namespace A124095.P10524013976935129169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124095.P10524013976935129169

/-! ## A124095.P17140860480625256601

`record[A004185(eq[1, A031176(n+1)]+1)]`
-/

namespace A124095.P17140860480625256601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124095.P17140860480625256601

/-! ## A124095.P155349334047738481

`record[A004185(lt[A103369(n+1), 2]+1)]`
-/

namespace A124095.P155349334047738481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124095.P155349334047738481

/-! ## A124095.P6287913454605937302

`record[A004185(n+1)/A031176(n+1)]`
-/

namespace A124095.P6287913454605937302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004185 (n + 1) : ℚ) / (A031176 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124095.P6287913454605937302

/-! ## A124095.P17949124182342226170

`record[A004185(n+1)/A103369(n+1)]`
-/

namespace A124095.P17949124182342226170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004185 (n + 1) : ℚ) / (A103369 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124095.P17949124182342226170

/-! ## A124095.P6780973742795464921

`record[A028310(A004185(n))/A031176(n)]`
-/

namespace A124095.P6780973742795464921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A004185 n).toNat : ℚ) / (A031176 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124095.P6780973742795464921

/-! ## A124095.P2035407268377281055

`eq[A004185(n)*A031176(n), A028310(n)]`
-/

namespace A124095.P2035407268377281055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n * A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124095.P2035407268377281055

/-!
# A124096: Primes p that divide Fibonacci[(p+1)/3].

The programs for A124096, there is no canonical definition to state claims against.
-/

/-! ## A124096.P9608150851769230277

`p?[gcd(A007918(6*n+15), A080878(n+3))]`
-/

namespace A124096.P9608150851769230277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007918 (6 * n + 15)) (A080878 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A124096.P9608150851769230277

/-! ## A124096.P14532754421203268480

`A216067(record[A111603((n+1)/3^val(n+1, 3))])`
-/

namespace A124096.P14532754421203268480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216067 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124096.P14532754421203268480

/-! ## A124096.P6560976351308760056

`∩[A216067(n+1), A248173(n+1)]`
-/

namespace A124096.P6560976351308760056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124096.P6560976351308760056

/-!
# A124098: Primes p such that 3p -+ 4 are primes.

The programs for A124098, there is no canonical definition to state claims against.
-/

/-! ## A124098.P14902640475846576857

`A125216(n+1)/3`
-/

namespace A124098.P14902640475846576857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125216 (n + 1) : ℚ) / 3

end

end A124098.P14902640475846576857

/-! ## A124098.P15140374811278534314

`∩[A023209(n+1), A258261(n+1)]`
-/

namespace A124098.P15140374811278534314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124098.P15140374811278534314

/-! ## A124098.P15318166356438063095

`∩[A034936(n+1), A258261(n+1)]`
-/

namespace A124098.P15318166356438063095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124098.P15318166356438063095

/-! ## A124098.P8823695129162164666

`∩[A023209(n+1), A228121(n+1)]`
-/

namespace A124098.P8823695129162164666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124098.P8823695129162164666

/-! ## A124098.P2698782487739271304

`record[A006530(A164385(n+1))]`
-/

namespace A124098.P2698782487739271304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A164385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124098.P2698782487739271304

/-! ## A124098.P15998116344539484661

`record[A006530(A087680(n+2))]`
-/

namespace A124098.P15998116344539484661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087680 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124098.P15998116344539484661

/-! ## A124098.P6496061960813699734

`record[A006530(A023202(n+2)+4)]`
-/

namespace A124098.P6496061960813699734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023202 (n + 2) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124098.P6496061960813699734

/-! ## A124098.P1505839201199029454

`record[A006530(A092402(n+2)-4)]`
-/

namespace A124098.P1505839201199029454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092402 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124098.P1505839201199029454

/-!
# A124099: Sum_(x^i*y^j*z^k) with i + j + k = m and (x, y, z) = the primitive Pythagorean triple (5, 12, 13).

The programs for A124099, the canonical program `A124099.P2322966720705821690` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124099 has offset 0).

The definition of A124099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124099.P2322966720705821690

`30*a(n-1)-281*a(n-2)+780*a(n-3)` with `a(0)=1, a(1)=30, a(2)=619`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124099

/-- `30*a(n-1)-281*a(n-2)+780*a(n-3)` -/
def P2322966720705821690.Spec : Prop :=
  ∀ n, P2322966720705821690.a n = A124099 n

theorem P2322966720705821690.correct : P2322966720705821690.Spec := by
  intro n
  simp only [A124099]

end A124099

