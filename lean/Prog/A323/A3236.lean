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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A323600: Dirichlet convolution of sigma with omega.

The programs for A323600, the canonical program `A323600.P1595981348906691079` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323600 has offset 1).

The definition of A323600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323600.P1595981348906691079

`∑{d}[n+1, A323599(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A323600

/-- `∑{d}[n+1, A323599(#)]` -/
def P1595981348906691079.Spec : Prop :=
  ∀ n, P1595981348906691079.a n = A323600 (n + 1)

theorem P1595981348906691079.correct : P1595981348906691079.Spec := by
  intro n
  simp only [A323600, Nat.add_sub_cancel]

end A323600

/-! ## A323600.P4983483500679039691

`∑{d}[n+1, #*A062799((n+1)/#)]`
-/

namespace A323600.P4983483500679039691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323600.P4983483500679039691

namespace A323600

/-- `∑{d}[n+1, #*A062799((n+1)/#)]` -/
def P4983483500679039691.Spec : Prop :=
  ∀ n, P4983483500679039691.a n = A323600 (n + 1)

end A323600

/-! ## A323600.P16896616946340154119

`∑{d}[n+1, A000203(#)*A001221((n+1)/#)]`
-/

namespace A323600.P16896616946340154119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323600.P16896616946340154119

namespace A323600

/-- `∑{d}[n+1, A000203(#)*A001221((n+1)/#)]` -/
def P16896616946340154119.Spec : Prop :=
  ∀ n, P16896616946340154119.a n = A323600 (n + 1)

end A323600

/-! ## A323600.P6479621989478057728

`∑{d}[n+1, A007429(#)*A010051((n+1)/#)]`
-/

namespace A323600.P6479621989478057728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323600.P6479621989478057728

namespace A323600

/-- `∑{d}[n+1, A007429(#)*A010051((n+1)/#)]` -/
def P6479621989478057728.Spec : Prop :=
  ∀ n, P6479621989478057728.a n = A323600 (n + 1)

end A323600

/-! ## A323600.P18299434482221640920

`∑{d}[n+1, A000005(#)*A069359((n+1)/#)]`
-/

namespace A323600.P18299434482221640920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323600.P18299434482221640920

namespace A323600

/-- `∑{d}[n+1, A000005(#)*A069359((n+1)/#)]` -/
def P18299434482221640920.Spec : Prop :=
  ∀ n, P18299434482221640920.a n = A323600 (n + 1)

end A323600

/-! ## A323600.P3298953303268550473

`∑{d}[n+1, A007425(#)*A117494((n+1)/#)]`
-/

namespace A323600.P3298953303268550473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323600.P3298953303268550473

namespace A323600

/-- `∑{d}[n+1, A007425(#)*A117494((n+1)/#)]` -/
def P3298953303268550473.Spec : Prop :=
  ∀ n, P3298953303268550473.a n = A323600 (n + 1)

end A323600

/-! ## A323600.P9220182141411827405

`∑{d}[n+1, A007430(#)*A143519((n+1)/#)]`
-/

namespace A323600.P9220182141411827405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323600.P9220182141411827405

namespace A323600

/-- `∑{d}[n+1, A007430(#)*A143519((n+1)/#)]` -/
def P9220182141411827405.Spec : Prop :=
  ∀ n, P9220182141411827405.a n = A323600 (n + 1)

end A323600

/-! ## A323600.P6989408173743162033

`∑{d}[n+1, A001615(#)*A345345((n+1)/#)]`
-/

namespace A323600.P6989408173743162033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A345345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323600.P6989408173743162033

namespace A323600

/-- `∑{d}[n+1, A001615(#)*A345345((n+1)/#)]` -/
def P6989408173743162033.Spec : Prop :=
  ∀ n, P6989408173743162033.a n = A323600 (n + 1)

end A323600

/-! ## A323600.P6278854786340266330

`∑{d}[n+1, A369865(#)*A383795((n+1)/#)]`
-/

namespace A323600.P6278854786340266330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369865 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323600.P6278854786340266330

namespace A323600

/-- `∑{d}[n+1, A369865(#)*A383795((n+1)/#)]` -/
def P6278854786340266330.Spec : Prop :=
  ∀ n, P6278854786340266330.a n = A323600 (n + 1)

end A323600

/-!
# A323602: Smallest b > 1 not already in the sequence such that b^(c-1) == 1 (mod c), i.e., c is a base-b Fermat pseudoprime, where c is the n-th composite number (A002808).

The programs for A323602, there is no canonical definition to state claims against.
-/

/-! ## A323602.P13049231939614855555

`xor(A002808(n+1), A337335(A297102(2*(n+2))))`
-/

namespace A323602.P13049231939614855555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002808 (n + 1)) (A337335 (A297102 (2 * (n + 2))).toNat)

end

end A323602.P13049231939614855555

/-!
# A323605: Smallest prime divisor of A000058(n) = A007018(n) + 1 (Sylvester's sequence).

The programs for A323605, there is no canonical definition to state claims against.
-/

/-! ## A323605.P13030214107657984351

`A126263(A091336(n)+1)`
-/

namespace A323605.P13030214107657984351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126263 (A091336 n + 1).toNat

end

end A323605.P13030214107657984351

/-! ## A323605.P5586026945291327040

`A126263(lt[A061312(2*n+3), A144555(n)])`
-/

namespace A323605.P5586026945291327040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061312 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126263 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323605.P5586026945291327040

/-! ## A323605.P3959863300035123330

`A126263(∑[A331562(2*n+3)])`
-/

namespace A323605.P3959863300035123330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323605.P3959863300035123330

/-!
# A323607: Triangular array: row n is the list of numbers from 1 to n, sorted in Sharkovsky order.

The programs for A323607, there is no canonical definition to state claims against.
-/

/-! ## A323607.P11055113546460643920

`A001222(5^A194959(n+2))`
-/

namespace A323607.P11055113546460643920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A194959 (n + 2) : ℤ))).toNat

end

end A323607.P11055113546460643920

/-! ## A323607.P7931377888602489309

`A000005(5^A194959(n+2))-1`
-/

namespace A323607.P7931377888602489309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A194959 (n + 2) : ℤ))).toNat - 1

end

end A323607.P7931377888602489309

/-! ## A323607.P2119941214787347080

`A194959(n+2)+A000007(A127101(n+1))`
-/

namespace A323607.P2119941214787347080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 2) + A000007 (A127101 (n + 1)).toNat

end

end A323607.P2119941214787347080

/-! ## A323607.P3951848623464250523

`A194959(n+2)+A064873(A231037(n+1))`
-/

namespace A323607.P3951848623464250523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 2) + A064873 (A231037 (n + 1)).toNat

end

end A323607.P3951848623464250523

/-! ## A323607.P6752937093382808556

`A280653(A323436(3*n+1))+A194959(n+2)`
-/

namespace A323607.P6752937093382808556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280653 (A323436 (3 * n + 1)).toNat + A194959 (n + 2)

end

end A323607.P6752937093382808556

/-!
# A323608: The position function the fractalization of which yields A323607.

The programs for A323608, there is no canonical definition to state claims against.
-/

/-! ## A323608.P11610201021765904691

`ceil(n/2)-(1-a(gcd(1-n, floor(n/2))))` with `a(0)=1`
-/

namespace A323608.P11610201021765904691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℚ) / 2⌉ - (1 - a (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋))

end

end A323608.P11610201021765904691

/-! ## A323608.P10045269231897096945

`a(floor(n*tan(79)))-1+n-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A323608.P10045269231897096945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊(n : ℝ) * Real.tan (79 : ℝ)⌋.toNat - 1 + (n : ℤ) - a (n - 1)

end

end A323608.P10045269231897096945

/-! ## A323608.P7940357871323106078

`n-1-(a(n-1)-a(floor(n*tan(79))))` with `a(0)=1, a(1)=1`
-/

namespace A323608.P7940357871323106078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - 1 - (a (n - 1) - a ⌊(n : ℝ) * Real.tan (79 : ℝ)⌋.toNat)

end

end A323608.P7940357871323106078

/-! ## A323608.P8046909097228546027

`a(floor((n-1)/2))-1+n-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A323608.P8046909097228546027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat - 1 + (n : ℤ) - a (n - 1)

end

end A323608.P8046909097228546027

/-! ## A323608.P951242257944878501

`n-1-(a(n-1)-a(floor((n-1)/2)))` with `a(0)=1, a(1)=1`
-/

namespace A323608.P951242257944878501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - 1 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A323608.P951242257944878501

/-! ## A323608.P12656152140862553243

`floor(a(A057979(n))+(n-1)/2)` with `a(0)=1`
-/

namespace A323608.P12656152140862553243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (A057979 n).toNat : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌋

end

end A323608.P12656152140862553243

/-! ## A323608.P6682008614433011564

`(n-1)%((n+1)/and(n+1, -(n+1)))+1-Δ[A233905(n)]`
-/

namespace A323608.P6682008614433011564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) + 1 - (f1 (n + 1) - f1 n)

end

end A323608.P6682008614433011564

/-! ## A323608.P14701700423610781995

`A322250(n+1)-Δ[A233905(n)]`
-/

namespace A323608.P14701700423610781995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322250 (n + 1) - (f1 (n + 1) - f1 n)

end

end A323608.P14701700423610781995

/-! ## A323608.P1093301604572565054

`A140106(n+1)+a(A057979(n))` with `a(0)=1`
-/

namespace A323608.P1093301604572565054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140106 (n + 1) + a (A057979 n).toNat

end

end A323608.P1093301604572565054

/-! ## A323608.P3383323464888829791

`∑{d}[A006519(n+1), A123108((n+1)/#-1)]`
-/

namespace A323608.P3383323464888829791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A123108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A323608.P3383323464888829791

/-!
# A323610: List of 5-powerful numbers (for the definition of k-powerful see A323395).

The programs for A323610, there is no canonical definition to state claims against.
-/

/-! ## A323610.P13868775712962836512

`a(n-1)+8` with `a(0)=48, a(1)=64`
-/

namespace A323610.P13868775712962836512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [48, 64] fun n a =>
  a (n - 1) + 8

end

end A323610.P13868775712962836512

/-!
# A323611: Prime numbers generated by the formula a(n) = round(c(n)), where c(n) = c(n-1)^(3/2) for n >= 2 starting with c(1) = C and C the real constant given below.

The programs for A323611, there is no canonical definition to state claims against.
-/

/-! ## A323611.P1906645073350399207

`A031218(floor(a(n-1)^(3/2))+1)` with `a(0)=2`
-/

namespace A323611.P1906645073350399207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A031218 (⌊(a (n - 1) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ + 1).toNat

end

end A323611.P1906645073350399207

/-! ## A323611.P5997109798313902234

`A000040(A000720(ceil(a(n-1)^(3/2))))` with `a(0)=2`
-/

namespace A323611.P5997109798313902234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 ⌈(a (n - 1) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉.toNat).toNat

end

end A323611.P5997109798313902234

/-!
# A323613: Antidiagonal sums of A323182.

The programs for A323613, there is no canonical definition to state claims against.
-/

/-! ## A323613.P15794983576937378109

`A022290(A000670(n)-floor(n/2))`
-/

namespace A323613.P15794983576937378109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A000670 n - ⌊(n : ℚ) / 2⌋).toNat

end

end A323613.P15794983576937378109

/-! ## A323613.P5852089332721260885

`A333359(A000325(n))+A180389(n)`
-/

namespace A323613.P5852089332721260885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333359 (A000325 n).toNat + A180389 n

end

end A323613.P5852089332721260885

/-! ## A323613.P16742381146602242552

`A022290(A000670(n))-A032741(n)`
-/

namespace A323613.P16742381146602242552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A000670 n).toNat - A032741 n

end

end A323613.P16742381146602242552

/-!
# A323614: List of 7-powerful numbers (for the definition of k-powerful see A323395).

The programs for A323614, there is no canonical definition to state claims against.
-/

/-! ## A323614.P2320211171642137026

`16*A136399(n+8)`
-/

namespace A323614.P2320211171642137026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A136399 (n + 8)

end

end A323614.P2320211171642137026

/-!
# A323616: a(n) is the largest prime factor of phi(2^n-1), where phi is Euler's totient.

The programs for A323616, there is no canonical definition to state claims against.
-/

/-! ## A323616.P1608518688703055889

`A006530(A006530(n+1)*A006530(A011260(n+1)))`
-/

namespace A323616.P1608518688703055889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 1) * A006530 (A011260 (n + 1)).toNat).toNat

end

end A323616.P1608518688703055889

/-! ## A323616.P17710317835906244941

`A006530(A053287(n+1)/A000174(n))`
-/

namespace A323616.P17710317835906244941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A053287 (n + 1) : ℚ) / (A000174 n : ℚ))).toNat

end

end A323616.P17710317835906244941

/-! ## A323616.P8107650315331129873

`A006530(A053287(n+1)/A110591(n))`
-/

namespace A323616.P8107650315331129873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A053287 (n + 1) : ℚ) / (A110591 n : ℚ))).toNat

end

end A323616.P8107650315331129873

/-! ## A323616.P9765521347235355990

`A006530(A053287(n+1)/A133880(n))`
-/

namespace A323616.P9765521347235355990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A053287 (n + 1) : ℚ) / (A133880 n : ℚ))).toNat

end

end A323616.P9765521347235355990

/-! ## A323616.P4805618232919828756

`A006530(A053287(n+1)/A050873(n+1))`
-/

namespace A323616.P4805618232919828756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A053287 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ))).toNat

end

end A323616.P4805618232919828756

/-!
# A323617: Primes p such that 3 is a primitive root modulo p while 243 is not.

The programs for A323617, there is no canonical definition to state claims against.
-/

/-! ## A323617.P413763596363376011

`∩[A004615(n+1), A019334(n+1)]`
-/

namespace A323617.P413763596363376011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P413763596363376011

/-! ## A323617.P9015337167764370395

`∩[A019334(n+1), A030430(n+1)]`
-/

namespace A323617.P9015337167764370395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P9015337167764370395

/-! ## A323617.P15893631002502700228

`∩[A019334(n+1), A090756(n+1)]`
-/

namespace A323617.P15893631002502700228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P15893631002502700228

/-! ## A323617.P2505419638822558981

`∩[A019334(n+1), A327752(n+1)]`
-/

namespace A323617.P2505419638822558981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P2505419638822558981

/-! ## A323617.P9522296471946129554

`∩[A019334(n+1), A040162(n+1)]`
-/

namespace A323617.P9522296471946129554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P9522296471946129554

