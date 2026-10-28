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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
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
# A356600: a(n) = n! * Sum_{k=1..n} sigma_2(k)/(k * (n-k)!).

The programs for A356600, the canonical program `A356600.P7918703899342762227` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356600 has offset 1).

The definition of A356600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356600.P7918703899342762227

`(n+1)!*∑{#}[n, A001157(#+1)/((#+1)*(n+1-(#+1))!)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A356600

/-- `(n+1)!*∑{#}[n, A001157(#+1)/((#+1)*(n+1-(#+1))!)]` -/
def P7918703899342762227.Spec : Prop :=
  ∀ n, P7918703899342762227.a n = (A356600 (n + 1) : ℚ)

end A356600

/-!
# A356603: Position in A356226 of first appearance of the n-th composition in standard order (row n of A066099).

The programs for A356603, there is no canonical definition to state claims against.
-/

/-! ## A356603.P1622010296496849613

`A319525(A057335(n))`
-/

namespace A356603.P1622010296496849613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (A057335 n).toNat

end

end A356603.P1622010296496849613

/-! ## A356603.P5841998138477106348

`∏{e}[A283477(n), A003627(#)]`
-/

namespace A356603.P5841998138477106348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003627 (Nat.factorization (f1 n).natAbs p)

end

end A356603.P5841998138477106348

/-! ## A356603.P6675514203378698378

`A227389(A303540(3*n+2)+A241683(n))`
-/

namespace A356603.P6675514203378698378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (A303540 (3 * n + 2) + A241683 n).toNat

end

end A356603.P6675514203378698378

/-!
# A356605: Number of integer compositions of n into odd parts covering an interval of odd positive integers.

The programs for A356605, there is no canonical definition to state claims against.
-/

/-! ## A356605.P16334857188288429073

`A327036(A303756(n+1)+floor((3/2)^n))`
-/

namespace A356605.P16334857188288429073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A303756 (n + 1) + ⌊((3 : ℚ) / 2) ^ n⌋).toNat

end

end A356605.P16334857188288429073

/-! ## A356605.P11729476634376803174

`A122921(or(A131408(n), A288403(n)))`
-/

namespace A356605.P11729476634376803174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (Int.lor (A131408 n) (A288403 n)).toNat

end

end A356605.P11729476634376803174

/-!
# A356606: Number of strict integer partitions of n where all parts have neighbors.

The programs for A356606, there is no canonical definition to state claims against.
-/

/-! ## A356606.P5099532222985767546

`A000009(n)-A356607(n)`
-/

namespace A356606.P5099532222985767546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A356607 n

end

end A356606.P5099532222985767546

/-! ## A356606.P17398953198734417845

`A364916(C(n+1, 2))-A356607(n)`
-/

namespace A356606.P17398953198734417845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (Nat.choose (n + 1) 2) - A356607 n

end

end A356606.P17398953198734417845

/-! ## A356606.P15111313105806039427

`A234323(A255047(n+4)-A028310(3*n))`
-/

namespace A356606.P15111313105806039427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A255047 (n + 4) - A028310 (3 * n)).toNat

end

end A356606.P15111313105806039427

/-! ## A356606.P9710826534814489278

`A234323(xor(A028310(3*n), A255047(n+4)))`
-/

namespace A356606.P9710826534814489278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (Int.xor (A028310 (3 * n)) (A255047 (n + 4))).toNat

end

end A356606.P9710826534814489278

/-! ## A356606.P17104925509431725669

`A396720(A083052(n+1))`
-/

namespace A356606.P17104925509431725669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396720 (A083052 (n + 1)).toNat

end

end A356606.P17104925509431725669

/-!
# A356607: Number of strict integer partitions of n with at least one neighborless part.

The programs for A356607, there is no canonical definition to state claims against.
-/

/-! ## A356607.P6563451713053486279

`A000009(n)-A356606(n)`
-/

namespace A356607.P6563451713053486279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A356606 n

end

end A356607.P6563451713053486279

/-! ## A356607.P17747731271651123913

`A111133(n)+1-A356606(n)`
-/

namespace A356607.P17747731271651123913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A356606 n)

end

end A356607.P17747731271651123913

/-! ## A356607.P8370191394541814375

`A052839(n)+A057428(n)-A356606(n)`
-/

namespace A356607.P8370191394541814375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n + (A057428 n - A356606 n)

end

end A356607.P8370191394541814375

/-! ## A356607.P3204333806788515475

`A025147(n)+A096765(n)-A356606(n)`
-/

namespace A356607.P3204333806788515475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - A356606 n)

end

end A356607.P3204333806788515475

/-! ## A356607.P16094810910715976611

`A201377(∑[n])-A356606(n)`
-/

namespace A356607.P16094810910715976611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201377 (∑ j ∈ Finset.range (n + 1), f1 j) - A356606 n

end

end A356607.P16094810910715976611

/-!
# A356608: a(n) = n! * Sum_{k=0..floor(n/4)} (n - 4*k)^k/(24^k * (n - 4*k)!).

The programs for A356608, the canonical program `A356608.P15968281373479262459` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356608 has offset 0).

The definition of A356608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356608.P15968281373479262459

`n!*∑{#}[floor(n/4), (n-4*#)^#/(24^#*(n-4*#)!)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356608

/-- `n!*∑{#}[floor(n/4), (n-4*#)^#/(24^#*(n-4*#)!)]` -/
def P15968281373479262459.Spec : Prop :=
  ∀ n, P15968281373479262459.a n = (A356608 n : ℚ)

end A356608

/-!
# A356609: Numbers k that can be written as the sum of 6 divisors of k (not necessarily distinct).

The programs for A356609, there is no canonical definition to state claims against.
-/

/-! ## A356609.P9549094542449085904

`lt[0, A356920(n+1)]+1`
-/

namespace A356609.P9549094542449085904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A356609.P9549094542449085904

/-! ## A356609.P5848795967212340289

`A056757(n+2)*A323308(A001248(n+3))`
-/

namespace A356609.P5848795967212340289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 2) * A323308 (A001248 (n + 3)).toNat

end

end A356609.P5848795967212340289

/-! ## A356609.P9087146963688943947

`lt[A007429(n+3), A123285(A032741(n))]`
-/

namespace A356609.P9087146963688943947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123285 ((A032741 n).toNat + 21)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356609.P9087146963688943947

/-! ## A356609.P11789055978374434203

`A234521(n+3)%A384095(n+1)`
-/

namespace A356609.P11789055978374434203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234521 (n + 3)) (A384095 (n + 1))

end

end A356609.P11789055978374434203

/-!
# A356614: Number of SAWs crossing a triangular domain of the hexagonal lattice and including the top vertex.

The programs for A356614, there is no canonical definition to state claims against.
-/

/-! ## A356614.P14261099900505226131

`A057117(A323118(n))+A001590(n)`
-/

namespace A356614.P14261099900505226131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 (A323118 n).toNat + A001590 n

end

end A356614.P14261099900505226131

/-!
# A356615: Number of SAPs crossing a triangular domain of the hexagonal lattice.

The programs for A356615, there is no canonical definition to state claims against.
-/

/-! ## A356615.P9507857966157196006

`A072774(A282776(∑[n]))`
-/

namespace A356615.P9507857966157196006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (A282776 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A356615.P9507857966157196006

/-!
# A356616: Number of SAPs crossing a triangular domain of the hexagonal lattice and including top vertex.

The programs for A356616, there is no canonical definition to state claims against.
-/

/-! ## A356616.P15369297623911320130

`A236850(A002105(n+1))+A070046(n+1)`
-/

namespace A356616.P15369297623911320130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236850 (A002105 (n + 1)).toNat + A070046 (n + 1)

end

end A356616.P15369297623911320130

/-!
# A356617: Number of square lattice worms w_n.

The programs for A356617, there is no canonical definition to state claims against.
-/

/-! ## A356617.P18427996089009845395

`A007078(A243082(n))`
-/

namespace A356617.P18427996089009845395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A243082 n).toNat

end

end A356617.P18427996089009845395

/-! ## A356617.P2437485505413645019

`A007306(A288953(n))`
-/

namespace A356617.P2437485505413645019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A288953 n).toNat

end

end A356617.P2437485505413645019

/-! ## A356617.P12172046300857861639

`A007078(A300520(n))`
-/

namespace A356617.P12172046300857861639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A300520 n).toNat

end

end A356617.P12172046300857861639

/-!
# A356618: Number of triangular lattice worms w_n.

The programs for A356618, there is no canonical definition to state claims against.
-/

/-! ## A356618.P12339031382799227334

`A132270((∑[2^n]+2)²)`
-/

namespace A356618.P12339031382799227334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 ((∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2)

end

end A356618.P12339031382799227334

/-! ## A356618.P4601575686001485968

`A138999(4*(2^n+4^n-1))`
-/

namespace A356618.P4601575686001485968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (4 * ((2 ^ n : ℤ) + ((4 ^ n : ℤ) - 1))).toNat

end

end A356618.P4601575686001485968

/-!
# A356619: a(n) = number of k-tuples (u(1), u(2), ..., u(k)) with 1 <= u(1) < u(2) < ... < u(k) <= n such that u(i) - u(i-1) <= 3 for i = 2,...,k.

The programs for A356619, the canonical program `A356619.P17145051977590395584` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356619 has offset 0).

The definition of A356619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356619.P14351668164101709638

`ogf((x+x^2+x^3)/(1-3x+2x^2+x^4-x^5))`
-/

namespace A356619.P14351668164101709638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -3, 2, 0, 1, -1] n

end

end A356619.P14351668164101709638

namespace A356619

/-- `ogf((x+x^2+x^3)/(1-3x+2x^2+x^4-x^5))` -/
def P14351668164101709638.Spec : Prop :=
  ∀ n, P14351668164101709638.a n = A356619 n

end A356619

/-! ## A356619.P5821930837710592164

`A221949(n+2)-1`
-/

namespace A356619.P5821930837710592164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221949 (n + 2) - 1

end

end A356619.P5821930837710592164

namespace A356619

/-- `A221949(n+2)-1` -/
def P5821930837710592164.Spec : Prop :=
  ∀ n, P5821930837710592164.a n = A356619 n

end A356619

/-! ## A356619.P17145051977590395584

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11, a(4)=25`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356619

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` -/
def P17145051977590395584.Spec : Prop :=
  ∀ n, P17145051977590395584.a n = A356619 n

theorem P17145051977590395584.correct : P17145051977590395584.Spec := by
  intro n
  simp only [A356619]

end A356619

/-! ## A356619.P14277320140911830736

`∑[ogf((x+x^2+x^3)/(1-2x+x^4))]`
-/

namespace A356619.P14277320140911830736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -2, 0, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P14277320140911830736

namespace A356619

/-- `∑[ogf((x+x^2+x^3)/(1-2x+x^4))]` -/
def P14277320140911830736.Spec : Prop :=
  ∀ n, P14277320140911830736.a n = A356619 n

end A356619

/-! ## A356619.P1914007910779108965

