import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A103500: (1/4)*number of non-degenerate isosceles triangles that can be formed from the points of an (n+1)X(n+1)X(n+1) lattice cube.

The programs for A103500, there is no canonical definition to state claims against.
-/

/-! ## A103500.P1199348572587051659

`A103426(n+1)-3*A103427(n+1)`
-/

namespace A103500.P1199348572587051659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103426 (n + 1) - 3 * A103427 (n + 1)

end

end A103500.P1199348572587051659

/-!
# A103501: (1/8)*number of equilateral triangles that can be formed from the points of an (n+1)X(n+1)X(n+1) lattice cube.

The programs for A103501, there is no canonical definition to state claims against.
-/

/-! ## A103501.P16382451218198391103

`A102698(n+1)/8`
-/

namespace A103501.P16382451218198391103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102698 (n + 1) : ℚ) / 8

end

end A103501.P16382451218198391103

/-! ## A103501.P5901660694859638769

`record[ratio[A102698(A050873(n+1))]]`
-/

namespace A103501.P5901660694859638769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102698 (A050873 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103501.P5901660694859638769

/-! ## A103501.P2843648450012073446

`floor(A338322(2*(n+2))/4)/8`
-/

namespace A103501.P2843648450012073446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A338322 (2 * (n + 2)) : ℚ) / 4⌋ : ℚ) / 8

end

end A103501.P2843648450012073446

/-! ## A103501.P11540741804269628928

`A000027(A338322(2*(n+2))/4)/8`
-/

namespace A103501.P11540741804269628928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A338322 (2 * (n + 2)) : ℚ) / 4)).toNat : ℚ) / 8

end

end A103501.P11540741804269628928

/-! ## A103501.P17867841118947087625

`A117358(A102698(n+1))`
-/

namespace A103501.P17867841118947087625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A102698 (n + 1)).toNat

end

end A103501.P17867841118947087625

/-!
# A103502: Floor of Sum_{p prime <= n} (fractional part of n/p).

The programs for A103502, there is no canonical definition to state claims against.
-/

/-! ## A103502.P5975021014318812982

`A124760(lcm(A004273(n), A240573(n)))`
-/

namespace A103502.P5975021014318812982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (Int.lcm (A004273 n) (A240573 n))

end

end A103502.P5975021014318812982

/-! ## A103502.P8777658237224179757

`A037801(A173302(n)+A000011(n))`
-/

namespace A103502.P8777658237224179757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (A173302 n + A000011 n).toNat

end

end A103502.P8777658237224179757

/-! ## A103502.P11832658817828896954

`A056171(n+1)-A025474(A097132(n))`
-/

namespace A103502.P11832658817828896954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) - A025474 (A097132 n).toNat

end

end A103502.P11832658817828896954

/-! ## A103502.P15678613222155481000

`A000720(n+1)-A287272(A311149(n))`
-/

namespace A103502.P15678613222155481000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A287272 (A311149 n).toNat

end

end A103502.P15678613222155481000

/-! ## A103502.P11247659701037228574

`A000720(n+1)-A287272(A312461(n))`
-/

namespace A103502.P11247659701037228574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A287272 (A312461 n).toNat

end

end A103502.P11247659701037228574

/-!
# A103505: Denominator in expansion of (1-x)*log(1-x).

The programs for A103505, the canonical program `A103505.P15399463802419653202` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103505 has offset 0).

The definition of A103505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103505.P4196974570939717291

`round(1/acot(n²-n))`
-/

namespace A103505.P4196974570939717291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((n ^ 2 : ℤ) - (n : ℤ) : ℝ))

end

end A103505.P4196974570939717291

namespace A103505

/-- `round(1/acot(n²-n))` -/
def P4196974570939717291.Spec : Prop :=
  ∀ n, P4196974570939717291.a n = A103505 n

end A103505

/-! ## A103505.P18443433845788441623

`floor(2/acot(∑[n]-n))`
-/

namespace A103505.P18443433845788441623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℝ)⌋

end

end A103505.P18443433845788441623

namespace A103505

/-- `floor(2/acot(∑[n]-n))` -/
def P18443433845788441623.Spec : Prop :=
  ∀ n, P18443433845788441623.a n = A103505 n

end A103505

/-! ## A103505.P3271812830471004771

`(n²-n)^floor(atan(n))`
-/

namespace A103505.P3271812830471004771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A103505.P3271812830471004771

namespace A103505

/-- `(n²-n)^floor(atan(n))` -/
def P3271812830471004771.Spec : Prop :=
  ∀ n, P3271812830471004771.a n = (A103505 n : ℚ)

end A103505

/-! ## A103505.P11669950498604856293

`n*ceil(sqrt(a(n-1)))` with `a(0)=1`
-/

namespace A103505.P11669950498604856293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ⌈Real.sqrt (a (n - 1) : ℝ)⌉

end

end A103505.P11669950498604856293

namespace A103505

/-- `n*ceil(sqrt(a(n-1)))` -/
def P11669950498604856293.Spec : Prop :=
  ∀ n, P11669950498604856293.a n = A103505 n

end A103505

/-! ## A103505.P17608204384414312907

`lcm(n, ceil(sqrt(a(n-1))))` with `a(0)=1`
-/

namespace A103505.P17608204384414312907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n : ℤ) ⌈Real.sqrt (a (n - 1) : ℝ)⌉

end

end A103505.P17608204384414312907

namespace A103505

/-- `lcm(n, ceil(sqrt(a(n-1))))` -/
def P17608204384414312907.Spec : Prop :=
  ∀ n, (P17608204384414312907.a n : ℤ) = A103505 n

end A103505

/-! ## A103505.P15399463802419653202

`floor(sqrt((n-n²)²+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103505

/-- `floor(sqrt((n-n²)²+1))` -/
def P15399463802419653202.Spec : Prop :=
  ∀ n, P15399463802419653202.a n = A103505 n

theorem P15399463802419653202.correct : P15399463802419653202.Spec := by
  intro n
  simp only [A103505]

end A103505

/-! ## A103505.P5514732824299667150

`C(n, n²)+n²-n`
-/

namespace A103505.P5514732824299667150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A103505.P5514732824299667150

namespace A103505

/-- `C(n, n²)+n²-n` -/
def P5514732824299667150.Spec : Prop :=
  ∀ n, P5514732824299667150.a n = A103505 n

end A103505

/-! ## A103505.P1600911088534051945

`n²-(n-C(n, n²))`
-/

namespace A103505.P1600911088534051945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n : ℤ) - (Nat.choose n (n ^ 2) : ℤ))

end

end A103505.P1600911088534051945

namespace A103505

/-- `n²-(n-C(n, n²))` -/
def P1600911088534051945.Spec : Prop :=
  ∀ n, P1600911088534051945.a n = A103505 n

end A103505

/-! ## A103505.P14761775563306482355

`n*(n-a(n%2))` with `a(0)=1, a(1)=1`
-/

namespace A103505.P14761775563306482355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * ((n : ℤ) - a (n % 2))

end

end A103505.P14761775563306482355

namespace A103505

/-- `n*(n-a(n%2))` -/
def P14761775563306482355.Spec : Prop :=
  ∀ n, P14761775563306482355.a n = A103505 n

end A103505

/-! ## A103505.P1796648820789378966

`gcd(n*(n-1), C(n, ∑[n]))`
-/

namespace A103505.P1796648820789378966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * ((n : ℤ) - 1)) (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A103505.P1796648820789378966

namespace A103505

/-- `gcd(n*(n-1), C(n, ∑[n]))` -/
def P1796648820789378966.Spec : Prop :=
  ∀ n, (P1796648820789378966.a n : ℤ) = A103505 n

end A103505

/-! ## A103505.P2069802416941545622

`∑[a(n-1)+2]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A103505.P2069802416941545622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103505.P2069802416941545622

namespace A103505

/-- `∑[a(n-1)+2]` -/
def P2069802416941545622.Spec : Prop :=
  ∀ n, (P2069802416941545622.a n : ℤ) = A103505 n

end A103505

/-! ## A103505.P5368560789065132362

`n*gcd(1-n, a(n-1))` with `a(0)=1`
-/

namespace A103505.P5368560789065132362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Int.gcd (1 - (n : ℤ)) (a (n - 1) : ℤ)

end

end A103505.P5368560789065132362

namespace A103505

/-- `n*gcd(1-n, a(n-1))` -/
def P5368560789065132362.Spec : Prop :=
  ∀ n, (P5368560789065132362.a n : ℤ) = A103505 n

end A103505

/-! ## A103505.P12913774429468004039

`or(n*(n-1), C(2, 2*n))`
-/

namespace A103505.P12913774429468004039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * ((n : ℤ) - 1)) (Nat.choose 2 (2 * n) : ℤ)

end

end A103505.P12913774429468004039

namespace A103505

/-- `or(n*(n-1), C(2, 2*n))` -/
def P12913774429468004039.Spec : Prop :=
  ∀ n, P12913774429468004039.a n = A103505 n

end A103505

/-! ## A103505.P4256562410501234703

`xor(n*(n-1), C(2, 2*n))`
-/

namespace A103505.P4256562410501234703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) * ((n : ℤ) - 1)) (Nat.choose 2 (2 * n) : ℤ)

end

end A103505.P4256562410501234703

namespace A103505

/-- `xor(n*(n-1), C(2, 2*n))` -/
def P4256562410501234703.Spec : Prop :=
  ∀ n, P4256562410501234703.a n = A103505 n

end A103505

/-! ## A103505.P11827327297841054994

`n*(n-a(floor(1/n)))` with `a(0)=1, a(1)=1`
-/

namespace A103505.P11827327297841054994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * ((n : ℤ) - a ⌊1 / (n : ℚ)⌋.toNat)

end

end A103505.P11827327297841054994

namespace A103505

/-- `n*(n-a(floor(1/n)))` -/
def P11827327297841054994.Spec : Prop :=
  ∀ n, P11827327297841054994.a n = A103505 n

end A103505

/-! ## A103505.P16846390835940321751

`n*round(sqrt(a(n-1)+1))` with `a(0)=1`
-/

namespace A103505.P16846390835940321751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) + 1 : ℝ))

end

end A103505.P16846390835940321751

namespace A103505

/-- `n*round(sqrt(a(n-1)+1))` -/
def P16846390835940321751.Spec : Prop :=
  ∀ n, P16846390835940321751.a n = A103505 n

end A103505

/-! ## A103505.P11637899313659396645

`record[abs(n*(2-n))]-(n-1)`
-/

namespace A103505.P11637899313659396645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (2 - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1)

end

end A103505.P11637899313659396645

namespace A103505

/-- `record[abs(n*(2-n))]-(n-1)` -/
def P11637899313659396645.Spec : Prop :=
  ∀ n, P11637899313659396645.a n = A103505 n

end A103505

/-! ## A103505.P16568353696502621760

`n*floor(sqrt(a(n-1)+n))` with `a(0)=1`
-/

namespace A103505.P16568353696502621760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.sqrt (a (n - 1) + n)

end

end A103505.P16568353696502621760

namespace A103505

/-- `n*floor(sqrt(a(n-1)+n))` -/
def P16568353696502621760.Spec : Prop :=
  ∀ n, (P16568353696502621760.a n : ℤ) = A103505 n

end A103505

/-! ## A103505.P7700955483474582415

`ogf((1-2x+2x^2+2x^3-x^4)/(1-3x+3x^2-x^3))`
-/

namespace A103505.P7700955483474582415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 2, -1] [1, -3, 3, -1] n

end

end A103505.P7700955483474582415

namespace A103505

/-- `ogf((1-2x+2x^2+2x^3-x^4)/(1-3x+3x^2-x^3))` -/
def P7700955483474582415.Spec : Prop :=
  ∀ n, P7700955483474582415.a n = A103505 n

end A103505

/-! ## A103505.P4973439999309476817

`∑[(2-C(3, n+1))*(n-1)]`
-/

namespace A103505.P4973439999309476817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 3 (n + 1) : ℤ)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103505.P4973439999309476817

namespace A103505

/-- `∑[(2-C(3, n+1))*(n-1)]` -/
def P4973439999309476817.Spec : Prop :=
  ∀ n, P4973439999309476817.a n = A103505 n

end A103505

/-!
# A103506: Smallest prime p such that 2n+1 = 2q + p for some odd prime q, or 0 if no such prime exists.

The programs for A103506, there is no canonical definition to state claims against.
-/

/-! ## A103506.P7912556139075739736

`A182986(A103509(n+1)+1)`
-/

namespace A103506.P7912556139075739736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A103509 (n + 1) + 1).toNat

end

end A103506.P7912556139075739736

/-! ## A103506.P1867133164640332297

`∑{d}[A103509(n+1), A007444(#)]`
-/

namespace A103506.P1867133164640332297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A103506.P1867133164640332297

/-! ## A103506.P10903698258847469921

`∑{d}[A008578(A103509(n+1)+1), A053139(#)]`
-/

namespace A103506.P10903698258847469921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A103509 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A053139 d

end

end A103506.P10903698258847469921

/-! ## A103506.P8188223591143363316

`A008578(A103509(n+1)+1)%A145155(A002264(n))`
-/

namespace A103506.P8188223591143363316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A103509 (n + 1) + 1).toNat) (A145155 (A002264 n).toNat)

end

end A103506.P8188223591143363316

/-! ## A103506.P7414324078709962833

`A019565(A011782(A103509(n+1)))%A011782(n)`
-/

namespace A103506.P7414324078709962833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019565 (A011782 (A103509 (n + 1)).toNat).toNat) (A011782 n)

end

end A103506.P7414324078709962833

/-!
# A103507: a(n) = Least i > 1, such that 2n+1 = 2*A000040(i)+A000040(k) for some k>1, 0 if no such i exists.

The programs for A103507, there is no canonical definition to state claims against.
-/

/-! ## A103507.P2558991360044632266

`floor(A103153(n+1)^(2-sqrt(ϕ)))`
-/

namespace A103507.P2558991360044632266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103153 (n + 1) : ℝ) ^ (2 - Real.sqrt Real.goldenRatio)⌋

end

end A103507.P2558991360044632266

/-! ## A103507.P12669958575704855502

`A030530(A103153(n+1))`
-/

namespace A103507.P12669958575704855502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A103153 (n + 1)).toNat

end

end A103507.P12669958575704855502

/-! ## A103507.P17244959737845307625

`A000720(A103153(n+1)+1)`
-/

namespace A103507.P17244959737845307625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103153 (n + 1) + 1).toNat

end

end A103507.P17244959737845307625

/-! ## A103507.P11025051720550692883

`A230980(A103153(n+1)+1)`
-/

namespace A103507.P11025051720550692883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A103153 (n + 1) + 1).toNat

end

end A103507.P11025051720550692883

/-! ## A103507.P4429336676079093779

`A155043(2*A103153(n+1))`
-/

namespace A103507.P4429336676079093779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (2 * A103153 (n + 1)).toNat

end

end A103507.P4429336676079093779

/-! ## A103507.P11604534686319233942

`A162350(2*A103153(n+1))`
-/

namespace A103507.P11604534686319233942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162350 (2 * A103153 (n + 1)).toNat

end

end A103507.P11604534686319233942

/-! ## A103507.P1560251622428415267

`A049084(or(1, A103153(n+1)))`
-/

namespace A103507.P1560251622428415267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A103153 (n + 1))).toNat

end

end A103507.P1560251622428415267

/-! ## A103507.P2827651371073896575

`A055396(or(1, A103153(n+1)))`
-/

namespace A103507.P2827651371073896575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A103153 (n + 1))).toNat

end

end A103507.P2827651371073896575

/-! ## A103507.P14564508317904887053

`A056239(or(1, A103153(n+1)))`
-/

namespace A103507.P14564508317904887053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A103153 (n + 1))).toNat

end

end A103507.P14564508317904887053

/-! ## A103507.P6444261550697185450

`A066328(or(1, A103153(n+1)))`
-/

namespace A103507.P6444261550697185450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.lor 1 (A103153 (n + 1))).toNat

end

end A103507.P6444261550697185450

/-! ## A103507.P6095520016978586188

`∑{d}[A103153(n+1), A049084(#)]`
-/

namespace A103507.P6095520016978586188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A103507.P6095520016978586188

/-! ## A103507.P6594603879379811342

`∑{d}[A103153(n+1), A056239(#)]`
-/

namespace A103507.P6594603879379811342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A103507.P6594603879379811342

/-! ## A103507.P7076772626534986922

`∑{d}[A103153(n+1), A061395(#)]`
-/

namespace A103507.P7076772626534986922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A103507.P7076772626534986922

/-! ## A103507.P2958359069399827085

`∑{d}[A103153(n+1), A066328(#)]`
-/

namespace A103507.P2958359069399827085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A103507.P2958359069399827085

/-! ## A103507.P14794101978286388507

`∑{d}[A103153(n+1), A126760(#)]`
-/

namespace A103507.P14794101978286388507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A126760 d

end

end A103507.P14794101978286388507

/-! ## A103507.P9737975824694210189

`A049084(∏{d}[A103153(n+1), #])`
-/

namespace A103507.P9737975824694210189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A103507.P9737975824694210189

/-! ## A103507.P7162875127270842048

`∑{p}[A103153(n+1), A003963(#)]`
-/

namespace A103507.P7162875127270842048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p

end

end A103507.P7162875127270842048

/-! ## A103507.P14148025708666072386

`A061395(∏{p}[A103153(n+1), #])`
-/

namespace A103507.P14148025708666072386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A103507.P14148025708666072386

/-!
# A103508: a(n) = 1 + 2 * least i such that A103507(i)=n+1, 0 if no such i exists.

The programs for A103508, there is no canonical definition to state claims against.
-/

/-! ## A103508.P11634303167405146408

`A354798(A126291(3*n)+A126286(n+1))`
-/

namespace A103508.P11634303167405146408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354798 (A126291 (3 * n) + A126286 (n + 1)).toNat

end

end A103508.P11634303167405146408

/-!
# A103509: a(n) is the least j such that 2n+1 = 2*A000040(k) + A000040(j) for some k > 1, or 0 if no such j exists.

The programs for A103509, there is no canonical definition to state claims against.
-/

/-! ## A103509.P11736108018412584023

`A258851(A103506(n+1))`
-/

namespace A103509.P11736108018412584023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A103506 (n + 1)).toNat

end

end A103509.P11736108018412584023

/-! ## A103509.P9934811995239779192

`A000720(A103506(n+1)+1)`
-/

namespace A103509.P9934811995239779192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103506 (n + 1) + 1).toNat

end

end A103509.P9934811995239779192

/-! ## A103509.P12959182597584974204

`A049084(or(1, A103506(n+1)))`
-/

namespace A103509.P12959182597584974204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A103506 (n + 1))).toNat

end

end A103509.P12959182597584974204

/-! ## A103509.P15157334734246979533

`A055396(or(1, A103506(n+1)))`
-/

namespace A103509.P15157334734246979533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A103506 (n + 1))).toNat

end

end A103509.P15157334734246979533

/-! ## A103509.P15113626024117246984

`A061395(or(1, A103506(n+1)))`
-/

namespace A103509.P15113626024117246984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A103506 (n + 1))).toNat

end

end A103509.P15113626024117246984

/-! ## A103509.P5710330614188878503

`∑{d}[A103506(n+1), A049084(#)]`
-/

namespace A103509.P5710330614188878503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A103509.P5710330614188878503

/-! ## A103509.P14651527520686549993

`∑{d}[A103506(n+1), A061395(#)]`
-/

namespace A103509.P14651527520686549993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A103509.P14651527520686549993

/-!
# A103511: Smallest prime > double factorial number A001147(n).

The programs for A103511, there is no canonical definition to state claims against.
-/

/-! ## A103511.P11276817354026173251

`A001147(n+1)+A103512(n+1)`
-/

namespace A103511.P11276817354026173251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) + A103512 (n + 1)

end

end A103511.P11276817354026173251

/-! ## A103511.P7952990812050730181

`A103512(n+1)+∏[A005408(n)]`
-/

namespace A103511.P7952990812050730181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103512 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A103511.P7952990812050730181

/-! ## A103511.P7863616645635245651

`A103512(n+1)+record[A001497(n)]`
-/

namespace A103511.P7863616645635245651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103512 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103511.P7863616645635245651

/-! ## A103511.P6035852086435234379

`A216466(2*n+1)+A057019(2*n+1)`
-/

namespace A103511.P6035852086435234379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216466 (2 * n + 1) + A057019 (2 * n + 1)

end

end A103511.P6035852086435234379

/-! ## A103511.P13631979447083771884

`A178606(Δ[n²])`
-/

namespace A103511.P13631979447083771884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178606 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103511.P13631979447083771884

/-!
# A103512: Smallest m such that A001147(n)+m is prime.

The programs for A103512, there is no canonical definition to state claims against.
-/

/-! ## A103512.P2804427193793192382

`A103511(n+1)-A001147(n+1)`
-/

namespace A103512.P2804427193793192382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103511 (n + 1) - A001147 (n + 1)

end

end A103512.P2804427193793192382

/-! ## A103512.P16250822650285038587

`A057019(Δ[n²])-floor(acot(n))`
-/

namespace A103512.P16250822650285038587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A103512.P16250822650285038587

/-! ## A103512.P505718443968798766

`A057019(Δ[n²])/A000038(n)!`
-/

namespace A103512.P505718443968798766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A103512.P505718443968798766

/-! ## A103512.P10451077747818252980

`C(A057019(2*n+1), A000038(n)!)`
-/

namespace A103512.P10451077747818252980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057019 (2 * n + 1)).toNat (Nat.factorial (A000038 n).toNat)

end

end A103512.P10451077747818252980

/-! ## A103512.P9050950541865210524

`A057019(Δ[n²])-A008683((n+1)²)`
-/

namespace A103512.P9050950541865210524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A008683 ((n + 1) ^ 2)

end

end A103512.P9050950541865210524

/-! ## A103512.P5704137705560337896

`gcd(A008579(n)%2, A057019(2*n+1))`
-/

namespace A103512.P5704137705560337896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A008579 n) 2) (A057019 (2 * n + 1))

end

end A103512.P5704137705560337896

/-! ## A103512.P254941910694304196

`A057019(Δ[n²])/A014963(4*n+2)`
-/

namespace A103512.P254941910694304196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A103512.P254941910694304196

/-! ## A103512.P144137670579547930

`A057019(Δ[n²])/gcd(2, A000040(n+1))`
-/

namespace A103512.P144137670579547930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A103512.P144137670579547930

/-! ## A103512.P8330457425856966959

`A057019(Δ[n²])^A000045(round(n/(n+1)))`
-/

namespace A103512.P8330457425856966959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A103512.P8330457425856966959

/-! ## A103512.P7813185088764846813

`A057019(2*n+1)^and(1, A000040(n+1))`
-/

namespace A103512.P7813185088764846813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057019 (2 * n + 1) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A103512.P7813185088764846813

/-! ## A103512.P11107150194546412212