/-! ## A323617.P17365838194898302797

`∩[A030430(n+1), A167792(n+1)]`
-/

namespace A323617.P17365838194898302797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P17365838194898302797

/-! ## A323617.P10987277868835372055

`∩[A040162(n+1), A167792(n+1)]`
-/

namespace A323617.P10987277868835372055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P10987277868835372055

/-! ## A323617.P16111802928889897297

`∩[A090756(n+1), A167792(n+1)]`
-/

namespace A323617.P16111802928889897297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P16111802928889897297

/-! ## A323617.P2585067273031587801

`∩[A019334(n+1), A331194(n+1)]`
-/

namespace A323617.P2585067273031587801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P2585067273031587801

/-! ## A323617.P11387533551433911569

`∩[A019334(n+1), A017281(n)]`
-/

namespace A323617.P11387533551433911569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P11387533551433911569

/-! ## A323617.P410325907259232305

`∩[A019334(n+1), A277588(n+1)]`
-/

namespace A323617.P410325907259232305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P410325907259232305

/-! ## A323617.P13522438066594300922

`∩[A019334(n+1), A225297(n+1)]`
-/

namespace A323617.P13522438066594300922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P13522438066594300922

/-! ## A323617.P10398417232153484252

`filter[A019334(n+1), A185705(#)]`
-/

namespace A323617.P10398417232153484252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A323617.P10398417232153484252

/-! ## A323617.P3945865275577200747

`∩[A019334(n+1), A105179(n+1)]`
-/

namespace A323617.P3945865275577200747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P3945865275577200747

/-! ## A323617.P4426630761386622846

`∩[A019334(n+1), A016861(n)]`
-/

namespace A323617.P4426630761386622846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P4426630761386622846

/-! ## A323617.P8679686840563624937

`∩[A019334(n+1), A197652(n+1)]`
-/

namespace A323617.P8679686840563624937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P8679686840563624937

/-! ## A323617.P5396683385167786710

`∩[A019334(n+1), A271508(n+1)]`
-/

namespace A323617.P5396683385167786710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P5396683385167786710

/-! ## A323617.P7983398079319885644

`∩[A019334(n+1), A306277(n+1)]`
-/

namespace A323617.P7983398079319885644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P7983398079319885644

/-! ## A323617.P1268037396660774849

`∩[A019334(n+1), A132359(n+1)]`
-/

namespace A323617.P1268037396660774849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P1268037396660774849

/-! ## A323617.P14624643798195409554

`∩[A019334(n+1), A277597(n+1)]`
-/

namespace A323617.P14624643798195409554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323617.P14624643798195409554

/-!
# A323618: Expansion of e.g.f. (1 + x)*log(1 + x)*(2 + log(1 + x))/2.

The programs for A323618, the canonical program `A323618.P12566500849528799029` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323618 has offset 0).

The definition of A323618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323618.P12566500849528799029

`(5-2*n)*a(n-1)-(n-3)²*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323618

/-- `(5-2*n)*a(n-1)-(n-3)²*a(n-2)` -/
def P12566500849528799029.Spec : Prop :=
  ∀ n, P12566500849528799029.a n = A323618 n

theorem P12566500849528799029.correct : P12566500849528799029.Spec := by
  intro n
  simp only [A323618]

end A323618

/-! ## A323618.P17358716118854275676

`A222627(n-1)-n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A323618.P17358716118854275676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A222627 (n - 1) - (n : ℤ) * a (n - 1)

end

end A323618.P17358716118854275676

namespace A323618

/-- `A222627(n-1)-n*a(n-1)` -/
def P17358716118854275676.Spec : Prop :=
  ∀ n, P17358716118854275676.a n = A323618 n

end A323618

/-!
# A323621: The order of square grid cells touched by a circle expanding from the middle of a cell read by antidiagonals.

The programs for A323621, there is no canonical definition to state claims against.
-/

/-! ## A323621.P15747547795260432434

`A157927(n+1)-A111332(n)!`
-/

namespace A323621.P15747547795260432434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157927 (n + 1) - (Nat.factorial (A111332 n).toNat : ℤ)

end

end A323621.P15747547795260432434

/-! ## A323621.P7193854346840318621

`A157927(n+1)+A033999(A157889(n+1))`
-/

namespace A323621.P7193854346840318621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157927 (n + 1) + A033999 (A157889 (n + 1)).toNat

end

end A323621.P7193854346840318621

/-! ## A323621.P9874313299359907762

`A157927(n+1)+A107393(A088415(n+1))`
-/

namespace A323621.P9874313299359907762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157927 (n + 1) + A107393 (A088415 (n + 1)).toNat

end

end A323621.P9874313299359907762

/-! ## A323621.P9760968011998686706

`A157927(n+1)-A345932(A345913(3*n+4))`
-/

namespace A323621.P9760968011998686706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157927 (n + 1) - A345932 (A345913 (3 * n + 4)).toNat

end

end A323621.P9760968011998686706

/-! ## A323621.P4536782590258278002

`A157927(n+1)-A345932(A057784(n+1))`
-/

namespace A323621.P4536782590258278002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157927 (n + 1) - A345932 (A057784 (n + 1)).toNat

end

end A323621.P4536782590258278002

/-!
# A323622: The first row of the order of square grid cells touched by a circle expanding from the middle of a cell.

The programs for A323622, there is no canonical definition to state claims against.
-/

/-! ## A323622.P12466589339830245009

`A323623(n)-1`
-/

namespace A323622.P12466589339830245009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323623 n - 1

end

end A323622.P12466589339830245009

/-! ## A323622.P1145878081725048443

`A023443(A323623(n))`
-/

namespace A323622.P1145878081725048443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A323623 n).toNat

end

end A323622.P1145878081725048443

/-! ## A323622.P15389390051257836127

`A023444(A323623(n)+1)`
-/

namespace A323622.P15389390051257836127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A323623 n + 1).toNat

end

end A323622.P15389390051257836127

/-! ## A323622.P10017580503388846412

`A289207(A323623(n)+1)`
-/

namespace A323622.P10017580503388846412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A323623 n + 1).toNat

end

end A323622.P10017580503388846412

/-! ## A323622.P16185658606496870273

`A023445(A323623(n)+2)`
-/

namespace A323622.P16185658606496870273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A323623 n + 2).toNat

end

end A323622.P16185658606496870273

/-! ## A323622.P16048640103017161026

`A023446(A323623(n)+3)`
-/

namespace A323622.P16048640103017161026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A323623 n + 3).toNat

end

end A323622.P16048640103017161026

/-! ## A323622.P12172060191723597312

`A023447(A323623(n)+4)`
-/

namespace A323622.P12172060191723597312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A323623 n + 4).toNat

end

end A323622.P12172060191723597312

/-! ## A323622.P655807053241119008

`A065423(2*A323623(n))`
-/

namespace A323622.P655807053241119008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A323623 n).toNat

end

end A323622.P655807053241119008

/-! ## A323622.P16520049637194400448

`A023444(2*A323623(n))/2`
-/

namespace A323622.P16520049637194400448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A323623 n).toNat : ℚ) / 2

end

end A323622.P16520049637194400448

/-! ## A323622.P472725019402154659

`A289207(2*A323623(n))/2`
-/

namespace A323622.P472725019402154659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * A323623 n).toNat : ℚ) / 2

end

end A323622.P472725019402154659

/-!
# A323623: The second row of the order of square grid cells touched by a circle expanding from the middle of a cell.

The programs for A323623, there is no canonical definition to state claims against.
-/

/-! ## A323623.P1465026279580849756

`A323622(n)+1`
-/

namespace A323623.P1465026279580849756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323622 n + 1

end

end A323623.P1465026279580849756

/-! ## A323623.P4055891567575142237

`A008619(2*A323622(n))`
-/

namespace A323623.P4055891567575142237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A323622 n).toNat

end

end A323623.P4055891567575142237

/-! ## A323623.P627275962317713840

`A028242(2*A323622(n))`
-/

namespace A323623.P627275962317713840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A323622 n).toNat

end

end A323623.P627275962317713840

/-! ## A323623.P4263542696670892411

`A029579(2*A323622(n))`
-/

namespace A323623.P4263542696670892411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A323622 n).toNat

end

end A323623.P4263542696670892411

/-! ## A323623.P6474126437467229051

`A052938(2*A323622(n))`
-/

namespace A323623.P6474126437467229051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A323622 n).toNat

end

end A323623.P6474126437467229051

/-! ## A323623.P6718361190907665021

`A008611(3*A323622(n))`
-/

namespace A323623.P6718361190907665021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A323622 n).toNat

end

end A323623.P6718361190907665021

/-! ## A323623.P13514865709237980174

`A008620(3*A323622(n))`
-/

namespace A323623.P13514865709237980174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A323622 n).toNat

end

end A323623.P13514865709237980174

/-! ## A323623.P17205960498493121328

`A008621(4*A323622(n))`
-/

namespace A323623.P17205960498493121328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A323622 n).toNat

end

end A323623.P17205960498493121328

/-! ## A323623.P16212243572860628115

`2-(A000041(C(n, 64))-A323622(n))`
-/

namespace A323623.P16212243572860628115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000041 (Nat.choose n 64) - A323622 n)

end

end A323623.P16212243572860628115

/-! ## A323623.P3346893668361819512

`1-(A259195(A181935(n))-A323622(n))`
-/

namespace A323623.P3346893668361819512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A259195 (A181935 n).toNat - A323622 n)

end

end A323623.P3346893668361819512

/-!
# A323624: The diagonal of the order of square grid cells touched by a circle expanding from the middle of a cell.

The programs for A323624, there is no canonical definition to state claims against.
-/

/-! ## A323624.P17200749429766216044

`∑[A051903(A049314(n))+n]`
-/

namespace A323624.P17200749429766216044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A049314 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323624.P17200749429766216044

/-! ## A323624.P2860215709436519370

`∑[n+2]-(A001221(A003126(n+1))+2)`
-/

namespace A323624.P2860215709436519370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A001221 (A003126 (n + 1)).toNat + 2)

end

end A323624.P2860215709436519370

/-! ## A323624.P17267679137754546094

`∑[n+2]-1-A001221(A186443(n+1))`
-/

namespace A323624.P17267679137754546094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A001221 (A186443 (n + 1)).toNat

end

end A323624.P17267679137754546094

/-! ## A323624.P2753827428446205810

`∑[gcd(A014591(n), A360498(n+1))+n]-1`
-/

namespace A323624.P2753827428446205810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014591 n) (A360498 (n + 1)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A323624.P2753827428446205810

/-! ## A323624.P7366910771184948135

`A056239(A214761(n))+A000217(n)`
-/

namespace A323624.P7366910771184948135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A214761 n).toNat + A000217 n

end

end A323624.P7366910771184948135

/-!
# A323625: The (2,1) diagonal of the order of square grid cells touched by a circle expanding from the middle of a cell.

The programs for A323625, there is no canonical definition to state claims against.
-/

/-! ## A323625.P1578909529010389472

`A022795(n+1)-A241915(A230951(n))`
-/

namespace A323625.P1578909529010389472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022795 (n + 1) - A241915 (A230951 n).toNat

end

end A323625.P1578909529010389472

/-!
# A323628: Primes p such that 3 is a primitive root modulo p while 2187 is not.

The programs for A323628, there is no canonical definition to state claims against.
-/

/-! ## A323628.P12165850299315118991

`∩[A004619(n+1), A019334(n+1)]`
-/

namespace A323628.P12165850299315118991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323628.P12165850299315118991

/-! ## A323628.P439676342185017665

`∩[A019334(n+1), A140444(n+1)]`
-/

namespace A323628.P439676342185017665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323628.P439676342185017665

/-! ## A323628.P5931008500758868200

`∩[A019334(n+1), A042969(n+1)]`
-/

namespace A323628.P5931008500758868200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323628.P5931008500758868200

/-! ## A323628.P18055861990945827351

`∩[A042969(n+1), A167792(n+1)]`
-/

namespace A323628.P18055861990945827351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323628.P18055861990945827351

/-! ## A323628.P17360029039722267411

`∩[A140444(n+1), A167792(n+1)]`
-/

namespace A323628.P17360029039722267411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323628.P17360029039722267411

/-! ## A323628.P625137287745471993

`∩[A019334(n+1), A131877(n)]`
-/

namespace A323628.P625137287745471993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323628.P625137287745471993

/-! ## A323628.P14699900653937849970

`∩[A019334(n+1), A016993(n)]`
-/

namespace A323628.P14699900653937849970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323628.P14699900653937849970

/-! ## A323628.P10688227388469898098

`∩[A019334(n+1), A066502(n+1)]`
-/

namespace A323628.P10688227388469898098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323628.P10688227388469898098

/-!
# A323629: List of 6-powerful numbers (for the definition of k-powerful see A323395).

The programs for A323629, there is no canonical definition to state claims against.
-/

/-! ## A323629.P6392808245261303180

`8*lt[(n-1)^(n%2), A325589(A325590(n+5))]`
-/