`∑[a(n-1)+3+a(n-2)+a(n-3)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A356619.P1914007910779108965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 7] fun n f1 =>
  f1 (n - 1) + 3 + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P1914007910779108965

namespace A356619

/-- `∑[a(n-1)+3+a(n-2)+a(n-3)]` -/
def P1914007910779108965.Spec : Prop :=
  ∀ n, (P1914007910779108965.a n : ℤ) = A356619 n

end A356619

/-! ## A356619.P14104729694625050713

`∑[Δ[A062544(n)]-1]`
-/

namespace A356619.P14104729694625050713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P14104729694625050713

namespace A356619

/-- `∑[Δ[A062544(n)]-1]` -/
def P14104729694625050713.Spec : Prop :=
  ∀ n, P14104729694625050713.a n = A356619 n

end A356619

/-! ## A356619.P5744228886921539789

`∑[∑[A089068(n)]+n]`
-/

namespace A356619.P5744228886921539789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P5744228886921539789

namespace A356619

/-- `∑[∑[A089068(n)]+n]` -/
def P5744228886921539789.Spec : Prop :=
  ∀ n, P5744228886921539789.a n = A356619 n

end A356619

/-! ## A356619.P722022641787961062

`∑[A008937(n+1)-1]`
-/

namespace A356619.P722022641787961062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P722022641787961062

namespace A356619

/-- `∑[A008937(n+1)-1]` -/
def P722022641787961062.Spec : Prop :=
  ∀ n, P722022641787961062.a n = A356619 n

end A356619

/-! ## A356619.P8112246925184031105

`A062544(n+1)-(n+1)`
-/

namespace A356619.P8112246925184031105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062544 (n + 1) - (n + 1 : ℤ)

end

end A356619.P8112246925184031105

namespace A356619

/-- `A062544(n+1)-(n+1)` -/
def P8112246925184031105.Spec : Prop :=
  ∀ n, P8112246925184031105.a n = A356619 n

end A356619

/-! ## A356619.P830006826459804995

`A007800(n+2)-(n+2)`
-/

namespace A356619.P830006826459804995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007800 (n + 2) - (n + 2 : ℤ)

end

end A356619.P830006826459804995

namespace A356619

/-- `A007800(n+2)-(n+2)` -/
def P830006826459804995.Spec : Prop :=
  ∀ n, P830006826459804995.a n = A356619 n

end A356619

/-! ## A356619.P4573728403863628555

`∑[∑[A213816(2*n+1)]-1]`
-/

namespace A356619.P4573728403863628555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P4573728403863628555

namespace A356619

/-- `∑[∑[A213816(2*n+1)]-1]` -/
def P4573728403863628555.Spec : Prop :=
  ∀ n, P4573728403863628555.a n = A356619 n

end A356619

/-! ## A356619.P6555332276045322030

`∑[∑[A141036(n+1)]-A000213(n+1)]`
-/

namespace A356619.P6555332276045322030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P6555332276045322030

namespace A356619

/-- `∑[∑[A141036(n+1)]-A000213(n+1)]` -/
def P6555332276045322030.Spec : Prop :=
  ∀ n, P6555332276045322030.a n = A356619 n

end A356619

/-! ## A356619.P2430670929950264853

`∑[∑[A000213(n+1)]-A192804(n+1)]`
-/

namespace A356619.P2430670929950264853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A192804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P2430670929950264853

namespace A356619

/-- `∑[∑[A000213(n+1)]-A192804(n+1)]` -/
def P2430670929950264853.Spec : Prop :=
  ∀ n, P2430670929950264853.a n = A356619 n

end A356619

/-! ## A356619.P4859973556896244985

`(A027053(n+3)-A016777(n+1))/2`
-/

namespace A356619.P4859973556896244985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027053 (n + 3) - A016777 (n + 1) : ℚ) / 2

end

end A356619.P4859973556896244985

namespace A356619

/-- `(A027053(n+3)-A016777(n+1))/2` -/
def P4859973556896244985.Spec : Prop :=
  ∀ n, P4859973556896244985.a n = (A356619 n : ℚ)

end A356619

/-! ## A356619.P5874298486602721587

`(Δ[A180669(n)]+n)/2`
-/

namespace A356619.P5874298486602721587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180669 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℤ) : ℚ) / 2

end

end A356619.P5874298486602721587

namespace A356619

/-- `(Δ[A180669(n)]+n)/2` -/
def P5874298486602721587.Spec : Prop :=
  ∀ n, P5874298486602721587.a n = (A356619 n : ℚ)

end A356619

/-! ## A356619.P13512207961606171514

`(∑[A027083(n+2)]-A027083(n+2))/2`
-/

namespace A356619.P13512207961606171514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027083 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A027083 (n + 2) : ℤ) : ℚ) / 2

end

end A356619.P13512207961606171514

namespace A356619

/-- `(∑[A027083(n+2)]-A027083(n+2))/2` -/
def P13512207961606171514.Spec : Prop :=
  ∀ n, P13512207961606171514.a n = (A356619 n : ℚ)

end A356619

/-! ## A356619.P3948878597620589422

`∑[A385436(∑[n+1])]`
-/

namespace A356619.P3948878597620589422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385436 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356619.P3948878597620589422

namespace A356619

/-- `∑[A385436(∑[n+1])]` -/
def P3948878597620589422.Spec : Prop :=
  ∀ n, P3948878597620589422.a n = A356619 n

end A356619

/-!
# A356620: a(n) = number of k-tuples (u(1), u(2), ..., u(k)) with 1 <= u(1) < u(2) < ... < u(k) <= n such that u(i) - u(i-1) <= 4 for i = 2,...,k.

The programs for A356620, the canonical program `A356620.P14130885834393015363` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356620 has offset 0).

The definition of A356620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356620.P9639070691465057727

`ogf((x+x^2+x^3+x^4)/(1-3x+2x^2+x^5-x^6))`
-/

namespace A356620.P9639070691465057727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1] [1, -3, 2, 0, 0, 1, -1] n

end

end A356620.P9639070691465057727

namespace A356620

/-- `ogf((x+x^2+x^3+x^4)/(1-3x+2x^2+x^5-x^6))` -/
def P9639070691465057727.Spec : Prop :=
  ∀ n, P9639070691465057727.a n = A356620 n

end A356620

/-! ## A356620.P14130885834393015363

`3*a(n-1)-2*a(n-2)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11, a(4)=26, a(5)=56`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356620

/-- `3*a(n-1)-2*a(n-2)-a(n-5)+a(n-6)` -/
def P14130885834393015363.Spec : Prop :=
  ∀ n, P14130885834393015363.a n = A356620 n

theorem P14130885834393015363.correct : P14130885834393015363.Spec := by
  intro n
  simp only [A356620]

end A356620

/-! ## A356620.P17679620664837960922

`∑[ogf(1/(1-2x+x^5))]-(n+1)`
-/

namespace A356620.P17679620664837960922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 0, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A356620.P17679620664837960922

namespace A356620

/-- `∑[ogf(1/(1-2x+x^5))]-(n+1)` -/
def P17679620664837960922.Spec : Prop :=
  ∀ n, P17679620664837960922.a n = A356620 n

end A356620

/-! ## A356620.P4487146045501062412

`∑[ogf(1/(1-2x+x^5))]-1-n`
-/

namespace A356620.P4487146045501062412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 0, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A356620.P4487146045501062412

namespace A356620

/-- `∑[ogf(1/(1-2x+x^5))]-1-n` -/
def P4487146045501062412.Spec : Prop :=
  ∀ n, P4487146045501062412.a n = A356620 n

end A356620

/-! ## A356620.P1478996748872570849

`∑[A107066(n)-1]`
-/

namespace A356620.P1478996748872570849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356620.P1478996748872570849

namespace A356620

/-- `∑[A107066(n)-1]` -/
def P1478996748872570849.Spec : Prop :=
  ∀ n, P1478996748872570849.a n = A356620 n

end A356620

/-! ## A356620.P6371143495700954411

`∑[Δ[A145112(n)]-1]`
-/

namespace A356620.P6371143495700954411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356620.P6371143495700954411

namespace A356620

/-- `∑[Δ[A145112(n)]-1]` -/
def P6371143495700954411.Spec : Prop :=
  ∀ n, P6371143495700954411.a n = A356620 n

end A356620

/-! ## A356620.P10645068425372603968

`A119407(n+1)-(n+1)`
-/

namespace A356620.P10645068425372603968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119407 (n + 1) - (n + 1 : ℤ)

end

end A356620.P10645068425372603968

namespace A356620

/-- `A119407(n+1)-(n+1)` -/
def P10645068425372603968.Spec : Prop :=
  ∀ n, P10645068425372603968.a n = A356620 n

end A356620

/-! ## A356620.P10261792532046572296

`A145112(n+1)-(n+2)`
-/

namespace A356620.P10261792532046572296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145112 (n + 1) - (n + 2 : ℤ)

end

end A356620.P10261792532046572296

namespace A356620

/-- `A145112(n+1)-(n+2)` -/
def P10261792532046572296.Spec : Prop :=
  ∀ n, P10261792532046572296.a n = A356620 n

end A356620

/-! ## A356620.P3319028486516291063

`∑[∑[A274759(A016777(n))]-1]`
-/

namespace A356620.P3319028486516291063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (A016777 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356620.P3319028486516291063

namespace A356620

/-- `∑[∑[A274759(A016777(n))]-1]` -/
def P3319028486516291063.Spec : Prop :=
  ∀ n, P3319028486516291063.a n = A356620 n

end A356620

/-! ## A356620.P11891822150474156544

`∑[A140996(A000124(n+1))-1]`
-/

namespace A356620.P11891822150474156544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A000124 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356620.P11891822150474156544

namespace A356620

/-- `∑[A140996(A000124(n+1))-1]` -/
def P11891822150474156544.Spec : Prop :=
  ∀ n, P11891822150474156544.a n = A356620 n

end A356620

/-! ## A356620.P6395954961757804746

`∑[A140996(A134869(n+1))-1]`
-/

namespace A356620.P6395954961757804746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A134869 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356620.P6395954961757804746

namespace A356620

/-- `∑[A140996(A134869(n+1))-1]` -/
def P6395954961757804746.Spec : Prop :=
  ∀ n, P6395954961757804746.a n = A356620 n

end A356620

/-!
# A356621: a(n) = number of k-tuples (u(1), u(2), ..., u(k)) with 1 <= u(1) < u(2) < ... < u(k) <= n such that u(i) - u(i-1) <= 5 for i = 2,...,k.

The programs for A356621, the canonical program `A356621.P9261989981255007880` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356621 has offset 0).

The definition of A356621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356621.P18119450484681126537

`ogf((x+x^2+x^3+x^4+x^5)/(1-3x+2x^2+x^6-x^7))`
-/

namespace A356621.P18119450484681126537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 1] [1, -3, 2, 0, 0, 0, 1, -1] n

end

end A356621.P18119450484681126537

namespace A356621

/-- `ogf((x+x^2+x^3+x^4+x^5)/(1-3x+2x^2+x^6-x^7))` -/
def P18119450484681126537.Spec : Prop :=
  ∀ n, P18119450484681126537.a n = A356621 n

end A356621

/-! ## A356621.P9261989981255007880

`3*a(n-1)-2*a(n-2)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11, a(4)=26, a(5)=57, a(6)=119`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356621

/-- `3*a(n-1)-2*a(n-2)-a(n-6)+a(n-7)` -/
def P9261989981255007880.Spec : Prop :=
  ∀ n, P9261989981255007880.a n = A356621 n

theorem P9261989981255007880.correct : P9261989981255007880.Spec := by
  intro n
  simp only [A356621]

end A356621

/-! ## A356621.P3429338818179767631

`∑[Δ[A145113(n)]-1]`
-/

namespace A356621.P3429338818179767631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145113 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356621.P3429338818179767631

namespace A356621

/-- `∑[Δ[A145113(n)]-1]` -/
def P3429338818179767631.Spec : Prop :=
  ∀ n, P3429338818179767631.a n = A356621 n

end A356621

/-! ## A356621.P13012105120272667385

`∑[A001949(n+5)-1]`
-/

namespace A356621.P13012105120272667385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 5) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356621.P13012105120272667385

namespace A356621

/-- `∑[A001949(n+5)-1]` -/
def P13012105120272667385.Spec : Prop :=
  ∀ n, P13012105120272667385.a n = A356621 n

end A356621

/-! ## A356621.P15348052212306667012

`A145113(n+1)-(n+2)`
-/

namespace A356621.P15348052212306667012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145113 (n + 1) - (n + 2 : ℤ)

end

end A356621.P15348052212306667012

namespace A356621

/-- `A145113(n+1)-(n+2)` -/
def P15348052212306667012.Spec : Prop :=
  ∀ n, P15348052212306667012.a n = A356621 n

end A356621

/-! ## A356621.P4521647800035124666

`∑[∑[A001591(n+4)]-1]`
-/

namespace A356621.P4521647800035124666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356621.P4521647800035124666

namespace A356621

/-- `∑[∑[A001591(n+4)]-1]` -/
def P4521647800035124666.Spec : Prop :=
  ∀ n, P4521647800035124666.a n = A356621 n

end A356621

/-! ## A356621.P16740700182814634289

`∑[∑[A001591(A122553(n)+1+n)]]`
-/

namespace A356621.P16740700182814634289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (A122553 n + 1 + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356621.P16740700182814634289

namespace A356621

/-- `∑[∑[A001591(A122553(n)+1+n)]]` -/
def P16740700182814634289.Spec : Prop :=
  ∀ n, P16740700182814634289.a n = A356621 n

end A356621

/-!
# A356622: Number of ways to tile a hexagonal strip made up of 4*n equilateral triangles, using triangles and diamonds.

The programs for A356622, the canonical program `A356622.P16425296366776592039` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356622 has offset 0).

The definition of A356622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356622.P17739869473741197619

`ogf((1-4x+x^2)/(1-9x+7x^2-x^3))`
-/

namespace A356622.P17739869473741197619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 1] [1, -9, 7, -1] n

end

end A356622.P17739869473741197619

namespace A356622

/-- `ogf((1-4x+x^2)/(1-9x+7x^2-x^3))` -/
def P17739869473741197619.Spec : Prop :=
  ∀ n, P17739869473741197619.a n = A356622 n

end A356622

/-! ## A356622.P16425296366776592039

`9*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=39`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356622

/-- `9*a(n-1)-7*a(n-2)+a(n-3)` -/
def P16425296366776592039.Spec : Prop :=
  ∀ n, P16425296366776592039.a n = A356622 n

theorem P16425296366776592039.correct : P16425296366776592039.Spec := by
  intro n
  simp only [A356622]

end A356622

/-! ## A356622.P10082241651002889593

`A355327(2*n)`
-/

namespace A356622.P10082241651002889593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355327 (2 * n)

end

end A356622.P10082241651002889593

namespace A356622

/-- `A355327(2*n)` -/
def P10082241651002889593.Spec : Prop :=
  ∀ n, P10082241651002889593.a n = A356622 n

end A356622

/-! ## A356622.P5825991582960007858

`or(1, A355327(A005843(n)))`
-/

namespace A356622.P5825991582960007858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A355327 (A005843 n).toNat)

end

end A356622.P5825991582960007858

namespace A356622

/-- `or(1, A355327(A005843(n)))` -/
def P5825991582960007858.Spec : Prop :=
  ∀ n, P5825991582960007858.a n = A356622 n

end A356622

/-! ## A356622.P3299800917928359641

`record[A355327(n)/A033999(n)]`
-/

namespace A356622.P3299800917928359641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355327 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356622.P3299800917928359641

namespace A356622

/-- `record[A355327(n)/A033999(n)]` -/
def P3299800917928359641.Spec : Prop :=
  ∀ n, P3299800917928359641.a n = (A356622 n : ℚ)

end A356622

/-! ## A356622.P8322332703703642648

`A355327(A005843(n))%A356623(n)`
-/

namespace A356622.P8322332703703642648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355327 (A005843 n).toNat) (A356623 n)

end

end A356622.P8322332703703642648

namespace A356622

/-- `A355327(A005843(n))%A356623(n)` -/
def P8322332703703642648.Spec : Prop :=
  ∀ n, P8322332703703642648.a n = A356622 n

end A356622

/-!
# A356623: Number of ways to tile a hexagonal strip made up of 4*n+2 equilateral triangles, using triangles and diamonds.

The programs for A356623, the canonical program `A356623.P9676771986362256871` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356623 has offset 0).

The definition of A356623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356623.P11236661583645038932

`ogf(2/(1-9x+7x^2-x^3))`
-/

namespace A356623.P11236661583645038932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -9, 7, -1] n

end

end A356623.P11236661583645038932

namespace A356623

/-- `ogf(2/(1-9x+7x^2-x^3))` -/
def P11236661583645038932.Spec : Prop :=
  ∀ n, P11236661583645038932.a n = A356623 n

end A356623

/-! ## A356623.P9676771986362256871

`9*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=2, a(1)=18, a(2)=148`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356623

/-- `9*a(n-1)-7*a(n-2)+a(n-3)` -/
def P9676771986362256871.Spec : Prop :=
  ∀ n, P9676771986362256871.a n = A356623 n

theorem P9676771986362256871.correct : P9676771986362256871.Spec := by
  intro n
  simp only [A356623]

end A356623

/-!
# A356624: After n iterations of the "Square Multiscale" substitution, the largest tiles have side length 3^t / 5^f; a(n) = t (A356625 gives corresponding f's).

The programs for A356624, there is no canonical definition to state claims against.
-/

/-! ## A356624.P4225938547683558390

`A023133(n+1)-A151878(n)!`
-/

namespace A356624.P4225938547683558390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - (Nat.factorial (A151878 n).toNat : ℤ)

end

end A356624.P4225938547683558390

/-! ## A356624.P8351093545672609073

`A023133(n+1)-A133622(A130330(n))`
-/

namespace A356624.P8351093545672609073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A133622 (A130330 n).toNat

end

end A356624.P8351093545672609073

/-! ## A356624.P17251870048043515229

`A023133(n+1)-A000041(A151878(n)²)`
-/

namespace A356624.P17251870048043515229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A000041 (A151878 n ^ 2).toNat

end

end A356624.P17251870048043515229

/-! ## A356624.P10684368684399650707

`A023133(n+1)-A000108(A151878(n)²)`
-/

namespace A356624.P10684368684399650707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A000108 (A151878 n ^ 2).toNat

end

end A356624.P10684368684399650707

/-! ## A356624.P13142862117348547196

`A023133(n+1)-A000142(A151878(n)²)`
-/

namespace A356624.P13142862117348547196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A000142 (A151878 n ^ 2).toNat

end

end A356624.P13142862117348547196

/-! ## A356624.P4515944337084099727

`A023133(n+1)-A000219(A151878(n)²)`
-/

namespace A356624.P4515944337084099727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A000219 (A151878 n ^ 2).toNat

end

end A356624.P4515944337084099727

/-! ## A356624.P17122693540350194224

`A023133(n+1)-A000262(A151878(n)²)`
-/

namespace A356624.P17122693540350194224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A000262 (A151878 n ^ 2).toNat

end

end A356624.P17122693540350194224

/-! ## A356624.P5776215605306985342

`A023133(n+1)-A000700(A151878(n)²)`
-/

namespace A356624.P5776215605306985342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A000700 (A151878 n ^ 2).toNat

end

end A356624.P5776215605306985342

/-! ## A356624.P1251808115467520068

`A023133(n+1)-A000786(A151878(n)²)`
-/

namespace A356624.P1251808115467520068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A000786 (A151878 n ^ 2).toNat

end

end A356624.P1251808115467520068

/-! ## A356624.P12707078540010672509

`A023133(n+1)-A001497(A151878(n)²)`
-/

namespace A356624.P12707078540010672509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) - A001497 (A151878 n ^ 2).toNat

end

end A356624.P12707078540010672509

/-!
# A356625: After n iterations of the "Square Multiscale" substitution, the largest tiles have side length 3^t / 5^f; a(n) = f (A356624 gives corresponding t's).

The programs for A356625, there is no canonical definition to state claims against.
-/

/-! ## A356625.P833512678499935977

`A073189(n)+A023133(n+1)-A000041(A151878(n)²)`
-/

namespace A356625.P833512678499935977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + (A023133 (n + 1) - A000041 (A151878 n ^ 2).toNat)

end

end A356625.P833512678499935977

/-! ## A356625.P3110913999540573934

`A073189(n)+A023133(n+1)-A000142(A151878(n)²)`
-/

namespace A356625.P3110913999540573934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + (A023133 (n + 1) - A000142 (A151878 n ^ 2).toNat)

end

end A356625.P3110913999540573934

/-! ## A356625.P10120088113652748021

`A073189(n)+A023133(n+1)-A000262(A151878(n)²)`
-/

namespace A356625.P10120088113652748021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + (A023133 (n + 1) - A000262 (A151878 n ^ 2).toNat)

end

end A356625.P10120088113652748021

/-! ## A356625.P8903014268967173408

`A073189(n)+A023133(n+1)-A000700(A151878(n)²)`
-/

namespace A356625.P8903014268967173408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + (A023133 (n + 1) - A000700 (A151878 n ^ 2).toNat)

end

end A356625.P8903014268967173408

/-! ## A356625.P4281117113968929941

`A073189(n)+A023133(n+1)-A001222(A342309(n+1))`
-/

namespace A356625.P4281117113968929941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + (A023133 (n + 1) - A001222 (A342309 (n + 1)).toNat)

end

end A356625.P4281117113968929941

/-! ## A356625.P4313507635102460313

`A073189(n)+A023133(n+1)-A318506(A342309(n+2))`
-/

namespace A356625.P4313507635102460313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + (A023133 (n + 1) - A318506 (A342309 (n + 2)).toNat)

end

end A356625.P4313507635102460313

/-! ## A356625.P5579862917100776832

`A073189(n)+A057428(A333893(n))+A023133(n+1)`
-/

namespace A356625.P5579862917100776832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + (A057428 (A333893 n).toNat + A023133 (n + 1))

end

end A356625.P5579862917100776832

/-! ## A356625.P15143080451797619024

`A073189(n)+A023133(n+1)-A023133(A022795(n+1))`
-/

namespace A356625.P15143080451797619024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + (A023133 (n + 1) - A023133 (A022795 (n + 1)).toNat)

end

end A356625.P15143080451797619024

/-! ## A356625.P1159703601568775908

`A023133(n+1)+A105812(A090288(n))+A073189(n)`
-/

namespace A356625.P1159703601568775908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (n + 1) + (A105812 (A090288 n).toNat + A073189 n)

end

end A356625.P1159703601568775908

/-!
# A356626: Position of A332979(n) in the Doudna sequence A005940.

The programs for A356626, there is no canonical definition to state claims against.
-/

/-! ## A356626.P11838501256001293756

`A000079(n)-A069283(A163087(n))`
-/

namespace A356626.P11838501256001293756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A069283 (A163087 n).toNat

end

end A356626.P11838501256001293756

/-! ## A356626.P7975100917801585076

`A000051(n)-A007875(A072856(n))`
-/

namespace A356626.P7975100917801585076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A007875 (A072856 n).toNat

end

end A356626.P7975100917801585076

/-! ## A356626.P1296596536909935670

`A000079(n)-A069283(A149257(n))`
-/

namespace A356626.P1296596536909935670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A069283 (A149257 n).toNat

end

end A356626.P1296596536909935670

/-! ## A356626.P3668211159961125722

`A000051(n)-A278908(A005566(n))`
-/

namespace A356626.P3668211159961125722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A278908 (A005566 n).toNat

end

end A356626.P3668211159961125722

/-! ## A356626.P16297008655155836027

`A000079(n)-A023416(A336282(n))`
-/

namespace A356626.P16297008655155836027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A023416 (A336282 n).toNat

end

end A356626.P16297008655155836027

/-!
# A356627: Primes whose powers appear in A332979.

The programs for A356627, there is no canonical definition to state claims against.
-/

/-! ## A356627.P2110762534566807848

`p?[record[A333937(n+1)]]`
-/

namespace A356627.P2110762534566807848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356627.P2110762534566807848

/-! ## A356627.P17488770685727729749

`p?[A194974(record[A194963(n+1)])]`
-/

namespace A356627.P17488770685727729749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194974 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356627.P17488770685727729749

/-! ## A356627.P14100499071180950557

`p?[lt[A025428(A344800(n+1)), 4]]`
-/

namespace A356627.P14100499071180950557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A344800 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A356627.P14100499071180950557

/-! ## A356627.P667829464992499446

`eq[A003415(n), A124767(A347499(n+1))]`
-/

namespace A356627.P667829464992499446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A347499 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356627.P667829464992499446

/-! ## A356627.P15326368474097721580

`p?[lt[7, A099904(n+1)]]`
-/

namespace A356627.P15326368474097721580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099904 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A356627.P15326368474097721580

/-!
# A356628: a(n) = n! * Sum_{k=0..floor(n/2)} (n - 2*k)^k/(n - 2*k)!.

The programs for A356628, the canonical program `A356628.P11140667262049413057` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356628 has offset 0).

The definition of A356628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356628.P11140667262049413057

`n!*∑{#}[floor(n/2), (n-2*#)^#/(n-2*#)!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356628

/-- `n!*∑{#}[floor(n/2), (n-2*#)^#/(n-2*#)!]` -/
def P11140667262049413057.Spec : Prop :=
  ∀ n, P11140667262049413057.a n = (A356628 n : ℚ)

end A356628

/-! ## A356628.P5232667035716832515

`A000463(A245138(n))`
-/

namespace A356628.P5232667035716832515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A245138 n).toNat