`A057019(Δ[n²])^A008683(2*A000040(n+1))`
-/

namespace A103512.P11107150194546412212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A103512.P11107150194546412212

/-!
# A103516: Triangle read by rows: count in a vee.

The programs for A103516, the canonical program `A103516.P4703470818759479887` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103516 has offset 0).

The definition of A103516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103516.P3070570583499426844

`∑[char[∑[n]]]*A103451(n)`
-/

namespace A103516.P3070570583499426844
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A103451 n

end

end A103516.P3070570583499426844

namespace A103516

/-- `∑[char[∑[n]]]*A103451(n)` -/
def P3070570583499426844.Spec : Prop :=
  ∀ n, P3070570583499426844.a n = A103516 n

end A103516

/-! ## A103516.P6643466639721299394

`char[C(n+2, 2)]+Δ[A056942(n)]`
-/

namespace A103516.P6643466639721299394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A103516.P6643466639721299394

namespace A103516

/-- `char[C(n+2, 2)]+Δ[A056942(n)]` -/
def P6643466639721299394.Spec : Prop :=
  ∀ n, P6643466639721299394.a n = A103516 n

end A103516

/-! ## A103516.P15430668504214525922

`floor(round(sqrt(2*(n+1)))/A008459(n))`
-/

namespace A103516.P15430668504214525922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) / (A008459 n : ℚ)⌋

end

end A103516.P15430668504214525922

namespace A103516

/-- `floor(round(sqrt(2*(n+1)))/A008459(n))` -/
def P15430668504214525922.Spec : Prop :=
  ∀ n, P15430668504214525922.a n = A103516 n

end A103516

/-! ## A103516.P684759462210464924

`floor(round(sqrt(2*(n+1)))/A081579(n))`
-/

namespace A103516.P684759462210464924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) / (A081579 n : ℚ)⌋

end

end A103516.P684759462210464924

namespace A103516

/-- `floor(round(sqrt(2*(n+1)))/A081579(n))` -/
def P684759462210464924.Spec : Prop :=
  ∀ n, P684759462210464924.a n = A103516 n

end A103516

/-! ## A103516.P519411685734336683

`floor(round(sqrt(2*(n+1)))/A007318(n)²)`
-/

namespace A103516.P519411685734336683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) / (A007318 n ^ 2 : ℚ)⌋

end

end A103516.P519411685734336683

namespace A103516

/-- `floor(round(sqrt(2*(n+1)))/A007318(n)²)` -/
def P519411685734336683.Spec : Prop :=
  ∀ n, P519411685734336683.a n = A103516 n

end A103516

/-! ## A103516.P15077002722760427643

`A127648(A286150(n))`
-/

namespace A103516.P15077002722760427643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A286150 n).toNat

end

end A103516.P15077002722760427643

namespace A103516

/-- `A127648(A286150(n))` -/
def P15077002722760427643.Spec : Prop :=
  ∀ n, P15077002722760427643.a n = A103516 n

end A103516

/-! ## A103516.P6924150112703480276

`A128715(n)-A014473(n)`
-/

namespace A103516.P6924150112703480276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n - A014473 n

end

end A103516.P6924150112703480276

namespace A103516

/-- `A128715(n)-A014473(n)` -/
def P6924150112703480276.Spec : Prop :=
  ∀ n, P6924150112703480276.a n = A103516 n

end A103516

/-! ## A103516.P2012797464286382879

`A103451(n)*A115262(n)`
-/

namespace A103516.P2012797464286382879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A115262 n

end

end A103516.P2012797464286382879

namespace A103516

/-- `A103451(n)*A115262(n)` -/
def P2012797464286382879.Spec : Prop :=
  ∀ n, P2012797464286382879.a n = A103516 n

end A103516

/-! ## A103516.P3020707407608694962

`A103451(n)*A125102(n)`
-/

namespace A103516.P3020707407608694962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A125102 n

end

end A103516.P3020707407608694962

namespace A103516

/-- `A103451(n)*A125102(n)` -/
def P3020707407608694962.Spec : Prop :=
  ∀ n, P3020707407608694962.a n = A103516 n

end A103516

/-! ## A103516.P11394057443181249853

`A103451(n)*A128715(n)`
-/

namespace A103516.P11394057443181249853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A128715 n

end

end A103516.P11394057443181249853

namespace A103516

/-- `A103451(n)*A128715(n)` -/
def P11394057443181249853.Spec : Prop :=
  ∀ n, P11394057443181249853.a n = A103516 n

end A103516

/-! ## A103516.P11579613474225132088

`A103451(n)*A131830(n)`
-/

namespace A103516.P11579613474225132088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A131830 n

end

end A103516.P11579613474225132088

namespace A103516

/-- `A103451(n)*A131830(n)` -/
def P11579613474225132088.Spec : Prop :=
  ∀ n, P11579613474225132088.a n = A103516 n

end A103516

/-! ## A103516.P4703470818759479887

`A103451(n)*A131923(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103516

/-- `A103451(n)*A131923(n)` -/
def P4703470818759479887.Spec : Prop :=
  ∀ n, P4703470818759479887.a n = A103516 n

theorem P4703470818759479887.correct : P4703470818759479887.Spec := by
  intro n
  simp only [A103516]

end A103516

/-! ## A103516.P17309978622614659324

`A103451(n)*A132071(n)`
-/

namespace A103516.P17309978622614659324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A132071 n

end

end A103516.P17309978622614659324

namespace A103516

/-- `A103451(n)*A132071(n)` -/
def P17309978622614659324.Spec : Prop :=
  ∀ n, P17309978622614659324.a n = A103516 n

end A103516

/-! ## A103516.P14403781872641390714

`A103451(n)*A132073(n)`
-/

namespace A103516.P14403781872641390714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A132073 n

end

end A103516.P14403781872641390714

namespace A103516

/-- `A103451(n)*A132073(n)` -/
def P14403781872641390714.Spec : Prop :=
  ∀ n, P14403781872641390714.a n = A103516 n

end A103516

/-! ## A103516.P8210745597728181725

`A103451(n)*A141611(n)`
-/

namespace A103516.P8210745597728181725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A141611 n

end

end A103516.P8210745597728181725

namespace A103516

/-- `A103451(n)*A141611(n)` -/
def P8210745597728181725.Spec : Prop :=
  ∀ n, P8210745597728181725.a n = A103516 n

end A103516

/-! ## A103516.P17196862418815310035

`A103451(n)*A143182(n)`
-/

namespace A103516.P17196862418815310035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A143182 n

end

end A103516.P17196862418815310035

namespace A103516

/-- `A103451(n)*A143182(n)` -/
def P17196862418815310035.Spec : Prop :=
  ∀ n, P17196862418815310035.a n = A103516 n

end A103516

/-! ## A103516.P12093198478273325939

`A103451(n)*A285935(n)`
-/

namespace A103516.P12093198478273325939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A285935 n

end

end A103516.P12093198478273325939

namespace A103516

/-- `A103451(n)*A285935(n)` -/
def P12093198478273325939.Spec : Prop :=
  ∀ n, P12093198478273325939.a n = A103516 n

end A103516

/-! ## A103516.P4127843942078154629

`A103451(n)*A321126(n)`
-/

namespace A103516.P4127843942078154629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A321126 n

end

end A103516.P4127843942078154629

namespace A103516

/-- `A103451(n)*A321126(n)` -/
def P4127843942078154629.Spec : Prop :=
  ∀ n, P4127843942078154629.a n = A103516 n

end A103516

/-! ## A103516.P9373921748920096611

`A103451(n)*A331886(n)`
-/

namespace A103516.P9373921748920096611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A331886 n

end

end A103516.P9373921748920096611

namespace A103516

/-- `A103451(n)*A331886(n)` -/
def P9373921748920096611.Spec : Prop :=
  ∀ n, P9373921748920096611.a n = A103516 n

end A103516

/-! ## A103516.P6201186125448392901

`A103451(n)*A338523(n)`
-/

namespace A103516.P6201186125448392901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A338523 n

end

end A103516.P6201186125448392901

namespace A103516

/-- `A103451(n)*A338523(n)` -/
def P6201186125448392901.Spec : Prop :=
  ∀ n, P6201186125448392901.a n = A103516 n

end A103516

/-!
# A103517: Expansion of g.f. (1+2*x-x^2)/(1-x)^2.

The programs for A103517, the canonical program `A103517.P5904106709824261984` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103517 has offset 0).

The definition of A103517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-2x+x^2))` (program `A103517.P5904106709824261984`, by `A103517.P5904106709824261984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103517.P5904106709824261984

`ogf((1+2x-x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103517

/-- `ogf((1+2x-x^2)/(1-2x+x^2))` -/
def P5904106709824261984.Spec : Prop :=
  ∀ n, P5904106709824261984.a n = A103517 n

theorem P5904106709824261984.correct : P5904106709824261984.Spec := by
  intro n
  simp only [A103517]

end A103517

/-!
# A103518: Indices of increasing partial quotients PQ_i of the continued fraction for the prime constant (A051006).

The programs for A103518, there is no canonical definition to state claims against.
-/

/-! ## A103518.P9736938080293136300

`A103313(n)+A000007(A026007(n))`
-/

namespace A103518.P9736938080293136300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103313 n + A000007 (A026007 n).toNat

end

end A103518.P9736938080293136300

/-! ## A103518.P4761349114341847931

`A103313(n)%A198311(A103297(n))`
-/

namespace A103518.P4761349114341847931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103313 n) (A198311 (A103297 n).toNat)

end

end A103518.P4761349114341847931

/-! ## A103518.P9037635878943177306

`A391503(A066966(n+3))+A103313(n)`
-/

namespace A103518.P9037635878943177306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391503 (A066966 (n + 3)).toNat + A103313 n

end

end A103518.P9037635878943177306

/-! ## A103518.P17355315112120930153

`A103313(n)+A000122(A069540(n+4))`
-/

namespace A103518.P17355315112120930153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103313 n + A000122 (A069540 (n + 4)).toNat

end

end A103518.P17355315112120930153

/-! ## A103518.P16915577322883769634

`A103313(lt[A103311(n), A057429(n+1)])`
-/

namespace A103518.P16915577322883769634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103313 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103518.P16915577322883769634

/-!
# A103519: a(1) = 1, a(n) = Sum_{k=1..n} a(n-1) + k.

The programs for A103519, the canonical program `A103519.P8398962495298151781` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103519 has offset 1).

The definition of A103519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103519.P8398962495298151781

`(n+1)*a(n-1)+(n+1)*(n+2)/2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103519

/-- `(n+1)*a(n-1)+(n+1)*(n+2)/2` -/
def P8398962495298151781.Spec : Prop :=
  ∀ n, P8398962495298151781.a n = (A103519 (n + 1) : ℚ)

end A103519

/-! ## A103519.P5254256771351111064

`∑[n+1]+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A103519.P5254256771351111064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * a (n - 1)

end

end A103519.P5254256771351111064

namespace A103519

/-- `∑[n+1]+(n+1)*a(n-1)` -/
def P5254256771351111064.Spec : Prop :=
  ∀ n, (P5254256771351111064.a n : ℤ) = A103519 (n + 1)

end A103519

/-! ## A103519.P5005256549258577097

`(n+1)*(a(n-1)+n/2+1)` with `a(0)=1`
-/

namespace A103519.P5005256549258577097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) + ((n : ℚ) / 2 + 1))

end

end A103519.P5005256549258577097

namespace A103519

/-- `(n+1)*(a(n-1)+n/2+1)` -/
def P5005256549258577097.Spec : Prop :=
  ∀ n, P5005256549258577097.a n = (A103519 (n + 1) : ℚ)

end A103519

/-! ## A103519.P12837895697792255617

`∑[n+1]+a(n-1)/(n+1)^(-1)` with `a(0)=1`
-/

namespace A103519.P12837895697792255617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + a (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A103519.P12837895697792255617

namespace A103519

/-- `∑[n+1]+a(n-1)/(n+1)^(-1)` -/
def P12837895697792255617.Spec : Prop :=
  ∀ n, P12837895697792255617.a n = (A103519 (n + 1) : ℚ)

end A103519

/-! ## A103519.P12554029453392830175

`(n+1)²+n*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A103519.P12554029453392830175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (n + 1) ^ 2 + n * (a (n - 1) + a (n - 2))

end

end A103519.P12554029453392830175

namespace A103519

/-- `(n+1)²+n*(a(n-1)+a(n-2))` -/
def P12554029453392830175.Spec : Prop :=
  ∀ n, (P12554029453392830175.a n : ℤ) = A103519 (n + 1)

end A103519

/-! ## A103519.P3246427041260436108

`(n+1)/2*A143918(n+1)`
-/

namespace A103519.P3246427041260436108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A143918 (n + 1) : ℚ)

end

end A103519.P3246427041260436108

namespace A103519

/-- `(n+1)/2*A143918(n+1)` -/
def P3246427041260436108.Spec : Prop :=
  ∀ n, P3246427041260436108.a n = (A103519 (n + 1) : ℚ)

end A103519

/-! ## A103519.P10065602346589398475

`∑[A036919(n)+A001339(n)]`
-/

namespace A103519.P10065602346589398475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036919 n + A001339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103519.P10065602346589398475

namespace A103519

/-- `∑[A036919(n)+A001339(n)]` -/
def P10065602346589398475.Spec : Prop :=
  ∀ n, P10065602346589398475.a n = A103519 (n + 1)

end A103519

/-! ## A103519.P12835515077286515580

`A038155(n+1)+A007526(n+1)`
-/

namespace A103519.P12835515077286515580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 (n + 1) + A007526 (n + 1)

end

end A103519.P12835515077286515580

namespace A103519

/-- `A038155(n+1)+A007526(n+1)` -/
def P12835515077286515580.Spec : Prop :=
  ∀ n, P12835515077286515580.a n = A103519 (n + 1)

end A103519

/-! ## A103519.P3934122616747291190

`A000522(n+1)+A038155(n+1)-1`
-/

namespace A103519.P3934122616747291190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1) + (A038155 (n + 1) - 1)

end

end A103519.P3934122616747291190

namespace A103519

/-- `A000522(n+1)+A038155(n+1)-1` -/
def P3934122616747291190.Spec : Prop :=
  ∀ n, P3934122616747291190.a n = A103519 (n + 1)

end A103519

/-! ## A103519.P14031375167513496765

`(A030297(n+1)+A007526(n+1))/2`
-/

namespace A103519.P14031375167513496765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030297 (n + 1) + A007526 (n + 1) : ℚ) / 2

end

end A103519.P14031375167513496765

namespace A103519

/-- `(A030297(n+1)+A007526(n+1))/2` -/
def P14031375167513496765.Spec : Prop :=
  ∀ n, P14031375167513496765.a n = (A103519 (n + 1) : ℚ)

end A103519

/-!
# A103521: Primes which have fewer primitive roots than any larger prime.

The programs for A103521, there is no canonical definition to state claims against.
-/

/-! ## A103521.P3160615470266104516

`p?[A153883(∑[A001876(n)])]`
-/

namespace A103521.P3160615470266104516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103521.P3160615470266104516

/-! ## A103521.P11862146682952951419

`p?[A153883(A243494(n)+1)]`
-/

namespace A103521.P11862146682952951419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A243494 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103521.P11862146682952951419

/-! ## A103521.P11040951836017620438

`p?[∏{d}[A185661(n+1), A006530(#)]]`
-/

namespace A103521.P11040951836017620438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185661 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A006530 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103521.P11040951836017620438

/-!
# A103522: Triangle read by rows: T(n,k) is the coefficient of t^k (k>=1) in the polynomial P[n,t] defined by P[1,t]=P[2,t]=t^2, P[n,t]=tP[n-1,t]+t^2*P^2[n-2,t] (n>=3).

The programs for A103522, there is no canonical definition to state claims against.
-/

/-! ## A103522.P7912099014174401066

`A153006(A144885(n+1))%3`
-/

namespace A103522.P7912099014174401066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153006 (A144885 (n + 1)).toNat) 3

end

end A103522.P7912099014174401066

/-! ## A103522.P13177239070284590829

`A228722(A144880(n+1))%3`
-/

namespace A103522.P13177239070284590829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228722 (A144880 (n + 1)).toNat) 3

end

end A103522.P13177239070284590829

/-! ## A103522.P11430059464139613722

`abs(A002321(A336643(A134150(n+1))))`
-/

namespace A103522.P11430059464139613722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002321 (A336643 (A134150 (n + 1)).toNat).toNat|

end

end A103522.P11430059464139613722

/-! ## A103522.P5195778688417027101

`A271223(gcd(A144885(n+1), A158661(n)))`
-/

namespace A103522.P5195778688417027101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271223 (Int.gcd (A144885 (n + 1)) (A158661 n))

end

end A103522.P5195778688417027101

/-! ## A103522.P8829174827410758885

`∑{digits}[A336643(A134150(n+1)), A007431(#)]`
-/

namespace A103522.P8829174827410758885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A134150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007431 x).sum

end

end A103522.P8829174827410758885

/-!
# A103524: Triangle read by rows: T(n,k) is the coefficient of t^k (k>=1) in the polynomial P[n,t] defined by P[1,t]=t, P[2,t]=t^2, P[n,t]=tP[n-1,t]+t^2*P^2[n-2,1].

The programs for A103524, there is no canonical definition to state claims against.
-/

/-! ## A103524.P7349956034200116734

`A055640(A281446(n))²`
-/

namespace A103524.P7349956034200116734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A281446 n).toNat ^ 2

end

end A103524.P7349956034200116734

/-! ## A103524.P10389438933192760642

`A178487(A096801(n)²)²`
-/

namespace A103524.P10389438933192760642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A096801 n ^ 2).toNat ^ 2

end

end A103524.P10389438933192760642

/-! ## A103524.P6824215642454428862

`A060500(2*A281446(n))²`
-/

namespace A103524.P6824215642454428862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (2 * A281446 n).toNat ^ 2

end

end A103524.P6824215642454428862

/-! ## A103524.P7483310242512663010

`A363953(n)^A040262(A001513(n))`
-/

namespace A103524.P7483310242512663010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363953 n : ℚ) ^ (A040262 (A001513 n).toNat : ℤ)

end

end A103524.P7483310242512663010

/-! ## A103524.P3198380962958569926

`A363953(n)^A040262(A329863(n))`
-/

namespace A103524.P3198380962958569926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363953 n : ℚ) ^ (A040262 (A329863 n).toNat : ℤ)

end

end A103524.P3198380962958569926

/-!
# A103528: a(n) = Sum_{k = 1..n-1 such that n == k (mod 2^k)} 2^(k-1).

The programs for A103528, the canonical program `A103528.P10989948375408335413` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103528 has offset 1).

The definition of A103528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102371, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103528.P10989948375408335413

