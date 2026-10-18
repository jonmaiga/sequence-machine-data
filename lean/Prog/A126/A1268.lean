import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A126800: Smallest divisor of n which is greater than largest divisor d of n such that each integer from 1 to d is also a divisor of n.

The programs for A126800, the canonical program `A126800.P2125643861586013567` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126800 has offset 3).

The definition of A126800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126800.P2125643861586013567

`A195153(∑[A195150(n+2)]+3)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A126800

/-- `A195153(∑[A195150(n+2)]+3)+1` -/
def P2125643861586013567.Spec : Prop :=
  ∀ n, P2125643861586013567.a n = A126800 (n + 3)

theorem P2125643861586013567.correct : P2125643861586013567.Spec := by
  intro n
  simp only [A126800, Nat.add_sub_cancel]

end A126800

/-! ## A126800.P6860839964952701259

`A245689(n%(A101023(n+2)*A245689(n+3))+3)`
-/

namespace A126800.P6860839964952701259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (Int.tmod (n : ℤ) (A101023 (n + 2) * A245689 (n + 3)) + 3).toNat

end

end A126800.P6860839964952701259

namespace A126800

/-- `A245689(n%(A101023(n+2)*A245689(n+3))+3)` -/
def P6860839964952701259.Spec : Prop :=
  ∀ n, P6860839964952701259.a n = A126800 (n + 3)

end A126800

/-! ## A126800.P12164032174715915729

`A245689(A245689(n+3)%A076329(n+1))`
-/

namespace A126800.P12164032174715915729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (Int.tmod (A245689 (n + 3)) (A076329 (n + 1))).toNat

end

end A126800.P12164032174715915729

namespace A126800

/-- `A245689(A245689(n+3)%A076329(n+1))` -/
def P12164032174715915729.Spec : Prop :=
  ∀ n, P12164032174715915729.a n = A126800 (n + 3)

end A126800

/-! ## A126800.P3749821594711984138

`A245689(A245689(n+3))%A335034(n+1)`
-/

namespace A126800.P3749821594711984138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245689 (A245689 (n + 3)).toNat) (A335034 (n + 1))

end

end A126800.P3749821594711984138

namespace A126800

/-- `A245689(A245689(n+3))%A335034(n+1)` -/
def P3749821594711984138.Spec : Prop :=
  ∀ n, P3749821594711984138.a n = A126800 (n + 3)

end A126800

/-! ## A126800.P7557347529635248843

`A245689(A245689(n+3))+A098002(A264030(n+1))`
-/

namespace A126800.P7557347529635248843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (A245689 (n + 3)).toNat + A098002 (A264030 (n + 1)).toNat

end

end A126800.P7557347529635248843

namespace A126800

/-- `A245689(A245689(n+3))+A098002(A264030(n+1))` -/
def P7557347529635248843.Spec : Prop :=
  ∀ n, P7557347529635248843.a n = A126800 (n + 3)

end A126800

/-! ## A126800.P11708101560187053876

`A245689(A245689(n+3)^A033461(n)!)`
-/

namespace A126800.P11708101560187053876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (A245689 (n + 3) ^ Nat.factorial (A033461 n).toNat).toNat

end

end A126800.P11708101560187053876

namespace A126800

/-- `A245689(A245689(n+3)^A033461(n)!)` -/
def P11708101560187053876.Spec : Prop :=
  ∀ n, P11708101560187053876.a n = A126800 (n + 3)

end A126800

/-!
# A126801: a(n) = smallest integer which is coprime to n and is > A057237(n).

The programs for A126801, there is no canonical definition to state claims against.
-/

/-! ## A126801.P7115965842177706492

`A096015(n+1)+log2(gcd(2, n))`
-/

namespace A126801.P7115965842177706492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A096015 (n + 1) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A126801.P7115965842177706492

/-! ## A126801.P14851022023583679526

`A096015(Δ[n²]-n)+char[2*n]`
-/

namespace A126801.P14851022023583679526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096015 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A126801.P14851022023583679526

/-! ## A126801.P9640143075276155472

`A374134(n+1)+A096015(n+1)`
-/

namespace A126801.P9640143075276155472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374134 (n + 1) + A096015 (n + 1)

end

end A126801.P9640143075276155472

/-! ## A126801.P1645321525866876783

`lcm(A020639(n+1), A071222(n))+1`
-/

namespace A126801.P1645321525866876783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (n + 1)) (A071222 n) + 1

end

end A126801.P1645321525866876783

/-! ## A126801.P5896619559128675476

`A071222(n)+A000265(A020639(n+1))`
-/

namespace A126801.P5896619559128675476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n + A000265 (A020639 (n + 1)).toNat

end

end A126801.P5896619559128675476

/-! ## A126801.P15881274641975238797

`A040001(n)+A000010(A096014(n+1))`
-/

namespace A126801.P15881274641975238797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + A000010 (A096014 (n + 1)).toNat

end

end A126801.P15881274641975238797

/-! ## A126801.P12706602619382907916

`A120325(A326810(n))+A096015(n+1)`
-/

namespace A126801.P12706602619382907916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (A326810 n).toNat + A096015 (n + 1)

end

end A126801.P12706602619382907916

/-! ## A126801.P6688656331708791884

`A000463(A020639(n+1))*A053669(n+1)`
-/

namespace A126801.P6688656331708791884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A020639 (n + 1)).toNat * A053669 (n + 1)

end

end A126801.P6688656331708791884

/-!
# A126802: Numbers k = d1+10*d2+100*d3+...+10^p*dp such that "prime(1)*d1+prime(2)*d2+...+prime(p)*dp" is prime.

The programs for A126802, there is no canonical definition to state claims against.
-/

/-! ## A126802.P10075127989216764038

`eq[0, A007920(A263042(n))]`
-/

namespace A126802.P10075127989216764038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A263042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126802.P10075127989216764038

/-! ## A126802.P5384374115076155068

`lt[A277894(A263042(n+1)), 1]+1`
-/

namespace A126802.P5384374115076155068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 (A263042 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A126802.P5384374115076155068

/-! ## A126802.P2871124642806436844

`eq[A000038(n), A277894(A263042(n))]`
-/

namespace A126802.P2871124642806436844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 (A263042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126802.P2871124642806436844

/-! ## A126802.P908232452069193475

`eq[A000007(n), A277894(A263042(n))]`
-/

namespace A126802.P908232452069193475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 (A263042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126802.P908232452069193475

/-! ## A126802.P10239430649815077658

`eq[2, A105700(A263042(n)²)]`
-/

namespace A126802.P10239430649815077658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A263042 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126802.P10239430649815077658

/-!
# A126804: a(n) = (2n)! / (n-1)!.

The programs for A126804, the canonical program `A126804.P13276352623796629092` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126804 has offset 1).

The definition of A126804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126804.P12695540403228281700

`2*(n+1)*(2*(n+1)-1)/n*a(n-1)` with `a(0)=2`
-/

namespace A126804.P12695540403228281700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((n + 1 : ℚ) * (((2 * (n + 1) : ℤ) - 1 : ℚ) / (n : ℚ))) * a (n - 1)

end

end A126804.P12695540403228281700

namespace A126804

/-- `2*(n+1)*(2*(n+1)-1)/n*a(n-1)` -/
def P12695540403228281700.Spec : Prop :=
  ∀ n, P12695540403228281700.a n = (A126804 (n + 1) : ℚ)

end A126804

/-! ## A126804.P13276352623796629092

`2*A001814(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126804

/-- `2*A001814(n+1)` -/
def P13276352623796629092.Spec : Prop :=
  ∀ n, P13276352623796629092.a n = A126804 (n + 1)

theorem P13276352623796629092.correct : P13276352623796629092.Spec := by
  intro n
  simp only [A126804, Nat.add_sub_cancel]

end A126804

/-! ## A126804.P7779408470627561210

`(2*(n+1))!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126804.P7779408470627561210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / (Nat.factorial n : ℚ)

end

end A126804.P7779408470627561210

namespace A126804

/-- `(2*(n+1))!/n!` -/
def P7779408470627561210.Spec : Prop :=
  ∀ n, P7779408470627561210.a n = (A126804 (n + 1) : ℚ)

end A126804

/-! ## A126804.P7247352064732176639

`(n+1)*∏[4*n+2]`
-/

namespace A126804.P7247352064732176639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A126804.P7247352064732176639

namespace A126804

/-- `(n+1)*∏[4*n+2]` -/
def P7247352064732176639.Spec : Prop :=
  ∀ n, (P7247352064732176639.a n : ℤ) = A126804 (n + 1)

end A126804

/-! ## A126804.P2327123722132951753

`round((n+1)*(2/n+4)*a(n-1))` with `a(0)=2`
-/

namespace A126804.P2327123722132951753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((2 / (n : ℚ) + 4) * (a (n - 1) : ℚ)))

end

end A126804.P2327123722132951753

namespace A126804

/-- `round((n+1)*(2/n+4)*a(n-1))` -/
def P2327123722132951753.Spec : Prop :=
  ∀ n, P2327123722132951753.a n = A126804 (n + 1)

end A126804

/-! ## A126804.P6437556271771514767

`A105725(∑[n+2])`
-/

namespace A126804.P6437556271771514767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126804.P6437556271771514767

namespace A126804

/-- `A105725(∑[n+2])` -/
def P6437556271771514767.Spec : Prop :=
  ∀ n, P6437556271771514767.a n = A126804 (n + 1)

end A126804

/-! ## A126804.P593760606501283435

`abs((n+1)*A097388(n+1))`
-/

namespace A126804.P593760606501283435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A097388 (n + 1)|

end

end A126804.P593760606501283435

namespace A126804

/-- `abs((n+1)*A097388(n+1))` -/
def P593760606501283435.Spec : Prop :=
  ∀ n, P593760606501283435.a n = A126804 (n + 1)

end A126804

/-! ## A126804.P2809973285442320566

`A156991(A034856(n+2))`
-/

namespace A126804.P2809973285442320566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156991 (A034856 (n + 2)).toNat

end

end A126804.P2809973285442320566

namespace A126804

/-- `A156991(A034856(n+2))` -/
def P2809973285442320566.Spec : Prop :=
  ∀ n, P2809973285442320566.a n = A126804 (n + 1)

end A126804

/-! ## A126804.P14787995673891973793

`A002690(n+1)-A001813(n+1)`
-/

namespace A126804.P14787995673891973793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002690 (n + 1) - A001813 (n + 1)

end

end A126804.P14787995673891973793

namespace A126804

/-- `A002690(n+1)-A001813(n+1)` -/
def P14787995673891973793.Spec : Prop :=
  ∀ n, P14787995673891973793.a n = A126804 (n + 1)

end A126804

/-! ## A126804.P17458738218889359492

`A001813(n+1)-A119837(n+1)`
-/

namespace A126804.P17458738218889359492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (n + 1) - A119837 (n + 1)

end

end A126804.P17458738218889359492

namespace A126804

/-- `A001813(n+1)-A119837(n+1)` -/
def P17458738218889359492.Spec : Prop :=
  ∀ n, P17458738218889359492.a n = A126804 (n + 1)

end A126804

/-!
# A126805: "Class-" (or "class-minus") number of prime(n) according to the Erdős-Selfridge classification of primes.

The programs for A126805, there is no canonical definition to state claims against.
-/

/-! ## A126805.P15641076934537594690

`A308964(lcm(A241195(n+1), A308964(n+1)))`
-/

namespace A126805.P15641076934537594690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308964 (Int.lcm (A241195 (n + 1)) (A308964 (n + 1)))

end

end A126805.P15641076934537594690

/-! ## A126805.P5799528247112529823

`A308964(A078349(2*(n+1))*A241195(n+1))`
-/

namespace A126805.P5799528247112529823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308964 (A078349 (2 * (n + 1)) * A241195 (n + 1)).toNat

end

end A126805.P5799528247112529823

/-! ## A126805.P9046424774192201077

`A308964(A143811(3*n+1)*A241195(n+1))`
-/

namespace A126805.P9046424774192201077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308964 (A143811 (3 * n + 1) * A241195 (n + 1)).toNat

end

end A126805.P9046424774192201077

/-! ## A126805.P8353183848558677897

`A308964(A241195(n+1)%A260792(3*n+1))`
-/

namespace A126805.P8353183848558677897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308964 (Int.tmod (A241195 (n + 1)) (A260792 (3 * n + 1))).toNat

end

end A126805.P8353183848558677897

/-! ## A126805.P10950313730067069669

`A308964(A006093(n+1)^A165190(n))`
-/

namespace A126805.P10950313730067069669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308964 (SequenceMachineLib.roundAway ((A006093 (n + 1) : ℚ) ^ (A165190 n : ℤ))).toNat

end

end A126805.P10950313730067069669

/-!
# A126807: Numbers k such that A014138(k+1) (the partial sum of the first k Catalan numbers, starting 1, 2, 5, ...) is a prime.

The programs for A126807, there is no canonical definition to state claims against.
-/

/-! ## A126807.P2824419373389394998

`A134775(n+1)-1`
-/

namespace A126807.P2824419373389394998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134775 (n + 1) - 1

end

end A126807.P2824419373389394998

/-! ## A126807.P907376519047583954

`A308778(n²)+A134775(n+1)`
-/

namespace A126807.P907376519047583954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A134775 (n + 1)

end

end A126807.P907376519047583954

/-! ## A126807.P2375370339103850887

`A134824(n+2)+A134775(n+1)`
-/

namespace A126807.P2375370339103850887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A134775 (n + 1)

end

end A126807.P2375370339103850887

/-! ## A126807.P7094822958698229915

`A023443(A134775(n+1))`
-/

namespace A126807.P7094822958698229915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134775 (n + 1)).toNat

end

end A126807.P7094822958698229915

/-! ## A126807.P13411223839070256042

`A289207(A134775(n+1)+1)`
-/

namespace A126807.P13411223839070256042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A134775 (n + 1) + 1).toNat

end

end A126807.P13411223839070256042

/-!
# A126808: Let p be a prime with decimal expansion abcd...fg. Then p is in the sequence if ab+bc+cd+...+fg is a prime.

The programs for A126808, there is no canonical definition to state claims against.
-/

/-! ## A126808.P2435560088665646341

`A319504(A000778(n))`
-/

namespace A126808.P2435560088665646341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319504 (A000778 n).toNat

end

end A126808.P2435560088665646341

/-!
# A126812: Ramanujan numbers (A000594) read mod 4.

The programs for A126812, the canonical program `A126812.P3985234610063511771` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126812 has offset 1).

The definition of A126812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126812.P3985234610063511771

`∑{d}[n+1, #]%gcd(4, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126812

/-- `∑{d}[n+1, #]%gcd(4, n)` -/
def P3985234610063511771.Spec : Prop :=
  ∀ n, (P3985234610063511771.a n : ℤ) = A126812 (n + 1)

theorem P3985234610063511771.correct : P3985234610063511771.Spec := by
  intro n
  simp only [A126812, Nat.add_sub_cancel]

end A126812

/-! ## A126812.P18148720221473479358

`∑{d}[or(n, n+1), #]%4`
-/

namespace A126812.P18148720221473479358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 4

end

end A126812.P18148720221473479358

namespace A126812

/-- `∑{d}[or(n, n+1), #]%4` -/
def P18148720221473479358.Spec : Prop :=
  ∀ n, (P18148720221473479358.a n : ℤ) = A126812 (n + 1)

end A126812

/-! ## A126812.P8375346934939290052

`and(3, ∑{d}[n+1, #*(n+1)²])`
-/

namespace A126812.P8375346934939290052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∑ d ∈ Nat.divisors (f1 n), d * (n + 1) ^ 2)

end

end A126812.P8375346934939290052

namespace A126812

/-- `and(3, ∑{d}[n+1, #*(n+1)²])` -/
def P8375346934939290052.Spec : Prop :=
  ∀ n, (P8375346934939290052.a n : ℤ) = A126812 (n + 1)

end A126812

/-! ## A126812.P134337811081760103

`∑{d}[2*(n+1), ((n+1)%#)^7]%4`
-/

namespace A126812.P134337811081760103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 7) % 4

end

end A126812.P134337811081760103

namespace A126812

/-- `∑{d}[2*(n+1), ((n+1)%#)^7]%4` -/
def P134337811081760103.Spec : Prop :=
  ∀ n, (P134337811081760103.a n : ℤ) = A126812 (n + 1)

end A126812

/-! ## A126812.P1891367122136227767

`and(3, A145155(n))`
-/

namespace A126812.P1891367122136227767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A145155 n)

end

end A126812.P1891367122136227767

namespace A126812

/-- `and(3, A145155(n))` -/
def P1891367122136227767.Spec : Prop :=
  ∀ n, P1891367122136227767.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P16714414895078818076

`A007331(n+1)%4`
-/

namespace A126812.P16714414895078818076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007331 (n + 1)) 4

end

end A126812.P16714414895078818076

namespace A126812

/-- `A007331(n+1)%4` -/
def P16714414895078818076.Spec : Prop :=
  ∀ n, P16714414895078818076.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P16578130204192939208

`A050468(n+1)%4`
-/

namespace A126812.P16578130204192939208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050468 (n + 1)) 4

end

end A126812.P16578130204192939208

namespace A126812

/-- `A050468(n+1)%4` -/
def P16578130204192939208.Spec : Prop :=
  ∀ n, P16578130204192939208.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P14204148700722266419

`A050470(n+1)%4`
-/

namespace A126812.P14204148700722266419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050470 (n + 1)) 4

end

end A126812.P14204148700722266419

namespace A126812

/-- `A050470(n+1)%4` -/
def P14204148700722266419.Spec : Prop :=
  ∀ n, P14204148700722266419.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P4311784132927408720

`A096960(n+1)%4`
-/

namespace A126812.P4311784132927408720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096960 (n + 1)) 4

end

end A126812.P4311784132927408720

namespace A126812

/-- `A096960(n+1)%4` -/
def P4311784132927408720.Spec : Prop :=
  ∀ n, P4311784132927408720.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P9570938958472359207

`A096961(n+1)%4`
-/

namespace A126812.P9570938958472359207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096961 (n + 1)) 4

end

end A126812.P9570938958472359207

namespace A126812

/-- `A096961(n+1)%4` -/
def P9570938958472359207.Spec : Prop :=
  ∀ n, P9570938958472359207.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P9800543552407532197

`A096962(n+1)%4`
-/

namespace A126812.P9800543552407532197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096962 (n + 1)) 4

end

end A126812.P9800543552407532197

namespace A126812

/-- `A096962(n+1)%4` -/
def P9800543552407532197.Spec : Prop :=
  ∀ n, P9800543552407532197.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P6565773694072355200

`A096963(n+1)%4`
-/

namespace A126812.P6565773694072355200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096963 (n + 1)) 4

end

end A126812.P6565773694072355200

namespace A126812

/-- `A096963(n+1)%4` -/
def P6565773694072355200.Spec : Prop :=
  ∀ n, P6565773694072355200.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P15967679069618500070

`A121455(n+1)%4`
-/

namespace A126812.P15967679069618500070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121455 (n + 1)) 4

end

end A126812.P15967679069618500070

namespace A126812

/-- `A121455(n+1)%4` -/
def P15967679069618500070.Spec : Prop :=
  ∀ n, P15967679069618500070.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P5172270431495974287

`A126813(n+1)%4`
-/

namespace A126812.P5172270431495974287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126813 (n + 1)) 4

end

end A126812.P5172270431495974287

namespace A126812

/-- `A126813(n+1)%4` -/
def P5172270431495974287.Spec : Prop :=
  ∀ n, P5172270431495974287.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P9245456657858367638

`A126814(n+1)%4`
-/

namespace A126812.P9245456657858367638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126814 (n + 1)) 4

end

end A126812.P9245456657858367638

namespace A126812

/-- `A126814(n+1)%4` -/
def P9245456657858367638.Spec : Prop :=
  ∀ n, P9245456657858367638.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P17568183014654164482

`A126815(n+1)%4`
-/

namespace A126812.P17568183014654164482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126815 (n + 1)) 4

end

end A126812.P17568183014654164482

namespace A126812

/-- `A126815(n+1)%4` -/
def P17568183014654164482.Spec : Prop :=
  ∀ n, P17568183014654164482.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P2602935544727116361

`A126816(n+1)%4`
-/

namespace A126812.P2602935544727116361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126816 (n + 1)) 4

end

end A126812.P2602935544727116361

namespace A126812