end

end A356628.P5232667035716832515

namespace A356628

/-- `A000463(A245138(n))` -/
def P5232667035716832515.Spec : Prop :=
  ∀ n, P5232667035716832515.a n = A356628 n

end A356628

/-! ## A356628.P12805596003169999063

`A001281(A245138(n)+1)`
-/

namespace A356628.P12805596003169999063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A245138 n + 1).toNat

end

end A356628.P12805596003169999063

namespace A356628

/-- `A001281(A245138(n)+1)` -/
def P12805596003169999063.Spec : Prop :=
  ∀ n, P12805596003169999063.a n = A356628 n

end A356628

/-!
# A356629: a(n) = n! * Sum_{k=0..floor(n/3)} (n - 3*k)^k/(n - 3*k)!.

The programs for A356629, the canonical program `A356629.P4212081191089970434` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356629 has offset 0).

The definition of A356629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356629.P4212081191089970434

`n!*∑{#}[floor(n/3), (n-3*#)^#/(n-3*#)!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356629

/-- `n!*∑{#}[floor(n/3), (n-3*#)^#/(n-3*#)!]` -/
def P4212081191089970434.Spec : Prop :=
  ∀ n, P4212081191089970434.a n = (A356629 n : ℚ)

end A356629

/-!
# A356630: a(n) = n! * Sum_{k=0..floor(n/4)} (n - 4*k)^k/(n - 4*k)!.

The programs for A356630, the canonical program `A356630.P16089975412629511491` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356630 has offset 0).

The definition of A356630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356630.P16089975412629511491

`n!*∑{#}[floor(n/4), (n-4*#)^#/(n-4*#)!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356630

/-- `n!*∑{#}[floor(n/4), (n-4*#)^#/(n-4*#)!]` -/
def P16089975412629511491.Spec : Prop :=
  ∀ n, P16089975412629511491.a n = (A356630 n : ℚ)

end A356630

/-!
# A356632: a(n) = n! * Sum_{k=0..floor(n/2)} (n - 2*k)^k/2^k.

The programs for A356632, the canonical program `A356632.P15380984188795226788` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356632 has offset 0).

The definition of A356632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356632.P15380984188795226788

`n!*∑{#}[floor(n/2), (n-2*#)^#/2^#]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356632

/-- `n!*∑{#}[floor(n/2), (n-2*#)^#/2^#]` -/
def P15380984188795226788.Spec : Prop :=
  ∀ n, P15380984188795226788.a n = (A356632 n : ℚ)

end A356632

/-! ## A356632.P3302667194633598536

`A029578(A358064(n)+A000142(n))`
-/

namespace A356632.P3302667194633598536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A358064 n + A000142 n).toNat

end

end A356632.P3302667194633598536

namespace A356632

/-- `A029578(A358064(n)+A000142(n))` -/
def P3302667194633598536.Spec : Prop :=
  ∀ n, P3302667194633598536.a n = A356632 n

end A356632

/-! ## A356632.P745134491289639542

`A060681(A358064(n)+A000142(n))`
-/

namespace A356632.P745134491289639542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A358064 n + A000142 n).toNat

end

end A356632.P745134491289639542

namespace A356632