`(A102371(n+1)+n+1)/2-2^n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103528

/-- `(A102371(n+1)+n+1)/2-2^n` -/
def P10989948375408335413.Spec : Prop :=
  ∀ n, P10989948375408335413.a n = (A103528 (n + 1) : ℚ)

end A103528

/-! ## A103528.P13691081203752555744

`and(2*a(n-1)+1, -(n+1))` with `a(0)=0`
-/

namespace A103528.P13691081203752555744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (2 * a (n - 1) + 1) (-(n + 1 : ℤ))

end

end A103528.P13691081203752555744

namespace A103528

/-- `and(2*a(n-1)+1, -(n+1))` -/
def P13691081203752555744.Spec : Prop :=
  ∀ n, P13691081203752555744.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P15911565807436416685

`A103185(A003817(n)-n)`
-/

namespace A103528.P15911565807436416685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 (A003817 n - (n : ℤ)).toNat

end

end A103528.P15911565807436416685

namespace A103528

/-- `A103185(A003817(n)-n)` -/
def P15911565807436416685.Spec : Prop :=
  ∀ n, P15911565807436416685.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P7164815600629548064

`(n+1-A103530(n+2))/2`
-/

namespace A103528.P7164815600629548064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A103530 (n + 2) : ℚ) / 2

end

end A103528.P7164815600629548064

namespace A103528

/-- `(n+1-A103530(n+2))/2` -/
def P7164815600629548064.Spec : Prop :=
  ∀ n, P7164815600629548064.a n = (A103528 (n + 1) : ℚ)

end A103528

/-! ## A103528.P14473653170650474841

`(n-A023443(A103530(n+2)))/2`
-/

namespace A103528.P14473653170650474841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A023443 (A103530 (n + 2)).toNat : ℚ) / 2

end

end A103528.P14473653170650474841

namespace A103528

/-- `(n-A023443(A103530(n+2)))/2` -/
def P14473653170650474841.Spec : Prop :=
  ∀ n, P14473653170650474841.a n = (A103528 (n + 1) : ℚ)

end A103528

/-! ## A103528.P12456153200030258325

`A103745(n+1)-2^n`
-/

namespace A103528.P12456153200030258325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103745 (n + 1) - (2 ^ n : ℤ)

end

end A103528.P12456153200030258325

namespace A103528

/-- `A103745(n+1)-2^n` -/
def P12456153200030258325.Spec : Prop :=
  ∀ n, P12456153200030258325.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P524113541929514919

`A103745(n+1)%A000079(n)`
-/

namespace A103528.P524113541929514919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103745 (n + 1)) (A000079 n)

end

end A103528.P524113541929514919

namespace A103528

/-- `A103745(n+1)%A000079(n)` -/
def P524113541929514919.Spec : Prop :=
  ∀ n, P524113541929514919.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P11521369218861287661

`and(A000225(n), A103745(n+1))`
-/

namespace A103528.P11521369218861287661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A103745 (n + 1))

end

end A103528.P11521369218861287661

namespace A103528

/-- `and(A000225(n), A103745(n+1))` -/
def P11521369218861287661.Spec : Prop :=
  ∀ n, P11521369218861287661.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P16455416183174812050

`and(A000295(n), A103745(n+1))`
-/

namespace A103528.P16455416183174812050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000295 n) (A103745 (n + 1))

end

end A103528.P16455416183174812050

namespace A103528

/-- `and(A000295(n), A103745(n+1))` -/
def P16455416183174812050.Spec : Prop :=
  ∀ n, P16455416183174812050.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P5427277741316456199

`and(A001045(n), A103745(n+1))`
-/

namespace A103528.P5427277741316456199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001045 n) (A103745 (n + 1))

end

end A103528.P5427277741316456199

namespace A103528

/-- `and(A001045(n), A103745(n+1))` -/
def P5427277741316456199.Spec : Prop :=
  ∀ n, P5427277741316456199.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P8053307726881637867

`and(A003817(n), A103745(n+1))`
-/

namespace A103528.P8053307726881637867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A103745 (n + 1))

end

end A103528.P8053307726881637867

namespace A103528

/-- `and(A003817(n), A103745(n+1))` -/
def P8053307726881637867.Spec : Prop :=
  ∀ n, P8053307726881637867.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P14295048036898696573

`and(A078485(n), A103745(n+1))`
-/

namespace A103528.P14295048036898696573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078485 n) (A103745 (n + 1))

end

end A103528.P14295048036898696573

namespace A103528

/-- `and(A078485(n), A103745(n+1))` -/
def P14295048036898696573.Spec : Prop :=
  ∀ n, P14295048036898696573.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P15004120310037583070

`and(A086099(n), A103745(n+1))`
-/

namespace A103528.P15004120310037583070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086099 n) (A103745 (n + 1))

end

end A103528.P15004120310037583070

namespace A103528

/-- `and(A086099(n), A103745(n+1))` -/
def P15004120310037583070.Spec : Prop :=
  ∀ n, P15004120310037583070.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P4504520370372751164

`and(A103745(n+1), A107854(n))`
-/

namespace A103528.P4504520370372751164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103745 (n + 1)) (A107854 n)

end

end A103528.P4504520370372751164

namespace A103528

/-- `and(A103745(n+1), A107854(n))` -/
def P4504520370372751164.Spec : Prop :=
  ∀ n, P4504520370372751164.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P8331491292414672370

`and(A103745(n+1), A115851(n))`
-/

namespace A103528.P8331491292414672370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103745 (n + 1)) (A115851 n)

end

end A103528.P8331491292414672370

namespace A103528

/-- `and(A103745(n+1), A115851(n))` -/
def P8331491292414672370.Spec : Prop :=
  ∀ n, P8331491292414672370.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P1426741753154329836

`and(A103745(n+1), A116362(n))`
-/

namespace A103528.P1426741753154329836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103745 (n + 1)) (A116362 n)

end

end A103528.P1426741753154329836

namespace A103528

/-- `and(A103745(n+1), A116362(n))` -/
def P1426741753154329836.Spec : Prop :=
  ∀ n, P1426741753154329836.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P14274888667977577398

`and(A103745(n+1), A130103(n))`
-/

namespace A103528.P14274888667977577398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103745 (n + 1)) (A130103 n)

end

end A103528.P14274888667977577398

namespace A103528

/-- `and(A103745(n+1), A130103(n))` -/
def P14274888667977577398.Spec : Prop :=
  ∀ n, P14274888667977577398.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P17607135111396222868

`and(A103745(n+1), A139814(n))`
-/

namespace A103528.P17607135111396222868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103745 (n + 1)) (A139814 n)

end

end A103528.P17607135111396222868

namespace A103528

/-- `and(A103745(n+1), A139814(n))` -/
def P17607135111396222868.Spec : Prop :=
  ∀ n, P17607135111396222868.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P14455817434737698880

`and(A103745(n+1), A140252(n))`
-/

namespace A103528.P14455817434737698880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103745 (n + 1)) (A140252 n)

end

end A103528.P14455817434737698880

namespace A103528

/-- `and(A103745(n+1), A140252(n))` -/
def P14455817434737698880.Spec : Prop :=
  ∀ n, P14455817434737698880.a n = A103528 (n + 1)

end A103528

/-! ## A103528.P18326999958453168589

`and(A103745(n+1), A140991(n))`
-/

namespace A103528.P18326999958453168589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103745 (n + 1)) (A140991 n)

end

end A103528.P18326999958453168589

namespace A103528

/-- `and(A103745(n+1), A140991(n))` -/
def P18326999958453168589.Spec : Prop :=
  ∀ n, P18326999958453168589.a n = A103528 (n + 1)

end A103528

/-!
# A103529: Values of A102370 which are >= a new power of 2.

The programs for A103529, the canonical program `A103529.P129152076767706356` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103529 has offset 1).

The definition of A103529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103529.P129152076767706356

`2^(n+1)-A103530(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103529

/-- `2^(n+1)-A103530(n+1)` -/
def P129152076767706356.Spec : Prop :=
  ∀ n, P129152076767706356.a n = A103529 (n + 1)

theorem P129152076767706356.correct : P129152076767706356.Spec := by
  intro n
  simp only [A103529, Nat.add_sub_cancel]

end A103529

/-! ## A103529.P9184632979113810535

`xor(a(n-1)+n, a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A103529.P9184632979113810535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  Nat.xor (a (n - 1) + n) (a (n - 1))

end

end A103529.P9184632979113810535

namespace A103529

/-- `xor(a(n-1)+n, a(n-1))` -/
def P9184632979113810535.Spec : Prop :=
  ∀ n, (P9184632979113810535.a n : ℤ) = A103529 (n + 1)

end A103529

/-! ## A103529.P1822002103597734926

`and(-A103530(n+1), A126646(n))`
-/

namespace A103529.P1822002103597734926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A103530 (n + 1)) (A126646 n)

end

end A103529.P1822002103597734926

namespace A103529

/-- `and(-A103530(n+1), A126646(n))` -/
def P1822002103597734926.Spec : Prop :=
  ∀ n, P1822002103597734926.a n = A103529 (n + 1)

end A103529

/-! ## A103529.P16372803775524272821

`A102371(n+1)+Δ[A103530(n+1)]`
-/

namespace A103529.P16372803775524272821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102371 (n + 1) + (f1 (n + 1) - f1 n)

end

end A103529.P16372803775524272821

namespace A103529

/-- `A102371(n+1)+Δ[A103530(n+1)]` -/
def P16372803775524272821.Spec : Prop :=
  ∀ n, P16372803775524272821.a n = A103529 (n + 1)

end A103529

/-! ## A103529.P3206432401483064508

`A000225(n+1)+1-A103530(n+1)`
-/

namespace A103529.P3206432401483064508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A103530 (n + 1))

end

end A103529.P3206432401483064508

namespace A103529

/-- `A000225(n+1)+1-A103530(n+1)` -/
def P3206432401483064508.Spec : Prop :=
  ∀ n, P3206432401483064508.a n = A103529 (n + 1)

end A103529

/-! ## A103529.P9289162839007118110

`A000051(n)+A000225(n)-A103530(n+1)`
-/

namespace A103529.P9289162839007118110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000225 n - A103530 (n + 1))

end

end A103529.P9289162839007118110

namespace A103529

/-- `A000051(n)+A000225(n)-A103530(n+1)` -/
def P9289162839007118110.Spec : Prop :=
  ∀ n, P9289162839007118110.a n = A103529 (n + 1)

end A103529

/-! ## A103529.P10845600480323765594

`A102371(n+1)+A103530(n+2)-A103530(n+1)`
-/

namespace A103529.P10845600480323765594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102371 (n + 1) + (A103530 (n + 2) - A103530 (n + 1))

end

end A103529.P10845600480323765594

namespace A103529

/-- `A102371(n+1)+A103530(n+2)-A103530(n+1)` -/
def P10845600480323765594.Spec : Prop :=
  ∀ n, P10845600480323765594.a n = A103529 (n + 1)

end A103529

/-!
# A103530: a(n) = 2^n - A103529(n).

The programs for A103530, the canonical program `A103530.P11595431843363722497` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103530 has offset 1).

The definition of A103530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103530.P17039569041949361777

`2^(n+1)-A103529(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A103530.P17039569041949361777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A103529 (n + 1)

end

end A103530.P17039569041949361777

namespace A103530

/-- `2^(n+1)-A103529(n+1)` -/
def P17039569041949361777.Spec : Prop :=
  ∀ n, P17039569041949361777.a n = A103530 (n + 1)

end A103530

/-! ## A103530.P11595431843363722497

`abs(xor(n-a(n-1), -a(n-1)))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103530

/-- `abs(xor(n-a(n-1), -a(n-1)))` -/
def P11595431843363722497.Spec : Prop :=
  ∀ n, P11595431843363722497.a n = A103530 (n + 1)

theorem P11595431843363722497.correct : P11595431843363722497.Spec := by
  intro n
  simp only [A103530, Nat.add_sub_cancel]

end A103530

/-! ## A103530.P13867013130432404029

`-xor(n-a(n-1), -a(n-1))` with `a(0)=2, a(1)=1`
-/

namespace A103530.P13867013130432404029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  -Int.xor ((n : ℤ) - a (n - 1)) (-a (n - 1))

end

end A103530.P13867013130432404029

namespace A103530

/-- `-xor(n-a(n-1), -a(n-1))` -/
def P13867013130432404029.Spec : Prop :=
  ∀ n, P13867013130432404029.a n = A103530 (n + 1)

end A103530

/-! ## A103530.P16959730876491045632

`xor(n, 2*(and(1-n, a(n-1))-1))` with `a(0)=2, a(1)=1`
-/

namespace A103530.P16959730876491045632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.xor (n : ℤ) (2 * (Int.land (1 - (n : ℤ)) (a (n - 1)) - 1))

end

end A103530.P16959730876491045632

namespace A103530

/-- `xor(n, 2*(and(1-n, a(n-1))-1))` -/
def P16959730876491045632.Spec : Prop :=
  ∀ n, P16959730876491045632.a n = A103530 (n + 1)

end A103530

/-! ## A103530.P15307389714327707069

`xor(a(n-1)-1, n-a(n-1))+1` with `a(0)=2, a(1)=1`
-/

namespace A103530.P15307389714327707069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.xor (a (n - 1) - 1) ((n : ℤ) - a (n - 1)) + 1

end

end A103530.P15307389714327707069

namespace A103530

/-- `xor(a(n-1)-1, n-a(n-1))+1` -/
def P15307389714327707069.Spec : Prop :=
  ∀ n, P15307389714327707069.a n = A103530 (n + 1)

end A103530

/-! ## A103530.P3290632716101372637

`xor(1, 2-xor(a(n-1)-n, a(n-1)))-3` with `a(0)=2, a(1)=1`
-/

namespace A103530.P3290632716101372637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.xor 1 (2 - Int.xor (a (n - 1) - (n : ℤ)) (a (n - 1))) - 3

end

end A103530.P3290632716101372637

namespace A103530

/-- `xor(1, 2-xor(a(n-1)-n, a(n-1)))-3` -/
def P3290632716101372637.Spec : Prop :=
  ∀ n, P3290632716101372637.a n = A103530 (n + 1)

end A103530

/-! ## A103530.P14698705118143041103

`n-2*and(a(n-1)-1, n-a(n-1))` with `a(0)=2, a(1)=1`
-/

namespace A103530.P14698705118143041103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (n : ℤ) - 2 * Int.land (a (n - 1) - 1) ((n : ℤ) - a (n - 1))

end

end A103530.P14698705118143041103

namespace A103530

/-- `n-2*and(a(n-1)-1, n-a(n-1))` -/
def P14698705118143041103.Spec : Prop :=
  ∀ n, P14698705118143041103.a n = A103530 (n + 1)

end A103530

/-! ## A103530.P14897491744951330432

`A105033(abs(1-n))+1`
-/

namespace A103530.P14897491744951330432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105033 |1 - (n : ℤ)|.toNat + 1

end

end A103530.P14897491744951330432

namespace A103530

/-- `A105033(abs(1-n))+1` -/
def P14897491744951330432.Spec : Prop :=
  ∀ n, P14897491744951330432.a n = A103530 (n + 1)

end A103530

/-! ## A103530.P4041653551336625442

`A000051(n)+A000225(n)-A103529(n+1)`
-/

namespace A103530.P4041653551336625442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000225 n - A103529 (n + 1))

end

end A103530.P4041653551336625442

namespace A103530

/-- `A000051(n)+A000225(n)-A103529(n+1)` -/
def P4041653551336625442.Spec : Prop :=
  ∀ n, P4041653551336625442.a n = A103530 (n + 1)

end A103530

/-! ## A103530.P591233796364669444

`A103529(n+2)-(A103529(n+1)+A102371(n+1))`
-/

namespace A103530.P591233796364669444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103529 (n + 2) - (A103529 (n + 1) + A102371 (n + 1))

end

end A103530.P591233796364669444

namespace A103530

/-- `A103529(n+2)-(A103529(n+1)+A102371(n+1))` -/
def P591233796364669444.Spec : Prop :=
  ∀ n, P591233796364669444.a n = A103530 (n + 1)

end A103530

/-!
# A103532: Number of divisors of 240^n.

The programs for A103532, the canonical program `A103532.P17143324640364294921` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103532 has offset 0).

The definition of A103532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103532.P17143324640364294921

`(4*n+1)*(n+1)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103532

/-- `(4*n+1)*(n+1)²` -/
def P17143324640364294921.Spec : Prop :=
  ∀ n, (P17143324640364294921.a n : ℤ) = A103532 n

theorem P17143324640364294921.correct : P17143324640364294921.Spec := by
  intro n
  simp only [A103532]

end A103532

/-! ## A103532.P12451757937532867342

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=20, a(2)=81, a(3)=208`
-/

namespace A103532.P12451757937532867342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20, 81, 208] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A103532.P12451757937532867342

namespace A103532

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12451757937532867342.Spec : Prop :=
  ∀ n, P12451757937532867342.a n = A103532 n

theorem P12451757937532867342.correct : P12451757937532867342.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A103532, Nat.add_sub_cancel, A103532.P12451757937532867342.a, A103532.P17143324640364294921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A103532, Nat.add_sub_cancel, A103532.P12451757937532867342.a, A103532.P17143324640364294921.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A103532

/-! ## A103532.P3081659120065853618

`∑[∑[a(n-1)+24]]` with `a(0)=1, a(1)=18`
-/

namespace A103532.P3081659120065853618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P3081659120065853618

namespace A103532

/-- `∑[∑[a(n-1)+24]]` -/
def P3081659120065853618.Spec : Prop :=
  ∀ n, (P3081659120065853618.a n : ℤ) = A103532 n

end A103532

/-! ## A103532.P8148668351144247375

`∑[6*lcm(n, 2*n+1)+1]`
-/

namespace A103532.P8148668351144247375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.lcm n (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P8148668351144247375

namespace A103532

/-- `∑[6*lcm(n, 2*n+1)+1]` -/
def P8148668351144247375.Spec : Prop :=
  ∀ n, (P8148668351144247375.a n : ℤ) = A103532 n

end A103532

/-! ## A103532.P759373998102592349

`∑[or(1, (2*n+1)*6*n)]`
-/

namespace A103532.P759373998102592349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((2 * n + 1) * (6 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P759373998102592349

namespace A103532

/-- `∑[or(1, (2*n+1)*6*n)]` -/
def P759373998102592349.Spec : Prop :=
  ∀ n, (P759373998102592349.a n : ℤ) = A103532 n

end A103532

/-! ## A103532.P10521363475967539319

`∑[xor(1, (2*n+1)*6*n)]`
-/

namespace A103532.P10521363475967539319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n + 1) * (6 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P10521363475967539319

namespace A103532

/-- `∑[xor(1, (2*n+1)*6*n)]` -/
def P10521363475967539319.Spec : Prop :=
  ∀ n, (P10521363475967539319.a n : ℤ) = A103532 n

end A103532

/-! ## A103532.P15539840175884567147

`Δ[lcm(n+1, n^3)]-(n+1)`
-/

namespace A103532.P15539840175884567147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)

end

end A103532.P15539840175884567147

namespace A103532

/-- `Δ[lcm(n+1, n^3)]-(n+1)` -/
def P15539840175884567147.Spec : Prop :=
  ∀ n, P15539840175884567147.a n = A103532 n

end A103532

/-! ## A103532.P150738656058513514

`6*(n+1)*C(n+1, 2)+(n+1)^3`
-/

namespace A103532.P150738656058513514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * ((n + 1) * Nat.choose (n + 1) 2) + (n + 1) ^ 3

end

end A103532.P150738656058513514

namespace A103532

/-- `6*(n+1)*C(n+1, 2)+(n+1)^3` -/
def P150738656058513514.Spec : Prop :=
  ∀ n, (P150738656058513514.a n : ℤ) = A103532 n

end A103532

/-! ## A103532.P12478808593547639432

`∑[Δ[2*n*C(2*n, 2)]-(2*n+1)]`
-/

namespace A103532.P12478808593547639432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P12478808593547639432

namespace A103532

/-- `∑[Δ[2*n*C(2*n, 2)]-(2*n+1)]` -/
def P12478808593547639432.Spec : Prop :=
  ∀ n, P12478808593547639432.a n = A103532 n

end A103532

/-! ## A103532.P8885671788492304494

`∑[A033577(n)-n]`
-/

namespace A103532.P8885671788492304494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033577 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P8885671788492304494

namespace A103532

/-- `∑[A033577(n)-n]` -/
def P8885671788492304494.Spec : Prop :=
  ∀ n, P8885671788492304494.a n = A103532 n

end A103532

/-! ## A103532.P16060408429833173078

`∑[2*A195319(n)+1]`
-/

namespace A103532.P16060408429833173078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195319 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P16060408429833173078

namespace A103532

/-- `∑[2*A195319(n)+1]` -/
def P16060408429833173078.Spec : Prop :=
  ∀ n, P16060408429833173078.a n = A103532 n

end A103532

/-! ## A103532.P11172133887928318418

`∑[2*A085473(n)-1]`
-/

namespace A103532.P11172133887928318418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085473 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P11172133887928318418

namespace A103532

/-- `∑[2*A085473(n)-1]` -/
def P11172133887928318418.Spec : Prop :=
  ∀ n, P11172133887928318418.a n = A103532 n

end A103532

/-! ## A103532.P17686447018380450743

`A213832(n+1)+∑[n]`
-/

namespace A103532.P17686447018380450743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213832 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A103532.P17686447018380450743

namespace A103532

/-- `A213832(n+1)+∑[n]` -/
def P17686447018380450743.Spec : Prop :=
  ∀ n, P17686447018380450743.a n = A103532 n

end A103532

/-! ## A103532.P13073477928195213090

`∑[A244806(n+1)+n]`
-/

namespace A103532.P13073477928195213090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244806 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P13073477928195213090

namespace A103532

/-- `∑[A244806(n+1)+n]` -/
def P13073477928195213090.Spec : Prop :=
  ∀ n, P13073477928195213090.a n = A103532 n

end A103532

/-! ## A103532.P14489621819701711985

`∑[A396290(n)+n+1]`
-/

namespace A103532.P14489621819701711985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396290 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P14489621819701711985

namespace A103532

/-- `∑[A396290(n)+n+1]` -/
def P14489621819701711985.Spec : Prop :=
  ∀ n, P14489621819701711985.a n = A103532 n

end A103532

/-! ## A103532.P16415321004768168456

`∑[n*A017593(n)+1]`
-/

namespace A103532.P16415321004768168456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017593 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P16415321004768168456

namespace A103532

/-- `∑[n*A017593(n)+1]` -/
def P16415321004768168456.Spec : Prop :=
  ∀ n, P16415321004768168456.a n = A103532 n

end A103532

/-! ## A103532.P6913076680254571776

`A139757(n)+∑[2*n]`
-/

namespace A103532.P6913076680254571776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A103532.P6913076680254571776

namespace A103532

/-- `A139757(n)+∑[2*n]` -/
def P6913076680254571776.Spec : Prop :=
  ∀ n, P6913076680254571776.a n = A103532 n

end A103532

/-! ## A103532.P12250441024389178175

`∑[A014641(n)-2*n]`
-/

namespace A103532.P12250441024389178175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103532.P12250441024389178175

namespace A103532

/-- `∑[A014641(n)-2*n]` -/
def P12250441024389178175.Spec : Prop :=
  ∀ n, P12250441024389178175.a n = A103532 n

end A103532

/-! ## A103532.P12369365851779335259

`A045944(n)+Δ[n²²]`
-/

namespace A103532.P12369365851779335259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A103532.P12369365851779335259

namespace A103532

/-- `A045944(n)+Δ[n²²]` -/
def P12369365851779335259.Spec : Prop :=
  ∀ n, P12369365851779335259.a n = A103532 n

end A103532

/-! ## A103532.P6549934571932802710

`2*A281381(n)+n+1`
-/

namespace A103532.P6549934571932802710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281381 n + (n + 1 : ℤ)

end

end A103532.P6549934571932802710

namespace A103532

/-- `2*A281381(n)+n+1` -/
def P6549934571932802710.Spec : Prop :=
  ∀ n, P6549934571932802710.a n = A103532 n

end A103532

/-!
# A103533: Even semiprimes of the form prime(n)*prime(n+1) - 1.

The programs for A103533, there is no canonical definition to state claims against.
-/

/-! ## A103533.P2239806274198561363

`A023515(A103746(n+1)+1)`
-/

namespace A103533.P2239806274198561363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (A103746 (n + 1) + 1).toNat

end

end A103533.P2239806274198561363

/-! ## A103533.P10723848383653128496

`xor(A033999(n)², A006094(A103746(n+1)))`
-/

namespace A103533.P10723848383653128496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A006094 (A103746 (n + 1)).toNat)

end

end A103533.P10723848383653128496

/-! ## A103533.P1778506987032960382

`A006094(A103746(n+1))-A000035(2*n+1)`
-/

namespace A103533.P1778506987032960382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A103746 (n + 1)).toNat - A000035 (2 * n + 1)

end

end A103533.P1778506987032960382

/-! ## A103533.P7981652726723802930

`A006094(A103746(n+1))-and(1, A007602(n+1))!`
-/

namespace A103533.P7981652726723802930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A103746 (n + 1)).toNat - (Nat.factorial (Int.land 1 (A007602 (n + 1))).toNat : ℤ)

end

end A103533.P7981652726723802930

/-! ## A103533.P14929981502399853647

`A057428(A211100(n))+A006094(A103746(n+1))`
-/

namespace A103533.P14929981502399853647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A211100 n).toNat + A006094 (A103746 (n + 1)).toNat

end

end A103533.P14929981502399853647

/-! ## A103533.P15439156462475614190

`A057428(A064989(n+1))+A006094(A103746(n+1))`
-/

namespace A103533.P15439156462475614190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A064989 (n + 1)).toNat + A006094 (A103746 (n + 1)).toNat

end

end A103533.P15439156462475614190

/-! ## A103533.P4670281229961494248

`A118830(A056108(n))+A006094(A103746(n+1))`
-/

namespace A103533.P4670281229961494248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A056108 n).toNat + A006094 (A103746 (n + 1)).toNat

end

end A103533.P4670281229961494248

/-!
# A103535: Number of nets in a regular right prism.

The programs for A103535, there is no canonical definition to state claims against.
-/

/-! ## A103535.P14322788312344666678

`A164297(A001142(n))+A006134(n+2)`
-/

namespace A103535.P14322788312344666678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164297 (A001142 n).toNat + A006134 (n + 2)

end

end A103535.P14322788312344666678

/-!
# A103536: Number of geometrically distinct edge-unfoldings of a regular n-gonal pyramid.

The programs for A103536, there is no canonical definition to state claims against.
-/

/-! ## A103536.P11022459025891584662

`(A005594(n+3)+A001911(n)+1)/2`
-/

namespace A103536.P11022459025891584662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005594 (n + 3) + (A001911 n + 1) : ℚ) / 2

end

end A103536.P11022459025891584662

/-! ## A103536.P2114321528701817314

`A008619(A005594(n+3)+A001911(n))`
-/

namespace A103536.P2114321528701817314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005594 (n + 3) + A001911 n).toNat

end

end A103536.P2114321528701817314

/-! ## A103536.P2836190086591767924

`A004526(A020695(n)+A005594(n+3))`
-/

namespace A103536.P2836190086591767924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020695 n + A005594 (n + 3)).toNat

end

end A103536.P2836190086591767924

/-! ## A103536.P7240520960133714789

`A065033(A005594(n+3)+A001911(n))`
-/

namespace A103536.P7240520960133714789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005594 (n + 3) + A001911 n).toNat

end

end A103536.P7240520960133714789

/-!
# A103538: Numbers k such that prime(k)*prime(k)# - 1 is prime, where prime(k)# is the k-th primorial.

The programs for A103538, there is no canonical definition to state claims against.
-/

/-! ## A103538.P15391142934549766096

`record[A049084(A134697(n+1))]`
-/

namespace A103538.P15391142934549766096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A134697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103538.P15391142934549766096

/-! ## A103538.P1392421056453029644

`A000720(p?[A134697(n+1)])`
-/

namespace A103538.P1392421056453029644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103538.P1392421056453029644

/-! ## A103538.P7132960019395711601

`A026233(p?[A134697(n+1)])`
-/

namespace A103538.P7132960019395711601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103538.P7132960019395711601

/-! ## A103538.P7502795631129335373

`A026238(p?[A134697(n+1)])`
-/

namespace A103538.P7502795631129335373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103538.P7502795631129335373

/-! ## A103538.P14691178692354420897

`A049084(p?[A134697(n+1)])`
-/

namespace A103538.P14691178692354420897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103538.P14691178692354420897

/-!
# A103539: Numbers k such that prime(k)*prime(k)# + 1 is prime where prime(k) is the k-th prime.

The programs for A103539, there is no canonical definition to state claims against.
-/

/-! ## A103539.P196551885971846228

`A000720(p?[A134669(n+1)])`
-/

namespace A103539.P196551885971846228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103539.P196551885971846228

/-! ## A103539.P5476107722268925722

`A026233(p?[A134669(n+1)])`
-/

namespace A103539.P5476107722268925722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103539.P5476107722268925722

/-! ## A103539.P4955474746660781120

`A026238(p?[A134669(n+1)])`
-/

namespace A103539.P4955474746660781120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103539.P4955474746660781120

/-! ## A103539.P9801175538334924330

`A049084(p?[A134669(n+1)])`
-/

namespace A103539.P9801175538334924330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103539.P9801175538334924330

/-! ## A103539.P13910304006633770268

`A055396(p?[A134669(n+1)])`
-/

namespace A103539.P13910304006633770268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103539.P13910304006633770268

/-!
# A103542: Binary equivalents of A102370.

The programs for A103542, there is no canonical definition to state claims against.
-/

/-! ## A103542.P5150454857448121318

`A007088(A102370(n))`
-/

namespace A103542.P5150454857448121318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A102370 n).toNat

end

end A103542.P5150454857448121318

/-! ## A103542.P11588346676072140070

`A007088(A105023(n)+n)`
-/

namespace A103542.P11588346676072140070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105023 n + (n : ℤ)).toNat

end

end A103542.P11588346676072140070

/-! ## A103542.P13600271261310711437

`A007088(A105228(n+1)-1)`
-/

namespace A103542.P13600271261310711437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105228 (n + 1) - 1).toNat

end

end A103542.P13600271261310711437

/-! ## A103542.P16462032976540947747

`A007088(2*A103185(n)+n)`
-/

namespace A103542.P16462032976540947747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A103185 n + (n : ℤ)).toNat

end

end A103542.P16462032976540947747

/-! ## A103542.P6125310294129052895

`A007088(A005843(A103185(n))+n)`
-/

namespace A103542.P6125310294129052895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005843 (A103185 n).toNat + (n : ℤ)).toNat

end

end A103542.P6125310294129052895

/-! ## A103542.P10697633007672985830

`A007088(A103185(n)+A103185(n)+n)`
-/

namespace A103542.P10697633007672985830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A103185 n + (A103185 n + (n : ℤ))).toNat

end

end A103542.P10697633007672985830

/-! ## A103542.P5157007125405694362

`A185544(2*A102370(n))`
-/

namespace A103542.P5157007125405694362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A102370 n).toNat

end

end A103542.P5157007125405694362

/-! ## A103542.P3523715838860652327

`A185544(2*(A105023(n)+n))`
-/

namespace A103542.P3523715838860652327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A105023 n + (n : ℤ))).toNat

end

end A103542.P3523715838860652327

/-! ## A103542.P15789932778299544224

`A185544(lcm(2, A005843(A102370(n))))`
-/

namespace A103542.P15789932778299544224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A005843 (A102370 n).toNat))

end

end A103542.P15789932778299544224

/-!
# A103543: Consider those values of k for which A102370(k) = k: 0, 4, 8, 16, 20, 24, 32, 36, 40, 48, 52, 56, 64, ... and divide by 4: 0, 1, 2, 4, 5, 6, 8, 9, 10, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, ...; sequence gives missing numbers.

The programs for A103543, there is no canonical definition to state claims against.
-/

/-! ## A103543.P12794732726241257058

`lt[5, 3^(n%2)*val(or(1, n)+1, 2)]`
-/

namespace A103543.P12794732726241257058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2) * SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103543.P12794732726241257058

/-! ## A103543.P9270525210255900509

`lt[5, 2^val(n+1, 2)*val(or(1, n)+1, 2)]`
-/

namespace A103543.P9270525210255900509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103543.P9270525210255900509

/-! ## A103543.P15842367764413277861

`comp[A104401(n)]`
-/

namespace A103543.P15842367764413277861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103543.P15842367764413277861

/-! ## A103543.P10881513086857220123

`lt[1, A227287(4*n)]`
-/

namespace A103543.P10881513086857220123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227287 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103543.P10881513086857220123

/-! ## A103543.P11359724185801380679

`lt[4, val(A191484(n), 2)]`
-/

namespace A103543.P11359724185801380679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A191484 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103543.P11359724185801380679

/-! ## A103543.P7910052948408759764

`eq[96, or(96, A131732(n))]`
-/

namespace A103543.P7910052948408759764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  96

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 96 (A131732 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103543.P7910052948408759764

/-! ## A103543.P1048405871129699419

`record[xor(n, 3-A277007(n))]`
-/

namespace A103543.P1048405871129699419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (3 - A277007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103543.P1048405871129699419

/-! ## A103543.P13693214639656226669

`lt[4*n, A102370(4*n)]`
-/

namespace A103543.P13693214639656226669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103543.P13693214639656226669

/-! ## A103543.P1688577362665615431

`lt[or(n, A040960(n)), n+1]`
-/

namespace A103543.P1688577362665615431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A040960 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103543.P1688577362665615431

/-!
# A103557: Least k such that k*((prime(n)#)^2)-1 and k*((prime(n)#)^2)+1 are twin primes.

The programs for A103557, there is no canonical definition to state claims against.
-/

/-! ## A103557.P8798590955419405938

`A325676(2*a(n-1))` with `a(0)=1, a(1)=2, a(2)=7, a(3)=6, a(4)=6`
-/

namespace A103557.P8798590955419405938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 6, 6] fun n a =>
  A325676 (2 * a (n - 1)).toNat

end

end A103557.P8798590955419405938

/-! ## A103557.P58865079311403925

`A088078(n+1)%∑[A088082(2*n+1)]`
-/

namespace A103557.P58865079311403925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088082 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088078 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103557.P58865079311403925

/-!
# A103558: Semiprimes of the form p^2 + q^2, where p and q are primes.

The programs for A103558, there is no canonical definition to state claims against.
-/

/-! ## A103558.P6644994285575804566

`∩[A001358(n+1), A045636(n+1)]`
-/

namespace A103558.P6644994285575804566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P6644994285575804566

/-! ## A103558.P3834391582124868286

`filter[A045636(n+1), A064911(#)]`
-/

namespace A103558.P3834391582124868286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A103558.P3834391582124868286

/-! ## A103558.P14624084423991904511

`filter[A214723(n+1), A064911(#)]`
-/

namespace A103558.P14624084423991904511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A103558.P14624084423991904511

/-! ## A103558.P8050130191215939666

`filter[A045636(n+1), A280710(#)]`
-/

namespace A103558.P8050130191215939666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A103558.P8050130191215939666

/-! ## A103558.P4095267024750983003

`filter[A214723(n+1), A280710(#)]`
-/

namespace A103558.P4095267024750983003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A103558.P4095267024750983003

/-! ## A103558.P5757936737911201402

`∩[A006881(n+1), A045636(n+1)]`
-/

namespace A103558.P5757936737911201402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P5757936737911201402

/-! ## A103558.P7713236003446739425

`∩[A045636(n+1), A068993(n+1)]`
-/

namespace A103558.P7713236003446739425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P7713236003446739425

/-! ## A103558.P6497402421014942028

`∩[A045636(n+1), A089995(n+1)]`
-/

namespace A103558.P6497402421014942028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P6497402421014942028

/-! ## A103558.P4666254206281048160

`∩[A045636(n+1), A176540(n+1)]`
-/

namespace A103558.P4666254206281048160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P4666254206281048160

/-! ## A103558.P4783091067389394958

`∩[A045636(n+1), A367590(n+1)]`
-/

namespace A103558.P4783091067389394958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P4783091067389394958

/-! ## A103558.P2925762040495466053

`∩[A045636(n+1), A085155(n+1)]`
-/

namespace A103558.P2925762040495466053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P2925762040495466053

/-! ## A103558.P6294489343324338260

`∩[A045636(n+1), A339424(n+1)]`
-/

namespace A103558.P6294489343324338260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P6294489343324338260

/-! ## A103558.P8850385079659940235

`∩[A045636(n+1), A289558(n+1)]`
-/

namespace A103558.P8850385079659940235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103558.P8850385079659940235

/-!
# A103563: Number of partitions of n into even-subscripted Fibonacci numbers (1,3,8,21,55,144,...).

The programs for A103563, there is no canonical definition to state claims against.
-/

/-! ## A103563.P2942982991407841962

`A010052(A340039(2*(n+2)))+A003108(3*n)`
-/

namespace A103563.P2942982991407841962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A340039 (2 * (n + 2))).toNat + A003108 (3 * n)

end

end A103563.P2942982991407841962

/-! ## A103563.P8205244854275873135

`A081753(A001212(n+1)+3)`
-/

namespace A103563.P8205244854275873135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A001212 (n + 1) + 3).toNat

end

end A103563.P8205244854275873135

/-! ## A103563.P13732701935007042595

`round(A240731(2*n+1)/A240729(2*n+5))`
-/

namespace A103563.P13732701935007042595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A240731 (2 * n + 1) : ℚ) / (A240729 (2 * n + 5) : ℚ))