/-- `A126816(n+1)%4` -/
def P2602935544727116361.Spec : Prop :=
  ∀ n, P2602935544727116361.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P16656916797538619418

`A126817(n+1)%4`
-/

namespace A126812.P16656916797538619418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126817 (n + 1)) 4

end

end A126812.P16656916797538619418

namespace A126812

/-- `A126817(n+1)%4` -/
def P16656916797538619418.Spec : Prop :=
  ∀ n, P16656916797538619418.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P14544597735755237689

`A126818(n+1)%4`
-/

namespace A126812.P14544597735755237689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126818 (n + 1)) 4

end

end A126812.P14544597735755237689

namespace A126812

/-- `A126818(n+1)%4` -/
def P14544597735755237689.Spec : Prop :=
  ∀ n, P14544597735755237689.a n = A126812 (n + 1)

end A126812

/-! ## A126812.P7545161077683543451

`A321834(n+1)%4`
-/

namespace A126812.P7545161077683543451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321834 (n + 1)) 4

end

end A126812.P7545161077683543451

namespace A126812

/-- `A321834(n+1)%4` -/
def P7545161077683543451.Spec : Prop :=
  ∀ n, P7545161077683543451.a n = A126812 (n + 1)

end A126812

/-!
# A126813: Ramanujan numbers (A000594) read mod 8.

The programs for A126813, the canonical program `A126813.P5116997391557933339` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126813 has offset 1).

The definition of A126813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126813.P5116997391557933339

`∑{d}[2*(n+1), ((n+1)%#)^7]%8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126813

/-- `∑{d}[2*(n+1), ((n+1)%#)^7]%8` -/
def P5116997391557933339.Spec : Prop :=
  ∀ n, (P5116997391557933339.a n : ℤ) = A126813 (n + 1)

theorem P5116997391557933339.correct : P5116997391557933339.Spec := by
  intro n
  simp only [A126813, Nat.add_sub_cancel]

end A126813

/-! ## A126813.P17210906732900459628

`and(7, A145155(n))`
-/

namespace A126813.P17210906732900459628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A145155 n)

end

end A126813.P17210906732900459628

namespace A126813

/-- `and(7, A145155(n))` -/
def P17210906732900459628.Spec : Prop :=
  ∀ n, P17210906732900459628.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P30228657478199171

`A007331(n+1)%8`
-/

namespace A126813.P30228657478199171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007331 (n + 1)) 8

end

end A126813.P30228657478199171

namespace A126813

/-- `A007331(n+1)%8` -/
def P30228657478199171.Spec : Prop :=
  ∀ n, P30228657478199171.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P17241844307902673203

`A096960(n+1)%8`
-/

namespace A126813.P17241844307902673203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096960 (n + 1)) 8

end

end A126813.P17241844307902673203

namespace A126813

/-- `A096960(n+1)%8` -/
def P17241844307902673203.Spec : Prop :=
  ∀ n, P17241844307902673203.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P4295899434207733673

`A096961(n+1)%8`
-/

namespace A126813.P4295899434207733673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096961 (n + 1)) 8

end

end A126813.P4295899434207733673

namespace A126813

/-- `A096961(n+1)%8` -/
def P4295899434207733673.Spec : Prop :=
  ∀ n, P4295899434207733673.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P9942083463525206227

`A096962(n+1)%8`
-/

namespace A126813.P9942083463525206227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096962 (n + 1)) 8

end

end A126813.P9942083463525206227

namespace A126813

/-- `A096962(n+1)%8` -/
def P9942083463525206227.Spec : Prop :=
  ∀ n, P9942083463525206227.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P7498483155265595451

`A096963(n+1)%8`
-/

namespace A126813.P7498483155265595451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096963 (n + 1)) 8

end

end A126813.P7498483155265595451

namespace A126813

/-- `A096963(n+1)%8` -/
def P7498483155265595451.Spec : Prop :=
  ∀ n, P7498483155265595451.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P9347602274114265280

`A126814(n+1)%8`
-/

namespace A126813.P9347602274114265280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126814 (n + 1)) 8

end

end A126813.P9347602274114265280

namespace A126813

/-- `A126814(n+1)%8` -/
def P9347602274114265280.Spec : Prop :=
  ∀ n, P9347602274114265280.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P2573796458227819668

`A126815(n+1)%8`
-/

namespace A126813.P2573796458227819668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126815 (n + 1)) 8

end

end A126813.P2573796458227819668

namespace A126813

/-- `A126815(n+1)%8` -/
def P2573796458227819668.Spec : Prop :=
  ∀ n, P2573796458227819668.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P7989743805804138421

`A126816(n+1)%8`
-/

namespace A126813.P7989743805804138421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126816 (n + 1)) 8

end

end A126813.P7989743805804138421

namespace A126813

/-- `A126816(n+1)%8` -/
def P7989743805804138421.Spec : Prop :=
  ∀ n, P7989743805804138421.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P8798047346854086597

`A126817(n+1)%8`
-/

namespace A126813.P8798047346854086597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126817 (n + 1)) 8

end

end A126813.P8798047346854086597

namespace A126813

/-- `A126817(n+1)%8` -/
def P8798047346854086597.Spec : Prop :=
  ∀ n, P8798047346854086597.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P5847095322441613166

`A126818(n+1)%8`
-/

namespace A126813.P5847095322441613166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126818 (n + 1)) 8

end

end A126813.P5847095322441613166

namespace A126813

/-- `A126818(n+1)%8` -/
def P5847095322441613166.Spec : Prop :=
  ∀ n, P5847095322441613166.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P17930814822400494593

`A126819(n+1)%8`
-/

namespace A126813.P17930814822400494593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126819 (n + 1)) 8

end

end A126813.P17930814822400494593

namespace A126813

/-- `A126819(n+1)%8` -/
def P17930814822400494593.Spec : Prop :=
  ∀ n, P17930814822400494593.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P8305387821187730282

`A126820(n+1)%8`
-/

namespace A126813.P8305387821187730282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126820 (n + 1)) 8

end

end A126813.P8305387821187730282

namespace A126813

/-- `A126820(n+1)%8` -/
def P8305387821187730282.Spec : Prop :=
  ∀ n, P8305387821187730282.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P17496160489989238496

`A126821(n+1)%8`
-/

namespace A126813.P17496160489989238496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126821 (n + 1)) 8

end

end A126813.P17496160489989238496

namespace A126813

/-- `A126821(n+1)%8` -/
def P17496160489989238496.Spec : Prop :=
  ∀ n, P17496160489989238496.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P6855973306622580303

`A126822(n+1)%8`
-/

namespace A126813.P6855973306622580303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126822 (n + 1)) 8

end

end A126813.P6855973306622580303

namespace A126813

/-- `A126822(n+1)%8` -/
def P6855973306622580303.Spec : Prop :=
  ∀ n, P6855973306622580303.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P18307721359567558041

`A126823(n+1)%8`
-/

namespace A126813.P18307721359567558041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126823 (n + 1)) 8

end

end A126813.P18307721359567558041

namespace A126813

/-- `A126823(n+1)%8` -/
def P18307721359567558041.Spec : Prop :=
  ∀ n, P18307721359567558041.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P2002699865438763217

`A126824(n+1)%8`
-/

namespace A126813.P2002699865438763217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126824 (n + 1)) 8

end

end A126813.P2002699865438763217

namespace A126813

/-- `A126824(n+1)%8` -/
def P2002699865438763217.Spec : Prop :=
  ∀ n, P2002699865438763217.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P17911316035956258385

`A386781(n+1)%8`
-/

namespace A126813.P17911316035956258385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386781 (n + 1)) 8

end

end A126813.P17911316035956258385

namespace A126813

/-- `A386781(n+1)%8` -/
def P17911316035956258385.Spec : Prop :=
  ∀ n, P17911316035956258385.a n = A126813 (n + 1)

end A126813

/-! ## A126813.P6878859764811768278

`and(7, A000594(n+1))`
-/

namespace A126813.P6878859764811768278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000594 (n + 1))

end

end A126813.P6878859764811768278

namespace A126813

/-- `and(7, A000594(n+1))` -/
def P6878859764811768278.Spec : Prop :=
  ∀ n, P6878859764811768278.a n = A126813 (n + 1)

end A126813

/-!
# A126814: Ramanujan numbers (A000594) read mod 16.

The programs for A126814, the canonical program `A126814.P1485272226615088206` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126814 has offset 1).

The definition of A126814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126814.P1485272226615088206

`A007331(n+1)%16`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126814

/-- `A007331(n+1)%16` -/
def P1485272226615088206.Spec : Prop :=
  ∀ n, P1485272226615088206.a n = A126814 (n + 1)

theorem P1485272226615088206.correct : P1485272226615088206.Spec := by
  intro n
  simp only [A126814, Nat.add_sub_cancel]

end A126814

/-! ## A126814.P17690968569022655273

`A126815(n+1)%16`
-/

namespace A126814.P17690968569022655273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126815 (n + 1)) 16

end

end A126814.P17690968569022655273

namespace A126814

/-- `A126815(n+1)%16` -/
def P17690968569022655273.Spec : Prop :=
  ∀ n, P17690968569022655273.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P10881170936874085693

`A126816(n+1)%16`
-/

namespace A126814.P10881170936874085693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126816 (n + 1)) 16

end

end A126814.P10881170936874085693

namespace A126814

/-- `A126816(n+1)%16` -/
def P10881170936874085693.Spec : Prop :=
  ∀ n, P10881170936874085693.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P3216899013716456888

`A126817(n+1)%16`
-/

namespace A126814.P3216899013716456888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126817 (n + 1)) 16

end

end A126814.P3216899013716456888

namespace A126814

/-- `A126817(n+1)%16` -/
def P3216899013716456888.Spec : Prop :=
  ∀ n, P3216899013716456888.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P13671758172123380222

`A126818(n+1)%16`
-/

namespace A126814.P13671758172123380222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126818 (n + 1)) 16

end

end A126814.P13671758172123380222

namespace A126814

/-- `A126818(n+1)%16` -/
def P13671758172123380222.Spec : Prop :=
  ∀ n, P13671758172123380222.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P1745516785771521780

`A126819(n+1)%16`
-/

namespace A126814.P1745516785771521780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126819 (n + 1)) 16

end

end A126814.P1745516785771521780

namespace A126814

/-- `A126819(n+1)%16` -/
def P1745516785771521780.Spec : Prop :=
  ∀ n, P1745516785771521780.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P16358914991208014949

`A126820(n+1)%16`
-/

namespace A126814.P16358914991208014949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126820 (n + 1)) 16

end

end A126814.P16358914991208014949

namespace A126814

/-- `A126820(n+1)%16` -/
def P16358914991208014949.Spec : Prop :=
  ∀ n, P16358914991208014949.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P8792352132140049319

`A126821(n+1)%16`
-/

namespace A126814.P8792352132140049319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126821 (n + 1)) 16

end

end A126814.P8792352132140049319

namespace A126814

/-- `A126821(n+1)%16` -/
def P8792352132140049319.Spec : Prop :=
  ∀ n, P8792352132140049319.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P8791534579633266072

`A126822(n+1)%16`
-/

namespace A126814.P8791534579633266072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126822 (n + 1)) 16

end

end A126814.P8791534579633266072

namespace A126814

/-- `A126822(n+1)%16` -/
def P8791534579633266072.Spec : Prop :=
  ∀ n, P8791534579633266072.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P17511395502062825683

`A126824(n+1)%16`
-/

namespace A126814.P17511395502062825683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126824 (n + 1)) 16

end

end A126814.P17511395502062825683

namespace A126814

/-- `A126824(n+1)%16` -/
def P17511395502062825683.Spec : Prop :=
  ∀ n, P17511395502062825683.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P8956914718970640432

`and(15, A000594(n+1))`
-/

namespace A126814.P8956914718970640432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A000594 (n + 1))

end

end A126814.P8956914718970640432

namespace A126814

/-- `and(15, A000594(n+1))` -/
def P8956914718970640432.Spec : Prop :=
  ∀ n, P8956914718970640432.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P15701705933155944045

`and(15, A002288(n+1))`
-/

namespace A126814.P15701705933155944045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A002288 (n + 1))

end

end A126814.P15701705933155944045

namespace A126814

/-- `and(15, A002288(n+1))` -/
def P15701705933155944045.Spec : Prop :=
  ∀ n, P15701705933155944045.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P14334147689958796465

`and(15, A216711(n+1))`
-/

namespace A126814.P14334147689958796465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A216711 (n + 1))

end

end A126814.P14334147689958796465

namespace A126814

/-- `and(15, A216711(n+1))` -/
def P14334147689958796465.Spec : Prop :=
  ∀ n, P14334147689958796465.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P684873750169963635

`((n+1)^3*A000203(n+1))%16`
-/

namespace A126814.P684873750169963635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 3 : ℤ) * A000203 (n + 1)) 16

end

end A126814.P684873750169963635

namespace A126814

/-- `((n+1)^3*A000203(n+1))%16` -/
def P684873750169963635.Spec : Prop :=
  ∀ n, P684873750169963635.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P7134937156717295746

`and(15, (n+1)^3*A000593(n+1))`
-/

namespace A126814.P7134937156717295746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (((n + 1) ^ 3 : ℤ) * A000593 (n + 1))

end

end A126814.P7134937156717295746

namespace A126814

/-- `and(15, (n+1)^3*A000593(n+1))` -/
def P7134937156717295746.Spec : Prop :=
  ∀ n, P7134937156717295746.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P8773974170661631594

`((n+1)*(n+1)*A064987(n+1))%16`
-/

namespace A126814.P8773974170661631594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * ((n + 1 : ℤ) * A064987 (n + 1))) 16

end

end A126814.P8773974170661631594

namespace A126814

/-- `((n+1)*(n+1)*A064987(n+1))%16` -/
def P8773974170661631594.Spec : Prop :=
  ∀ n, P8773974170661631594.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P16772796303804588450

`A130909(A126815(n+1))`
-/

namespace A126814.P16772796303804588450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A126815 (n + 1)).toNat

end

end A126814.P16772796303804588450

namespace A126814

/-- `A130909(A126815(n+1))` -/
def P16772796303804588450.Spec : Prop :=
  ∀ n, P16772796303804588450.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P18286922236187414477

`A130909(A126816(n+1))`
-/

namespace A126814.P18286922236187414477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A126816 (n + 1)).toNat

end

end A126814.P18286922236187414477

namespace A126814

/-- `A130909(A126816(n+1))` -/
def P18286922236187414477.Spec : Prop :=
  ∀ n, P18286922236187414477.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P4354980650145758974

`A130909(A126817(n+1))`
-/

namespace A126814.P4354980650145758974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A126817 (n + 1)).toNat

end

end A126814.P4354980650145758974

namespace A126814

/-- `A130909(A126817(n+1))` -/
def P4354980650145758974.Spec : Prop :=
  ∀ n, P4354980650145758974.a n = A126814 (n + 1)

end A126814

/-! ## A126814.P9235425660787089929

`A130909(A126818(n+1))`
-/

namespace A126814.P9235425660787089929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 (A126818 (n + 1)).toNat

end

end A126814.P9235425660787089929

namespace A126814

/-- `A130909(A126818(n+1))` -/
def P9235425660787089929.Spec : Prop :=
  ∀ n, P9235425660787089929.a n = A126814 (n + 1)

end A126814

/-!
# A126815: Ramanujan numbers (A000594) read mod 32.

The programs for A126815, the canonical program `A126815.P8310984535950292792` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126815 has offset 1).

The definition of A126815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126815.P8310984535950292792

`A007331(n+1)%32`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126815

/-- `A007331(n+1)%32` -/
def P8310984535950292792.Spec : Prop :=
  ∀ n, P8310984535950292792.a n = A126815 (n + 1)

theorem P8310984535950292792.correct : P8310984535950292792.Spec := by
  intro n
  simp only [A126815, Nat.add_sub_cancel]

end A126815

/-! ## A126815.P9275327913038123076

`and(31, A000594(n+1))`
-/

namespace A126815.P9275327913038123076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A000594 (n + 1))

end

end A126815.P9275327913038123076

namespace A126815

/-- `and(31, A000594(n+1))` -/
def P9275327913038123076.Spec : Prop :=
  ∀ n, P9275327913038123076.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P2413279228171310805

`and(31, A007331(A000027(n+1)))`
-/

namespace A126815.P2413279228171310805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A007331 (A000027 (n + 1)).toNat)

end

end A126815.P2413279228171310805

namespace A126815

/-- `and(31, A007331(A000027(n+1)))` -/
def P2413279228171310805.Spec : Prop :=
  ∀ n, P2413279228171310805.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P13002031441222745189

`A126816(n+1)%A040240(n)`
-/

namespace A126815.P13002031441222745189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126816 (n + 1)) (A040240 n)

end

end A126815.P13002031441222745189

namespace A126815

/-- `A126816(n+1)%A040240(n)` -/
def P13002031441222745189.Spec : Prop :=
  ∀ n, P13002031441222745189.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P8550369536285278508

`A126817(n+1)%A040240(n)`
-/

namespace A126815.P8550369536285278508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126817 (n + 1)) (A040240 n)

end

end A126815.P8550369536285278508

namespace A126815

/-- `A126817(n+1)%A040240(n)` -/
def P8550369536285278508.Spec : Prop :=
  ∀ n, P8550369536285278508.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P5809093260457123219

`A126818(n+1)%A040240(n)`
-/

namespace A126815.P5809093260457123219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126818 (n + 1)) (A040240 n)

end

end A126815.P5809093260457123219

namespace A126815

/-- `A126818(n+1)%A040240(n)` -/
def P5809093260457123219.Spec : Prop :=
  ∀ n, P5809093260457123219.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P10435032448305804155

`A126819(n+1)%A040240(n)`
-/

namespace A126815.P10435032448305804155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126819 (n + 1)) (A040240 n)

end

end A126815.P10435032448305804155

namespace A126815

/-- `A126819(n+1)%A040240(n)` -/
def P10435032448305804155.Spec : Prop :=
  ∀ n, P10435032448305804155.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P1738658844476703982

`A126820(n+1)%A040240(n)`
-/

namespace A126815.P1738658844476703982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126820 (n + 1)) (A040240 n)

end

end A126815.P1738658844476703982

namespace A126815

/-- `A126820(n+1)%A040240(n)` -/
def P1738658844476703982.Spec : Prop :=
  ∀ n, P1738658844476703982.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P11278754582916439501

`A126821(n+1)%A040240(n)`
-/

namespace A126815.P11278754582916439501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126821 (n + 1)) (A040240 n)

end

end A126815.P11278754582916439501

namespace A126815

/-- `A126821(n+1)%A040240(n)` -/
def P11278754582916439501.Spec : Prop :=
  ∀ n, P11278754582916439501.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P3454320833968728628

`A126822(n+1)%A040240(n)`
-/

namespace A126815.P3454320833968728628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126822 (n + 1)) (A040240 n)

end

end A126815.P3454320833968728628

namespace A126815

/-- `A126822(n+1)%A040240(n)` -/
def P3454320833968728628.Spec : Prop :=
  ∀ n, P3454320833968728628.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P747266006023347703

`A126823(n+1)%A040240(n)`
-/

namespace A126815.P747266006023347703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126823 (n + 1)) (A040240 n)

end

end A126815.P747266006023347703

namespace A126815

/-- `A126823(n+1)%A040240(n)` -/
def P747266006023347703.Spec : Prop :=
  ∀ n, P747266006023347703.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P13085423010438363360

`A126824(n+1)%A040240(n)`
-/

namespace A126815.P13085423010438363360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126824 (n + 1)) (A040240 n)

end

end A126815.P13085423010438363360

namespace A126815

/-- `A126824(n+1)%A040240(n)` -/
def P13085423010438363360.Spec : Prop :=
  ∀ n, P13085423010438363360.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P10520206084158795996

`and(A126816(n+1), A142939(n+1))`
-/

namespace A126815.P10520206084158795996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126816 (n + 1)) (A142939 (n + 1))

end

end A126815.P10520206084158795996

namespace A126815

/-- `and(A126816(n+1), A142939(n+1))` -/
def P10520206084158795996.Spec : Prop :=
  ∀ n, P10520206084158795996.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P1892231301126636416

`and(A177065(n)²-2, A126816(n+1))`
-/

namespace A126815.P1892231301126636416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177065 n ^ 2 - 2) (A126816 (n + 1))

end

end A126815.P1892231301126636416

namespace A126815

