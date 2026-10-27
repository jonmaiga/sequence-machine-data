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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
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
# A087503: a(n) = 3*(a(n-2) + 1), with a(0) = 1, a(1) = 3.

The programs for A087503, the canonical program `A087503.P3873896618433352477` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087503 has offset 0).

The definition of A087503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(a(n-2)+1)` (program `A087503.P3873896618433352477`, by `A087503.P3873896618433352477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087503.P3873896618433352477

`3*(a(n-2)+1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087503

/-- `3*(a(n-2)+1)` -/
def P3873896618433352477.Spec : Prop :=
  ∀ n, (P3873896618433352477.a n : ℤ) = A087503 n

theorem P3873896618433352477.correct : P3873896618433352477.Spec := by
  intro n
  simp only [A087503]

end A087503

/-! ## A087503.P17426067215661451187

`3/2*(3^floor((n+1)/2)+3^floor(n/2)-3^floor((n-1)/2)-1)`
-/

namespace A087503.P17426067215661451187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * ((3 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) + (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (3 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ) - 1)

end

end A087503.P17426067215661451187

namespace A087503

/-- `3/2*(3^floor((n+1)/2)+3^floor(n/2)-3^floor((n-1)/2)-1)` -/
def P17426067215661451187.Spec : Prop :=
  ∀ n, P17426067215661451187.a n = (A087503 n : ℚ)

end A087503

/-! ## A087503.P831087030714394325

`a(n-1)+A038754(n)` with `a(0)=1`
-/

namespace A087503.P831087030714394325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A038754 n

end

end A087503.P831087030714394325

namespace A087503

/-- `a(n-1)+A038754(n)` -/
def P831087030714394325.Spec : Prop :=
  ∀ n, P831087030714394325.a n = A087503 n

end A087503

/-! ## A087503.P18105630363444913300

`A132667(a(n-1)+1)` with `a(0)=1`
-/

namespace A087503.P18105630363444913300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132667 (a (n - 1) + 1).toNat

end

end A087503.P18105630363444913300

namespace A087503

/-- `A132667(a(n-1)+1)` -/
def P18105630363444913300.Spec : Prop :=
  ∀ n, P18105630363444913300.a n = A087503 n

end A087503

/-! ## A087503.P8707382251703599542

`∑[ogf((1+2x)/(1-3x^2))]`
-/

namespace A087503.P8707382251703599542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087503.P8707382251703599542

namespace A087503

/-- `∑[ogf((1+2x)/(1-3x^2))]` -/
def P8707382251703599542.Spec : Prop :=
  ∀ n, P8707382251703599542.a n = A087503 n

end A087503

/-! ## A087503.P15543213435820741867

`ogf((1+2x)/(1-x-3x^2+3x^3))`
-/

namespace A087503.P15543213435820741867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -3, 3] n

end

end A087503.P15543213435820741867

namespace A087503

/-- `ogf((1+2x)/(1-x-3x^2+3x^3))` -/
def P15543213435820741867.Spec : Prop :=
  ∀ n, P15543213435820741867.a n = A087503 n

end A087503

/-! ## A087503.P4625504794525469575

`∑[3*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A087503.P4625504794525469575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087503.P4625504794525469575

namespace A087503

/-- `∑[3*a(n-2)]` -/
def P4625504794525469575.Spec : Prop :=
  ∀ n, (P4625504794525469575.a n : ℤ) = A087503 n

end A087503

/-! ## A087503.P14369462749778152321

`lcm(3, a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A087503.P14369462749778152321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 3 (a (n - 2) + 1)

end

end A087503.P14369462749778152321

namespace A087503

/-- `lcm(3, a(n-2)+1)` -/
def P14369462749778152321.Spec : Prop :=
  ∀ n, (P14369462749778152321.a n : ℤ) = A087503 n

end A087503

/-! ## A087503.P2173833535147176794

`∑[∏[3/a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A087503.P2173833535147176794
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  3 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087503.P2173833535147176794

namespace A087503

/-- `∑[∏[3/a(n-1)]]` -/
def P2173833535147176794.Spec : Prop :=
  ∀ n, P2173833535147176794.a n = (A087503 n : ℚ)

end A087503

/-! ## A087503.P5959440530884712740

`6-3*(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A087503.P5959440530884712740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 - 3 * (1 - a (n - 2))

end

end A087503.P5959440530884712740

namespace A087503

/-- `6-3*(1-a(n-2))` -/
def P5959440530884712740.Spec : Prop :=
  ∀ n, P5959440530884712740.a n = A087503 n

end A087503

/-! ## A087503.P15566647099087665228

`∑[a(n-2)/(1-2/3)]` with `a(0)=1, a(1)=2`
-/

namespace A087503.P15566647099087665228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087503.P15566647099087665228

namespace A087503

/-- `∑[a(n-2)/(1-2/3)]` -/
def P15566647099087665228.Spec : Prop :=
  ∀ n, P15566647099087665228.a n = (A087503 n : ℚ)

end A087503

/-! ## A087503.P13826027823547383993

`(a(n-2)+1)/(1-2/3)` with `a(0)=1, a(1)=3`
-/

namespace A087503.P13826027823547383993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 2) + 1) / (1 - (2 : ℚ) / 3)

end

end A087503.P13826027823547383993

namespace A087503

/-- `(a(n-2)+1)/(1-2/3)` -/
def P13826027823547383993.Spec : Prop :=
  ∀ n, P13826027823547383993.a n = (A087503 n : ℚ)

end A087503

/-! ## A087503.P7673767508128709248

`3-a(n-2)/(2/3-1)` with `a(0)=1, a(1)=3`
-/

namespace A087503.P7673767508128709248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A087503.P7673767508128709248

namespace A087503

/-- `3-a(n-2)/(2/3-1)` -/
def P7673767508128709248.Spec : Prop :=
  ∀ n, P7673767508128709248.a n = (A087503 n : ℚ)

end A087503

/-! ## A087503.P9587069757571572589

`a(n-2)+a(n-2)+a(n-2)+3` with `a(0)=1, a(1)=3`
-/

namespace A087503.P9587069757571572589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + 3))

end

end A087503.P9587069757571572589

namespace A087503

/-- `a(n-2)+a(n-2)+a(n-2)+3` -/
def P9587069757571572589.Spec : Prop :=
  ∀ n, (P9587069757571572589.a n : ℤ) = A087503 n

theorem P9587069757571572589.correct : P9587069757571572589.Spec := by
  intro n
  simp only [A087503, Nat.add_sub_cancel, A087503.P9587069757571572589.a, A087503.P3873896618433352477.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A087503

/-! ## A087503.P13850151827865939660

`∑[A038754(n)]`
-/

namespace A087503.P13850151827865939660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087503.P13850151827865939660

namespace A087503

/-- `∑[A038754(n)]` -/
def P13850151827865939660.Spec : Prop :=
  ∀ n, P13850151827865939660.a n = A087503 n

end A087503

/-! ## A087503.P10331683779586376320

`∑[A182522(n+1)]`
-/

namespace A087503.P10331683779586376320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087503.P10331683779586376320

namespace A087503

/-- `∑[A182522(n+1)]` -/
def P10331683779586376320.Spec : Prop :=
  ∀ n, P10331683779586376320.a n = A087503 n

end A087503

/-! ## A087503.P13963870528432653254

`A372782(n+1)-1`
-/

namespace A087503.P13963870528432653254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372782 (n + 1) - 1

end

end A087503.P13963870528432653254

namespace A087503

/-- `A372782(n+1)-1` -/
def P13963870528432653254.Spec : Prop :=
  ∀ n, P13963870528432653254.a n = A087503 n

end A087503

/-! ## A087503.P5928745860828376552

`A246360(n+3)-2`
-/

namespace A087503.P5928745860828376552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246360 (n + 3) - 2

end

end A087503.P5928745860828376552

namespace A087503

/-- `A246360(n+3)-2` -/
def P5928745860828376552.Spec : Prop :=
  ∀ n, P5928745860828376552.a n = A087503 n

end A087503

/-! ## A087503.P4453024071497943187

`∑[A062318(n+1)+1]`
-/

namespace A087503.P4453024071497943187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087503.P4453024071497943187

namespace A087503

/-- `∑[A062318(n+1)+1]` -/
def P4453024071497943187.Spec : Prop :=
  ∀ n, P4453024071497943187.a n = A087503 n

end A087503

/-! ## A087503.P8831118522374159513

`∑[A068911(n+1)/2]`
-/

namespace A087503.P8831118522374159513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068911 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087503.P8831118522374159513

namespace A087503

/-- `∑[A068911(n+1)/2]` -/
def P8831118522374159513.Spec : Prop :=
  ∀ n, P8831118522374159513.a n = (A087503 n : ℚ)

end A087503

/-!
# A087504: Composition length of the n-th symmetric power of the natural representation of a finite subgroup of SL(2,C) of type E_7 (binary octahedral group).

The programs for A087504, the canonical program `A087504.P17278885990301914553` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087504 has offset 0).

The definition of A087504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087504.P17278885990301914553

`a(n-1)-a(n-3)+2*a(n-4)-a(n-5)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=3, a(7)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087504

/-- `a(n-1)-a(n-3)+2*a(n-4)-a(n-5)+a(n-7)-a(n-8)` -/
def P17278885990301914553.Spec : Prop :=
  ∀ n, P17278885990301914553.a n = A087504 n

theorem P17278885990301914553.correct : P17278885990301914553.Spec := by
  intro n
  simp only [A087504]

end A087504

/-! ## A087504.P14791645857767680160

`A057353(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A087504.P14791645857767680160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A057353 n - a (n - 3)

end

end A087504.P14791645857767680160

namespace A087504

/-- `A057353(n)-a(n-3)` -/
def P14791645857767680160.Spec : Prop :=
  ∀ n, P14791645857767680160.a n = A087504 n

end A087504

/-! ## A087504.P4704806188412588720

`A187035(n)+A124072(n)`
-/

namespace A087504.P4704806188412588720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187035 n + A124072 n

end

end A087504.P4704806188412588720

namespace A087504

/-- `A187035(n)+A124072(n)` -/
def P4704806188412588720.Spec : Prop :=
  ∀ n, P4704806188412588720.a n = A087504 n

end A087504

/-! ## A087504.P9093684588581051822

`A008619(A004524(n)+A154958(n)-1)`
-/

namespace A087504.P9093684588581051822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004524 n + (A154958 n - 1)).toNat

end

end A087504.P9093684588581051822

namespace A087504

/-- `A008619(A004524(n)+A154958(n)-1)` -/
def P9093684588581051822.Spec : Prop :=
  ∀ n, P9093684588581051822.a n = A087504 n

end A087504

/-! ## A087504.P18376417639738834718

`A008619(A004524(n)-(1-A154958(n)))`
-/

namespace A087504.P18376417639738834718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004524 n - (1 - A154958 n)).toNat

end

end A087504.P18376417639738834718

namespace A087504

/-- `A008619(A004524(n)-(1-A154958(n)))` -/
def P18376417639738834718.Spec : Prop :=
  ∀ n, P18376417639738834718.a n = A087504 n

end A087504

/-! ## A087504.P8221734844655617092

`A004526(n-A063279(n+3))+1`
-/

namespace A087504.P8221734844655617092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A063279 (n + 3)).toNat + 1

end

end A087504.P8221734844655617092

namespace A087504

/-- `A004526(n-A063279(n+3))+1` -/
def P8221734844655617092.Spec : Prop :=
  ∀ n, P8221734844655617092.a n = A087504 n

end A087504

/-! ## A087504.P11617399819193582917

`A165351(n+1-A063279(n+3))/3`
-/

namespace A087504.P11617399819193582917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165351 ((n + 1 : ℤ) - A063279 (n + 3)).toNat : ℚ) / 3

end

end A087504.P11617399819193582917

namespace A087504

/-- `A165351(n+1-A063279(n+3))/3` -/
def P11617399819193582917.Spec : Prop :=
  ∀ n, P11617399819193582917.a n = (A087504 n : ℚ)

end A087504

/-! ## A087504.P10513721995889965138

`A110655(A109359(n+1))`
-/

namespace A087504.P10513721995889965138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A109359 (n + 1)).toNat

end

end A087504.P10513721995889965138

namespace A087504

/-- `A110655(A109359(n+1))` -/
def P10513721995889965138.Spec : Prop :=
  ∀ n, P10513721995889965138.a n = A087504 n

end A087504

/-! ## A087504.P3008847602355126419

`A091572(n)/2-A004525(A091573(n))`
-/

namespace A087504.P3008847602355126419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091572 n : ℚ) / 2 - (A004525 (A091573 n).toNat : ℚ)

end

end A087504.P3008847602355126419

namespace A087504

/-- `A091572(n)/2-A004525(A091573(n))` -/
def P3008847602355126419.Spec : Prop :=
  ∀ n, P3008847602355126419.a n = (A087504 n : ℚ)

end A087504

/-! ## A087504.P16039031324817446276

`A004525(A091572(n))-A004525(A091573(n))`
-/

namespace A087504.P16039031324817446276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091572 n).toNat - A004525 (A091573 n).toNat

end

end A087504.P16039031324817446276

namespace A087504

/-- `A004525(A091572(n))-A004525(A091573(n))` -/
def P16039031324817446276.Spec : Prop :=
  ∀ n, P16039031324817446276.a n = A087504 n

end A087504

/-!
# A087505: Numbers k such that 5*k+3 is a prime.

The programs for A087505, the canonical program `A087505.P2303323204147198729` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087505 has offset 1).

The definition of A087505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087505.P9494252515017407122

`(p?[5*n-2]-3)/5`
-/

namespace A087505.P9494252515017407122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 5

end

end A087505.P9494252515017407122

namespace A087505

/-- `(p?[5*n-2]-3)/5` -/
def P9494252515017407122.Spec : Prop :=
  ∀ n, P9494252515017407122.a n = (A087505 (n + 1) : ℚ)

end A087505

/-! ## A087505.P2303323204147198729

`A024896(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087505

/-- `A024896(n+1)-1` -/
def P2303323204147198729.Spec : Prop :=
  ∀ n, P2303323204147198729.a n = A087505 (n + 1)

theorem P2303323204147198729.correct : P2303323204147198729.Spec := by
  intro n
  simp only [A087505, Nat.add_sub_cancel]

end A087505

/-! ## A087505.P765801906967044650

`A107304(n+1)-2`
-/

namespace A087505.P765801906967044650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107304 (n + 1) - 2

end

end A087505.P765801906967044650

namespace A087505

/-- `A107304(n+1)-2` -/
def P765801906967044650.Spec : Prop :=
  ∀ n, P765801906967044650.a n = A087505 (n + 1)

theorem P765801906967044650.correct : P765801906967044650.Spec := by
  intro n
  simp only [A087505, Nat.add_sub_cancel, A087505.P765801906967044650.a, A087505.P2303323204147198729.a, A024896, A024896.P16795519031503293182.f1, A024896.P16795519031503293182.a, A107304, A107304.P8298507591522945342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A087505

/-! ## A087505.P12071153373807010171

`2*A102338(n+1)`
-/

namespace A087505.P12071153373807010171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102338 (n + 1)

end

end A087505.P12071153373807010171

namespace A087505

/-- `2*A102338(n+1)` -/
def P12071153373807010171.Spec : Prop :=
  ∀ n, P12071153373807010171.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P2752785106379137409

`floor(A030431(n+1)/5)`
-/

namespace A087505.P2752785106379137409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030431 (n + 1) : ℚ) / 5⌋

end

end A087505.P2752785106379137409

namespace A087505

/-- `floor(A030431(n+1)/5)` -/
def P2752785106379137409.Spec : Prop :=
  ∀ n, P2752785106379137409.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P2990219690525774806

`2*(A024913(n+1)-1)`
-/

namespace A087505.P2990219690525774806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024913 (n + 1) - 1)

end

end A087505.P2990219690525774806

namespace A087505

/-- `2*(A024913(n+1)-1)` -/
def P2990219690525774806.Spec : Prop :=
  ∀ n, P2990219690525774806.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P7344157066016301414

`A024913(n+1)+A102338(n+1)-1`
-/

namespace A087505.P7344157066016301414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) + (A102338 (n + 1) - 1)

end

end A087505.P7344157066016301414

namespace A087505

/-- `A024913(n+1)+A102338(n+1)-1` -/
def P7344157066016301414.Spec : Prop :=
  ∀ n, P7344157066016301414.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P7400679749651557974

`A102338(n+1)+A102338(n+1)+A000007(A286552(n))`
-/

namespace A087505.P7400679749651557974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1) + (A102338 (n + 1) + A000007 (A286552 n).toNat)

end

end A087505.P7400679749651557974

namespace A087505

/-- `A102338(n+1)+A102338(n+1)+A000007(A286552(n))` -/
def P7400679749651557974.Spec : Prop :=
  ∀ n, P7400679749651557974.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P5272391560191814446

`A005843(A102338(n+1))`
-/

namespace A087505.P5272391560191814446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A102338 (n + 1)).toNat