end

end A103563.P13732701935007042595

/-! ## A103563.P15541147924101009713

`floor(root(A241545(2*(n+2)), 4))`
-/

namespace A103563.P15541147924101009713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241545 (2 * (n + 2)) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A103563.P15541147924101009713

/-!
# A103564: Primes p such that 3*p^2 + 2 is prime.

The programs for A103564, there is no canonical definition to state claims against.
-/

/-! ## A103564.P182537626470772324

`floor(sqrt(A103565(n+1)/3))`
-/

namespace A103564.P182537626470772324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A103565 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A103564.P182537626470772324

/-! ## A103564.P14956652550885503593

`p?[A027863(n+1)+1]`
-/

namespace A103564.P14956652550885503593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103564.P14956652550885503593

/-! ## A103564.P1660803753079841961

`record[A006530(A027863(n+2)+1)]`
-/

namespace A103564.P1660803753079841961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027863 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103564.P1660803753079841961

/-! ## A103564.P11059681410762604536

`record[A020639(A027863(n+2)+1)]`
-/

namespace A103564.P11059681410762604536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A027863 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103564.P11059681410762604536

/-! ## A103564.P4762421390786764545

`A020639(round(sqrt(A103565(n+1)/3)))`
-/

namespace A103564.P4762421390786764545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt ((A103565 (n + 1) : ℚ) / 3 : ℝ))).toNat

end

end A103564.P4762421390786764545

/-! ## A103564.P6867928777412040285

`p?[A141310(A027863(n+1))]`
-/

namespace A103564.P6867928777412040285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A027863 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103564.P6867928777412040285

/-! ## A103564.P9788440373104290205

`p?[n*A102853(n)]`
-/

namespace A103564.P9788440373104290205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103564.P9788440373104290205

/-! ## A103564.P2432161818548541476

`eq[A003415(n), A102853(n)]`
-/

namespace A103564.P2432161818548541476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103564.P2432161818548541476

/-! ## A103564.P637530269607578673

`eq[A102853(n), A302055(n)]`
-/

namespace A103564.P637530269607578673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103564.P637530269607578673

/-! ## A103564.P10937674551701604643

`eq[A102853(n), A370120(n)]`
-/

namespace A103564.P10937674551701604643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103564.P10937674551701604643

/-! ## A103564.P10110375269386667820

`record[A014963(A027863(n+2)+1)]`
-/

namespace A103564.P10110375269386667820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A027863 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103564.P10110375269386667820

/-!
# A103565: Primes of the form 3*p^2+2, where p is prime.

The programs for A103565, there is no canonical definition to state claims against.
-/

/-! ## A103565.P14307026633205653794

`2+3*A103564(n+1)²`
-/

namespace A103565.P14307026633205653794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + 3 * A103564 (n + 1) ^ 2

end

end A103565.P14307026633205653794

/-! ## A103565.P3612144435828086006

`record[A010051(A027863(n+2)+1)*A027864(n+2)]`
-/

namespace A103565.P3612144435828086006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A027863 (n + 2) + 1).toNat * A027864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103565.P3612144435828086006

/-! ## A103565.P1834643806284002110

`A005918(A103564(n+1))`
-/

namespace A103565.P1834643806284002110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (A103564 (n + 1)).toNat

end

end A103565.P1834643806284002110

/-! ## A103565.P11798436924005377531

`A005918(p?[A027863(n+1)+1])`
-/

namespace A103565.P11798436924005377531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027863 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103565.P11798436924005377531

/-!
# A103566: Sum of the primes > 5 modulo 3.

The programs for A103566, the canonical program `A103566.P1705433020270519279` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103566 has offset 1).

The definition of A103566 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120326, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103566.P1705433020270519279

`A120326(n+4)-4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A103566

/-- `A120326(n+4)-4` -/
def P1705433020270519279.Spec : Prop :=
  ∀ n, P1705433020270519279.a n = A103566 (n + 1)

theorem P1705433020270519279.correct : P1705433020270519279.Spec := by
  intro n
  simp only [A103566, Nat.add_sub_cancel]

end A103566

/-! ## A103566.P2359119521462636077

`∑[p?[2*n+7]%3]`
-/

namespace A103566.P2359119521462636077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P2359119521462636077

namespace A103566

/-- `∑[p?[2*n+7]%3]` -/
def P2359119521462636077.Spec : Prop :=
  ∀ n, (P2359119521462636077.a n : ℤ) = A103566 (n + 1)

end A103566

/-! ## A103566.P15443177399195263030

`∑[A001749(n+4)%3]`
-/

namespace A103566.P15443177399195263030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001749 (n + 4)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P15443177399195263030

namespace A103566

/-- `∑[A001749(n+4)%3]` -/
def P15443177399195263030.Spec : Prop :=
  ∀ n, P15443177399195263030.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P12665728894117858190

`∑[A004139(n+2)%3]`
-/

namespace A103566.P12665728894117858190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004139 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P12665728894117858190

namespace A103566

/-- `∑[A004139(n+2)%3]` -/
def P12665728894117858190.Spec : Prop :=
  ∀ n, P12665728894117858190.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P8762221138681355190

`∑[A168580(n+2)%3]`
-/

namespace A103566.P8762221138681355190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168580 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P8762221138681355190

namespace A103566

/-- `∑[A168580(n+2)%3]` -/
def P8762221138681355190.Spec : Prop :=
  ∀ n, P8762221138681355190.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P14735108786948257714

`∑[2-∑[A341952(n+3)]]`
-/

namespace A103566.P14735108786948257714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341952 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P14735108786948257714

namespace A103566

/-- `∑[2-∑[A341952(n+3)]]` -/
def P14735108786948257714.Spec : Prop :=
  ∀ n, P14735108786948257714.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P12633664417800797687

`∑[A045319(n+3)%3]`
-/

namespace A103566.P12633664417800797687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045319 (n + 3)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P12633664417800797687

namespace A103566

/-- `∑[A045319(n+3)%3]` -/
def P12633664417800797687.Spec : Prop :=
  ∀ n, P12633664417800797687.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P11905587141746136689

`∑[A045344(n+3)%3]`
-/

namespace A103566.P11905587141746136689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (n + 3)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P11905587141746136689

namespace A103566

/-- `∑[A045344(n+3)%3]` -/
def P11905587141746136689.Spec : Prop :=
  ∀ n, P11905587141746136689.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P2969461664856711237

`∑[A065091(n+3)%3]`
-/

namespace A103566.P2969461664856711237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P2969461664856711237

namespace A103566

/-- `∑[A065091(n+3)%3]` -/
def P2969461664856711237.Spec : Prop :=
  ∀ n, P2969461664856711237.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P4477495090658070062

`∑[A039701(n+4)]`
-/

namespace A103566.P4477495090658070062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P4477495090658070062

namespace A103566

/-- `∑[A039701(n+4)]` -/
def P4477495090658070062.Spec : Prop :=
  ∀ n, P4477495090658070062.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P14544688701125265245

`∑[A000040(n+4)%3]`
-/

namespace A103566.P14544688701125265245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P14544688701125265245

namespace A103566

/-- `∑[A000040(n+4)%3]` -/
def P14544688701125265245.Spec : Prop :=
  ∀ n, P14544688701125265245.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P16890010820934197992

`∑[A038194(n+4)%3]`
-/

namespace A103566.P16890010820934197992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038194 (n + 4)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P16890010820934197992

namespace A103566

/-- `∑[A038194(n+4)%3]` -/
def P16890010820934197992.Spec : Prop :=
  ∀ n, P16890010820934197992.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P23637062271652143

`∑[A086801(n+4)%3]`
-/

namespace A103566.P23637062271652143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086801 (n + 4)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P23637062271652143

namespace A103566

/-- `∑[A086801(n+4)%3]` -/
def P23637062271652143.Spec : Prop :=
  ∀ n, P23637062271652143.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P743404256603147087

`∑[A242119(n+4)%3]`
-/

namespace A103566.P743404256603147087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242119 (n + 4)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P743404256603147087

namespace A103566

/-- `∑[A242119(n+4)%3]` -/
def P743404256603147087.Spec : Prop :=
  ∀ n, P743404256603147087.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P14634959274702105752

`∑[(A006093(n+4)+1)%3]`
-/

namespace A103566.P14634959274702105752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 4) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P14634959274702105752

namespace A103566

/-- `∑[(A006093(n+4)+1)%3]` -/
def P14634959274702105752.Spec : Prop :=
  ∀ n, P14634959274702105752.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P9230410825056075919

`∑[record[A020639(n+7)]%3]`
-/

namespace A103566.P9230410825056075919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P9230410825056075919

namespace A103566

/-- `∑[record[A020639(n+7)]%3]` -/
def P9230410825056075919.Spec : Prop :=
  ∀ n, P9230410825056075919.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P13971522355592086133

`∑[record[A006530(2*(n+3)+1)]%3]`
-/

namespace A103566.P13971522355592086133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 3) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P13971522355592086133

namespace A103566

/-- `∑[record[A006530(2*(n+3)+1)]%3]` -/
def P13971522355592086133.Spec : Prop :=
  ∀ n, P13971522355592086133.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P8451582698528657050

`∑[record[A000010(2*(n+2)+3)]%3]+n+1`
-/

namespace A103566.P8451582698528657050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2) + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A103566.P8451582698528657050

namespace A103566

/-- `∑[record[A000010(2*(n+2)+3)]%3]+n+1` -/
def P8451582698528657050.Spec : Prop :=
  ∀ n, P8451582698528657050.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P9646869460376174018

`∑[A080425(A067076(n+3))]`
-/

namespace A103566.P9646869460376174018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A067076 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P9646869460376174018

namespace A103566

/-- `∑[A080425(A067076(n+3))]` -/
def P9646869460376174018.Spec : Prop :=
  ∀ n, P9646869460376174018.a n = A103566 (n + 1)

end A103566

/-! ## A103566.P2547552499090946156

`∑[record[A014963(n+7)]%3]`
-/

namespace A103566.P2547552499090946156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103566.P2547552499090946156

namespace A103566

/-- `∑[record[A014963(n+7)]%3]` -/
def P2547552499090946156.Spec : Prop :=
  ∀ n, P2547552499090946156.a n = A103566 (n + 1)

end A103566

/-!
# A103567: Sum of the (primes > 5 modulo 5).

The programs for A103567, the canonical program `A103567.P12673763267061478434` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103567 has offset 1).

The definition of A103567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103567.P12673763267061478434

`∑[A065091(n+3)%5]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103567

/-- `∑[A065091(n+3)%5]` -/
def P12673763267061478434.Spec : Prop :=
  ∀ n, P12673763267061478434.a n = A103567 (n + 1)

theorem P12673763267061478434.correct : P12673763267061478434.Spec := by
  intro n
  simp only [A103567, Nat.add_sub_cancel]

end A103567

/-! ## A103567.P11441293644812597137

`∑[A039703(n+4)]`
-/

namespace A103567.P11441293644812597137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P11441293644812597137

namespace A103567

/-- `∑[A039703(n+4)]` -/
def P11441293644812597137.Spec : Prop :=
  ∀ n, P11441293644812597137.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P1057841678373785975

`∑[A000040(n+4)%5]`
-/

namespace A103567.P1057841678373785975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P1057841678373785975

namespace A103567

/-- `∑[A000040(n+4)%5]` -/
def P1057841678373785975.Spec : Prop :=
  ∀ n, P1057841678373785975.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P7759922866499766137

`∑[A004679(n+4)%5]`
-/

namespace A103567.P7759922866499766137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004679 (n + 4)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P7759922866499766137

namespace A103567

/-- `∑[A004679(n+4)%5]` -/
def P7759922866499766137.Spec : Prop :=
  ∀ n, P7759922866499766137.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P8742600991407557761

`∑[A006005(n+4)%5]`
-/

namespace A103567.P8742600991407557761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 4)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P8742600991407557761

namespace A103567

/-- `∑[A006005(n+4)%5]` -/
def P8742600991407557761.Spec : Prop :=
  ∀ n, P8742600991407557761.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P1076723520654707428

`∑[A171027(n+4)%5]`
-/

namespace A103567.P1076723520654707428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171027 (n + 4)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P1076723520654707428

namespace A103567