/-- `and(A177065(n)²-2, A126816(n+1))` -/
def P1892231301126636416.Spec : Prop :=
  ∀ n, P1892231301126636416.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P18043332264675011654

`and(A142932(n+1)²-2, A126816(n+1))`
-/

namespace A126815.P18043332264675011654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142932 (n + 1) ^ 2 - 2) (A126816 (n + 1))

end

end A126815.P18043332264675011654

namespace A126815

/-- `and(A142932(n+1)²-2, A126816(n+1))` -/
def P18043332264675011654.Spec : Prop :=
  ∀ n, P18043332264675011654.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P3335890806468585404

`A282781(n+1)%32`
-/

namespace A126815.P3335890806468585404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282781 (n + 1)) 32

end

end A126815.P3335890806468585404

namespace A126815

/-- `A282781(n+1)%32` -/
def P3335890806468585404.Spec : Prop :=
  ∀ n, P3335890806468585404.a n = A126815 (n + 1)

end A126815

/-! ## A126815.P11607195597866490822

`and(31, A037945(n+1))`
-/

namespace A126815.P11607195597866490822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A037945 (n + 1))

end

end A126815.P11607195597866490822

namespace A126815

/-- `and(31, A037945(n+1))` -/
def P11607195597866490822.Spec : Prop :=
  ∀ n, P11607195597866490822.a n = A126815 (n + 1)

end A126815

/-!
# A126816: Ramanujan numbers (A000594) read mod 64.

The programs for A126816, there is no canonical definition to state claims against.
-/

/-! ## A126816.P17514144137174407121

`A126817(n+1)%64`
-/

namespace A126816.P17514144137174407121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126817 (n + 1)) 64

end

end A126816.P17514144137174407121

/-! ## A126816.P14711810150456698846

`A126820(n+1)%64`
-/

namespace A126816.P14711810150456698846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126820 (n + 1)) 64

end

end A126816.P14711810150456698846

/-! ## A126816.P3977937540801309063

`A126823(n+1)%64`
-/

namespace A126816.P3977937540801309063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126823 (n + 1)) 64

end

end A126816.P3977937540801309063

/-! ## A126816.P18285449074768168130

`and(63, A000594(n+1))`
-/

namespace A126816.P18285449074768168130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A000594 (n + 1))

end

end A126816.P18285449074768168130

/-! ## A126816.P497812028592521937

`and(63, A126818(n+1))`
-/

namespace A126816.P497812028592521937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A126818 (n + 1))

end

end A126816.P497812028592521937

/-! ## A126816.P12418123479604195234

`A053645(A126817(n+1)+64)`
-/

namespace A126816.P12418123479604195234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A126817 (n + 1) + 64).toNat

end

end A126816.P12418123479604195234

/-!
# A126817: Ramanujan numbers (A000594) read mod 128.

The programs for A126817, there is no canonical definition to state claims against.
-/

/-! ## A126817.P13063976211471118846

`A126816(n+1)+and(64, A000594(n+1))`
-/

namespace A126817.P13063976211471118846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126816 (n + 1) + Int.land 64 (A000594 (n + 1))

end

end A126817.P13063976211471118846

/-! ## A126817.P6730617610732785550

`A126816(n+1)+and(64, A126818(n+1))`
-/

namespace A126817.P6730617610732785550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126816 (n + 1) + Int.land 64 (A126818 (n + 1))

end

end A126817.P6730617610732785550

/-! ## A126817.P14457665347029598931

`A126816(n+1)+and(64, A126820(n+1))`
-/

namespace A126817.P14457665347029598931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126816 (n + 1) + Int.land 64 (A126820 (n + 1))

end

end A126817.P14457665347029598931

/-! ## A126817.P10340310250284164061

`A126816(n+1)+and(64, A126823(n+1))`
-/

namespace A126817.P10340310250284164061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126816 (n + 1) + Int.land 64 (A126823 (n + 1))

end

end A126817.P10340310250284164061

/-! ## A126817.P16297631190005422301

`and(A000594(n+1), A094933(gcd(n, n+1)))`
-/

namespace A126817.P16297631190005422301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000594 (n + 1)) (A094933 (Nat.gcd n (n + 1)))

end

end A126817.P16297631190005422301

/-! ## A126817.P17124750645685975857

`and(A000594(n+1), A228147(A000217(n+5)+6))`
-/

namespace A126817.P17124750645685975857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000594 (n + 1)) (A228147 (A000217 (n + 5) + 6).toNat)

end

end A126817.P17124750645685975857

/-!
# A126818: Ramanujan numbers (A000594) read mod 256.

The programs for A126818, there is no canonical definition to state claims against.
-/

/-! ## A126818.P2486719297642113390

`A126821(n+1)%A040056(n)²`
-/

namespace A126818.P2486719297642113390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126821 (n + 1)) (A040056 n ^ 2)

end

end A126818.P2486719297642113390

/-! ## A126818.P10330242597504317765

`and(A157447(n+1)²-1, A126822(n+1))`
-/

namespace A126818.P10330242597504317765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157447 (n + 1) ^ 2 - 1) (A126822 (n + 1))

end

end A126818.P10330242597504317765

/-! ## A126818.P15712078452120534187

`A126820(n+1)%A237398(A135517(2*(n+2)))`
-/

namespace A126818.P15712078452120534187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126820 (n + 1)) (A237398 (A135517 (2 * (n + 2))).toNat)

end

end A126818.P15712078452120534187

/-! ## A126818.P5079217779218835437

`A126823(n+1)%A077072(A266303(2*(n+2)))`
-/

namespace A126818.P5079217779218835437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126823 (n + 1)) (A077072 (A266303 (2 * (n + 2))).toNat)

end

end A126818.P5079217779218835437

/-! ## A126818.P737934509209177083

`A126819(n+1)%A017192(A151933(n))`
-/

namespace A126818.P737934509209177083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126819 (n + 1)) (A017192 (A151933 n).toNat)

end

end A126818.P737934509209177083

/-! ## A126818.P16573070194774918075

`A126820(n+1)%A017192(A151933(n))`
-/

namespace A126818.P16573070194774918075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126820 (n + 1)) (A017192 (A151933 n).toNat)

end

end A126818.P16573070194774918075

/-!
# A126819: Ramanujan numbers (A000594) read mod 512.

The programs for A126819, there is no canonical definition to state claims against.
-/

/-! ## A126819.P14838335091241492252

`A126821(n+1)%(A040240(n)²/2)`
-/

namespace A126819.P14838335091241492252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126821 (n + 1)) (SequenceMachineLib.roundAway ((A040240 n ^ 2 : ℚ) / 2))

end

end A126819.P14838335091241492252

/-! ## A126819.P4408004787535704829

`and(A056220(A157447(n+1)), A126821(n+1))`
-/

namespace A126819.P4408004787535704829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056220 (A157447 (n + 1)).toNat) (A126821 (n + 1))

end

end A126819.P4408004787535704829

/-! ## A126819.P17372420086598941575

`and(A056220(A157447(n+1)), A126822(n+1))`
-/

namespace A126819.P17372420086598941575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056220 (A157447 (n + 1)).toNat) (A126822 (n + 1))

end

end A126819.P17372420086598941575

/-!
# A126820: Ramanujan numbers (A000594) read mod 1024.

The programs for A126820, there is no canonical definition to state claims against.
-/

/-! ## A126820.P8739823233687882635

`A126821(n+1)%A040240(n)²`
-/

namespace A126820.P8739823233687882635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126821 (n + 1)) (A040240 n ^ 2)

end

end A126820.P8739823233687882635

/-! ## A126820.P5781995910384701448

`A126822(n+1)%A040240(n)²`
-/

namespace A126820.P5781995910384701448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126822 (n + 1)) (A040240 n ^ 2)

end

end A126820.P5781995910384701448

/-! ## A126820.P14428085602918130164

`A126823(n+1)%A040240(n)²`
-/

namespace A126820.P14428085602918130164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126823 (n + 1)) (A040240 n ^ 2)

end

end A126820.P14428085602918130164

/-! ## A126820.P10727381708976633403

`A126824(n+1)%A040240(n)²`
-/

namespace A126820.P10727381708976633403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126824 (n + 1)) (A040240 n ^ 2)

end

end A126820.P10727381708976633403

/-! ## A126820.P17452147704665268651

`and(A000594(n+1), A029548(A020639(2*(n+1))))`
-/

namespace A126820.P17452147704665268651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000594 (n + 1)) (A029548 (A020639 (2 * (n + 1))).toNat)

end

end A126820.P17452147704665268651

/-!
# A126821: Ramanujan numbers (A000594) read mod 2048.

The programs for A126821, there is no canonical definition to state claims against.
-/

/-! ## A126821.P3353230818925249903

`and(A056220(2*A157447(n+1)), A126822(n+1))`
-/

namespace A126821.P3353230818925249903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056220 (2 * A157447 (n + 1)).toNat) (A126822 (n + 1))

end

end A126821.P3353230818925249903

/-!
# A126822: Ramanujan numbers (A000594) read mod 4096.

The programs for A126822, there is no canonical definition to state claims against.
-/

/-! ## A126822.P9748600141877143776

`and(A000594(n+1), A125017(A074473(2*(n+2))))`
-/

namespace A126822.P9748600141877143776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000594 (n + 1)) (A125017 (A074473 (2 * (n + 2))).toNat)

end

end A126822.P9748600141877143776

/-!
# A126823: Ramanujan numbers (A000594) read mod 8192.

The programs for A126823, there is no canonical definition to state claims against.
-/

/-! ## A126823.P2295735815202899908

`and(A000594(n+1), A075960(A230686(2*(n+2))))`
-/

namespace A126823.P2295735815202899908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000594 (n + 1)) (A075960 (A230686 (2 * (n + 2))).toNat)

end

end A126823.P2295735815202899908

/-!
# A126825: Ramanujan numbers (A000594) read mod 3.

The programs for A126825, the canonical program `A126825.P10304875794539868672` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126825 has offset 1).

The definition of A126825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126825.P10304875794539868672

`∑{d}[n+1, #]%gcd(3, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126825

/-- `∑{d}[n+1, #]%gcd(3, n)` -/
def P10304875794539868672.Spec : Prop :=
  ∀ n, (P10304875794539868672.a n : ℤ) = A126825 (n + 1)

theorem P10304875794539868672.correct : P10304875794539868672.Spec := by
  intro n
  simp only [A126825, Nat.add_sub_cancel]

end A126825

/-! ## A126825.P14159021127344596350

`((n+1)*∑{d}[n+1, #])%3`
-/

namespace A126825.P14159021127344596350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) % 3

end

end A126825.P14159021127344596350

namespace A126825

/-- `((n+1)*∑{d}[n+1, #])%3` -/
def P14159021127344596350.Spec : Prop :=
  ∀ n, (P14159021127344596350.a n : ℤ) = A126825 (n + 1)

end A126825

/-! ## A126825.P106091527514255047

`∑{d}[n+1, (n+1)²/#]%3`
-/

namespace A126825.P106091527514255047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ))) 3

end

end A126825.P106091527514255047

namespace A126825

/-- `∑{d}[n+1, (n+1)²/#]%3` -/
def P106091527514255047.Spec : Prop :=
  ∀ n, P106091527514255047.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P7099778194820447339

`A045833(n+1)%3`
-/

namespace A126825.P7099778194820447339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045833 (n + 1)) 3

end

end A126825.P7099778194820447339

namespace A126825

/-- `A045833(n+1)%3` -/
def P7099778194820447339.Spec : Prop :=
  ∀ n, P7099778194820447339.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P12911700424688702420

`A064987(n+1)%3`
-/

namespace A126825.P12911700424688702420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064987 (n + 1)) 3

end

end A126825.P12911700424688702420

namespace A126825

/-- `A064987(n+1)%3` -/
def P12911700424688702420.Spec : Prop :=
  ∀ n, P12911700424688702420.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P10414317408836828901

`A078708(n+1)%3`
-/

namespace A126825.P10414317408836828901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078708 (n + 1)) 3

end

end A126825.P10414317408836828901

namespace A126825

/-- `A078708(n+1)%3` -/
def P10414317408836828901.Spec : Prop :=
  ∀ n, P10414317408836828901.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P12329827707498257406

`A106401(n+1)%3`
-/

namespace A126825.P12329827707498257406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106401 (n + 1)) 3

end

end A126825.P12329827707498257406

namespace A126825

/-- `A106401(n+1)%3` -/
def P12329827707498257406.Spec : Prop :=
  ∀ n, P12329827707498257406.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P4415124452875778298

`A106402(n+1)%3`
-/

namespace A126825.P4415124452875778298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106402 (n + 1)) 3

end

end A126825.P4415124452875778298

namespace A126825

/-- `A106402(n+1)%3` -/
def P4415124452875778298.Spec : Prop :=
  ∀ n, P4415124452875778298.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P16507533295460653660

`A126826(n+1)%3`
-/

namespace A126825.P16507533295460653660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126826 (n + 1)) 3

end

end A126825.P16507533295460653660

namespace A126825

/-- `A126826(n+1)%3` -/
def P16507533295460653660.Spec : Prop :=
  ∀ n, P16507533295460653660.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P2932757062151388629

`A126827(n+1)%3`
-/

namespace A126825.P2932757062151388629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126827 (n + 1)) 3

end

end A126825.P2932757062151388629

namespace A126825

/-- `A126827(n+1)%3` -/
def P2932757062151388629.Spec : Prop :=
  ∀ n, P2932757062151388629.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P4213124231243681632

`A126828(n+1)%3`
-/

namespace A126825.P4213124231243681632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126828 (n + 1)) 3

end

end A126825.P4213124231243681632

namespace A126825

/-- `A126828(n+1)%3` -/
def P4213124231243681632.Spec : Prop :=
  ∀ n, P4213124231243681632.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P14415184394689100023

`A126829(n+1)%3`
-/

namespace A126825.P14415184394689100023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126829 (n + 1)) 3

end

end A126825.P14415184394689100023

namespace A126825

/-- `A126829(n+1)%3` -/
def P14415184394689100023.Spec : Prop :=
  ∀ n, P14415184394689100023.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P7267198826778449012

`A126830(n+1)%3`
-/

namespace A126825.P7267198826778449012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126830 (n + 1)) 3

end

end A126825.P7267198826778449012

namespace A126825

/-- `A126830(n+1)%3` -/
def P7267198826778449012.Spec : Prop :=
  ∀ n, P7267198826778449012.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P6393077970328609407

`A126831(n+1)%3`
-/

namespace A126825.P6393077970328609407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126831 (n + 1)) 3

end

end A126825.P6393077970328609407

namespace A126825

/-- `A126831(n+1)%3` -/
def P6393077970328609407.Spec : Prop :=
  ∀ n, P6393077970328609407.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P8490906454933332507

`A131099(n+1)%3`
-/

namespace A126825.P8490906454933332507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131099 (n + 1)) 3

end

end A126825.P8490906454933332507

namespace A126825

/-- `A131099(n+1)%3` -/
def P8490906454933332507.Spec : Prop :=
  ∀ n, P8490906454933332507.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P5571727984680472355

`A138806(n+1)%3`
-/

namespace A126825.P5571727984680472355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138806 (n + 1)) 3

end

end A126825.P5571727984680472355

namespace A126825

/-- `A138806(n+1)%3` -/
def P5571727984680472355.Spec : Prop :=
  ∀ n, P5571727984680472355.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P2619821244832625056

`A229143(n+1)%3`
-/

namespace A126825.P2619821244832625056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229143 (n + 1)) 3

end

end A126825.P2619821244832625056

namespace A126825

/-- `A229143(n+1)%3` -/
def P2619821244832625056.Spec : Prop :=
  ∀ n, P2619821244832625056.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P16755276263523615899

`A266288(n+1)%3`
-/

namespace A126825.P16755276263523615899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266288 (n + 1)) 3

end

end A126825.P16755276263523615899

namespace A126825

/-- `A266288(n+1)%3` -/
def P16755276263523615899.Spec : Prop :=
  ∀ n, P16755276263523615899.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P13589068272304987984

`A282548(n+1)%3`
-/

namespace A126825.P13589068272304987984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282548 (n + 1)) 3

end

end A126825.P13589068272304987984

namespace A126825

/-- `A282548(n+1)%3` -/
def P13589068272304987984.Spec : Prop :=
  ∀ n, P13589068272304987984.a n = A126825 (n + 1)

end A126825

/-! ## A126825.P4867518082872588523

`A386781(n+1)%3`
-/

namespace A126825.P4867518082872588523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386781 (n + 1)) 3

end

end A126825.P4867518082872588523

namespace A126825

/-- `A386781(n+1)%3` -/
def P4867518082872588523.Spec : Prop :=
  ∀ n, P4867518082872588523.a n = A126825 (n + 1)

end A126825

/-!
# A126826: Ramanujan numbers (A000594) read mod 9.

The programs for A126826, the canonical program `A126826.P17381245552842291856` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126826 has offset 1).

The definition of A126826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126826.P17381245552842291856

`∑{d}[n+1, #*(n+1)²]%9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126826

/-- `∑{d}[n+1, #*(n+1)²]%9` -/
def P17381245552842291856.Spec : Prop :=
  ∀ n, (P17381245552842291856.a n : ℤ) = A126826 (n + 1)

theorem P17381245552842291856.correct : P17381245552842291856.Spec := by
  intro n
  simp only [A126826, Nat.add_sub_cancel]

end A126826

/-! ## A126826.P17199041176066435899

`((n+1)^2*∑{d}[n+1, #])%9`
-/

namespace A126826.P17199041176066435899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ d ∈ Nat.divisors (f1 n), d) % 9

end

end A126826.P17199041176066435899

namespace A126826

/-- `((n+1)^2*∑{d}[n+1, #])%9` -/
def P17199041176066435899.Spec : Prop :=
  ∀ n, (P17199041176066435899.a n : ℤ) = A126826 (n + 1)

end A126826

/-! ## A126826.P414328924684754605

`((n+1)*(n+1)*∑{d}[n+1, #])%9`
-/

namespace A126826.P414328924684754605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d)) % 9

end

end A126826.P414328924684754605

namespace A126826

/-- `((n+1)*(n+1)*∑{d}[n+1, #])%9` -/
def P414328924684754605.Spec : Prop :=
  ∀ n, (P414328924684754605.a n : ℤ) = A126826 (n + 1)

end A126826

/-! ## A126826.P8271758410752649122

`A106402(n+1)%9`
-/

namespace A126826.P8271758410752649122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106402 (n + 1)) 9

end

end A126826.P8271758410752649122

namespace A126826

/-- `A106402(n+1)%9` -/
def P8271758410752649122.Spec : Prop :=
  ∀ n, P8271758410752649122.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P7992376177823690638

`A126827(n+1)%9`
-/

namespace A126826.P7992376177823690638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126827 (n + 1)) 9

end

end A126826.P7992376177823690638

namespace A126826

/-- `A126827(n+1)%9` -/
def P7992376177823690638.Spec : Prop :=
  ∀ n, P7992376177823690638.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P3215434945588692169

`A126828(n+1)%9`
-/

namespace A126826.P3215434945588692169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126828 (n + 1)) 9

end

end A126826.P3215434945588692169

namespace A126826

/-- `A126828(n+1)%9` -/
def P3215434945588692169.Spec : Prop :=
  ∀ n, P3215434945588692169.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P5056271745239384227

`A126829(n+1)%9`
-/

namespace A126826.P5056271745239384227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126829 (n + 1)) 9

end

end A126826.P5056271745239384227

namespace A126826

/-- `A126829(n+1)%9` -/
def P5056271745239384227.Spec : Prop :=
  ∀ n, P5056271745239384227.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P5705319993729449205

`A126830(n+1)%9`
-/

namespace A126826.P5705319993729449205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126830 (n + 1)) 9

end

end A126826.P5705319993729449205

namespace A126826

/-- `A126830(n+1)%9` -/
def P5705319993729449205.Spec : Prop :=
  ∀ n, P5705319993729449205.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P17515709755168463229

`A126831(n+1)%9`
-/

namespace A126826.P17515709755168463229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126831 (n + 1)) 9

end

end A126826.P17515709755168463229

namespace A126826

/-- `A126831(n+1)%9` -/
def P17515709755168463229.Spec : Prop :=
  ∀ n, P17515709755168463229.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P13068958227700275898

`((n+1)²*A000203(n+1))%9`
-/

namespace A126826.P13068958227700275898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2 : ℤ) * A000203 (n + 1)) 9