end

end A087505.P5272391560191814446

namespace A087505

/-- `A005843(A102338(n+1))` -/
def P5272391560191814446.Spec : Prop :=
  ∀ n, P5272391560191814446.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P9862012586360626821

`eq[1, A001222(5*n+3)]`
-/

namespace A087505.P9862012586360626821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087505.P9862012586360626821

namespace A087505

/-- `eq[1, A001222(5*n+3)]` -/
def P9862012586360626821.Spec : Prop :=
  ∀ n, (P9862012586360626821.a n : ℤ) = A087505 (n + 1)

end A087505

/-! ## A087505.P5271288098623269046

`eq[2, A000005(5*n+3)]`
-/

namespace A087505.P5271288098623269046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087505.P5271288098623269046

namespace A087505

/-- `eq[2, A000005(5*n+3)]` -/
def P5271288098623269046.Spec : Prop :=
  ∀ n, (P5271288098623269046.a n : ℤ) = A087505 (n + 1)

end A087505

/-! ## A087505.P10801136027456060026

`lt[A001222(5*(n+1)-2), 2]`
-/

namespace A087505.P10801136027456060026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 1) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087505.P10801136027456060026

namespace A087505

/-- `lt[A001222(5*(n+1)-2), 2]` -/
def P10801136027456060026.Spec : Prop :=
  ∀ n, (P10801136027456060026.a n : ℤ) = A087505 (n + 1)

end A087505

/-! ## A087505.P6684102393942969848

`lt[A000005(5*(n+1)-2), 3]`
-/

namespace A087505.P6684102393942969848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087505.P6684102393942969848

namespace A087505

/-- `lt[A000005(5*(n+1)-2), 3]` -/
def P6684102393942969848.Spec : Prop :=
  ∀ n, (P6684102393942969848.a n : ℤ) = A087505 (n + 1)

end A087505

/-! ## A087505.P2319382206667608192

`lt[n+1, A020639(5*n+3)]`
-/

namespace A087505.P2319382206667608192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087505.P2319382206667608192

namespace A087505

/-- `lt[n+1, A020639(5*n+3)]` -/
def P2319382206667608192.Spec : Prop :=
  ∀ n, (P2319382206667608192.a n : ℤ) = A087505 (n + 1)

end A087505

/-! ## A087505.P5009676404516248897

`A004273(A024913(n+1))-1`
-/

namespace A087505.P5009676404516248897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024913 (n + 1)).toNat - 1

end

end A087505.P5009676404516248897

namespace A087505

/-- `A004273(A024913(n+1))-1` -/
def P5009676404516248897.Spec : Prop :=
  ∀ n, P5009676404516248897.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P15550498107501219484

`2*eq[2, A000005(A017305(n))]`
-/

namespace A087505.P15550498107501219484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087505.P15550498107501219484

namespace A087505

/-- `2*eq[2, A000005(A017305(n))]` -/
def P15550498107501219484.Spec : Prop :=
  ∀ n, (P15550498107501219484.a n : ℤ) = A087505 (n + 1)

end A087505

/-! ## A087505.P3195430176877830686

`A004273(A102338(n+1)+1)-1`
-/

namespace A087505.P3195430176877830686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A102338 (n + 1) + 1).toNat - 1

end

end A087505.P3195430176877830686

namespace A087505

/-- `A004273(A102338(n+1)+1)-1` -/
def P3195430176877830686.Spec : Prop :=
  ∀ n, P3195430176877830686.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P8536042426163915696

`2*A023452(A108584(n+1))`
-/

namespace A087505.P8536042426163915696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023452 (A108584 (n + 1)).toNat

end

end A087505.P8536042426163915696

namespace A087505

/-- `2*A023452(A108584(n+1))` -/
def P8536042426163915696.Spec : Prop :=
  ∀ n, P8536042426163915696.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P5587785587786125487

`2*A023455(A108854(n+1))`
-/

namespace A087505.P5587785587786125487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023455 (A108854 (n + 1)).toNat

end

end A087505.P5587785587786125487

namespace A087505

/-- `2*A023455(A108854(n+1))` -/
def P5587785587786125487.Spec : Prop :=
  ∀ n, P5587785587786125487.a n = A087505 (n + 1)

end A087505

/-! ## A087505.P13498885906192823558

`A004442(A024896(n+1))`
-/

namespace A087505.P13498885906192823558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A024896 (n + 1)).toNat

end

end A087505.P13498885906192823558

namespace A087505

/-- `A004442(A024896(n+1))` -/
def P13498885906192823558.Spec : Prop :=
  ∀ n, P13498885906192823558.a n = A087505 (n + 1)

end A087505

/-!
# A087506: Primes in A087461.

The programs for A087506, the canonical program `A087506.P14667531462698864031` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087506 has offset 1).

The definition of A087506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087506.P14667531462698864031

`p?[A087461(n+2)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087506

/-- `p?[A087461(n+2)]` -/
def P14667531462698864031.Spec : Prop :=
  ∀ n, P14667531462698864031.a n = A087506 (n + 1)

theorem P14667531462698864031.correct : P14667531462698864031.Spec := by
  intro n
  simp only [A087506, Nat.add_sub_cancel]

end A087506

/-! ## A087506.P14805212838266034259

`∩[A065396(n+1), A087461(n+2)]`
-/

namespace A087506.P14805212838266034259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P14805212838266034259

namespace A087506

/-- `∩[A065396(n+1), A087461(n+2)]` -/
def P14805212838266034259.Spec : Prop :=
  ∀ n, (P14805212838266034259.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P2394673261843954683

`∩[A000040(n+1), A087461(n+2)]`
-/

namespace A087506.P2394673261843954683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P2394673261843954683

namespace A087506

/-- `∩[A000040(n+1), A087461(n+2)]` -/
def P2394673261843954683.Spec : Prop :=
  ∀ n, (P2394673261843954683.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P10919277288435748786

`∩[A006005(n+1), A087461(n+2)]`
-/

namespace A087506.P10919277288435748786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P10919277288435748786

namespace A087506

/-- `∩[A006005(n+1), A087461(n+2)]` -/
def P10919277288435748786.Spec : Prop :=
  ∀ n, (P10919277288435748786.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P18380526004665142173

`∩[A008578(n+1), A087461(n+2)]`
-/

namespace A087506.P18380526004665142173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P18380526004665142173

namespace A087506

/-- `∩[A008578(n+1), A087461(n+2)]` -/
def P18380526004665142173.Spec : Prop :=
  ∀ n, (P18380526004665142173.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P6728690999003705538

`∩[A045344(n+1), A087461(n+2)]`
-/

namespace A087506.P6728690999003705538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P6728690999003705538

namespace A087506

/-- `∩[A045344(n+1), A087461(n+2)]` -/
def P6728690999003705538.Spec : Prop :=
  ∀ n, (P6728690999003705538.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P9172189153196432150

`∩[A046022(n+1), A087461(n+2)]`
-/

namespace A087506.P9172189153196432150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P9172189153196432150

namespace A087506

/-- `∩[A046022(n+1), A087461(n+2)]` -/
def P9172189153196432150.Spec : Prop :=
  ∀ n, (P9172189153196432150.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P13797294650035378596

`∩[A051948(n+1), A087461(n+2)]`
-/

namespace A087506.P13797294650035378596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P13797294650035378596

namespace A087506

/-- `∩[A051948(n+1), A087461(n+2)]` -/
def P13797294650035378596.Spec : Prop :=
  ∀ n, (P13797294650035378596.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P6434756152007712683

`∩[A053813(n+1), A087461(n+2)]`
-/

namespace A087506.P6434756152007712683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P6434756152007712683

namespace A087506

/-- `∩[A053813(n+1), A087461(n+2)]` -/
def P6434756152007712683.Spec : Prop :=
  ∀ n, (P6434756152007712683.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P3095835638136388861

`∩[A064728(n+1), A087461(n+2)]`
-/

namespace A087506.P3095835638136388861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P3095835638136388861

namespace A087506

/-- `∩[A064728(n+1), A087461(n+2)]` -/
def P3095835638136388861.Spec : Prop :=
  ∀ n, (P3095835638136388861.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P2833731146325668761

`∩[A065091(n+1), A087461(n+2)]`
-/

namespace A087506.P2833731146325668761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087506.P2833731146325668761

namespace A087506

/-- `∩[A065091(n+1), A087461(n+2)]` -/
def P2833731146325668761.Spec : Prop :=
  ∀ n, (P2833731146325668761.a n : ℤ) = A087506 (n + 1)

end A087506

/-! ## A087506.P1665325380943050095

`filter[A087461(n+2), A010051(#)]`
-/

namespace A087506.P1665325380943050095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A087506.P1665325380943050095

namespace A087506

/-- `filter[A087461(n+2), A010051(#)]` -/
def P1665325380943050095.Spec : Prop :=
  ∀ n, P1665325380943050095.a n = A087506 (n + 1)

end A087506

/-! ## A087506.P5827662412135236244

`filter[A087461(n+2), A323152(#)]`
-/

namespace A087506.P5827662412135236244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A087506.P5827662412135236244

namespace A087506

/-- `filter[A087461(n+2), A323152(#)]` -/
def P5827662412135236244.Spec : Prop :=
  ∀ n, P5827662412135236244.a n = A087506 (n + 1)

end A087506

/-! ## A087506.P8258693257978083708

`filter[A087461(n+2), A323153(#)]`
-/

namespace A087506.P8258693257978083708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A087506.P8258693257978083708

namespace A087506

/-- `filter[A087461(n+2), A323153(#)]` -/
def P8258693257978083708.Spec : Prop :=
  ∀ n, P8258693257978083708.a n = A087506 (n + 1)

end A087506

/-! ## A087506.P1906597683221061471

`record[A006530(A092390(n+1))]`
-/

namespace A087506.P1906597683221061471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087506.P1906597683221061471

namespace A087506

/-- `record[A006530(A092390(n+1))]` -/
def P1906597683221061471.Spec : Prop :=
  ∀ n, P1906597683221061471.a n = A087506 (n + 1)

end A087506

/-!
# A087507: #{0<=k<=n: k*n is divisible by 3}.

The programs for A087507, the canonical program `A087507.P14226368822229017275` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087507 has offset 0).

The definition of A087507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087507.P14226368822229017275

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087507

/-- `2*a(n-3)-a(n-6)` -/
def P14226368822229017275.Spec : Prop :=
  ∀ n, P14226368822229017275.a n = A087507 n

theorem P14226368822229017275.correct : P14226368822229017275.Spec := by
  intro n
  simp only [A087507]

end A087507

/-! ## A087507.P9435250222151333368

`lcm(3, ∑[(n+1)%3])/3`
-/

namespace A087507.P9435250222151333368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A087507.P9435250222151333368

namespace A087507

/-- `lcm(3, ∑[(n+1)%3])/3` -/
def P9435250222151333368.Spec : Prop :=
  ∀ n, P9435250222151333368.a n = (A087507 n : ℚ)

end A087507

/-! ## A087507.P9980532617743580108

`gcd(3, n)*floor(n/3)+1`
-/

namespace A087507.P9980532617743580108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℤ) * ⌊(n : ℚ) / 3⌋ + 1