/-- `∑[A171027(n+4)%5]` -/
def P1076723520654707428.Spec : Prop :=
  ∀ n, P1076723520654707428.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P13330002386873818925

`∑[A008578(n+5)%5]`
-/

namespace A103567.P13330002386873818925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 5)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P13330002386873818925

namespace A103567

/-- `∑[A008578(n+5)%5]` -/
def P13330002386873818925.Spec : Prop :=
  ∀ n, P13330002386873818925.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P9763768571620270777

`∑[A083251(n+5)%5]`
-/

namespace A103567.P9763768571620270777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083251 (n + 5)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P9763768571620270777

namespace A103567

/-- `∑[A083251(n+5)%5]` -/
def P9763768571620270777.Spec : Prop :=
  ∀ n, P9763768571620270777.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P5642399110431494765

`∑[p?[A007775(n+1)]%5]`
-/

namespace A103567.P5642399110431494765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P5642399110431494765

namespace A103567

/-- `∑[p?[A007775(n+1)]%5]` -/
def P5642399110431494765.Spec : Prop :=
  ∀ n, P5642399110431494765.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P6608223167176793950

`∑[p?[A020742(n)]%5]`
-/

namespace A103567.P6608223167176793950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P6608223167176793950

namespace A103567

/-- `∑[p?[A020742(n)]%5]` -/
def P6608223167176793950.Spec : Prop :=
  ∀ n, P6608223167176793950.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P935055514226454347

`∑[record[A064216(n+6)]%5]`
-/

namespace A103567.P935055514226454347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P935055514226454347

namespace A103567

/-- `∑[record[A064216(n+6)]%5]` -/
def P935055514226454347.Spec : Prop :=
  ∀ n, P935055514226454347.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P4586146650892394690

`∑[p?[A079000(n+1)]%5]`
-/

namespace A103567.P4586146650892394690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P4586146650892394690

namespace A103567

/-- `∑[p?[A079000(n+1)]%5]` -/
def P4586146650892394690.Spec : Prop :=
  ∀ n, P4586146650892394690.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P1896104171642339126

`∑[A010874(p?[A064806(n+1)])]`
-/

namespace A103567.P1896104171642339126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P1896104171642339126

namespace A103567

/-- `∑[A010874(p?[A064806(n+1)])]` -/
def P1896104171642339126.Spec : Prop :=
  ∀ n, P1896104171642339126.a n = A103567 (n + 1)

end A103567

/-! ## A103567.P4533685362453112708

`∑[A138821(n+4)%5]`
-/

namespace A103567.P4533685362453112708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138821 (n + 4)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103567.P4533685362453112708

namespace A103567

/-- `∑[A138821(n+4)%5]` -/
def P4533685362453112708.Spec : Prop :=
  ∀ n, P4533685362453112708.a n = A103567 (n + 1)

end A103567

/-!
# A103568: Sum of the (primes > 5 modulo 7).

The programs for A103568, the canonical program `A103568.P11898759965265295205` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103568 has offset 1).

The definition of A103568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103568.P11898759965265295205

`∑[p?[2*n+7]%7]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103568

/-- `∑[p?[2*n+7]%7]` -/
def P11898759965265295205.Spec : Prop :=
  ∀ n, (P11898759965265295205.a n : ℤ) = A103568 (n + 1)

theorem P11898759965265295205.correct : P11898759965265295205.Spec := by
  intro n
  simp only [A103568, Nat.add_sub_cancel]

end A103568

/-! ## A103568.P7881138042092972676

`∑[A065091(n+3)%7]`
-/

namespace A103568.P7881138042092972676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103568.P7881138042092972676

namespace A103568

/-- `∑[A065091(n+3)%7]` -/
def P7881138042092972676.Spec : Prop :=
  ∀ n, P7881138042092972676.a n = A103568 (n + 1)

end A103568

/-! ## A103568.P3266678488849278141

`∑[A039705(n+4)]`
-/

namespace A103568.P3266678488849278141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039705 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103568.P3266678488849278141

namespace A103568

/-- `∑[A039705(n+4)]` -/
def P3266678488849278141.Spec : Prop :=
  ∀ n, P3266678488849278141.a n = A103568 (n + 1)

end A103568

/-! ## A103568.P12938705649053121386

`∑[A000040(n+4)%7]`
-/

namespace A103568.P12938705649053121386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103568.P12938705649053121386

namespace A103568

/-- `∑[A000040(n+4)%7]` -/
def P12938705649053121386.Spec : Prop :=
  ∀ n, P12938705649053121386.a n = A103568 (n + 1)

end A103568

/-! ## A103568.P15614766625840838990

`∑[A006005(n+4)%7]`
-/

namespace A103568.P15614766625840838990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 4)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103568.P15614766625840838990

namespace A103568

/-- `∑[A006005(n+4)%7]` -/
def P15614766625840838990.Spec : Prop :=
  ∀ n, P15614766625840838990.a n = A103568 (n + 1)

end A103568

/-! ## A103568.P18270191218409660364

`∑[A008578(n+5)%7]`
-/

namespace A103568.P18270191218409660364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 5)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103568.P18270191218409660364

namespace A103568

/-- `∑[A008578(n+5)%7]` -/
def P18270191218409660364.Spec : Prop :=
  ∀ n, P18270191218409660364.a n = A103568 (n + 1)

end A103568

/-! ## A103568.P11539041326978540239

`∑[record[A006530(n+7)]%7]`
-/

namespace A103568.P11539041326978540239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103568.P11539041326978540239

namespace A103568

/-- `∑[record[A006530(n+7)]%7]` -/
def P11539041326978540239.Spec : Prop :=
  ∀ n, P11539041326978540239.a n = A103568 (n + 1)

end A103568

/-! ## A103568.P1234082313930409600

`∑[record[A020639(n+7)]%7]`
-/

namespace A103568.P1234082313930409600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103568.P1234082313930409600

namespace A103568

/-- `∑[record[A020639(n+7)]%7]` -/
def P1234082313930409600.Spec : Prop :=
  ∀ n, P1234082313930409600.a n = A103568 (n + 1)

end A103568

/-! ## A103568.P10809166234187283841

`∑[record[A014963(n+7)]%7]`
-/

namespace A103568.P10809166234187283841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103568.P10809166234187283841

namespace A103568

/-- `∑[record[A014963(n+7)]%7]` -/
def P10809166234187283841.Spec : Prop :=
  ∀ n, P10809166234187283841.a n = A103568 (n + 1)

end A103568

/-!
# A103569: Sum of the (primes > 5 modulo 11).

The programs for A103569, the canonical program `A103569.P11518997861058790453` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103569 has offset 1).

The definition of A103569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103569.P11518997861058790453

`∑[p?[2*n+7]%11]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103569

/-- `∑[p?[2*n+7]%11]` -/
def P11518997861058790453.Spec : Prop :=
  ∀ n, (P11518997861058790453.a n : ℤ) = A103569 (n + 1)

theorem P11518997861058790453.correct : P11518997861058790453.Spec := by
  intro n
  simp only [A103569, Nat.add_sub_cancel]

end A103569

/-! ## A103569.P6274428857613408088

`∑[A065091(n+3)%11]`
-/

namespace A103569.P6274428857613408088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3)) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103569.P6274428857613408088

namespace A103569

/-- `∑[A065091(n+3)%11]` -/
def P6274428857613408088.Spec : Prop :=
  ∀ n, P6274428857613408088.a n = A103569 (n + 1)

end A103569

/-! ## A103569.P2028652963971653028

`∑[A039709(n+4)]`
-/

namespace A103569.P2028652963971653028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039709 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103569.P2028652963971653028

namespace A103569

/-- `∑[A039709(n+4)]` -/
def P2028652963971653028.Spec : Prop :=
  ∀ n, P2028652963971653028.a n = A103569 (n + 1)

end A103569

/-! ## A103569.P12019443385011822974

`∑[A000040(n+4)%11]`
-/

namespace A103569.P12019443385011822974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103569.P12019443385011822974

namespace A103569

/-- `∑[A000040(n+4)%11]` -/
def P12019443385011822974.Spec : Prop :=
  ∀ n, P12019443385011822974.a n = A103569 (n + 1)

end A103569

/-! ## A103569.P15849401124023051911

`∑[A006005(n+4)%11]`
-/

namespace A103569.P15849401124023051911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 4)) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103569.P15849401124023051911

namespace A103569

/-- `∑[A006005(n+4)%11]` -/
def P15849401124023051911.Spec : Prop :=
  ∀ n, P15849401124023051911.a n = A103569 (n + 1)

end A103569

/-! ## A103569.P8556032991720624702

`∑[A008578(n+5)%11]`
-/

namespace A103569.P8556032991720624702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 5)) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103569.P8556032991720624702

namespace A103569

/-- `∑[A008578(n+5)%11]` -/
def P8556032991720624702.Spec : Prop :=
  ∀ n, P8556032991720624702.a n = A103569 (n + 1)

end A103569

/-! ## A103569.P17787583260318085089

`∑[record[A006530(n+7)]%11]`
-/

namespace A103569.P17787583260318085089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103569.P17787583260318085089

namespace A103569

/-- `∑[record[A006530(n+7)]%11]` -/
def P17787583260318085089.Spec : Prop :=
  ∀ n, P17787583260318085089.a n = A103569 (n + 1)

end A103569

/-! ## A103569.P14179462349871664591

`∑[record[A020639(n+7)]%11]`
-/

namespace A103569.P14179462349871664591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103569.P14179462349871664591

namespace A103569

/-- `∑[record[A020639(n+7)]%11]` -/
def P14179462349871664591.Spec : Prop :=
  ∀ n, P14179462349871664591.a n = A103569 (n + 1)

end A103569

/-! ## A103569.P8973502133517791491

`∑[record[A014963(n+7)]%11]`
-/

namespace A103569.P8973502133517791491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103569.P8973502133517791491

namespace A103569

/-- `∑[record[A014963(n+7)]%11]` -/
def P8973502133517791491.Spec : Prop :=
  ∀ n, P8973502133517791491.a n = A103569 (n + 1)

end A103569

/-!
# A103570: Sum of the (primes > 5 modulo 13).

The programs for A103570, the canonical program `A103570.P11560104406582912725` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103570 has offset 1).

The definition of A103570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103570.P11560104406582912725

`∑[p?[2*n+7]%13]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103570

/-- `∑[p?[2*n+7]%13]` -/
def P11560104406582912725.Spec : Prop :=
  ∀ n, (P11560104406582912725.a n : ℤ) = A103570 (n + 1)

theorem P11560104406582912725.correct : P11560104406582912725.Spec := by
  intro n
  simp only [A103570, Nat.add_sub_cancel]

end A103570

/-! ## A103570.P7551273592827266178

`∑[A039711(n+4)]`
-/

namespace A103570.P7551273592827266178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039711 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103570.P7551273592827266178

namespace A103570

/-- `∑[A039711(n+4)]` -/
def P7551273592827266178.Spec : Prop :=
  ∀ n, P7551273592827266178.a n = A103570 (n + 1)

end A103570

/-! ## A103570.P12090012986504257196

`∑[A000040(n+4)%13]`
-/

namespace A103570.P12090012986504257196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103570.P12090012986504257196

namespace A103570

/-- `∑[A000040(n+4)%13]` -/
def P12090012986504257196.Spec : Prop :=
  ∀ n, P12090012986504257196.a n = A103570 (n + 1)

end A103570

/-! ## A103570.P4279522793872131148

`∑[A008578(n+5)%13]`
-/

namespace A103570.P4279522793872131148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 5)) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103570.P4279522793872131148

namespace A103570

/-- `∑[A008578(n+5)%13]` -/
def P4279522793872131148.Spec : Prop :=
  ∀ n, P4279522793872131148.a n = A103570 (n + 1)

end A103570

/-! ## A103570.P15745813160266911533

`∑[record[A006530(n+7)]%13]`
-/

namespace A103570.P15745813160266911533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103570.P15745813160266911533

namespace A103570

/-- `∑[record[A006530(n+7)]%13]` -/
def P15745813160266911533.Spec : Prop :=
  ∀ n, P15745813160266911533.a n = A103570 (n + 1)

end A103570

/-! ## A103570.P11017171609085142525

`∑[record[A020639(n+7)]%13]`
-/

namespace A103570.P11017171609085142525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103570.P11017171609085142525

namespace A103570

/-- `∑[record[A020639(n+7)]%13]` -/
def P11017171609085142525.Spec : Prop :=
  ∀ n, P11017171609085142525.a n = A103570 (n + 1)

end A103570

/-! ## A103570.P2585734384568043239

`∑[record[A014963(n+7)]%13]`
-/

namespace A103570.P2585734384568043239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103570.P2585734384568043239

namespace A103570

/-- `∑[record[A014963(n+7)]%13]` -/
def P2585734384568043239.Spec : Prop :=
  ∀ n, P2585734384568043239.a n = A103570 (n + 1)

end A103570

/-!
# A103571: Sum of the (primes > 5 modulo 17).

The programs for A103571, the canonical program `A103571.P5043247035922346383` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103571 has offset 1).

The definition of A103571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103571.P5043247035922346383

`∑[p?[2*n+7]%17]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103571

/-- `∑[p?[2*n+7]%17]` -/
def P5043247035922346383.Spec : Prop :=
  ∀ n, (P5043247035922346383.a n : ℤ) = A103571 (n + 1)

theorem P5043247035922346383.correct : P5043247035922346383.Spec := by
  intro n
  simp only [A103571, Nat.add_sub_cancel]

end A103571

/-! ## A103571.P15267146720730254644

`∑[A039715(n+4)]`
-/

namespace A103571.P15267146720730254644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039715 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103571.P15267146720730254644

namespace A103571

/-- `∑[A039715(n+4)]` -/
def P15267146720730254644.Spec : Prop :=
  ∀ n, P15267146720730254644.a n = A103571 (n + 1)

end A103571

/-! ## A103571.P3538100388134083899

`∑[A000040(n+4)%17]`
-/

namespace A103571.P3538100388134083899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103571.P3538100388134083899

namespace A103571

/-- `∑[A000040(n+4)%17]` -/
def P3538100388134083899.Spec : Prop :=
  ∀ n, P3538100388134083899.a n = A103571 (n + 1)

end A103571

/-! ## A103571.P6577694087006305226

`∑[A008578(n+5)%17]`
-/

namespace A103571.P6577694087006305226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 5)) 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103571.P6577694087006305226

namespace A103571

/-- `∑[A008578(n+5)%17]` -/
def P6577694087006305226.Spec : Prop :=
  ∀ n, P6577694087006305226.a n = A103571 (n + 1)

end A103571

/-! ## A103571.P1350223464415985346

`∑[record[A006530(n+7)]%17]`
-/

namespace A103571.P1350223464415985346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103571.P1350223464415985346

namespace A103571

/-- `∑[record[A006530(n+7)]%17]` -/
def P1350223464415985346.Spec : Prop :=
  ∀ n, P1350223464415985346.a n = A103571 (n + 1)

end A103571

/-! ## A103571.P8412515708349612256

`∑[record[A020639(n+7)]%17]`
-/

namespace A103571.P8412515708349612256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103571.P8412515708349612256

namespace A103571

/-- `∑[record[A020639(n+7)]%17]` -/
def P8412515708349612256.Spec : Prop :=
  ∀ n, P8412515708349612256.a n = A103571 (n + 1)

end A103571

/-! ## A103571.P1792929303809959341

`∑[record[A014963(n+7)]%17]`
-/

namespace A103571.P1792929303809959341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103571.P1792929303809959341

namespace A103571

/-- `∑[record[A014963(n+7)]%17]` -/
def P1792929303809959341.Spec : Prop :=
  ∀ n, P1792929303809959341.a n = A103571 (n + 1)

end A103571

/-!
# A103572: Sum of the (primes > 5 modulo 19).

The programs for A103572, the canonical program `A103572.P3008332701080816332` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103572 has offset 1).

The definition of A103572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103572.P3008332701080816332

`∑[p?[2*n+7]%19]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A103572

/-- `∑[p?[2*n+7]%19]` -/
def P3008332701080816332.Spec : Prop :=
  ∀ n, (P3008332701080816332.a n : ℤ) = A103572 (n + 1)

theorem P3008332701080816332.correct : P3008332701080816332.Spec := by
  intro n
  simp only [A103572, Nat.add_sub_cancel]

end A103572

/-! ## A103572.P2950667815417606809

`∑[A065091(n+3)%19]`
-/

namespace A103572.P2950667815417606809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3)) 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103572.P2950667815417606809

namespace A103572

/-- `∑[A065091(n+3)%19]` -/
def P2950667815417606809.Spec : Prop :=
  ∀ n, P2950667815417606809.a n = A103572 (n + 1)

end A103572

/-! ## A103572.P6884819110211595113

`∑[A033633(n+4)]`
-/

namespace A103572.P6884819110211595113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033633 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103572.P6884819110211595113

namespace A103572

/-- `∑[A033633(n+4)]` -/
def P6884819110211595113.Spec : Prop :=
  ∀ n, P6884819110211595113.a n = A103572 (n + 1)

end A103572

/-! ## A103572.P17980043216635589434

`∑[A000040(n+4)%19]`
-/

namespace A103572.P17980043216635589434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103572.P17980043216635589434

namespace A103572

/-- `∑[A000040(n+4)%19]` -/
def P17980043216635589434.Spec : Prop :=
  ∀ n, P17980043216635589434.a n = A103572 (n + 1)

end A103572

/-! ## A103572.P13485963566351232580

`∑[record[A006530(n+7)]%19]`
-/

namespace A103572.P13485963566351232580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103572.P13485963566351232580

namespace A103572

/-- `∑[record[A006530(n+7)]%19]` -/
def P13485963566351232580.Spec : Prop :=
  ∀ n, P13485963566351232580.a n = A103572 (n + 1)

end A103572

/-! ## A103572.P7312737346564760537

`∑[record[A020639(n+7)]%19]`
-/

namespace A103572.P7312737346564760537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103572.P7312737346564760537

namespace A103572

/-- `∑[record[A020639(n+7)]%19]` -/
def P7312737346564760537.Spec : Prop :=
  ∀ n, P7312737346564760537.a n = A103572 (n + 1)

end A103572

/-! ## A103572.P1069184579287104673

`∑[record[A014963(n+7)]%19]`
-/

namespace A103572.P1069184579287104673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103572.P1069184579287104673

namespace A103572

/-- `∑[record[A014963(n+7)]%19]` -/
def P1069184579287104673.Spec : Prop :=
  ∀ n, P1069184579287104673.a n = A103572 (n + 1)

end A103572

/-!
# A103573: a(n) is the least integer such that floor(a(n)^(1/2)-a(n)^(1/3)) = n.

The programs for A103573, there is no canonical definition to state claims against.
-/

/-! ## A103573.P9248101871802893414

`(n+4)*2*n-A255361(A226022(n))`
-/

namespace A103573.P9248101871802893414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) * (2 * n) : ℤ) - A255361 (A226022 n).toNat

end

end A103573.P9248101871802893414

/-! ## A103573.P11092430783543792621

`A161532(n)-A190867(A065975(n))`
-/

namespace A103573.P11092430783543792621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n - A190867 (A065975 n).toNat

end

end A103573.P11092430783543792621

/-! ## A103573.P2624090806437297227

`2*(n+2)²-7-A319430(A058380(n))`
-/

namespace A103573.P2624090806437297227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) ^ 2 : ℤ) - 7 - A319430 (A058380 n).toNat

end

end A103573.P2624090806437297227

/-! ## A103573.P14928008826210321106

`A161532(n)-A003989(A093468(n+1))`
-/

namespace A103573.P14928008826210321106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n - A003989 (A093468 (n + 1)).toNat

end

end A103573.P14928008826210321106

/-!
# A103577: Number of partitions of n into Fibonacci parts if each part is of two kinds.

The programs for A103577, there is no canonical definition to state claims against.
-/

/-! ## A103577.P18367692611971826547

`∑[∑[A241744(A000038(3^n)+n+3)]]`
-/

namespace A103577.P18367692611971826547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241744 (A000038 (3 ^ n) + (n + 3 : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103577.P18367692611971826547

/-! ## A103577.P388166767351684677

`A184421(A015128(n)-A317683(n))`
-/

namespace A103577.P388166767351684677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A015128 n - A317683 n).toNat

end

end A103577.P388166767351684677

/-! ## A103577.P10604845527788681585

`A105223(A072154(n)*A126646(n))`
-/

namespace A103577.P10604845527788681585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A072154 n * A126646 n).toNat

end

end A103577.P10604845527788681585

/-! ## A103577.P14906606590588512387

`A003056(A000726(2*n)*A015128(n))`
-/

namespace A103577.P14906606590588512387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000726 (2 * n) * A015128 n).toNat

end

end A103577.P14906606590588512387

/-!
# A103578: Number of divisors of m^2, where m is the smallest number with at least n divisors.

The programs for A103578, there is no canonical definition to state claims against.
-/

/-! ## A103578.P3838264556739793180

`A000005(A061799(n+1)²)`
-/

namespace A103578.P3838264556739793180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061799 (n + 1) ^ 2).toNat

end

end A103578.P3838264556739793180

/-! ## A103578.P6268062802158486923

`A141264(A350786(n+1))`
-/

namespace A103578.P6268062802158486923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141264 (A350786 (n + 1)).toNat

end

end A103578.P6268062802158486923

/-! ## A103578.P4253898537797136893

`∏{e}[A061799(n+1), A005408(#)]`
-/

namespace A103578.P4253898537797136893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005408 (Nat.factorization (f1 n).natAbs p)

end

end A103578.P4253898537797136893

/-! ## A103578.P11324766937079049227

`∏{e}[A061799(n+1), A061345(#)]`
-/

namespace A103578.P11324766937079049227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061345 (Nat.factorization (f1 n).natAbs p)

end

end A103578.P11324766937079049227

/-! ## A103578.P11212346556113942747

`∏{e}[A061799(n+1), A143450(#)]`
-/

namespace A103578.P11212346556113942747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A143450 (Nat.factorization (f1 n).natAbs p)

end

end A103578.P11212346556113942747

/-! ## A103578.P13703307728099309996

`∏{e}[A061799(n+1), A144396(#)]`
-/

namespace A103578.P13703307728099309996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A144396 (Nat.factorization (f1 n).natAbs p)

end

end A103578.P13703307728099309996

/-! ## A103578.P4918405693916361771

`∏{e}[A061799(n+1), A160144(#)]`
-/

namespace A103578.P4918405693916361771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A160144 (Nat.factorization (f1 n).natAbs p)

end

end A103578.P4918405693916361771

/-! ## A103578.P3456199789557187092

`∏{e}[A061799(n+1), A192868(#)]`
-/

namespace A103578.P3456199789557187092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A192868 (Nat.factorization (f1 n).natAbs p)

end

end A103578.P3456199789557187092

/-! ## A103578.P3634349335957727054

`∏{e}[A061799(n+1), A322660(#)]`
-/

namespace A103578.P3634349335957727054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A322660 (Nat.factorization (f1 n).natAbs p)

end

end A103578.P3634349335957727054

/-! ## A103578.P12178846245502054150

`∏{e}[A061799(n+1), A020725(2*#)]`
-/

namespace A103578.P12178846245502054150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020725 (2 * Nat.factorization (f1 n).natAbs p)

end

end A103578.P12178846245502054150

/-! ## A103578.P8877957384652962077

`∏{e}[A061799(n+1), A077168(2*#)]`
-/

namespace A103578.P8877957384652962077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A077168 (2 * Nat.factorization (f1 n).natAbs p)

end

end A103578.P8877957384652962077

/-! ## A103578.P10456040255331479738

`∏{e}[A061799(n+1), A000005(4^#)]`
-/

namespace A103578.P10456040255331479738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (4 ^ Nat.factorization (f1 n).natAbs p)

end

end A103578.P10456040255331479738

/-! ## A103578.P2216192378116508291

`∏{e}[A061799(n+1), A008814(#)+#]`
-/

namespace A103578.P2216192378116508291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A008814 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A103578.P2216192378116508291

/-! ## A103578.P13038401937111412723

`∏{e}[A061799(n+1), A020725(#)+#]`
-/

namespace A103578.P13038401937111412723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A020725 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A103578.P13038401937111412723

/-! ## A103578.P16619130987830111788

`∏{e}[A061799(n+1), A077168(#)+#]`
-/

namespace A103578.P16619130987830111788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A077168 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A103578.P16619130987830111788

/-!
# A103579: Sophie Germain primes that are not Lucasian primes: primes p not 3 (mod 4) such that 2p + 1 is prime.

The programs for A103579, the canonical program `A103579.P11185176783327409651` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103579 has offset 1).

The definition of A103579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103579.P15834719220417236020

`floor(A269454(n+1)/2)`
-/

namespace A103579.P15834719220417236020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269454 (n + 1) : ℚ) / 2⌋