/-- `A060681(A358064(n)+A000142(n))` -/
def P745134491289639542.Spec : Prop :=
  ∀ n, P745134491289639542.a n = A356632 n

end A356632

/-!
# A356633: a(n) = n! * Sum_{k=0..floor(n/3)} (n - 3*k)^k/6^k.

The programs for A356633, the canonical program `A356633.P5786820065147786693` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356633 has offset 0).

The definition of A356633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356633.P5786820065147786693

`n!*∑{#}[floor(n/3), (n-3*#)^#/6^#]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356633

/-- `n!*∑{#}[floor(n/3), (n-3*#)^#/6^#]` -/
def P5786820065147786693.Spec : Prop :=
  ∀ n, P5786820065147786693.a n = (A356633 n : ℚ)

end A356633

/-! ## A356633.P6987478691106564108

`n*A057356(A315852(a(n-1)))` with `a(0)=1`
-/

namespace A356633.P6987478691106564108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A057356 (A315852 (a (n - 1)).toNat).toNat

end

end A356633.P6987478691106564108

namespace A356633

/-- `n*A057356(A315852(a(n-1)))` -/
def P6987478691106564108.Spec : Prop :=
  ∀ n, P6987478691106564108.a n = A356633 n

end A356633

/-! ## A356633.P6534798318441870268

`A103221((n+3)*n!+1)`
-/

namespace A356633.P6534798318441870268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((n + 3) * Nat.factorial n + 1)

end

end A356633.P6534798318441870268

namespace A356633

/-- `A103221((n+3)*n!+1)` -/
def P6534798318441870268.Spec : Prop :=
  ∀ n, P6534798318441870268.a n = A356633 n

end A356633

/-!
# A356634: a(n) = n! * Sum_{k=0..floor(n/4)} (n - 4*k)^k/24^k.

The programs for A356634, the canonical program `A356634.P851927658707837573` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356634 has offset 0).

The definition of A356634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356634.P851927658707837573

`n!*∑{#}[floor(n/4), (n-4*#)^#/24^#]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356634

/-- `n!*∑{#}[floor(n/4), (n-4*#)^#/24^#]` -/
def P851927658707837573.Spec : Prop :=
  ∀ n, P851927658707837573.a n = (A356634 n : ℚ)

end A356634

/-! ## A356634.P7728236293450790053

`A165051(n)+A005185(A005651(n))`
-/

namespace A356634.P7728236293450790053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 n + A005185 (A005651 n).toNat

end

end A356634.P7728236293450790053

namespace A356634

/-- `A165051(n)+A005185(A005651(n))` -/
def P7728236293450790053.Spec : Prop :=
  ∀ n, P7728236293450790053.a n = A356634 n

end A356634

/-! ## A356634.P8243700313415954679

`A322403(A038149(n))+A000142(n)`
-/

namespace A356634.P8243700313415954679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322403 (A038149 n).toNat + A000142 n

end

end A356634.P8243700313415954679

namespace A356634

/-- `A322403(A038149(n))+A000142(n)` -/
def P8243700313415954679.Spec : Prop :=
  ∀ n, P8243700313415954679.a n = A356634 n

end A356634

/-!
# A356635: Numbers k that can be written as the sum of 7 divisors of k (not necessarily distinct).

The programs for A356635, there is no canonical definition to state claims against.
-/

/-! ## A356635.P6314387918007572597

`lt[A166589(n+1)%A128681(n+1), 2]+7`
-/

namespace A356635.P6314387918007572597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166589 (n + 1)) (A128681 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 7

end

end A356635.P6314387918007572597

/-! ## A356635.P3630730933891605125

`A175904(n+3)-A056594(A019320(n))`
-/

namespace A356635.P3630730933891605125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175904 (n + 3) - A056594 (A019320 n).toNat

end

end A356635.P3630730933891605125

/-!
# A356636: Triangle read by rows. T(n, k) = binomial(n, k) * n!^2 / floor(n/2)!^2.

The programs for A356636, the canonical program `A356636.P2144449809530936994` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356636 has offset 0).

The definition of A356636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356636.P2144449809530936994

`C(row(n), col(n))*row(n)!²/floor(row(n)/2)!²`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356636

/-- `C(row(n), col(n))*row(n)!²/floor(row(n)/2)!²` -/
def P2144449809530936994.Spec : Prop :=
  ∀ n, P2144449809530936994.a n = (A356636 n : ℚ)

end A356636

/-! ## A356636.P12609832776129071259

`A003056(n)!*A253666(n)`
-/

namespace A356636.P12609832776129071259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A253666 n

end

end A356636.P12609832776129071259

namespace A356636

/-- `A003056(n)!*A253666(n)` -/
def P12609832776129071259.Spec : Prop :=
  ∀ n, P12609832776129071259.a n = A356636 n

end A356636

/-! ## A356636.P3852029255086972512

`A117707(n)!*A253666(n)`
-/

namespace A356636.P3852029255086972512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A117707 n).toNat : ℤ) * A253666 n

end

end A356636.P3852029255086972512

namespace A356636

/-- `A117707(n)!*A253666(n)` -/
def P3852029255086972512.Spec : Prop :=
  ∀ n, P3852029255086972512.a n = A356636 n

end A356636

/-! ## A356636.P1702182432193974526

`A007318(n)*A056040(A117707(n))*A117707(n)!`
-/

namespace A356636.P1702182432193974526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056040 (A117707 n).toNat * (Nat.factorial (A117707 n).toNat : ℤ)

end

end A356636.P1702182432193974526

namespace A356636

/-- `A007318(n)*A056040(A117707(n))*A117707(n)!` -/
def P1702182432193974526.Spec : Prop :=
  ∀ n, P1702182432193974526.a n = A356636 n

end A356636

/-! ## A356636.P11723278919780759187

`A236563(A196347(n))`
-/

namespace A356636.P11723278919780759187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236563 (A196347 n).toNat

end

end A356636.P11723278919780759187

namespace A356636

/-- `A236563(A196347(n))` -/
def P11723278919780759187.Spec : Prop :=
  ∀ n, P11723278919780759187.a n = A356636 n

end A356636

/-!
# A356637: a(n) = A000265(A263931(n)).

The programs for A356637, the canonical program `A356637.P751081540588102754` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356637 has offset 0).

The definition of A356637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356637.P751081540588102754

`A000265(A263931(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356637

/-- `A000265(A263931(n))` -/
def P751081540588102754.Spec : Prop :=
  ∀ n, P751081540588102754.a n = A356637 n

theorem P751081540588102754.correct : P751081540588102754.Spec := by
  intro n
  simp only [A356637]

end A356637

/-! ## A356637.P10895968852781297555

`round(A263931(n)/A001316(n))`
-/

namespace A356637.P10895968852781297555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A263931 n : ℚ) / (A001316 n : ℚ))

end

end A356637.P10895968852781297555

namespace A356637

/-- `round(A263931(n)/A001316(n))` -/
def P10895968852781297555.Spec : Prop :=
  ∀ n, P10895968852781297555.a n = A356637 n

end A356637

/-! ## A356637.P16290118063968715486

`A001790(n)/A068111(n)`
-/

namespace A356637.P16290118063968715486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A068111 n : ℚ)

end

end A356637.P16290118063968715486

namespace A356637

/-- `A001790(n)/A068111(n)` -/
def P16290118063968715486.Spec : Prop :=
  ∀ n, P16290118063968715486.a n = (A356637 n : ℚ)

end A356637

/-! ## A356637.P7738723035228769092

`gcd(A001790(n), A263931(n))`
-/

namespace A356637.P7738723035228769092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001790 n) (A263931 n)

end

end A356637.P7738723035228769092

namespace A356637

/-- `gcd(A001790(n), A263931(n))` -/
def P7738723035228769092.Spec : Prop :=
  ∀ n, (P7738723035228769092.a n : ℤ) = A356637 n

end A356637

/-! ## A356637.P2925632542879557225

`A001790(n)/gcd(A001790(n)², A073838(n+1))`
-/

namespace A356637.P2925632542879557225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (Int.gcd (A001790 n ^ 2) (A073838 (n + 1)) : ℚ)

end

end A356637.P2925632542879557225

namespace A356637

/-- `A001790(n)/gcd(A001790(n)², A073838(n+1))` -/
def P2925632542879557225.Spec : Prop :=
  ∀ n, P2925632542879557225.a n = (A356637 n : ℚ)

end A356637

/-! ## A356637.P2718601480633248537

`gcd(Δ[A177145(n+1)], A000984(n))`
-/

namespace A356637.P2718601480633248537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000984 n)

end

end A356637.P2718601480633248537

namespace A356637

/-- `gcd(Δ[A177145(n+1)], A000984(n))` -/
def P2718601480633248537.Spec : Prop :=
  ∀ n, (P2718601480633248537.a n : ℤ) = A356637 n

end A356637

/-!
# A356638: Odd composite numbers k such that 2^((k-1)/2) == -1 (mod k).

The programs for A356638, there is no canonical definition to state claims against.
-/

/-! ## A356638.P14236986327270632522

`∪[A244626(n+1), A244628(n+1)]`
-/

namespace A356638.P14236986327270632522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356638.P14236986327270632522

/-! ## A356638.P6327158583949738279

`∩[A001262(n+1), A307767(n+1)]`
-/

namespace A356638.P6327158583949738279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356638.P6327158583949738279

/-! ## A356638.P4849249476915880435

`∩[A020230(n+1), A307767(n+1)]`
-/

namespace A356638.P4849249476915880435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356638.P4849249476915880435

/-! ## A356638.P3942963125843157812

`∩[A020258(n+1), A307767(n+1)]`
-/

namespace A356638.P3942963125843157812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356638.P3942963125843157812

/-! ## A356638.P4180583993766617325

`∩[A288153(n+1), A307767(n+1)]`
-/

namespace A356638.P4180583993766617325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356638.P4180583993766617325

/-!
# A356641: Indices of records in A356640.

The programs for A356641, there is no canonical definition to state claims against.
-/

/-! ## A356641.P13158659452100836472

`A356552(A356642(n+1))`
-/

namespace A356641.P13158659452100836472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356552 (A356642 (n + 1)).toNat

end

end A356641.P13158659452100836472

/-! ## A356641.P14317762284479918762

`A356552(record[A356640(n+2)])`
-/

namespace A356641.P14317762284479918762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356640 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356552 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A356641.P14317762284479918762

/-!
# A356642: Record values in A356640.

The programs for A356642, there is no canonical definition to state claims against.
-/

/-! ## A356642.P267378836529914293

`record[A356640(n+2)]`
-/

namespace A356642.P267378836529914293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356640 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356642.P267378836529914293

/-! ## A356642.P903466404217953283

`A356640(A356641(n+1))`
-/

namespace A356642.P903466404217953283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356640 (A356641 (n + 1)).toNat

end

end A356642.P903466404217953283

/-!
# A356644: Number of vertex cuts in the n-antiprism graph.

The programs for A356644, the canonical program `A356644.P10888177438195276063` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356644 has offset 1).

The definition of A356644 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286183, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356644.P10888177438195276063

`2^(2*(n+1))-A286183(n+1)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A356644

/-- `2^(2*(n+1))-A286183(n+1)-1` -/
def P10888177438195276063.Spec : Prop :=
  ∀ n, P10888177438195276063.a n = A356644 (n + 1)

theorem P10888177438195276063.correct : P10888177438195276063.Spec := by
  intro n
  simp only [A356644, Nat.add_sub_cancel]

end A356644

/-! ## A356644.P4987970591737439251

`4^(n+1)+2*(n+1)-A000032(2*(n+1))-2*(n+1)*A000045(2*(n+1))-1`
-/

namespace A356644.P4987970591737439251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) + 2 * (n + 1) : ℤ) - A000032 (2 * (n + 1)) - (2 * (n + 1) : ℤ) * A000045 (2 * (n + 1)) - 1

end

end A356644.P4987970591737439251

namespace A356644

/-- `4^(n+1)+2*(n+1)-A000032(2*(n+1))-2*(n+1)*A000045(2*(n+1))-1` -/
def P4987970591737439251.Spec : Prop :=
  ∀ n, P4987970591737439251.a n = A356644 (n + 1)

end A356644

/-! ## A356644.P15910567514850335651

`A286206(2*n+1)-A286183(n+1)`
-/

namespace A356644.P15910567514850335651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286206 (2 * n + 1) - A286183 (n + 1)

end

end A356644.P15910567514850335651

namespace A356644

/-- `A286206(2*n+1)-A286183(n+1)` -/
def P15910567514850335651.Spec : Prop :=
  ∀ n, P15910567514850335651.a n = A356644 (n + 1)

end A356644

/-! ## A356644.P8675475022189836915

`A286207(2*n+1)-A286183(n+1)`
-/

namespace A356644.P8675475022189836915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286207 (2 * n + 1) - A286183 (n + 1)

end

end A356644.P8675475022189836915

namespace A356644

/-- `A286207(2*n+1)-A286183(n+1)` -/
def P8675475022189836915.Spec : Prop :=
  ∀ n, P8675475022189836915.a n = A356644 (n + 1)

end A356644

/-! ## A356644.P4605154912167612545

`A286182(n+1)+A356830(n+1)-A286183(n+1)`
-/

namespace A356644.P4605154912167612545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286182 (n + 1) + (A356830 (n + 1) - A286183 (n + 1))

end

end A356644.P4605154912167612545