end

end A087507.P9980532617743580108

namespace A087507

/-- `gcd(3, n)*floor(n/3)+1` -/
def P9980532617743580108.Spec : Prop :=
  ∀ n, P9980532617743580108.a n = A087507 n

end A087507

/-! ## A087507.P11547995917655298469

`Δ[ceil(n/3)²]+ceil(n/3)`
-/

namespace A087507.P11547995917655298469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈(n : ℚ) / 3⌉

end

end A087507.P11547995917655298469

namespace A087507

/-- `Δ[ceil(n/3)²]+ceil(n/3)` -/
def P11547995917655298469.Spec : Prop :=
  ∀ n, P11547995917655298469.a n = A087507 n

end A087507

/-! ## A087507.P17931775627976291679

`floor((n+1)*a(n-3)/(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A087507.P17931775627976291679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(n + 1 : ℚ) * ((a (n - 3) : ℚ) / ((n : ℤ) - 2 : ℚ))⌋

end

end A087507.P17931775627976291679

namespace A087507

/-- `floor((n+1)*a(n-3)/(n-2))` -/
def P17931775627976291679.Spec : Prop :=
  ∀ n, P17931775627976291679.a n = A087507 n

end A087507

/-! ## A087507.P1992895347897932217

`A123684(round(2*n/3)+1)`
-/

namespace A087507.P1992895347897932217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1).toNat

end

end A087507.P1992895347897932217

namespace A087507

/-- `A123684(round(2*n/3)+1)` -/
def P1992895347897932217.Spec : Prop :=
  ∀ n, P1992895347897932217.a n = A087507 n

end A087507

/-! ## A087507.P14374297691245288958

`A092200(n)/A169609(n)`
-/

namespace A087507.P14374297691245288958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092200 n : ℚ) / (A169609 n : ℚ)

end

end A087507.P14374297691245288958

namespace A087507

/-- `A092200(n)/A169609(n)` -/
def P14374297691245288958.Spec : Prop :=
  ∀ n, P14374297691245288958.a n = (A087507 n : ℚ)

end A087507

/-! ## A087507.P6471084157772982112

`gcd(A033488(n), A092200(n))`
-/

namespace A087507.P6471084157772982112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033488 n) (A092200 n)

end

end A087507.P6471084157772982112

namespace A087507

/-- `gcd(A033488(n), A092200(n))` -/
def P6471084157772982112.Spec : Prop :=
  ∀ n, (P6471084157772982112.a n : ℤ) = A087507 n

end A087507

/-! ## A087507.P16075701821274600353

`gcd(A000969(n), A194767(n))`
-/

namespace A087507.P16075701821274600353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000969 n) (A194767 n)

end

end A087507.P16075701821274600353

namespace A087507

/-- `gcd(A000969(n), A194767(n))` -/
def P16075701821274600353.Spec : Prop :=
  ∀ n, (P16075701821274600353.a n : ℤ) = A087507 n

end A087507

/-! ## A087507.P18348253960672276277

`A212978(n)%A047261(n+1)`
-/

namespace A087507.P18348253960672276277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212978 n) (A047261 (n + 1))

end

end A087507.P18348253960672276277

namespace A087507

/-- `A212978(n)%A047261(n+1)` -/
def P18348253960672276277.Spec : Prop :=
  ∀ n, P18348253960672276277.a n = A087507 n

end A087507

/-! ## A087507.P5178624646010895039

`A051176(A092200(n))`
-/

namespace A087507.P5178624646010895039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A092200 n).toNat

end

end A087507.P5178624646010895039

namespace A087507

/-- `A051176(A092200(n))` -/
def P5178624646010895039.Spec : Prop :=
  ∀ n, P5178624646010895039.a n = A087507 n

end A087507

/-! ## A087507.P12205223834718266892

`A051176(A130481(n+1))`
-/

namespace A087507.P12205223834718266892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A130481 (n + 1)).toNat

end

end A087507.P12205223834718266892

namespace A087507

/-- `A051176(A130481(n+1))` -/
def P12205223834718266892.Spec : Prop :=
  ∀ n, P12205223834718266892.a n = A087507 n

end A087507

/-! ## A087507.P7388178027862036070

`gcd(2*A000330(n+1), A130481(n+1))`
-/

namespace A087507.P7388178027862036070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A000330 (n + 1)) (A130481 (n + 1))

end

end A087507.P7388178027862036070

namespace A087507

/-- `gcd(2*A000330(n+1), A130481(n+1))` -/
def P7388178027862036070.Spec : Prop :=
  ∀ n, (P7388178027862036070.a n : ℤ) = A087507 n

end A087507

/-! ## A087507.P7429105788703963906

`Δ[A000124(n)-A000124(A004523(n))]`
-/

namespace A087507.P7429105788703963906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A000124 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087507.P7429105788703963906

namespace A087507

/-- `Δ[A000124(n)-A000124(A004523(n))]` -/
def P7429105788703963906.Spec : Prop :=
  ∀ n, P7429105788703963906.a n = A087507 n

end A087507

/-! ## A087507.P12094131912744681815

`Δ[A000217(n)-A000217(A004523(n))]`
-/

namespace A087507.P12094131912744681815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A000217 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087507.P12094131912744681815

namespace A087507

/-- `Δ[A000217(n)-A000217(A004523(n))]` -/
def P12094131912744681815.Spec : Prop :=
  ∀ n, P12094131912744681815.a n = A087507 n

end A087507

/-! ## A087507.P14893166011618252823

`Δ[A080956(A004396(n+1))-A080956(n+1)]`
-/

namespace A087507.P14893166011618252823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (A004396 (n + 1)).toNat - A080956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087507.P14893166011618252823

namespace A087507

/-- `Δ[A080956(A004396(n+1))-A080956(n+1)]` -/
def P14893166011618252823.Spec : Prop :=
  ∀ n, P14893166011618252823.a n = A087507 n

end A087507

/-! ## A087507.P18149356212714657286

`Δ[A008748(n)+Δ[A008748(n)]²]`
-/

namespace A087507.P18149356212714657286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n + (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087507.P18149356212714657286

namespace A087507

/-- `Δ[A008748(n)+Δ[A008748(n)]²]` -/
def P18149356212714657286.Spec : Prop :=
  ∀ n, P18149356212714657286.a n = A087507 n

end A087507

/-! ## A087507.P10732576546970883768

`A051176(A079978(n+2)+n+1)`
-/

namespace A087507.P10732576546970883768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A079978 (n + 2) + (n + 1 : ℤ)).toNat

end

end A087507.P10732576546970883768

namespace A087507

/-- `A051176(A079978(n+2)+n+1)` -/
def P10732576546970883768.Spec : Prop :=
  ∀ n, P10732576546970883768.a n = A087507 n

end A087507

/-! ## A087507.P2147100356902544504

`A051176(n+2-A011655(n+2))`
-/

namespace A087507.P2147100356902544504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 ((n + 2 : ℤ) - A011655 (n + 2)).toNat

end

end A087507.P2147100356902544504

namespace A087507

/-- `A051176(n+2-A011655(n+2))` -/
def P2147100356902544504.Spec : Prop :=
  ∀ n, P2147100356902544504.a n = A087507 n

end A087507

/-! ## A087507.P9574849950544553540

`A134172(A063200(n+2))`
-/

namespace A087507.P9574849950544553540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (A063200 (n + 2)).toNat

end

end A087507.P9574849950544553540

namespace A087507

/-- `A134172(A063200(n+2))` -/
def P9574849950544553540.Spec : Prop :=
  ∀ n, P9574849950544553540.a n = A087507 n

end A087507

/-!
# A087508: Number of k such that mod(k*n,3) = 1 for 0 <= k <= n.

The programs for A087508, the canonical program `A087508.P427705373924640183` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087508 has offset 0).

The definition of A087508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087509, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087508.P427705373924640183

`A000027(n+1)-A087509(n)-A087507(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A087508

/-- `A000027(n+1)-A087509(n)-A087507(n)` -/
def P427705373924640183.Spec : Prop :=
  ∀ n, P427705373924640183.a n = A087508 n

theorem P427705373924640183.correct : P427705373924640183.Spec := by
  intro n
  simp only [A087508]

end A087508

/-! ## A087508.P17507930096593461704

`ceil((lcm(3, n)-n)/6)`
-/

namespace A087508.P17507930096593461704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lcm 3 n : ℤ) - (n : ℤ) : ℚ) / 6⌉

end

end A087508.P17507930096593461704

namespace A087508

/-- `ceil((lcm(3, n)-n)/6)` -/
def P17507930096593461704.Spec : Prop :=
  ∀ n, P17507930096593461704.a n = A087508 n

end A087508

/-! ## A087508.P16995125855251554735

`ceil(n/3*n²%3)`
-/

namespace A087508.P16995125855251554735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3 * ((n ^ 2 % 3 : ℕ) : ℚ)⌉

end

end A087508.P16995125855251554735

namespace A087508

/-- `ceil(n/3*n²%3)` -/
def P16995125855251554735.Spec : Prop :=
  ∀ n, P16995125855251554735.a n = A087508 n

end A087508

/-! ## A087508.P4888816078152538204

`(n^2)%3*ceil(n/3)`
-/

namespace A087508.P4888816078152538204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) * ⌈(n : ℚ) / 3⌉

end

end A087508.P4888816078152538204

namespace A087508

/-- `(n^2)%3*ceil(n/3)` -/
def P4888816078152538204.Spec : Prop :=
  ∀ n, P4888816078152538204.a n = A087508 n

end A087508

/-! ## A087508.P17560834420278142533

`lcm((n^4)%3, ceil(n/3))`
-/

namespace A087508.P17560834420278142533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n ^ 4 % 3 : ℕ) : ℤ) ⌈(n : ℚ) / 3⌉

end

end A087508.P17560834420278142533

namespace A087508

/-- `lcm((n^4)%3, ceil(n/3))` -/
def P17560834420278142533.Spec : Prop :=
  ∀ n, (P17560834420278142533.a n : ℤ) = A087508 n

end A087508

/-! ## A087508.P11752425470393337180

`abs(Δ[C(n², 3)%(n+1)])`
-/

namespace A087508.P11752425470393337180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3 % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A087508.P11752425470393337180

namespace A087508

/-- `abs(Δ[C(n², 3)%(n+1)])` -/
def P11752425470393337180.Spec : Prop :=
  ∀ n, P11752425470393337180.a n = A087508 n

end A087508

/-! ## A087508.P2299407347752427721

`ceil(n*round(sqrt(n%3))/3)`
-/

namespace A087508.P2299407347752427721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * SequenceMachineLib.roundAway (Real.sqrt ((n % 3 : ℕ) : ℝ)) : ℚ) / 3⌉

end

end A087508.P2299407347752427721

namespace A087508

/-- `ceil(n*round(sqrt(n%3))/3)` -/
def P2299407347752427721.Spec : Prop :=
  ∀ n, P2299407347752427721.a n = A087508 n

end A087508

/-! ## A087508.P11961586804371274760

`abs(∑[ogf(x/(1+2x+3x^2+2x^3+x^4))])`
-/

namespace A087508.P11961586804371274760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 2, 3, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A087508.P11961586804371274760

namespace A087508

/-- `abs(∑[ogf(x/(1+2x+3x^2+2x^3+x^4))])` -/
def P11961586804371274760.Spec : Prop :=
  ∀ n, P11961586804371274760.a n = A087508 n

end A087508

/-! ## A087508.P1716907792427624952

`∑[∑[ogf((x+x^2)/(1+2x+3x^2+2x^3+x^4))]]`
-/

namespace A087508.P1716907792427624952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 2, 3, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087508.P1716907792427624952

namespace A087508

/-- `∑[∑[ogf((x+x^2)/(1+2x+3x^2+2x^3+x^4))]]` -/
def P1716907792427624952.Spec : Prop :=
  ∀ n, P1716907792427624952.a n = A087508 n

end A087508

/-! ## A087508.P10205644899224529025

`floor((n+3)/(n-1)*a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A087508.P10205644899224529025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊(n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * (a (n - 3) : ℚ)⌋

end

end A087508.P10205644899224529025

namespace A087508

/-- `floor((n+3)/(n-1)*a(n-3))` -/
def P10205644899224529025.Spec : Prop :=
  ∀ n, P10205644899224529025.a n = A087508 n

end A087508

/-! ## A087508.P9480662395691410560

`a(n-3)+C(a(n-3), a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A087508.P9480662395691410560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + Nat.choose (a (n - 3)) (a (n - 2))

end

end A087508.P9480662395691410560

namespace A087508

/-- `a(n-3)+C(a(n-3), a(n-2))` -/
def P9480662395691410560.Spec : Prop :=
  ∀ n, (P9480662395691410560.a n : ℤ) = A087508 n

end A087508

/-! ## A087508.P13776652161901572352

`ceil((n+1)/3)%(∑[char[a(n-1)+3]]+1)` with `a(0)=1`
-/

namespace A087508.P13776652161901572352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℚ) / 3⌉ ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A087508.P13776652161901572352

namespace A087508

/-- `ceil((n+1)/3)%(∑[char[a(n-1)+3]]+1)` -/
def P13776652161901572352.Spec : Prop :=
  ∀ n, P13776652161901572352.a n = A087508 n