end

end A126826.P13068958227700275898

namespace A126826

/-- `((n+1)²*A000203(n+1))%9` -/
def P13068958227700275898.Spec : Prop :=
  ∀ n, P13068958227700275898.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P6221535258699825777

`((n+1)²*sqrt(A072861(n+1)))%9`
-/

namespace A126826.P6221535258699825777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) * Real.sqrt (A072861 (n + 1) : ℝ))) 9

end

end A126826.P6221535258699825777

namespace A126826

/-- `((n+1)²*sqrt(A072861(n+1)))%9` -/
def P6221535258699825777.Spec : Prop :=
  ∀ n, P6221535258699825777.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P12245012567504024943

`A010878(A126827(n+1))`
-/

namespace A126826.P12245012567504024943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A126827 (n + 1)).toNat

end

end A126826.P12245012567504024943

namespace A126826

/-- `A010878(A126827(n+1))` -/
def P12245012567504024943.Spec : Prop :=
  ∀ n, P12245012567504024943.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P15211761256640061544

`A010878(A126828(n+1))`
-/

namespace A126826.P15211761256640061544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A126828 (n + 1)).toNat

end

end A126826.P15211761256640061544

namespace A126826

/-- `A010878(A126828(n+1))` -/
def P15211761256640061544.Spec : Prop :=
  ∀ n, P15211761256640061544.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P4702660278631982563

`A010878(A126829(n+1))`
-/

namespace A126826.P4702660278631982563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A126829 (n + 1)).toNat

end

end A126826.P4702660278631982563

namespace A126826

/-- `A010878(A126829(n+1))` -/
def P4702660278631982563.Spec : Prop :=
  ∀ n, P4702660278631982563.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P14831516290755403164

`A010878(A126830(n+1))`
-/

namespace A126826.P14831516290755403164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A126830 (n + 1)).toNat

end

end A126826.P14831516290755403164

namespace A126826

/-- `A010878(A126830(n+1))` -/
def P14831516290755403164.Spec : Prop :=
  ∀ n, P14831516290755403164.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P1440132305654443825

`A010878(A126831(n+1))`
-/

namespace A126826.P1440132305654443825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A126831 (n + 1)).toNat

end

end A126826.P1440132305654443825

namespace A126826

/-- `A010878(A126831(n+1))` -/
def P1440132305654443825.Spec : Prop :=
  ∀ n, P1440132305654443825.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P17065218381727451769

`(A000203(n+1)*∑[A005408(n)])%9`
-/

namespace A126826.P17065218381727451769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) 9

end

end A126826.P17065218381727451769

namespace A126826

/-- `(A000203(n+1)*∑[A005408(n)])%9` -/
def P17065218381727451769.Spec : Prop :=
  ∀ n, P17065218381727451769.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P2853394341797129083

`A282097(n+1)%9`
-/

namespace A126826.P2853394341797129083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282097 (n + 1)) 9

end

end A126826.P2853394341797129083

namespace A126826

/-- `A282097(n+1)%9` -/
def P2853394341797129083.Spec : Prop :=
  ∀ n, P2853394341797129083.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P5938034869840208093

`A282753(n+1)%9`
-/

namespace A126826.P5938034869840208093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282753 (n + 1)) 9

end

end A126826.P5938034869840208093

namespace A126826

/-- `A282753(n+1)%9` -/
def P5938034869840208093.Spec : Prop :=
  ∀ n, P5938034869840208093.a n = A126826 (n + 1)

end A126826

/-! ## A126826.P6760080926094688597

`A282781(n+1)%9`
-/

namespace A126826.P6760080926094688597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282781 (n + 1)) 9

end

end A126826.P6760080926094688597

namespace A126826

/-- `A282781(n+1)%9` -/
def P6760080926094688597.Spec : Prop :=
  ∀ n, P6760080926094688597.a n = A126826 (n + 1)

end A126826

/-!
# A126827: Ramanujan numbers (A000594) read mod 27.

The programs for A126827, the canonical program `A126827.P13956827893392718434` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126827 has offset 1).

The definition of A126827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126827.P17858836692150048895

`A106402(n+1)%27`
-/

namespace A126827.P17858836692150048895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106402 (n + 1)) 27

end

end A126827.P17858836692150048895

namespace A126827

/-- `A106402(n+1)%27` -/
def P17858836692150048895.Spec : Prop :=
  ∀ n, P17858836692150048895.a n = A126827 (n + 1)

end A126827

/-! ## A126827.P4761510163559007728

`A126828(n+1)%27`
-/

namespace A126827.P4761510163559007728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126828 (n + 1)) 27

end

end A126827.P4761510163559007728

namespace A126827

/-- `A126828(n+1)%27` -/
def P4761510163559007728.Spec : Prop :=
  ∀ n, P4761510163559007728.a n = A126827 (n + 1)

end A126827

/-! ## A126827.P10889030521002662544

`A126829(n+1)%27`
-/

namespace A126827.P10889030521002662544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126829 (n + 1)) 27

end

end A126827.P10889030521002662544

namespace A126827

/-- `A126829(n+1)%27` -/
def P10889030521002662544.Spec : Prop :=
  ∀ n, P10889030521002662544.a n = A126827 (n + 1)

end A126827

/-! ## A126827.P6258578099528081754

`A126830(n+1)%27`
-/

namespace A126827.P6258578099528081754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126830 (n + 1)) 27

end

end A126827.P6258578099528081754

namespace A126827

/-- `A126830(n+1)%27` -/
def P6258578099528081754.Spec : Prop :=
  ∀ n, P6258578099528081754.a n = A126827 (n + 1)

end A126827

/-! ## A126827.P8752256846821679596

`(A000594(n+1)%27+27)%27`
-/

namespace A126827.P8752256846821679596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000594 (n + 1)) 27 + 27) 27

end

end A126827.P8752256846821679596

namespace A126827

/-- `(A000594(n+1)%27+27)%27` -/
def P8752256846821679596.Spec : Prop :=
  ∀ n, P8752256846821679596.a n = A126827 (n + 1)

end A126827

/-! ## A126827.P13956827893392718434

`A282753(n+1)%27`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126827

/-- `A282753(n+1)%27` -/
def P13956827893392718434.Spec : Prop :=
  ∀ n, P13956827893392718434.a n = A126827 (n + 1)

theorem P13956827893392718434.correct : P13956827893392718434.Spec := by
  intro n
  simp only [A126827, Nat.add_sub_cancel]

end A126827

/-!
# A126828: Ramanujan numbers (A000594) read mod 81.

The programs for A126828, there is no canonical definition to state claims against.
-/

/-! ## A126828.P8728403177187778650

`A126829(n+1)%81`
-/

namespace A126828.P8728403177187778650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126829 (n + 1)) 81

end

end A126828.P8728403177187778650

/-! ## A126828.P17916593848911433181

`A126830(n+1)%81`
-/

namespace A126828.P17916593848911433181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126830 (n + 1)) 81

end

end A126828.P17916593848911433181

/-! ## A126828.P3285315907693432949

`A126831(n+1)%81`
-/

namespace A126828.P3285315907693432949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126831 (n + 1)) 81

end

end A126828.P3285315907693432949

/-!
# A126830: Ramanujan numbers (A000594) read mod 729.

The programs for A126830, there is no canonical definition to state claims against.
-/

/-! ## A126830.P11285403654041411940

`A126831(n+1)%(81/3)²`
-/

namespace A126830.P11285403654041411940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126831 (n + 1)) (SequenceMachineLib.roundAway (((81 : ℚ) / 3) ^ 2))

end

end A126830.P11285403654041411940

/-!
# A126832: Ramanujan numbers (A000594) read mod 5.

The programs for A126832, the canonical program `A126832.P6758222290220127998` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126832 has offset 1).

The definition of A126832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126832.P6758222290220127998

`((n+1)*∑{d}[n+1, #])%5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126832

/-- `((n+1)*∑{d}[n+1, #])%5` -/
def P6758222290220127998.Spec : Prop :=
  ∀ n, (P6758222290220127998.a n : ℤ) = A126832 (n + 1)

theorem P6758222290220127998.correct : P6758222290220127998.Spec := by
  intro n
  simp only [A126832, Nat.add_sub_cancel]

end A126832

/-! ## A126832.P226924477521340813

`A053723(n)%5`
-/

namespace A126832.P226924477521340813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053723 n) 5

end

end A126832.P226924477521340813

namespace A126832

/-- `A053723(n)%5` -/
def P226924477521340813.Spec : Prop :=
  ∀ n, P226924477521340813.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P16600275025203990619

`A064987(n+1)%5`
-/

namespace A126832.P16600275025203990619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064987 (n + 1)) 5

end

end A126832.P16600275025203990619

namespace A126832

/-- `A064987(n+1)%5` -/
def P16600275025203990619.Spec : Prop :=
  ∀ n, P16600275025203990619.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P15584423146965205519

`A126833(n+1)%5`
-/

namespace A126832.P15584423146965205519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126833 (n + 1)) 5

end

end A126832.P15584423146965205519

namespace A126832

/-- `A126833(n+1)%5` -/
def P15584423146965205519.Spec : Prop :=
  ∀ n, P15584423146965205519.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P18189465473824211239

`A126834(n+1)%5`
-/

namespace A126832.P18189465473824211239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126834 (n + 1)) 5

end

end A126832.P18189465473824211239

namespace A126832

/-- `A126834(n+1)%5` -/
def P18189465473824211239.Spec : Prop :=
  ∀ n, P18189465473824211239.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P11140060985323787797

`A126835(n+1)%5`
-/

namespace A126832.P11140060985323787797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126835 (n + 1)) 5

end

end A126832.P11140060985323787797

namespace A126832

/-- `A126835(n+1)%5` -/
def P11140060985323787797.Spec : Prop :=
  ∀ n, P11140060985323787797.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P17814940433052810342

`A282597(n+1)%5`
-/

namespace A126832.P17814940433052810342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282597 (n + 1)) 5

end

end A126832.P17814940433052810342

namespace A126832

/-- `A282597(n+1)%5` -/
def P17814940433052810342.Spec : Prop :=
  ∀ n, P17814940433052810342.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P12018872728533188648

`abs(A138512(n+1)%5)`
-/

namespace A126832.P12018872728533188648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A138512 (n + 1)) 5|

end

end A126832.P12018872728533188648

namespace A126832

/-- `abs(A138512(n+1)%5)` -/
def P12018872728533188648.Spec : Prop :=
  ∀ n, P12018872728533188648.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P10099048853863873909

`((n+1)*A000203(n+1))%5`
-/

namespace A126832.P10099048853863873909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A000203 (n + 1)) 5

end

end A126832.P10099048853863873909

namespace A126832

/-- `((n+1)*A000203(n+1))%5` -/
def P10099048853863873909.Spec : Prop :=
  ∀ n, P10099048853863873909.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P4269618574967674011

`A010874(A126833(n+1))`
-/

namespace A126832.P4269618574967674011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A126833 (n + 1)).toNat

end

end A126832.P4269618574967674011

namespace A126832

/-- `A010874(A126833(n+1))` -/
def P4269618574967674011.Spec : Prop :=
  ∀ n, P4269618574967674011.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P1817337323056856948

`A010874(A126834(n+1))`
-/

namespace A126832.P1817337323056856948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A126834 (n + 1)).toNat

end

end A126832.P1817337323056856948

namespace A126832

/-- `A010874(A126834(n+1))` -/
def P1817337323056856948.Spec : Prop :=
  ∀ n, P1817337323056856948.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P17965527509167015061

`A010874(A126835(n+1))`
-/

namespace A126832.P17965527509167015061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A126835 (n + 1)).toNat

end

end A126832.P17965527509167015061

namespace A126832

/-- `A010874(A126835(n+1))` -/
def P17965527509167015061.Spec : Prop :=
  ∀ n, P17965527509167015061.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P17763693768974014236

`A010874((A010874(n)+1)*A097011(n+1))`
-/

namespace A126832.P17763693768974014236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 ((A010874 n + 1) * A097011 (n + 1)).toNat

end

end A126832.P17763693768974014236

namespace A126832

/-- `A010874((A010874(n)+1)*A097011(n+1))` -/
def P17763693768974014236.Spec : Prop :=
  ∀ n, P17763693768974014236.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P980005676359703828

`A282050(n+1)%5`
-/

namespace A126832.P980005676359703828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282050 (n + 1)) 5

end

end A126832.P980005676359703828

namespace A126832

/-- `A282050(n+1)%5` -/
def P980005676359703828.Spec : Prop :=
  ∀ n, P980005676359703828.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P11731961560212796670

`A282099(n+1)%5`
-/

namespace A126832.P11731961560212796670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282099 (n + 1)) 5

end

end A126832.P11731961560212796670

namespace A126832

/-- `A282099(n+1)%5` -/
def P11731961560212796670.Spec : Prop :=
  ∀ n, P11731961560212796670.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P9486772416821955760

`A282254(n+1)%5`
-/

namespace A126832.P9486772416821955760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282254 (n + 1)) 5

end

end A126832.P9486772416821955760

namespace A126832

/-- `A282254(n+1)%5` -/
def P9486772416821955760.Spec : Prop :=
  ∀ n, P9486772416821955760.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P3274068994886941611

`A282753(n+1)%5`
-/

namespace A126832.P3274068994886941611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282753 (n + 1)) 5

end

end A126832.P3274068994886941611

namespace A126832

/-- `A282753(n+1)%5` -/
def P3274068994886941611.Spec : Prop :=
  ∀ n, P3274068994886941611.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P4426962500154776496

`A092885(n)%5`
-/

namespace A126832.P4426962500154776496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092885 n) 5

end

end A126832.P4426962500154776496

namespace A126832

/-- `A092885(n)%5` -/
def P4426962500154776496.Spec : Prop :=
  ∀ n, P4426962500154776496.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P7776483780539013798

`A010874(A053723(n))`
-/

namespace A126832.P7776483780539013798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A053723 n).toNat

end

end A126832.P7776483780539013798

namespace A126832

/-- `A010874(A053723(n))` -/
def P7776483780539013798.Spec : Prop :=
  ∀ n, P7776483780539013798.a n = A126832 (n + 1)

end A126832

/-! ## A126832.P14294903091027093970

`A121591(n+1)%5`
-/

namespace A126832.P14294903091027093970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121591 (n + 1)) 5

end

end A126832.P14294903091027093970

namespace A126832

/-- `A121591(n+1)%5` -/
def P14294903091027093970.Spec : Prop :=
  ∀ n, P14294903091027093970.a n = A126832 (n + 1)

end A126832

/-!
# A126833: Ramanujan numbers (A000594) read mod 25.

The programs for A126833, the canonical program `A126833.P17050375034510127289` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126833 has offset 1).

The definition of A126833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126833.P6252743209801605211

`A053723(n)%25`
-/

namespace A126833.P6252743209801605211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053723 n) 25

end

end A126833.P6252743209801605211

namespace A126833

/-- `A053723(n)%25` -/
def P6252743209801605211.Spec : Prop :=
  ∀ n, P6252743209801605211.a n = A126833 (n + 1)

end A126833

/-! ## A126833.P6641160244690810435

`A126834(n+1)%25`
-/

namespace A126833.P6641160244690810435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126834 (n + 1)) 25

end

end A126833.P6641160244690810435

namespace A126833

/-- `A126834(n+1)%25` -/
def P6641160244690810435.Spec : Prop :=
  ∀ n, P6641160244690810435.a n = A126833 (n + 1)

end A126833

/-! ## A126833.P18207448881383223467

`A126835(n+1)%25`
-/

namespace A126833.P18207448881383223467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126835 (n + 1)) 25

end

end A126833.P18207448881383223467

namespace A126833

/-- `A126835(n+1)%25` -/
def P18207448881383223467.Spec : Prop :=
  ∀ n, P18207448881383223467.a n = A126833 (n + 1)

end A126833

/-! ## A126833.P10668112226292056008

`abs(A138512(n+1)%25)`
-/

namespace A126833.P10668112226292056008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A138512 (n + 1)) 25|

end

end A126833.P10668112226292056008

namespace A126833

/-- `abs(A138512(n+1)%25)` -/
def P10668112226292056008.Spec : Prop :=
  ∀ n, P10668112226292056008.a n = A126833 (n + 1)

end A126833

/-! ## A126833.P17050375034510127289

`((n+1)*A013957(n+1))%25`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126833

/-- `((n+1)*A013957(n+1))%25` -/
def P17050375034510127289.Spec : Prop :=
  ∀ n, P17050375034510127289.a n = A126833 (n + 1)

theorem P17050375034510127289.correct : P17050375034510127289.Spec := by
  intro n
  simp only [A126833, Nat.add_sub_cancel]

end A126833

/-!
# A126836: Ramanujan numbers (A000594) read mod 7.

The programs for A126836, the canonical program `A126836.P13753276342524753575` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126836 has offset 1).

The definition of A126836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126836.P13607074405778727133

`A126837(n+1)%7`
-/

namespace A126836.P13607074405778727133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126837 (n + 1)) 7

end

end A126836.P13607074405778727133

namespace A126836

/-- `A126837(n+1)%7` -/
def P13607074405778727133.Spec : Prop :=
  ∀ n, P13607074405778727133.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P15735465114692097077

`A126838(n+1)%7`
-/

namespace A126836.P15735465114692097077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126838 (n + 1)) 7

end

end A126836.P15735465114692097077

namespace A126836

/-- `A126838(n+1)%7` -/
def P15735465114692097077.Spec : Prop :=
  ∀ n, P15735465114692097077.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P11856016735664029440

`A010876(A126837(n+1))`
-/

namespace A126836.P11856016735664029440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A126837 (n + 1)).toNat

end

end A126836.P11856016735664029440

namespace A126836

/-- `A010876(A126837(n+1))` -/
def P11856016735664029440.Spec : Prop :=
  ∀ n, P11856016735664029440.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P914147962624852702

`A010876(A126838(n+1))`
-/

namespace A126836.P914147962624852702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A126838 (n + 1)).toNat

end

end A126836.P914147962624852702

namespace A126836

/-- `A010876(A126838(n+1))` -/
def P914147962624852702.Spec : Prop :=
  ∀ n, P914147962624852702.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P13753276342524753575

`A280025(n+1)%7`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126836

/-- `A280025(n+1)%7` -/
def P13753276342524753575.Spec : Prop :=
  ∀ n, P13753276342524753575.a n = A126836 (n + 1)

theorem P13753276342524753575.correct : P13753276342524753575.Spec := by
  intro n
  simp only [A126836, Nat.add_sub_cancel]

end A126836

/-! ## A126836.P191805250169085541

`A281372(n+1)%7`
-/

namespace A126836.P191805250169085541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281372 (n + 1)) 7

end

end A126836.P191805250169085541

namespace A126836

/-- `A281372(n+1)%7` -/
def P191805250169085541.Spec : Prop :=
  ∀ n, P191805250169085541.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P5585120151173180099

`A282254(n+1)%7`
-/

namespace A126836.P5585120151173180099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282254 (n + 1)) 7

end

end A126836.P5585120151173180099

namespace A126836

/-- `A282254(n+1)%7` -/
def P5585120151173180099.Spec : Prop :=
  ∀ n, P5585120151173180099.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P14474692263762239617

`A282777(n+1)%7`
-/

namespace A126836.P14474692263762239617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282777 (n + 1)) 7

end

end A126836.P14474692263762239617

namespace A126836

/-- `A282777(n+1)%7` -/
def P14474692263762239617.Spec : Prop :=
  ∀ n, P14474692263762239617.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P1017009497532674840

`A121593(n+1)%7`
-/

namespace A126836.P1017009497532674840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121593 (n + 1)) 7

end

end A126836.P1017009497532674840

namespace A126836

/-- `A121593(n+1)%7` -/
def P1017009497532674840.Spec : Prop :=
  ∀ n, P1017009497532674840.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P9347642835132511523

`A008701(n+1)%7`
-/

namespace A126836.P9347642835132511523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008701 (n + 1)) 7

end

end A126836.P9347642835132511523

namespace A126836

/-- `A008701(n+1)%7` -/
def P9347642835132511523.Spec : Prop :=
  ∀ n, P9347642835132511523.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P9925331956902078685

`A008695(n+1)%7`
-/

namespace A126836.P9925331956902078685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008695 (n + 1)) 7

end

end A126836.P9925331956902078685

namespace A126836