end

end A103579.P15834719220417236020

namespace A103579

/-- `floor(A269454(n+1)/2)` -/
def P15834719220417236020.Spec : Prop :=
  ∀ n, P15834719220417236020.a n = A103579 (n + 1)

end A103579

/-! ## A103579.P11185176783327409651

`floor(p?[A294091(n+1)]/2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103579

/-- `floor(p?[A294091(n+1)]/2)` -/
def P11185176783327409651.Spec : Prop :=
  ∀ n, P11185176783327409651.a n = A103579 (n + 1)

theorem P11185176783327409651.correct : P11185176783327409651.Spec := by
  intro n
  simp only [A103579, Nat.add_sub_cancel]

end A103579

/-! ## A103579.P16433450160537625728

`(p?[2*A002313(n+1)+1]-1)/2`
-/

namespace A103579.P16433450160537625728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002313 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A103579.P16433450160537625728

namespace A103579

/-- `(p?[2*A002313(n+1)+1]-1)/2` -/
def P16433450160537625728.Spec : Prop :=
  ∀ n, P16433450160537625728.a n = (A103579 (n + 1) : ℚ)

end A103579

/-! ## A103579.P9908589612938922274

`∩[A002313(n+1), A005384(n+1)]`
-/

namespace A103579.P9908589612938922274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P9908589612938922274

namespace A103579

/-- `∩[A002313(n+1), A005384(n+1)]` -/
def P9908589612938922274.Spec : Prop :=
  ∀ n, (P9908589612938922274.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P10093605712340498501

`∩[A005384(n+1), A038875(n+1)]`
-/

namespace A103579.P10093605712340498501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P10093605712340498501

namespace A103579

/-- `∩[A005384(n+1), A038875(n+1)]` -/
def P10093605712340498501.Spec : Prop :=
  ∀ n, (P10093605712340498501.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P17779297798248450914

`∩[A005384(n+1), A055025(n+1)]`
-/

namespace A103579.P17779297798248450914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P17779297798248450914

namespace A103579

/-- `∩[A005384(n+1), A055025(n+1)]` -/
def P17779297798248450914.Spec : Prop :=
  ∀ n, (P17779297798248450914.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P9637720298151770765

`∩[A002313(n+1), A156658(n+1)]`
-/

namespace A103579.P9637720298151770765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P9637720298151770765

namespace A103579

/-- `∩[A002313(n+1), A156658(n+1)]` -/
def P9637720298151770765.Spec : Prop :=
  ∀ n, (P9637720298151770765.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P11921319191995377494

`∩[A055025(n+1), A156658(n+1)]`
-/

namespace A103579.P11921319191995377494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P11921319191995377494

namespace A103579

/-- `∩[A055025(n+1), A156658(n+1)]` -/
def P11921319191995377494.Spec : Prop :=
  ∀ n, (P11921319191995377494.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P17881932573587640824

`∩[A005384(n+1), A243183(n+1)]`
-/

namespace A103579.P17881932573587640824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P17881932573587640824

namespace A103579

/-- `∩[A005384(n+1), A243183(n+1)]` -/
def P17881932573587640824.Spec : Prop :=
  ∀ n, (P17881932573587640824.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P9613699263116142402

`∩[A002313(n+1), A246857(n+1)]`
-/

namespace A103579.P9613699263116142402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P9613699263116142402

namespace A103579

/-- `∩[A002313(n+1), A246857(n+1)]` -/
def P9613699263116142402.Spec : Prop :=
  ∀ n, (P9613699263116142402.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P12634339086571671580

`∩[A002313(n+1), A259973(n+1)]`
-/

namespace A103579.P12634339086571671580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P12634339086571671580

namespace A103579

/-- `∩[A002313(n+1), A259973(n+1)]` -/
def P12634339086571671580.Spec : Prop :=
  ∀ n, (P12634339086571671580.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P18248343482748919653

`∩[A038875(n+1), A246857(n+1)]`
-/

namespace A103579.P18248343482748919653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P18248343482748919653

namespace A103579

/-- `∩[A038875(n+1), A246857(n+1)]` -/
def P18248343482748919653.Spec : Prop :=
  ∀ n, (P18248343482748919653.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P8107875766517323691

`∩[A038875(n+1), A259973(n+1)]`
-/

namespace A103579.P8107875766517323691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P8107875766517323691

namespace A103579

/-- `∩[A038875(n+1), A259973(n+1)]` -/
def P8107875766517323691.Spec : Prop :=
  ∀ n, (P8107875766517323691.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P14733578906222528950

`∩[A055025(n+1), A246857(n+1)]`
-/

namespace A103579.P14733578906222528950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P14733578906222528950

namespace A103579

/-- `∩[A055025(n+1), A246857(n+1)]` -/
def P14733578906222528950.Spec : Prop :=
  ∀ n, (P14733578906222528950.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P17439279534439456913

`∩[A055025(n+1), A259973(n+1)]`
-/

namespace A103579.P17439279534439456913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P17439279534439456913

namespace A103579

/-- `∩[A055025(n+1), A259973(n+1)]` -/
def P17439279534439456913.Spec : Prop :=
  ∀ n, (P17439279534439456913.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P4035096543822916923

`∩[A002313(n+1), A348511(n+1)]`
-/

namespace A103579.P4035096543822916923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P4035096543822916923

namespace A103579

/-- `∩[A002313(n+1), A348511(n+1)]` -/
def P4035096543822916923.Spec : Prop :=
  ∀ n, (P4035096543822916923.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P13681311524656189565

`∩[A002313(n+1), A364926(n+1)]`
-/

namespace A103579.P13681311524656189565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P13681311524656189565

namespace A103579

/-- `∩[A002313(n+1), A364926(n+1)]` -/
def P13681311524656189565.Spec : Prop :=
  ∀ n, (P13681311524656189565.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P321770026136486504

`∩[A038875(n+1), A348511(n+1)]`
-/

namespace A103579.P321770026136486504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P321770026136486504

namespace A103579

/-- `∩[A038875(n+1), A348511(n+1)]` -/
def P321770026136486504.Spec : Prop :=
  ∀ n, (P321770026136486504.a n : ℤ) = A103579 (n + 1)

end A103579

/-! ## A103579.P344785845429648795

`∩[A156658(n+1), A243183(n+1)]`
-/

namespace A103579.P344785845429648795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103579.P344785845429648795

namespace A103579

/-- `∩[A156658(n+1), A243183(n+1)]` -/
def P344785845429648795.Spec : Prop :=
  ∀ n, (P344785845429648795.a n : ℤ) = A103579 (n + 1)

end A103579

/-!
# A103580: Number of nonempty subsets S of {1,2,3,...,n} that have the property that no element x of S is a nonnegative integer linear combination of elements of S-{x}.

The programs for A103580, there is no canonical definition to state claims against.
-/

/-! ## A103580.P16997407206747251196

`A326083(n+1)-1`
-/

namespace A103580.P16997407206747251196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 (n + 1) - 1

end

end A103580.P16997407206747251196

/-! ## A103580.P8590607394784673439

`∑[A124506(n+1)]`
-/

namespace A103580.P8590607394784673439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103580.P8590607394784673439

/-! ## A103580.P4907832569125465325

`∑[abs(Δ[A326083(n)])]`
-/

namespace A103580.P4907832569125465325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103580.P4907832569125465325

/-! ## A103580.P9490026240530273445

`record[A326083(A123108(n))-1]`
-/

namespace A103580.P9490026240530273445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 (A123108 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103580.P9490026240530273445

/-! ## A103580.P16245270547771453974

`record[A326083(A134478(n))-1]`
-/

namespace A103580.P16245270547771453974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103580.P16245270547771453974

/-! ## A103580.P13819380428229800470

`record[A326083(A141256(n))-1]`
-/

namespace A103580.P13819380428229800470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 (A141256 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103580.P13819380428229800470

/-! ## A103580.P74017054806422332

`record[A326083(A331303(n))-1]`
-/

namespace A103580.P74017054806422332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 (A331303 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103580.P74017054806422332

/-! ## A103580.P16683966373482392281

`∑[Δ[A326083(n)]^A178334(n)]`
-/

namespace A103580.P16683966373482392281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103580.P16683966373482392281

/-! ## A103580.P17723297659621005725

`∑[Δ[A326083(n)]%A343561(n)]`
-/

namespace A103580.P17723297659621005725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A343561 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103580.P17723297659621005725

/-! ## A103580.P12026739490091077980

`∑[A000038(n+1)+Δ[A326083(n)]]`
-/

namespace A103580.P12026739490091077980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103580.P12026739490091077980

/-! ## A103580.P4965963557092370810

`∑[Δ[A326083(n)]+A008683(4*(n+1))]`
-/

namespace A103580.P4965963557092370810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103580.P4965963557092370810

/-!
# A103581: A102371 written in base 2.

The programs for A103581, the canonical program `A103581.P9200771845542336394` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103581 has offset 1).

The definition of A103581 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A102371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A103581.P9200771845542336394

`A007088(A102371(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103581

/-- `A007088(A102371(n+1))` -/
def P9200771845542336394.Spec : Prop :=
  ∀ n, P9200771845542336394.a n = A103581 (n + 1)

theorem P9200771845542336394.correct : P9200771845542336394.Spec := by
  intro n
  simp only [A103581, Nat.add_sub_cancel]

end A103581

/-! ## A103581.P12239148905704278955

`∑[A011557(n)]-A105034(n)`
-/

namespace A103581.P12239148905704278955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105034 n

end

end A103581.P12239148905704278955

namespace A103581

/-- `∑[A011557(n)]-A105034(n)` -/
def P12239148905704278955.Spec : Prop :=
  ∀ n, P12239148905704278955.a n = A103581 (n + 1)

end A103581

/-! ## A103581.P13868817687300740921

`A000042(n+1)-A105034(n)`
-/

namespace A103581.P13868817687300740921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A105034 n

end

end A103581.P13868817687300740921

namespace A103581

/-- `A000042(n+1)-A105034(n)` -/
def P13868817687300740921.Spec : Prop :=
  ∀ n, P13868817687300740921.a n = A103581 (n + 1)

end A103581

/-! ## A103581.P4340388798753843832

`A002275(n+1)-A105034(n)`
-/

namespace A103581.P4340388798753843832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A105034 n

end

end A103581.P4340388798753843832

namespace A103581

/-- `A002275(n+1)-A105034(n)` -/
def P4340388798753843832.Spec : Prop :=
  ∀ n, P4340388798753843832.a n = A103581 (n + 1)

end A103581

/-! ## A103581.P11730352055143148550

`record[A214676(n+1)]-A105034(n)`
-/

namespace A103581.P11730352055143148550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A105034 n

end

end A103581.P11730352055143148550

namespace A103581

/-- `record[A214676(n+1)]-A105034(n)` -/
def P11730352055143148550.Spec : Prop :=
  ∀ n, P11730352055143148550.a n = A103581 (n + 1)

end A103581

/-!
# A103582: Binary array below read by downward antidiagonals.

The programs for A103582, the canonical program `A103582.P4261337120135871916` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103582 has offset 0).

The definition of A103582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103582.P7764669129151453287

`log2(gcd(2, A180969(n)))`
-/

namespace A103582.P7764669129151453287
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A180969 n) : ℝ)

end

end A103582.P7764669129151453287

namespace A103582

/-- `log2(gcd(2, A180969(n)))` -/
def P7764669129151453287.Spec : Prop :=
  ∀ n, P7764669129151453287.a n = (A103582 n : ℝ)

end A103582

/-! ## A103582.P12616597521305761489

`A103583(∑[2*n]%comp[∑[n]])`
-/

namespace A103582.P12616597521305761489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103583 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A103582.P12616597521305761489

namespace A103582

/-- `A103583(∑[2*n]%comp[∑[n]])` -/
def P12616597521305761489.Spec : Prop :=
  ∀ n, P12616597521305761489.a n = A103582 n

end A103582

/-! ## A103582.P4312179262354999800

`A103583(∑[char[∑[n]]]²-n-1)`
-/

namespace A103582.P4312179262354999800
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103583 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A103582.P4312179262354999800

namespace A103582

/-- `A103583(∑[char[∑[n]]]²-n-1)` -/
def P4312179262354999800.Spec : Prop :=
  ∀ n, P4312179262354999800.a n = A103582 n

end A103582

/-! ## A103582.P4261337120135871916

`(A180969(floor((2*n+1)/2))+1)%2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103582

/-- `(A180969(floor((2*n+1)/2))+1)%2` -/
def P4261337120135871916.Spec : Prop :=
  ∀ n, P4261337120135871916.a n = A103582 n

theorem P4261337120135871916.correct : P4261337120135871916.Spec := by
  intro n
  simp only [A103582]

end A103582

/-! ## A103582.P13231746792390316583

`A059841(A180969(n))`
-/

namespace A103582.P13231746792390316583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A180969 n).toNat

end

end A103582.P13231746792390316583

namespace A103582

/-- `A059841(A180969(n))` -/
def P13231746792390316583.Spec : Prop :=
  ∀ n, P13231746792390316583.a n = A103582 n

end A103582

/-! ## A103582.P8572250970265781412

`A000035(A180969(n)+1)`
-/

namespace A103582.P8572250970265781412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A180969 n + 1).toNat

end

end A103582.P8572250970265781412

namespace A103582

/-- `A000035(A180969(n)+1)` -/
def P8572250970265781412.Spec : Prop :=
  ∀ n, P8572250970265781412.a n = A103582 n

end A103582

/-! ## A103582.P13764448162166527017

`A112345(2*A180969(n))`
-/

namespace A103582.P13764448162166527017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112345 (2 * A180969 n).toNat

end

end A103582.P13764448162166527017

namespace A103582

/-- `A112345(2*A180969(n))` -/
def P13764448162166527017.Spec : Prop :=
  ∀ n, P13764448162166527017.a n = A103582 n

end A103582

/-! ## A103582.P1902101181388314373

`A133872(2*A180969(n))`
-/

namespace A103582.P1902101181388314373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (2 * A180969 n).toNat

end

end A103582.P1902101181388314373

namespace A103582

/-- `A133872(2*A180969(n))` -/
def P1902101181388314373.Spec : Prop :=
  ∀ n, P1902101181388314373.a n = A103582 n

end A103582

/-! ## A103582.P11281327140340076947

`A000035(xor(1, A180969(n)))`
-/

namespace A103582.P11281327140340076947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor 1 (A180969 n)).toNat

end

end A103582.P11281327140340076947

namespace A103582

/-- `A000035(xor(1, A180969(n)))` -/
def P11281327140340076947.Spec : Prop :=
  ∀ n, P11281327140340076947.a n = A103582 n

end A103582

/-! ## A103582.P15732618022977286586

`A008683(or(62, A180969(n)))`
-/

namespace A103582.P15732618022977286586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor 62 (A180969 n)).toNat

end

end A103582.P15732618022977286586

namespace A103582

/-- `A008683(or(62, A180969(n)))` -/
def P15732618022977286586.Spec : Prop :=
  ∀ n, P15732618022977286586.a n = A103582 n

end A103582

/-! ## A103582.P11506028776407677626

`A007877((A180969(n)+1)²)`
-/

namespace A103582.P11506028776407677626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 ((A180969 n + 1) ^ 2).toNat

end

end A103582.P11506028776407677626

namespace A103582

/-- `A007877((A180969(n)+1)²)` -/
def P11506028776407677626.Spec : Prop :=
  ∀ n, P11506028776407677626.a n = A103582 n

end A103582

/-! ## A103582.P16455460273140809899

`A010873((A180969(n)+1)²)`
-/

namespace A103582.P16455460273140809899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((A180969 n + 1) ^ 2).toNat

end

end A103582.P16455460273140809899

namespace A103582

/-- `A010873((A180969(n)+1)²)` -/
def P16455460273140809899.Spec : Prop :=
  ∀ n, P16455460273140809899.a n = A103582 n

end A103582

/-! ## A103582.P13651877903478408518

`A101455((A180969(n)+1)²)`
-/

namespace A103582.P13651877903478408518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 ((A180969 n + 1) ^ 2).toNat

end

end A103582.P13651877903478408518

namespace A103582

/-- `A101455((A180969(n)+1)²)` -/
def P13651877903478408518.Spec : Prop :=
  ∀ n, P13651877903478408518.a n = A103582 n

end A103582

/-! ## A103582.P5327193040430043824

`A133872(A180969(n)²+1)`
-/

namespace A103582.P5327193040430043824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A180969 n ^ 2 + 1).toNat

end

end A103582.P5327193040430043824

namespace A103582

/-- `A133872(A180969(n)²+1)` -/
def P5327193040430043824.Spec : Prop :=
  ∀ n, P5327193040430043824.a n = A103582 n

end A103582

/-! ## A103582.P17475537790630450960

`A000035((1-A180969(n))²)`
-/

namespace A103582.P17475537790630450960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((1 - A180969 n) ^ 2).toNat

end

end A103582.P17475537790630450960

namespace A103582

/-- `A000035((1-A180969(n))²)` -/
def P17475537790630450960.Spec : Prop :=
  ∀ n, P17475537790630450960.a n = A103582 n

end A103582

/-! ## A103582.P11341249805982077751

`A007877((1-A180969(n))²)`
-/

namespace A103582.P11341249805982077751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 ((1 - A180969 n) ^ 2).toNat

end

end A103582.P11341249805982077751

namespace A103582

/-- `A007877((1-A180969(n))²)` -/
def P11341249805982077751.Spec : Prop :=
  ∀ n, P11341249805982077751.a n = A103582 n

end A103582

/-! ## A103582.P888357544660729478

`A010873((1-A180969(n))²)`
-/

namespace A103582.P888357544660729478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((1 - A180969 n) ^ 2).toNat

end

end A103582.P888357544660729478

namespace A103582

/-- `A010873((1-A180969(n))²)` -/
def P888357544660729478.Spec : Prop :=
  ∀ n, P888357544660729478.a n = A103582 n

end A103582

/-! ## A103582.P12203317506200161907

`A101455((1-A180969(n))²)`
-/

namespace A103582.P12203317506200161907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 ((1 - A180969 n) ^ 2).toNat

end

end A103582.P12203317506200161907

namespace A103582

/-- `A101455((1-A180969(n))²)` -/
def P12203317506200161907.Spec : Prop :=
  ∀ n, P12203317506200161907.a n = A103582 n

end A103582

/-! ## A103582.P7440029385083013547

`A020639(A180969(n)+1)%2`
-/

namespace A103582.P7440029385083013547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A180969 n + 1).toNat) 2

end

end A103582.P7440029385083013547

namespace A103582

/-- `A020639(A180969(n)+1)%2` -/
def P7440029385083013547.Spec : Prop :=
  ∀ n, P7440029385083013547.a n = A103582 n

end A103582

/-! ## A103582.P7062276951499597530

`val(A020639(A180969(n)+2), 2)`
-/

namespace A103582.P7062276951499597530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A180969 n + 2).toNat).toNat 2

end

end A103582.P7062276951499597530

namespace A103582

/-- `val(A020639(A180969(n)+2), 2)` -/
def P7062276951499597530.Spec : Prop :=
  ∀ n, (P7062276951499597530.a n : ℤ) = A103582 n

end A103582

/-!
# A103583: Same as A103582, but read antidiagonals in upward direction.

The programs for A103583, the canonical program `A103583.P14747149407642762519` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103583 has offset 0).

The definition of A103583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103583.P17014892115895682640

`A000007(and(2*(n-C(∑[char[∑[n]]], 2))+1, 2^(C(comp[∑[n]]-n, 2)-n)))`
-/

namespace A103583.P17014892115895682640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)))).toNat

end

end A103583.P17014892115895682640

namespace A103583

/-- `A000007(and(2*(n-C(∑[char[∑[n]]], 2))+1, 2^(C(comp[∑[n]]-n, 2)-n)))` -/
def P17014892115895682640.Spec : Prop :=
  ∀ n, P17014892115895682640.a n = A103583 n

end A103583

/-! ## A103583.P6484092407602179293

`A010054(and(2*(n-C(∑[char[∑[n]]], 2))+1, 2^(C(comp[∑[n]]-n, 2)-n)))`
-/

namespace A103583.P6484092407602179293
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.land (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)))).toNat

end

end A103583.P6484092407602179293

namespace A103583

/-- `A010054(and(2*(n-C(∑[char[∑[n]]], 2))+1, 2^(C(comp[∑[n]]-n, 2)-n)))` -/
def P6484092407602179293.Spec : Prop :=
  ∀ n, P6484092407602179293.a n = A103583 n

end A103583

/-! ## A103583.P3265238961109279507

`(A180969(A061579(n))+1)%2`
-/

namespace A103583.P3265238961109279507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180969 (A061579 n).toNat + 1) 2

end

end A103583.P3265238961109279507

namespace A103583

/-- `(A180969(A061579(n))+1)%2` -/
def P3265238961109279507.Spec : Prop :=
  ∀ n, P3265238961109279507.a n = A103583 n

end A103583

/-! ## A103583.P5803936399085820697

`char[eq[0, and(A002262(n), A130321(n))]]`
-/

namespace A103583.P5803936399085820697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A130321 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A103583.P5803936399085820697

namespace A103583

/-- `char[eq[0, and(A002262(n), A130321(n))]]` -/
def P5803936399085820697.Spec : Prop :=
  ∀ n, (P5803936399085820697.a n : ℤ) = A103583 n

end A103583

/-! ## A103583.P394639800324163008

`floor(γ^and(A003986(n), A130321(n)))`
-/

namespace A103583.P394639800324163008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant ^ (Int.land (A003986 n) (A130321 n) : ℤ)⌋

end

end A103583.P394639800324163008

namespace A103583

/-- `floor(γ^and(A003986(n), A130321(n)))` -/
def P394639800324163008.Spec : Prop :=
  ∀ n, P394639800324163008.a n = A103583 n

end A103583

/-! ## A103583.P15525688329290991467

`char[and(A002262(n), A057728(n+1))+n]`
-/

namespace A103583.P15525688329290991467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A057728 (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103583.P15525688329290991467

namespace A103583

/-- `char[and(A002262(n), A057728(n+1))+n]` -/
def P15525688329290991467.Spec : Prop :=
  ∀ n, (P15525688329290991467.a n : ℤ) = A103583 n

end A103583

/-! ## A103583.P16373948509876757329

`char[and(2^A025581(n), A002262(n))+n]`
-/

namespace A103583.P16373948509876757329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))) (A002262 n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A103583.P16373948509876757329

namespace A103583

/-- `char[and(2^A025581(n), A002262(n))+n]` -/
def P16373948509876757329.Spec : Prop :=
  ∀ n, (P16373948509876757329.a n : ℤ) = A103583 n

end A103583

/-! ## A103583.P16198202515805989815

`A000007(and(A002262(n), A130321(n)))`
-/

namespace A103583.P16198202515805989815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A002262 n) (A130321 n)).toNat

end

end A103583.P16198202515805989815

namespace A103583

/-- `A000007(and(A002262(n), A130321(n)))` -/
def P16198202515805989815.Spec : Prop :=
  ∀ n, P16198202515805989815.a n = A103583 n

end A103583

/-! ## A103583.P2663113402976774954

`A001343(and(A002262(n), A130321(n)))`
-/

namespace A103583.P2663113402976774954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (Int.land (A002262 n) (A130321 n)).toNat

end

end A103583.P2663113402976774954

namespace A103583

/-- `A001343(and(A002262(n), A130321(n)))` -/
def P2663113402976774954.Spec : Prop :=
  ∀ n, P2663113402976774954.a n = A103583 n

end A103583

/-! ## A103583.P8566824239688805734

`A000007(and(A003986(n), A130321(n)))`
-/

namespace A103583.P8566824239688805734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A003986 n) (A130321 n)).toNat

end

end A103583.P8566824239688805734

namespace A103583

/-- `A000007(and(A003986(n), A130321(n)))` -/
def P8566824239688805734.Spec : Prop :=
  ∀ n, P8566824239688805734.a n = A103583 n

end A103583

/-! ## A103583.P14747149407642762519

`A000007(and(A002262(n), A057728(n+1)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103583

/-- `A000007(and(A002262(n), A057728(n+1)))` -/
def P14747149407642762519.Spec : Prop :=
  ∀ n, P14747149407642762519.a n = A103583 n

theorem P14747149407642762519.correct : P14747149407642762519.Spec := by
  intro n
  simp only [A103583]

end A103583

/-! ## A103583.P6903825166285376760

`A010893(and(A002262(n), A057728(n+1)))`
-/

namespace A103583.P6903825166285376760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((Int.land (A002262 n) (A057728 (n + 1))).toNat + 13)

end

end A103583.P6903825166285376760

namespace A103583

/-- `A010893(and(A002262(n), A057728(n+1)))` -/
def P6903825166285376760.Spec : Prop :=
  ∀ n, P6903825166285376760.a n = A103583 n

end A103583

/-! ## A103583.P7582629540231483132

`A015899(and(A002262(n), A057728(n+1)))`
-/

namespace A103583.P7582629540231483132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (Int.land (A002262 n) (A057728 (n + 1))).toNat

end

end A103583.P7582629540231483132

namespace A103583

/-- `A015899(and(A002262(n), A057728(n+1)))` -/
def P7582629540231483132.Spec : Prop :=
  ∀ n, P7582629540231483132.a n = A103583 n

end A103583

/-! ## A103583.P10555078357518758210

`1-A000120(and(A002262(n), A130321(n)))`
-/

namespace A103583.P10555078357518758210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000120 (Int.land (A002262 n) (A130321 n)).toNat

end

end A103583.P10555078357518758210

namespace A103583

/-- `1-A000120(and(A002262(n), A130321(n)))` -/
def P10555078357518758210.Spec : Prop :=
  ∀ n, P10555078357518758210.a n = A103583 n

end A103583

/-! ## A103583.P6423167357988635505

`A000038(and(A002262(n), A130321(n)))/2`
-/

namespace A103583.P6423167357988635505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (Int.land (A002262 n) (A130321 n)).toNat : ℚ) / 2

end

end A103583.P6423167357988635505

namespace A103583

/-- `A000038(and(A002262(n), A130321(n)))/2` -/
def P6423167357988635505.Spec : Prop :=
  ∀ n, P6423167357988635505.a n = (A103583 n : ℚ)

end A103583

/-! ## A103583.P10031400623605486786

`A000122(3*and(A002262(n), A130321(n)))`
-/

namespace A103583.P10031400623605486786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * Int.land (A002262 n) (A130321 n)).toNat