end A087508

/-! ## A087508.P11849889662405361093

`∑[a(n-3)²]-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A087508.P11849889662405361093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A087508.P11849889662405361093

namespace A087508

/-- `∑[a(n-3)²]-(a(n-1)+a(n-2))` -/
def P11849889662405361093.Spec : Prop :=
  ∀ n, P11849889662405361093.a n = A087508 n

end A087508

/-! ## A087508.P2622605618180569283

`∑[a(n-3)²]-a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A087508.P2622605618180569283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A087508.P2622605618180569283

namespace A087508

/-- `∑[a(n-3)²]-a(n-1)-a(n-2)` -/
def P2622605618180569283.Spec : Prop :=
  ∀ n, P2622605618180569283.a n = A087508 n

end A087508

/-! ## A087508.P5366344432293904156

`∑[floor(a(n-3))]-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087508.P5366344432293904156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A087508.P5366344432293904156

namespace A087508

/-- `∑[floor(a(n-3))]-(a(n-1)+a(n-2))` -/
def P5366344432293904156.Spec : Prop :=
  ∀ n, P5366344432293904156.a n = A087508 n

end A087508

/-! ## A087508.P2274214058429579741

`∑[floor(a(n-3))]-a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087508.P2274214058429579741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - a (n - 2)

end

end A087508.P2274214058429579741

namespace A087508

/-- `∑[floor(a(n-3))]-a(n-1)-a(n-2)` -/
def P2274214058429579741.Spec : Prop :=
  ∀ n, P2274214058429579741.a n = A087508 n

end A087508

/-! ## A087508.P16464717320204376476

`(a(n-1)+a(n-2)+gcd(n, a(n-2)))%n` with `a(0)=0, a(1)=1`
-/

namespace A087508.P16464717320204376476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + (a (n - 2) + Nat.gcd n (a (n - 2)))) % n

end

end A087508.P16464717320204376476

namespace A087508

/-- `(a(n-1)+a(n-2)+gcd(n, a(n-2)))%n` -/
def P16464717320204376476.Spec : Prop :=
  ∀ n, (P16464717320204376476.a n : ℤ) = A087508 n

end A087508

/-! ## A087508.P5258489643093031765

`gcd((a(n-2)-n)%n, a(n-1))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A087508.P5258489643093031765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.gcd (Int.tmod (a (n - 2) - (n : ℤ)) (n : ℤ)) (a (n - 1)) : ℤ) - a (n - 2)

end

end A087508.P5258489643093031765

namespace A087508

/-- `gcd((a(n-2)-n)%n, a(n-1))-a(n-2)` -/
def P5258489643093031765.Spec : Prop :=
  ∀ n, P5258489643093031765.a n = A087508 n

end A087508

/-! ## A087508.P9772851972495682612

`a(n-3)+a(n-3)^(a(n-1)*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A087508.P9772851972495682612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + a (n - 3) ^ (a (n - 1) * a (n - 2))

end

end A087508.P9772851972495682612

namespace A087508

/-- `a(n-3)+a(n-3)^(a(n-1)*a(n-2))` -/
def P9772851972495682612.Spec : Prop :=
  ∀ n, (P9772851972495682612.a n : ℤ) = A087508 n

end A087508

/-! ## A087508.P10520442941376207782

`abs(A128615(n))`
-/

namespace A087508.P10520442941376207782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128615 n|

end

end A087508.P10520442941376207782

namespace A087508

/-- `abs(A128615(n))` -/
def P10520442941376207782.Spec : Prop :=
  ∀ n, P10520442941376207782.a n = A087508 n

end A087508

/-!
# A087509: Number of k such that (k*n) == 2 (mod 3) for 0 <= k <= n.

The programs for A087509, the canonical program `A087509.P16726383197486069853` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087509 has offset 0).

The definition of A087509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087509.P16726383197486069853