/-- `A008695(n+1)%7` -/
def P9925331956902078685.Spec : Prop :=
  ∀ n, P9925331956902078685.a n = A126836 (n + 1)

end A126836

/-! ## A126836.P11016058642882149384

`A281373(n+1)%7`
-/

namespace A126836.P11016058642882149384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281373 (n + 1)) 7

end

end A126836.P11016058642882149384

namespace A126836

/-- `A281373(n+1)%7` -/
def P11016058642882149384.Spec : Prop :=
  ∀ n, P11016058642882149384.a n = A126836 (n + 1)

end A126836

/-!
# A126837: Ramanujan numbers (A000594) read mod 7^2.

The programs for A126837, there is no canonical definition to state claims against.
-/

/-! ## A126837.P5949816035494777260

`A126838(n+1)%49`
-/

namespace A126837.P5949816035494777260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126838 (n + 1)) 49

end

end A126837.P5949816035494777260

/-! ## A126837.P12632959992317368866

`(A000594(n+1)%49+49)%49`
-/

namespace A126837.P12632959992317368866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000594 (n + 1)) 49 + 49) 49

end

end A126837.P12632959992317368866

/-!
# A126839: Ramanujan numbers (A000594) read mod 11.

The programs for A126839, there is no canonical definition to state claims against.
-/

/-! ## A126839.P2641793056707385599

`A126840(n+1)%11`
-/

namespace A126839.P2641793056707385599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126840 (n + 1)) 11

end

end A126839.P2641793056707385599

/-! ## A126839.P7597258931327372014

`A126841(n+1)%11`
-/

namespace A126839.P7597258931327372014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126841 (n + 1)) 11

end

end A126839.P7597258931327372014

/-! ## A126839.P3172823582871839790

`(A000594(n+1)%11+11)%11`
-/

namespace A126839.P3172823582871839790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000594 (n + 1)) 11 + 11) 11

end

end A126839.P3172823582871839790

/-! ## A126839.P3429574137979234023

`A010880(A126840(n+1))`
-/

namespace A126839.P3429574137979234023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A126840 (n + 1)).toNat

end

end A126839.P3429574137979234023

/-! ## A126839.P3539339558491452134

`A010880(A126841(n+1))`
-/

namespace A126839.P3539339558491452134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A126841 (n + 1)).toNat

end

end A126839.P3539339558491452134

/-! ## A126839.P255733983763228817

`(A213256(n)+A000594(n+1))%11`
-/

namespace A126839.P255733983763228817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213256 n + A000594 (n + 1)) 11

end

end A126839.P255733983763228817

/-!
# A126840: Ramanujan numbers (A000594) read mod 11^2.

The programs for A126840, there is no canonical definition to state claims against.
-/

/-! ## A126840.P8405261490481702756

`A126841(n+1)%A181402(n+4)`
-/

namespace A126840.P8405261490481702756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126841 (n + 1)) (A181402 (n + 4))

end

end A126840.P8405261490481702756

/-!
# A126842: Ramanujan numbers (A000594) read mod 13.

The programs for A126842, there is no canonical definition to state claims against.
-/

/-! ## A126842.P1643901900157372392

`A126843(n+1)%13`
-/

namespace A126842.P1643901900157372392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126843 (n + 1)) 13

end

end A126842.P1643901900157372392

/-! ## A126842.P15973302406938556610

`(A000594(n+1)%13+13)%13`
-/

namespace A126842.P15973302406938556610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000594 (n + 1)) 13 + 13) 13

end

end A126842.P15973302406938556610

/-! ## A126842.P11751033087902788725

`A121597(n+1)%13`
-/

namespace A126842.P11751033087902788725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121597 (n + 1)) 13

end

end A126842.P11751033087902788725

/-! ## A126842.P7938844863118237427

`A008700(n+1)%13`
-/

namespace A126842.P7938844863118237427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008700 (n + 1)) 13

end

end A126842.P7938844863118237427

/-!
# A126845: Ramanujan numbers (A000594) read mod 23.

The programs for A126845, there is no canonical definition to state claims against.
-/

/-! ## A126845.P12973943172180789430

`A126846(n+1)%23`
-/

namespace A126845.P12973943172180789430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126846 (n + 1)) 23

end

end A126845.P12973943172180789430

/-! ## A126845.P2001976744649744104

`A126847(n+1)%23`
-/

namespace A126845.P2001976744649744104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126847 (n + 1)) 23

end

end A126845.P2001976744649744104

/-! ## A126845.P12985855538009219782

`(A000594(n+1)%23+23)%23`
-/

namespace A126845.P12985855538009219782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000594 (n + 1)) 23 + 23) 23

end

end A126845.P12985855538009219782

/-!
# A126848: a(n) = floor(2*n^(5/11)).

The programs for A126848, the canonical program `A126848.P15572557409876923802` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126848 has offset 1).

The definition of A126848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(n+1)^(5/11))` (program `A126848.P15572557409876923802`, by `A126848.P15572557409876923802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126848.P15572557409876923802

`floor(2*(n+1)^(5/11))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126848

/-- `floor(2*(n+1)^(5/11))` -/
def P15572557409876923802.Spec : Prop :=
  ∀ n, P15572557409876923802.a n = A126848 (n + 1)

theorem P15572557409876923802.correct : P15572557409876923802.Spec := by
  intro n
  simp only [A126848, Nat.add_sub_cancel]

end A126848

/-! ## A126848.P12797670319847127463

`A000196(A125667(n+3)-A257000(3*n+4))`
-/

namespace A126848.P12797670319847127463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A125667 (n + 3) - A257000 (3 * n + 4)).toNat

end

end A126848.P12797670319847127463

namespace A126848

/-- `A000196(A125667(n+3)-A257000(3*n+4))` -/
def P12797670319847127463.Spec : Prop :=
  ∀ n, P12797670319847127463.a n = A126848 (n + 1)

end A126848

/-! ## A126848.P12404457105614859877

`A276611(or(A000040(n+1), A106494(2*n+3)))`
-/

namespace A126848.P12404457105614859877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (Int.lor (A000040 (n + 1)) (A106494 (2 * n + 3))).toNat

end

end A126848.P12404457105614859877

namespace A126848

/-- `A276611(or(A000040(n+1), A106494(2*n+3)))` -/
def P12404457105614859877.Spec : Prop :=
  ∀ n, P12404457105614859877.a n = A126848 (n + 1)

end A126848

/-! ## A126848.P12806288641206110003

`round(sqrt(∑[A111629(n+5)]))`
-/

namespace A126848.P12806288641206110003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111629 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A126848.P12806288641206110003

namespace A126848

/-- `round(sqrt(∑[A111629(n+5)]))` -/
def P12806288641206110003.Spec : Prop :=
  ∀ n, P12806288641206110003.a n = A126848 (n + 1)

end A126848

/-! ## A126848.P2866493394130639981

`A391618(A120442(n+2))`
-/

namespace A126848.P2866493394130639981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A120442 (n + 2)).toNat

end

end A126848.P2866493394130639981

namespace A126848

/-- `A391618(A120442(n+2))` -/
def P2866493394130639981.Spec : Prop :=
  ∀ n, P2866493394130639981.a n = A126848 (n + 1)

end A126848

/-!
# A126849: Sum over the divisors d of n constrained to cases where all exponents of the prime factorization of d are prime.

The programs for A126849, the canonical program `A126849.P3318481749340531518` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126849 has offset 1).

The definition of A126849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126849.P3318481749340531518

`A366990(n+1)+A057428(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A126849

/-- `A366990(n+1)+A057428(n)` -/
def P3318481749340531518.Spec : Prop :=
  ∀ n, P3318481749340531518.a n = A126849 (n + 1)

theorem P3318481749340531518.correct : P3318481749340531518.Spec := by
  intro n
  simp only [A126849, Nat.add_sub_cancel]

end A126849

/-! ## A126849.P10549010179736559081

`A366990(n+1)-A057427(n)`
-/

namespace A126849.P10549010179736559081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (n + 1) - A057427 n

end

end A126849.P10549010179736559081

namespace A126849

/-- `A366990(n+1)-A057427(n)` -/
def P10549010179736559081.Spec : Prop :=
  ∀ n, P10549010179736559081.a n = A126849 (n + 1)

end A126849

/-! ## A126849.P13871598358567177294

`A366990(n+1)-A375428(A005117(n+1))`
-/

namespace A126849.P13871598358567177294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (n + 1) - A375428 (A005117 (n + 1)).toNat

end

end A126849.P13871598358567177294

namespace A126849

/-- `A366990(n+1)-A375428(A005117(n+1))` -/
def P13871598358567177294.Spec : Prop :=
  ∀ n, P13871598358567177294.a n = A126849 (n + 1)

end A126849

/-! ## A126849.P4279967831747728791

`A366990(n+1)-A002117(A090585(3*n+2))`
-/

namespace A126849.P4279967831747728791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (n + 1) - A002117 (A090585 (3 * n + 2)).toNat

end

end A126849.P4279967831747728791

namespace A126849

/-- `A366990(n+1)-A002117(A090585(3*n+2))` -/
def P4279967831747728791.Spec : Prop :=
  ∀ n, P4279967831747728791.a n = A126849 (n + 1)

end A126849

/-! ## A126849.P13606449272701760854

`A366990(n+1)-A001221(A304180(n+1))`
-/

namespace A126849.P13606449272701760854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (n + 1) - A001221 (A304180 (n + 1)).toNat

end

end A126849.P13606449272701760854

namespace A126849

/-- `A366990(n+1)-A001221(A304180(n+1))` -/
def P13606449272701760854.Spec : Prop :=
  ∀ n, P13606449272701760854.a n = A126849 (n + 1)

end A126849

/-! ## A126849.P16075853282079520083

`A366990(n+1)-A090585(3*n+2)%A219883(n+1)`
-/

namespace A126849.P16075853282079520083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (n + 1) - Int.tmod (A090585 (3 * n + 2)) (A219883 (n + 1))

end

end A126849.P16075853282079520083

namespace A126849

/-- `A366990(n+1)-A090585(3*n+2)%A219883(n+1)` -/
def P16075853282079520083.Spec : Prop :=
  ∀ n, P16075853282079520083.a n = A126849 (n + 1)

end A126849

/-!
# A126850: a(n) = OrdinaryUnitarySigma(a(n-1)).

The programs for A126850, the canonical program `A126850.P4999085369403255151` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126850 has offset 2).

The definition of A126850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107749, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126850.P4999085369403255151

`A107749(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A126850

/-- `A107749(a(n-1))` -/
def P4999085369403255151.Spec : Prop :=
  ∀ n, P4999085369403255151.a n = A126850 (n + 2)

theorem P4999085369403255151.correct : P4999085369403255151.Spec := by
  intro n
  simp only [A126850, Nat.add_sub_cancel]

end A126850

/-!
# A126852: a(1) = 8; for n>1, a(n) = SPM4Sigma(a(n-1)).

The programs for A126852, there is no canonical definition to state claims against.
-/

/-! ## A126852.P2716929363954302727

`A126851(a(n-1))` with `a(0)=8`
-/

namespace A126852.P2716929363954302727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A126851 (a (n - 1)).toNat

end

end A126852.P2716929363954302727

/-!
# A126853: Table read by antidiagonals: B(n,m) is the numerator of the Bernoulli polynomial of order m and degree n evaluated at x=0.

The programs for A126853, there is no canonical definition to state claims against.
-/

/-! ## A126853.P705352678232836405

`A144625(A241380(n))+A119328(n)`
-/

namespace A126853.P705352678232836405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144625 (A241380 n).toNat + A119328 n

end

end A126853.P705352678232836405

/-! ## A126853.P13101563266039757056

`ceil(A099039(n)/A334548(A110510(n)))`
-/

namespace A126853.P13101563266039757056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099039 n : ℚ) / (A334548 (A110510 n).toNat : ℚ)⌉

end

end A126853.P13101563266039757056

/-! ## A126853.P12919048184314726096

`ceil(A119331(n)/A334548(A110510(n)))`
-/

namespace A126853.P12919048184314726096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119331 n : ℚ) / (A334548 (A110510 n).toNat : ℚ)⌉

end

end A126853.P12919048184314726096

/-!
# A126855: Numbers k such that, if k = product{p|k} p^c(k,p), each c(k,p) is a positive integer and each p is a distinct prime, then the smallest prime-power p^c(k, p) is not a power of the smallest prime dividing k.

The programs for A126855, there is no canonical definition to state claims against.
-/

/-! ## A126855.P10995328823457683412

`lt[A034684(n+1), A028233(n+1)]+1`
-/

namespace A126855.P10995328823457683412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A126855.P10995328823457683412

/-! ## A126855.P15723906121868869280

`A020725(lt[A034684(n+1), A028233(n+1)])`
-/

namespace A126855.P15723906121868869280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126855.P15723906121868869280

/-! ## A126855.P381906790528606244

`A061767(lt[A034684(n+1), A028233(n+1)])`
-/

namespace A126855.P381906790528606244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126855.P381906790528606244

/-! ## A126855.P8978815550228077857

`A065475(lt[A034684(n+1), A028233(n+1)])`
-/

namespace A126855.P8978815550228077857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126855.P8978815550228077857

/-! ## A126855.P18424877279319440234

`A153152(lt[A034684(n+1), A028233(n+1)])`
-/

namespace A126855.P18424877279319440234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126855.P18424877279319440234

/-! ## A126855.P14064241352948637730

`A153152(lt[A028234(n+1)*A034684(n+1), n])`
-/

namespace A126855.P14064241352948637730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1) * A034684 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A126855.P14064241352948637730

/-! ## A126855.P11070204016780548736

`A153152(lt[A028234(n+1), n/A034684(n+1)])`
-/

namespace A126855.P11070204016780548736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A034684 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A126855.P11070204016780548736

/-!
# A126857: Maximal number of vertices in an integral circulant graph of degree n or n+1.

The programs for A126857, there is no canonical definition to state claims against.
-/

/-! ## A126857.P14970486199664446902

`ogf(6/(1-2x-x^2+5x^3-11x^4))`
-/

namespace A126857.P14970486199664446902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, -2, -1, 5, -11] n

end

end A126857.P14970486199664446902

/-!
# A126858: Coefficients in quasimodular form F_2(q) of level 1 and weight 6.

The programs for A126858, the canonical program `A126858.P11063396335751095604` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126858 has offset 0).

The definition of A126858 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A281372, A282097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126858.P11063396335751095604

`(A281372(n)-A282097(n))/6`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126858

/-- `(A281372(n)-A282097(n))/6` -/
def P11063396335751095604.Spec : Prop :=
  ∀ n, P11063396335751095604.a n = (A126858 n : ℚ)

end A126858

/-! ## A126858.P6219054201404311152

`(∑{d}[n, n*#^3]-∑{d}[n, #*n²])/6`
-/

namespace A126858.P6219054201404311152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), n * d ^ 3 : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d * n ^ 2 : ℕ) : ℤ) : ℚ) / 6

end

end A126858.P6219054201404311152

namespace A126858

/-- `(∑{d}[n, n*#^3]-∑{d}[n, #*n²])/6` -/
def P6219054201404311152.Spec : Prop :=
  ∀ n, P6219054201404311152.a n = (A126858 n : ℚ)

end A126858

/-! ## A126858.P12842295287929877395

`A008615(∑{d}[n, n*#^3]-∑{d}[n, #*n²])`
-/

namespace A126858.P12842295287929877395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ d ∈ Nat.divisors (f1 n), n * d ^ 3 - ∑ d ∈ Nat.divisors (f2 n), d * n ^ 2)

end

end A126858.P12842295287929877395

namespace A126858

/-- `A008615(∑{d}[n, n*#^3]-∑{d}[n, #*n²])` -/
def P12842295287929877395.Spec : Prop :=
  ∀ n, P12842295287929877395.a n = A126858 n

end A126858

/-! ## A126858.P17604867057207472294

`A008615(A281372(n)-∑{d}[n, #*n²])`
-/

namespace A126858.P17604867057207472294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A281372 n - ((∑ d ∈ Nat.divisors (f1 n), d * n ^ 2 : ℕ) : ℤ)).toNat

end

end A126858.P17604867057207472294

namespace A126858

/-- `A008615(A281372(n)-∑{d}[n, #*n²])` -/
def P17604867057207472294.Spec : Prop :=
  ∀ n, P17604867057207472294.a n = A126858 n

end A126858

/-! ## A126858.P15496898811077569436

`A008615(A281372(n)-n*∑{d}[n, n*#])`
-/

namespace A126858.P15496898811077569436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A281372 n - ((n * (∑ d ∈ Nat.divisors (f1 n), n * d) : ℕ) : ℤ)).toNat

end

end A126858.P15496898811077569436

namespace A126858

/-- `A008615(A281372(n)-n*∑{d}[n, n*#])` -/
def P15496898811077569436.Spec : Prop :=
  ∀ n, P15496898811077569436.a n = A126858 n

end A126858

/-!
# A126859: Numerators of coefficients in quasimodular form F_3(q) of level 1 and weight 12.

The programs for A126859, there is no canonical definition to state claims against.
-/

/-! ## A126859.P18152412921742201700

`lcm(12, A126861(n))/12`
-/

namespace A126859.P18152412921742201700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 12 (A126861 n) : ℚ) / 12

end

end A126859.P18152412921742201700

/-! ## A126859.P2525555625876117558

`A126860(n)/12*A126861(n)`
-/

namespace A126859.P2525555625876117558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126860 n : ℚ) / 12 * (A126861 n : ℚ)

end

end A126859.P2525555625876117558

/-!
# A126860: Denominators of coefficients in quasimodular form F_3(q) of level 1 and weight 12.

The programs for A126860, there is no canonical definition to state claims against.
-/

/-! ## A126860.P8659532322347868237

`12/gcd(12, A126861(n))`
-/

namespace A126860.P8659532322347868237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 / (Int.gcd 12 (A126861 n) : ℚ)

end

end A126860.P8659532322347868237

/-! ## A126860.P13984984041468294392

`gcd(A051745(n+1), A140065(A161704(n)))`
-/

namespace A126860.P13984984041468294392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051745 (n + 1)) (A140065 (A161704 n).toNat)

end

end A126860.P13984984041468294392

/-! ## A126860.P3009460597552184912

`gcd(A014824(n), A154122(lcm(6, (n+1)^3)/6))`
-/

namespace A126860.P3009460597552184912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014824 n) (A154122 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat)

end

end A126860.P3009460597552184912

/-! ## A126860.P1823339392357148790

`gcd(A236770(A134472(n)), A236770(n))`
-/

namespace A126860.P1823339392357148790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236770 (A134472 (n + 13)).toNat) (A236770 n)

end

end A126860.P1823339392357148790

/-! ## A126860.P16404930525703457629

`gcd(A044566(A269143(n+1)), A141214(n))`
-/

namespace A126860.P16404930525703457629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A044566 (A269143 (n + 1)).toNat) (A141214 n)

end

end A126860.P16404930525703457629

/-!
# A126861: Coefficients in quasimodular form 12*F_3(q) of level 1 and weight 12.

The programs for A126861, there is no canonical definition to state claims against.
-/

/-! ## A126861.P2534787069307152191

`12*A126859(n)/A126860(n)`
-/

namespace A126861.P2534787069307152191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * ((A126859 n : ℚ) / (A126860 n : ℚ))

end

end A126861.P2534787069307152191

/-! ## A126861.P6314548614289636886

`A008594(A126859(n))/A126860(n)`
-/

namespace A126861.P6314548614289636886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (A126859 n).toNat : ℚ) / (A126860 n : ℚ)

end

end A126861.P6314548614289636886

/-!
# A126862: Numbers k that have a component C(1,1) when expanded in the binomial basis of order t=3.

The programs for A126862, there is no canonical definition to state claims against.
-/

/-! ## A126862.P14913577851859607886

`∑[1-C(∑[char[∑[n]]], 2)+n]+C(comp[∑[n]]-n, 2)+1`
-/

namespace A126862.P14913577851859607886
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) + 1

end

end A126862.P14913577851859607886

/-! ## A126862.P9104208514880297654

`eq[1, A056558(n)]`
-/

namespace A126862.P9104208514880297654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126862.P9104208514880297654

/-! ## A126862.P15140384945887236450

`A229470(n+1)+1`
-/

namespace A126862.P15140384945887236450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229470 (n + 1) + 1

end

end A126862.P15140384945887236450

/-! ## A126862.P4949718039699848273

`A014370(comp[∑[n]])+1`
-/