namespace A356644

/-- `A286182(n+1)+A356830(n+1)-A286183(n+1)` -/
def P4605154912167612545.Spec : Prop :=
  ∀ n, P4605154912167612545.a n = A356644 (n + 1)

theorem P4605154912167612545.correct : P4605154912167612545.Spec := by
  intro n
  simp only [A356644, Nat.add_sub_cancel, A356644.P4605154912167612545.a, A356644.P10888177438195276063.a, A286182, A286182.P18040158897190895158.a, A286183, A286183.P16536639819314678559.a, A356830, A356830.P9176712600671338645.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, A007574, A007574.P1354935611169580180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356644

/-! ## A356644.P8652739606692968686

`A286185(n+1)+A356829(n+1)-A286183(n+1)`
-/

namespace A356644.P8652739606692968686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286185 (n + 1) + (A356829 (n + 1) - A286183 (n + 1))

end

end A356644.P8652739606692968686

namespace A356644

/-- `A286185(n+1)+A356829(n+1)-A286183(n+1)` -/
def P8652739606692968686.Spec : Prop :=
  ∀ n, P8652739606692968686.a n = A356644 (n + 1)

theorem P8652739606692968686.correct : P8652739606692968686.Spec := by
  intro n
  simp only [A356644, Nat.add_sub_cancel, A356644.P8652739606692968686.a, A356644.P10888177438195276063.a, A286183, A286183.P16536639819314678559.a, A286185, A286185.P1744816653617601400.a, A356829, A356829.P17230402961984168518.a, A007574, A007574.P1354935611169580180.a, A286182, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356644

/-! ## A356644.P1384942154943774071

`A126646(A005408(n))-(Δ[(2*n+1)*A000045(2*n+1)]-2*(n+1))`
-/

namespace A356644.P1384942154943774071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A005408 n).toNat - (f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ))

end

end A356644.P1384942154943774071

namespace A356644

/-- `A126646(A005408(n))-(Δ[(2*n+1)*A000045(2*n+1)]-2*(n+1))` -/
def P1384942154943774071.Spec : Prop :=
  ∀ n, P1384942154943774071.a n = A356644 (n + 1)

end A356644

/-! ## A356644.P3018885253535205080

`A000225(A004277(n+1))-(Δ[(2*n+1)*A000045(2*n+1)]-2*(n+1))`
-/

namespace A356644.P3018885253535205080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A004277 (n + 1)).toNat - (f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ))

end

end A356644.P3018885253535205080

namespace A356644

/-- `A000225(A004277(n+1))-(Δ[(2*n+1)*A000045(2*n+1)]-2*(n+1))` -/
def P3018885253535205080.Spec : Prop :=
  ∀ n, P3018885253535205080.a n = A356644 (n + 1)

end A356644

/-!
# A356645: a(n) = tau(n)^2 - 4*n^11 where tau is Ramanujan's tau function A000594.

The programs for A356645, there is no canonical definition to state claims against.
-/

/-! ## A356645.P13664327759718824233

`A000594(n+1)²-4*(n+1)^11`
-/

namespace A356645.P13664327759718824233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 1) ^ 2 - (4 * (n + 1) ^ 11 : ℤ)

end

end A356645.P13664327759718824233

/-!
# A356646: Numbers k such that the integer log of k! is a perfect power.

The programs for A356646, there is no canonical definition to state claims against.
-/

/-! ## A356646.P8762735079567959151

`or(A051243(n+1), A089142(A213093(n)))`
-/

namespace A356646.P8762735079567959151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051243 (n + 1)) (A089142 (A213093 n).toNat)

end

end A356646.P8762735079567959151

/-!
# A356647: Concatenation of runs {y..x} for each x>=1, using each y from 1 to x before moving on to the next value for x.

The programs for A356647, there is no canonical definition to state claims against.
-/

/-! ## A356647.P6767433424201887109

`A000120(A087118(n+2))`
-/

namespace A356647.P6767433424201887109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A087118 (n + 2)).toNat

end

end A356647.P6767433424201887109

/-! ## A356647.P14949396797554605913

`A357734(∑[n+2])`
-/

namespace A356647.P14949396797554605913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357734 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356647.P14949396797554605913

/-! ## A356647.P2417615759513893759

`A000120(A043687(n+1))`
-/

namespace A356647.P2417615759513893759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A043687 (n + 1)).toNat

end

end A356647.P2417615759513893759

/-! ## A356647.P14992243598223708314

`A274009(A043570(n+1))`
-/

namespace A356647.P14992243598223708314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A043570 (n + 1)).toNat

end

end A356647.P14992243598223708314

/-! ## A356647.P10981992215557998184

`A274009(A043742(n+1))`
-/

namespace A356647.P10981992215557998184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A043742 (n + 1)).toNat

end

end A356647.P10981992215557998184

/-! ## A356647.P11669826333344662525

`A048881(A379267(n+1))`
-/

namespace A356647.P11669826333344662525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A379267 (n + 1)).toNat

end

end A356647.P11669826333344662525

/-! ## A356647.P1427065080330218208

`A048881(A043570(n+1)-1)`
-/

namespace A356647.P1427065080330218208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A043570 (n + 1) - 1).toNat

end

end A356647.P1427065080330218208

/-!
# A356648: Numbers whose square is of the form k + reversal of digits of k, for some k.

The programs for A356648, there is no canonical definition to state claims against.
-/

/-! ## A356648.P5267839015520577759

`sqrt(A358880(n+1))`
-/

namespace A356648.P5267839015520577759
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A358880 (n + 1) : ℝ)

end

end A356648.P5267839015520577759

/-! ## A356648.P9077254982607032115

`lt[1, A244569(n²)]`
-/

namespace A356648.P9077254982607032115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356648.P9077254982607032115

/-! ## A356648.P7940215919077773102

`lt[A244568(n²), n²]`
-/

namespace A356648.P7940215919077773102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356648.P7940215919077773102

/-! ## A356648.P2495307431603668586

`A133388(A358880(n+1)+1)`
-/

namespace A356648.P2495307431603668586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A358880 (n + 1) + 1).toNat

end

end A356648.P2495307431603668586

/-!
# A356651: Triangle read by rows. T(n, k) = [x^k](0^n + 4^n * ((1 - x)^(-1/2) - 1)).

The programs for A356651, there is no canonical definition to state claims against.
-/

/-! ## A356651.P7274258732257634628

`A002260(n+1)*A357012(n)`
-/

namespace A356651.P7274258732257634628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A357012 n

end

end A356651.P7274258732257634628

/-! ## A356651.P9008188318003296999

`(A002262(n)+1)*A357012(n)`
-/

namespace A356651.P9008188318003296999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A357012 n

end

end A356651.P9008188318003296999

/-! ## A356651.P937445529161934729

`A131818(n+1)*A357012(n)`
-/

namespace A356651.P937445529161934729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) * A357012 n

end

end A356651.P937445529161934729

/-! ## A356651.P17010188828856391857

`A134868(n+1)*A357012(n)`
-/

namespace A356651.P17010188828856391857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) * A357012 n

end

end A356651.P17010188828856391857

/-! ## A356651.P8445752394353405304

`A135223(n+1)*A357012(n)`
-/

namespace A356651.P8445752394353405304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) * A357012 n

end

end A356651.P8445752394353405304

/-! ## A356651.P4245384827016282246

`A357012(n)*A384660(n+1)`
-/

namespace A356651.P4245384827016282246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357012 n * A384660 (n + 1)

end

end A356651.P4245384827016282246

/-!
# A356652: Triangle read by rows. Numerators of the coefficients of a sequence of rational polynomials r_n(x) with r_n(1) = B(2*n), where B(n) are the Bernoulli numbers.

The programs for A356652, there is no canonical definition to state claims against.
-/

/-! ## A356652.P1749450449177563689

`A324692(lcm(2, A287315(n)))`
-/

namespace A356652.P1749450449177563689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (Int.lcm 2 (A287315 n))

end

end A356652.P1749450449177563689

/-! ## A356652.P9376701746209579586

`or(A189920(A106527(n+1)), A244116(n))`
-/

namespace A356652.P9376701746209579586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189920 (A106527 (n + 1)).toNat) (A244116 n)

end

end A356652.P9376701746209579586

/-! ## A356652.P3395247491089347696

`or(A169673(A251415(n+1)), A244116(n))`
-/

namespace A356652.P3395247491089347696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A169673 (A251415 (n + 1)).toNat) (A244116 n)

end

end A356652.P3395247491089347696

/-! ## A356652.P13865719309879470977

`or(A000035(A062421(n+4)), A244116(n))`
-/

namespace A356652.P13865719309879470977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A062421 (n + 4)).toNat) (A244116 n)

end

end A356652.P13865719309879470977

/-!
# A356654: Triangle read by rows. T(n, k) = k! * Sum_{j=k..n} Lah(n, j) * Stirling2(j, k), where Lah(n, k) = A271703(n, k).

The programs for A356654, there is no canonical definition to state claims against.
-/

/-! ## A356654.P14188783801370243533

`A233543(n)*A256892(n)`
-/

namespace A356654.P14188783801370243533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A256892 n

end

end A356654.P14188783801370243533

/-! ## A356654.P2236952385210662986

`A002262(n)!*A256892(n)`
-/

namespace A356654.P2236952385210662986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A256892 n

end

end A356654.P2236952385210662986

/-! ## A356654.P12020387395994272763

`A094587(A112367(n))*A256892(n)`
-/

namespace A356654.P12020387395994272763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A112367 n).toNat * A256892 n

end

end A356654.P12020387395994272763

/-!
# A356655: Clausen numbers based on the strictly proper divisors of n, 1 < d < n.

The programs for A356655, the canonical program `A356655.P8101370222160810974` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356655 has offset 0).

The definition of A356655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356655.P8101370222160810974