namespace A323629.P6392808245261303180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325589 (A325590 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A323629.P6392808245261303180

/-!
# A323630: Expansion of e.g.f. exp(log(1 - x)^2/2)/(1 - x). This is also the transform of the involution numbers given by the signless Stirling cycle numbers.

The programs for A323630, there is no canonical definition to state claims against.
-/

/-! ## A323630.P14167174824616841047

`A347001(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A323630.P14167174824616841047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347001 n + (n : ℤ) * a (n - 1)

end

end A323630.P14167174824616841047

/-! ## A323630.P15373682713850348821

`A003307(A143592(2*(n+1)))%A078562(3*n+1)`
-/

namespace A323630.P15373682713850348821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003307 (A143592 (2 * (n + 1))).toNat) (A078562 (3 * n + 1))

end

end A323630.P15373682713850348821

/-!
# A323631: Stirling transform of Pell numbers (A000129).

The programs for A323631, there is no canonical definition to state claims against.
-/

/-! ## A323631.P11585454032064389287

`A063953(A377118(n))`
-/

namespace A323631.P11585454032064389287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063953 (A377118 n).toNat

end

end A323631.P11585454032064389287

/-! ## A323631.P17472694343489961682

`A182182(A116559(n²))`
-/

namespace A323631.P17472694343489961682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (A116559 (n ^ 2)).toNat

end

end A323631.P17472694343489961682

/-!
# A323632: Stirling transform of Jacobsthal numbers (A001045).

The programs for A323632, there is no canonical definition to state claims against.
-/

/-! ## A323632.P2960634937129756671

`(A001861(n)-A000587(n))/3`
-/

namespace A323632.P2960634937129756671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n - A000587 n : ℚ) / 3

end

end A323632.P2960634937129756671

/-! ## A323632.P7467536128498313044

`(A001861(n)-(2*A024430(n)-A000110(n)))/3`
-/

namespace A323632.P7467536128498313044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n - (2 * A024430 n - A000110 n) : ℚ) / 3

end

end A323632.P7467536128498313044

/-! ## A323632.P9965024047890810199

`(A001861(n)-(A000110(n)-2*A024429(n)))/3`
-/

namespace A323632.P9965024047890810199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 n - (A000110 n - 2 * A024429 n) : ℚ) / 3

end

end A323632.P9965024047890810199

/-!
# A323633: Expansion of 1/Sum_{k>=0} x^(k^3).

The programs for A323633, there is no canonical definition to state claims against.
-/

/-! ## A323633.P10575553401915625490

`A339420(n)-A339421(n)`
-/

namespace A323633.P10575553401915625490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339420 n - A339421 n

end

end A323633.P10575553401915625490

/-! ## A323633.P4681847121980891709

`2*A339420(n)-A023358(n)`
-/

namespace A323633.P4681847121980891709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339420 n - A023358 n

end

end A323633.P4681847121980891709

/-! ## A323633.P3098235357098967561

`A023358(n)-2*A339421(n)`
-/

namespace A323633.P3098235357098967561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - 2 * A339421 n

end

end A323633.P3098235357098967561

/-! ## A323633.P5624950909081659699

`A010057(n)+A348524(n)-A339421(n)-A339421(n)`
-/

namespace A323633.P5624950909081659699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n + (A348524 n - A339421 n) - A339421 n

end

end A323633.P5624950909081659699

/-! ## A323633.P13009932549451780605

`A339420(n)-(A010057(n)+A348524(n)-A339420(n))`
-/

namespace A323633.P13009932549451780605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339420 n - (A010057 n + (A348524 n - A339420 n))

end

end A323633.P13009932549451780605

/-! ## A323633.P5280218980231693157

`A005843(A339420(n))-A023358(n)`
-/

namespace A323633.P5280218980231693157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339420 n).toNat - A023358 n

end

end A323633.P5280218980231693157

/-! ## A323633.P16334525283672787363

`A005843(A023358(n)-A339421(n))-A023358(n)`
-/

namespace A323633.P16334525283672787363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A023358 n - A339421 n).toNat - A023358 n

end

end A323633.P16334525283672787363

/-! ## A323633.P1307768701291977519

`A023358(n)-A005843(A339421(n))`
-/

namespace A323633.P1307768701291977519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - A005843 (A339421 n).toNat

end

end A323633.P1307768701291977519

/-!
# A323634: Expansion of Product_{k>=1} 1/(1 - k^(k-1)*x^k).

The programs for A323634, there is no canonical definition to state claims against.
-/

/-! ## A323634.P17891084030746911975

`A256991(A047863(n)+1)`
-/

namespace A323634.P17891084030746911975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256991 (A047863 n + 1).toNat

end

end A323634.P17891084030746911975

/-! ## A323634.P2795656330052832068

`A023055(A003238(2^n))`
-/

namespace A323634.P2795656330052832068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023055 (A003238 (2 ^ n)).toNat

end

end A323634.P2795656330052832068

/-!
# A323636: Nested square root sqrt(b(n) + sqrt(b(n-1) + ... + sqrt(b(1))...)), where b(n) = A323635(n).

The programs for A323636, there is no canonical definition to state claims against.
-/

/-! ## A323636.P13748514412838669866

`A000196(A323635(n+1)+A094192(n+1))`
-/

namespace A323636.P13748514412838669866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A323635 (n + 1) + A094192 (n + 1)).toNat

end

end A323636.P13748514412838669866

/-! ## A323636.P9871196910414667414

`A000196(A323635(n+1)+A265912(n+1))`
-/

namespace A323636.P9871196910414667414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A323635 (n + 1) + A265912 (n + 1)).toNat

end

end A323636.P9871196910414667414

/-! ## A323636.P5102463429954084741

`A000194(A323635(n+1)+A000194(2*n))`
-/

namespace A323636.P5102463429954084741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A323635 (n + 1) + A000194 (2 * n)).toNat

end

end A323636.P5102463429954084741

/-! ## A323636.P8969812155792538447

`A000196(A323635(n+1)+A198454(n+1))`
-/

namespace A323636.P8969812155792538447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A323635 (n + 1) + A198454 (n + 1)).toNat

end

end A323636.P8969812155792538447

/-! ## A323636.P12059921808446704690

`A331246(A323635(n+1))`
-/

namespace A323636.P12059921808446704690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A323635 (n + 1)).toNat

end

end A323636.P12059921808446704690

/-!
# A323638: Nested square root sqrt(b(n) - sqrt(b(n-1) - ... - sqrt(b(1))...)), where b(n) = A323637(n).

The programs for A323638, there is no canonical definition to state claims against.
-/

/-! ## A323638.P8577410249185903709

`floor(sqrt(A323637(n+1)-A322306(n+1)))`
-/

namespace A323638.P8577410249185903709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A323637 (n + 1) - A322306 (n + 1))

end

end A323638.P8577410249185903709

/-! ## A323638.P7745405662823820266

`A000196(A323637(n+1)-A322306(n+1))`
-/

namespace A323638.P7745405662823820266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A323637 (n + 1) - A322306 (n + 1)).toNat

end

end A323638.P7745405662823820266

/-! ## A323638.P5580847946863049009

`A323636(n+4)-A000005(A234310(n+1))`
-/

namespace A323638.P5580847946863049009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323636 (n + 4) - A000005 (A234310 (n + 1)).toNat

end

end A323638.P5580847946863049009

/-! ## A323638.P4501648634219521033

`A323636(n+4)-A296073(A308794(2*n+3))`
-/

namespace A323638.P4501648634219521033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323636 (n + 4) - A296073 (A308794 (2 * n + 3)).toNat

end

end A323638.P4501648634219521033

/-!
# A323639: a(n) = 3*(10^n - 4)/9.

The programs for A323639, the canonical program `A323639.P161917603830792097` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323639 has offset 0).

The definition of A323639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(10^n-4)/9` (program `A323639.P17497814067146515334`, by `A323639.P17497814067146515334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A323639.P14795369280696036660

`(10^n-4)/3`
-/

namespace A323639.P14795369280696036660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 4 : ℚ) / 3

end

end A323639.P14795369280696036660

namespace A323639

/-- `(10^n-4)/3` -/
def P14795369280696036660.Spec : Prop :=
  ∀ n, P14795369280696036660.a n = (A323639 n : ℚ)

theorem P14795369280696036660.correct : P14795369280696036660.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A323639, Nat.add_sub_cancel, A323639.P14795369280696036660.a, A323639.P161917603830792097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A323639, Nat.add_sub_cancel, A323639.P14795369280696036660.a, A323639.P161917603830792097.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A323639

/-! ## A323639.P161917603830792097

`11*a(n-1)-10*a(n-2)` with `a(0)=-1, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323639

/-- `11*a(n-1)-10*a(n-2)` -/
def P161917603830792097.Spec : Prop :=
  ∀ n, P161917603830792097.a n = A323639 n

theorem P161917603830792097.correct : P161917603830792097.Spec := by
  intro n
  simp only [A323639]

end A323639

/-! ## A323639.P10150029178817885078

`A002277(n)-1`
-/

namespace A323639.P10150029178817885078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n - 1

end

end A323639.P10150029178817885078

namespace A323639

/-- `A002277(n)-1` -/
def P10150029178817885078.Spec : Prop :=
  ∀ n, P10150029178817885078.a n = A323639 n

end A323639

/-! ## A323639.P17497814067146515334

`3*(10^n-4)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323639.P17497814067146515334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((10 ^ n : ℤ) - 4) : ℚ) / 9

end

end A323639.P17497814067146515334

namespace A323639

/-- `3*(10^n-4)/9` -/
def P17497814067146515334.Spec : Prop :=
  ∀ n, P17497814067146515334.a n = (A323639 n : ℚ)

theorem P17497814067146515334.correct : P17497814067146515334.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A323639, Nat.add_sub_cancel, A323639.P17497814067146515334.a, A323639.P161917603830792097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A323639, Nat.add_sub_cancel, A323639.P17497814067146515334.a, A323639.P161917603830792097.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A323639

/-! ## A323639.P8542127499441163059

`ogf((-1+13x)/(1-11x+10x^2))`
-/

namespace A323639.P8542127499441163059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 13] [1, -11, 10] n

end

end A323639.P8542127499441163059

namespace A323639

/-- `ogf((-1+13x)/(1-11x+10x^2))` -/
def P8542127499441163059.Spec : Prop :=
  ∀ n, P8542127499441163059.a n = A323639 n

end A323639

/-! ## A323639.P5052458857678231933

`10*a(n-1)+12` with `a(0)=-1`
-/

namespace A323639.P5052458857678231933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  10 * a (n - 1) + 12

end

end A323639.P5052458857678231933

namespace A323639

/-- `10*a(n-1)+12` -/
def P5052458857678231933.Spec : Prop :=
  ∀ n, P5052458857678231933.a n = A323639 n

end A323639

/-! ## A323639.P9093818692343910836

`∑[10*a(n-1)]` with `a(0)=-1, a(1)=3`
-/

namespace A323639.P9093818692343910836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323639.P9093818692343910836

namespace A323639

/-- `∑[10*a(n-1)]` -/
def P9093818692343910836.Spec : Prop :=
  ∀ n, P9093818692343910836.a n = A323639 n

end A323639

/-! ## A323639.P15474654271166734822

`xor(-floor(10^n/3), -1)`
-/

namespace A323639.P15474654271166734822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌊(10 ^ n : ℚ) / 3⌋) (-1)

end

end A323639.P15474654271166734822

namespace A323639

/-- `xor(-floor(10^n/3), -1)` -/
def P15474654271166734822.Spec : Prop :=
  ∀ n, P15474654271166734822.a n = A323639 n

end A323639

/-! ## A323639.P16063008641373564860

`A093137(n)-2`
-/

namespace A323639.P16063008641373564860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n - 2

end

end A323639.P16063008641373564860

namespace A323639

/-- `A093137(n)-2` -/
def P16063008641373564860.Spec : Prop :=
  ∀ n, P16063008641373564860.a n = A323639 n

end A323639

/-! ## A323639.P10364062313751720829

`A133473(n)-3`
-/

namespace A323639.P10364062313751720829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133473 n - 3

end

end A323639.P10364062313751720829

namespace A323639

/-- `A133473(n)-3` -/
def P10364062313751720829.Spec : Prop :=
  ∀ n, P10364062313751720829.a n = A323639 n

end A323639

/-! ## A323639.P16218759898935592487

`∑[A093138(n)]-2`
-/

namespace A323639.P16218759898935592487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A323639.P16218759898935592487

namespace A323639

/-- `∑[A093138(n)]-2` -/
def P16218759898935592487.Spec : Prop :=
  ∀ n, P16218759898935592487.a n = A323639 n

end A323639

/-! ## A323639.P17774642124745065682

`Δ[A133462(n)]-1`
-/

namespace A323639.P17774642124745065682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A323639.P17774642124745065682

namespace A323639

/-- `Δ[A133462(n)]-1` -/
def P17774642124745065682.Spec : Prop :=
  ∀ n, P17774642124745065682.a n = A323639 n

end A323639

/-! ## A323639.P897541169674677791

`3*A002275(n)-1`
-/

namespace A323639.P897541169674677791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002275 n - 1

end

end A323639.P897541169674677791

namespace A323639

/-- `3*A002275(n)-1` -/
def P897541169674677791.Spec : Prop :=
  ∀ n, P897541169674677791.a n = A323639 n

end A323639

/-! ## A323639.P9097638373988694837

`A002280(n)/2-1`
-/

namespace A323639.P9097638373988694837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002280 n : ℚ) / 2 - 1

end

end A323639.P9097638373988694837

namespace A323639

/-- `A002280(n)/2-1` -/
def P9097638373988694837.Spec : Prop :=
  ∀ n, P9097638373988694837.a n = (A323639 n : ℚ)

end A323639

/-! ## A323639.P4403781157819234155

`A133201(3*n)-1`
-/

namespace A323639.P4403781157819234155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (3 * n) - 1

end

end A323639.P4403781157819234155

namespace A323639

/-- `A133201(3*n)-1` -/
def P4403781157819234155.Spec : Prop :=
  ∀ n, P4403781157819234155.a n = A323639 n

end A323639

/-! ## A323639.P74248840118546894

`A002283(n)/3-1`
-/

namespace A323639.P74248840118546894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002283 n : ℚ) / 3 - 1

end

end A323639.P74248840118546894

namespace A323639

/-- `A002283(n)/3-1` -/
def P74248840118546894.Spec : Prop :=
  ∀ n, P74248840118546894.a n = (A323639 n : ℚ)

theorem P74248840118546894.correct : P74248840118546894.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A323639, Nat.add_sub_cancel, A323639.P74248840118546894.a, A323639.P161917603830792097.a, A002283, A002283.P2252111154706607536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A323639, Nat.add_sub_cancel, A323639.P74248840118546894.a, A323639.P161917603830792097.a, A002283, A002283.P2252111154706607536.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A323639

/-! ## A323639.P12460075714022533557

`3*A047855(n)-4`
-/

namespace A323639.P12460075714022533557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047855 n - 4

end

end A323639.P12460075714022533557

namespace A323639

/-- `3*A047855(n)-4` -/
def P12460075714022533557.Spec : Prop :=
  ∀ n, P12460075714022533557.a n = A323639 n

end A323639

/-! ## A323639.P10141655625361686300

`A308900(Δ[n²])-2`
-/

namespace A323639.P10141655625361686300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A323639.P10141655625361686300

namespace A323639

/-- `A308900(Δ[n²])-2` -/
def P10141655625361686300.Spec : Prop :=
  ∀ n, P10141655625361686300.a n = A323639 n

end A323639

/-! ## A323639.P14355263869437323746

`A002279(n)-A093135(n)`
-/

namespace A323639.P14355263869437323746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n - A093135 n

end

end A323639.P14355263869437323746

namespace A323639

/-- `A002279(n)-A093135(n)` -/
def P14355263869437323746.Spec : Prop :=
  ∀ n, P14355263869437323746.a n = A323639 n

end A323639

/-! ## A323639.P16547640725912917923

`A059482(n)-A178769(n)`
-/

namespace A323639.P16547640725912917923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n - A178769 n

end

end A323639.P16547640725912917923

namespace A323639

/-- `A059482(n)-A178769(n)` -/
def P16547640725912917923.Spec : Prop :=
  ∀ n, P16547640725912917923.a n = A323639 n

end A323639

/-!
# A323640: Numbers m having at least one pair (x,y) of divisors with x

The programs for A323640, there is no canonical definition to state claims against.
-/

/-! ## A323640.P4731937293701848423

`eq[1, A094518(n+1)]+1`
-/

namespace A323640.P4731937293701848423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323640.P4731937293701848423

/-! ## A323640.P16982593369996134274

`A092486(eq[1, A094518(n+1)])`
-/

namespace A323640.P16982593369996134274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323640.P16982593369996134274

/-! ## A323640.P17758641974383358706

`eq[1, A094518(A028310(n))]`
-/

namespace A323640.P17758641974383358706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323640.P17758641974383358706

/-! ## A323640.P17285557079233633921

`A014681(eq[1, A094518(n+1)])`
-/

namespace A323640.P17285557079233633921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323640.P17285557079233633921

/-! ## A323640.P7813705882460429328

`A020725(eq[1, A094518(n+1)])`
-/

namespace A323640.P7813705882460429328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323640.P7813705882460429328

/-!
# A323641: Triangle read by rows in which row n lists the first 2^n terms of A323642, n >= 1.

The programs for A323641, the canonical program `A323641.P1592555987281222169` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323641 has offset 1).

The definition of A323641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323651, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323641.P1592555987281222169

`A323651(n+3)/4`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323641

/-- `A323651(n+3)/4` -/
def P1592555987281222169.Spec : Prop :=
  ∀ n, P1592555987281222169.a n = (A323641 (n + 1) : ℚ)

end A323641

/-! ## A323641.P2666618072255022349

`A005940(A106524(n))`
-/

namespace A323641.P2666618072255022349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A106524 n).toNat

end

end A323641.P2666618072255022349

namespace A323641

/-- `A005940(A106524(n))` -/
def P2666618072255022349.Spec : Prop :=
  ∀ n, P2666618072255022349.a n = A323641 (n + 1)

end A323641

/-! ## A323641.P3453484254154252967

`Δ[A323650(n+2)/4]`
-/

namespace A323641.P3453484254154252967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323650 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323641.P3453484254154252967

namespace A323641

/-- `Δ[A323650(n+2)/4]` -/
def P3453484254154252967.Spec : Prop :=
  ∀ n, P3453484254154252967.a n = (A323641 (n + 1) : ℚ)

end A323641

/-! ## A323641.P6973300979412202754

`A349387(A071044(n+2))`
-/

namespace A323641.P6973300979412202754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (A071044 (n + 2)).toNat

end

end A323641.P6973300979412202754

namespace A323641

/-- `A349387(A071044(n+2))` -/
def P6973300979412202754.Spec : Prop :=
  ∀ n, P6973300979412202754.a n = A323641 (n + 1)

end A323641

/-! ## A323641.P16798082069729988128

`A160798(n+1)%(5*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A323641.P16798082069729988128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A160798 (n + 1)) (5 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A323641.P16798082069729988128

namespace A323641

/-- `A160798(n+1)%(5*a(and(n, n-1)))` -/
def P16798082069729988128.Spec : Prop :=
  ∀ n, P16798082069729988128.a n = A323641 (n + 1)

end A323641

/-! ## A323641.P295785929885568863

`abs(A117966(A160798(n+1)))`
-/

namespace A323641.P295785929885568863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117966 (A160798 (n + 1)).toNat|

end

end A323641.P295785929885568863

namespace A323641

/-- `abs(A117966(A160798(n+1)))` -/
def P295785929885568863.Spec : Prop :=
  ∀ n, P295785929885568863.a n = A323641 (n + 1)

end A323641

/-! ## A323641.P6330389142275000499

`A109671(A332206(n+1))`
-/

namespace A323641.P6330389142275000499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (A332206 (n + 1)).toNat

end

end A323641.P6330389142275000499

namespace A323641

/-- `A109671(A332206(n+1))` -/
def P6330389142275000499.Spec : Prop :=
  ∀ n, P6330389142275000499.a n = A323641 (n + 1)

end A323641

/-! ## A323641.P5444204067440691693

`A005940(A261363(∑[n+3]))`
-/

namespace A323641.P5444204067440691693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A261363 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A323641.P5444204067440691693

namespace A323641

/-- `A005940(A261363(∑[n+3]))` -/
def P5444204067440691693.Spec : Prop :=
  ∀ n, P5444204067440691693.a n = A323641 (n + 1)

end A323641

/-! ## A323641.P1913164329607334263

`A323642(A062050(n+2))`
-/

namespace A323641.P1913164329607334263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323642 (A062050 (n + 2)).toNat

end

end A323641.P1913164329607334263

namespace A323641

/-- `A323642(A062050(n+2))` -/
def P1913164329607334263.Spec : Prop :=
  ∀ n, P1913164329607334263.a n = A323641 (n + 1)

end A323641

/-! ## A323641.P692943667847493453

`A338803(A032912(n+1)-1)`
-/

namespace A323641.P692943667847493453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338803 (A032912 (n + 1) - 1).toNat

end

end A323641.P692943667847493453

namespace A323641

/-- `A338803(A032912(n+1)-1)` -/
def P692943667847493453.Spec : Prop :=
  ∀ n, P692943667847493453.a n = A323641 (n + 1)

end A323641

/-!
# A323642: Row n of triangle A323641 when n -> infinity.

The programs for A323642, there is no canonical definition to state claims against.
-/

/-! ## A323642.P4034153967291867896

`3*a(and(n, n-2))` with `a(0)=1, a(1)=2`
-/

namespace A323642.P4034153967291867896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

end

end A323642.P4034153967291867896

/-! ## A323642.P15301975524801416531

`3*a(n-2^floor(log2(n)))` with `a(0)=1, a(1)=2`
-/

namespace A323642.P15301975524801416531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 2 ^ Nat.log 2 n)

end

end A323642.P15301975524801416531

/-! ## A323642.P10928591377346109070

`a(and(n, n-2))/cot(atan(3))` with `a(0)=1, a(1)=2`
-/

namespace A323642.P10928591377346109070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat / Real.cot (Real.arctan (3 : ℝ))

end

end A323642.P10928591377346109070

/-! ## A323642.P5686151740045054347

`a(and(n, n-2))/(1-2/3)` with `a(0)=1, a(1)=2`
-/

namespace A323642.P5686151740045054347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat / (1 - (2 : ℚ) / 3)

end

end A323642.P5686151740045054347

/-! ## A323642.P5631655826995191089

`A323641(n+31)`
-/

namespace A323642.P5631655826995191089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323641 (n + 31)

end

end A323642.P5631655826995191089

/-!
# A323643: a(n) is the sum of the noncentral divisors of n.

The programs for A323643, there is no canonical definition to state claims against.
-/

/-! ## A323643.P8537599492268666793

`A000203(n+1)-A207376(n+1)`
-/

namespace A323643.P8537599492268666793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A207376 (n + 1)

end

end A323643.P8537599492268666793

/-! ## A323643.P4939974725837256916

`Δ[A160664(n)]-A207376(n+1)`
-/

namespace A323643.P4939974725837256916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A207376 (n + 1)

end

end A323643.P4939974725837256916

/-! ## A323643.P14231626189137921955

`A060866(n+1)-A063655(n+1)`
-/

namespace A323643.P14231626189137921955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - A063655 (n + 1)

end

end A323643.P14231626189137921955

/-! ## A323643.P10712467179810182007

`A074400(n+1)/2-A207376(n+1)`
-/

namespace A323643.P10712467179810182007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A207376 (n + 1) : ℚ)

end

end A323643.P10712467179810182007

/-! ## A323643.P9973647118726509843

`A001065(n+1)+n+1-A207376(n+1)`
-/

namespace A323643.P9973647118726509843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ) - A207376 (n + 1)