`round((lcm(3, n)-n)/6)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087509

/-- `round((lcm(3, n)-n)/6)` -/
def P16726383197486069853.Spec : Prop :=
  ∀ n, P16726383197486069853.a n = A087509 n

theorem P16726383197486069853.correct : P16726383197486069853.Spec := by
  intro n
  simp only [A087509]

end A087509

/-! ## A087509.P4218522494675254994

`round(n/3*n²%3)`
-/

namespace A087509.P4218522494675254994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 * ((n ^ 2 % 3 : ℕ) : ℚ))

end

end A087509.P4218522494675254994

namespace A087509

/-- `round(n/3*n²%3)` -/
def P4218522494675254994.Spec : Prop :=
  ∀ n, P4218522494675254994.a n = A087509 n

end A087509

/-! ## A087509.P6586500995524606671

`(n+3)%(ceil(n/3)+1)`
-/

namespace A087509.P6586500995524606671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (⌈(n : ℚ) / 3⌉ + 1)

end

end A087509.P6586500995524606671

namespace A087509

/-- `(n+3)%(ceil(n/3)+1)` -/
def P6586500995524606671.Spec : Prop :=
  ∀ n, P6586500995524606671.a n = A087509 n

end A087509

/-! ## A087509.P4211322572119487104

`(n*n)%3*round(n/3)`
-/

namespace A087509.P4211322572119487104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * n % 3 : ℕ) : ℤ) * SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A087509.P4211322572119487104

namespace A087509

/-- `(n*n)%3*round(n/3)` -/
def P4211322572119487104.Spec : Prop :=
  ∀ n, P4211322572119487104.a n = A087509 n

end A087509

/-! ## A087509.P9805316235975549390

`Δ[floor((floor(2*n/3)/2)²)]`
-/

namespace A087509.P9805316235975549390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌊2 * ((n : ℚ) / 3)⌋ : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087509.P9805316235975549390

namespace A087509

/-- `Δ[floor((floor(2*n/3)/2)²)]` -/
def P9805316235975549390.Spec : Prop :=
  ∀ n, P9805316235975549390.a n = A087509 n

end A087509

/-! ## A087509.P1347324033760018099

`round(Δ[C(n-ceil(n/3), 2)]/2)`
-/

namespace A087509.P1347324033760018099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - ⌈(n : ℚ) / 3⌉).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2)

end

end A087509.P1347324033760018099

namespace A087509

/-- `round(Δ[C(n-ceil(n/3), 2)]/2)` -/
def P1347324033760018099.Spec : Prop :=
  ∀ n, P1347324033760018099.a n = A087509 n

end A087509

/-! ## A087509.P14682389819353861361

`gcd(a(n-1), a(n-2))+n%3-1` with `a(0)=0, a(1)=0`
-/

namespace A087509.P14682389819353861361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (Int.gcd (a (n - 1)) (a (n - 2)) : ℤ) + (((n % 3 : ℕ) : ℤ) - 1)

end

end A087509.P14682389819353861361

namespace A087509

/-- `gcd(a(n-1), a(n-2))+n%3-1` -/
def P14682389819353861361.Spec : Prop :=
  ∀ n, P14682389819353861361.a n = A087509 n

end A087509

/-! ## A087509.P2646825670781928005

`a(n-3)+C(a(n-3), a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A087509.P2646825670781928005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + Nat.choose (a (n - 3)) (a (n - 1))

end

end A087509.P2646825670781928005

namespace A087509

/-- `a(n-3)+C(a(n-3), a(n-1))` -/
def P2646825670781928005.Spec : Prop :=
  ∀ n, (P2646825670781928005.a n : ℤ) = A087509 n

end A087509

/-! ## A087509.P6062610584285297464

`2*Δ[A008133(n)/2]`
-/

namespace A087509.P6062610584285297464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008133 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A087509.P6062610584285297464

namespace A087509

/-- `2*Δ[A008133(n)/2]` -/
def P6062610584285297464.Spec : Prop :=
  ∀ n, P6062610584285297464.a n = (A087509 n : ℚ)

end A087509

/-! ## A087509.P6626539832127267249

`A011655(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A087509.P6626539832127267249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A011655 n + a (n - 3)

end

end A087509.P6626539832127267249

namespace A087509

/-- `A011655(n)+a(n-3)` -/
def P6626539832127267249.Spec : Prop :=
  ∀ n, P6626539832127267249.a n = A087509 n

end A087509

/-! ## A087509.P13042036745929874925

`A267208(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A087509.P13042036745929874925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A267208 n + a (n - 3)

end

end A087509.P13042036745929874925

namespace A087509

/-- `A267208(n)+a(n-3)` -/
def P13042036745929874925.Spec : Prop :=
  ∀ n, P13042036745929874925.a n = A087509 n

end A087509

/-! ## A087509.P16155654165530480541

`A151842(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A087509.P16155654165530480541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151842 (n - 1) - a (n - 1)

end

end A087509.P16155654165530480541

namespace A087509

/-- `A151842(n-1)-a(n-1)` -/
def P16155654165530480541.Spec : Prop :=
  ∀ n, P16155654165530480541.a n = A087509 n

end A087509

/-! ## A087509.P10353244758426021656

`A186731(A091684(n))`
-/

namespace A087509.P10353244758426021656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A091684 n).toNat

end

end A087509.P10353244758426021656

namespace A087509

/-- `A186731(A091684(n))` -/
def P10353244758426021656.Spec : Prop :=
  ∀ n, P10353244758426021656.a n = A087509 n

end A087509

/-! ## A087509.P17984650988676895989

`A002264(A091684(n)+1)`
-/

namespace A087509.P17984650988676895989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A091684 n + 1).toNat

end

end A087509.P17984650988676895989

namespace A087509

/-- `A002264(A091684(n)+1)` -/
def P17984650988676895989.Spec : Prop :=
  ∀ n, P17984650988676895989.a n = A087509 n

end A087509

/-! ## A087509.P2137253683844110025

`A186101(n)-A004396(n)`
-/

namespace A087509.P2137253683844110025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n - A004396 n

end

end A087509.P2137253683844110025

namespace A087509

/-- `A186101(n)-A004396(n)` -/
def P2137253683844110025.Spec : Prop :=
  ∀ n, P2137253683844110025.a n = A087509 n

end A087509

/-! ## A087509.P16910493681723718917

`A006369(n)-A186101(n)`
-/

namespace A087509.P16910493681723718917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n - A186101 n

end

end A087509.P16910493681723718917

namespace A087509

/-- `A006369(n)-A186101(n)` -/
def P16910493681723718917.Spec : Prop :=
  ∀ n, P16910493681723718917.a n = A087509 n

end A087509

/-! ## A087509.P1159765597742838882

`A091684(n)-A102899(n)`
-/

namespace A087509.P1159765597742838882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n - A102899 n

end

end A087509.P1159765597742838882

namespace A087509

/-- `A091684(n)-A102899(n)` -/
def P1159765597742838882.Spec : Prop :=
  ∀ n, P1159765597742838882.a n = A087509 n

end A087509

/-! ## A087509.P9801022516226509086

`A298789(n)-A298784(n)`
-/

namespace A087509.P9801022516226509086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298789 n - A298784 n

end

end A087509.P9801022516226509086

namespace A087509

/-- `A298789(n)-A298784(n)` -/
def P9801022516226509086.Spec : Prop :=
  ∀ n, P9801022516226509086.a n = A087509 n

end A087509

/-! ## A087509.P169615933715871759

`A008611(n)*A011655(n)`
-/

namespace A087509.P169615933715871759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A011655 n

end

end A087509.P169615933715871759

namespace A087509

/-- `A008611(n)*A011655(n)` -/
def P169615933715871759.Spec : Prop :=
  ∀ n, P169615933715871759.a n = A087509 n

end A087509

/-! ## A087509.P9801625809599631275

`A186731(n*A011655(n))`
-/

namespace A087509.P9801625809599631275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 ((n : ℤ) * A011655 n).toNat

end

end A087509.P9801625809599631275

namespace A087509

/-- `A186731(n*A011655(n))` -/
def P9801625809599631275.Spec : Prop :=
  ∀ n, P9801625809599631275.a n = A087509 n

end A087509

/-!
# A087510: Primes consisting only of digits 0 and 1 occurring with equal frequency.

The programs for A087510, there is no canonical definition to state claims against.
-/

/-! ## A087510.P6507731912241585747

`∩[A020449(n+1), A071925(n+1)]`
-/

namespace A087510.P6507731912241585747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087510.P6507731912241585747

/-! ## A087510.P12991963923728753881

`∩[A069598(n+1), A071925(n+1)]`
-/

namespace A087510.P12991963923728753881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087510.P12991963923728753881

/-! ## A087510.P17979531339891490690

`∩[A020449(n+1), A007088(A031443(n+1))]`
-/

namespace A087510.P17979531339891490690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A031443 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087510.P17979531339891490690

/-! ## A087510.P4853874276222069474

`A007088(∩[A031443(n+1), A036952(n+1)])`
-/

namespace A087510.P4853874276222069474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A087510.P4853874276222069474

/-! ## A087510.P63522260038630963

`∩[A007088(A036952(n+1)), A071925(n+1)]`
-/

namespace A087510.P63522260038630963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A036952 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087510.P63522260038630963

/-!
# A087511: Primes consisting only of digits 1 and 3 occurring with equal frequency.

The programs for A087511, there is no canonical definition to state claims against.
-/

/-! ## A087511.P16497211259872280329

`∩[A020451(n+1), A214488(n+1)]`
-/

namespace A087511.P16497211259872280329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087511.P16497211259872280329

/-! ## A087511.P10298525937840909123

`∩[A020451(n+1), A032917(A258410(n+1))]`
-/

namespace A087511.P10298525937840909123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A258410 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087511.P10298525937840909123

/-! ## A087511.P17946473021175986947

`∩[A020451(n+1), A032917(A031448(n+2)-1)]`
-/

namespace A087511.P17946473021175986947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (A031448 (n + 2) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087511.P17946473021175986947

/-!
# A087512: Primes consisting only of digits 1 and 4 occurring with equal frequency.

The programs for A087512, there is no canonical definition to state claims against.
-/

/-! ## A087512.P9886394416876696317

`∩[A020452(n+1), A214521(n+1)]`
-/

namespace A087512.P9886394416876696317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087512.P9886394416876696317

/-!
# A087513: Primes consisting only of digits 1 and 6 occurring with equal frequency.

The programs for A087513, there is no canonical definition to state claims against.
-/

/-! ## A087513.P8015909832419429943

`∩[A020454(n+1), A214524(n+1)]`
-/

namespace A087513.P8015909832419429943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087513.P8015909832419429943

/-! ## A087513.P2704985237125176613

`∩[A020454(n+1), A284293(A258410(n+1))]`
-/

namespace A087513.P2704985237125176613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (A258410 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087513.P2704985237125176613

/-!
# A087514: Primes consisting only of digits 1 and 7 occurring with equal frequency.

The programs for A087514, there is no canonical definition to state claims against.
-/

/-! ## A087514.P8008815827774866679

`∩[A020455(n+1), A214530(n+1)]`
-/

namespace A087514.P8008815827774866679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087514.P8008815827774866679

/-!
# A087515: Primes consisting only of digits 1 and 9 occurring with equal frequency.

The programs for A087515, there is no canonical definition to state claims against.
-/

/-! ## A087515.P1312300395919592335

`∩[A020457(n+1), A214532(n+1)]`
-/

namespace A087515.P1312300395919592335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087515.P1312300395919592335

/-!
# A087518: 

The programs for A087518, there is no canonical definition to state claims against.
-/

/-! ## A087518.P11550574670470767201

`A087783((n+1)²+n²)`
-/

namespace A087518.P11550574670470767201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087783 ((n + 1) ^ 2 + n ^ 2)

end

end A087518.P11550574670470767201

/-!
# A087520: Smallest prime p such that the prime signature of p-1 has not occurred earlier.

The programs for A087520, there is no canonical definition to state claims against.
-/

/-! ## A087520.P13472522217259026824

`∩[A002200(n+1), A328869(n+1)]`
-/

namespace A087520.P13472522217259026824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087520.P13472522217259026824

/-! ## A087520.P11058236312193993248

`p?[A340087(n+1)+A248713(n+1)]`
-/

namespace A087520.P11058236312193993248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340087 (n + 1) + A248713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087520.P11058236312193993248

/-! ## A087520.P1071899377496353321

`p?[A248614(n)%75]`
-/

namespace A087520.P1071899377496353321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248614 n) 75

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087520.P1071899377496353321

/-! ## A087520.P17980614040286238964

`p?[eq[2, A212632(n+1)]-6]`
-/

namespace A087520.P17980614040286238964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087520.P17980614040286238964

/-! ## A087520.P5941855106620056161

`∩[A002200(n+1), A335523(n+1)]`
-/

namespace A087520.P5941855106620056161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087520.P5941855106620056161

/-!
# A087521: Smallest prime p such that the prime signature of p+1 has not occurred earlier.

The programs for A087521, there is no canonical definition to state claims against.
-/

/-! ## A087521.P5638702117294171137

`eq[A319627(n+1), A332029(n+1)]`
-/

namespace A087521.P5638702117294171137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087521.P5638702117294171137

/-! ## A087521.P3530392085236370156

`eq[A324933(n+1), A332029(n+1)]`
-/

namespace A087521.P3530392085236370156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087521.P3530392085236370156

/-! ## A087521.P16332044763394806042

`∩[A000040(n+1), A135761(A025487(n+1))]`
-/

namespace A087521.P16332044763394806042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135761 (A025487 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087521.P16332044763394806042

/-! ## A087521.P9012228573744742771

`∩[A000430(n+1), A135761(A025487(n+1))]`
-/

namespace A087521.P9012228573744742771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135761 (A025487 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087521.P9012228573744742771

/-! ## A087521.P2307738327034135723

`A262882(A118723(n+1))`
-/

namespace A087521.P2307738327034135723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A118723 (n + 1)).toNat

end

end A087521.P2307738327034135723

/-!
# A087522: a(0) = 2; for n>=1, a(n) = smallest prime p such that p+1 is divisible by an n-th power > 1.

The programs for A087522, there is no canonical definition to state claims against.
-/

/-! ## A087522.P12506511864239570909

`A127582(n-char[1])`
-/

namespace A087522.P12506511864239570909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127582 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A087522.P12506511864239570909

/-! ## A087522.P15120716275327017582

`xor(char[1], A127582(n))`
-/

namespace A087522.P15120716275327017582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A127582 n)

end

end A087522.P15120716275327017582

/-! ## A087522.P13379115131300788437

`A159075(n)+A127582(n)`
-/

namespace A087522.P13379115131300788437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A127582 n

end

end A087522.P13379115131300788437

/-! ## A087522.P7339956867540728230

`A127582(n)-A063524(n)`
-/

namespace A087522.P7339956867540728230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127582 n - A063524 n

end

end A087522.P7339956867540728230

/-! ## A087522.P18278602946453218066

`A199969(n+1)+A127582(n)-n`
-/

namespace A087522.P18278602946453218066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + (A127582 n - (n : ℤ))

end

end A087522.P18278602946453218066

/-! ## A087522.P15053559219340601543

`A127582(n)-A000007(A028242(n))`
-/

namespace A087522.P15053559219340601543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127582 n - A000007 (A028242 n).toNat

end

end A087522.P15053559219340601543

/-! ## A087522.P15516890315360740111

`A127582(n)-A000007(A103221(n))`
-/

namespace A087522.P15516890315360740111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127582 n - A000007 (A103221 n).toNat

end

end A087522.P15516890315360740111

/-! ## A087522.P2858017091905919193

`A127582(n)-A000007(A123108(n))`
-/

namespace A087522.P2858017091905919193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127582 n - A000007 (A123108 n).toNat

end

end A087522.P2858017091905919193

/-! ## A087522.P18344052917151823276

`and(A127582(A059983(n)), A127582(n))`
-/

namespace A087522.P18344052917151823276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 (A059983 n).toNat) (A127582 n)

end

end A087522.P18344052917151823276

/-! ## A087522.P3300644149586276798

`and(A127582(n), A127582(A267590(n)))`
-/

namespace A087522.P3300644149586276798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A127582 (A267590 n).toNat)

end

end A087522.P3300644149586276798

/-! ## A087522.P6986402567004311599

`A127582(n)-A097805(A097805(A055998(n)))`
-/

namespace A087522.P6986402567004311599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127582 n - A097805 (A097805 (A055998 n).toNat).toNat

end

end A087522.P6986402567004311599

/-!
# A087524: a(0) = 2, a(n)=smallest prime > a(n-1) such that a(n) - a(n-1) == 0 mod n!.

The programs for A087524, there is no canonical definition to state claims against.
-/

/-! ## A087524.P479551259652120161

`p?[∑[round(n/sqrt(2))!]]`
-/

namespace A087524.P479551259652120161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087524.P479551259652120161

/-! ## A087524.P12259211169669012582

`p?[∑[A005165(floor(n/3))]]`
-/

namespace A087524.P12259211169669012582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005165 ⌊(n : ℚ) / 3⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087524.P12259211169669012582

/-! ## A087524.P16677340482507042181

`p?[∑[A000142(round(n/sqrt(2)))]]`
-/

namespace A087524.P16677340482507042181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087524.P16677340482507042181

/-! ## A087524.P13021703509880589268

`p?[∑[A214078(A033438(n))]]`
-/

namespace A087524.P13021703509880589268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A033438 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087524.P13021703509880589268

/-! ## A087524.P9874293959071679190

`A006530(∑[n!*A117277(n+1)]+1)`
-/

namespace A087524.P9874293959071679190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A117277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A087524.P9874293959071679190

/-!
# A087525: Primes p with the property that p-q does not divide p+q for all primes q < p.

The programs for A087525, there is no canonical definition to state claims against.
-/

/-! ## A087525.P10129693809940373274

`p?[A249728(n+1)+3]`
-/

namespace A087525.P10129693809940373274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087525.P10129693809940373274

/-! ## A087525.P4253773727588251426

`p?[ceil(sqrt(A001965(5*n+13)))]`
-/

namespace A087525.P4253773727588251426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001965 (5 * n + 13) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087525.P4253773727588251426

/-! ## A087525.P3941255226553628464

`p?[ceil(sqrt(A005206(10*n+16)))]`
-/

namespace A087525.P3941255226553628464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A005206 (10 * n + 16) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087525.P3941255226553628464

/-! ## A087525.P16283966131894395218

`p?[ceil(sqrt(A005378(10*n+16)))]`
-/

namespace A087525.P16283966131894395218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A005378 (10 * n + 16) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087525.P16283966131894395218

/-! ## A087525.P15994527079567154895

`A389809(A171520(n+2))`
-/

namespace A087525.P15994527079567154895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A171520 (n + 2)).toNat

end

end A087525.P15994527079567154895

/-! ## A087525.P3769862090872229423

`p?[A020705(A249728(n+1))]`
-/

namespace A087525.P3769862090872229423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A249728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087525.P3769862090872229423

/-! ## A087525.P10953392395710020945

`A005145(A281005(n+2)+1)`
-/

namespace A087525.P10953392395710020945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A281005 (n + 2) + 1).toNat

end

end A087525.P10953392395710020945

/-! ## A087525.P1812510129750458816

`A065091(round(sqrt(A248634(n+1))))`
-/

namespace A087525.P1812510129750458816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.roundAway (Real.sqrt (A248634 (n + 1) : ℝ))).toNat

end

end A087525.P1812510129750458816

/-! ## A087525.P3085082034700889875

`A000040(round(sqrt(A248634(n+1)))+1)`
-/

namespace A087525.P3085082034700889875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A248634 (n + 1) : ℝ)) + 1).toNat

end

end A087525.P3085082034700889875

/-! ## A087525.P9414329223016049547

`A005145(eq[A198954(n), A209229(n)])`
-/

namespace A087525.P9414329223016049547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087525.P9414329223016049547

/-!
# A087526: a(0) = 1, a(n) = smallest squarefree number == 1 (mod a(n-1)) with n prime divisors.

The programs for A087526, there is no canonical definition to state claims against.
-/

/-! ## A087526.P9283147100170344788

`A103354(A243195(n)+A000182(n+1))`
-/

namespace A087526.P9283147100170344788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (A243195 n + A000182 (n + 1)).toNat

end

end A087526.P9283147100170344788

/-!
# A087539: First differences of A011849.

The programs for A087539, the canonical program `A087539.P15357215833912472125` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087539 has offset 1).

The definition of A087539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087539.P15357215833912472125

`Δ[floor(C(n+1, 3)/3)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087539

/-- `Δ[floor(C(n+1, 3)/3)]` -/
def P15357215833912472125.Spec : Prop :=
  ∀ n, P15357215833912472125.a n = A087539 (n + 1)

theorem P15357215833912472125.correct : P15357215833912472125.Spec := by
  intro n
  simp only [A087539, Nat.add_sub_cancel]

end A087539

/-! ## A087539.P4529965887055862826

`Δ[round((C(n+1, 3)-1)/3)]`
-/

namespace A087539.P4529965887055862826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 1) 3 : ℤ) - 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087539.P4529965887055862826

namespace A087539

/-- `Δ[round((C(n+1, 3)-1)/3)]` -/
def P4529965887055862826.Spec : Prop :=
  ∀ n, P4529965887055862826.a n = A087539 (n + 1)

end A087539

/-! ## A087539.P9804128414649253204

`Δ[floor(∑[C(n, 2)]/3)]`
-/

namespace A087539.P9804128414649253204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087539.P9804128414649253204

namespace A087539

/-- `Δ[floor(∑[C(n, 2)]/3)]` -/
def P9804128414649253204.Spec : Prop :=
  ∀ n, P9804128414649253204.a n = A087539 (n + 1)

end A087539

/-! ## A087539.P1926131036364772647

`Δ[ceil((∑[C(n, 2)]+1)/3)]`
-/

namespace A087539.P1926131036364772647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087539.P1926131036364772647

namespace A087539

/-- `Δ[ceil((∑[C(n, 2)]+1)/3)]` -/
def P1926131036364772647.Spec : Prop :=
  ∀ n, P1926131036364772647.a n = A087539 (n + 1)

end A087539

/-! ## A087539.P440428963773289219

`Δ[round((∑[C(n, 2)]-1)/3)]`
-/

namespace A087539.P440428963773289219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087539.P440428963773289219

namespace A087539

/-- `Δ[round((∑[C(n, 2)]-1)/3)]` -/
def P440428963773289219.Spec : Prop :=
  ∀ n, P440428963773289219.a n = A087539 (n + 1)

end A087539

/-! ## A087539.P14678419303677746853

`Δ[round((∑[∑[n]-n]-1)/3)]`
-/

namespace A087539.P14678419303677746853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j - 1 : ℤ) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087539.P14678419303677746853

namespace A087539

/-- `Δ[round((∑[∑[n]-n]-1)/3)]` -/
def P14678419303677746853.Spec : Prop :=
  ∀ n, P14678419303677746853.a n = A087539 (n + 1)

end A087539

/-! ## A087539.P13583124183087984422

`A000217(n)+A390345(n)-A390345(n+1)`
-/

namespace A087539.P13583124183087984422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A390345 n - A390345 (n + 1))

end

end A087539.P13583124183087984422

namespace A087539

/-- `A000217(n)+A390345(n)-A390345(n+1)` -/
def P13583124183087984422.Spec : Prop :=
  ∀ n, P13583124183087984422.a n = A087539 (n + 1)

end A087539

/-! ## A087539.P5637621768347590152

`A011849(n+2)-A011849(n+1)`
-/

namespace A087539.P5637621768347590152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011849 (n + 2) - A011849 (n + 1)