`ceil(A166120(n+1)/2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A356655

/-- `ceil(A166120(n+1)/2)` -/
def P8101370222160810974.Spec : Prop :=
  ∀ n, P8101370222160810974.a n = A356655 n

theorem P8101370222160810974.correct : P8101370222160810974.Spec := by
  intro n
  simp only [A356655]

end A356655

/-! ## A356655.P15455450048768617773

`A166120(n+1)/A040001(n)`
-/

namespace A356655.P15455450048768617773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166120 (n + 1) : ℚ) / (A040001 n : ℚ)

end

end A356655.P15455450048768617773

namespace A356655

/-- `A166120(n+1)/A040001(n)` -/
def P15455450048768617773.Spec : Prop :=
  ∀ n, P15455450048768617773.a n = (A356655 n : ℚ)

end A356655

/-! ## A356655.P2470625794163695610

`gcd(A141459(n), A378133(n))`
-/

namespace A356655.P2470625794163695610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141459 n) (A378133 n)

end

end A356655.P2470625794163695610

namespace A356655

/-- `gcd(A141459(n), A378133(n))` -/
def P2470625794163695610.Spec : Prop :=
  ∀ n, (P2470625794163695610.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P18198084625268985254

`gcd(2^n-1, A166120(or(1, n)))`
-/

namespace A356655.P18198084625268985254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 ^ n : ℤ) - 1) (A166120 (Nat.lor 1 n))

end

end A356655.P18198084625268985254

namespace A356655

/-- `gcd(2^n-1, A166120(or(1, n)))` -/
def P18198084625268985254.Spec : Prop :=
  ∀ n, (P18198084625268985254.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P397616272572166911

`gcd(A000225(n), A166120(n+1))`
-/

namespace A356655.P397616272572166911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000225 n) (A166120 (n + 1))

end

end A356655.P397616272572166911

namespace A356655

/-- `gcd(A000225(n), A166120(n+1))` -/
def P397616272572166911.Spec : Prop :=
  ∀ n, (P397616272572166911.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P3312117460463688895

`gcd(A034386(n), A141459(n))`
-/

namespace A356655.P3312117460463688895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A141459 n)

end

end A356655.P3312117460463688895

namespace A356655

/-- `gcd(A034386(n), A141459(n))` -/
def P3312117460463688895.Spec : Prop :=
  ∀ n, (P3312117460463688895.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P6829844706697227085

`gcd(A306821(n), A330030(n))`
-/

namespace A356655.P6829844706697227085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306821 n) (A330030 n)

end

end A356655.P6829844706697227085

namespace A356655

/-- `gcd(A306821(n), A330030(n))` -/
def P6829844706697227085.Spec : Prop :=
  ∀ n, (P6829844706697227085.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P7626182371671822087

`gcd(A003418(n), A141459(n))`
-/

namespace A356655.P7626182371671822087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A141459 n)

end

end A356655.P7626182371671822087

namespace A356655

/-- `gcd(A003418(n), A141459(n))` -/
def P7626182371671822087.Spec : Prop :=
  ∀ n, (P7626182371671822087.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P3910759688959607750

`gcd(A025552(n), A306821(n))`
-/

namespace A356655.P3910759688959607750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025552 n) (A306821 n)

end

end A356655.P3910759688959607750

namespace A356655

/-- `gcd(A025552(n), A306821(n))` -/
def P3910759688959607750.Spec : Prop :=
  ∀ n, (P3910759688959607750.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P12580671399718388623

`gcd(A027642(n), A133221(n))`
-/

namespace A356655.P12580671399718388623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A133221 n)

end

end A356655.P12580671399718388623

namespace A356655

/-- `gcd(A027642(n), A133221(n))` -/
def P12580671399718388623.Spec : Prop :=
  ∀ n, (P12580671399718388623.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P593945233629249625

`gcd(A123023(n), A157780(n))`
-/

namespace A356655.P593945233629249625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123023 n) (A157780 n)

end

end A356655.P593945233629249625

namespace A356655

/-- `gcd(A123023(n), A157780(n))` -/
def P593945233629249625.Spec : Prop :=
  ∀ n, (P593945233629249625.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P8713667025623320814

`gcd(A027642(n), A055634(n))`
-/

namespace A356655.P8713667025623320814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A055634 n)

end

end A356655.P8713667025623320814

namespace A356655

/-- `gcd(A027642(n), A055634(n))` -/
def P8713667025623320814.Spec : Prop :=
  ∀ n, (P8713667025623320814.a n : ℤ) = A356655 n

end A356655

/-! ## A356655.P14686911055659442717

`gcd(A127145(n), A176289(n))`
-/

namespace A356655.P14686911055659442717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127145 n) (A176289 n)

end

end A356655.P14686911055659442717

namespace A356655

/-- `gcd(A127145(n), A176289(n))` -/
def P14686911055659442717.Spec : Prop :=
  ∀ n, (P14686911055659442717.a n : ℤ) = A356655 n

end A356655

/-!
# A356656: Partition triangle read by rows. The coefficients of the incomplete Bell polynomials.

The programs for A356656, there is no canonical definition to state claims against.
-/

/-! ## A356656.P14320701811635253906

`A072645(A119271(n+1)+A089455(n+1))`
-/

namespace A356656.P14320701811635253906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072645 (A119271 (n + 1) + A089455 (n + 1)).toNat

end

end A356656.P14320701811635253906

/-! ## A356656.P12560314714589228842

`A183096(A303535(n)+1)`
-/

namespace A356656.P12560314714589228842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (A303535 n + 1).toNat

end

end A356656.P12560314714589228842

/-! ## A356656.P6544622278893797423

`A103631(lt[A201779(n+1), 33])`
-/

namespace A356656.P6544622278893797423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201779 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A356656.P6544622278893797423

/-! ## A356656.P8318193066927461312

`or(A182406(3*n+4)%2, A058716(n))`
-/

namespace A356656.P8318193066927461312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A182406 (3 * n + 4)) 2) (A058716 n)

end

end A356656.P8318193066927461312

/-!
# A356657: Numbers k that can be written as the sum of 8 divisors of k (not necessarily distinct).

The programs for A356657, there is no canonical definition to state claims against.
-/

/-! ## A356657.P11120750298465488891

`∩[A225733(n+1), A118759(A004277(n+4))]`
-/

namespace A356657.P11120750298465488891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A004277 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356657.P11120750298465488891

/-! ## A356657.P14782644932233215976

`lt[A004767(A300977(n)), n%or(1, n)]`
-/

namespace A356657.P14782644932233215976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A300977 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356657.P14782644932233215976

/-! ## A356657.P9289799260459391144

`lt[A107631(n+5), A127291(A074206(3*n))]`
-/

namespace A356657.P9289799260459391144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 (A074206 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356657.P9289799260459391144

/-! ## A356657.P1753255462210646601

`lt[A109613(A050801(n+1)), A320305(3*n)]`
-/

namespace A356657.P1753255462210646601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A050801 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320305 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356657.P1753255462210646601

/-! ## A356657.P17681218132212671494

`A372792(A219676(n+1))`
-/

namespace A356657.P17681218132212671494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372792 (A219676 (n + 1)).toNat

end

end A356657.P17681218132212671494

/-!
# A356658: The number of orderings of the hypercube Q_n whose disorder number is equal to the disorder number of Q_n.

The programs for A356658, there is no canonical definition to state claims against.
-/

/-! ## A356658.P5333556912602276021

`A006882(2*(n+1))*A329633(A329672(n))`
-/

namespace A356658.P5333556912602276021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * (n + 1)) * A329633 (A329672 n).toNat

end

end A356658.P5333556912602276021

/-!
# A356659: Numbers k that can be written as the sum of 9 divisors of k (not necessarily distinct).

The programs for A356659, there is no canonical definition to state claims against.
-/

/-! ## A356659.P3889744714303911603

`lt[A000700(A120202(n+1)), A363731(n)]`
-/

namespace A356659.P3889744714303911603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A120202 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356659.P3889744714303911603

/-! ## A356659.P2260081412638884485

`lt[A310886(n), A296712(A301763(n+1))]`
-/

namespace A356659.P2260081412638884485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (A301763 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356659.P2260081412638884485

/-! ## A356659.P824844105809180001

`lt[A310903(n), A296712(A301763(n+1))]`
-/

namespace A356659.P824844105809180001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (A301763 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356659.P824844105809180001

/-! ## A356659.P10666608803858484748

`lt[A311512(n), A296712(A301763(n+1))]`
-/

namespace A356659.P10666608803858484748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (A301763 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356659.P10666608803858484748

/-! ## A356659.P15425781994982502296

`lt[A311608(n), A296712(A301763(n+1))]`
-/

namespace A356659.P15425781994982502296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (A301763 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356659.P15425781994982502296

/-!
# A356660: Numbers k that can be written as the sum of 10 divisors of k (not necessarily distinct).

The programs for A356660, there is no canonical definition to state claims against.
-/

/-! ## A356660.P1374081306440993050

`A000005(A210511(n+1))*A080681(n+5)`
-/

namespace A356660.P1374081306440993050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A210511 (n + 1)).toNat * A080681 (n + 5)

end

end A356660.P1374081306440993050

/-! ## A356660.P2973238657488168075

`A080681(n+5)*A304465(A177210(2*(n+1)))`
-/

namespace A356660.P2973238657488168075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 5) * A304465 (A177210 (2 * (n + 1))).toNat

end

end A356660.P2973238657488168075

/-! ## A356660.P1406986445611509252

`A000122(A001248(n+1))*A080681(n+5)`
-/

namespace A356660.P1406986445611509252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A001248 (n + 1)).toNat * A080681 (n + 5)

end

end A356660.P1406986445611509252

/-! ## A356660.P17576206985533785600

`A034693(A124401(n+1))*A080681(n+5)`
-/

namespace A356660.P17576206985533785600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A124401 (n + 1)).toNat * A080681 (n + 5)

end

end A356660.P17576206985533785600

/-! ## A356660.P5007508811878387790

`A001222(A226754(n+1))*A080681(n+5)`
-/

namespace A356660.P5007508811878387790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A226754 (n + 1)).toNat * A080681 (n + 5)

end

end A356660.P5007508811878387790

/-!
# A356661: a(n) = n! * Sum_{d|n} 1/d^(n/d - 1).

The programs for A356661, the canonical program `A356661.P8306147022210670325` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356661 has offset 1).

The definition of A356661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356661.P8306147022210670325

`(n+1)!*∑{d}[n+1, 1/#^((n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356661

/-- `(n+1)!*∑{d}[n+1, 1/#^((n+1)/#-1)]` -/
def P8306147022210670325.Spec : Prop :=
  ∀ n, P8306147022210670325.a n = (A356661 (n + 1) : ℝ)

end A356661

/-! ## A356661.P10419682219734225781

`(n+1)*A308345(n+1)`
-/

namespace A356661.P10419682219734225781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308345 (n + 1)

end

end A356661.P10419682219734225781

namespace A356661

/-- `(n+1)*A308345(n+1)` -/
def P10419682219734225781.Spec : Prop :=
  ∀ n, P10419682219734225781.a n = A356661 (n + 1)

end A356661

/-!
# A356662: a(n) = n! * Sum_{d|n} 1/(d!)^(n/d - 1).

The programs for A356662, the canonical program `A356662.P9238690955277935036` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356662 has offset 1).

The definition of A356662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356662.P9238690955277935036

`(n+1)!*∑{d}[n+1, 1/#!^((n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356662

/-- `(n+1)!*∑{d}[n+1, 1/#!^((n+1)/#-1)]` -/
def P9238690955277935036.Spec : Prop :=
  ∀ n, P9238690955277935036.a n = (A356662 (n + 1) : ℝ)

end A356662

/-! ## A356662.P1452323740380392300

`A384040(A151020(n+1))`
-/

namespace A356662.P1452323740380392300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384040 (A151020 (n + 1)).toNat

end

end A356662.P1452323740380392300

namespace A356662

/-- `A384040(A151020(n+1))` -/
def P1452323740380392300.Spec : Prop :=
  ∀ n, P1452323740380392300.a n = A356662 (n + 1)

end A356662

/-!
# A356664: Numbers k such that A225205(k) is in A354549.

The programs for A356664, there is no canonical definition to state claims against.
-/

/-! ## A356664.P14237097398163514227

`eq[(-1)^n, A115198(A001481(n+1))]`
-/

namespace A356664.P14237097398163514227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115198 (A001481 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356664.P14237097398163514227

/-! ## A356664.P10813467689002976920

`A067874(n+1)-A387381(A245149(3*n))`
-/

namespace A356664.P10813467689002976920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) - A387381 (A245149 (3 * n + 10)).toNat

end

end A356664.P10813467689002976920

/-! ## A356664.P14175260216954252868

`eq[A033999(n), A066829(A052816(2*(n+1)))]`
-/

namespace A356664.P14175260216954252868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A052816 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356664.P14175260216954252868

/-! ## A356664.P4226790862499820278

`lt[A056169(A136573(n)), A056169(2*(n+1))]`
-/

namespace A356664.P4226790862499820278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A136573 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356664.P4226790862499820278

/-! ## A356664.P12967898957433985252

`eq[A050605(2*(n+2)), A050605(A050584(n+1))]`
-/

namespace A356664.P12967898957433985252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A050584 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356664.P12967898957433985252

/-!
# A356665: Number of correct decimal digits of the approximation of Pi obtained from the continued fraction convergents A002485(n)/A002486(n).

The programs for A356665, there is no canonical definition to state claims against.
-/

/-! ## A356665.P7641827048261327727

`A084407(n+1)+1`
-/

namespace A356665.P7641827048261327727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084407 (n + 1) + 1

end

end A356665.P7641827048261327727

/-!
# A356667: Expansion of e.g.f. Sum_{k>=0} x^k / (1 - k*x^k/k!).

The programs for A356667, there is no canonical definition to state claims against.
-/

/-! ## A356667.P728121855165256568

`A330972(A278420(2*n))`
-/

namespace A356667.P728121855165256568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330972 (A278420 (2 * n)).toNat

end

end A356667.P728121855165256568

/-! ## A356667.P6330048446069555560

`A123108(∑{digits}[n, #!]*A023817(n+2))`
-/

namespace A356667.P6330048446069555560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) * A023817 (n + 2)).toNat

end

end A356667.P6330048446069555560

/-! ## A356667.P6975157180026934850

`A046523(A066739(n)*A177470(n))`
-/

namespace A356667.P6975157180026934850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A066739 n * A177470 n).toNat

end

end A356667.P6975157180026934850

/-!
# A356668: Expansion of e.g.f. Sum_{k>=0} x^k / (k! - k*x^k).

The programs for A356668, there is no canonical definition to state claims against.
-/

/-! ## A356668.P7788473528247682152

`A318978(xor(4, a(n-1)+4))` with `a(0)=1, a(1)=1`
-/

namespace A356668.P7788473528247682152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A318978 (Int.xor 4 (a (n - 1) + 4)).toNat

end

end A356668.P7788473528247682152

/-! ## A356668.P8210229305500207897

`A058982(A007455(n))`
-/

namespace A356668.P8210229305500207897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058982 (A007455 n).toNat

end

end A356668.P8210229305500207897

/-!
# A356672: a(n) = n! * Sum_{k=0..n} k^(2*(n-k))/k!.

The programs for A356672, the canonical program `A356672.P1622881685562753071` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356672 has offset 0).

The definition of A356672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356672.P1622881685562753071

`n!*∑{#}[n, #^(2*(n-#))/#!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356672

/-- `n!*∑{#}[n, #^(2*(n-#))/#!]` -/
def P1622881685562753071.Spec : Prop :=
  ∀ n, P1622881685562753071.a n = (A356672 n : ℚ)

end A356672

/-! ## A356672.P15392837063536520599

`A060464(A047796(n)+A000010(n+1))`
-/

namespace A356672.P15392837063536520599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A047796 n + A000010 (n + 1)).toNat

end

end A356672.P15392837063536520599

namespace A356672

/-- `A060464(A047796(n)+A000010(n+1))` -/
def P15392837063536520599.Spec : Prop :=
  ∀ n, P15392837063536520599.a n = A356672 n

end A356672

/-!
# A356673: a(n) = n! * Sum_{k=0..n} k^(3*(n-k))/k!.

The programs for A356673, the canonical program `A356673.P3753414616790473452` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356673 has offset 0).

The definition of A356673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356673.P3753414616790473452

`n!*∑{#}[n, #^(3*(n-#))/#!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356673

/-- `n!*∑{#}[n, #^(3*(n-#))/#!]` -/
def P3753414616790473452.Spec : Prop :=
  ∀ n, P3753414616790473452.a n = (A356673 n : ℚ)

end A356673

/-!
# A356674: a(n) = n! * Sum_{k=0..n} k^(k*(n-k))/k!.

The programs for A356674, the canonical program `A356674.P16690223160538951741` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356674 has offset 0).