end

end A323643.P9973647118726509843

/-! ## A323643.P7097481993496567081

`A155085(n+1)-(n+1)-A207376(n+1)`
-/

namespace A323643.P7097481993496567081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A207376 (n + 1)

end

end A323643.P7097481993496567081

/-! ## A323643.P4845774605683771609

`A064987(n+1)/(n+1)-A207376(n+1)`
-/

namespace A323643.P4845774605683771609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A207376 (n + 1) : ℚ)

end

end A323643.P4845774605683771609

/-! ## A323643.P10537816123159999787

`A237588(n+1)+(n+1)²-n²-A207376(n+1)`
-/

namespace A323643.P10537816123159999787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ) - A207376 (n + 1)

end

end A323643.P10537816123159999787

/-! ## A323643.P10019127418783886708

`A004526(A074400(n+1))-A207376(n+1)`
-/

namespace A323643.P10019127418783886708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074400 (n + 1)).toNat - A207376 (n + 1)

end

end A323643.P10019127418783886708

/-! ## A323643.P14514768568305041087

`A060866(n+1)-A306284(A008586(n+1))`
-/

namespace A323643.P14514768568305041087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - A306284 (A008586 (n + 1)).toNat

end

end A323643.P14514768568305041087

/-! ## A323643.P13554396125761722590

`A061579(A061579(∑{d}[n+1, #]))-A207376(n+1)`
-/

namespace A323643.P13554396125761722590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A061579 (∑ d ∈ Nat.divisors (f1 n), d)).toNat - A207376 (n + 1)

end

end A323643.P13554396125761722590

/-! ## A323643.P6400487383405300460

`A060866(n+1)-(A033677(n+1)+A033676(n+1))`
-/

namespace A323643.P6400487383405300460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - (A033677 (n + 1) + A033676 (n + 1))

end

end A323643.P6400487383405300460

/-! ## A323643.P11711642754671083381

`A127057(A000124(n))-A207376(n+1)`
-/

namespace A323643.P11711642754671083381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n).toNat - A207376 (n + 1)

end

end A323643.P11711642754671083381

/-!
# A323644: Numbers with 3 or 4 divisors.

The programs for A323644, the canonical program `A323644.P9984008957538530979` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323644 has offset 1).

The definition of A323644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323644.P10497714902879872493

`eq[2, A337135(n+1)]+1`
-/

namespace A323644.P10497714902879872493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323644.P10497714902879872493

namespace A323644

/-- `eq[2, A337135(n+1)]+1` -/
def P10497714902879872493.Spec : Prop :=
  ∀ n, (P10497714902879872493.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P15889369950201342113

`eq[1, round(A000005(n+1)/2)-1]+1`
-/

namespace A323644.P15889369950201342113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (n + 1) : ℚ) / 2) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323644.P15889369950201342113

namespace A323644