end

end A103583.P10031400623605486786

namespace A103583

/-- `A000122(3*and(A002262(n), A130321(n)))` -/
def P10031400623605486786.Spec : Prop :=
  ∀ n, P10031400623605486786.a n = A103583 n

end A103583

/-! ## A103583.P5369191355506865088

`A000007(and(2^A025581(n), A002262(n)))`
-/

namespace A103583.P5369191355506865088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))) (A002262 n)).toNat

end

end A103583.P5369191355506865088

namespace A103583

/-- `A000007(and(2^A025581(n), A002262(n)))` -/
def P5369191355506865088.Spec : Prop :=
  ∀ n, P5369191355506865088.a n = A103583 n

end A103583

/-! ## A103583.P4636914907652965192

`A000035(2^and(A002262(n), A130321(n)))`
-/

namespace A103583.P4636914907652965192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.land (A002262 n) (A130321 n) : ℤ))).toNat

end

end A103583.P4636914907652965192

namespace A103583

/-- `A000035(2^and(A002262(n), A130321(n)))` -/
def P4636914907652965192.Spec : Prop :=
  ∀ n, P4636914907652965192.a n = A103583 n

end A103583

/-! ## A103583.P2201986912023712601

`A000038(n)^and(A002262(n), A130321(n))`
-/

namespace A103583.P2201986912023712601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (Int.land (A002262 n) (A130321 n) : ℤ)

end

end A103583.P2201986912023712601

namespace A103583

/-- `A000038(n)^and(A002262(n), A130321(n))` -/
def P2201986912023712601.Spec : Prop :=
  ∀ n, P2201986912023712601.a n = (A103583 n : ℚ)

end A103583

/-! ## A103583.P12151368740908716076

`A008683(6*2^and(A002262(n), A130321(n)))`
-/

namespace A103583.P12151368740908716076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (6 * (2 : ℚ) ^ (Int.land (A002262 n) (A130321 n) : ℤ))).toNat

end

end A103583.P12151368740908716076

namespace A103583

/-- `A008683(6*2^and(A002262(n), A130321(n)))` -/
def P12151368740908716076.Spec : Prop :=
  ∀ n, P12151368740908716076.a n = A103583 n

end A103583

/-!
# A103584: Numbers in A103543 not congruent to 3 mod 4.

The programs for A103584, there is no canonical definition to state claims against.
-/

/-! ## A103584.P7986268037930584306

`∑[A001221(A237557(n+1))+61]`
-/

namespace A103584.P7986268037930584306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A237557 (n + 1)).toNat + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103584.P7986268037930584306

/-! ## A103584.P2115537481525024214

`64*n+63-A054977(A008885(n))`
-/

namespace A103584.P2115537481525024214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n + 63 : ℤ) - A054977 (A008885 n).toNat

end

end A103584.P2115537481525024214

/-! ## A103584.P8304868222499704144

`A044631(n+1)-A288120(A068550(n))`
-/

namespace A103584.P8304868222499704144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044631 (n + 1) - A288120 (A068550 n).toNat

end

end A103584.P8304868222499704144

/-! ## A103584.P8492941048757035252

`xor(A044631(n+1), A054977(A008885(n)))`
-/

namespace A103584.P8492941048757035252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A044631 (n + 1)) (A054977 (A008885 n).toNat)

end

end A103584.P8492941048757035252

/-! ## A103584.P7639683776965248835

`A016825(A125169(n))-A025456(A126683(n))`
-/

namespace A103584.P7639683776965248835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A125169 n).toNat - A025456 (A126683 n).toNat

end

end A103584.P7639683776965248835

/-!
# A103585: Consider numbers k such that (A102370(k)-k)/2 = 1; read them mod 4 to get the sequence.

The programs for A103585, there is no canonical definition to state claims against.
-/

/-! ## A103585.P13453369232925009821

`eq[1, A103185(n)]%4`
-/

namespace A103585.P13453369232925009821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 4

end

end A103585.P13453369232925009821

/-! ## A103585.P7437082881565295348

`A010873(eq[2, A102370(n)-n])`
-/

namespace A103585.P7437082881565295348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103585.P7437082881565295348

/-! ## A103585.P17698516187579834738

`A359567(n+1)%4`
-/

namespace A103585.P17698516187579834738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359567 (n + 1)) 4

end

end A103585.P17698516187579834738

/-! ## A103585.P15155251339294433562

`A003324(A359567(n+1))`
-/

namespace A103585.P15155251339294433562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A359567 (n + 1)).toNat

end

end A103585.P15155251339294433562

/-! ## A103585.P8608123966244064066

`and(A088578(n), A359567(n+1))`
-/

namespace A103585.P8608123966244064066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A359567 (n + 1))

end

end A103585.P8608123966244064066

/-! ## A103585.P6715589114686951450

`and(A092841(n), A359567(n+1))`
-/

namespace A103585.P6715589114686951450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092841 n) (A359567 (n + 1))

end

end A103585.P6715589114686951450

/-! ## A103585.P5645705438022534624

`and(A122553(n), A359567(n+1))`
-/

namespace A103585.P5645705438022534624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A359567 (n + 1))

end

end A103585.P5645705438022534624

/-! ## A103585.P4545927671010409719

`and(A188161(n), A359567(n+1))`
-/

namespace A103585.P4545927671010409719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188161 n) (A359567 (n + 1))

end

end A103585.P4545927671010409719

/-! ## A103585.P3549546191260899756

`and(A339771(n), A359567(n+1))`
-/

namespace A103585.P3549546191260899756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A339771 n) (A359567 (n + 1))

end

end A103585.P3549546191260899756

/-! ## A103585.P449417477079152628

`and(A127509(n+1), A359567(n+1))`
-/

namespace A103585.P449417477079152628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127509 (n + 1)) (A359567 (n + 1))

end

end A103585.P449417477079152628

/-!
# A103586: a(0)=1, for n > 0: n-th run consists of 2^n-1 copies of n+1.

The programs for A103586, the canonical program `A103586.P4367310415255004496` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103586 has offset 0).

The definition of A103586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103586.P4367310415255004496

`A070939(n+A070939(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103586

/-- `A070939(n+A070939(n))` -/
def P4367310415255004496.Spec : Prop :=
  ∀ n, P4367310415255004496.a n = A103586 n

theorem P4367310415255004496.correct : P4367310415255004496.Spec := by
  intro n
  simp only [A103586]

end A103586

/-! ## A103586.P6487541505870673047

`ceil(log2(∑[root(4, n+2)]))`
-/

namespace A103586.P6487541505870673047
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (1 / (n + 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A103586.P6487541505870673047

namespace A103586

/-- `ceil(log2(∑[root(4, n+2)]))` -/
def P6487541505870673047.Spec : Prop :=
  ∀ n, P6487541505870673047.a n = A103586 n

end A103586

/-! ## A103586.P5578477076837348143

`comp[and(n, 1-n)]-n`
-/

namespace A103586.P5578477076837348143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A103586.P5578477076837348143

namespace A103586

/-- `comp[and(n, 1-n)]-n` -/
def P5578477076837348143.Spec : Prop :=
  ∀ n, P5578477076837348143.a n = A103586 n

end A103586

/-! ## A103586.P11734535636957449471

`lt[0, and(n, n-2)]-n`
-/

namespace A103586.P11734535636957449471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A103586.P11734535636957449471

namespace A103586

/-- `lt[0, and(n, n-2)]-n` -/
def P11734535636957449471.Spec : Prop :=
  ∀ n, P11734535636957449471.a n = A103586 n

end A103586

/-! ## A103586.P17125379343794333798

`comp[2^n]%(n+1)+1`
-/

namespace A103586.P17125379343794333798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1) + 1

end

end A103586.P17125379343794333798

namespace A103586

/-- `comp[2^n]%(n+1)+1` -/
def P17125379343794333798.Spec : Prop :=
  ∀ n, (P17125379343794333798.a n : ℤ) = A103586 n

end A103586

/-! ## A103586.P5638519004451521825

`comp[xor(n, n+1)]+1-n`
-/

namespace A103586.P5638519004451521825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (1 - (n : ℤ))

end

end A103586.P5638519004451521825

namespace A103586

/-- `comp[xor(n, n+1)]+1-n` -/
def P5638519004451521825.Spec : Prop :=
  ∀ n, P5638519004451521825.a n = A103586 n

end A103586

/-! ## A103586.P15708756899960582208

`comp[2*a(n-1)]-n` with `a(0)=0, a(1)=2`
-/

namespace A103586.P15708756899960582208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A103586.P15708756899960582208

namespace A103586

/-- `comp[2*a(n-1)]-n` -/
def P15708756899960582208.Spec : Prop :=
  ∀ n, P15708756899960582208.a n = A103586 n

end A103586

/-! ## A103586.P10225804832429919775

`floor(log2(2*(a(n-1)+n)))` with `a(0)=1`
-/

namespace A103586.P10225804832429919775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.log 2 (2 * (a (n - 1) + n))

end

end A103586.P10225804832429919775

namespace A103586

/-- `floor(log2(2*(a(n-1)+n)))` -/
def P10225804832429919775.Spec : Prop :=
  ∀ n, (P10225804832429919775.a n : ℤ) = A103586 n

end A103586

/-! ## A103586.P6823376293467299403

`lt[xor(n, n+1), n+2]-(n-1)`
-/

namespace A103586.P6823376293467299403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - ((n : ℤ) - 1)

end

end A103586.P6823376293467299403

namespace A103586

/-- `lt[xor(n, n+1), n+2]-(n-1)` -/
def P6823376293467299403.Spec : Prop :=
  ∀ n, P6823376293467299403.a n = A103586 n

end A103586

/-! ## A103586.P1220001998376535470

`lt[or(n+1, n-1), 2*n]-(n-1)`
-/

namespace A103586.P1220001998376535470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - ((n : ℤ) - 1)

end

end A103586.P1220001998376535470

namespace A103586

/-- `lt[or(n+1, n-1), 2*n]-(n-1)` -/
def P1220001998376535470.Spec : Prop :=
  ∀ n, P1220001998376535470.a n = A103586 n

end A103586

/-! ## A103586.P9666114955085506873

`a(floor((n-a(n-1))/2)+1)+1` with `a(0)=1, a(1)=2`
-/

namespace A103586.P9666114955085506873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (⌊((n : ℤ) - (a (n - 1) : ℤ) : ℚ) / 2⌋ + 1).toNat + 1

end

end A103586.P9666114955085506873

namespace A103586

/-- `a(floor((n-a(n-1))/2)+1)+1` -/
def P9666114955085506873.Spec : Prop :=
  ∀ n, (P9666114955085506873.a n : ℤ) = A103586 n

end A103586

/-! ## A103586.P9505160250265153119

`eq[0, C(and(n+1, 2*n), n+1)]-(n-1)`
-/

namespace A103586.P9505160250265153119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - ((n : ℤ) - 1)

end

end A103586.P9505160250265153119

namespace A103586

/-- `eq[0, C(and(n+1, 2*n), n+1)]-(n-1)` -/
def P9505160250265153119.Spec : Prop :=
  ∀ n, P9505160250265153119.a n = A103586 n

end A103586

/-! ## A103586.P6660722655059939560

`comp[A137206(n)]-n`
-/

namespace A103586.P6660722655059939560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A103586.P6660722655059939560

namespace A103586

/-- `comp[A137206(n)]-n` -/
def P6660722655059939560.Spec : Prop :=
  ∀ n, P6660722655059939560.a n = A103586 n

end A103586

/-! ## A103586.P1674247772847567297

`comp[A155559(n)]-n`
-/

namespace A103586.P1674247772847567297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A103586.P1674247772847567297

namespace A103586

/-- `comp[A155559(n)]-n` -/
def P1674247772847567297.Spec : Prop :=
  ∀ n, P1674247772847567297.a n = A103586 n

end A103586

/-! ## A103586.P7185940095581572669

`a(A234016(n))+1` with `a(0)=1`
-/

namespace A103586.P7185940095581572669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A234016 n).toNat + 1

end

end A103586.P7185940095581572669

namespace A103586

/-- `a(A234016(n))+1` -/
def P7185940095581572669.Spec : Prop :=
  ∀ n, (P7185940095581572669.a n : ℤ) = A103586 n

end A103586

/-! ## A103586.P7768120297109060633

`A138591(n+1)-n`
-/

namespace A103586.P7768120297109060633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1) - (n : ℤ)

end

end A103586.P7768120297109060633

namespace A103586

/-- `A138591(n+1)-n` -/
def P7768120297109060633.Spec : Prop :=
  ∀ n, P7768120297109060633.a n = A103586 n

end A103586

/-! ## A103586.P11660055081163325610

`floor(log2(A007843(n)))+1`
-/

namespace A103586.P11660055081163325610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A007843 n).toNat + 1

end

end A103586.P11660055081163325610

namespace A103586

/-- `floor(log2(A007843(n)))+1` -/
def P11660055081163325610.Spec : Prop :=
  ∀ n, (P11660055081163325610.a n : ℤ) = A103586 n

end A103586

/-! ## A103586.P14688559128353244857

`lt[2, A209639(n)]-n`
-/

namespace A103586.P14688559128353244857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A103586.P14688559128353244857

namespace A103586

/-- `lt[2, A209639(n)]-n` -/
def P14688559128353244857.Spec : Prop :=
  ∀ n, P14688559128353244857.a n = A103586 n

end A103586

/-! ## A103586.P16734633167648261475

`lt[2, A286252(n)]-n`
-/

namespace A103586.P16734633167648261475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A103586.P16734633167648261475

namespace A103586

/-- `lt[2, A286252(n)]-n` -/
def P16734633167648261475.Spec : Prop :=
  ∀ n, P16734633167648261475.a n = A103586 n

end A103586

/-! ## A103586.P13097264098054753415

`comp[A077957(n+1)]-n`
-/

namespace A103586.P13097264098054753415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A103586.P13097264098054753415

namespace A103586

/-- `comp[A077957(n+1)]-n` -/
def P13097264098054753415.Spec : Prop :=
  ∀ n, P13097264098054753415.a n = A103586 n

end A103586

/-!
# A103587: Sequence of run lengths in A103585.

The programs for A103587, there is no canonical definition to state claims against.
-/

/-! ## A103587.P8175009390513671016

`A035232(A052218(n+1))^(n%2)`
-/

namespace A103587.P8175009390513671016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A052218 (n + 1)).toNat ^ (n % 2)

end

end A103587.P8175009390513671016

/-! ## A103587.P17758512355310868692

`A165093(A124530(2*n+3)%A006519(n+3))`
-/

namespace A103587.P17758512355310868692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 (Int.tmod (A124530 (2 * n + 3)) (A006519 (n + 3))).toNat

end

end A103587.P17758512355310868692

/-! ## A103587.P536297473925998023

`gcd(n+1, A165451(A346095(n+1)))`
-/

namespace A103587.P536297473925998023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A165451 (A346095 (n + 1)).toNat)

end

end A103587.P536297473925998023

/-! ## A103587.P13014696011781831657

`gcd(A302791(2*n+5), A302797(A342410(2*n+1)))`
-/

namespace A103587.P13014696011781831657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A302791 (2 * n + 5)) (A302797 (A342410 (2 * n + 1)).toNat)

end

end A103587.P13014696011781831657

/-!
# A103588: 1's complement of A103582.

The programs for A103588, the canonical program `A103588.P7339551686273575280` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103588 has offset 0).

The definition of A103588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103588.P7339551686273575280

`1-A103582(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A103588

/-- `1-A103582(n)` -/
def P7339551686273575280.Spec : Prop :=
  ∀ n, P7339551686273575280.a n = A103588 n

theorem P7339551686273575280.correct : P7339551686273575280.Spec := by
  intro n
  simp only [A103588]

end A103588

/-! ## A103588.P15990413390124136368

`A180969(n)%2`
-/

namespace A103588.P15990413390124136368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180969 n) 2

end

end A103588.P15990413390124136368

namespace A103588

/-- `A180969(n)%2` -/
def P15990413390124136368.Spec : Prop :=
  ∀ n, P15990413390124136368.a n = A103588 n

end A103588

/-! ## A103588.P8305325568428479608

`A103589(∑[2*n]%comp[∑[n]])`
-/

namespace A103588.P8305325568428479608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103589 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A103588.P8305325568428479608

namespace A103588

/-- `A103589(∑[2*n]%comp[∑[n]])` -/
def P8305325568428479608.Spec : Prop :=
  ∀ n, P8305325568428479608.a n = A103588 n

end A103588

/-! ## A103588.P4620062177756491897

`A103589(∑[char[∑[n]]]²-n-1)`
-/

namespace A103588.P4620062177756491897
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103589 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A103588.P4620062177756491897

namespace A103588

/-- `A103589(∑[char[∑[n]]]²-n-1)` -/
def P4620062177756491897.Spec : Prop :=
  ∀ n, P4620062177756491897.a n = A103588 n

end A103588

/-! ## A103588.P16603653282965222332

`1-A103583(∑[char[∑[n]]]²-n-1)`
-/

namespace A103588.P16603653282965222332
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103583 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A103588.P16603653282965222332

namespace A103588

/-- `1-A103583(∑[char[∑[n]]]²-n-1)` -/
def P16603653282965222332.Spec : Prop :=
  ∀ n, P16603653282965222332.a n = A103588 n

end A103588

/-! ## A103588.P4404019112211529319

`A000035(A180969(n))`
-/

namespace A103588.P4404019112211529319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A180969 n).toNat