namespace A126862.P4949718039699848273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A126862.P4949718039699848273

/-! ## A126862.P2362801411745553301

`eq[6, dr(A038479(n+1))]`
-/

namespace A126862.P2362801411745553301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A038479 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126862.P2362801411745553301

/-! ## A126862.P7967433486699721102

`eq[1, A228132(n+1)]+1`
-/

namespace A126862.P7967433486699721102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A126862.P7967433486699721102

/-! ## A126862.P17043841908180976919

`eq[1, val(A014311(n+1), 2)]`
-/

namespace A126862.P17043841908180976919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014311 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126862.P17043841908180976919

/-! ## A126862.P4442359741029603923

`A020725(A229470(n+1))`
-/

namespace A126862.P4442359741029603923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A229470 (n + 1)).toNat

end

end A126862.P4442359741029603923

/-!
# A126863: S(1)={1}. S(n) = {S(n-1) {1,2,...,(n-1),n,(n-1),...,2,1} S(n-1)}, where S(n) is a string of the first 3*2^n -2*n -3 terms of the sequence.

The programs for A126863, there is no canonical definition to state claims against.
-/

/-! ## A126863.P8941881231052027764

`gcd(3*n, A333849(A052547(n)))`
-/

namespace A126863.P8941881231052027764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) (A333849 (A052547 n).toNat)

end

end A126863.P8941881231052027764

/-! ## A126863.P3392825285591407314

`A005680(A325768(2*n)*A325768(n))`
-/

namespace A126863.P3392825285591407314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A325768 (2 * n) * A325768 n).toNat

end

end A126863.P3392825285591407314

/-! ## A126863.P16306370636408773712

`gcd(A001222(A346606(n+1)), A074459(n))`
-/

namespace A126863.P16306370636408773712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A346606 (n + 1)).toNat) (A074459 n)

end

end A126863.P16306370636408773712

/-! ## A126863.P13157575169883261066

`A105736(A090381(n)%A256055(2*(n+1)))`
-/

namespace A126863.P13157575169883261066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105736 (Int.tmod (A090381 n) (A256055 (2 * (n + 1)))).toNat

end

end A126863.P13157575169883261066

/-! ## A126863.P1263450444508993738

`A102097(A050680(n+1)-A157238(3*(n+1)))`
-/

namespace A126863.P1263450444508993738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (A050680 (n + 1) - A157238 (3 * (n + 1))).toNat

end

end A126863.P1263450444508993738

/-!
# A126864: a(n) = gcd(n, Product_{p|n} (p-1)), where the product is over the distinct primes, p, that divide n.

The programs for A126864, the canonical program `A126864.P16516226284724470716` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126864 has offset 1).

The definition of A126864 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A126864.P16516226284724470716

`gcd(n+1, A173557(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A126864

/-- `gcd(n+1, A173557(n+1))` -/
def P16516226284724470716.Spec : Prop :=
  ∀ n, (P16516226284724470716.a n : ℤ) = A126864 (n + 1)

theorem P16516226284724470716.correct : P16516226284724470716.Spec := by
  intro n
  simp only [A126864, Nat.add_sub_cancel]

end A126864

/-! ## A126864.P16786518451140924399

`(n+1)/A295126(n+1)`
-/

namespace A126864.P16786518451140924399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295126 (n + 1) : ℚ)

end

end A126864.P16786518451140924399

namespace A126864

/-- `(n+1)/A295126(n+1)` -/
def P16786518451140924399.Spec : Prop :=
  ∀ n, P16786518451140924399.a n = (A126864 (n + 1) : ℚ)

end A126864

/-! ## A126864.P1227550665451781322

`gcd(A071262(n), A318833(n+1))`
-/

namespace A126864.P1227550665451781322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071262 n) (A318833 (n + 1))

end

end A126864.P1227550665451781322

namespace A126864

/-- `gcd(A071262(n), A318833(n+1))` -/
def P1227550665451781322.Spec : Prop :=
  ∀ n, (P1227550665451781322.a n : ℤ) = A126864 (n + 1)

end A126864

/-! ## A126864.P3371533834353818891

`A023900(n+1)/A295127(n+1)`
-/

namespace A126864.P3371533834353818891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (A295127 (n + 1) : ℚ)

end

end A126864.P3371533834353818891

namespace A126864

/-- `A023900(n+1)/A295127(n+1)` -/
def P3371533834353818891.Spec : Prop :=
  ∀ n, P3371533834353818891.a n = (A126864 (n + 1) : ℚ)

end A126864

/-! ## A126864.P5733727251254790797

`gcd(A005451(n+1), A318841(n+1))`
-/

namespace A126864.P5733727251254790797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A318841 (n + 1))

end

end A126864.P5733727251254790797

namespace A126864

/-- `gcd(A005451(n+1), A318841(n+1))` -/
def P5733727251254790797.Spec : Prop :=
  ∀ n, (P5733727251254790797.a n : ℤ) = A126864 (n + 1)

end A126864

/-! ## A126864.P2981686473057222024

`gcd(A000010(A007947(n+1)), A051953(n+1))`
-/

namespace A126864.P2981686473057222024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A007947 (n + 1)).toNat) (A051953 (n + 1))

end

end A126864.P2981686473057222024

namespace A126864

/-- `gcd(A000010(A007947(n+1)), A051953(n+1))` -/
def P2981686473057222024.Spec : Prop :=
  ∀ n, (P2981686473057222024.a n : ℤ) = A126864 (n + 1)

end A126864

/-! ## A126864.P7690811806555963230

`gcd(A023900(A052938(2*n)), A052938(2*n))`
-/

namespace A126864.P7690811806555963230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023900 (A052938 (2 * n)).toNat) (A052938 (2 * n))

end

end A126864.P7690811806555963230

namespace A126864

/-- `gcd(A023900(A052938(2*n)), A052938(2*n))` -/
def P7690811806555963230.Spec : Prop :=
  ∀ n, (P7690811806555963230.a n : ℤ) = A126864 (n + 1)

end A126864

/-! ## A126864.P2461514927954853748

`A322320(A064549(n+1))`
-/

namespace A126864.P2461514927954853748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322320 (A064549 (n + 1)).toNat

end

end A126864.P2461514927954853748

namespace A126864

/-- `A322320(A064549(n+1))` -/
def P2461514927954853748.Spec : Prop :=
  ∀ n, P2461514927954853748.a n = A126864 (n + 1)

end A126864

/-! ## A126864.P3771677198555888214

`A322320((n+1)*A007947(n+1))`
-/

namespace A126864.P3771677198555888214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322320 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A126864.P3771677198555888214

namespace A126864

/-- `A322320((n+1)*A007947(n+1))` -/
def P3771677198555888214.Spec : Prop :=
  ∀ n, P3771677198555888214.a n = A126864 (n + 1)

end A126864

/-! ## A126864.P11003031431253773539

`A322320(A304203(n+1))`
-/

namespace A126864.P11003031431253773539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322320 (A304203 (n + 1)).toNat

end

end A126864.P11003031431253773539

namespace A126864

/-- `A322320(A304203(n+1))` -/
def P11003031431253773539.Spec : Prop :=
  ∀ n, P11003031431253773539.a n = A126864 (n + 1)

end A126864

/-!
# A126865: a(n) = gcd(Product_{p|n} (p+1)^b(p,n), Product_{p|n} (p-1)^b(p,n)), where the products are over the distinct primes, p, that divide n and p^b(p,n) is the highest power of p dividing n.

The programs for A126865, the canonical program `A126865.P18394640040114108110` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126865 has offset 1).

The definition of A126865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126865.P4728750238819151182

`gcd(A003958(n+1), A003959(n+1))`
-/

namespace A126865.P4728750238819151182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003958 (n + 1)) (A003959 (n + 1))

end

end A126865.P4728750238819151182

namespace A126865

/-- `gcd(A003958(n+1), A003959(n+1))` -/
def P4728750238819151182.Spec : Prop :=
  ∀ n, (P4728750238819151182.a n : ℤ) = A126865 (n + 1)

end A126865

/-! ## A126865.P16746602404359584883

`sqrt(gcd(A167343(n+1), A167349(n+1)))`
-/

namespace A126865.P16746602404359584883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A167343 (n + 1)) (A167349 (n + 1)) : ℝ)

end

end A126865.P16746602404359584883

namespace A126865

/-- `sqrt(gcd(A167343(n+1), A167349(n+1)))` -/
def P16746602404359584883.Spec : Prop :=
  ∀ n, P16746602404359584883.a n = (A126865 (n + 1) : ℝ)

end A126865

/-! ## A126865.P18394640040114108110

`gcd(lcm(2, A003959(n+1)), A125131(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A126865

/-- `gcd(lcm(2, A003959(n+1)), A125131(n+1))` -/
def P18394640040114108110.Spec : Prop :=
  ∀ n, (P18394640040114108110.a n : ℤ) = A126865 (n + 1)

theorem P18394640040114108110.correct : P18394640040114108110.Spec := by
  intro n
  simp only [A126865, Nat.add_sub_cancel]

end A126865

/-! ## A126865.P9998457139413568621

`gcd(sqrt(A167349(n+1)), A003958(2*(n+1)))`
-/

namespace A126865.P9998457139413568621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A167349 (n + 1) : ℝ))) (A003958 (2 * (n + 1)))

end

end A126865.P9998457139413568621

namespace A126865

/-- `gcd(sqrt(A167349(n+1)), A003958(2*(n+1)))` -/
def P9998457139413568621.Spec : Prop :=
  ∀ n, (P9998457139413568621.a n : ℤ) = A126865 (n + 1)

end A126865

/-! ## A126865.P1799417505922889423

`gcd(A064478(n+1), A125131(n+1))`
-/

namespace A126865.P1799417505922889423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064478 (n + 1)) (A125131 (n + 1))

end

end A126865.P1799417505922889423

namespace A126865

/-- `gcd(A064478(n+1), A125131(n+1))` -/
def P1799417505922889423.Spec : Prop :=
  ∀ n, (P1799417505922889423.a n : ℤ) = A126865 (n + 1)

end A126865

/-!
# A126866: a(n) = 13*a(n-1) - a(n-2).

The programs for A126866, the canonical program `A126866.P2195766446472009212` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126866 has offset 0).

The definition of A126866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*a(n-1)-a(n-2)` (program `A126866.P2195766446472009212`, by `A126866.P2195766446472009212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126866.P2195766446472009212

`13*a(n-1)-a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126866

/-- `13*a(n-1)-a(n-2)` -/
def P2195766446472009212.Spec : Prop :=
  ∀ n, P2195766446472009212.a n = A126866 n

theorem P2195766446472009212.correct : P2195766446472009212.Spec := by
  intro n
  simp only [A126866]

end A126866

/-! ## A126866.P15599279841959735537

`ogf((1+x)/(1-13x+x^2))`
-/

namespace A126866.P15599279841959735537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -13, 1] n

end

end A126866.P15599279841959735537

namespace A126866

/-- `ogf((1+x)/(1-13x+x^2))` -/
def P15599279841959735537.Spec : Prop :=
  ∀ n, P15599279841959735537.a n = A126866 n

end A126866

/-! ## A126866.P12233367056535716559

`Δ[A098300(n)]`
-/

namespace A126866.P12233367056535716559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126866.P12233367056535716559

namespace A126866

/-- `Δ[A098300(n)]` -/
def P12233367056535716559.Spec : Prop :=
  ∀ n, P12233367056535716559.a n = A126866 n

end A126866

/-! ## A126866.P149098394236623243

`∑[A078363(n)]-1`
-/

namespace A126866.P149098394236623243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A126866.P149098394236623243

namespace A126866

/-- `∑[A078363(n)]-1` -/
def P149098394236623243.Spec : Prop :=
  ∀ n, P149098394236623243.a n = A126866 n

end A126866

/-! ## A126866.P12799761532798929882

`Δ[A072881(2*(n+1))/2]`
-/

namespace A126866.P12799761532798929882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072881 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126866.P12799761532798929882

namespace A126866

/-- `Δ[A072881(2*(n+1))/2]` -/
def P12799761532798929882.Spec : Prop :=
  ∀ n, P12799761532798929882.a n = (A126866 n : ℚ)

end A126866

/-! ## A126866.P17220889309021004907

`A098300(n+1)-A098300(n)`
-/

namespace A126866.P17220889309021004907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098300 (n + 1) - A098300 n

end

end A126866.P17220889309021004907

namespace A126866

/-- `A098300(n+1)-A098300(n)` -/
def P17220889309021004907.Spec : Prop :=
  ∀ n, P17220889309021004907.a n = A126866 n

end A126866

/-! ## A126866.P17722805305360446393

`2*A078362(n)-A085260(n+1)`
-/

namespace A126866.P17722805305360446393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078362 n - A085260 (n + 1)

end

end A126866.P17722805305360446393

namespace A126866

/-- `2*A078362(n)-A085260(n+1)` -/
def P17722805305360446393.Spec : Prop :=
  ∀ n, P17722805305360446393.a n = A126866 n

end A126866

/-!
# A126867: Largest even semiprime <= n^2.

The programs for A126867, the canonical program `A126867.P8640075110133158416` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126867 has offset 2).

The definition of A126867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126867.P8640075110133158416

`2*A000040(∑[A105149(n+1)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A126867

/-- `2*A000040(∑[A105149(n+1)])` -/
def P8640075110133158416.Spec : Prop :=
  ∀ n, P8640075110133158416.a n = A126867 (n + 2)

theorem P8640075110133158416.correct : P8640075110133158416.Spec := by
  intro n
  simp only [A126867, Nat.add_sub_cancel]

end A126867

/-! ## A126867.P3741456689057646563

`A100484(A000720(∑[or(1, n)+1]))`
-/

namespace A126867.P3741456689057646563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A000720 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A126867.P3741456689057646563

namespace A126867

/-- `A100484(A000720(∑[or(1, n)+1]))` -/
def P3741456689057646563.Spec : Prop :=
  ∀ n, P3741456689057646563.a n = A126867 (n + 2)

end A126867

/-! ## A126867.P4761504322056813845

`A100484(A000720(∑[(n+1)%2+n+1]))`
-/

namespace A126867.P4761504322056813845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A000720 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A126867.P4761504322056813845

namespace A126867

/-- `A100484(A000720(∑[(n+1)%2+n+1]))` -/
def P4761504322056813845.Spec : Prop :=
  ∀ n, P4761504322056813845.a n = A126867 (n + 2)

end A126867

/-! ## A126867.P7990726175583876954

`A100484(A000720(∑[and(1, n+1)+n+1]))`
-/

namespace A126867.P7990726175583876954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A000720 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A126867.P7990726175583876954

namespace A126867

/-- `A100484(A000720(∑[and(1, n+1)+n+1]))` -/
def P7990726175583876954.Spec : Prop :=
  ∀ n, P7990726175583876954.a n = A126867 (n + 2)

end A126867

/-! ## A126867.P18336496983551751851

`2*A060308(∑[∑[(n+1)%2]])`
-/

namespace A126867.P18336496983551751851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060308 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126867.P18336496983551751851

namespace A126867

/-- `2*A060308(∑[∑[(n+1)%2]])` -/
def P18336496983551751851.Spec : Prop :=
  ∀ n, P18336496983551751851.a n = A126867 (n + 2)

end A126867

/-! ## A126867.P17749591088319634487

`2*A060308(∑[A008619(n)])`
-/

namespace A126867.P17749591088319634487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060308 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126867.P17749591088319634487

namespace A126867

/-- `2*A060308(∑[A008619(n)])` -/
def P17749591088319634487.Spec : Prop :=
  ∀ n, P17749591088319634487.a n = A126867 (n + 2)

end A126867

/-! ## A126867.P14131377492685976644

`2*A060308(∑[∑[A010873((n+1)²)]])`
-/

namespace A126867.P14131377492685976644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060308 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126867.P14131377492685976644

namespace A126867

/-- `2*A060308(∑[∑[A010873((n+1)²)]])` -/
def P14131377492685976644.Spec : Prop :=
  ∀ n, P14131377492685976644.a n = A126867 (n + 2)

end A126867

/-! ## A126867.P7088860236949389699

`record[2*A006530(A020703(2*(n+1)))]`
-/

namespace A126867.P7088860236949389699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A020703 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126867.P7088860236949389699

namespace A126867

/-- `record[2*A006530(A020703(2*(n+1)))]` -/
def P7088860236949389699.Spec : Prop :=
  ∀ n, P7088860236949389699.a n = A126867 (n + 2)

end A126867

/-! ## A126867.P7490316712964127994

`2*A000040(A000720(A004525((n+1)²)+n+1))`
-/

namespace A126867.P7490316712964127994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (A000720 (A004525 ((n + 1) ^ 2) + (n + 1 : ℤ)).toNat).toNat

end

end A126867.P7490316712964127994

namespace A126867

/-- `2*A000040(A000720(A004525((n+1)²)+n+1))` -/
def P7490316712964127994.Spec : Prop :=
  ∀ n, P7490316712964127994.a n = A126867 (n + 2)

end A126867

/-!
# A126868: a(n) = (n+1)!! mod n.

The programs for A126868, the canonical program `A126868.P3514637722808854095` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126868 has offset 1).

The definition of A126868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126868.P3514637722808854095

`∏[n/a(n-1)]%(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126868

/-- `∏[n/a(n-1)]%(n+1)` -/
def P3514637722808854095.Spec : Prop :=
  ∀ n, P3514637722808854095.a n = A126868 (n + 1)

theorem P3514637722808854095.correct : P3514637722808854095.Spec := by
  intro n
  simp only [A126868, Nat.add_sub_cancel]

end A126868

/-! ## A126868.P15587376152504070621

`A006882(n)%(n+1)`
-/

namespace A126868.P15587376152504070621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 n) (n + 1 : ℤ)

end

end A126868.P15587376152504070621

namespace A126868

/-- `A006882(n)%(n+1)` -/
def P15587376152504070621.Spec : Prop :=
  ∀ n, P15587376152504070621.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P9888189842978905119

`(A128882(n)+1)%(n+1)`
-/

namespace A126868.P9888189842978905119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128882 n + 1) (n + 1 : ℤ)

end

end A126868.P9888189842978905119

namespace A126868

/-- `(A128882(n)+1)%(n+1)` -/
def P9888189842978905119.Spec : Prop :=
  ∀ n, P9888189842978905119.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P4948571694513514863

`A227415(n+1)%(n+1)`
-/

namespace A126868.P4948571694513514863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227415 (n + 1)) (n + 1 : ℤ)

end

end A126868.P4948571694513514863

namespace A126868

/-- `A227415(n+1)%(n+1)` -/
def P4948571694513514863.Spec : Prop :=
  ∀ n, P4948571694513514863.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P16907809421361082440

`Δ[(n+1)*a(n-2)]%(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A126868.P16907809421361082440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (n + 1 : ℤ)

end

end A126868.P16907809421361082440

namespace A126868

/-- `Δ[(n+1)*a(n-2)]%(n+1)` -/
def P16907809421361082440.Spec : Prop :=
  ∀ n, P16907809421361082440.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P15463796151256980190

`A076051(n+1)%(n+1)`
-/

namespace A126868.P15463796151256980190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076051 (n + 1)) (n + 1 : ℤ)

end

end A126868.P15463796151256980190

namespace A126868

/-- `A076051(n+1)%(n+1)` -/
def P15463796151256980190.Spec : Prop :=
  ∀ n, P15463796151256980190.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P9552505589284797928

`A060696(n+2)%(n+1)`
-/

namespace A126868.P9552505589284797928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060696 (n + 2)) (n + 1 : ℤ)

end

end A126868.P9552505589284797928

namespace A126868

/-- `A060696(n+2)%(n+1)` -/
def P9552505589284797928.Spec : Prop :=
  ∀ n, P9552505589284797928.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P5626599587421191135

`A216443(n+2)%(n+1)`
-/

namespace A126868.P5626599587421191135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216443 (n + 2)) (n + 1 : ℤ)

end

end A126868.P5626599587421191135

namespace A126868

/-- `A216443(n+2)%(n+1)` -/
def P5626599587421191135.Spec : Prop :=
  ∀ n, P5626599587421191135.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P11643812516986728166

`A216466(n+2)%(n+1)`
-/

namespace A126868.P11643812516986728166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216466 (n + 2)) (n + 1 : ℤ)

end

end A126868.P11643812516986728166

namespace A126868