The definition of A356674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356674.P16690223160538951741

`n!*∑{#}[n, #^(#*(n-#))/#!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356674

/-- `n!*∑{#}[n, #^(#*(n-#))/#!]` -/
def P16690223160538951741.Spec : Prop :=
  ∀ n, P16690223160538951741.a n = (A356674 n : ℚ)

end A356674

/-!
# A356676: A certain morphism applied to A007814 that is related to the lexicographically least infinite squarefree words over the nonnegative integers.

The programs for A356676, there is no canonical definition to state claims against.
-/

/-! ## A356676.P12041290289011557272

`val(A237270(A269303(2*(n+1))), 2)`
-/

namespace A356676.P12041290289011557272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A237270 (A269303 (2 * (n + 1))).toNat).toNat 2

end

end A356676.P12041290289011557272

/-! ## A356676.P15940541767830114916

`val(A356713(n+1), A195051(A035342(n+1)))`
-/

namespace A356676.P15940541767830114916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A356713 (n + 1)).toNat (A195051 (A035342 (n + 1)).toNat).toNat

end

end A356676.P15940541767830114916

/-! ## A356676.P2607177920146796148

`A065091(n+3)%A363486(A002113(n+3))`
-/

namespace A356676.P2607177920146796148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 3)) (A363486 (A002113 (n + 3)).toNat)

end

end A356676.P2607177920146796148

/-! ## A356676.P12803325342230025320

`and(A000120(A115320(n+2)), A353706(n+1))`
-/

namespace A356676.P12803325342230025320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A115320 (n + 2)).toNat) (A353706 (n + 1))

end

end A356676.P12803325342230025320

/-! ## A356676.P644895397704234512

`(A112855(n+1)+1)%A048887(2*n+3)`
-/

namespace A356676.P644895397704234512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112855 (n + 1) + 1) (A048887 (2 * n + 3))

end

end A356676.P644895397704234512

/-!
# A356677: The lexicographically earliest infinite squarefree sequence of nonnegative integers that starts with 1.

The programs for A356677, there is no canonical definition to state claims against.
-/

/-! ## A356677.P14095792679541266674

`A356682(n+80)`
-/

namespace A356677.P14095792679541266674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356682 (n + 80)

end

end A356677.P14095792679541266674

/-! ## A356677.P15027351159911039186

`A319423(n+1)%A324344(A094373(n))`
-/

namespace A356677.P15027351159911039186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319423 (n + 1)) (A324344 (A094373 n).toNat)

end

end A356677.P15027351159911039186

/-! ## A356677.P1686717951420490327

`A356676(A112820(n+1)+2)`
-/

namespace A356677.P1686717951420490327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356676 (A112820 (n + 1) + 2).toNat

end

end A356677.P1686717951420490327

/-! ## A356677.P3618970615252367717

`lt[A000586(n), A326031(n)]%3`
-/

namespace A356677.P3618970615252367717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 3

end

end A356677.P3618970615252367717

/-!
# A356678: The lexicographically earliest infinite squarefree sequence of nonnegative integers that starts with 2.

The programs for A356678, there is no canonical definition to state claims against.
-/

/-! ## A356678.P8394418616434108505

`A356680(n+2)+A000007(A086052(n+1))`
-/

namespace A356678.P8394418616434108505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356680 (n + 2) + A000007 (A086052 (n + 1)).toNat

end

end A356678.P8394418616434108505

/-! ## A356678.P17203654802877606310

`A057021(A006094(n+2))*A356680(n+2)`
-/

namespace A356678.P17203654802877606310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A006094 (n + 2)).toNat * A356680 (n + 2)

end

end A356678.P17203654802877606310

/-! ## A356678.P2286249151236493785

`A356680(n+2)^A000009(A230571(n+1))`
-/

namespace A356678.P2286249151236493785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356680 (n + 2) : ℚ) ^ (A000009 (A230571 (n + 1)).toNat : ℤ)

end

end A356678.P2286249151236493785

/-! ## A356678.P12931640303157903952

`A356680(n+2)^A008956(A348505(n+1))`
-/

namespace A356678.P12931640303157903952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356680 (n + 2) : ℚ) ^ (A008956 (A348505 (n + 1)).toNat : ℤ)

end

end A356678.P12931640303157903952

/-! ## A356678.P14875407091316089030

`A356680(n+2)+A000007(A127340(2*(n+1)))`
-/

namespace A356678.P14875407091316089030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356680 (n + 2) + A000007 (A127340 (2 * (n + 1))).toNat

end

end A356678.P14875407091316089030

/-!
# A356679: The lexicographically earliest infinite squarefree sequence of nonnegative integers that starts with 3.

The programs for A356679, there is no canonical definition to state claims against.
-/

/-! ## A356679.P27044607551045174

`A356681(n+2)/(val(A330317(n+1)+1, 2)+1)`
-/

namespace A356679.P27044607551045174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356681 (n + 2) : ℚ) / (SequenceMachineLib.valuation (A330317 (n + 1) + 1).toNat 2 + 1 : ℚ)

end

end A356679.P27044607551045174

/-! ## A356679.P4062204134016491554

`A356681(n+2)+A008683(A330317(n+1))`
-/

namespace A356679.P4062204134016491554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356681 (n + 2) + A008683 (A330317 (n + 1)).toNat

end

end A356679.P4062204134016491554

/-! ## A356679.P3521150450995141887

`A356681(n+2)+A007814(A290753(n+4))`
-/

namespace A356679.P3521150450995141887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356681 (n + 2) + A007814 (A290753 (n + 4)).toNat

end

end A356679.P3521150450995141887

/-! ## A356679.P7488569719531648387

`A356681(n+2)+A010051(A001248(n+1))`
-/

namespace A356679.P7488569719531648387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356681 (n + 2) + A010051 (A001248 (n + 1)).toNat

end

end A356679.P7488569719531648387

/-! ## A356679.P12781604007036796435

`A356681(n+2)/A352517(A062383(n))`
-/

namespace A356679.P12781604007036796435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356681 (n + 2) : ℚ) / (A352517 (A062383 n).toNat : ℚ)

end

end A356679.P12781604007036796435

/-! ## A356679.P8046995118873379589

`A001511(A000695(2*n+1))*A356681(n+2)`
-/

namespace A356679.P8046995118873379589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000695 (2 * n + 1)).toNat * A356681 (n + 2)

end

end A356679.P8046995118873379589

/-! ## A356679.P10214419549697224637

`A356681(A000027(n+2))^A352517(A062383(n))`
-/

namespace A356679.P10214419549697224637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356681 (A000027 (n + 2)).toNat : ℚ) ^ (A352517 (A062383 n).toNat : ℤ)

end

end A356679.P10214419549697224637

/-! ## A356679.P14695267566030091918

`A352517(A062383(n+1))*A356681(n+2)`
-/

namespace A356679.P14695267566030091918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (A062383 (n + 1)).toNat * A356681 (n + 2)

end

end A356679.P14695267566030091918

/-! ## A356679.P3149494043054900405

`and(A144748(A060839(n+1)), A356681(n+2))`
-/

namespace A356679.P3149494043054900405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144748 (A060839 (n + 1)).toNat) (A356681 (n + 2))

end

end A356679.P3149494043054900405

/-!
# A356680: The lexicographically earliest infinite squarefree sequence of nonnegative integers that starts with 1, 2.

The programs for A356680, there is no canonical definition to state claims against.
-/

/-! ## A356680.P16692999106553716993

`A356677(n+3)+A010051(A118933(n))`
-/

namespace A356680.P16692999106553716993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356677 (n + 3) + A010051 (A118933 n).toNat

end

end A356680.P16692999106553716993

/-! ## A356680.P5136215604638336597

`A336569(A000040(n+1))*A356677(n+3)`
-/

namespace A356680.P5136215604638336597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336569 (A000040 (n + 1)).toNat * A356677 (n + 3)

end

end A356680.P5136215604638336597

/-! ## A356680.P5287271615797521057

`A326028(A000040(n+1)^A356677(n+3))`
-/

namespace A356680.P5287271615797521057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326028 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A356677 (n + 3) : ℤ))).toNat

end

end A356680.P5287271615797521057

/-! ## A356680.P13354847055869289335

`A326028(A191026(n+1)^A356677(n+3))`
-/

namespace A356680.P13354847055869289335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326028 (SequenceMachineLib.roundAway ((A191026 (n + 1) : ℚ) ^ (A356677 (n + 3) : ℤ))).toNat

end

end A356680.P13354847055869289335

/-! ## A356680.P3241874793349940745

`A356677(n+3)^A273812(A308479(n+1))`
-/

namespace A356680.P3241874793349940745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356677 (n + 3) : ℚ) ^ (A273812 (A308479 (n + 1)).toNat : ℤ)

end

end A356680.P3241874793349940745

/-!
# A356681: The lexicographically earliest infinite squarefree sequence of nonnegative integers that starts with 1, 3.

The programs for A356681, there is no canonical definition to state claims against.
-/

/-! ## A356681.P3992950927460177471

`A309011(n+21)`
-/

namespace A356681.P3992950927460177471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309011 (n + 21)

end

end A356681.P3992950927460177471

/-! ## A356681.P3601330615204668173

`A356679(C(A088809(n+4), A008514(n)²)+n)`
-/

namespace A356681.P3601330615204668173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356679 (Nat.choose (A088809 (n + 4)).toNat (A008514 n ^ 2).toNat + n)

end

end A356681.P3601330615204668173

/-! ## A356681.P9176538894754086005

`A278313(A083658(n+1))`
-/

namespace A356681.P9176538894754086005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278313 (A083658 (n + 1)).toNat

end

end A356681.P9176538894754086005

/-! ## A356681.P6932096753294913748

`A135523(∑[∑[A285944(n)]])`
-/

namespace A356681.P6932096753294913748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356681.P6932096753294913748

/-! ## A356681.P8701844753292789027

`A007814(A005938(n+1)-n)`
-/

namespace A356681.P8701844753292789027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005938 (n + 1) - (n : ℤ)).toNat

end

end A356681.P8701844753292789027

/-!
# A356682: The lexicographically earliest infinite squarefree sequence of nonnegative integers that starts with 2, 1.

The programs for A356682, there is no canonical definition to state claims against.
-/

/-! ## A356682.P7746383734749744480

`A356676(A112820(n+1)+1)`
-/

namespace A356682.P7746383734749744480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356676 (A112820 (n + 1) + 1).toNat

end

end A356682.P7746383734749744480

/-! ## A356682.P982451694980131307

`A356679(A112820(n+1)+7)`
-/

namespace A356682.P982451694980131307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356679 (A112820 (n + 1) + 7).toNat

end

end A356682.P982451694980131307

/-! ## A356682.P18347979844959392236

`A030341(A390678(2*(n+2))+A222996(n+1))`
-/

namespace A356682.P18347979844959392236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A390678 (2 * (n + 2)) + A222996 (n + 1)).toNat

end

end A356682.P18347979844959392236

/-! ## A356682.P168402736447950110

`A356676(A112820(n+2))`
-/

namespace A356682.P168402736447950110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356676 (A112820 (n + 2)).toNat

end

end A356682.P168402736447950110

/-!
# A356684: a(n) = (n-1)*a(n-1) - n*a(n-2), with a(1) = a(2) = -1.

The programs for A356684, the canonical program `A356684.P17337341077600070608` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356684 has offset 1).

The definition of A356684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-(n+1)*a(n-2)` (program `A356684.P17337341077600070608`, by `A356684.P17337341077600070608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356684.P17337341077600070608

`n*a(n-1)-(n+1)*a(n-2)` with `a(0)=-1, a(1)=-1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356684

/-- `n*a(n-1)-(n+1)*a(n-2)` -/
def P17337341077600070608.Spec : Prop :=
  ∀ n, P17337341077600070608.a n = A356684 (n + 1)

theorem P17337341077600070608.correct : P17337341077600070608.Spec := by
  intro n
  simp only [A356684, Nat.add_sub_cancel]

end A356684

/-! ## A356684.P14514616094567131156

`∑[∑[∑[(n-1)*a(n-1)]]]` with `a(0)=-1, a(1)=2, a(2)=1`
-/

namespace A356684.P14514616094567131156
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 1] fun n f3 =>
  ((n : ℤ) - 1) * f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356684.P14514616094567131156

namespace A356684

/-- `∑[∑[∑[(n-1)*a(n-1)]]]` -/
def P14514616094567131156.Spec : Prop :=
  ∀ n, P14514616094567131156.a n = A356684 (n + 1)

end A356684

/-! ## A356684.P270740917274212213

`∑[A014144(n)-1]`
-/

namespace A356684.P270740917274212213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356684.P270740917274212213

namespace A356684

/-- `∑[A014144(n)-1]` -/
def P270740917274212213.Spec : Prop :=
  ∀ n, P270740917274212213.a n = A356684 (n + 1)

end A356684

/-! ## A356684.P13647540399006376454

`∑[∑[A003422(n)]-1]`
-/

namespace A356684.P13647540399006376454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356684.P13647540399006376454

namespace A356684

/-- `∑[∑[A003422(n)]-1]` -/
def P13647540399006376454.Spec : Prop :=
  ∀ n, P13647540399006376454.a n = A356684 (n + 1)

end A356684

/-! ## A356684.P15755489095339248414

`A152689(n+2)-(n+1)`
-/

namespace A356684.P15755489095339248414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152689 (n + 2) - (n + 1 : ℤ)

end

end A356684.P15755489095339248414

namespace A356684

/-- `A152689(n+2)-(n+1)` -/
def P15755489095339248414.Spec : Prop :=
  ∀ n, P15755489095339248414.a n = A356684 (n + 1)

end A356684

/-!
# A356687: a(n) = n! * Sum_{k=0..n} k^(2*n)/k!.

The programs for A356687, the canonical program `A356687.P8181870170069857657` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356687 has offset 0).

The definition of A356687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356687.P8181870170069857657

`n!*∑{#}[n, #^(2*n)/#!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356687

/-- `n!*∑{#}[n, #^(2*n)/#!]` -/
def P8181870170069857657.Spec : Prop :=
  ∀ n, P8181870170069857657.a n = (A356687 n : ℚ)

end A356687

/-!
# A356688: a(n) = n! * Sum_{k=0..n} k^(3*n)/k!.

The programs for A356688, the canonical program `A356688.P10570092026693031943` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356688 has offset 0).