end

end A087539.P5637621768347590152

namespace A087539

/-- `A011849(n+2)-A011849(n+1)` -/
def P5637621768347590152.Spec : Prop :=
  ∀ n, P5637621768347590152.a n = A087539 (n + 1)

end A087539

/-! ## A087539.P4424963675664333328

`A002264(∑[A288119(n)])`
-/

namespace A087539.P4424963675664333328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087539.P4424963675664333328

namespace A087539

/-- `A002264(∑[A288119(n)])` -/
def P4424963675664333328.Spec : Prop :=
  ∀ n, P4424963675664333328.a n = A087539 (n + 1)

end A087539

/-! ## A087539.P10611073021725510835

`A002264(A171452(n+1))-A002264(A002264(n+1))`
-/

namespace A087539.P10611073021725510835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A171452 (n + 1)).toNat - A002264 (A002264 (n + 1)).toNat

end

end A087539.P10611073021725510835

namespace A087539

/-- `A002264(A171452(n+1))-A002264(A002264(n+1))` -/
def P10611073021725510835.Spec : Prop :=
  ∀ n, P10611073021725510835.a n = A087539 (n + 1)

end A087539

/-!
# A087540: Let A(n) be the matrix in the group GL(n,2) such that for 1 <= i, j <= n: A[i,j] = 1 if i+j = n+1 A[i,j] = 0 if i+j != n+1. a(n) is the size of the centralizer of A(n) in GL(n,2).

The programs for A087540, there is no canonical definition to state claims against.
-/

/-! ## A087540.P4068376811909530036

`∏[A082662(A075427(n))]`
-/

namespace A087540.P4068376811909530036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (A075427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087540.P4068376811909530036

/-! ## A087540.P660031250327783156

`∏[A082662(∑[A094024(n)])]`
-/

namespace A087540.P660031250327783156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087540.P660031250327783156

/-! ## A087540.P16453384993726259622

`∏[record[A076921(A054424(n+1))]]`
-/

namespace A087540.P16453384993726259622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A054424 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087540.P16453384993726259622

/-! ## A087540.P3576118147433108973

`∏[A007179(n+1)]*A016116(n+1)`
-/

namespace A087540.P3576118147433108973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A016116 (n + 1)

end

end A087540.P3576118147433108973

/-! ## A087540.P533332936845250884

`A002884(n+1)/A087918(n+1)`
-/

namespace A087540.P533332936845250884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / (A087918 (n + 1) : ℚ)

end

end A087540.P533332936845250884

/-!
# A087541: a(0) = 1, a(1) = 2, a(n) = smallest prime beginning with the product of two previous terms.

The programs for A087541, there is no canonical definition to state claims against.
-/

/-! ## A087541.P11832584985257581788

`A089348(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A087541.P11832584985257581788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A089348 (a (n - 1)).toNat

end

end A087541.P11832584985257581788

/-!
# A087542: a(0) = 1, a(1) = 3, a(n) = smallest prime beginning with the product of two previous terms.

The programs for A087542, there is no canonical definition to state claims against.
-/

/-! ## A087542.P7416691237728316094

`A003601(A000045(n)^(n+3)+1)`
-/

namespace A087542.P7416691237728316094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (A000045 n ^ (n + 3) + 1).toNat

end

end A087542.P7416691237728316094

/-!
# A087543: a(0) =1, a(1) = 2, a(n) = smallest prime beginning with the sum of two previous terms.

The programs for A087543, there is no canonical definition to state claims against.
-/

/-! ## A087543.P17697236387986909485

`A018800(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A087543.P17697236387986909485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A018800 (a (n - 1) + a (n - 2)).toNat

end

end A087543.P17697236387986909485

/-! ## A087543.P3142959294745449604

`A062584(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A087543.P3142959294745449604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A062584 (a (n - 1) + a (n - 2)).toNat

end

end A087543.P3142959294745449604

/-! ## A087543.P10119939615366813311

`A258337(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A087543.P10119939615366813311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A258337 (a (n - 1) + a (n - 2)).toNat

end

end A087543.P10119939615366813311

/-!
# A087544: a(0) = 1, a(1) = 3, a(n) = smallest prime beginning with the sum of two previous terms.

The programs for A087544, there is no canonical definition to state claims against.
-/

/-! ## A087544.P17248900472808916611

`A018800(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A087544.P17248900472808916611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A018800 (a (n - 1) + a (n - 2)).toNat

end

end A087544.P17248900472808916611

/-!
# A087545: a(0) = 0, a(1) = 1, a(n) = smallest multiple of n beginning with the sum of two previous terms.

The programs for A087545, there is no canonical definition to state claims against.
-/

/-! ## A087545.P1423598749823843685

`n*A008612(C(4*n, n))`
-/

namespace A087545.P1423598749823843685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008612 (Nat.choose (4 * n) n)

end

end A087545.P1423598749823843685

/-!
# A087546: a(1) = 1, a(2) = 2, a(n) = smallest multiple of n beginning with the product of two previous terms.

The programs for A087546, there is no canonical definition to state claims against.
-/

/-! ## A087546.P8174771173575375546

`A307202(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A087546.P8174771173575375546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A307202 ((n : ℤ) * a (n - 1)).toNat

end

end A087546.P8174771173575375546

/-!
# A087547: a(n) = n!*2^(n+1) * (Integral_{x = 0..1} 1/(1+x^2)^(n+1) dx) - Pi*(2*n)!/(2^(n+1)*n!).

The programs for A087547, the canonical program `A087547.P15107669623176794805` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087547 has offset 0).

The definition of A087547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087547.P15107669623176794805

`(2*n-1)*a(n-1)+(n-1)!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087547

/-- `(2*n-1)*a(n-1)+(n-1)!` -/
def P15107669623176794805.Spec : Prop :=
  ∀ n, P15107669623176794805.a n = A087547 n

theorem P15107669623176794805.correct : P15107669623176794805.Spec := by
  intro n
  simp only [A087547]

end A087547

/-! ## A087547.P6054455398566880493

`(3*n-2)*a(n-1)-(n-1)*(2*n-3)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A087547.P6054455398566880493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((3 * n : ℤ) - 2) * a (n - 1) - ((n : ℤ) - 1) * ((2 * n : ℤ) - 3) * a (n - 2)

end

end A087547.P6054455398566880493

namespace A087547

/-- `(3*n-2)*a(n-1)-(n-1)*(2*n-3)*a(n-2)` -/
def P6054455398566880493.Spec : Prop :=
  ∀ n, P6054455398566880493.a n = A087547 n

end A087547

/-! ## A087547.P3983854616487515749

`A336601(A152947(n+1))-A000007(n)`
-/

namespace A087547.P3983854616487515749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336601 (A152947 (n + 1)).toNat - A000007 n

end

end A087547.P3983854616487515749

namespace A087547

/-- `A336601(A152947(n+1))-A000007(n)` -/
def P3983854616487515749.Spec : Prop :=
  ∀ n, P3983854616487515749.a n = A087547 n

end A087547

/-! ## A087547.P1632149495786680348

`A336601(A152947(n+1))%A034430(n)`
-/

namespace A087547.P1632149495786680348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336601 (A152947 (n + 1)).toNat) (A034430 n)

end

end A087547.P1632149495786680348

namespace A087547

/-- `A336601(A152947(n+1))%A034430(n)` -/
def P1632149495786680348.Spec : Prop :=
  ∀ n, P1632149495786680348.a n = A087547 n

end A087547

/-! ## A087547.P5837753980087405863

`lcm(A000120(n), A336601(A152947(n+1)))`
-/

namespace A087547.P5837753980087405863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000120 n) (A336601 (A152947 (n + 1)).toNat)

end

end A087547.P5837753980087405863

namespace A087547

/-- `lcm(A000120(n), A336601(A152947(n+1)))` -/
def P5837753980087405863.Spec : Prop :=
  ∀ n, (P5837753980087405863.a n : ℤ) = A087547 n

end A087547

/-!
# A087548: Beginning with 1, smallest multiple of n such that a(n)*a(n-1) + 1 is a prime.

The programs for A087548, there is no canonical definition to state claims against.
-/

/-! ## A087548.P6110805660865775923

`(n+1)*A108466(A007590(n)+1)`
-/

namespace A087548.P6110805660865775923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108466 (A007590 n + 1).toNat

end

end A087548.P6110805660865775923

/-! ## A087548.P11121085550549872491

`(n+1)*A108466(A099392(n+1))`
-/

namespace A087548.P11121085550549872491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108466 (A099392 (n + 1)).toNat

end

end A087548.P11121085550549872491

/-! ## A087548.P17335952828085116207

`(n+1)*A066099(A099960(n))`
-/

namespace A087548.P17335952828085116207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066099 (A099960 n).toNat

end

end A087548.P17335952828085116207

/-! ## A087548.P13135626580042286330

`(n+1)*A287170(A035469(n+3)+2+n)`
-/

namespace A087548.P13135626580042286330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287170 (A035469 (n + 3) + 2 + (n : ℤ)).toNat

end

end A087548.P13135626580042286330

/-! ## A087548.P8214438108277546496

`(n+1)*A282934(A270339(n+1))`
-/

namespace A087548.P8214438108277546496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A282934 (A270339 (n + 1)).toNat

end

end A087548.P8214438108277546496

/-!
# A087549: a(1) = 1, a(2) = 1, a(n) = sum of tau(n) previous terms, where tau(n) is the number of divisors of n.

The programs for A087549, there is no canonical definition to state claims against.
-/

/-! ## A087549.P6451337279174398679

`A000196(A056393(n+1)+A000707(n+1))`
-/

namespace A087549.P6451337279174398679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056393 (n + 1) + A000707 (n + 1)).toNat

end

end A087549.P6451337279174398679

/-! ## A087549.P7327895363088357389

`A087061(A156348(2*n+5)+A006882(n+2))`
-/

namespace A087549.P7327895363088357389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A156348 (2 * n + 5) + A006882 (n + 2)).toNat

end

end A087549.P7327895363088357389

/-!
# A087550: a(n) = smallest k such that for each r, 2 <= r <= n, there exists a distinct s, n < s <= k, with the same prime signature as r.

The programs for A087550, there is no canonical definition to state claims against.
-/

/-! ## A087550.P7257438041335114832

`A319523(A390800(n+2))`
-/

namespace A087550.P7257438041335114832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319523 (A390800 (n + 2)).toNat

end

end A087550.P7257438041335114832

/-!
# A087553: Squares in which the neighboring digits differ at most by 1. Neighbors of 1 are 0 and 2, neighbors of 0 are 1 and 9.

The programs for A087553, there is no canonical definition to state claims against.
-/

/-! ## A087553.P4555035042888169851

`∩[A376425(n+1), n²]`
-/

namespace A087553.P4555035042888169851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A087553.P4555035042888169851

/-! ## A087553.P295951711505021552

`∩[A000290(n), A376425(n+1)]`
-/

namespace A087553.P295951711505021552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087553.P295951711505021552

/-! ## A087553.P1787469259041955218

`∩[A061457(n+1), A376425(n+1)]`
-/

namespace A087553.P1787469259041955218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087553.P1787469259041955218

/-!
# A087554: a(n) = smallest number k >= n such that nk + 1 is a prime.

The programs for A087554, there is no canonical definition to state claims against.
-/

/-! ## A087554.P10872751510285138871

`(A087952(n+1)-1)/(n+1)`
-/

namespace A087554.P10872751510285138871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087952 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A087554.P10872751510285138871

/-! ## A087554.P17392501682294375579

`A033677(A087952(n+1)-1)`
-/

namespace A087554.P17392501682294375579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A087952 (n + 1) - 1).toNat

end

end A087554.P17392501682294375579

/-! ## A087554.P5512531505582498235

`∏{d}[A087952(n+1), A002322(#)]/(n+1)`
-/

namespace A087554.P5512531505582498235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087952 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, A002322 d : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A087554.P5512531505582498235

/-! ## A087554.P9898783071484314106

`∏{d}[A087952(n+1), A003958(#)]/(n+1)`
-/

namespace A087554.P9898783071484314106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087952 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, A003958 d : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A087554.P9898783071484314106

/-! ## A087554.P9835986588623800754

`A033677(A000010(A087952(n+1)))`
-/

namespace A087554.P9835986588623800754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A000010 (A087952 (n + 1)).toNat).toNat

end

end A087554.P9835986588623800754

/-! ## A087554.P13194168334118320002

`A087377(A086685(n+1)+A000124(n))`
-/

namespace A087554.P13194168334118320002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087377 (A086685 (n + 1) + A000124 n).toNat

end

end A087554.P13194168334118320002

/-! ## A087554.P2161338707875716973

`A033677(∏{d}[A087952(n+1), A002322(#)])`
-/

namespace A087554.P2161338707875716973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∏ d ∈ Nat.divisors (f1 n).natAbs, A002322 d).toNat

end

end A087554.P2161338707875716973

/-! ## A087554.P10690901856171970824

`A033677(∏{d}[A087952(n+1), A003958(#)])`
-/

namespace A087554.P10690901856171970824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∏ d ∈ Nat.divisors (f1 n).natAbs, A003958 d).toNat

end

end A087554.P10690901856171970824

/-!
# A087555: a(n) = largest prime that is the concatenation of two numbers whose sum is n.

The programs for A087555, there is no canonical definition to state claims against.
-/

/-! ## A087555.P14268965667067777868

`xor(A087558(n+2), A184955(round(n/(n%2+1/2))))`
-/

namespace A087555.P14268965667067777868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087558 (n + 2)) (A184955 (SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2))).toNat)

end

end A087555.P14268965667067777868

/-! ## A087555.P13372407551424785256

`xor(A087558(n+2), A184955(2*n))`
-/

namespace A087555.P13372407551424785256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087558 (n + 2)) (A184955 (2 * n))