/-- `eq[1, round(A000005(n+1)/2)-1]+1` -/
def P15889369950201342113.Spec : Prop :=
  ∀ n, (P15889369950201342113.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P4039944608656120831

`eq[2, A051601(A077462(n))]`
-/

namespace A323644.P4039944608656120831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323644.P4039944608656120831

namespace A323644

/-- `eq[2, A051601(A077462(n))]` -/
def P4039944608656120831.Spec : Prop :=
  ∀ n, (P4039944608656120831.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P14207520958750776584

`∪[A030513(n+1), A033476(n)]`
-/

namespace A323644.P14207520958750776584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323644.P14207520958750776584

namespace A323644

/-- `∪[A030513(n+1), A033476(n)]` -/
def P14207520958750776584.Spec : Prop :=
  ∀ n, (P14207520958750776584.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P2341936288984020324

`eq[1, A004125(A000005(n+1))]+1`
-/

namespace A323644.P2341936288984020324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323644.P2341936288984020324

namespace A323644

/-- `eq[1, A004125(A000005(n+1))]+1` -/
def P2341936288984020324.Spec : Prop :=
  ∀ n, (P2341936288984020324.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P9984008957538530979

`∪[A001358(n+1), A030078(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323644

/-- `∪[A001358(n+1), A030078(n+1)]` -/
def P9984008957538530979.Spec : Prop :=
  ∀ n, (P9984008957538530979.a n : ℤ) = A323644 (n + 1)

theorem P9984008957538530979.correct : P9984008957538530979.Spec := by
  intro n
  simp only [A323644, Nat.add_sub_cancel]

end A323644

/-! ## A323644.P9394696178683737997

`∪[A001248(n+1), A030513(n+1)]`
-/

namespace A323644.P9394696178683737997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323644.P9394696178683737997

namespace A323644

/-- `∪[A001248(n+1), A030513(n+1)]` -/
def P9394696178683737997.Spec : Prop :=
  ∀ n, (P9394696178683737997.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P7083700938591166159

`∪[A001358(n+1), A030513(n+1)]`
-/

namespace A323644.P7083700938591166159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323644.P7083700938591166159

namespace A323644

/-- `∪[A001358(n+1), A030513(n+1)]` -/
def P7083700938591166159.Spec : Prop :=
  ∀ n, (P7083700938591166159.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P5901895226511575832

`∪[A000040(n+1)², A030513(n+1)]`
-/

namespace A323644.P5901895226511575832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323644.P5901895226511575832

namespace A323644

/-- `∪[A000040(n+1)², A030513(n+1)]` -/
def P5901895226511575832.Spec : Prop :=
  ∀ n, (P5901895226511575832.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P5322512086843544993

`eq[3, A055086(A000005(n+1)+1)]+1`
-/

namespace A323644.P5322512086843544993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323644.P5322512086843544993

namespace A323644

/-- `eq[3, A055086(A000005(n+1)+1)]+1` -/
def P5322512086843544993.Spec : Prop :=
  ∀ n, (P5322512086843544993.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P12680995395214874467

`eq[1, A000045(A000005(n+2)-2)]+2`
-/

namespace A323644.P12680995395214874467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000005 (n + 2) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A323644.P12680995395214874467

namespace A323644

/-- `eq[1, A000045(A000005(n+2)-2)]+2` -/
def P12680995395214874467.Spec : Prop :=
  ∀ n, (P12680995395214874467.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P3424981928796393918

`filter[A346041(n+1), A340369(#)]`
-/

namespace A323644.P3424981928796393918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A323644.P3424981928796393918

namespace A323644

/-- `filter[A346041(n+1), A340369(#)]` -/
def P3424981928796393918.Spec : Prop :=
  ∀ n, P3424981928796393918.a n = A323644 (n + 1)

end A323644

/-! ## A323644.P2333530841112257161

`filter[A346041(n+1), A353799(#)]`
-/

namespace A323644.P2333530841112257161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A323644.P2333530841112257161

namespace A323644

/-- `filter[A346041(n+1), A353799(#)]` -/
def P2333530841112257161.Spec : Prop :=
  ∀ n, P2333530841112257161.a n = A323644 (n + 1)

end A323644

/-! ## A323644.P11702786084437403871

`filter[A373482(n+2), A353799(#)]`
-/

namespace A323644.P11702786084437403871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A323644.P11702786084437403871

namespace A323644

/-- `filter[A373482(n+2), A353799(#)]` -/
def P11702786084437403871.Spec : Prop :=
  ∀ n, P11702786084437403871.a n = A323644 (n + 1)

end A323644

/-! ## A323644.P744347073080980117

`filter[A282668(n+1), A353799(#)]`
-/

namespace A323644.P744347073080980117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A323644.P744347073080980117

namespace A323644

/-- `filter[A282668(n+1), A353799(#)]` -/
def P744347073080980117.Spec : Prop :=
  ∀ n, P744347073080980117.a n = A323644 (n + 1)

end A323644

/-! ## A323644.P18039888205594855885

`filter[A007964(n+1), A066247(#)]`
-/

namespace A323644.P18039888205594855885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A323644.P18039888205594855885

namespace A323644

/-- `filter[A007964(n+1), A066247(#)]` -/
def P18039888205594855885.Spec : Prop :=
  ∀ n, P18039888205594855885.a n = A323644 (n + 1)

end A323644

/-! ## A323644.P2956896980636835600

`filter[A007964(n+2), A005171(#)]`
-/

namespace A323644.P2956896980636835600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A323644.P2956896980636835600

namespace A323644

/-- `filter[A007964(n+2), A005171(#)]` -/
def P2956896980636835600.Spec : Prop :=
  ∀ n, P2956896980636835600.a n = A323644 (n + 1)

end A323644

/-! ## A323644.P8497322875564843579

`filter[A007964(n+2), A373481(#)]`
-/

namespace A323644.P8497322875564843579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A323644.P8497322875564843579

namespace A323644

/-- `filter[A007964(n+2), A373481(#)]` -/
def P8497322875564843579.Spec : Prop :=
  ∀ n, P8497322875564843579.a n = A323644 (n + 1)

end A323644

/-! ## A323644.P11334483767311416613

`∩[A007964(n+1), A282668(n+1)]`
-/

namespace A323644.P11334483767311416613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323644.P11334483767311416613

namespace A323644

/-- `∩[A007964(n+1), A282668(n+1)]` -/
def P11334483767311416613.Spec : Prop :=
  ∀ n, (P11334483767311416613.a n : ℤ) = A323644 (n + 1)

end A323644

/-! ## A323644.P5951865830032049335

`∩[A007964(n+1), A346041(n+1)]`
-/

namespace A323644.P5951865830032049335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323644.P5951865830032049335

namespace A323644

/-- `∩[A007964(n+1), A346041(n+1)]` -/
def P5951865830032049335.Spec : Prop :=
  ∀ n, (P5951865830032049335.a n : ℤ) = A323644 (n + 1)

end A323644

/-!
# A323645: a(n) is the number of visible faces in the perspective view of the stepped pyramid with n levels described in A245092.

The programs for A323645, there is no canonical definition to state claims against.
-/

/-! ## A323645.P14752294439692634871

`A325300(n+1)-3`
-/

namespace A323645.P14752294439692634871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325300 (n + 1) - 3

end

end A323645.P14752294439692634871

/-! ## A323645.P15677458209814877714

`A023446(A325300(n+1)+1)`
-/

namespace A323645.P15677458209814877714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A325300 (n + 1) + 1).toNat

end

end A323645.P15677458209814877714

/-! ## A323645.P12519062013623999332

`A023447(A325300(n+1)+2)`
-/

namespace A323645.P12519062013623999332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A325300 (n + 1) + 2).toNat

end

end A323645.P12519062013623999332

/-! ## A323645.P12303955219530146106

`A325301(n+1)-(A325302(n+1)+1)`
-/

namespace A323645.P12303955219530146106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325301 (n + 1) - (A325302 (n + 1) + 1)

end

end A323645.P12303955219530146106

/-! ## A323645.P17132738812729925571

`A325300(n+1)+A001489(n+3)+n`
-/

namespace A323645.P17132738812729925571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325300 (n + 1) + A001489 (n + 3) + (n : ℤ)

end

end A323645.P17132738812729925571

/-!
# A323646: "Letter A" toothpick sequence (see Comments for precise definition).

The programs for A323646, there is no canonical definition to state claims against.
-/

/-! ## A323646.P18156101695315700810

`A323647(n)+a(n-1)` with `a(0)=0`
-/

namespace A323646.P18156101695315700810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A323647 n + a (n - 1)

end

end A323646.P18156101695315700810

/-! ## A323646.P12096337526055602525

`∑[A323647(abs(1-n)+1)]-2`
-/

namespace A323646.P12096337526055602525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A323646.P12096337526055602525

/-! ## A323646.P14892395976785909080

`∑[ceil(A140472(A187211(n))/2)]`
-/

namespace A323646.P14892395976785909080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140472 (A187211 n).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323646.P14892395976785909080

/-! ## A323646.P13582188355560391538

`∪[∑[A323647(n+1)], A004931(n)]`
-/

namespace A323646.P13582188355560391538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A323646.P13582188355560391538

/-! ## A323646.P17359524125712438208

`A160730(n)+1-A323647(n+1)`
-/

namespace A323646.P17359524125712438208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n + (1 - A323647 (n + 1))

end

end A323646.P17359524125712438208

/-! ## A323646.P16047356154050506843

`∪[A160711(n+1), A160730(n)+1]`
-/

namespace A323646.P16047356154050506843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323646.P16047356154050506843

/-! ## A323646.P1499353550046575974

`A140472(∑[A140472(A187211(n))])`
-/

namespace A323646.P1499353550046575974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A187211 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323646.P1499353550046575974

/-! ## A323646.P3075815540386825815

`∑[A178334(n)*A323647(A028310(n))]`
-/

namespace A323646.P3075815540386825815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A323647 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323646.P3075815540386825815

/-! ## A323646.P6331034322515702772

`∑[A323647(A028310(n))%A000124(n)]`
-/

namespace A323646.P6331034322515702772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323647 (A028310 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323646.P6331034322515702772

/-! ## A323646.P9402215274841701256

`∑[A000040(n+1)%2*A323647(A028310(n))]`
-/

namespace A323646.P9402215274841701256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A323647 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323646.P9402215274841701256

/-!
# A323647: Number of elements added at n-th stage to the toothpick structure of A323646.

The programs for A323647, there is no canonical definition to state claims against.
-/

/-! ## A323647.P9549741166996862949

`ceil(A140472(A187211(n+1))/2)`
-/

namespace A323647.P9549741166996862949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140472 (A187211 (n + 1)).toNat : ℚ) / 2⌉

end

end A323647.P9549741166996862949

/-! ## A323647.P6663949953578497960

`A170893(n)+A160407(round(acot(n)+n))`
-/

namespace A323647.P6663949953578497960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 n + A160407 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A323647.P6663949953578497960

/-! ## A323647.P11966327325226487245

`A170893(n)+A160407(round(sqrt(n²+1)))`
-/

namespace A323647.P11966327325226487245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 n + A160407 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A323647.P11966327325226487245

/-! ## A323647.P719546471995739427

`A140201(A008621(Δ[A187210(n)]))`
-/

namespace A323647.P719546471995739427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (A008621 (f1 (n + 1) - f1 n).toNat).toNat

end

end A323647.P719546471995739427

/-! ## A323647.P3592460291033389383

`A140472(A187211(n+1))/(A057427(n)+1)`
-/

namespace A323647.P3592460291033389383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140472 (A187211 (n + 1)).toNat : ℚ) / (A057427 n + 1 : ℚ)

end

end A323647.P3592460291033389383

/-! ## A323647.P3564499684977178643

`A140472(A187211(n+1))/(2-A000007(n))`
-/

namespace A323647.P3564499684977178643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140472 (A187211 (n + 1)).toNat : ℚ) / (2 - A000007 n : ℚ)

end

end A323647.P3564499684977178643

/-! ## A323647.P14280781188166207699

`A054977(n)/2*A140472(A187211(n+1))`
-/

namespace A323647.P14280781188166207699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054977 n : ℚ) / 2 * (A140472 (A187211 (n + 1)).toNat : ℚ)

end

end A323647.P14280781188166207699

/-! ## A323647.P112041957970314465

`A140472(A187211(n+1))/A020639(A004277(n))`
-/

namespace A323647.P112041957970314465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140472 (A187211 (n + 1)).toNat : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A323647.P112041957970314465

/-! ## A323647.P487153701809773027

`A140472(A187211(n+1))/A020639(A000010(n+2))`
-/

namespace A323647.P487153701809773027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140472 (A187211 (n + 1)).toNat : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A323647.P487153701809773027

/-!
# A323648: Numbers k such that the largest Dyck path of the symmetric representation of sigma(k) does not share any line segment with the largest Dyck path of the symmetric representation of sigma(k+1).

The programs for A323648, there is no canonical definition to state claims against.
-/

/-! ## A323648.P18221437077866738540

`A279029(n+2)-1`
-/

namespace A323648.P18221437077866738540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 2) - 1

end

end A323648.P18221437077866738540

/-! ## A323648.P16834815584064541142

`∑[abs(Δ[A279029(n+1)])]`
-/

namespace A323648.P16834815584064541142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323648.P16834815584064541142

/-! ## A323648.P5374306881368381207

`A023443(A279029(n+2))`
-/

namespace A323648.P5374306881368381207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A279029 (n + 2)).toNat

end

end A323648.P5374306881368381207

/-! ## A323648.P1802833140144041615

`eq[A010121(n), A379968(n+1)]`
-/

namespace A323648.P1802833140144041615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323648.P1802833140144041615

/-! ## A323648.P15735576786315910910

`eq[A010130(n), A379968(n+1)]`
-/

namespace A323648.P15735576786315910910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323648.P15735576786315910910

/-! ## A323648.P5607972401660070291

`eq[A010153(n), A379968(n+1)]`
-/

namespace A323648.P5607972401660070291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323648.P5607972401660070291

/-! ## A323648.P2983657199701292862

`eq[A010194(n), A379968(n+1)]`
-/

namespace A323648.P2983657199701292862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323648.P2983657199701292862

/-! ## A323648.P14439351340208809188

`eq[A010195(n), A379968(n+1)]`
-/

namespace A323648.P14439351340208809188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323648.P14439351340208809188

/-! ## A323648.P292764947683495985

`eq[A010209(n), A379968(n+1)]`
-/

namespace A323648.P292764947683495985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323648.P292764947683495985

/-! ## A323648.P14530788089677567516

`eq[A040037(n), A379968(n+1)]`
-/

namespace A323648.P14530788089677567516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323648.P14530788089677567516

/-!
# A323649: Corner sequence of the cellular automaton of A323650.

The programs for A323649, there is no canonical definition to state claims against.
-/

/-! ## A323649.P15478843497383805128