/-- `A216466(n+2)%(n+1)` -/
def P11643812516986728166.Spec : Prop :=
  ∀ n, P11643812516986728166.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P7691282409300318836

`A007911(n+3)%(n+1)`
-/

namespace A126868.P7691282409300318836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007911 (n + 3)) (n + 1 : ℤ)

end

end A126868.P7691282409300318836

namespace A126868

/-- `A007911(n+3)%(n+1)` -/
def P7691282409300318836.Spec : Prop :=
  ∀ n, P7691282409300318836.a n = A126868 (n + 1)

end A126868

/-! ## A126868.P9996939195105879505

`A230698(∑[n])%(n+1)`
-/

namespace A126868.P9996939195105879505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A126868.P9996939195105879505

namespace A126868

/-- `A230698(∑[n])%(n+1)` -/
def P9996939195105879505.Spec : Prop :=
  ∀ n, P9996939195105879505.a n = A126868 (n + 1)

end A126868

/-!
# A126869: a(n) = Sum_{k = 0..n} binomial(n,floor(k/2))*(-1)^(n-k).

The programs for A126869, the canonical program `A126869.P13432652929287595300` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126869 has offset 0).

The definition of A126869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126869.P15656593887687812297

`(4-4/n)*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A126869.P15656593887687812297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (4 - 4 / (n : ℚ)) * a (n - 2)

end

end A126869.P15656593887687812297

namespace A126869

/-- `(4-4/n)*a(n-2)` -/
def P15656593887687812297.Spec : Prop :=
  ∀ n, P15656593887687812297.a n = (A126869 n : ℚ)

end A126869

/-! ## A126869.P13432652929287595300

`Δ[A100066(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A126869

/-- `Δ[A100066(n)]` -/
def P13432652929287595300.Spec : Prop :=
  ∀ n, P13432652929287595300.a n = A126869 n

theorem P13432652929287595300.correct : P13432652929287595300.Spec := by
  intro n
  simp only [A126869]

end A126869

/-! ## A126869.P16152285544632420574

`abs(Δ[A104551(n)])`
-/

namespace A126869.P16152285544632420574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126869.P16152285544632420574

namespace A126869

/-- `abs(Δ[A104551(n)])` -/
def P16152285544632420574.Spec : Prop :=
  ∀ n, P16152285544632420574.a n = A126869 n

end A126869

/-! ## A126869.P13121879812060285689

`abs((1-n)*A104624(n))`
-/

namespace A126869.P13121879812060285689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) * A104624 n|

end

end A126869.P13121879812060285689

namespace A126869

/-- `abs((1-n)*A104624(n))` -/
def P13121879812060285689.Spec : Prop :=
  ∀ n, P13121879812060285689.a n = A126869 n

end A126869

/-! ## A126869.P10506603654439673049

`abs((1-n)*A182122(n))`
-/

namespace A126869.P10506603654439673049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) * A182122 n|

end

end A126869.P10506603654439673049

namespace A126869

/-- `abs((1-n)*A182122(n))` -/
def P10506603654439673049.Spec : Prop :=
  ∀ n, P10506603654439673049.a n = A126869 n

end A126869

/-! ## A126869.P12868704349663379076

`char[2*n]*A081668(n)`
-/

namespace A126869.P12868704349663379076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A081668 n

end

end A126869.P12868704349663379076

namespace A126869

/-- `char[2*n]*A081668(n)` -/
def P12868704349663379076.Spec : Prop :=
  ∀ n, P12868704349663379076.a n = A126869 n

end A126869

/-! ## A126869.P7074694137882332466

`(n+2)/2*A126120(n)`
-/

namespace A126869.P7074694137882332466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A126120 n : ℚ)

end

end A126869.P7074694137882332466

namespace A126869

/-- `(n+2)/2*A126120(n)` -/
def P7074694137882332466.Spec : Prop :=
  ∀ n, P7074694137882332466.a n = (A126869 n : ℚ)

end A126869

/-! ## A126869.P13903262013781496577

`A128014(n)-a(n-1)` with `a(0)=1`
-/

namespace A126869.P13903262013781496577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128014 n - a (n - 1)

end

end A126869.P13903262013781496577

namespace A126869

/-- `A128014(n)-a(n-1)` -/
def P13903262013781496577.Spec : Prop :=
  ∀ n, P13903262013781496577.a n = A126869 n

end A126869

/-! ## A126869.P15566402667201934475

`(n+2)/2*A097331(n+1)`
-/

namespace A126869.P15566402667201934475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A097331 (n + 1) : ℚ)

end

end A126869.P15566402667201934475

namespace A126869

/-- `(n+2)/2*A097331(n+1)` -/
def P15566402667201934475.Spec : Prop :=
  ∀ n, P15566402667201934475.a n = (A126869 n : ℚ)

end A126869

/-! ## A126869.P5632510571572485389

`2*(A210736(n)-a(n-1))` with `a(0)=1`
-/

namespace A126869.P5632510571572485389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A210736 n - a (n - 1))

end

end A126869.P5632510571572485389

namespace A126869

/-- `2*(A210736(n)-a(n-1))` -/
def P5632510571572485389.Spec : Prop :=
  ∀ n, P5632510571572485389.a n = A126869 n

end A126869

/-! ## A126869.P16030677415222371510

`A129383(A124625(n+1))`
-/

namespace A126869.P16030677415222371510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (A124625 (n + 1)).toNat

end

end A126869.P16030677415222371510

namespace A126869

/-- `A129383(A124625(n+1))` -/
def P16030677415222371510.Spec : Prop :=
  ∀ n, P16030677415222371510.a n = A126869 n

end A126869

/-! ## A126869.P5993490833256730104

`A081668(n)-A010673(n)`
-/

namespace A126869.P5993490833256730104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n - A010673 n

end

end A126869.P5993490833256730104

namespace A126869

/-- `A081668(n)-A010673(n)` -/
def P5993490833256730104.Spec : Prop :=
  ∀ n, P5993490833256730104.a n = A126869 n

end A126869

/-! ## A126869.P8551334485909269638

`A027656(n)*A028303(n)`
-/

namespace A126869.P8551334485909269638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n * A028303 n

end

end A126869.P8551334485909269638

namespace A126869

/-- `A027656(n)*A028303(n)` -/
def P8551334485909269638.Spec : Prop :=
  ∀ n, P8551334485909269638.a n = A126869 n

end A126869

/-! ## A126869.P4363934529755116580

`A027656(n)*A028304(n)`
-/

namespace A126869.P4363934529755116580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n * A028304 n

end

end A126869.P4363934529755116580

namespace A126869

/-- `A027656(n)*A028304(n)` -/
def P4363934529755116580.Spec : Prop :=
  ∀ n, P4363934529755116580.a n = A126869 n

end A126869

/-! ## A126869.P15524357010068462417

`A027656(n)*A099363(n)`
-/

namespace A126869.P15524357010068462417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n * A099363 n

end

end A126869.P15524357010068462417

namespace A126869

/-- `A027656(n)*A099363(n)` -/
def P15524357010068462417.Spec : Prop :=
  ∀ n, P15524357010068462417.a n = A126869 n

end A126869

/-! ## A126869.P12506891013573904007

`A059841(n)*A089849(n)`
-/

namespace A126869.P12506891013573904007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A089849 n

end

end A126869.P12506891013573904007

namespace A126869

/-- `A059841(n)*A089849(n)` -/
def P12506891013573904007.Spec : Prop :=
  ∀ n, P12506891013573904007.a n = A126869 n

end A126869

/-! ## A126869.P10688388219693366251

`A027656(n)*A126324(n)`
-/

namespace A126869.P10688388219693366251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n * A126324 n

end

end A126869.P10688388219693366251

namespace A126869

/-- `A027656(n)*A126324(n)` -/
def P10688388219693366251.Spec : Prop :=
  ∀ n, P10688388219693366251.a n = A126869 n

end A126869

/-! ## A126869.P7492675012804063459

`lcm(A081668(n), A117188(n))`
-/

namespace A126869.P7492675012804063459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081668 n) (A117188 n)

end

end A126869.P7492675012804063459

namespace A126869

/-- `lcm(A081668(n), A117188(n))` -/
def P7492675012804063459.Spec : Prop :=
  ∀ n, (P7492675012804063459.a n : ℤ) = A126869 n

end A126869

/-! ## A126869.P14593725313898193625

`lcm(A089849(n), A126120(n))`
-/

namespace A126869.P14593725313898193625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089849 n) (A126120 n)

end

end A126869.P14593725313898193625

namespace A126869

/-- `lcm(A089849(n), A126120(n))` -/
def P14593725313898193625.Spec : Prop :=
  ∀ n, (P14593725313898193625.a n : ℤ) = A126869 n

end A126869

/-! ## A126869.P13656573958087248216

`lcm(A128014(n), A176742(n))`
-/

namespace A126869.P13656573958087248216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128014 n) (A176742 n)

end

end A126869.P13656573958087248216

namespace A126869

/-- `lcm(A128014(n), A176742(n))` -/
def P13656573958087248216.Spec : Prop :=
  ∀ n, (P13656573958087248216.a n : ℤ) = A126869 n

end A126869

/-!
# A126870: a(1)=1. a(n) = number of earlier terms of the sequence which are coprime to the sum of distinct prime divisors of n.

The programs for A126870, there is no canonical definition to state claims against.
-/

/-! ## A126870.P11985110157663823299

`∏{e}[3^A010848(n+1), #]-A169674(A024924(n))`
-/

namespace A126870.P11985110157663823299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A010848 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p : ℕ) : ℤ) - A169674 (A024924 n).toNat

end

end A126870.P11985110157663823299

/-! ## A126870.P8198943932587085578

`∏{e}[3^A010848(n+1), #]-A292380(A194902(n+1))`
-/

namespace A126870.P8198943932587085578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A010848 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p : ℕ) : ℤ) - A292380 (A194902 (n + 1)).toNat

end

end A126870.P8198943932587085578

/-!
# A126872: Numbers of unstrained alkane staggered conformers (acyclic). See Table 4 of Cyvin et al. reference for precise definition.

The programs for A126872, there is no canonical definition to state claims against.
-/

/-! ## A126872.P17189827411482174875

`A126880(n+5)-(A126879(n+5)+A126877(n+5))`
-/

namespace A126872.P17189827411482174875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126880 (n + 5) - (A126879 (n + 5) + A126877 (n + 5))

end

end A126872.P17189827411482174875

/-! ## A126872.P16719782499547019511

`A342791(A133406(n+2))`
-/

namespace A126872.P16719782499547019511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342791 (A133406 (n + 2)).toNat

end

end A126872.P16719782499547019511

/-!
# A126874: Numbers of unstrained alkane staggered conformers (acyclic). See Table 4 of Cyvin et al. reference for precise definition.

The programs for A126874, there is no canonical definition to state claims against.
-/

/-! ## A126874.P934728934668743835

`ogf((x+x^2+x^5)/(1-2x-2x^2+3x^3))`
-/

namespace A126874.P934728934668743835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 0, 1] [1, -2, -2, 3] n

end

end A126874.P934728934668743835

/-! ## A126874.P14967830272488728195

`∑[or(n%2, A079955(3*n+1))]`
-/

namespace A126874.P14967830272488728195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A079955 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126874.P14967830272488728195

/-! ## A126874.P18120178173181722581

`round(∑[sqrt(A003242(3*n+2))]/3)`
-/

namespace A126874.P18120178173181722581
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003242 (3 * n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 3)

end

end A126874.P18120178173181722581

/-! ## A126874.P7238409102378228405

`A130091(2^n)-(char[3*n+5]+1)`
-/

namespace A126874.P7238409102378228405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (2 ^ n) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A126874.P7238409102378228405

/-!
# A126875: Numbers of unstrained alkane staggered conformers (acyclic). See Table 4 of Cyvin et al. reference for precise definition.

The programs for A126875, there is no canonical definition to state claims against.
-/

/-! ## A126875.P2795059537481410568

`ogf((3x+2x^2+2x^3-6x^4)/(1-4x))`
-/

namespace A126875.P2795059537481410568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 2, -6] [1, -4] n

end

end A126875.P2795059537481410568

/-!
# A126876: Numbers of unstrained alkane staggered conformers (acyclic). See Table 4 of Cyvin et al. reference for precise definition.

The programs for A126876, there is no canonical definition to state claims against.
-/

/-! ## A126876.P5628578783801584073

`a(n-1)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=20, a(4)=49, a(5)=119, a(6)=288`
-/

namespace A126876.P5628578783801584073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8, 20, 49, 119, 288] fun n a =>
  a (n - 1)

end

end A126876.P5628578783801584073

/-! ## A126876.P16223983595337893820

`ogf((1-x+x^4+3x^5+8x^6)/(1-4x+4x^2))`
-/

namespace A126876.P16223983595337893820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, 1, 3, 8] [1, -4, 4] n

end

end A126876.P16223983595337893820

/-! ## A126876.P15000786764614198905

`floor((n+3)^sqrt(2*n)/(n+1))`
-/

namespace A126876.P15000786764614198905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) ^ (Real.sqrt (2 * n : ℝ)) / (n + 1 : ℝ)⌋

end

end A126876.P15000786764614198905

/-!
# A126877: Numbers of unstrained alkane staggered conformers (acyclic) of the unbranched type for point group C1. See Table 4 of the Cyvin et al. reference for precise definition.

The programs for A126877, there is no canonical definition to state claims against.
-/

/-! ## A126877.P5390608820073492158

`A126880(n+5)-(A126879(n+5)+A126872(n+5))`
-/

namespace A126877.P5390608820073492158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126880 (n + 5) - (A126879 (n + 5) + A126872 (n + 5))

end

end A126877.P5390608820073492158

/-! ## A126877.P7122404053764002777

`A126880(n+5)-(A342791(A133406(n+2))+A126879(n+5))`
-/

namespace A126877.P7122404053764002777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126880 (n + 5) - (A342791 (A133406 (n + 2)).toNat + A126879 (n + 5))

end

end A126877.P7122404053764002777

/-! ## A126877.P13072396415256520283

`A107769(A037442(n+1))`
-/

namespace A126877.P13072396415256520283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107769 (A037442 (n + 1)).toNat

end

end A126877.P13072396415256520283

/-!
# A126878: Numbers of unstrained alkane staggered conformers (acyclic). See Table 4 of Cyvin et al. reference for precise definition.

The programs for A126878, there is no canonical definition to state claims against.
-/

/-! ## A126878.P11265662563302932766

`∑[∏[A000005((2*n+5)^n)]+n^3+n]`
-/

namespace A126878.P11265662563302932766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n + 5) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + (n ^ 3 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126878.P11265662563302932766

/-!
# A126879: Numbers of unstrained alkane staggered conformers (acyclic). See Table 4 of Cyvin et al. reference for precise definition.

The programs for A126879, there is no canonical definition to state claims against.
-/

/-! ## A126879.P4553335625520388657

`A126880(n+5)-(A126877(n+5)+A126872(n+5))`
-/

namespace A126879.P4553335625520388657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126880 (n + 5) - (A126877 (n + 5) + A126872 (n + 5))

end

end A126879.P4553335625520388657

/-! ## A126879.P18151774893997247541

`A126880(n+5)-(A342791(A133406(n+2))+A126877(n+5))`
-/

namespace A126879.P18151774893997247541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126880 (n + 5) - (A342791 (A133406 (n + 2)).toNat + A126877 (n + 5))

end

end A126879.P18151774893997247541

/-! ## A126879.P9410824143504750786

`A335711(n+2)+A079559(A356289(n))`
-/

namespace A126879.P9410824143504750786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335711 (n + 2) + A079559 (A356289 n).toNat

end

end A126879.P9410824143504750786

/-!
# A126880: Numbers of unstrained alkane staggered conformers (acyclic). See Table 4 of Cyvin et al. reference for precise definition.

The programs for A126880, there is no canonical definition to state claims against.
-/

/-! ## A126880.P5781573067655316088

`A126872(n+5)+A126879(n+5)+A126877(n+5)`
-/

namespace A126880.P5781573067655316088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126872 (n + 5) + (A126879 (n + 5) + A126877 (n + 5))

end

end A126880.P5781573067655316088

/-! ## A126880.P7471561692783704899

`A342791(A133406(n+2))+A126879(n+5)+A126877(n+5)`
-/

namespace A126880.P7471561692783704899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342791 (A133406 (n + 2)).toNat + (A126879 (n + 5) + A126877 (n + 5))

end

end A126880.P7471561692783704899

/-!
# A126882: a(1)=2. a(n) is the a(n-1)st integer from among those positive integers coprime to a(n-1).

The programs for A126882, there is no canonical definition to state claims against.
-/

/-! ## A126882.P5573759208610597279

`A069213(a(n-1))` with `a(0)=2`
-/

namespace A126882.P5573759208610597279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A069213 (a (n - 1)).toNat

end

end A126882.P5573759208610597279

/-! ## A126882.P2260273163736597622

`A077665(a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A126882.P2260273163736597622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A077665 (a (n - 1)).toNat - a (n - 1)

end

end A126882.P2260273163736597622

/-! ## A126882.P18092024645094473607

`A069213(ceil(a(A023443(n))))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A126882.P18092024645094473607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A069213 (a (A023443 n).toNat).toNat

end

end A126882.P18092024645094473607

/-! ## A126882.P7397947309116379053

`A077581(A000217(a(n-1)))` with `a(0)=2`
-/

namespace A126882.P7397947309116379053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A077581 (A000217 (a (n - 1)).toNat).toNat

end

end A126882.P7397947309116379053

/-!
# A126883: a(n) = (2^0)*(2^1)*(2^2)*(2^3)...(2^n)-1 = 2^T(n) - 1 where T(n) = A000217(n) is the n-th triangular number.

The programs for A126883, the canonical program `A126883.P5417842474268763739` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126883 has offset 0).

The definition of A126883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126883.P5417842474268763739

`A006125(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A126883

/-- `A006125(n+1)-1` -/
def P5417842474268763739.Spec : Prop :=
  ∀ n, P5417842474268763739.a n = A126883 n

theorem P5417842474268763739.correct : P5417842474268763739.Spec := by
  intro n
  simp only [A126883]

end A126883

/-! ## A126883.P719878066826633462

`2^∑[n]-1`
-/

namespace A126883.P719878066826633462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A126883.P719878066826633462

namespace A126883

/-- `2^∑[n]-1` -/
def P719878066826633462.Spec : Prop :=
  ∀ n, P719878066826633462.a n = A126883 n

end A126883

/-! ## A126883.P6331876823683667836

`or(n, ∏[2^n]-1)`
-/

namespace A126883.P6331876823683667836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A126883.P6331876823683667836

namespace A126883

/-- `or(n, ∏[2^n]-1)` -/
def P6331876823683667836.Spec : Prop :=
  ∀ n, P6331876823683667836.a n = A126883 n

end A126883

/-! ## A126883.P5367531658126463802

`xor(-1, -2^∑[n])`
-/

namespace A126883.P5367531658126463802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A126883.P5367531658126463802

namespace A126883

/-- `xor(-1, -2^∑[n])` -/
def P5367531658126463802.Spec : Prop :=
  ∀ n, P5367531658126463802.a n = A126883 n

end A126883

/-! ## A126883.P8549666785592100799

`∑[abs(Δ[2^C(n, 2)])]`
-/

namespace A126883.P8549666785592100799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126883.P8549666785592100799

namespace A126883

/-- `∑[abs(Δ[2^C(n, 2)])]` -/
def P8549666785592100799.Spec : Prop :=
  ∀ n, P8549666785592100799.a n = A126883 n

end A126883

/-!
# A126884: a(n) = (2^0)*(2^1)*(2^2)*(2^3)...(2^n)+1 = 2^T_n+1 (cf. A000217).

The programs for A126884, the canonical program `A126884.P1929371919095062872` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126884 has offset 0).

The definition of A126884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126884.P1929371919095062872

`2^(n*(n+1)/2)+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A126884

/-- `2^(n*(n+1)/2)+1` -/
def P1929371919095062872.Spec : Prop :=
  ∀ n, P1929371919095062872.a n = (A126884 n : ℝ)

end A126884

/-! ## A126884.P10946183498747915191

`xor(4, ∏[2^n]+5)`
-/

namespace A126884.P10946183498747915191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∏ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A126884.P10946183498747915191

namespace A126884

/-- `xor(4, ∏[2^n]+5)` -/
def P10946183498747915191.Spec : Prop :=
  ∀ n, (P10946183498747915191.a n : ℤ) = A126884 n