The definition of A356688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356688.P10570092026693031943

`n!*∑{#}[n, #^(3*n)/#!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356688

/-- `n!*∑{#}[n, #^(3*n)/#!]` -/
def P10570092026693031943.Spec : Prop :=
  ∀ n, P10570092026693031943.a n = (A356688 n : ℚ)

end A356688

/-!
# A356689: a(n) = n! * Sum_{k=0..n} k^(k*n)/k!.

The programs for A356689, the canonical program `A356689.P6108611837911300378` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356689 has offset 0).

The definition of A356689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356689.P6108611837911300378

`n!*∑{#}[n, #^(#*n)/#!]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356689

/-- `n!*∑{#}[n, #^(#*n)/#!]` -/
def P6108611837911300378.Spec : Prop :=
  ∀ n, P6108611837911300378.a n = (A356689 n : ℚ)

end A356689

/-!
# A356691: a(n) = n! * Sum_{k=0..n} k^(2*k)/k!.

The programs for A356691, the canonical program `A356691.P2182379756566036333` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356691 has offset 0).

The definition of A356691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356691.P2182379756566036333

`n*a(n-1)+n^(2*n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356691

/-- `n*a(n-1)+n^(2*n)` -/
def P2182379756566036333.Spec : Prop :=
  ∀ n, (P2182379756566036333.a n : ℤ) = A356691 n

theorem P2182379756566036333.correct : P2182379756566036333.Spec := by
  intro n
  simp only [A356691]

end A356691

/-! ## A356691.P5264585296114551034

`(n^n)²+n*a(n-1)` with `a(0)=1`
-/

namespace A356691.P5264585296114551034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n) ^ 2 + n * a (n - 1)

end

end A356691.P5264585296114551034

namespace A356691

/-- `(n^n)²+n*a(n-1)` -/
def P5264585296114551034.Spec : Prop :=
  ∀ n, (P5264585296114551034.a n : ℤ) = A356691 n

theorem P5264585296114551034.correct : P5264585296114551034.Spec := by
  intro n
  simp only [A356691, Nat.add_sub_cancel, A356691.P5264585296114551034.a, A356691.P2182379756566036333.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A356691

/-! ## A356691.P12879459729906826294

`(n^n)²+a(n-1)/cot(atan(n))` with `a(0)=1`
-/

namespace A356691.P12879459729906826294
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((n ^ n) ^ 2 : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A356691.P12879459729906826294

namespace A356691

/-- `(n^n)²+a(n-1)/cot(atan(n))` -/
def P12879459729906826294.Spec : Prop :=
  ∀ n, P12879459729906826294.a n = (A356691 n : ℝ)

end A356691

/-! ## A356691.P13732242818140893115

`A062206(n)+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A356691.P13732242818140893115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A062206 n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A356691.P13732242818140893115

namespace A356691

/-- `A062206(n)+a(n-1)/n^(-1)` -/
def P13732242818140893115.Spec : Prop :=
  ∀ n, P13732242818140893115.a n = (A356691 n : ℚ)

end A356691

/-!
# A356692: Pascal-like triangle, where each entry is the sum of the four entries above it starting with 1 at the top.

The programs for A356692, there is no canonical definition to state claims against.
-/

/-! ## A356692.P8632405320224045084

`A204330(A322176(n))`
-/

namespace A356692.P8632405320224045084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A322176 n).toNat

end

end A356692.P8632405320224045084

/-! ## A356692.P11298824701249649334

`A005574(A074829(n+1)%A177245(2*n+5))`
-/

namespace A356692.P11298824701249649334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (Int.tmod (A074829 (n + 1)) (A177245 (2 * n + 5))).toNat

end

end A356692.P11298824701249649334

/-! ## A356692.P3108830249387970752

`A005574(A074829(n+1))%A334508(3*n+4)`
-/

namespace A356692.P3108830249387970752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005574 (A074829 (n + 1)).toNat) (A334508 (3 * n + 4))

end

end A356692.P3108830249387970752

/-!
# A356695: Expansion of x*(1+x-7*x^3-3*x^4+x^5)/(1-2*x^2-9*x^3+3*x^5).

The programs for A356695, the canonical program `A356695.P17225433825456549832` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356695 has offset 1).

The definition of A356695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-7x^3-3x^4+x^5)/(1-2x^2-9x^3+3x^5))` (program `A356695.P17225433825456549832`, by `A356695.P17225433825456549832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356695.P14585829324184725066

`2*a(n-2)+9*a(n-3)-3*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=10, a(5)=24`
-/

namespace A356695.P14585829324184725066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 10, 24] fun n a =>
  2 * a (n - 2) + 9 * a (n - 3) - 3 * a (n - 5)

end

end A356695.P14585829324184725066

namespace A356695

/-- `2*a(n-2)+9*a(n-3)-3*a(n-5)` -/
def P14585829324184725066.Spec : Prop :=
  ∀ n, P14585829324184725066.a n = A356695 (n + 1)

end A356695

/-! ## A356695.P17225433825456549832

`ogf((1+x-7x^3-3x^4+x^5)/(1-2x^2-9x^3+3x^5))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356695

/-- `ogf((1+x-7x^3-3x^4+x^5)/(1-2x^2-9x^3+3x^5))` -/
def P17225433825456549832.Spec : Prop :=
  ∀ n, P17225433825456549832.a n = A356695 (n + 1)

theorem P17225433825456549832.correct : P17225433825456549832.Spec := by
  intro n
  simp only [A356695, Nat.add_sub_cancel]

end A356695

/-! ## A356695.P14603852896827610979

`A051742(∑[ceil(A371724(n)/3)])`
-/

namespace A356695.P14603852896827610979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A371724 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356695.P14603852896827610979

namespace A356695

/-- `A051742(∑[ceil(A371724(n)/3)])` -/
def P14603852896827610979.Spec : Prop :=
  ∀ n, P14603852896827610979.a n = A356695 (n + 1)

end A356695

/-! ## A356695.P16641034404563929886

`A052146((2*n+3)*A097597(n))`
-/

namespace A356695.P16641034404563929886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 ((2 * n + 3 : ℤ) * A097597 n).toNat

end

end A356695.P16641034404563929886

namespace A356695

/-- `A052146((2*n+3)*A097597(n))` -/
def P16641034404563929886.Spec : Prop :=
  ∀ n, P16641034404563929886.a n = A356695 (n + 1)

end A356695

/-!
# A356696: a(n) = Fibonacci(2n-1) - 2^n + binomial(n,2) + 2.

The programs for A356696, the canonical program `A356696.P16498202809202423765` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356696 has offset 0).

The definition of A356696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356696.P16498202809202423765

`ogf((2-15x+43x^2-59x^3+39x^4-9x^5)/(1-8x+25x^2-39x^3+32x^4-13x^5+2x^6))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356696

/-- `ogf((2-15x+43x^2-59x^3+39x^4-9x^5)/(1-8x+25x^2-39x^3+32x^4-13x^5+2x^6))` -/
def P16498202809202423765.Spec : Prop :=
  ∀ n, P16498202809202423765.a n = A356696 n

theorem P16498202809202423765.correct : P16498202809202423765.Spec := by
  intro n
  simp only [A356696]

end A356696

/-! ## A356696.P10844280881807831456

`A001519(n)-A002662(n)-(n-1)`
-/

namespace A356696.P10844280881807831456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - A002662 n - ((n : ℤ) - 1)

end

end A356696.P10844280881807831456

namespace A356696

/-- `A001519(n)-A002662(n)-(n-1)` -/
def P10844280881807831456.Spec : Prop :=
  ∀ n, P10844280881807831456.a n = A356696 n

end A356696

/-!
# A356697: Number of Catalan words of length n avoiding the pattern 0000.

The programs for A356697, the canonical program `A356697.P16298311532876800956` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356697 has offset 0).

The definition of A356697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356697.P16298311532876800956

`ogf((1-2x^2-9x^3+3x^5)/(1-x-3x^2-9x^3+7x^4+6x^5-x^6))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356697

/-- `ogf((1-2x^2-9x^3+3x^5)/(1-x-3x^2-9x^3+7x^4+6x^5-x^6))` -/
def P16298311532876800956.Spec : Prop :=
  ∀ n, P16298311532876800956.a n = A356697 n

theorem P16298311532876800956.correct : P16298311532876800956.Spec := by
  intro n
  simp only [A356697]

end A356697

/-! ## A356697.P13253272298646636257

`A087843(A229182(n+1))`
-/

namespace A356697.P13253272298646636257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087843 (A229182 (n + 1)).toNat

end

end A356697.P13253272298646636257

namespace A356697

/-- `A087843(A229182(n+1))` -/
def P13253272298646636257.Spec : Prop :=
  ∀ n, P13253272298646636257.a n = A356697 n

end A356697

/-! ## A356697.P1821291427422305710

`A083382(2*A081250(n))`
-/

namespace A356697.P1821291427422305710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (2 * A081250 n).toNat

end

end A356697.P1821291427422305710

namespace A356697

/-- `A083382(2*A081250(n))` -/
def P1821291427422305710.Spec : Prop :=
  ∀ n, P1821291427422305710.a n = A356697 n

end A356697

/-! ## A356697.P16383034106381298507

`ceil(A075795(A292328(n)+2)/20)`
-/

namespace A356697.P16383034106381298507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075795 (A292328 n + 2).toNat : ℚ) / 20⌉

end

end A356697.P16383034106381298507

namespace A356697

/-- `ceil(A075795(A292328(n)+2)/20)` -/
def P16383034106381298507.Spec : Prop :=
  ∀ n, P16383034106381298507.a n = A356697 n

end A356697

/-!
# A356698: Number of Catalan words of length n avoiding the pattern 00000.

The programs for A356698, the canonical program `A356698.P13853986667674749263` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356698 has offset 0).

The definition of A356698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356698.P13853986667674749263

`ogf((1-2x^2-9x^3-34x^4+3x^5+32x^6+40x^7-4x^9)/(1-x-3x^2-9x^3-28x^4+37x^5+54x^6+37x^7-25x^8-10x^9+x^10))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A356698

/-- `ogf((1-2x^2-9x^3-34x^4+3x^5+32x^6+40x^7-4x^9)/(1-x-3x^2-9x^3-28x^4+37x^5+54x^6+37x^7-25x^8-10x^9+x^10))` -/
def P13853986667674749263.Spec : Prop :=
  ∀ n, P13853986667674749263.a n = A356698 n

theorem P13853986667674749263.correct : P13853986667674749263.Spec := by
  intro n
  simp only [A356698]

end A356698

/-! ## A356698.P159061840493317405

`A000108(n)-A168201(A137537(n))`
-/

namespace A356698.P159061840493317405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A168201 (A137537 n).toNat

end

end A356698.P159061840493317405

namespace A356698

/-- `A000108(n)-A168201(A137537(n))` -/
def P159061840493317405.Spec : Prop :=
  ∀ n, P159061840493317405.a n = A356698 n

end A356698

/-! ## A356698.P14857547739973240978

`A100196(A001764(n))-A219254(n)`
-/

namespace A356698.P14857547739973240978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A001764 n).toNat - A219254 n

end

end A356698.P14857547739973240978

namespace A356698

/-- `A100196(A001764(n))-A219254(n)` -/
def P14857547739973240978.Spec : Prop :=
  ∀ n, P14857547739973240978.a n = A356698 n

end A356698

/-! ## A356698.P2574179404064251081

`A036766(n)-A241465(A250262(n))`
-/

namespace A356698.P2574179404064251081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036766 n - A241465 (A250262 n).toNat

end

end A356698.P2574179404064251081

namespace A356698

/-- `A036766(n)-A241465(A250262(n))` -/
def P2574179404064251081.Spec : Prop :=
  ∀ n, P2574179404064251081.a n = A356698 n

end A356698

/-!
# A356699: Numbers k such that Mordell's equation y^2 = x^3 + k has a record number of integral solutions.

The programs for A356699, there is no canonical definition to state claims against.
-/

/-! ## A356699.P11960302345104721223

`A080513(Δ[∏[A051802(8*n+2)]])`
-/

namespace A356699.P11960302345104721223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (8 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (f1 (n + 1) - f1 n).toNat

end

end A356699.P11960302345104721223