end

end A087555.P13372407551424785256

/-!
# A087558: a(n) = largest prime that is the concatenation of two numbers whose product is n.

The programs for A087558, there is no canonical definition to state claims against.
-/

/-! ## A087558.P16673838624956138318

`xor(A087555(n+2), A184955(round(n/(n%2+1/2))))`
-/

namespace A087558.P16673838624956138318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087555 (n + 2)) (A184955 (SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2))).toNat)

end

end A087558.P16673838624956138318

/-!
# A087559: Rearrangement of natural numbers such that n*a(n) + 1 is a prime.

The programs for A087559, there is no canonical definition to state claims against.
-/

/-! ## A087559.P6176164602347672175

`(A111296(n+1)-1)/(n+1)`
-/

namespace A087559.P6176164602347672175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111296 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A087559.P6176164602347672175

/-! ## A087559.P16147954847062543896

`floor(A111296(n+1)/(A065033(2*n)+1))`
-/

namespace A087559.P16147954847062543896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111296 (n + 1) : ℚ) / (A065033 (2 * n) + 1 : ℚ)⌋

end

end A087559.P16147954847062543896

/-! ## A087559.P9951565884928824815

`A000010(A111296(n+1))/(n+1)`
-/

namespace A087559.P9951565884928824815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A111296 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A087559.P9951565884928824815

/-! ## A087559.P18442694074299112502

`A019425(A111296(n+1))/A103517(n)`
-/

namespace A087559.P18442694074299112502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019425 (A111296 (n + 1)).toNat : ℚ) / (A103517 n : ℚ)

end

end A087559.P18442694074299112502

/-! ## A087559.P18181357743420975892

`A185048(A111296(n+1))/A000027(n+1)`
-/

namespace A087559.P18181357743420975892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185048 (A111296 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A087559.P18181357743420975892

/-! ## A087559.P4108352931034229738

`A185048(A111296(n+1))/A029578(2*(n+1))`
-/

namespace A087559.P4108352931034229738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185048 (A111296 (n + 1)).toNat : ℚ) / (A029578 (2 * (n + 1)) : ℚ)

end

end A087559.P4108352931034229738

/-! ## A087559.P12483570534375533349

`A029578(A111296(n+1))/A028310(n+1)`
-/

namespace A087559.P12483570534375533349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 (A111296 (n + 1)).toNat : ℚ) / (A028310 (n + 1) : ℚ)

end

end A087559.P12483570534375533349

/-! ## A087559.P6052168984214245983

`A004275(A111296(n+1))/A004275(n+2)`
-/

namespace A087559.P6052168984214245983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A111296 (n + 1)).toNat : ℚ) / (A004275 (n + 2) : ℚ)

end

end A087559.P6052168984214245983

/-!
# A087560: Smallest m > n such that gcd(m, n^2) = n.

The programs for A087560, there is no canonical definition to state claims against.
-/

/-! ## A087560.P14733438951607485534

`(n+1)*A053669(n+1)`
-/

namespace A087560.P14733438951607485534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053669 (n + 1)

end

end A087560.P14733438951607485534

/-! ## A087560.P5821704309860002389

`(n+1)*(A071222(n)+1)`
-/

namespace A087560.P5821704309860002389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A071222 n + 1)

end

end A087560.P5821704309860002389

/-! ## A087560.P10548178593313115585

`lcm(n+1, A096014(n+1))`
-/

namespace A087560.P10548178593313115585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A096014 (n + 1))

end

end A087560.P10548178593313115585

/-! ## A087560.P1151922513499354372

`(n+1)*sqrt(A089090(n+1))`
-/

namespace A087560.P1151922513499354372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A089090 (n + 1) : ℝ)

end

end A087560.P1151922513499354372

/-! ## A087560.P16578920038866056280

`(n+1)*(A079578(n+1)-(n+1))`
-/

namespace A087560.P16578920038866056280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A079578 (n + 1) - (n + 1 : ℤ))

end

end A087560.P16578920038866056280

/-! ## A087560.P11699362829669389527

`A032742(n+1)*A096014(n+1)`
-/

namespace A087560.P11699362829669389527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A096014 (n + 1)

end

end A087560.P11699362829669389527

/-! ## A087560.P4494288985473700654

`A020639(A328571(n+1))*(n+1)`
-/

namespace A087560.P4494288985473700654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328571 (n + 1)).toNat * (n + 1 : ℤ)

end

end A087560.P4494288985473700654

/-! ## A087560.P2200057546508039366

`(n+1)*A003557(A382248(n+1))`
-/

namespace A087560.P2200057546508039366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003557 (A382248 (n + 1)).toNat

end

end A087560.P2200057546508039366

/-! ## A087560.P945182547599721329

`A111701(n+1)*A276152(n+1)`
-/

namespace A087560.P945182547599721329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (n + 1) * A276152 (n + 1)

end

end A087560.P945182547599721329

/-! ## A087560.P9297099914663514726

`(n+1)*A020639(A381805(n+1))`
-/

namespace A087560.P9297099914663514726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A381805 (n + 1)).toNat

end

end A087560.P9297099914663514726

/-! ## A087560.P17688696059217343206

`(n+1)*A020639(A382767(n+1))`
-/

namespace A087560.P17688696059217343206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (A382767 (n + 1)).toNat

end

end A087560.P17688696059217343206

/-! ## A087560.P17314562360990763615

`(n+1)*A117366(A329900(n+1))`
-/

namespace A087560.P17314562360990763615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117366 (A329900 (n + 1)).toNat

end

end A087560.P17314562360990763615

/-! ## A087560.P7408495648783604492

`lcm(A000027(n+1), A053669(n+1))`
-/

namespace A087560.P7408495648783604492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A053669 (n + 1))

end

end A087560.P7408495648783604492

/-! ## A087560.P2236794979888585588

`lcm(A066043(n+1), A276152(n+1))`
-/

namespace A087560.P2236794979888585588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066043 (n + 1)) (A276152 (n + 1))

end

end A087560.P2236794979888585588

/-! ## A087560.P66536747342615285

`(n+1)*A007978((n+1)²)`
-/

namespace A087560.P66536747342615285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007978 ((n + 1) ^ 2)

end

end A087560.P66536747342615285

/-! ## A087560.P14641508177104606162

`(n+1)*A214720((n+1)²)`
-/

namespace A087560.P14641508177104606162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A214720 ((n + 1) ^ 2)

end

end A087560.P14641508177104606162

/-! ## A087560.P11067056451869368335

`(n+1)*A258115((n+1)²)`
-/

namespace A087560.P11067056451869368335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A258115 ((n + 1) ^ 2)

end

end A087560.P11067056451869368335

/-! ## A087560.P9685156143235705223

`(n+1)*A337686((n+1)²)`
-/

namespace A087560.P9685156143235705223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337686 ((n + 1) ^ 2)

end

end A087560.P9685156143235705223

/-! ## A087560.P5363324455259067148

`A129902((n+1)²)/(n+1)`
-/

namespace A087560.P5363324455259067148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129902 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A087560.P5363324455259067148

/-! ## A087560.P16073303055878279495

`A208570((n+1)²)/(n+1)`
-/

namespace A087560.P16073303055878279495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208570 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A087560.P16073303055878279495

/-!
# A087562: Primes such that the next n successive differences are identical.

The programs for A087562, there is no canonical definition to state claims against.
-/

/-! ## A087562.P5503846077988231394

`p?[∑[A139550(A256654(n+1))]]`
-/

namespace A087562.P5503846077988231394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A256654 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087562.P5503846077988231394

/-! ## A087562.P3649570420146276642

`p?[∑[A004981(A161271(n+1))]]`
-/

namespace A087562.P3649570420146276642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004981 (A161271 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087562.P3649570420146276642

/-! ## A087562.P14738662081626134901

`A114847(A099005(n+1))`
-/

namespace A087562.P14738662081626134901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114847 (A099005 (n + 1)).toNat

end

end A087562.P14738662081626134901

/-! ## A087562.P16328188256556013847

`p?[∑[A115523(A025147(n))]]`
-/

namespace A087562.P16328188256556013847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115523 (A025147 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087562.P16328188256556013847

/-! ## A087562.P11377426163001640074

`p?[∑[A262501(A127293(n))]]`
-/

namespace A087562.P11377426163001640074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A127293 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087562.P11377426163001640074

/-!
# A087564: a(n) = smallest prime of the form n*(n+1)*(n+2)*...*(n+k) + 1, or 0 if no such prime exists.

The programs for A087564, there is no canonical definition to state claims against.
-/

/-! ## A087564.P12446635433393720503

`p?[A274887(n)+A123225(n)]`
-/

namespace A087564.P12446635433393720503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 n + A123225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087564.P12446635433393720503

/-! ## A087564.P15314351945017723733

`p?[A123225(n)+A008302(A028310(n))]`
-/

namespace A087564.P15314351945017723733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123225 n + A008302 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087564.P15314351945017723733

/-! ## A087564.P4974943257555367280

`p?[A123225(A326178(n))+A008302(n+1)]`
-/

namespace A087564.P4974943257555367280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123225 (A326178 n).toNat + A008302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087564.P4974943257555367280

/-!
# A087565: a(n) = smallest k such that n*(n+1)*(n+2)...(n+k) + 1 is prime, or -1 if no prime of such form exists.

The programs for A087565, there is no canonical definition to state claims against.
-/

/-! ## A087565.P10129065769221040938

`A231901(n)-(n+1)`
-/

namespace A087565.P10129065769221040938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231901 n - (n + 1 : ℤ)

end

end A087565.P10129065769221040938

/-! ## A087565.P8086965332668070987

`A023443(A231901(n)-n)`
-/

namespace A087565.P8086965332668070987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A231901 n - (n : ℤ)).toNat

end

end A087565.P8086965332668070987

/-! ## A087565.P13827373107270199985

`abs(A005408(n)-n-A231901(n))`
-/

namespace A087565.P13827373107270199985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 n - (n : ℤ) - A231901 n|

end

end A087565.P13827373107270199985

/-! ## A087565.P14070872617577604490

`(A231901(n)+n+1)%record[A131452(n+1)]`
-/

namespace A087565.P14070872617577604490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231901 n + (n + 1 : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A087565.P14070872617577604490

/-! ## A087565.P5142175870576634025

`A028310(A231901(n))+A001478(n+1)`
-/

namespace A087565.P5142175870576634025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A231901 n).toNat + A001478 (n + 1)

end

end A087565.P5142175870576634025

/-! ## A087565.P12719826899276119066

`A231901(n)-n-A008327(A245575(n))`
-/

namespace A087565.P12719826899276119066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231901 n - (n : ℤ) - A008327 (A245575 n).toNat

end

end A087565.P12719826899276119066

/-! ## A087565.P18113281974818600428

`A196199(n²)-(1-A231901(n))`
-/

namespace A087565.P18113281974818600428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) - (1 - A231901 n)

end

end A087565.P18113281974818600428

/-! ## A087565.P8347955461365633406

`A172133(n+1)-1`
-/

namespace A087565.P8347955461365633406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172133 (n + 1) - 1

end

end A087565.P8347955461365633406

/-! ## A087565.P1629170856897474495

`A023443(A172133(n+1))`
-/

namespace A087565.P1629170856897474495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A172133 (n + 1)).toNat

end

end A087565.P1629170856897474495

/-! ## A087565.P8272791521171061859

`A070198(n)%A172133(n+1)`
-/

namespace A087565.P8272791521171061859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A172133 (n + 1))

end

end A087565.P8272791521171061859

/-!
# A087567: a(n) = (1/5)*Sum_{k=0..n} binomial(n,k)*Fibonacci(k)*5^k.

The programs for A087567, the canonical program `A087567.P2027300085972888082` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087567 has offset 0).

The definition of A087567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087567.P2027300085972888082

`7*a(n-1)+19*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087567

/-- `7*a(n-1)+19*a(n-2)` -/
def P2027300085972888082.Spec : Prop :=
  ∀ n, (P2027300085972888082.a n : ℤ) = A087567 n

theorem P2027300085972888082.correct : P2027300085972888082.Spec := by
  intro n
  simp only [A087567]

end A087567

/-! ## A087567.P14865636290479619722

`(((7+5*sqrt(5))/2)^(n+1)-((7-5*sqrt(5))/2)^(n+1))/(5*sqrt(5))`
-/

namespace A087567.P14865636290479619722
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((7 + 5 * Real.sqrt (5 : ℝ)) / 2) ^ (n + 1) - ((7 - 5 * Real.sqrt (5 : ℝ)) / 2) ^ (n + 1)) / (5 * Real.sqrt (5 : ℝ))

end

end A087567.P14865636290479619722

namespace A087567

/-- `(((7+5*sqrt(5))/2)^(n+1)-((7-5*sqrt(5))/2)^(n+1))/(5*sqrt(5))` -/
def P14865636290479619722.Spec : Prop :=
  ∀ n, P14865636290479619722.a n = (A087567 n : ℝ)

theorem P14865636290479619722.correct : P14865636290479619722.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A087567, Nat.add_sub_cancel, A087567.P14865636290479619722.a, A087567.P2027300085972888082.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A087567, Nat.add_sub_cancel, A087567.P14865636290479619722.a, A087567.P2027300085972888082.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A087567

/-! ## A087567.P4354897547453515402

`ogf(1/(1-7x-19x^2))`
-/

namespace A087567.P4354897547453515402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, -19] n

end

end A087567.P4354897547453515402

namespace A087567

/-- `ogf(1/(1-7x-19x^2))` -/
def P4354897547453515402.Spec : Prop :=
  ∀ n, P4354897547453515402.a n = A087567 n

end A087567

/-!
# A087572: Smallest prime of the form n + (n-1) + (n-2) + ...(n-k), k < n, or 0 if no such prime exists.

The programs for A087572, there is no canonical definition to state claims against.
-/

/-! ## A087572.P4393818099777678823

`A061397(n*∏{p}[n+1, C(#%n, #)]+1+n)`
-/

namespace A087572.P4393818099777678823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1 + n)

end

end A087572.P4393818099777678823

/-! ## A087572.P13063238592874869089

`A061397(A005451(n+1)+n)`
-/

namespace A087572.P13063238592874869089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A005451 (n + 1) + (n : ℤ)).toNat

end

end A087572.P13063238592874869089

/-! ## A087572.P1301129906330965625

`A090302(C(A113636(n+1), n))`
-/

namespace A087572.P1301129906330965625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090302 (Nat.choose (A113636 (n + 1)).toNat n)

end

end A087572.P1301129906330965625

/-! ## A087572.P12123930272731831987

`A061397(Δ[n²]-A166260(n+1))`
-/

namespace A087572.P12123930272731831987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A166260 (n + 1)).toNat