end A126884

/-! ## A126884.P10332789293189367503

`-xor(-1, 2^∑[n])`
-/

namespace A126884.P10332789293189367503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A126884.P10332789293189367503

namespace A126884

/-- `-xor(-1, 2^∑[n])` -/
def P10332789293189367503.Spec : Prop :=
  ∀ n, P10332789293189367503.a n = A126884 n

end A126884

/-!
# A126885: T(n,k) = n*T(n,k-1) + k, with T(n,1) = 1, square array read by ascending antidiagonals (n >= 0, k >= 1).

The programs for A126885, there is no canonical definition to state claims against.
-/

/-! ## A126885.P18062790126756798980

`A104881(n)+A089000(A061579(n))`
-/

namespace A126885.P18062790126756798980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104881 n + A089000 (A061579 n).toNat

end

end A126885.P18062790126756798980

/-! ## A126885.P15617190728286913127

`A089000(A380649(n+1))`
-/

namespace A126885.P15617190728286913127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A380649 (n + 1)).toNat

end

end A126885.P15617190728286913127

/-! ## A126885.P17313286579307814103

`A089000(A099375(n)+n)`
-/

namespace A126885.P17313286579307814103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A099375 n + (n : ℤ)).toNat

end

end A126885.P17313286579307814103

/-! ## A126885.P8079615373437692008

`A089000(A061579(comp[∑[n]]))`
-/

namespace A126885.P8079615373437692008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A126885.P8079615373437692008

/-! ## A126885.P8829220523044683423

`A089000(A212012(n+1)-1+n)`
-/

namespace A126885.P8829220523044683423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A212012 (n + 1) - 1 + (n : ℤ)).toNat

end

end A126885.P8829220523044683423

/-! ## A126885.P2929152730230148154

`A089000(A038722(comp[∑[n-1]]+2)-1)`
-/

namespace A126885.P2929152730230148154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1).toNat

end

end A126885.P2929152730230148154

/-! ## A126885.P12152051818310813882

`A089000(A004273(A004736(n+1))+n)`
-/

namespace A126885.P12152051818310813882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A004273 (A004736 (n + 1)).toNat + (n : ℤ)).toNat

end

end A126885.P12152051818310813882

/-! ## A126885.P14183394908053363398

`A089000(A061579(n)+A002024(n+1))`
-/

namespace A126885.P14183394908053363398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (A061579 n + A002024 (n + 1)).toNat

end

end A126885.P14183394908053363398

/-!
# A126887: a(n) = A005278(n)/2.

The programs for A126887, there is no canonical definition to state claims against.
-/

/-! ## A126887.P8916423301171691860

`A005278(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126887.P8916423301171691860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005278 (n + 1) : ℚ) / 2

end

end A126887.P8916423301171691860

/-! ## A126887.P16204664468353404964

`∪[A058763(n+1), A058827(n+1)]/2`
-/

namespace A126887.P16204664468353404964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058827 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A126887.P16204664468353404964

/-! ## A126887.P11285984372138008011

`A322809(A005278(n+1)-4)`
-/

namespace A126887.P11285984372138008011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A005278 (n + 1) - 4).toNat

end

end A126887.P11285984372138008011

/-! ## A126887.P16283904542527357277

`A008619(A005278(n+1)-2)`
-/

namespace A126887.P16283904542527357277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005278 (n + 1) - 2).toNat

end

end A126887.P16283904542527357277

/-! ## A126887.P11258869121641288548

`A078898(A005278(n+1)-2)+1`
-/

namespace A126887.P11258869121641288548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A005278 (n + 1) - 2).toNat + 1

end

end A126887.P11258869121641288548

/-! ## A126887.P11698100773038703012

`lt[A063507(2*(n+1)), 1]+1`
-/

namespace A126887.P11698100773038703012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A126887.P11698100773038703012

/-! ## A126887.P12452897635561140408

`A001281(A005278(n+1))`
-/

namespace A126887.P12452897635561140408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005278 (n + 1)).toNat

end

end A126887.P12452897635561140408

/-! ## A126887.P18199503698254918329

`A004526(A005278(n+1)+1)`
-/

namespace A126887.P18199503698254918329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005278 (n + 1) + 1).toNat

end

end A126887.P18199503698254918329

/-! ## A126887.P4609003750081352532

`A057979(A005278(n+1)+1)`
-/

namespace A126887.P4609003750081352532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A005278 (n + 1) + 1).toNat

end

end A126887.P4609003750081352532

/-! ## A126887.P18289631923103168917

`A000463(A005278(n+1)-1)`
-/

namespace A126887.P18289631923103168917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A005278 (n + 1) - 1).toNat

end

end A126887.P18289631923103168917

/-! ## A126887.P4820248011074757840

`A078898(lcm(2, A005278(n+1)))`
-/

namespace A126887.P4820248011074757840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.lcm 2 (A005278 (n + 1)))

end

end A126887.P4820248011074757840

/-! ## A126887.P2058279283945749794

`A008619(eq[0, A063740(n+2)])`
-/

namespace A126887.P2058279283945749794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126887.P2058279283945749794

/-! ## A126887.P18235179247863561940

`A020725(lt[A063507(2*(n+1)), 1])`
-/

namespace A126887.P18235179247863561940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A126887.P18235179247863561940

/-! ## A126887.P1629708656353591984

`A020725(lt[A063507(n+1), 1])/2`
-/

namespace A126887.P1629708656353591984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A126887.P1629708656353591984

/-! ## A126887.P9628600450680217708

`A133265(lt[A063507(n+1), 1])/2`
-/

namespace A126887.P9628600450680217708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A126887.P9628600450680217708

/-! ## A126887.P17552645405405750990

`eq[A049283(2*n+1), A063507(2*(n+1))]+1`
-/

namespace A126887.P17552645405405750990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A126887.P17552645405405750990

/-! ## A126887.P16270809246961152692

`eq[A063507(2*(n+1)), A215240(2*n+1)]+1`
-/

namespace A126887.P16270809246961152692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215240 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A126887.P16270809246961152692

/-! ## A126887.P2203059705527011012

`eq[A063507(2*(n+1)), A264739(2*n+1)]+1`
-/

namespace A126887.P2203059705527011012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A126887.P2203059705527011012

/-! ## A126887.P4497052844304497912

`A008615(3*A005278(n+1))`
-/

namespace A126887.P4497052844304497912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A005278 (n + 1)).toNat

end

end A126887.P4497052844304497912

/-!
# A126889: a(n) = the number of divisors of A126888(n).

The programs for A126889, there is no canonical definition to state claims against.
-/

/-! ## A126889.P9393047436357276124

`∑{d}[A126888(n+1), gcd(#, A054805(n+1))]`
-/

namespace A126889.P9393047436357276124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A054805 (n + 1))

end

end A126889.P9393047436357276124

/-! ## A126889.P9217790552480641969

`A000005(A126888(n+1))`
-/

namespace A126889.P9217790552480641969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A126888 (n + 1)).toNat

end

end A126889.P9217790552480641969

/-! ## A126889.P8995390023106175757

`∑{d}[A126888(n+1), A001826(A001826(#))]`
-/

namespace A126889.P8995390023106175757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001826 (A001826 d).toNat

end

end A126889.P8995390023106175757

/-! ## A126889.P8616930669781335866

`∑{d}[A126888(n+1), A014673(A014673(#))]`
-/

namespace A126889.P8616930669781335866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014673 (A014673 d).toNat

end

end A126889.P8616930669781335866

/-! ## A126889.P282058993151991307

`∑{d}[A126888(n+1), A316556(A045344(#))]`
-/

namespace A126889.P282058993151991307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A316556 (A045344 d).toNat

end

end A126889.P282058993151991307

/-! ## A126889.P9349750624353141942

`A334954(A126888(n+1))-A004736(∑[n+1])`
-/

namespace A126889.P9349750624353141942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A126888 (n + 1)).toNat - A004736 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126889.P9349750624353141942

/-!
# A126890: Triangle read by rows: T(n,k) = n*(n+2*k+1)/2, 0 <= k <= n.

The programs for A126890, the canonical program `A126890.P13067422002995229557` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126890 has offset 0).

The definition of A126890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126890.P1371663346767151038

`A176798(n)-1`
-/

namespace A126890.P1371663346767151038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n - 1

end

end A126890.P1371663346767151038

namespace A126890

/-- `A176798(n)-1` -/
def P1371663346767151038.Spec : Prop :=
  ∀ n, P1371663346767151038.a n = A126890 n

end A126890

/-! ## A126890.P6618837714948716791

`A162609(n+1)-1+n`
-/

namespace A126890.P6618837714948716791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) - 1 + (n : ℤ)

end

end A126890.P6618837714948716791

namespace A126890

/-- `A162609(n+1)-1+n` -/
def P6618837714948716791.Spec : Prop :=
  ∀ n, P6618837714948716791.a n = A126890 n

end A126890

/-! ## A126890.P17532989422025315537

`∑[char[∑[n]]]*A051162(n)-n`
-/

namespace A126890.P17532989422025315537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051162 n - (n : ℤ)

end

end A126890.P17532989422025315537

namespace A126890

/-- `∑[char[∑[n]]]*A051162(n)-n` -/
def P17532989422025315537.Spec : Prop :=
  ∀ n, P17532989422025315537.a n = A126890 n

end A126890

/-! ## A126890.P13067422002995229557

`A079904(n)+A057944(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A126890

/-- `A079904(n)+A057944(n)` -/
def P13067422002995229557.Spec : Prop :=
  ∀ n, P13067422002995229557.a n = A126890 n

theorem P13067422002995229557.correct : P13067422002995229557.Spec := by
  intro n
  simp only [A126890]

end A126890

/-! ## A126890.P13446934594274246268

`A159797(n)+A083920(n)`
-/

namespace A126890.P13446934594274246268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + A083920 n

end

end A126890.P13446934594274246268

namespace A126890

/-- `A159797(n)+A083920(n)` -/
def P13446934594274246268.Spec : Prop :=
  ∀ n, P13446934594274246268.a n = A126890 n

end A126890

/-! ## A126890.P3474959395518777791

`A367964(n)+A087401(n)`
-/

namespace A126890.P3474959395518777791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 n + A087401 n

end

end A126890.P3474959395518777791

namespace A126890

/-- `A367964(n)+A087401(n)` -/
def P3474959395518777791.Spec : Prop :=
  ∀ n, P3474959395518777791.a n = A126890 n

end A126890

/-! ## A126890.P10104065910282124744

`A162609(n+1)+A023443(n)`
-/

namespace A126890.P10104065910282124744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) + A023443 n

end

end A126890.P10104065910282124744

namespace A126890

/-- `A162609(n+1)+A023443(n)` -/
def P10104065910282124744.Spec : Prop :=
  ∀ n, P10104065910282124744.a n = A126890 n

end A126890

/-! ## A126890.P16604661822507328591

`A162609(n+1)-A024000(n)`
-/

namespace A126890.P16604661822507328591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) - A024000 n

end

end A126890.P16604661822507328591

namespace A126890

/-- `A162609(n+1)-A024000(n)` -/
def P16604661822507328591.Spec : Prop :=
  ∀ n, P16604661822507328591.a n = A126890 n

end A126890

/-! ## A126890.P4230155224267561145

`A079904(n)+n-A002262(n)`
-/

namespace A126890.P4230155224267561145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + ((n : ℤ) - A002262 n)

end

end A126890.P4230155224267561145

namespace A126890

/-- `A079904(n)+n-A002262(n)` -/
def P4230155224267561145.Spec : Prop :=
  ∀ n, P4230155224267561145.a n = A126890 n

end A126890

/-! ## A126890.P7934241967602992795

`A159797(n)+n-A003056(n)`
-/

namespace A126890.P7934241967602992795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + ((n : ℤ) - A003056 n)

end

end A126890.P7934241967602992795

namespace A126890

/-- `A159797(n)+n-A003056(n)` -/
def P7934241967602992795.Spec : Prop :=
  ∀ n, P7934241967602992795.a n = A126890 n

end A126890

/-! ## A126890.P1239887175128858485

`A049780(n)+A245300(n)-n`
-/

namespace A126890.P1239887175128858485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (A245300 n - (n : ℤ))

end

end A126890.P1239887175128858485

namespace A126890

/-- `A049780(n)+A245300(n)-n` -/
def P1239887175128858485.Spec : Prop :=
  ∀ n, P1239887175128858485.a n = A126890 n

end A126890

/-! ## A126890.P4481853693828238318

`A292564(n)-(A091435(n)+n)`
-/

namespace A126890.P4481853693828238318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292564 n - (A091435 n + (n : ℤ))

end

end A126890.P4481853693828238318

namespace A126890

/-- `A292564(n)-(A091435(n)+n)` -/
def P4481853693828238318.Spec : Prop :=
  ∀ n, P4481853693828238318.a n = A126890 n

end A126890

/-! ## A126890.P14239177028492960115

`A159797(n)+∑[1-A010054(n)]`
-/

namespace A126890.P14239177028492960115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126890.P14239177028492960115

namespace A126890

/-- `A159797(n)+∑[1-A010054(n)]` -/
def P14239177028492960115.Spec : Prop :=
  ∀ n, P14239177028492960115.a n = A126890 n

end A126890

/-! ## A126890.P10129964624003210620

`A076110(n+1)+A057944(n)-1`
-/

namespace A126890.P10129964624003210620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + (A057944 n - 1)

end

end A126890.P10129964624003210620

namespace A126890

/-- `A076110(n+1)+A057944(n)-1` -/
def P10129964624003210620.Spec : Prop :=
  ∀ n, P10129964624003210620.a n = A126890 n

end A126890

/-! ## A126890.P13635044510329161105

`A122797(n+1)+A159797(n)-1`
-/

namespace A126890.P13635044510329161105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1) + (A159797 n - 1)

end

end A126890.P13635044510329161105

namespace A126890

/-- `A122797(n+1)+A159797(n)-1` -/
def P13635044510329161105.Spec : Prop :=
  ∀ n, P13635044510329161105.a n = A126890 n

end A126890

/-! ## A126890.P18243048464803407463

`A079904(n)+C(A002024(n+1), 2)`
-/

namespace A126890.P18243048464803407463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (Nat.choose (A002024 (n + 1)).toNat 2 : ℤ)

end

end A126890.P18243048464803407463

namespace A126890

/-- `A079904(n)+C(A002024(n+1), 2)` -/
def P18243048464803407463.Spec : Prop :=
  ∀ n, P18243048464803407463.a n = A126890 n

end A126890

/-! ## A126890.P48962063826314970

`(A003056(n)-1)*A002262(n)+n`
-/

namespace A126890.P48962063826314970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n - 1) * A002262 n + (n : ℤ)

end

end A126890.P48962063826314970

namespace A126890

/-- `(A003056(n)-1)*A002262(n)+n` -/
def P48962063826314970.Spec : Prop :=
  ∀ n, P48962063826314970.a n = A126890 n

end A126890

/-! ## A126890.P4653121761270630692

`A123578(n)*A134482(n+1)-n`
-/

namespace A126890.P4653121761270630692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n * A134482 (n + 1) - (n : ℤ)

end

end A126890.P4653121761270630692

namespace A126890

/-- `A123578(n)*A134482(n+1)-n` -/
def P4653121761270630692.Spec : Prop :=
  ∀ n, P4653121761270630692.a n = A126890 n

end A126890

/-! ## A126890.P9368154645721286043

`(A002260(n+1)-1)*(A003056(n)-1)+n`
-/

namespace A126890.P9368154645721286043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * (A003056 n - 1) + (n : ℤ)

end

end A126890.P9368154645721286043

namespace A126890

/-- `(A002260(n+1)-1)*(A003056(n)-1)+n` -/
def P9368154645721286043.Spec : Prop :=
  ∀ n, P9368154645721286043.a n = A126890 n

end A126890

/-! ## A126890.P10704247293922114843

`A245300(n)-A000096(A002262(n))`
-/

namespace A126890.P10704247293922114843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n - A000096 (A002262 n).toNat

end

end A126890.P10704247293922114843

namespace A126890

/-- `A245300(n)-A000096(A002262(n))` -/
def P10704247293922114843.Spec : Prop :=
  ∀ n, P10704247293922114843.a n = A126890 n

end A126890

/-!
# A126892: a(n) = row of Wythoff's array T(n,j) containing the sequence of values T(n,j-1) + T(n,j+1).

The programs for A126892, there is no canonical definition to state claims against.
-/

/-! ## A126892.P460783472422979576

`A019586(A035340(n)-(2*floor(ϕ*(n+1))+n))`
-/

namespace A126892.P460783472422979576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A035340 n - (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ))).toNat

end

end A126892.P460783472422979576

/-! ## A126892.P5345764001976503276

`A019586(A035339(n)+3*floor(n*ϕ²+ϕ)-n)`
-/

namespace A126892.P5345764001976503276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A035339 n + (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ))).toNat

end

end A126892.P5345764001976503276

/-! ## A126892.P7288736787372390851

`A019586(A035337(n)+4*(2*floor(ϕ*(n+1))+n)+n)`
-/

namespace A126892.P7288736787372390851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A035337 n + (4 * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) + (n : ℤ))).toNat

end

end A126892.P7288736787372390851

/-! ## A126892.P12887435580535828362

`A019586(ceil(ϕ*(4*(2*floor(ϕ*(n+1))+n)+n))-A035336(n+1))`
-/

namespace A126892.P12887435580535828362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (⌈Real.goldenRatio * (4 * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) + (n : ℤ) : ℝ)⌉ - A035336 (n + 1)).toNat

end

end A126892.P12887435580535828362

/-! ## A126892.P16559822473078539998

`A019586(2*A035339(n)-A035338(n))`
-/

namespace A126892.P16559822473078539998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (2 * A035339 n - A035338 n).toNat

end

end A126892.P16559822473078539998

/-! ## A126892.P6917882948244960239

`A019586(2*A035340(n)-A035339(n))`
-/

namespace A126892.P6917882948244960239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (2 * A035340 n - A035339 n).toNat

end

end A126892.P6917882948244960239

/-! ## A126892.P11817399084754236589

`A019586(A035338(n)+ceil(ϕ*A035339(n)))`
-/

namespace A126892.P11817399084754236589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A035338 n + ⌈Real.goldenRatio * (A035339 n : ℝ)⌉).toNat

end

end A126892.P11817399084754236589

/-! ## A126892.P1254923623148488033

`A019586(A035338(n)+A035339(n)+A035338(n))`
-/

namespace A126892.P1254923623148488033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A035338 n + (A035339 n + A035338 n)).toNat

end

end A126892.P1254923623148488033

/-!
# A126896: Numbers k such that 10*k! + 1 is prime.

The programs for A126896, there is no canonical definition to state claims against.
-/

/-! ## A126896.P18340998984689105321

`eq[1, A343717(n)]`
-/

namespace A126896.P18340998984689105321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126896.P18340998984689105321

/-! ## A126896.P6348849169081414301

`lt[A343717(A028310(n)), 2]`
-/

namespace A126896.P6348849169081414301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343717 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A126896.P6348849169081414301

/-! ## A126896.P15945953419077575565

`lt[A343717(n)², A051888(n)]`
-/

namespace A126896.P15945953419077575565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343717 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126896.P15945953419077575565

/-! ## A126896.P15382003644181782264

`lt[A343717(n)², A064983(n)]`
-/

namespace A126896.P15382003644181782264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343717 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064983 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126896.P15382003644181782264

/-! ## A126896.P11003127622452855064

`lt[A343717(n), atan(A256481(n))]`
-/

namespace A126896.P11003127622452855064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343717 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A256481 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A126896.P11003127622452855064

/-!
# A126898: Coordination sequence for 8-dimensional cyclotomic lattice Z[zeta_15].

The programs for A126898, there is no canonical definition to state claims against.
-/

/-! ## A126898.P123262442153825674

`A212618(A036589(2*n+1))+A162321(n)`
-/

namespace A126898.P123262442153825674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212618 (A036589 (2 * n + 1)).toNat + A162321 n

end

end A126898.P123262442153825674

/-!
# A126899: Coordination sequence for 6-dimensional cyclotomic lattice Z[zeta_9].

The programs for A126899, there is no canonical definition to state claims against.
-/

/-! ## A126899.P17558277037439692866

`∑[∑[A102036(A167614(n+2))]]`
-/

namespace A126899.P17558277037439692866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102036 (A167614 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126899.P17558277037439692866