end

end A103588.P4404019112211529319

namespace A103588

/-- `A000035(A180969(n))` -/
def P4404019112211529319.Spec : Prop :=
  ∀ n, P4404019112211529319.a n = A103588 n

end A103588

/-! ## A103588.P5391690829378568821

`A007877(A180969(n)²)`
-/

namespace A103588.P5391690829378568821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A180969 n ^ 2).toNat

end

end A103588.P5391690829378568821

namespace A103588

/-- `A007877(A180969(n)²)` -/
def P5391690829378568821.Spec : Prop :=
  ∀ n, P5391690829378568821.a n = A103588 n

end A103588

/-! ## A103588.P14553358945634928487

`A010873(A180969(n)²)`
-/

namespace A103588.P14553358945634928487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A180969 n ^ 2).toNat

end

end A103588.P14553358945634928487

namespace A103588

/-- `A010873(A180969(n)²)` -/
def P14553358945634928487.Spec : Prop :=
  ∀ n, P14553358945634928487.a n = A103588 n

end A103588

/-! ## A103588.P9541956654604875398

`A101455(A180969(n)²)`
-/

namespace A103588.P9541956654604875398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A180969 n ^ 2).toNat

end

end A103588.P9541956654604875398

namespace A103588

/-- `A101455(A180969(n)²)` -/
def P9541956654604875398.Spec : Prop :=
  ∀ n, P9541956654604875398.a n = A103588 n

end A103588

/-! ## A103588.P2883709157387230767

`A059841(A180969(n)+1)`
-/

namespace A103588.P2883709157387230767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A180969 n + 1).toNat

end

end A103588.P2883709157387230767

namespace A103588

/-- `A059841(A180969(n)+1)` -/
def P2883709157387230767.Spec : Prop :=
  ∀ n, P2883709157387230767.a n = A103588 n

end A103588

/-! ## A103588.P1656097962491674176

`and(A000051(n), A180969(n))`
-/

namespace A103588.P1656097962491674176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A180969 n)

end

end A103588.P1656097962491674176

namespace A103588

/-- `and(A000051(n), A180969(n))` -/
def P1656097962491674176.Spec : Prop :=
  ∀ n, P1656097962491674176.a n = A103588 n

end A103588

/-! ## A103588.P286885264423899695

`and(A000337(n), A180969(n))`
-/

namespace A103588.P286885264423899695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A180969 n)

end

end A103588.P286885264423899695

namespace A103588

/-- `and(A000337(n), A180969(n))` -/
def P286885264423899695.Spec : Prop :=
  ∀ n, P286885264423899695.a n = A103588 n

end A103588

/-! ## A103588.P3341482457122410623

`and(A001576(n), A180969(n))`
-/

namespace A103588.P3341482457122410623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A180969 n)

end

end A103588.P3341482457122410623

namespace A103588

/-- `and(A001576(n), A180969(n))` -/
def P3341482457122410623.Spec : Prop :=
  ∀ n, P3341482457122410623.a n = A103588 n

end A103588

/-! ## A103588.P6460161944430886692

`and(A002064(n), A180969(n))`
-/

namespace A103588.P6460161944430886692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A180969 n)

end

end A103588.P6460161944430886692

namespace A103588

/-- `and(A002064(n), A180969(n))` -/
def P6460161944430886692.Spec : Prop :=
  ∀ n, P6460161944430886692.a n = A103588 n

end A103588

/-! ## A103588.P4048076241265717539

`and(A006483(n), A180969(n))`
-/

namespace A103588.P4048076241265717539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006483 n) (A180969 n)

end

end A103588.P4048076241265717539

namespace A103588

/-- `and(A006483(n), A180969(n))` -/
def P4048076241265717539.Spec : Prop :=
  ∀ n, P4048076241265717539.a n = A103588 n

end A103588

/-! ## A103588.P8854907447765654505

`and(A007664(n), A180969(n))`
-/

namespace A103588.P8854907447765654505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A180969 n)

end

end A103588.P8854907447765654505

namespace A103588

/-- `and(A007664(n), A180969(n))` -/
def P8854907447765654505.Spec : Prop :=
  ∀ n, P8854907447765654505.a n = A103588 n

end A103588

/-! ## A103588.P4588988698360850110

`and(A008349(n), A180969(n))`
-/

namespace A103588.P4588988698360850110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A180969 n)

end

end A103588.P4588988698360850110

namespace A103588

/-- `and(A008349(n), A180969(n))` -/
def P4588988698360850110.Spec : Prop :=
  ∀ n, P4588988698360850110.a n = A103588 n

end A103588

/-! ## A103588.P1173912896656932166

`and(A008362(n), A180969(n))`
-/

namespace A103588.P1173912896656932166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A180969 n)

end

end A103588.P1173912896656932166

namespace A103588

/-- `and(A008362(n), A180969(n))` -/
def P1173912896656932166.Spec : Prop :=
  ∀ n, P1173912896656932166.a n = A103588 n

end A103588

/-! ## A103588.P15464991184016739690

`and(A008417(n), A180969(n))`
-/

namespace A103588.P15464991184016739690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A180969 n)

end

end A103588.P15464991184016739690

namespace A103588

/-- `and(A008417(n), A180969(n))` -/
def P15464991184016739690.Spec : Prop :=
  ∀ n, P15464991184016739690.a n = A103588 n

end A103588

/-! ## A103588.P7564165143947942160

`and(A008514(n), A180969(n))`
-/

namespace A103588.P7564165143947942160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A180969 n)

end

end A103588.P7564165143947942160

namespace A103588

/-- `and(A008514(n), A180969(n))` -/
def P7564165143947942160.Spec : Prop :=
  ∀ n, P7564165143947942160.a n = A103588 n

end A103588

/-!
# A103589: 1's complement of A103583.

The programs for A103589, the canonical program `A103589.P9320291138281548847` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103589 has offset 0).

The definition of A103589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103589.P9320291138281548847

`1-A103583(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A103589

/-- `1-A103583(n)` -/
def P9320291138281548847.Spec : Prop :=
  ∀ n, P9320291138281548847.a n = A103589 n

theorem P9320291138281548847.correct : P9320291138281548847.Spec := by
  intro n
  simp only [A103589]

end A103589

/-! ## A103589.P6158504505411395266

`xor(1, A103583(floor(acot(n)+n)))`
-/

namespace A103589.P6158504505411395266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103583 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat)

end

end A103589.P6158504505411395266

namespace A103589

/-- `xor(1, A103583(floor(acot(n)+n)))` -/
def P6158504505411395266.Spec : Prop :=
  ∀ n, P6158504505411395266.a n = A103589 n

end A103589

/-! ## A103589.P10703779290449800680

`xor(1, A103583(xor(n, C(n, n²))))`
-/

namespace A103589.P10703779290449800680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103583 (Nat.xor n (Nat.choose n (n ^ 2))))

end

end A103589.P10703779290449800680

namespace A103589

/-- `xor(1, A103583(xor(n, C(n, n²))))` -/
def P10703779290449800680.Spec : Prop :=
  ∀ n, P10703779290449800680.a n = A103589 n

end A103589

/-! ## A103589.P9007984466813734901

`A103588(∑[2*n]%comp[∑[n]])`
-/

namespace A103589.P9007984466813734901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103588 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A103589.P9007984466813734901

namespace A103589

/-- `A103588(∑[2*n]%comp[∑[n]])` -/
def P9007984466813734901.Spec : Prop :=
  ∀ n, P9007984466813734901.a n = A103589 n

end A103589

/-! ## A103589.P7450549148098703277

`A103588(∑[char[∑[n]]]²-(n+1))`
-/

namespace A103589.P7450549148098703277
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103588 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A103589.P7450549148098703277

namespace A103589

/-- `A103588(∑[char[∑[n]]]²-(n+1))` -/
def P7450549148098703277.Spec : Prop :=
  ∀ n, P7450549148098703277.a n = A103589 n

end A103589

/-! ## A103589.P3933578327967914106

`xor(A103583(n), A361338(n))`
-/

namespace A103589.P3933578327967914106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103583 n) (A361338 n)

end

end A103589.P3933578327967914106

namespace A103589

/-- `xor(A103583(n), A361338(n))` -/
def P3933578327967914106.Spec : Prop :=
  ∀ n, P3933578327967914106.a n = A103589 n

end A103589

/-! ## A103589.P4662250104223749290

`char[eq[A000038(n), A103583(n)]]`
-/

namespace A103589.P4662250104223749290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103583 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A103589.P4662250104223749290

namespace A103589

/-- `char[eq[A000038(n), A103583(n)]]` -/
def P4662250104223749290.Spec : Prop :=
  ∀ n, (P4662250104223749290.a n : ℤ) = A103589 n

end A103589

/-! ## A103589.P9129368663058995727

`xor(1, A103583(n))^A000041(n)`
-/

namespace A103589.P9129368663058995727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A103583 n) : ℚ) ^ (A000041 n : ℤ)

end

end A103589.P9129368663058995727

namespace A103589

/-- `xor(1, A103583(n))^A000041(n)` -/
def P9129368663058995727.Spec : Prop :=
  ∀ n, P9129368663058995727.a n = (A103589 n : ℚ)

end A103589

/-! ## A103589.P380337696730817916

`xor(1, A103583(n))^A007318(n)`
-/

namespace A103589.P380337696730817916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A103583 n) : ℚ) ^ (A007318 n : ℤ)

end

end A103589.P380337696730817916

namespace A103589

/-- `xor(1, A103583(n))^A007318(n)` -/
def P380337696730817916.Spec : Prop :=
  ∀ n, P380337696730817916.a n = (A103589 n : ℚ)

end A103589

/-! ## A103589.P15493550953463841814

`xor(A007318(C(2, n)), A103583(n))`
-/

namespace A103589.P15493550953463841814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.choose 2 n)) (A103583 n)

end

end A103589.P15493550953463841814

namespace A103589

/-- `xor(A007318(C(2, n)), A103583(n))` -/
def P15493550953463841814.Spec : Prop :=
  ∀ n, P15493550953463841814.a n = A103589 n

end A103589

/-! ## A103589.P8702080095681638851

`and(1, floor(A003986(n)/A130321(n)))`
-/

namespace A103589.P8702080095681638851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(A003986 n : ℚ) / (A130321 n : ℚ)⌋

end

end A103589.P8702080095681638851

namespace A103589

/-- `and(1, floor(A003986(n)/A130321(n)))` -/
def P8702080095681638851.Spec : Prop :=
  ∀ n, P8702080095681638851.a n = A103589 n

end A103589

/-! ## A103589.P4846425833553487276

`xor(A007318(ceil(n/98)), A103583(n))`
-/

namespace A103589.P4846425833553487276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 ⌈(n : ℚ) / 98⌉.toNat) (A103583 n)

end

end A103589.P4846425833553487276

namespace A103589

/-- `xor(A007318(ceil(n/98)), A103583(n))` -/
def P4846425833553487276.Spec : Prop :=
  ∀ n, P4846425833553487276.a n = A103589 n

end A103589

/-! ## A103589.P5777311732663807214

`(A103583(n)+A000040(n+2))%2`
-/

namespace A103589.P5777311732663807214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103583 n + A000040 (n + 2)) 2

end

end A103589.P5777311732663807214

namespace A103589

/-- `(A103583(n)+A000040(n+2))%2` -/
def P5777311732663807214.Spec : Prop :=
  ∀ n, P5777311732663807214.a n = A103589 n

end A103589

/-! ## A103589.P6760122270112009957

`xor(1, A103583(n))^A000005(n+1)`
-/

namespace A103589.P6760122270112009957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A103583 n) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A103589.P6760122270112009957

namespace A103589

/-- `xor(1, A103583(n))^A000005(n+1)` -/
def P6760122270112009957.Spec : Prop :=
  ∀ n, P6760122270112009957.a n = (A103589 n : ℚ)

end A103589

/-! ## A103589.P10919348809928014978

`xor(1, A103583(n))^A000010(n+1)`
-/

namespace A103589.P10919348809928014978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A103583 n) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A103589.P10919348809928014978

namespace A103589

/-- `xor(1, A103583(n))^A000010(n+1)` -/
def P10919348809928014978.Spec : Prop :=
  ∀ n, P10919348809928014978.a n = (A103589 n : ℚ)

end A103589

/-! ## A103589.P11259241772430953298

`A000045(xor(1, A103583(n))^(n+1))`
-/

namespace A103589.P11259241772430953298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 1 (A103583 n) ^ (n + 1)).toNat

end

end A103589.P11259241772430953298

namespace A103589

/-- `A000045(xor(1, A103583(n))^(n+1))` -/
def P11259241772430953298.Spec : Prop :=
  ∀ n, P11259241772430953298.a n = A103589 n

end A103589

/-! ## A103589.P4478424225139130068

`xor(1, A103583(n))^A000040(n+1)`
-/

namespace A103589.P4478424225139130068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A103583 n) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A103589.P4478424225139130068

namespace A103589

/-- `xor(1, A103583(n))^A000040(n+1)` -/
def P4478424225139130068.Spec : Prop :=
  ∀ n, P4478424225139130068.a n = (A103589 n : ℚ)

end A103589

/-! ## A103589.P10613405849369416234

`xor(1, A103583(n))^A000203(n+1)`
-/

namespace A103589.P10613405849369416234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A103583 n) : ℚ) ^ (A000203 (n + 1) : ℤ)

end

end A103589.P10613405849369416234

namespace A103589

/-- `xor(1, A103583(n))^A000203(n+1)` -/
def P10613405849369416234.Spec : Prop :=
  ∀ n, P10613405849369416234.a n = (A103589 n : ℚ)

end A103589

/-! ## A103589.P14876286761669909661

`xor(1, A103583(n))^A006530(n+1)`
-/

namespace A103589.P14876286761669909661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A103583 n) : ℚ) ^ (A006530 (n + 1) : ℤ)

end

end A103589.P14876286761669909661

namespace A103589

/-- `xor(1, A103583(n))^A006530(n+1)` -/
def P14876286761669909661.Spec : Prop :=
  ∀ n, P14876286761669909661.a n = (A103589 n : ℚ)

end A103589

/-! ## A103589.P34204961088488808

`A000120(and(A002262(n), A130321(n)))`
-/

namespace A103589.P34204961088488808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A002262 n) (A130321 n)).toNat

end

end A103589.P34204961088488808

namespace A103589

/-- `A000120(and(A002262(n), A130321(n)))` -/
def P34204961088488808.Spec : Prop :=
  ∀ n, P34204961088488808.a n = A103589 n

end A103589

/-!
# A103591: Smallest number m such that Sum_{k=1..m} 1/prime(k) >= n/2.

The programs for A103591, there is no canonical definition to state claims against.
-/

/-! ## A103591.P10771373910923866693

`A103595(2*(n+1))`
-/

namespace A103591.P10771373910923866693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103595 (2 * (n + 1))

end

end A103591.P10771373910923866693

/-! ## A103591.P2945498728379482799

`A103599(3*(n+1))`
-/

namespace A103591.P2945498728379482799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103599 (3 * (n + 1))

end

end A103591.P2945498728379482799

/-!
# A103592: a(n) is the smallest prime p such that Sum_{primes q <= p} 1/q >= n/2.

The programs for A103592, there is no canonical definition to state claims against.
-/

/-! ## A103592.P6487897241347279421

`A103596(2*(n+1))`
-/

namespace A103592.P6487897241347279421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103596 (2 * (n + 1))

end

end A103592.P6487897241347279421

/-! ## A103592.P4798524355146864040

`A103600(3*(n+1))`
-/

namespace A103592.P4798524355146864040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 (3 * (n + 1))

end

end A103592.P4798524355146864040

/-!
# A103593: Smallest number m such that Sum_{k=1..m} 1/prime(k) >= n/3.

The programs for A103593, there is no canonical definition to state claims against.
-/

/-! ## A103593.P3902990846738058670

`A103599(2*(n+1))`
-/

namespace A103593.P3902990846738058670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103599 (2 * (n + 1))

end

end A103593.P3902990846738058670

/-! ## A103593.P15192417425249875388

`record[A103599(gcd(n, ∑[n])+1)]`
-/

namespace A103593.P15192417425249875388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103599 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103593.P15192417425249875388

/-! ## A103593.P6505684271121088579

`record[A103599(n+1)^(n%2)]`
-/

namespace A103593.P6505684271121088579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103599 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103593.P6505684271121088579

/-! ## A103593.P4641459922784514037

`record[A103599(n+2)/(-1)^n]`
-/

namespace A103593.P4641459922784514037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103599 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103593.P4641459922784514037

/-!
# A103594: Smallest prime p such that Sum_{primes q <= p} 1/q >= n/3.

The programs for A103594, there is no canonical definition to state claims against.
-/

/-! ## A103594.P14863040981467794863

`A103600(2*(n+1))`
-/

namespace A103594.P14863040981467794863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 (2 * (n + 1))

end

end A103594.P14863040981467794863

/-! ## A103594.P14379502904011729962

`record[A103600(abs(xor(n, -2)))]`
-/

namespace A103594.P14379502904011729962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103594.P14379502904011729962

/-! ## A103594.P7851226129360164433

`record[A103600(xor(1, n)+1)]`
-/

namespace A103594.P7851226129360164433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103594.P7851226129360164433

/-! ## A103594.P404024909344002687

`record[A103600(gcd(n, ∑[n])+1)]`
-/

namespace A103594.P404024909344002687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103594.P404024909344002687

/-!
# A103595: Smallest number m such that Sum_{k=1..m} 1/prime(k) >= n/4.

The programs for A103595, there is no canonical definition to state claims against.
-/

/-! ## A103595.P6507435478008129221

`A000720(A103596(n+1))`
-/

namespace A103595.P6507435478008129221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103596 (n + 1)).toNat

end

end A103595.P6507435478008129221

/-! ## A103595.P12338343394297313826

`A058933(p?[A103596(n+1)])`
-/

namespace A103595.P12338343394297313826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103595.P12338343394297313826

/-! ## A103595.P1500494573429102372

`A061395(p?[A103596(n+1)])`
-/

namespace A103595.P1500494573429102372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103595.P1500494573429102372

/-! ## A103595.P15516883084480088197

`A066328(p?[A103596(n+1)])`
-/

namespace A103595.P15516883084480088197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103595.P15516883084480088197

/-! ## A103595.P282307167905567623

`A289508(p?[A103596(n+1)])`
-/

namespace A103595.P282307167905567623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103595.P282307167905567623

/-!
# A103596: Smallest prime p such that Sum_{primes q <= p} 1/q >= n/4.

The programs for A103596, there is no canonical definition to state claims against.
-/

/-! ## A103596.P8442838978189428726

`A000040(A103595(n+1))`
-/

namespace A103596.P8442838978189428726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A103595 (n + 1)).toNat

end

end A103596.P8442838978189428726

/-! ## A103596.P2031017942601816310

`A008578(A103595(n+1)+1)`
-/

namespace A103596.P2031017942601816310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A103595 (n + 1) + 1).toNat

end

end A103596.P2031017942601816310

/-! ## A103596.P15274637191858019723

`A182986(A103595(n+1)+1)`
-/

namespace A103596.P15274637191858019723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A103595 (n + 1) + 1).toNat

end

end A103596.P15274637191858019723

/-! ## A103596.P8773104045676935569

`A109763(2*A103595(n+1))`
-/

namespace A103596.P8773104045676935569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A103595 (n + 1)).toNat

end

end A103596.P8773104045676935569

/-! ## A103596.P6045932423637537911

`∑{d}[A103595(n+1), A007444(#)]`
-/

namespace A103596.P6045932423637537911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A103596.P6045932423637537911

/-!
# A103597: Smallest number m such that Sum_{k=1..m} 1/prime(k) >= n/5.

The programs for A103597, there is no canonical definition to state claims against.
-/

/-! ## A103597.P1619074447676780051

`A000720(A103598(n+1))`
-/

namespace A103597.P1619074447676780051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103598 (n + 1)).toNat

end

end A103597.P1619074447676780051

/-! ## A103597.P13221233349801707949

`A061395(p?[A103598(n+1)])`
-/

namespace A103597.P13221233349801707949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103597.P13221233349801707949

/-! ## A103597.P5333351299235638235

`A066328(p?[A103598(n+1)])`
-/

namespace A103597.P5333351299235638235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103597.P5333351299235638235

/-! ## A103597.P17970704772627618688

`A297109(p?[A103598(n+1)])`
-/

namespace A103597.P17970704772627618688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103597.P17970704772627618688

/-! ## A103597.P9625181151387747064

`A061395(2*A103598(n+1))`
-/

namespace A103597.P9625181151387747064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A103598 (n + 1)).toNat

end

end A103597.P9625181151387747064

/-!
# A103598: Smallest prime p such that Sum_{primes q <= p} 1/q >= n/5.

The programs for A103598, there is no canonical definition to state claims against.
-/

/-! ## A103598.P5027599265176818933

`A000040(A103597(n+1))`
-/

namespace A103598.P5027599265176818933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A103597 (n + 1)).toNat

end

end A103598.P5027599265176818933

/-! ## A103598.P5603048804321652486

`A008578(A103597(n+1)+1)`
-/

namespace A103598.P5603048804321652486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A103597 (n + 1) + 1).toNat

end

end A103598.P5603048804321652486

/-! ## A103598.P11119601168133842641

`A182986(A103597(n+1)+1)`
-/

namespace A103598.P11119601168133842641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A103597 (n + 1) + 1).toNat

end

end A103598.P11119601168133842641

/-! ## A103598.P643349530482686988

`A109763(2*A103597(n+1))`
-/

namespace A103598.P643349530482686988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A103597 (n + 1)).toNat

end

end A103598.P643349530482686988

/-! ## A103598.P1213071550461086939

`∑{d}[A103597(n+1), A007444(#)]`
-/

namespace A103598.P1213071550461086939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A103598.P1213071550461086939

/-!
# A103599: Smallest number m such that Sum_{k=1..m} 1/prime(k) >= n/6.

The programs for A103599, there is no canonical definition to state claims against.
-/

/-! ## A103599.P12100151431534670565

`A000720(A103600(n+1))`
-/

namespace A103599.P12100151431534670565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103600 (n + 1)).toNat

end

end A103599.P12100151431534670565

/-! ## A103599.P4510607626591658666

`A061395(p?[A103600(n+1)])`
-/

namespace A103599.P4510607626591658666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103599.P4510607626591658666

/-! ## A103599.P5393332763225692193

`A066328(p?[A103600(n+1)])`
-/

namespace A103599.P5393332763225692193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103599.P5393332763225692193

/-! ## A103599.P16955048242584396457

`A297109(p?[A103600(n+1)])`
-/

namespace A103599.P16955048242584396457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103599.P16955048242584396457

/-! ## A103599.P3030023701403019427

`∑{d}[A103600(n+1), A061395(#)]`
-/

namespace A103599.P3030023701403019427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A103599.P3030023701403019427