end

end A087572.P12123930272731831987

/-! ## A087572.P5858316105918323002

`A061397(n%(2-A000203(n+1))+1+n)`
-/

namespace A087572.P5858316105918323002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (Int.tmod (n : ℤ) (2 - A000203 (n + 1)) + 1 + (n : ℤ)).toNat

end

end A087572.P5858316105918323002

/-! ## A087572.P6201822286052958065

`A061397(gcd(n+1, C(2, A000005(n+1)))+n)`
-/

namespace A087572.P6201822286052958065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (Nat.gcd (n + 1) (Nat.choose 2 (A000005 (n + 1)).toNat) + n)

end

end A087572.P6201822286052958065

/-! ## A087572.P3480032769616629942

`A061397(C(char[A018252(n+1)-1]+n, n)+n)`
-/

namespace A087572.P3480032769616629942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (Nat.choose ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n) n + n)

end

end A087572.P3480032769616629942

/-! ## A087572.P11516587865556767596

`A061397((n+1)^(1-C(A000010(n+1), n))+n)`
-/

namespace A087572.P11516587865556767596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (1 - (Nat.choose (A000010 (n + 1)).toNat n : ℤ) : ℤ) + (n : ℚ))).toNat

end

end A087572.P11516587865556767596

/-! ## A087572.P6465424283877251979

`A061397(1-n*C(A000010(n+1), n)+n+n)`
-/

namespace A087572.P6465424283877251979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (1 - (n * Nat.choose (A000010 (n + 1)).toNat n : ℤ) + (n : ℤ) + (n : ℤ)).toNat

end

end A087572.P6465424283877251979

/-! ## A087572.P6708969180811769310

`A061397((n+1)^C(n, C(A014963(n+1), n))+n)`
-/

namespace A087572.P6708969180811769310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 ((n + 1) ^ Nat.choose n (Nat.choose (A014963 (n + 1)).toNat n) + n)

end

end A087572.P6708969180811769310

/-!
# A087579: a(n) = (1/6)*Sum_{k=0..n} binomial(n,k)*Fibonacci(k)*6^k.

The programs for A087579, the canonical program `A087579.P11189784987956857294` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087579 has offset 0).

The definition of A087579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087579.P11189784987956857294

`8*a(n-1)+29*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087579

/-- `8*a(n-1)+29*a(n-2)` -/
def P11189784987956857294.Spec : Prop :=
  ∀ n, (P11189784987956857294.a n : ℤ) = A087579 n

theorem P11189784987956857294.correct : P11189784987956857294.Spec := by
  intro n
  simp only [A087579]

end A087579

/-! ## A087579.P13278714134511256827

`ogf(1/(1-8x-29x^2))`
-/

namespace A087579.P13278714134511256827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, -29] n

end

end A087579.P13278714134511256827

namespace A087579

/-- `ogf(1/(1-8x-29x^2))` -/
def P13278714134511256827.Spec : Prop :=
  ∀ n, P13278714134511256827.a n = A087579 n

end A087579

/-!
# A087580: Primes with n-th successive differences a multiple of Fibonacci(n+1). a(n)-a(n-1) == 0 (mod F(n+1)), F(n+1) = A000045(n+1).

The programs for A087580, there is no canonical definition to state claims against.
-/

/-! ## A087580.P17507948689902592313

`A000040(record[A007097(n)%A022305(n)])`
-/

namespace A087580.P17507948689902592313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007097 n) (A022305 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087580.P17507948689902592313

/-!
# A087581: Primes such that successive differences are increasing palindromes.

The programs for A087581, there is no canonical definition to state claims against.
-/

/-! ## A087581.P13022988467454265411

`A005145(A243192(n+1)+A002135(n))`
-/

namespace A087581.P13022988467454265411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A243192 (n + 1) + A002135 n).toNat

end

end A087581.P13022988467454265411

/-! ## A087581.P18138487091452692798

`A379721(n+1)+A290731(A000984(n))`
-/

namespace A087581.P18138487091452692798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379721 (n + 1) + A290731 (A000984 n).toNat

end

end A087581.P18138487091452692798

/-! ## A087581.P11819932487011189590

`A118849(A324741(n)%A098328(3*n+1))`
-/

namespace A087581.P11819932487011189590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (Int.tmod (A324741 n) (A098328 (3 * n + 1))).toNat

end

end A087581.P11819932487011189590

/-!
# A087584: a(n) = (1/7)*Sum_{k=0..n} binomial(n,k)*Fibonacci(k)*7^k.

The programs for A087584, the canonical program `A087584.P8183965246145964556` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087584 has offset 0).

The definition of A087584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087584.P8183965246145964556

`9*a(n-1)+41*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A087584

/-- `9*a(n-1)+41*a(n-2)` -/
def P8183965246145964556.Spec : Prop :=
  ∀ n, (P8183965246145964556.a n : ℤ) = A087584 n

theorem P8183965246145964556.correct : P8183965246145964556.Spec := by
  intro n
  simp only [A087584]

end A087584

/-!
# A087586: 

The programs for A087586, there is no canonical definition to state claims against.
-/

/-! ## A087586.P11427999086655217731

`A087587(n+1)²`
-/

namespace A087586.P11427999086655217731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087587 (n + 1) ^ 2

end

end A087586.P11427999086655217731

/-! ## A087586.P14440493112652553657

`A087587(n+1)^A087628(A302998(n))`
-/

namespace A087586.P14440493112652553657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087587 (n + 1) : ℚ) ^ (A087628 (A302998 n).toNat : ℤ)

end

end A087586.P14440493112652553657

/-! ## A087586.P2807890398434843800

`A087587(n+1)^A087580(A087555(3*n+3))`
-/

namespace A087586.P2807890398434843800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087587 (n + 1) : ℚ) ^ (A087580 (A087555 (3 * n + 3)).toNat : ℤ)

end

end A087586.P2807890398434843800

/-!
# A087588: 

The programs for A087588, there is no canonical definition to state claims against.
-/

/-! ## A087588.P10504821141197007016

`A087589(n+1)²`
-/

namespace A087588.P10504821141197007016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087589 (n + 1) ^ 2

end

end A087588.P10504821141197007016

/-! ## A087588.P8785512931244051175

`A087589(n+1)^A087628(A302998(n))`
-/

namespace A087588.P8785512931244051175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087589 (n + 1) : ℚ) ^ (A087628 (A302998 n).toNat : ℤ)

end

end A087588.P8785512931244051175

/-!
# A087590: 

The programs for A087590, there is no canonical definition to state claims against.
-/

/-! ## A087590.P13378035740345945498

`A087591(n+1)²`
-/

namespace A087590.P13378035740345945498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087591 (n + 1) ^ 2

end

end A087590.P13378035740345945498

/-! ## A087590.P17348151165329998528

`A087591(n+1)^A087628(A302998(n))`
-/

namespace A087590.P17348151165329998528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087591 (n + 1) : ℚ) ^ (A087628 (A302998 n).toNat : ℤ)

end

end A087590.P17348151165329998528

/-!
# A087592: Primes whose successive differences are increasing power of 2: a(1) = 2, a(n+1) = a(n) + 2^k; a(n+1) prime, k minimal and greater than the index for the previous term.

The programs for A087592, there is no canonical definition to state claims against.
-/

/-! ## A087592.P2169781465025560552

`p?[∑[A134751(A004524(n))]]`
-/

namespace A087592.P2169781465025560552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134751 (A004524 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087592.P2169781465025560552

/-! ## A087592.P11137508635305916328

`p?[∑[A131577(A008217(n))]]`
-/

namespace A087592.P11137508635305916328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A008217 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087592.P11137508635305916328

/-! ## A087592.P11331277125028365266

`p?[∑[A056629(A162608(n))]]`
-/

namespace A087592.P11331277125028365266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056629 (A162608 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087592.P11331277125028365266

/-! ## A087592.P10685961409331302402

`p?[∑[A016116(A211521(n))]]`
-/

namespace A087592.P10685961409331302402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A211521 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087592.P10685961409331302402

/-!
# A087593: Define dd(n) = the number formed by concatenating the absolute difference of successive digits. Sequence contains primes p such that dd(p) is also prime. (Primes in which the number formed by successive digit difference is also a prime.).

The programs for A087593, there is no canonical definition to state claims against.
-/

/-! ## A087593.P7756972519689732886

`eq[A353851(n), A353860(A040115(n))]`
-/

namespace A087593.P7756972519689732886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087593.P7756972519689732886

/-! ## A087593.P5224464406318793946

`p?[eq[1, A003415(A347689(n))]]`
-/

namespace A087593.P5224464406318793946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A347689 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087593.P5224464406318793946

/-! ## A087593.P339227405531680090

`eq[A003415(A347689(n)), A223135(n)]`
-/

namespace A087593.P339227405531680090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087593.P339227405531680090

/-! ## A087593.P15758260979822390648

`eq[A003415(A347689(n)), A236938(n)]`
-/

namespace A087593.P15758260979822390648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087593.P15758260979822390648

/-! ## A087593.P10747663395746913361

`p?[A003415(A347689(n))*A028310(n)]`
-/

namespace A087593.P10747663395746913361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A347689 n).toNat * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087593.P10747663395746913361

/-!
# A087594: Define dd(n) = the number formed by concatenating the absolute difference of successive digits. Sequence contains primes p such that dd(p)=q is a prime, dd(q) is also a prime = r and so on until a single-digit prime (2,3,5,7) arises. (Primes in which the number formed by successive digit differences are primes at every step until a single-digit prime is obtained.).

The programs for A087594, there is no canonical definition to state claims against.
-/

/-! ## A087594.P7499666770822260473

`A087593(lt[∑[n], A087552(2*n+5)])`
-/

namespace A087594.P7499666770822260473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087552 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A087594.P7499666770822260473

/-! ## A087594.P17447074234333019730

`A087593(lt[A289438(n+2), 4])`
-/

namespace A087594.P17447074234333019730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087593 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A087594.P17447074234333019730

/-! ## A087594.P8465655990548517078

`∩[A063792(n+1), A088184(n+1)]`
-/

namespace A087594.P8465655990548517078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087594.P8465655990548517078

/-! ## A087594.P15365703428565862225

`A063792(n+5)+A027656(A001333(n))`
-/

namespace A087594.P15365703428565862225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063792 (n + 5) + A027656 (A001333 n).toNat

end

end A087594.P15365703428565862225

/-! ## A087594.P18266402875562659771

`A063775(A022180(n))*A063792(n+5)`
-/

namespace A087594.P18266402875562659771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A022180 n).toNat * A063792 (n + 5)

end

end A087594.P18266402875562659771

/-!
# A087597: Triangular numbers m such that A040115(m) is also triangular.

The programs for A087597, there is no canonical definition to state claims against.
-/

/-! ## A087597.P2834056910514004172

`eq[A010054(n), A050166(A040115(n))]`
-/

namespace A087597.P2834056910514004172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087597.P2834056910514004172

/-! ## A087597.P13644356013587048943

`eq[A010054(A040115(n)), A062264(n)]`
-/

namespace A087597.P13644356013587048943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A040115 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087597.P13644356013587048943

/-! ## A087597.P6968190233622820836

`eq[A050166(A040115(n)), A050166(n)]`
-/

namespace A087597.P6968190233622820836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A040115 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087597.P6968190233622820836

/-! ## A087597.P9592315090826476063

`eq[A062190(A040115(n)), A062190(n)]`
-/

namespace A087597.P9592315090826476063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A040115 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087597.P9592315090826476063

/-! ## A087597.P2009272338186467324

`eq[A063007(A040115(n)), A063007(n)]`
-/

namespace A087597.P2009272338186467324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A040115 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087597.P2009272338186467324

/-!
# A087598: Numbers m such that all terms in the sequence m, A040115(m), A040115(A040115(m)), ..., 0 are triangular numbers (A000217).

The programs for A087598, there is no canonical definition to state claims against.
-/

/-! ## A087598.P10945721263508548807

`A000217(lt[A007283(n), A379124(n+1)])`
-/

namespace A087598.P10945721263508548807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087598.P10945721263508548807

/-! ## A087598.P3075253283645758870

`A000217(lt[A321360(n)², A379124(n+1)])`
-/

namespace A087598.P3075253283645758870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321360 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087598.P3075253283645758870

/-! ## A087598.P5023261488547380351

`A087597(A043317(n+1))`
-/

namespace A087598.P5023261488547380351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087597 (A043317 (n + 1)).toNat

end

end A087598.P5023261488547380351

/-! ## A087598.P16722311253966977562

`A087597(A044914(n+1))`
-/

namespace A087598.P16722311253966977562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087597 (A044914 (n + 1)).toNat

end

end A087598.P16722311253966977562

/-! ## A087598.P13630255793269361799

`A118759(A087597(n+1))`
-/

namespace A087598.P13630255793269361799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A087597 (n + 1)).toNat

end

end A087598.P13630255793269361799