`∑[3*a(and(n, n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A323649.P15478843497383805128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323649.P15478843497383805128

/-! ## A323649.P3220419310850202190

`∑[3*a(n-2^floor(log2(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A323649.P3220419310850202190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 2 ^ Nat.log 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323649.P3220419310850202190

/-! ## A323649.P17216630427889054034

`∑[a(and(n, n-2))/(1-2/3)]` with `a(0)=1, a(1)=2`
-/

namespace A323649.P17216630427889054034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323649.P17216630427889054034

/-! ## A323649.P17344394740832310469

`∑[A323642(n+1)]`
-/

namespace A323649.P17344394740832310469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323649.P17344394740832310469

/-! ## A323649.P9269937968294874932

`∑[A323641(n+31)]`
-/

namespace A323649.P9269937968294874932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323641 (n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323649.P9269937968294874932

/-!
# A323650: Flower garden sequence (see Comments for precise definition).

The programs for A323650, the canonical program `A323650.P9549203786306784903` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323650 has offset 0).

The definition of A323650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323650.P9549203786306784903

`A323651(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A323650

/-- `A323651(n)+a(n-1)` -/
def P9549203786306784903.Spec : Prop :=
  ∀ n, P9549203786306784903.a n = A323650 n

theorem P9549203786306784903.correct : P9549203786306784903.Spec := by
  intro n
  simp only [A323650]

end A323650

/-! ## A323650.P9310772609803666278

`∑[A323651(abs(1-n)+1)]-2`
-/

namespace A323650.P9310772609803666278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323651 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A323650.P9310772609803666278

namespace A323650

/-- `∑[A323651(abs(1-n)+1)]-2` -/
def P9310772609803666278.Spec : Prop :=
  ∀ n, P9310772609803666278.a n = A323650 n

end A323650

/-! ## A323650.P12331761461257991950

`∑[A323651(A028310(n))-1]+n`
-/

namespace A323650.P12331761461257991950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323651 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A323650.P12331761461257991950

namespace A323650

/-- `∑[A323651(A028310(n))-1]+n` -/
def P12331761461257991950.Spec : Prop :=
  ∀ n, P12331761461257991950.a n = A323650 n

end A323650

/-! ## A323650.P9416537974132134082

`∑[A323651(n)-a(n%A033999(n))]` with `a(0)=0`
-/

namespace A323650.P9416537974132134082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A323651 n - f1 (Int.tmod (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323650.P9416537974132134082

namespace A323650

/-- `∑[A323651(n)-a(n%A033999(n))]` -/
def P9416537974132134082.Spec : Prop :=
  ∀ n, P9416537974132134082.a n = A323650 n

end A323650

/-! ## A323650.P8041604936707235305

`∑[A057427(n)*A323651(A028310(n))]`
-/

namespace A323650.P8041604936707235305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A323651 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323650.P8041604936707235305

namespace A323650

/-- `∑[A057427(n)*A323651(A028310(n))]` -/
def P8041604936707235305.Spec : Prop :=
  ∀ n, P8041604936707235305.a n = A323650 n

end A323650

/-! ## A323650.P17773050540653441308

`∑[A323651(A028310(n))%A000070(n)]`
-/

namespace A323650.P17773050540653441308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323651 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323650.P17773050540653441308

namespace A323650

/-- `∑[A323651(A028310(n))%A000070(n)]` -/
def P17773050540653441308.Spec : Prop :=
  ∀ n, P17773050540653441308.a n = A323650 n

end A323650

/-! ## A323650.P10063973509324069943

`∑[A323651(n)-a(A000040(2*n)%2-1)]` with `a(0)=0`
-/

namespace A323650.P10063973509324069943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A323651 n - f1 (Int.tmod (A000040 (2 * n)) 2 - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323650.P10063973509324069943

namespace A323650

/-- `∑[A323651(n)-a(A000040(2*n)%2-1)]` -/
def P10063973509324069943.Spec : Prop :=
  ∀ n, P10063973509324069943.a n = A323650 n

end A323650

/-! ## A323650.P8573359798526537165

`A147562(n)-A014681(A147562(A004526(n)))`
-/

namespace A323650.P8573359798526537165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n - A014681 (A147562 (A004526 n).toNat).toNat

end

end A323650.P8573359798526537165

namespace A323650

/-- `A147562(n)-A014681(A147562(A004526(n)))` -/
def P8573359798526537165.Spec : Prop :=
  ∀ n, P8573359798526537165.a n = A323650 n

end A323650

/-! ## A323650.P7128494953883329477

`A004273(A151917(n)-A151917(A004526(n)))`
-/

namespace A323650.P7128494953883329477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151917 n - A151917 (A004526 n).toNat).toNat

end

end A323650.P7128494953883329477

namespace A323650

/-- `A004273(A151917(n)-A151917(A004526(n)))` -/
def P7128494953883329477.Spec : Prop :=
  ∀ n, P7128494953883329477.a n = A323650 n

end A323650

/-!
# A323651: Number of elements added at n-th stage to the toothpick structure of A323650.

The programs for A323651, the canonical program `A323651.P5601353070125800456` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323651 has offset 1).

The definition of A323651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323651.P5923189308572279014

`Δ[A323650(n)]`
-/

namespace A323651.P5923189308572279014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323651.P5923189308572279014

namespace A323651

/-- `Δ[A323650(n)]` -/
def P5923189308572279014.Spec : Prop :=
  ∀ n, P5923189308572279014.a n = A323651 (n + 1)

end A323651

/-! ## A323651.P5601353070125800456

`(n%2+1)*A147582(or(1, n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A323651

/-- `(n%2+1)*A147582(or(1, n))` -/
def P5601353070125800456.Spec : Prop :=
  ∀ n, P5601353070125800456.a n = A323651 (n + 1)

theorem P5601353070125800456.correct : P5601353070125800456.Spec := by
  intro n
  simp only [A323651, Nat.add_sub_cancel]

end A323651

/-! ## A323651.P14951237658834241741

`A323650(n+1)-A323650(n)`
-/

namespace A323651.P14951237658834241741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323650 (n + 1) - A323650 n

end

end A323651.P14951237658834241741

namespace A323651

/-- `A323650(n+1)-A323650(n)` -/
def P14951237658834241741.Spec : Prop :=
  ∀ n, P14951237658834241741.a n = A323651 (n + 1)

end A323651

/-! ## A323651.P1355237481900075217

`A000034(n)*A147582(or(1, n))`
-/

namespace A323651.P1355237481900075217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A147582 (Nat.lor 1 n)

end

end A323651.P1355237481900075217

namespace A323651

/-- `A000034(n)*A147582(or(1, n))` -/
def P1355237481900075217.Spec : Prop :=
  ∀ n, P1355237481900075217.a n = A323651 (n + 1)

theorem P1355237481900075217.correct : P1355237481900075217.Spec := by
  intro n
  simp only [A323651, Nat.add_sub_cancel, A323651.P1355237481900075217.a, A323651.P5601353070125800456.a, A000034, A000034.P10773112074177680709.a, A147582, A147582.P8026772899085515765.a, A048883, A048883.P5685372570370684853.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323651

/-! ## A323651.P15011494015984057821

`gcd(2, n+1)*A147582(A008619(n))`
-/

namespace A323651.P15011494015984057821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A147582 (A008619 n).toNat

end

end A323651.P15011494015984057821

namespace A323651

/-- `gcd(2, n+1)*A147582(A008619(n))` -/
def P15011494015984057821.Spec : Prop :=
  ∀ n, P15011494015984057821.a n = A323651 (n + 1)

end A323651

/-! ## A323651.P9816432694266738431

`(A000035(n)+1)*A147582(or(1, n))`
-/

namespace A323651.P9816432694266738431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A147582 (Nat.lor 1 n)

end

end A323651.P9816432694266738431

namespace A323651

/-- `(A000035(n)+1)*A147582(or(1, n))` -/
def P9816432694266738431.Spec : Prop :=
  ∀ n, P9816432694266738431.a n = A323651 (n + 1)

theorem P9816432694266738431.correct : P9816432694266738431.Spec := by
  intro n
  simp only [A323651, Nat.add_sub_cancel, A323651.P9816432694266738431.a, A323651.P5601353070125800456.a, A000035, A000035.P2023072528413494694.a, A147582, A147582.P8026772899085515765.a, A048883, A048883.P5685372570370684853.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323651

/-! ## A323651.P15075605445985475648

`(Δ[A004526(n)]+1)*A147582(or(1, n))`
-/

namespace A323651.P15075605445985475648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A147582 (Nat.lor 1 n)

end

end A323651.P15075605445985475648

namespace A323651

/-- `(Δ[A004526(n)]+1)*A147582(or(1, n))` -/
def P15075605445985475648.Spec : Prop :=
  ∀ n, P15075605445985475648.a n = A323651 (n + 1)

end A323651

/-! ## A323651.P7921700495366065399

`A080458(a(and(n, n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A323651.P7921700495366065399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A080458 (a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat).toNat

end

end A323651.P7921700495366065399

namespace A323651

/-- `A080458(a(and(n, n-2)))` -/
def P7921700495366065399.Spec : Prop :=
  ∀ n, P7921700495366065399.a n = A323651 (n + 1)

end A323651

/-! ## A323651.P2733134277638062984

`∏{e}[A269695(n), A068911(#)]`
-/

namespace A323651.P2733134277638062984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A068911 (Nat.factorization (f1 n).natAbs p)

end

end A323651.P2733134277638062984

namespace A323651

/-- `∏{e}[A269695(n), A068911(#)]` -/
def P2733134277638062984.Spec : Prop :=
  ∀ n, P2733134277638062984.a n = A323651 (n + 1)

end A323651

/-! ## A323651.P3724656976879856550

`A002264((3-and(1, n))*A147582(n+1))`
-/

namespace A323651.P3724656976879856550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((3 - (Nat.land 1 n : ℤ)) * A147582 (n + 1)).toNat

end

end A323651.P3724656976879856550

namespace A323651

/-- `A002264((3-and(1, n))*A147582(n+1))` -/
def P3724656976879856550.Spec : Prop :=
  ∀ n, P3724656976879856550.a n = A323651 (n + 1)

end A323651

/-!
# A323652: Numbers m having at least one divisor d such that m divides sigma(d).

The programs for A323652, there is no canonical definition to state claims against.
-/

/-! ## A323652.P12068483727235780101

`∪[A007691(n+1), A009242(A007691(n+1))]`
-/

namespace A323652.P12068483727235780101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009242 (A007691 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323652.P12068483727235780101

/-! ## A323652.P5390311825036686557

`∪[A007691(n+1), A107749(A348035(n+1))]`
-/

namespace A323652.P5390311825036686557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (A348035 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323652.P5390311825036686557

/-! ## A323652.P4988244034947561768

`∪[A007691(n+1), A326065(A194771(n+1))]`
-/

namespace A323652.P4988244034947561768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A194771 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323652.P4988244034947561768

/-! ## A323652.P6328557847268702526

`∪[A348031(n+1), A000203(A348035(n+1))]`
-/

namespace A323652.P6328557847268702526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A348035 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323652.P6328557847268702526

/-! ## A323652.P9408297833931222701

`∪[A000203(A348035(n+1)), A007691(n+2)]`
-/

namespace A323652.P9408297833931222701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A348035 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323652.P9408297833931222701

/-!
# A323654: Number of non-isomorphic multiset partitions of weight n with no constant parts and only two distinct vertices.

The programs for A323654, there is no canonical definition to state claims against.
-/

/-! ## A323654.P8162566263654527862

`A089870(or(A059995(n), A304967(n)))`
-/

namespace A323654.P8162566263654527862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.lor (A059995 n) (A304967 n)).toNat

end

end A323654.P8162566263654527862

/-! ## A323654.P13404515355364053436

`A340988(A240868(2*(n+2)))+A304967(n)`
-/

namespace A323654.P13404515355364053436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A240868 (2 * (n + 2))).toNat + 91) + A304967 n

end

end A323654.P13404515355364053436

/-! ## A323654.P3884749045226141299

`A304967(n)+A083914(A127383(n))`
-/

namespace A323654.P3884749045226141299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304967 n + A083914 (A127383 n).toNat

end

end A323654.P3884749045226141299

/-! ## A323654.P10488793658215017200

`A316866(A001787(n))+A304967(n)`
-/

namespace A323654.P10488793658215017200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A001787 n).toNat + A304967 n

end

end A323654.P10488793658215017200

/-! ## A323654.P11087144226363805574

`A304967(n)+A000045(A172535(n+1))`
-/

namespace A323654.P11087144226363805574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304967 n + A000045 (A172535 (n + 1)).toNat

end

end A323654.P11087144226363805574

/-!
# A323655: Number of non-isomorphic multiset partitions of weight n with at most 2 distinct vertices, or with at most 2 (not necessarily distinct) edges.

The programs for A323655, there is no canonical definition to state claims against.
-/

/-! ## A323655.P2212593768305993174

`A323656(n)+A000041(n)`
-/

namespace A323655.P2212593768305993174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323656 n + A000041 n

end

end A323655.P2212593768305993174

/-! ## A323655.P8858941196217678691

`A323656(n)+∑[A002865(n)]`
-/

namespace A323655.P8858941196217678691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323656 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323655.P8858941196217678691

/-! ## A323655.P4049845294117224608

`A000065(n)+A323656(n)+1`
-/

namespace A323655.P4049845294117224608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A323656 n + 1)

end

end A323655.P4049845294117224608

/-! ## A323655.P18073377733487591989

`A323656(n)+A054225(∑[n])`
-/

namespace A323655.P18073377733487591989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323656 n + A054225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323655.P18073377733487591989

/-! ## A323655.P4366553320034053044

`A323656(n)+A218698(A000124(n))`
-/

namespace A323655.P4366553320034053044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323656 n + A218698 (A000124 n).toNat

end

end A323655.P4366553320034053044

/-!
# A323656: Number of non-isomorphic multiset partitions of weight n with exactly 2 distinct vertices, or with exactly 2 (not necessarily distinct) edges.

The programs for A323656, there is no canonical definition to state claims against.
-/

/-! ## A323656.P6099014069432309527

`A323655(n)-A000041(n)`
-/

namespace A323656.P6099014069432309527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323655 n - A000041 n

end

end A323656.P6099014069432309527

/-! ## A323656.P14356145947961423923

`A323655(n)-∑[A002865(n)]`
-/

namespace A323656.P14356145947961423923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323655 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323656.P14356145947961423923

/-! ## A323656.P16590053933262680949

`A323655(n)-(A000065(n)+1)`
-/

namespace A323656.P16590053933262680949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323655 n - (A000065 n + 1)

end

end A323656.P16590053933262680949

/-! ## A323656.P6139003681528615269

`A323655(n)-A054225(∑[n])`
-/

namespace A323656.P6139003681528615269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323655 n - A054225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323656.P6139003681528615269

/-! ## A323656.P12572096294689213951

`A323655(n)-A218698(A000124(n))`
-/

namespace A323656.P12572096294689213951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323655 n - A218698 (A000124 n).toNat

end

end A323656.P12572096294689213951

/-!
# A323657: Number of strict solid partitions of n.

The programs for A323657, there is no canonical definition to state claims against.
-/

/-! ## A323657.P12273320517356860021

`A095720(A323301(n))`
-/

namespace A323657.P12273320517356860021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095720 (A323301 n).toNat

end

end A323657.P12273320517356860021

/-! ## A323657.P3932601050398955737

`A209900(A336718(n)+1)`
-/

namespace A323657.P3932601050398955737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A336718 n + 1).toNat

end

end A323657.P3932601050398955737

/-! ## A323657.P1745068007963388072

`A191362(3*A032020(n))`
-/

namespace A323657.P1745068007963388072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191362 (3 * A032020 n).toNat

end

end A323657.P1745068007963388072

/-! ## A323657.P4755542439244667965

`A239086(A216695(n)+A032058(n))`
-/

namespace A323657.P4755542439244667965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A216695 n + A032058 n).toNat

end

end A323657.P4755542439244667965

/-! ## A323657.P8156371768143791610

`A259899(A032020(n)*A294617(n))`
-/

namespace A323657.P8156371768143791610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A032020 n * A294617 n).toNat

end

end A323657.P8156371768143791610

/-!
# A323658: Number of bipartite graphs associated with connected transitive oriented graphs.

The programs for A323658, there is no canonical definition to state claims against.
-/

/-! ## A323658.P8492869510635204068

`A151843(A254371(n))+A001349(n)`
-/

namespace A323658.P8492869510635204068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (A254371 n).toNat + A001349 n

end

end A323658.P8492869510635204068

/-! ## A323658.P5777613544210274827

`A304311(∑[n])+A151843(A254371(n))`
-/

namespace A323658.P5777613544210274827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f1 j) + A151843 (A254371 n).toNat

end

end A323658.P5777613544210274827

/-! ## A323658.P1090883909228518489

`A295630(A124576(n+1))+A020112(n)`
-/

namespace A323658.P1090883909228518489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295630 (A124576 (n + 1)).toNat + A020112 n

end

end A323658.P1090883909228518489

/-! ## A323658.P17298315184884003131

`A024635(A064834(3*n))+A001349(n)`
-/

namespace A323658.P17298315184884003131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024635 (A064834 (3 * n)).toNat + A001349 n

end

end A323658.P17298315184884003131

/-!
# A323664: Expansion of e.g.f. exp(exp(x)*BesselI(0,2*x) - 1).

The programs for A323664, there is no canonical definition to state claims against.
-/

/-! ## A323664.P9636736739487962303

`A008612(Δ[A235496(n)²])`
-/

namespace A323664.P9636736739487962303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235496 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (f1 (n + 1) - f1 n).toNat

end

end A323664.P9636736739487962303

/-! ## A323664.P4259759616317210444

`A103221(Δ[A235496(n)²])`
-/

namespace A323664.P4259759616317210444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235496 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (n + 1) - f1 n).toNat

end

end A323664.P4259759616317210444

/-!
# A323665: a(n) is the number of vertices in the binary tree the root of which is assigned the value n and built recursively by the rule: write node's value as (2^c)*(2k+1); if c>0, create a left child with value c; if k>0, create a right child with value k.

The programs for A323665, there is no canonical definition to state claims against.
-/

/-! ## A323665.P12707723368644007594

`A196050(A358506(n+2))`
-/

namespace A323665.P12707723368644007594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A358506 (n + 2)).toNat

end

end A323665.P12707723368644007594

/-! ## A323665.P12770514674060889413

`A061775(A358506(2*(n+2)))-2`
-/

namespace A323665.P12770514674060889413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A358506 (2 * (n + 2))).toNat - 2

end

end A323665.P12770514674060889413

/-! ## A323665.P14510303630218533574

`A358372(n+2)-1`
-/

namespace A323665.P14510303630218533574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (n + 2) - 1

end

end A323665.P14510303630218533574

/-! ## A323665.P472665920954964673

`∑[Δ[A358372(n+1)]%3]`
-/

namespace A323665.P472665920954964673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323665.P472665920954964673

/-! ## A323665.P17125198061619585413

`A002113(lcm((-1)^n, A358372(n+2)))`
-/

namespace A323665.P17125198061619585413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (Int.lcm ((-1) ^ n) (A358372 (n + 2)))

end

end A323665.P17125198061619585413

/-! ## A323665.P459172915121818977

`A367614(A001227(n+1))+A358372(n+2)`
-/

namespace A323665.P459172915121818977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (A001227 (n + 1)).toNat + A358372 (n + 2)

end

end A323665.P459172915121818977

/-! ## A323665.P224723377842551756

`A359780(A128283(n+1))+A358372(n+2)`
-/

namespace A323665.P224723377842551756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (A128283 (n + 1)).toNat + A358372 (n + 2)

end

end A323665.P224723377842551756

/-! ## A323665.P887442593373913204

`A050607(A358372(n+1)+Δ[A358372(n+1)])`
-/

namespace A323665.P887442593373913204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050607 (A358372 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A323665.P887442593373913204

/-! ## A323665.P12990344910423428715

`A003796(A160467(2*n+1)*A358372(n+2))`
-/

namespace A323665.P12990344910423428715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (A160467 (2 * n + 1) * A358372 (n + 2)).toNat

end

end A323665.P12990344910423428715

/-! ## A323665.P5731016550628712658

`A261924(A038500(3*n+2)*A358372(n+2))`
-/

namespace A323665.P5731016550628712658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261924 (A038500 (3 * n + 2) * A358372 (n + 2)).toNat

end

end A323665.P5731016550628712658

/-!
# A323666: Expansion of e.g.f. exp(exp(2*x)*BesselI(0,2*x) - 1).

The programs for A323666, there is no canonical definition to state claims against.
-/

/-! ## A323666.P12081003706481118931

`and(-5, A284383(A300412(n)))`
-/

namespace A323666.P12081003706481118931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A284383 (A300412 n).toNat)

end

end A323666.P12081003706481118931

/-!
# A323667: Expansion of e.g.f. exp(BesselI(0,2*x) + BesselI(1,2*x) - 1).

The programs for A323667, there is no canonical definition to state claims against.
-/

/-! ## A323667.P10213944952170398796

`A324734(A284230(n))+A000248(n)`
-/

namespace A323667.P10213944952170398796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324734 (A284230 n).toNat + A000248 n

end

end A323667.P10213944952170398796

/-! ## A323667.P10182804902186096054

`A008624(xor(A003407(n), A129580(n)))`
-/

namespace A323667.P10182804902186096054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.xor (A003407 n) (A129580 n)).toNat

end

end A323667.P10182804902186096054

/-! ## A323667.P8200178864101375315

`A008621(A150479(n)+A001251(n+1))`
-/

namespace A323667.P8200178864101375315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150479 n + A001251 (n + 1)).toNat

end

end A323667.P8200178864101375315

/-!
# A323668: Expansion of e.g.f. exp(exp(2*x)*(BesselI(0,2*x) + BesselI(1,2*x)) - 1).

The programs for A323668, there is no canonical definition to state claims against.
-/

/-! ## A323668.P16497592836265827993

`∑[A014684(A192459(n))]`
-/

namespace A323668.P16497592836265827993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A192459 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323668.P16497592836265827993

/-!
# A323672: Expansion of e.g.f. exp(exp(x)*BesselI(1,2*x)/x - 1).

The programs for A323672, there is no canonical definition to state claims against.
-/

/-! ## A323672.P12433571945146615651

`floor(A323694(n)/A201690(n+1))`
-/

namespace A323672.P12433571945146615651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323694 n : ℚ) / (A201690 (n + 1) : ℚ)⌋

end

end A323672.P12433571945146615651

/-! ## A323672.P9968608633811311976

`A019446(A008983(n))-A000120(n)`
-/

namespace A323672.P9968608633811311976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A008983 n).toNat - A000120 n

end

end A323672.P9968608633811311976

/-! ## A323672.P13423270641294900759

`A005378(A008983(n)-A334233(n))`
-/

namespace A323672.P13423270641294900759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A008983 n - A334233 n).toNat

end

end A323672.P13423270641294900759

/-!
# A323676: Odd coefficients in Sum_{n>=0} x^n * (x^n + i)^n / (1 + i*x^(n+1))^(n+1), where i^2 = -1.

The programs for A323676, there is no canonical definition to state claims against.
-/

/-! ## A323676.P13955504645398670704

`A323675(n*(n+1))`
-/

namespace A323676.P13955504645398670704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323675 (n * (n + 1))

end

end A323676.P13955504645398670704

/-! ## A323676.P17365812667437054320

`or(1, A323675(A002378(n)))`
-/

namespace A323676.P17365812667437054320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A323675 (A002378 n).toNat)

end

end A323676.P17365812667437054320

/-! ## A323676.P17695444980530688722

`A323675(A002378(n))%A163472(n)`
-/

namespace A323676.P17695444980530688722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323675 (A002378 n).toNat) (A163472 n)

end

end A323676.P17695444980530688722

/-! ## A323676.P17454335038388586368

`A323675(A002378(n))+A151909(n+1)`
-/

namespace A323676.P17454335038388586368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323675 (A002378 n).toNat + A151909 (n + 1)

end

end A323676.P17454335038388586368

/-! ## A323676.P9868527782815965723

`A323675(A002378(n))+A004247(C(n, 2))`
-/

namespace A323676.P9868527782815965723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323675 (A002378 n).toNat + A004247 (Nat.choose n 2)

end

end A323676.P9868527782815965723

/-! ## A323676.P13403208126005656819

`A000105(C(2, n))*A323675(A002378(n))`
-/

namespace A323676.P13403208126005656819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (Nat.choose 2 n) * A323675 (A002378 n).toNat

end

end A323676.P13403208126005656819

/-! ## A323676.P11255209050017778056

`A000602(C(2, n))*A323675(A002378(n))`
-/

namespace A323676.P11255209050017778056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 (Nat.choose 2 n) * A323675 (A002378 n).toNat

end

end A323676.P11255209050017778056

/-!
# A323677: Coefficients of x^(n*(n+2)) in Sum_{n>=0} x^n * (1 + x^n)^n / (1 + x^(n+1))^(n+1).

The programs for A323677, there is no canonical definition to state claims against.
-/

/-! ## A323677.P17332299616467269503

`A323557(n*(n+2))`
-/

namespace A323677.P17332299616467269503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (n * (n + 2))

end

end A323677.P17332299616467269503

/-! ## A323677.P15094760142589369971

`or(A000007(n), A323557(A005563(n)))`
-/

namespace A323677.P15094760142589369971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A323557 (A005563 n).toNat)

end

end A323677.P15094760142589369971

/-! ## A323677.P15047427807704629118

`A323557(A005563(n))%A234919(n+1)`
-/

namespace A323677.P15047427807704629118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323557 (A005563 n).toNat) (A234919 (n + 1))

end

end A323677.P15047427807704629118

/-! ## A323677.P1082277037935367259

`A323557(A005563(n))+A000007(A005408(n))`
-/

namespace A323677.P1082277037935367259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (A005563 n).toNat + A000007 (A005408 n).toNat

end

end A323677.P1082277037935367259

/-! ## A323677.P18367749674149238110

`A323557(A005563(n))/A008683(A006881(n+1))`
-/

namespace A323677.P18367749674149238110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323557 (A005563 n).toNat : ℚ) / (A008683 (A006881 (n + 1)).toNat : ℚ)

end

end A323677.P18367749674149238110

/-!
# A323678: Coefficients of x^(n*(n+3)) in Sum_{n>=0} x^n * (1 + x^n)^n / (1 + x^(n+1))^(n+1).

The programs for A323678, there is no canonical definition to state claims against.
-/

/-! ## A323678.P5848902650589669961

`A323557(n*(n+3))`
-/

namespace A323678.P5848902650589669961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (n * (n + 3))

end

end A323678.P5848902650589669961

/-! ## A323678.P10654198767701956003

`abs(A323557(A005843(n)+A002378(n)))`
-/

namespace A323678.P10654198767701956003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323557 (A005843 n + A002378 n).toNat|

end

end A323678.P10654198767701956003

/-! ## A323678.P15865999953831236697

`A323557(A005843(n)+A002378(n))+A000007(n+1)`
-/

namespace A323678.P15865999953831236697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (A005843 n + A002378 n).toNat + A000007 (n + 1)

end

end A323678.P15865999953831236697

/-! ## A323678.P15338367784687271061

`A323557(A005843(n)+A002378(n))+A000038(n+1)`
-/

namespace A323678.P15338367784687271061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (A005843 n + A002378 n).toNat + A000038 (n + 1)

end

end A323678.P15338367784687271061

/-! ## A323678.P8363114957246707947

`A323557(A005843(n)+A002378(n))/A062157(n+1)²`
-/

namespace A323678.P8363114957246707947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323557 (A005843 n + A002378 n).toNat : ℚ) / (A062157 (n + 1) ^ 2 : ℚ)

end

end A323678.P8363114957246707947

/-!
# A323679: a(n) equals the coefficient of x^(n*(n+1)) in Sum_{m>=0} x^m * (1 + x^m)^m / (1 + x^(m+1))^(m+1) for n >= 0.

The programs for A323679, there is no canonical definition to state claims against.
-/

/-! ## A323679.P1191743513025089670

`A323557(n*(n+1))`
-/

namespace A323679.P1191743513025089670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (n * (n + 1))

end

end A323679.P1191743513025089670

/-! ## A323679.P13543875860294491079

`abs(A323557(n²+n))`
-/

namespace A323679.P13543875860294491079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323557 (n ^ 2 + n)|

end

end A323679.P13543875860294491079

/-! ## A323679.P2615076752418410600

`or(1, A323557(A002378(n)))`
-/

namespace A323679.P2615076752418410600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A323557 (A002378 n).toNat)

end

end A323679.P2615076752418410600

/-! ## A323679.P3773131832862590738

`record[A323557(n*A035214(n))]`
-/

namespace A323679.P3773131832862590738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 ((n : ℤ) * A035214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323679.P3773131832862590738

/-! ## A323679.P12106820549321257629

`or(1, A323557(A005563(n)-n))`
-/

namespace A323679.P12106820549321257629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A323557 (A005563 n - (n : ℤ)).toNat)

end

end A323679.P12106820549321257629

/-! ## A323679.P5911038679710516327

`lcm(A033999(n), A323557(A002378(n)))`
-/

namespace A323679.P5911038679710516327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A323557 (A002378 n).toNat)

end

end A323679.P5911038679710516327

/-! ## A323679.P115674493782018539

`A323557(A002378(n))+A000007(n+1)`
-/

namespace A323679.P115674493782018539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (A002378 n).toNat + A000007 (n + 1)

end

end A323679.P115674493782018539

/-! ## A323679.P3984938350561700321

`A323557(A002378(n))+A000038(n+1)`
-/

namespace A323679.P3984938350561700321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (A002378 n).toNat + A000038 (n + 1)

end

end A323679.P3984938350561700321

/-! ## A323679.P13020412786496702150

`A033999(2*n)*A323557(A002378(n))`
-/

namespace A323679.P13020412786496702150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A323557 (A002378 n).toNat

end

end A323679.P13020412786496702150

/-! ## A323679.P14414041194254591204

`A323557(A002378(n))%A234919(n+1)`
-/

namespace A323679.P14414041194254591204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323557 (A002378 n).toNat) (A234919 (n + 1))

end

end A323679.P14414041194254591204

/-! ## A323679.P12495939060583084538

`A323557(A002378(n))-n*A000007(n)`
-/

namespace A323679.P12495939060583084538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (A002378 n).toNat - (n : ℤ) * A000007 n

end

end A323679.P12495939060583084538

/-! ## A323679.P11157992838231269357

`A323557(A002378(n))-n*A000038(n)`
-/

namespace A323679.P11157992838231269357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (A002378 n).toNat - (n : ℤ) * A000038 n

end

end A323679.P11157992838231269357

/-! ## A323679.P12999533013711283189

`A323557(∑[A005843(n)])+A000007(n+1)`
-/

namespace A323679.P12999533013711283189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323557 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000007 (n + 1)

end

end A323679.P12999533013711283189

/-!
# A323680: G.f.: Sum_{n>=0} x^n * ((1+x)^n + 1)^n / (1 + x*(1+x)^n)^(n+1).

The programs for A323680, there is no canonical definition to state claims against.
-/

/-! ## A323680.P7523335401028928800

`A347645(A056953(n))`
-/

namespace A323680.P7523335401028928800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347645 (A056953 n).toNat

end

end A323680.P7523335401028928800

/-! ## A323680.P1732895845996825006

`A340320(A226875(n))`
-/

namespace A323680.P1732895845996825006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340320 (A226875 n).toNat

end

end A323680.P1732895845996825006

/-! ## A323680.P14131215038123917472

`A359679(A036671(n+1))`
-/

namespace A323680.P14131215038123917472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359679 (A036671 (n + 1)).toNat

end

end A323680.P14131215038123917472

/-!
# A323681: G.f.: Sum_{n>=0} x^n*((1+x)^n + i)^n / (1 + i*x*(1+x)^n)^(n+1), where i^2 = -1.

The programs for A323681, there is no canonical definition to state claims against.
-/

/-! ## A323681.P10676751076274310891

`A306005(n)+A300293(A384111(n))`
-/

namespace A323681.P10676751076274310891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306005 n + A300293 (A384111 n).toNat

end

end A323681.P10676751076274310891

/-! ## A323681.P435103381343700879

`A282380(A005493(n))+A000110(n)`
-/

namespace A323681.P435103381343700879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282380 (A005493 n).toNat + A000110 n

end

end A323681.P435103381343700879

/-! ## A323681.P6245977187177231316

`A124136(A082582(n))-A353392(n)`
-/

namespace A323681.P6245977187177231316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124136 (A082582 n).toNat - A353392 n

end

end A323681.P6245977187177231316

/-!
# A323682: G.f.: Sum_{n>=0} x^n * ((1+x)^n + sqrt(2)*i)^n / (1 + sqrt(2)*i*x*(1+x)^n)^(n+1), where i^2 = -1.

The programs for A323682, there is no canonical definition to state claims against.
-/

/-! ## A323682.P16575204912853453465

`A223487(A024718(n))+A000045(A055129(n+1))`
-/

namespace A323682.P16575204912853453465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223487 (A024718 n).toNat + A000045 (A055129 (n + 1)).toNat

end

end A323682.P16575204912853453465

/-! ## A323682.P7277056931998551723

`A093906(a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=9`
-/

namespace A323682.P7277056931998551723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 9] fun n a =>
  A093906 (a (n - 1) + 2).toNat

end

end A323682.P7277056931998551723

/-!
# A323683: G.f.: Sum_{n>=0} x^n * ((1+x)^n + sqrt(3)*i)^n / (1 + sqrt(3)*i*x*(1+x)^n)^(n+1), where i^2 = -1.

The programs for A323683, there is no canonical definition to state claims against.
-/

/-! ## A323683.P15106410605074672703

`A171166(a(n-1))+7` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A323683.P15106410605074672703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A171166 (a (n - 1)).toNat + 7

end

end A323683.P15106410605074672703

/-!
# A323684: G.f.: Sum_{n>=0} x^n * ((1+x)^n + 2*i)^n / (1 + 2*i*x*(1+x)^n)^(n+1), where i^2 = -1.

The programs for A323684, there is no canonical definition to state claims against.
-/

/-! ## A323684.P12799529233203912614

`A207829(A322192(n))`
-/

namespace A323684.P12799529233203912614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207829 (A322192 n).toNat

end

end A323684.P12799529233203912614

/-! ## A323684.P13136804507152658165

`A319184(A079225(n))+1`
-/

namespace A323684.P13136804507152658165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319184 (A079225 n).toNat + 1

end

end A323684.P13136804507152658165

/-!
# A323685: G.f.: Sum_{n>=0} x^n * ((1+x)^n + sqrt(5)*i)^n / (1 + sqrt(5)*i*x*(1+x)^n)^(n+1), where i^2 = -1.

The programs for A323685, there is no canonical definition to state claims against.
-/

/-! ## A323685.P5947828228958620531

`or(n, A037203(A228842(n)))`
-/

namespace A323685.P5947828228958620531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A037203 (A228842 n).toNat)

end

end A323685.P5947828228958620531

/-! ## A323685.P16059658723645181437

`or(n, A382180(A044813(n+1)))`
-/

namespace A323685.P16059658723645181437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A382180 (A044813 (n + 1)).toNat)

end

end A323685.P16059658723645181437

/-!
# A323686: G.f.: Sum_{n>=0} x^n * ((1+x)^n + (-1)^n)^n / (1 - (-1)^n*x*(1+x)^n)^(n+1).

The programs for A323686, there is no canonical definition to state claims against.
-/

/-! ## A323686.P18358137174351541673

`A322401(floor(A301265(n)+ϕ*n)+4)`
-/

namespace A323686.P18358137174351541673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322401 (⌊(A301265 n : ℝ) + Real.goldenRatio * (n : ℝ)⌋ + 4).toNat

end

end A323686.P18358137174351541673

/-!
# A323687: Odd coefficients in Sum_{n>=0} (x^n + i)^n / (1 + i*x^n)^(n+1), in which the constant term is taken to be 1.

The programs for A323687, there is no canonical definition to state claims against.
-/

/-! ## A323687.P17636935322554751052

`A323689(n²)`
-/

namespace A323687.P17636935322554751052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323689 (n ^ 2)

end

end A323687.P17636935322554751052

/-! ## A323687.P5430909103816345955

`abs(A323689(A000290(n)))`
-/

namespace A323687.P5430909103816345955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323689 (A000290 n).toNat|

end

end A323687.P5430909103816345955

/-! ## A323687.P10670121131500977762

`A323689(A000290(n))^A178334(n)`
-/

namespace A323687.P10670121131500977762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323689 (A000290 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A323687.P10670121131500977762

/-! ## A323687.P14513940451885329687

`A130296(A008706(n))*A323689(A000290(n))`
-/

namespace A323687.P14513940451885329687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (A008706 n).toNat * A323689 (A000290 n).toNat

end

end A323687.P14513940451885329687

/-! ## A323687.P10783133438266861170

`A147565(A057944(n))*A323689(A000290(n))`
-/

namespace A323687.P10783133438266861170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147565 (A057944 n).toNat * A323689 (A000290 n).toNat

end

end A323687.P10783133438266861170

/-! ## A323687.P8424584469825779315

`A323689(A000290(n))%A123194(A047461(n+1))`
-/

namespace A323687.P8424584469825779315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323689 (A000290 n).toNat) (A123194 (A047461 (n + 1)).toNat)

end

end A323687.P8424584469825779315

/-! ## A323687.P3125126014974004986

`A001222(A154552(n+1))*A323689(A000290(n))`
-/

namespace A323687.P3125126014974004986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A154552 (n + 1)).toNat * A323689 (A000290 n).toNat

end

end A323687.P3125126014974004986

/-!
# A323691: Odd coefficients in Sum_{n>=0} (x^(n+1) + i)^n / (1 + i*x^n)^(n+1), in which the constant term is taken to be 1.

The programs for A323691, there is no canonical definition to state claims against.
-/

/-! ## A323691.P5601629097318392740

`A323690(n*(n+1))`
-/

namespace A323691.P5601629097318392740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323690 (n * (n + 1))

end

end A323691.P5601629097318392740

/-! ## A323691.P10428842928100221661

`or(1, A323690(A002378(n)))`
-/

namespace A323691.P10428842928100221661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A323690 (A002378 n).toNat)

end

end A323691.P10428842928100221661

/-! ## A323691.P11984107695213074641

`char[A025480(n)]*A323690(A002378(n))`
-/

namespace A323691.P11984107695213074641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A323690 (A002378 n).toNat

end

end A323691.P11984107695213074641

/-! ## A323691.P17012077010412307874

`A323690(A002378(n))%A057754(n+1)`
-/

namespace A323691.P17012077010412307874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323690 (A002378 n).toNat) (A057754 (n + 1))

end

end A323691.P17012077010412307874

/-! ## A323691.P14404799515727314076

`A007318(C(2, n))*A323690(A002378(n))`
-/

namespace A323691.P14404799515727314076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A323690 (A002378 n).toNat

end

end A323691.P14404799515727314076

/-! ## A323691.P7274206970768892063

`A323690(A002378(n))+char[A254894(n+1)]`
-/

namespace A323691.P7274206970768892063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323690 (A002378 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323691.P7274206970768892063

/-! ## A323691.P12231922840701832281

`A323690(A002378(n))+char[A000124(n+6)²]`
-/

namespace A323691.P12231922840701832281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 6) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323690 (A002378 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323691.P12231922840701832281

/-! ## A323691.P2939027030582716079

`A053119(A057944(n))*A323690(A002378(n))`
-/

namespace A323691.P2939027030582716079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A057944 n).toNat * A323690 (A002378 n).toNat

end

end A323691.P2939027030582716079

/-! ## A323691.P2041848033412925668

`char[A002262(n)]*A323690(A002378(n))`
-/

namespace A323691.P2041848033412925668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A323690 (A002378 n).toNat

end

end A323691.P2041848033412925668

/-!
# A323692: G.f. satisfies: A(x) = x + A( A(x)^3 + A(x)^4 ).

The programs for A323692, there is no canonical definition to state claims against.
-/

/-! ## A323692.P1265945954822836711

`A217358(n+1)+A210717(A198313(n))`
-/

namespace A323692.P1265945954822836711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217358 (n + 1) + A210717 (A198313 n).toNat

end

end A323692.P1265945954822836711

/-! ## A323692.P10534368446090992193

`A123578(or(A020032(n), A020048(n)))`
-/

namespace A323692.P10534368446090992193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.lor (A020032 n) (A020048 n)).toNat

end

end A323692.P10534368446090992193

/-! ## A323692.P14271533794761504281

`A217358(n+1)+A129251(A328436(n))`
-/

namespace A323692.P14271533794761504281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217358 (n + 1) + A129251 (A328436 n).toNat

end

end A323692.P14271533794761504281

/-! ## A323692.P3722589765697511348

`A269245(A364277(n))+A217358(n+1)`
-/

namespace A323692.P3722589765697511348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269245 (A364277 n).toNat + A217358 (n + 1)

end

end A323692.P3722589765697511348

/-! ## A323692.P1710320533690863787

`A217358(n+1)+A122841(A074301(n+1))`
-/

namespace A323692.P1710320533690863787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217358 (n + 1) + A122841 (A074301 (n + 1)).toNat

end

end A323692.P1710320533690863787

/-!
# A323693: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = (n+1)^2 * [x^(n-1)] A(x)^(n+1) for n >= 1 with A'(0) = 1.

The programs for A323693, there is no canonical definition to state claims against.
-/

/-! ## A323693.P786765108520332927

`A307561(A307567(n)+A292433(n))`
-/

namespace A323693.P786765108520332927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307561 (A307567 n + A292433 n).toNat

end

end A323693.P786765108520332927

/-!
# A323694: a(n) = [x^n] G(x)^(n+1) / (n+1)^2 for n >= 0, where G(x) is the g.f. of A323693.

The programs for A323694, there is no canonical definition to state claims against.
-/

/-! ## A323694.P9906842463644366103

`A393629(n+1)/(n+1)`
-/

namespace A323694.P9906842463644366103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393629 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A323694.P9906842463644366103

/-! ## A323694.P1183721792372702030

`A216733(n+1)/(n+1)²`
-/

namespace A323694.P1183721792372702030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216733 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A323694.P1183721792372702030

/-!
# A323696: a(n) = [x^(n*(n+2))] Sum_{m>=0} x^m * (1 - x^(m+1))^m / (1 + x^(m+1))^(m+1).

The programs for A323696, there is no canonical definition to state claims against.
-/

/-! ## A323696.P13252379668901584312

`A323695(n*(n+2))`
-/

namespace A323696.P13252379668901584312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323695 (n * (n + 2))

end

end A323696.P13252379668901584312

/-! ## A323696.P1399142050168294237

`or(1, A323695(A005563(n)))`
-/

namespace A323696.P1399142050168294237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A323695 (A005563 n).toNat)

end

end A323696.P1399142050168294237

/-! ## A323696.P1425358561433398822

`A033999(n)²*A323695(A005563(n))`
-/

namespace A323696.P1425358561433398822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A323695 (A005563 n).toNat

end

end A323696.P1425358561433398822

/-! ## A323696.P14610671262721279422

`A323695(A005563(n))%A234919(n+1)`
-/

namespace A323696.P14610671262721279422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323695 (A005563 n).toNat) (A234919 (n + 1))

end

end A323696.P14610671262721279422

/-! ## A323696.P11479487289069082912

`A007318(∑[n]-n)*A323695(A005563(n))`
-/

namespace A323696.P11479487289069082912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n) * A323695 (A005563 n).toNat

end

end A323696.P11479487289069082912

/-! ## A323696.P3945749938160781829

`A323695(A005563(n))/A007318(C(n+2, 2))`
-/

namespace A323696.P3945749938160781829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323695 (A005563 n).toNat : ℚ) / (A007318 (Nat.choose (n + 2) 2) : ℚ)

end

end A323696.P3945749938160781829

/-! ## A323696.P227902806587938577

`A323695(A005563(n))/(A005408(n)-2*n)`
-/

namespace A323696.P227902806587938577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323695 (A005563 n).toNat : ℚ) / (A005408 n - (2 * n : ℤ) : ℚ)

end

end A323696.P227902806587938577

/-! ## A323696.P12533811258383032708

`A323695(A005563(n))+A001222((n+1)²)%2`
-/

namespace A323696.P12533811258383032708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323695 (A005563 n).toNat + Int.tmod (A001222 ((n + 1) ^ 2)) 2

end

end A323696.P12533811258383032708

/-! ## A323696.P17460878893336186797

`A323695(A005563(n))/A008683(A014963(n+1))²`
-/

namespace A323696.P17460878893336186797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323695 (A005563 n).toNat : ℚ) / (A008683 (A014963 (n + 1)).toNat ^ 2 : ℚ)

end

end A323696.P17460878893336186797

/-! ## A323696.P13123934552666153943

`(A036016(n)/A258741(n))²*A323695(A005563(n))`
-/

namespace A323696.P13123934552666153943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A036016 n : ℚ) / (A258741 n : ℚ)) ^ 2 * (A323695 (A005563 n).toNat : ℚ)

end

end A323696.P13123934552666153943

/-!
# A323698: Primes of the form 3^j - 2^k, for j>=0, k>=0.

The programs for A323698, there is no canonical definition to state claims against.
-/

/-! ## A323698.P16329773851070574290

`p?[A192111(n+1)]`
-/

namespace A323698.P16329773851070574290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323698.P16329773851070574290

/-! ## A323698.P14392456983251264306

`p?[record[A192111(A052938(n))]]`
-/

namespace A323698.P14392456983251264306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323698.P14392456983251264306

/-! ## A323698.P11288096701660118568

`p?[record[A192111(A193592(n))]]`
-/

namespace A323698.P11288096701660118568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323698.P11288096701660118568

/-! ## A323698.P1324711230450787016

`p?[record[A192111(A286533(n))]]`
-/

namespace A323698.P1324711230450787016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (A286533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323698.P1324711230450787016

/-! ## A323698.P6062723672206957381

`p?[record[A192111(A291769(n))]]`
-/

namespace A323698.P6062723672206957381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323698.P6062723672206957381

/-!
# A323699: Number of uncrossed knight's walks as specified in A323700, counting isomorphisms only once.

The programs for A323699, there is no canonical definition to state claims against.
-/

/-! ## A323699.P15966167730666501250

`A352976(A344251(n+1)-A000129(n))`
-/

namespace A323699.P15966167730666501250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352976 (A344251 (n + 1) - A000129 n).toNat

end

end A323699.P15966167730666501250

