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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A309701: Primes with record Manhattan distance from origin. When starting rightwards in a grid, turn left after a prime number. If not, walk straight on.

The programs for A309701, there is no canonical definition to state claims against.
-/

/-! ## A309701.P11732811608206252172

`∩[A188262(A129350(n+1)), A309755(n+1)]`
-/

namespace A309701.P11732811608206252172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (A129350 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309701.P11732811608206252172

/-! ## A309701.P2585990571742099053

`∩[A092418(n+1), A309755(n+1)]`
-/

namespace A309701.P2585990571742099053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309701.P2585990571742099053

/-! ## A309701.P637699551934602591

`∩[A188262(n+1), A309755(n+1)]`
-/

namespace A309701.P637699551934602591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309701.P637699551934602591

/-! ## A309701.P3772674583003853799

`∩[A309755(n+1), A188010(n+2)]`
-/

namespace A309701.P3772674583003853799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309701.P3772674583003853799

/-! ## A309701.P13200596012801616397

`∩[A309755(n+1), A188188(n+2)]`
-/

namespace A309701.P13200596012801616397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309701.P13200596012801616397

/-!
# A309702: G.f. A(x) satisfies: A(x) = A(x^2) / (1 - x - x^2 - x^3).

The programs for A309702, there is no canonical definition to state claims against.
-/

/-! ## A309702.P9330559954154653548

`A073188(A114507(n)*A157271(n+1))`
-/

namespace A309702.P9330559954154653548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A114507 n * A157271 (n + 1)).toNat

end

end A309702.P9330559954154653548

/-!
# A309703: G.f. A(x) satisfies: A(x) = A(x^2) / (1 - x - x^2 - x^3 - x^4).

The programs for A309703, there is no canonical definition to state claims against.
-/

/-! ## A309703.P10266257403744015461

`A191790(n)+A002024(A300974(n))`
-/

namespace A309703.P10266257403744015461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n + A002024 (A300974 n).toNat

end

end A309703.P10266257403744015461

/-!
# A309704: a(1) = 3, a(2) = 4, a(3) = 5, a(4) = 4, a(5) = 5; a(6) = 6; a(n) = a(n-a(n-1)) + a(n-a(n-4)) for n > 6.

The programs for A309704, the canonical program `A309704.P4693643495096234644` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309704 has offset 1).

The definition of A309704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-4))` (program `A309704.P4693643495096234644`, by `A309704.P4693643495096234644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309704.P4693643495096234644

`a(n-a(n-1))+a(n-a(n-4))` with `a(0)=3, a(1)=4, a(2)=5, a(3)=4, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309704

/-- `a(n-a(n-1))+a(n-a(n-4))` -/
def P4693643495096234644.Spec : Prop :=
  ∀ n, (P4693643495096234644.a n : ℤ) = A309704 (n + 1)

theorem P4693643495096234644.correct : P4693643495096234644.Spec := by
  intro n
  simp only [A309704, Nat.add_sub_cancel]

end A309704

/-! ## A309704.P8119562728526617033

`A331852(A080036(∑[A084402(n+1)]))`
-/

namespace A309704.P8119562728526617033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A080036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A309704.P8119562728526617033

namespace A309704

/-- `A331852(A080036(∑[A084402(n+1)]))` -/
def P8119562728526617033.Spec : Prop :=
  ∀ n, P8119562728526617033.a n = A309704 (n + 1)

end A309704

/-! ## A309704.P11475880652216469238

`A000006(2*(n+2))-A124452(A001405(n))`
-/

namespace A309704.P11475880652216469238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (2 * (n + 2)) - A124452 (A001405 n).toNat

end

end A309704.P11475880652216469238

namespace A309704

/-- `A000006(2*(n+2))-A124452(A001405(n))` -/
def P11475880652216469238.Spec : Prop :=
  ∀ n, P11475880652216469238.a n = A309704 (n + 1)

end A309704

/-!
# A309705: a(n) = lcm(a(n-1), n) - gcd(a(n-1), n) where a(1) = 1.

The programs for A309705, there is no canonical definition to state claims against.
-/

/-! ## A309705.P13729568595407625370

`lcm(n+1, a(n-1))-gcd(n+1, a(n-1))` with `a(0)=1`
-/

namespace A309705.P13729568595407625370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 1 : ℤ) (a (n - 1)) : ℤ) - (Int.gcd (n + 1 : ℤ) (a (n - 1)) : ℤ)

end

end A309705.P13729568595407625370

/-! ## A309705.P13546707355134359488

`A342750(A110182(n))`
-/

namespace A309705.P13546707355134359488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A110182 n).toNat

end

end A309705.P13546707355134359488

/-! ## A309705.P7491860342395509889

`A002260(A053983(n)+3)`
-/

namespace A309705.P7491860342395509889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A053983 n + 3).toNat

end

end A309705.P7491860342395509889

/-!
# A309706: Smallest number that contains the first n primes as substrings in base 10. Substrings go from left to right, but numbers in the substrings can be separated by several numbers.

The programs for A309706, there is no canonical definition to state claims against.
-/

/-! ## A309706.P11289734322705691274

`A054261(A100793(n)-A002266(n))`
-/

namespace A309706.P11289734322705691274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054261 (A100793 n - A002266 n).toNat

end

end A309706.P11289734322705691274

/-! ## A309706.P10837312242930098304

`A240959(A100793(n)-A002266(n))`
-/

namespace A309706.P10837312242930098304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240959 (A100793 n - A002266 n).toNat

end

end A309706.P10837312242930098304

/-!
# A309708: Sum of the odd parts appearing among the smallest parts of the partitions of n into 4 parts.

The programs for A309708, there is no canonical definition to state claims against.
-/

/-! ## A309708.P16106279686109895933

`A308733(n)-A309711(n)`
-/

namespace A309708.P16106279686109895933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 n - A309711 n

end

end A309708.P16106279686109895933

/-! ## A309708.P16383009495496442722

`A309882(n+5)-(A309881(n+5)+A309880(n))`
-/

namespace A309708.P16383009495496442722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309882 (n + 5) - (A309881 (n + 5) + A309880 n)

end

end A309708.P16383009495496442722

/-! ## A309708.P8784797312292148685

`A308733(n)-(A309880(n+5)-(A309882(n)+A309879(n+5)))`
-/

namespace A309708.P8784797312292148685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 n - (A309880 (n + 5) - (A309882 n + A309879 (n + 5)))

end

end A309708.P8784797312292148685

/-! ## A309708.P7589054196342328931

`∑[A340760(n)]-A309711(n)`
-/

namespace A309708.P7589054196342328931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309711 n

end

end A309708.P7589054196342328931

/-! ## A309708.P114668171991387220

`∑[A340760(n)]-(A309880(n+5)-(A309882(n)+A309879(n+5)))`
-/

namespace A309708.P114668171991387220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A309880 (n + 5) - (A309882 n + A309879 (n + 5)))

end

end A309708.P114668171991387220

/-!
# A309709: Number of binary digits that change when n is multiplied by 4.

The programs for A309709, the canonical program `A309709.P3577546231232212363` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309709 has offset 0).

The definition of A309709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309709.P3577546231232212363

`A000120(A048725(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309709

/-- `A000120(A048725(n))` -/
def P3577546231232212363.Spec : Prop :=
  ∀ n, P3577546231232212363.a n = A309709 n

theorem P3577546231232212363.correct : P3577546231232212363.Spec := by
  intro n
  simp only [A309709]

end A309709

/-! ## A309709.P12014214258122178114

`A276273(n+1)-A102560(n)`
-/

namespace A309709.P12014214258122178114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276273 (n + 1) - A102560 n

end

end A309709.P12014214258122178114

namespace A309709

/-- `A276273(n+1)-A102560(n)` -/
def P12014214258122178114.Spec : Prop :=
  ∀ n, P12014214258122178114.a n = A309709 n

end A309709

/-! ## A309709.P16357784770672517637

`2*A069010(A048724(n))`
-/

namespace A309709.P16357784770672517637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069010 (A048724 n).toNat

end

end A309709.P16357784770672517637

namespace A309709

/-- `2*A069010(A048724(n))` -/
def P16357784770672517637.Spec : Prop :=
  ∀ n, P16357784770672517637.a n = A309709 n

end A309709

/-! ## A309709.P5792172560326076630

`2*A069010(A003188(2*n))`
-/

namespace A309709.P5792172560326076630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069010 (A003188 (2 * n)).toNat

end

end A309709.P5792172560326076630

namespace A309709

/-- `2*A069010(A003188(2*n))` -/
def P5792172560326076630.Spec : Prop :=
  ∀ n, P5792172560326076630.a n = A309709 n

end A309709

/-! ## A309709.P16669026972659152855

`2*A069010(A048726(n))`
-/

namespace A309709.P16669026972659152855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069010 (A048726 n).toNat

end

end A309709.P16669026972659152855

namespace A309709

/-- `2*A069010(A048726(n))` -/
def P16669026972659152855.Spec : Prop :=
  ∀ n, P16669026972659152855.a n = A309709 n

end A309709

/-! ## A309709.P17834439292558418048

`A072219(A114389(n+1))-1`
-/

namespace A309709.P17834439292558418048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (A114389 (n + 1)).toNat - 1

end

end A309709.P17834439292558418048

namespace A309709

/-- `A072219(A114389(n+1))-1` -/
def P17834439292558418048.Spec : Prop :=
  ∀ n, P17834439292558418048.a n = A309709 n

end A309709

/-! ## A309709.P17602875238679029481

`A072219(A065621(2*n+1))-1`
-/

namespace A309709.P17602875238679029481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (A065621 (2 * n + 1)).toNat - 1

end

end A309709.P17602875238679029481

namespace A309709

/-- `A072219(A065621(2*n+1))-1` -/
def P17602875238679029481.Spec : Prop :=
  ∀ n, P17602875238679029481.a n = A309709 n

end A309709

/-! ## A309709.P8163735059750484567

`2*A001221(A278219(2*n))`
-/

namespace A309709.P8163735059750484567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (A278219 (2 * n)).toNat

end

end A309709.P8163735059750484567

namespace A309709

/-- `2*A001221(A278219(2*n))` -/
def P8163735059750484567.Spec : Prop :=
  ∀ n, P8163735059750484567.a n = A309709 n

end A309709

/-! ## A309709.P1098739046732973384

`A005811(lcm(2, xor(n, 2*n)))`
-/

namespace A309709.P1098739046732973384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Nat.lcm 2 (Nat.xor n (2 * n)))

end

end A309709.P1098739046732973384

namespace A309709

/-- `A005811(lcm(2, xor(n, 2*n)))` -/
def P1098739046732973384.Spec : Prop :=
  ∀ n, P1098739046732973384.a n = A309709 n

end A309709

/-! ## A309709.P11890817044751360779

`A005811(2*xor(n, 2*n))`
-/

namespace A309709.P11890817044751360779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (2 * Nat.xor n (2 * n))

end

end A309709.P11890817044751360779

namespace A309709

/-- `A005811(2*xor(n, 2*n))` -/
def P11890817044751360779.Spec : Prop :=
  ∀ n, P11890817044751360779.a n = A309709 n

end A309709

/-! ## A309709.P12153636865650368752

`A005811(A048726(n))`
-/

namespace A309709.P12153636865650368752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A048726 n).toNat

end

end A309709.P12153636865650368752

namespace A309709

/-- `A005811(A048726(n))` -/
def P12153636865650368752.Spec : Prop :=
  ∀ n, P12153636865650368752.a n = A309709 n

end A309709

/-! ## A309709.P1610372127544703210

`A005811(A003188(4*n))`
-/

namespace A309709.P1610372127544703210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A003188 (4 * n)).toNat

end

end A309709.P1610372127544703210

namespace A309709

/-- `A005811(A003188(4*n))` -/
def P1610372127544703210.Spec : Prop :=
  ∀ n, P1610372127544703210.a n = A309709 n

end A309709

/-! ## A309709.P1521340587282811017

`A000120(A064706(4*n))`
-/

namespace A309709.P1521340587282811017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064706 (4 * n)).toNat

end

end A309709.P1521340587282811017

namespace A309709

/-- `A000120(A064706(4*n))` -/
def P1521340587282811017.Spec : Prop :=
  ∀ n, P1521340587282811017.a n = A309709 n

end A309709

/-! ## A309709.P13721486911048393163

`A234022(4*A193231(n))`
-/

namespace A309709.P13721486911048393163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (4 * A193231 n).toNat

end

end A309709.P13721486911048393163

namespace A309709

/-- `A234022(4*A193231(n))` -/
def P13721486911048393163.Spec : Prop :=
  ∀ n, P13721486911048393163.a n = A309709 n

end A309709

/-! ## A309709.P11768110715381571588

`A001222(A071044(xor(n, 4*n)))`
-/

namespace A309709.P11768110715381571588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 (Nat.xor n (4 * n))).toNat

end

end A309709.P11768110715381571588

namespace A309709

/-- `A001222(A071044(xor(n, 4*n)))` -/
def P11768110715381571588.Spec : Prop :=
  ∀ n, P11768110715381571588.a n = A309709 n

end A309709

/-! ## A309709.P10911557549719219469

`A005811(A341916(xor(n, 4*n)))`
-/

namespace A309709.P10911557549719219469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 (Nat.xor n (4 * n))).toNat

end

end A309709.P10911557549719219469

namespace A309709

/-- `A005811(A341916(xor(n, 4*n)))` -/
def P10911557549719219469.Spec : Prop :=
  ∀ n, P10911557549719219469.a n = A309709 n

end A309709

/-! ## A309709.P10823646496995519533

`A005811(A065621(2*n+1)-1)`
-/

namespace A309709.P10823646496995519533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A065621 (2 * n + 1) - 1).toNat

end

end A309709.P10823646496995519533

namespace A309709

/-- `A005811(A065621(2*n+1)-1)` -/
def P10823646496995519533.Spec : Prop :=
  ∀ n, P10823646496995519533.a n = A309709 n

end A309709

/-! ## A309709.P4746458534786324343

`A072339(A114389(2*n+1))-1`
-/

namespace A309709.P4746458534786324343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A114389 (2 * n + 1)).toNat - 1

end

end A309709.P4746458534786324343

namespace A309709

/-- `A072339(A114389(2*n+1))-1` -/
def P4746458534786324343.Spec : Prop :=
  ∀ n, P4746458534786324343.a n = A309709 n

end A309709

/-! ## A309709.P14158036183957057575

`A000120(A048724(A048724(n)))`
-/

namespace A309709.P14158036183957057575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048724 (A048724 n).toNat).toNat

end

end A309709.P14158036183957057575

namespace A309709

/-- `A000120(A048724(A048724(n)))` -/
def P14158036183957057575.Spec : Prop :=
  ∀ n, P14158036183957057575.a n = A309709 n

end A309709

/-! ## A309709.P5772965205413214180

`A000120(A003188(A003188(2*n+2*n)))`
-/

namespace A309709.P5772965205413214180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003188 (A003188 (2 * n + 2 * n)).toNat).toNat

end

end A309709.P5772965205413214180

namespace A309709

/-- `A000120(A003188(A003188(2*n+2*n)))` -/
def P5772965205413214180.Spec : Prop :=
  ∀ n, P5772965205413214180.a n = A309709 n

end A309709

/-!
# A309711: Sum of the even parts appearing among the smallest parts of the partitions of n into 4 parts.

The programs for A309711, there is no canonical definition to state claims against.
-/

/-! ## A309711.P16925437527692356562

`A308733(n)-A309708(n)`
-/

namespace A309711.P16925437527692356562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 n - A309708 n

end

end A309711.P16925437527692356562

/-! ## A309711.P7913013957440631906

`∑[A008763(A028242(n)+1)]-A309708(n)`
-/

namespace A309711.P7913013957440631906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A028242 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309708 n

end

end A309711.P7913013957440631906

/-! ## A309711.P6231381677927801977

`∑[A008763(3*A008619(n)-(n+1))]-A309708(n)`
-/

namespace A309711.P6231381677927801977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (3 * A008619 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309708 n

end

end A309711.P6231381677927801977

/-! ## A309711.P11792624207125154797

`A309880(n+5)-(A309882(n)+A309879(n+5))`
-/

namespace A309711.P11792624207125154797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309880 (n + 5) - (A309882 n + A309879 (n + 5))

end

end A309711.P11792624207125154797

/-! ## A309711.P17932962562949001108

`A308733(n)-(A309882(n+5)-(A309881(n+5)+A309880(n)))`
-/

namespace A309711.P17932962562949001108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 n - (A309882 (n + 5) - (A309881 (n + 5) + A309880 n))

end

end A309711.P17932962562949001108

/-! ## A309711.P17807898985132868729

`∑[A340760(n)]-A309708(n)`
-/

namespace A309711.P17807898985132868729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309708 n

end

end A309711.P17807898985132868729

/-!
# A309712: Number of odd parts appearing among the third largest parts of the partitions of n into 4 parts.

The programs for A309712, there is no canonical definition to state claims against.
-/

/-! ## A309712.P5809976518745916

`A026810(n)-A309715(n)`
-/

namespace A309712.P5809976518745916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A309715 n

end

end A309712.P5809976518745916

/-! ## A309712.P11868280035350852742

`∑[A069905(A028242(n))]-A309715(n)`
-/

namespace A309712.P11868280035350852742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309715 n

end

end A309712.P11868280035350852742

/-! ## A309712.P12531297950106931969

`A001400(n)-(A309715(n)+A001399(n))`
-/

namespace A309712.P12531297950106931969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - (A309715 n + A001399 n)

end

end A309712.P12531297950106931969

/-! ## A309712.P2924575354952854441

`A008765(n)-(A309715(n)+A001400(n))`
-/

namespace A309712.P2924575354952854441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 n - (A309715 n + A001400 n)

end

end A309712.P2924575354952854441

/-! ## A309712.P3817172115122446926

`A005232(n)-(A309715(n)+A266769(n))`
-/

namespace A309712.P3817172115122446926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n - (A309715 n + A266769 n)

end

end A309712.P3817172115122446926

/-! ## A309712.P16795984753099250693

`A266769(n)-(A320592(n+6)+A309715(n))`
-/

namespace A309712.P16795984753099250693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - (A320592 (n + 6) + A309715 n)

end

end A309712.P16795984753099250693

/-! ## A309712.P3923932888841742114

`A288165(A008486(n))-A309715(n)`
-/

namespace A309712.P3923932888841742114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008486 n).toNat - A309715 n

end

end A309712.P3923932888841742114

/-! ## A309712.P17688926556129104200

`A288165(A008585(n))-A309715(n)`
-/

namespace A309712.P17688926556129104200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008585 n).toNat - A309715 n

end

end A309712.P17688926556129104200

/-!
# A309713: Sum of the odd parts appearing among the third largest parts of the partitions of n into 4 parts.

The programs for A309713, there is no canonical definition to state claims against.
-/

/-! ## A309713.P15786074068658288293

`A308758(n)-A309716(n)`
-/

namespace A309713.P15786074068658288293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308758 n - A309716 n

end

end A309713.P15786074068658288293

/-! ## A309713.P7825168254526245930

`∑[A307686(n+1-2%(n+1))]-A309716(n)`
-/

namespace A309713.P7825168254526245930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1 - 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309716 n

end

end A309713.P7825168254526245930

/-! ## A309713.P4845363352394132034

`∑[A307686(1-(floor(3*n/(n+1))-n))]-A309716(n)`
-/

namespace A309713.P4845363352394132034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (1 - (⌊(3 * n : ℚ) / (n + 1 : ℚ)⌋ - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309716 n

end

end A309713.P4845363352394132034

/-! ## A309713.P241543882536757341

`A308758(n)-∑[A319410(A147032(n+6))]`
-/

namespace A309713.P241543882536757341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (A147032 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308758 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309713.P241543882536757341

/-!
# A309714: The smallest possible nonnegative difference between the sum of the first n positive integers (A000217) and the sum of any number of the directly following and consecutive integers.

The programs for A309714, there is no canonical definition to state claims against.
-/

/-! ## A309714.P9024679721290405150

`A002262(∑[2*(n+1)])`
-/

namespace A309714.P9024679721290405150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309714.P9024679721290405150

/-! ## A309714.P14475590308123436913

`A048151(∑[2*(n+1)])`
-/

namespace A309714.P14475590308123436913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309714.P14475590308123436913

/-! ## A309714.P5424414008158560047

`sqrt(A143844(∑[2*(n+1)]))`
-/

namespace A309714.P5424414008158560047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A309714.P5424414008158560047

/-! ## A309714.P2361502890741939072

`log2(A059268(∑[2*(n+1)]))`
-/

namespace A309714.P2361502890741939072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A309714.P2361502890741939072

/-! ## A309714.P10844333208003145288

`A057554(∑[4*(n+1)]+1)`
-/

namespace A309714.P10844333208003145288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A309714.P10844333208003145288

/-! ## A309714.P6336851159893139372

`A002262(∑[n+2+n])%97`
-/

namespace A309714.P6336851159893139372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 (∑ j ∈ Finset.range (n + 1), f1 j)) 97

end

end A309714.P6336851159893139372

/-! ## A309714.P9114954707069805249

`A002260(n*(n+3)+3)-1`
-/

namespace A309714.P9114954707069805249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n * (n + 3) + 3) - 1

end

end A309714.P9114954707069805249

/-! ## A309714.P14620743062111829117

`A134226(n*(n+3)+3)-1`
-/

namespace A309714.P14620743062111829117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n * (n + 3) + 3) - 1

end

end A309714.P14620743062111829117

/-! ## A309714.P11856612039769817034

`abs(A002260(∑[n+3]+C(n, 2))-1)`
-/

namespace A309714.P11856612039769817034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2) - 1|

end

end A309714.P11856612039769817034

/-! ## A309714.P2230770640711079081

`∑[2*(n+1)]-A057944(∑[2*(n+1)])`
-/

namespace A309714.P2230770640711079081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057944 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A309714.P2230770640711079081

/-!
# A309715: Number of even parts appearing among the third largest parts of the partitions of n into 4 parts.

The programs for A309715, there is no canonical definition to state claims against.
-/

/-! ## A309715.P5332619209807298844

`A026810(n)-A309712(n)`
-/

namespace A309715.P5332619209807298844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A309712 n

end

end A309715.P5332619209807298844

/-! ## A309715.P3367687862512346195

`A309793(n)+A309795(n)-A309712(n)`
-/

namespace A309715.P3367687862512346195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309793 n + (A309795 n - A309712 n)

end

end A309715.P3367687862512346195

/-! ## A309715.P4498475698009707429

`A288165(A008486(n))-A309712(n)`
-/

namespace A309715.P4498475698009707429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008486 n).toNat - A309712 n

end

end A309715.P4498475698009707429

/-! ## A309715.P14821484168984974423

`A288165(A008585(n))-A309712(n)`
-/

namespace A309715.P14821484168984974423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008585 n).toNat - A309712 n

end

end A309715.P14821484168984974423

/-! ## A309715.P10056783150925955408

`∑[A004526(ceil(A004526(n+1)²/12))]`
-/

namespace A309715.P10056783150925955408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈(A004526 (n + 1) ^ 2 : ℚ) / 12⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309715.P10056783150925955408

/-! ## A309715.P1573869276214269502

`∑[A008615(A004652(A110654(n)))]`
-/

namespace A309715.P1573869276214269502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004652 (A110654 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309715.P1573869276214269502

/-!
# A309716: Sum of the even parts appearing among the third largest parts of the partitions of n into 4 parts.

The programs for A309716, there is no canonical definition to state claims against.
-/

/-! ## A309716.P4427292865606718596

`A308758(n)-A309713(n)`
-/

namespace A309716.P4427292865606718596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308758 n - A309713 n

end

end A309716.P4427292865606718596

/-! ## A309716.P13228684494602969213

`∑[A307686(n+1-2%(n+1))]-A309713(n)`
-/

namespace A309716.P13228684494602969213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1 - 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309713 n

end

end A309716.P13228684494602969213

/-! ## A309716.P12694887726623384634

`∑[A307686(1-(floor(3*n/(n+1))-n))]-A309713(n)`
-/

namespace A309716.P12694887726623384634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (1 - (⌊(3 * n : ℚ) / (n + 1 : ℚ)⌋ - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309713 n

end

end A309716.P12694887726623384634

/-! ## A309716.P3841249453857063051

`∑[A230096(∑[A107083(n+1)%2])]`
-/

namespace A309716.P3841249453857063051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107083 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309716.P3841249453857063051

/-!
# A309717: Convolve Fibonacci, Pell and bronze Fibonacci numbers.

The programs for A309717, the canonical program `A309717.P16293545848605844786` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309717 has offset 0).

The definition of A309717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309717.P16293545848605844786

`(A006190(n)-(A006684(n)+A000129(n)))/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309717

/-- `(A006190(n)-(A006684(n)+A000129(n)))/2` -/
def P16293545848605844786.Spec : Prop :=
  ∀ n, P16293545848605844786.a n = (A309717 n : ℚ)

end A309717

/-! ## A309717.P11508663821837496800

`A081134(A289781(n+1))`
-/

namespace A309717.P11508663821837496800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (A289781 (n + 1)).toNat

end

end A309717.P11508663821837496800

namespace A309717

/-- `A081134(A289781(n+1))` -/
def P11508663821837496800.Spec : Prop :=
  ∀ n, P11508663821837496800.a n = A309717 n

end A309717

/-! ## A309717.P7344505399636597900

`A263841(n)-A097706(A008776(n))`
-/

namespace A309717.P7344505399636597900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263841 n - A097706 (A008776 n).toNat

end

end A309717.P7344505399636597900

namespace A309717

/-- `A263841(n)-A097706(A008776(n))` -/
def P7344505399636597900.Spec : Prop :=
  ∀ n, P7344505399636597900.a n = A309717 n

end A309717

/-! ## A309717.P14226263681166372489

`A263841(n)%A048883(A128743(n))`
-/

namespace A309717.P14226263681166372489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263841 n) (A048883 (A128743 n).toNat)

end

end A309717.P14226263681166372489

namespace A309717

/-- `A263841(n)%A048883(A128743(n))` -/
def P14226263681166372489.Spec : Prop :=
  ∀ n, P14226263681166372489.a n = A309717 n

end A309717

/-!
# A309718: Numbers k such that the sums of the first k and k+2 primes are also prime.

The programs for A309718, the canonical program `A309718.P15639493879307278302` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309718 has offset 1).

The definition of A309718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309718.P15639493879307278302

`A013916(eq[2, Δ[A013916(n+1)]]+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A309718

/-- `A013916(eq[2, Δ[A013916(n+1)]]+1)` -/
def P15639493879307278302.Spec : Prop :=
  ∀ n, P15639493879307278302.a n = A309718 (n + 1)

theorem P15639493879307278302.correct : P15639493879307278302.Spec := by
  intro n
  simp only [A309718, Nat.add_sub_cancel]

end A309718

/-! ## A309718.P8395209182500227164

`∩[A013916(n+1)-2, A013916(n+2)]`
-/

namespace A309718.P8395209182500227164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309718.P8395209182500227164

namespace A309718

/-- `∩[A013916(n+1)-2, A013916(n+2)]` -/
def P8395209182500227164.Spec : Prop :=
  ∀ n, (P8395209182500227164.a n : ℤ) = A309718 (n + 1)

end A309718

/-! ## A309718.P5811847323104317296

`A013916(eq[2, A013916(n+2)-A013916(n+1)]+1)`
-/

namespace A309718.P5811847323104317296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (n + 2) - A013916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A309718.P5811847323104317296

namespace A309718

/-- `A013916(eq[2, A013916(n+2)-A013916(n+1)]+1)` -/
def P5811847323104317296.Spec : Prop :=
  ∀ n, P5811847323104317296.a n = A309718 (n + 1)

theorem P5811847323104317296.correct : P5811847323104317296.Spec := by
  intro n
  simp only [A309718, Nat.add_sub_cancel, A309718.P5811847323104317296.f1, A309718.P5811847323104317296.f2, A309718.P5811847323104317296.a, A309718.P15639493879307278302.f1, A309718.P15639493879307278302.f3, A309718.P15639493879307278302.f2, A309718.P15639493879307278302.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A309718

/-! ## A309718.P16415089444185850748

`eq[A007610(n+1), A074369(n+3)]+1`
-/

namespace A309718.P16415089444185850748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309718.P16415089444185850748

namespace A309718

/-- `eq[A007610(n+1), A074369(n+3)]+1` -/
def P16415089444185850748.Spec : Prop :=
  ∀ n, (P16415089444185850748.a n : ℤ) = A309718 (n + 1)

end A309718

/-! ## A309718.P7434484671081197429

`eq[A105783(n+2), A152691(A366092(n))]`
-/

namespace A309718.P7434484671081197429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (A366092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309718.P7434484671081197429

namespace A309718

/-- `eq[A105783(n+2), A152691(A366092(n))]` -/
def P7434484671081197429.Spec : Prop :=
  ∀ n, (P7434484671081197429.a n : ℤ) = A309718 (n + 1)

end A309718

/-!
# A309719: Numbers k such that 64*10^(2*k) + 8*10^k + 1 is prime.

The programs for A309719, there is no canonical definition to state claims against.
-/

/-! ## A309719.P16218126864366614905

`∑[record[A340191(A113374(n))]]`
-/

namespace A309719.P16218126864366614905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340191 (A113374 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309719.P16218126864366614905

/-! ## A309719.P6733061630633098709

`A072787(A000032(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A309719.P6733061630633098709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A072787 (A000032 (a (n - 1)).toNat).toNat

end

end A309719.P6733061630633098709

/-!
# A309720: Numbers of the form p+q-r = q+r-s where p < q < r < s are consecutive primes.

The programs for A309720, the canonical program `A309720.P3653890474350407193` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309720 has offset 1).

The definition of A309720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309720.P5946422471268734078

`A135275(floor(A066495(n+1)/2))`
-/

namespace A309720.P5946422471268734078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135275 ⌊(A066495 (n + 1) : ℚ) / 2⌋.toNat

end

end A309720.P5946422471268734078

namespace A309720

/-- `A135275(floor(A066495(n+1)/2))` -/
def P5946422471268734078.Spec : Prop :=
  ∀ n, P5946422471268734078.a n = A309720 (n + 1)

end A309720

/-! ## A309720.P16567616425627661165

`A096379(A138042(n+1))`
-/

namespace A309720.P16567616425627661165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (A138042 (n + 1)).toNat

end

end A309720.P16567616425627661165

namespace A309720

/-- `A096379(A138042(n+1))` -/
def P16567616425627661165.Spec : Prop :=
  ∀ n, P16567616425627661165.a n = A309720 (n + 1)

end A309720

/-! ## A309720.P7933804340270475583

`A096379(A066495(n+1)-1)`
-/

namespace A309720.P7933804340270475583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (A066495 (n + 1) - 1).toNat

end

end A309720.P7933804340270475583

namespace A309720

/-- `A096379(A066495(n+1)-1)` -/
def P7933804340270475583.Spec : Prop :=
  ∀ n, P7933804340270475583.a n = A309720 (n + 1)

end A309720

/-! ## A309720.P3653890474350407193

`A096379(eq[A036263(n+1), A054541(n+1)])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A309720

/-- `A096379(eq[A036263(n+1), A054541(n+1)])` -/
def P3653890474350407193.Spec : Prop :=
  ∀ n, P3653890474350407193.a n = A309720 (n + 1)

theorem P3653890474350407193.correct : P3653890474350407193.Spec := by
  intro n
  simp only [A309720, Nat.add_sub_cancel]

end A309720

/-! ## A309720.P620710262948193624

`A001043(A138042(n+1))-A000040(A066495(n+1))`
-/

namespace A309720.P620710262948193624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A138042 (n + 1)).toNat - A000040 (A066495 (n + 1)).toNat

end

end A309720.P620710262948193624

namespace A309720

/-- `A001043(A138042(n+1))-A000040(A066495(n+1))` -/
def P620710262948193624.Spec : Prop :=
  ∀ n, P620710262948193624.a n = A309720 (n + 1)

end A309720

/-!
# A309721: Number of right angles between the segments that are turned "on" when representing n on a 7-segment (calculator) display.

The programs for A309721, the canonical program `A309721.P1318264236071506269` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309721 has offset 0).

The definition of A309721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309721.P1318264236071506269

`a(floor(n/10))+a(n%10)` with `a(0)=4, a(1)=0, a(2)=4, a(3)=4, a(4)=3, a(5)=4, a(6)=6, a(7)=1, a(8)=8, a(9)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309721

/-- `a(floor(n/10))+a(n%10)` -/
def P1318264236071506269.Spec : Prop :=
  ∀ n, (P1318264236071506269.a n : ℤ) = A309721 n

theorem P1318264236071506269.correct : P1318264236071506269.Spec := by
  intro n
  simp only [A309721]

end A309721

/-!
# A309725: Number of set partitions of {1,2,...,3n} with sizes in {[n, n, n], [2n, n], [3n]}.

The programs for A309725, there is no canonical definition to state claims against.
-/

/-! ## A309725.P9093634966080777583

`A326998(n)-floor(acot(n))`
-/

namespace A309725.P9093634966080777583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326998 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A309725.P9093634966080777583

/-! ## A309725.P14768821550973794387

`A260876(∑[n+3]+6)`
-/

namespace A309725.P14768821550973794387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A309725.P14768821550973794387

/-! ## A309725.P7769356583151596307

`A326998(n)-A326983(n)%2`
-/

namespace A309725.P7769356583151596307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326998 n - Int.tmod (A326983 n) 2

end

end A309725.P7769356583151596307

/-! ## A309725.P4388616061269902540

`A326998(n)-A326956(2*n+1)`
-/

namespace A309725.P4388616061269902540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326998 n - A326956 (2 * n + 1)

end

end A309725.P4388616061269902540

/-! ## A309725.P6350567259749809464

`A326998(n)-A142150(A141112(n+1))`
-/

namespace A309725.P6350567259749809464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326998 n - A142150 (A141112 (n + 1)).toNat

end

end A309725.P6350567259749809464

/-!
# A309726: Numbers k such that k^2 - 12 is prime.

The programs for A309726, the canonical program `A309726.P10149931294073612200` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309726 has offset 1).

The definition of A309726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309726.P10149931294073612200

`sqrt(p?[n²-12]+12)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309726

/-- `sqrt(p?[n²-12]+12)` -/
def P10149931294073612200.Spec : Prop :=
  ∀ n, P10149931294073612200.a n = (A309726 (n + 1) : ℝ)

end A309726

/-! ## A309726.P15690223320254907498

`root(p?[n²-12]+12, 2)`
-/

namespace A309726.P15690223320254907498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 12

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 12 : ℝ) ^ (1 / (2 : ℝ))

end

end A309726.P15690223320254907498

namespace A309726

/-- `root(p?[n²-12]+12, 2)` -/
def P15690223320254907498.Spec : Prop :=
  ∀ n, P15690223320254907498.a n = (A309726 (n + 1) : ℝ)

end A309726

/-! ## A309726.P15388983277011276028

`(p?[n²-12]+12)^sin(atan(1))²`
-/

namespace A309726.P15388983277011276028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 12

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 12 : ℝ) ^ (Real.sin (Real.arctan (1 : ℝ)) ^ 2)

end

end A309726.P15388983277011276028

namespace A309726

/-- `(p?[n²-12]+12)^sin(atan(1))²` -/
def P15388983277011276028.Spec : Prop :=
  ∀ n, P15388983277011276028.a n = (A309726 (n + 1) : ℝ)

end A309726

/-! ## A309726.P15961172180913802247

`lt[A000005(2*n+(n+4)²-3), 3]+5`
-/

namespace A309726.P15961172180913802247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n : ℤ) + (((n + 4) ^ 2 : ℤ) - 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 5

end

end A309726.P15961172180913802247

namespace A309726

/-- `lt[A000005(2*n+(n+4)²-3), 3]+5` -/
def P15961172180913802247.Spec : Prop :=
  ∀ n, (P15961172180913802247.a n : ℤ) = A309726 (n + 1)

end A309726

/-! ## A309726.P14170402577815239965

`A056926(p?[n²-12]+12)`
-/

namespace A309726.P14170402577815239965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 12).toNat

end

end A309726.P14170402577815239965

namespace A309726

/-- `A056926(p?[n²-12]+12)` -/
def P14170402577815239965.Spec : Prop :=
  ∀ n, P14170402577815239965.a n = A309726 (n + 1)

end A309726

/-!
# A309727: a(n) is the least integer k such that for some iteration of sigma applied to k, one gets the n-th term of A002191, the list of possible values for the function sum of divisors.

The programs for A309727, there is no canonical definition to state claims against.
-/

/-! ## A309727.P1107373176134679548

`A257670(A002191(n+1))`
-/

namespace A309727.P1107373176134679548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (A002191 (n + 1)).toNat

end

end A309727.P1107373176134679548

/-! ## A309727.P16892322543160009931

`A257670(∑{d}[A002192(n+1), #])`
-/

namespace A309727.P16892322543160009931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A309727.P16892322543160009931

/-! ## A309727.P13889378172283436966

`A257670(∑{d}[A329821(n+1), #])`
-/

namespace A309727.P13889378172283436966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A309727.P13889378172283436966

/-! ## A309727.P3341620850367049015

`A257670(record[∑{d}[A057637(n+1), #]])`
-/

namespace A309727.P3341620850367049015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A309727.P3341620850367049015

/-! ## A309727.P1336756692139162831

`A257670(eq[1, A175192(n+1)]+1)`
-/

namespace A309727.P1336756692139162831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A309727.P1336756692139162831

/-! ## A309727.P8029405169903966670

`A257670(record[(n+1)*A175192(n+1)])`
-/

namespace A309727.P8029405169903966670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309727.P8029405169903966670

/-!
# A309728: G.f. A(x) satisfies A(x) = A(x^2) / (1 - 2*x), with A(0) = 1.

The programs for A309728, there is no canonical definition to state claims against.
-/

/-! ## A309728.P10604615074376729628

`2*(A142150(a(A142150(n)))+a(n-1))` with `a(0)=1`
-/

namespace A309728.P10604615074376729628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A142150 (a (A142150 n).toNat).toNat + a (n - 1))

end

end A309728.P10604615074376729628

/-! ## A309728.P7261167551897043619

`A001281(A331392(n+2))`
-/

namespace A309728.P7261167551897043619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A331392 (n + 2)).toNat

end

end A309728.P7261167551897043619

/-! ## A309728.P14046515108668264849

`A004526(A331392(n+2)+1)`
-/

namespace A309728.P14046515108668264849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331392 (n + 2) + 1).toNat

end

end A309728.P14046515108668264849

/-! ## A309728.P8174592129500214228

`A331392(A204979(2^n))/2`
-/

namespace A309728.P8174592129500214228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331392 (A204979 (2 ^ n)).toNat : ℚ) / 2

end

end A309728.P8174592129500214228

/-! ## A309728.P13182447629813251859

`Δ[A328399(∑[A331392(n+1)])]`
-/

namespace A309728.P13182447629813251859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331392 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309728.P13182447629813251859

/-!
# A309729: Expansion of Sum_{k>=1} x^k/(1 - x^k - 2*x^(2*k)).

The programs for A309729, the canonical program `A309729.P1295357004740063289` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309729 has offset 1).

The definition of A309729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309729.P1295357004740063289

`∑{d}[n+1, A001045(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309729

/-- `∑{d}[n+1, A001045(#)]` -/
def P1295357004740063289.Spec : Prop :=
  ∀ n, P1295357004740063289.a n = A309729 (n + 1)

theorem P1295357004740063289.correct : P1295357004740063289.Spec := by
  intro n
  simp only [A309729, Nat.add_sub_cancel]

end A309729

/-! ## A309729.P13044203165373138548

`∑{d}[n+1, A152046(#)]`
-/

namespace A309729.P13044203165373138548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A152046 d

end

end A309729.P13044203165373138548

namespace A309729

/-- `∑{d}[n+1, A152046(#)]` -/
def P13044203165373138548.Spec : Prop :=
  ∀ n, P13044203165373138548.a n = A309729 (n + 1)

end A309729

/-! ## A309729.P13949598687681843223

`∑{d}[n+1, A167167(#)]`
-/

namespace A309729.P13949598687681843223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A167167 d

end

end A309729.P13949598687681843223

namespace A309729

/-- `∑{d}[n+1, A167167(#)]` -/
def P13949598687681843223.Spec : Prop :=
  ∀ n, P13949598687681843223.a n = A309729 (n + 1)

end A309729

/-! ## A309729.P3519937250848511562

`∑{d}[n+1, round(2^#/3)]`
-/

namespace A309729.P3519937250848511562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((2 ^ d : ℚ) / 3)

end

end A309729.P3519937250848511562

namespace A309729

/-- `∑{d}[n+1, round(2^#/3)]` -/
def P3519937250848511562.Spec : Prop :=
  ∀ n, P3519937250848511562.a n = A309729 (n + 1)

end A309729

/-! ## A309729.P3722303984266687241

`record[∑{d}[n-1, round(2^#/3)]]`
-/

namespace A309729.P3722303984266687241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, SequenceMachineLib.roundAway ((2 ^ d : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309729.P3722303984266687241

namespace A309729

/-- `record[∑{d}[n-1, round(2^#/3)]]` -/
def P3722303984266687241.Spec : Prop :=
  ∀ n, P3722303984266687241.a n = A309729 (n + 1)

end A309729

/-!
# A309730: Expansion of Sum_{k>=1} x^k * (1 - x^(3*k))/(1 - x^k)^4.

The programs for A309730, the canonical program `A309730.P5489881432364129841` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309730 has offset 1).

The definition of A309730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309730.P5489881432364129841

`∑{d}[n+1, C(#-1, 2)+#²]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309730

/-- `∑{d}[n+1, C(#-1, 2)+#²]` -/
def P5489881432364129841.Spec : Prop :=
  ∀ n, (P5489881432364129841.a n : ℤ) = A309730 (n + 1)

theorem P5489881432364129841.correct : P5489881432364129841.Spec := by
  intro n
  simp only [A309730, Nat.add_sub_cancel]

end A309730

/-! ## A309730.P16155874675411598063

`∏{e}[n+1, #+1]+3*∑{d}[n+1, C(#, 2)]`
-/

namespace A309730.P16155874675411598063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 3 * (∑ d ∈ Nat.divisors (f2 n), Nat.choose d 2)

end

end A309730.P16155874675411598063

namespace A309730

/-- `∏{e}[n+1, #+1]+3*∑{d}[n+1, C(#, 2)]` -/
def P16155874675411598063.Spec : Prop :=
  ∀ n, (P16155874675411598063.a n : ℤ) = A309730 (n + 1)

end A309730

/-! ## A309730.P4543803934141862590

`∑{d}[n+1, A005448(#)]`
-/

namespace A309730.P4543803934141862590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005448 d

end

end A309730.P4543803934141862590

namespace A309730

/-- `∑{d}[n+1, A005448(#)]` -/
def P4543803934141862590.Spec : Prop :=
  ∀ n, P4543803934141862590.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P12460832776333525252

`A116913(n+1)-∑{d}[n+1, #-1]`
-/

namespace A309730.P12460832776333525252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1)

end

end A309730.P12460832776333525252

namespace A309730

/-- `A116913(n+1)-∑{d}[n+1, #-1]` -/
def P12460832776333525252.Spec : Prop :=
  ∀ n, P12460832776333525252.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P2102137928724011168

`∑{d}[n+1, C(#, 2)]+A001157(n+1)-∑{d}[n+1, #-1]`
-/

namespace A309730.P2102137928724011168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2 : ℕ) : ℤ) + (A001157 (n + 1) - ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1))

end

end A309730.P2102137928724011168

namespace A309730

/-- `∑{d}[n+1, C(#, 2)]+A001157(n+1)-∑{d}[n+1, #-1]` -/
def P2102137928724011168.Spec : Prop :=
  ∀ n, P2102137928724011168.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P10035558421017470445

`A363610(n+1)+A001157(n+1)`
-/

namespace A309730.P10035558421017470445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363610 (n + 1) + A001157 (n + 1)

end

end A309730.P10035558421017470445

namespace A309730

/-- `A363610(n+1)+A001157(n+1)` -/
def P10035558421017470445.Spec : Prop :=
  ∀ n, P10035558421017470445.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P10303326461298754265

`A116913(n+1)-A065608(n+1)`
-/

namespace A309730.P10303326461298754265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (n + 1) - A065608 (n + 1)

end

end A309730.P10303326461298754265

namespace A309730

/-- `A116913(n+1)-A065608(n+1)` -/
def P10303326461298754265.Spec : Prop :=
  ∀ n, P10303326461298754265.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P11794270961238607818

`A001157(n+1)+A363607(n+1)-A363611(n+1)`
-/

namespace A309730.P11794270961238607818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (A363607 (n + 1) - A363611 (n + 1))

end

end A309730.P11794270961238607818

namespace A309730

/-- `A001157(n+1)+A363607(n+1)-A363611(n+1)` -/
def P11794270961238607818.Spec : Prop :=
  ∀ n, P11794270961238607818.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P3751574642028558523

`A059358(n+1)-A363611(n+1)`
-/

namespace A309730.P3751574642028558523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) - A363611 (n + 1)

end

end A309730.P3751574642028558523

namespace A309730

/-- `A059358(n+1)-A363611(n+1)` -/
def P3751574642028558523.Spec : Prop :=
  ∀ n, P3751574642028558523.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P2878491487450032602

`A059358(n+1)+A363610(n+1)-A363607(n+1)`
-/

namespace A309730.P2878491487450032602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1) + (A363610 (n + 1) - A363607 (n + 1))

end

end A309730.P2878491487450032602

namespace A309730

/-- `A059358(n+1)+A363610(n+1)-A363607(n+1)` -/
def P2878491487450032602.Spec : Prop :=
  ∀ n, P2878491487450032602.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P16082638854169774987

`∑{d}[n+1, A016777(C(#, 2))]`
-/

namespace A309730.P16082638854169774987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A016777 (Nat.choose d 2)

end

end A309730.P16082638854169774987

namespace A309730

/-- `∑{d}[n+1, A016777(C(#, 2))]` -/
def P16082638854169774987.Spec : Prop :=
  ∀ n, P16082638854169774987.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P6998756226507308295

`∑{d}[n+1, A016777(A161680(#))]`
-/

namespace A309730.P6998756226507308295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A016777 (A161680 d).toNat

end

end A309730.P6998756226507308295

namespace A309730

/-- `∑{d}[n+1, A016777(A161680(#))]` -/
def P6998756226507308295.Spec : Prop :=
  ∀ n, P6998756226507308295.a n = A309730 (n + 1)

end A309730

/-! ## A309730.P609392264725279686

`∑{d}[n+1, A001651(A002061(#))]`
-/

namespace A309730.P609392264725279686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001651 (A002061 d).toNat

end

end A309730.P609392264725279686

namespace A309730

/-- `∑{d}[n+1, A001651(A002061(#))]` -/
def P609392264725279686.Spec : Prop :=
  ∀ n, P609392264725279686.a n = A309730 (n + 1)

end A309730

/-!
# A309731: Expansion of Sum_{k>=1} k * x^k/(1 - x^k)^3.

The programs for A309731, the canonical program `A309731.P12136471664551813411` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309731 has offset 1).

The definition of A309731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309731.P11335125890199165399

`(n+1)/2*∑{d}[n+1, #+1]`
-/

namespace A309731.P11335125890199165399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℚ)

end

end A309731.P11335125890199165399

namespace A309731

/-- `(n+1)/2*∑{d}[n+1, #+1]` -/
def P11335125890199165399.Spec : Prop :=
  ∀ n, P11335125890199165399.a n = (A309731 (n + 1) : ℚ)

end A309731

/-! ## A309731.P16094755061213768630

`∑{d}[n+1, A309322(#)]`
-/

namespace A309731.P16094755061213768630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309322 d

end

end A309731.P16094755061213768630

namespace A309731

/-- `∑{d}[n+1, A309322(#)]` -/
def P16094755061213768630.Spec : Prop :=
  ∀ n, P16094755061213768630.a n = A309731 (n + 1)

end A309731

/-! ## A309731.P8941680712311513523

`(n+1)/2*A007503(n+1)`
-/

namespace A309731.P8941680712311513523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A007503 (n + 1) : ℚ)

end

end A309731.P8941680712311513523

namespace A309731

/-- `(n+1)/2*A007503(n+1)` -/
def P8941680712311513523.Spec : Prop :=
  ∀ n, P8941680712311513523.a n = (A309731 (n + 1) : ℚ)

end A309731

/-! ## A309731.P12136471664551813411

`∑{d}[n+1, #*A000217((n+1)/#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309731

/-- `∑{d}[n+1, #*A000217((n+1)/#)]` -/
def P12136471664551813411.Spec : Prop :=
  ∀ n, P12136471664551813411.a n = A309731 (n + 1)

theorem P12136471664551813411.correct : P12136471664551813411.Spec := by
  intro n
  simp only [A309731, Nat.add_sub_cancel]

end A309731

/-! ## A309731.P15980432116201904468

`A034715(n+1)-A308084(n+1)`
-/

namespace A309731.P15980432116201904468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034715 (n + 1) - A308084 (n + 1)

end

end A309731.P15980432116201904468

namespace A309731

/-- `A034715(n+1)-A308084(n+1)` -/
def P15980432116201904468.Spec : Prop :=
  ∀ n, P15980432116201904468.a n = A309731 (n + 1)

end A309731

/-! ## A309731.P3072014120737419694

`(A064987(n+1)+A038040(n+1))/2`
-/

namespace A309731.P3072014120737419694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) + A038040 (n + 1) : ℚ) / 2

end

end A309731.P3072014120737419694

namespace A309731

/-- `(A064987(n+1)+A038040(n+1))/2` -/
def P3072014120737419694.Spec : Prop :=
  ∀ n, P3072014120737419694.a n = (A309731 (n + 1) : ℚ)

end A309731

/-! ## A309731.P3767364165970782685

`2*A034715(n+1)-A309732(n+1)`
-/

namespace A309731.P3767364165970782685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034715 (n + 1) - A309732 (n + 1)

end

end A309731.P3767364165970782685

namespace A309731

/-- `2*A034715(n+1)-A309732(n+1)` -/
def P3767364165970782685.Spec : Prop :=
  ∀ n, P3767364165970782685.a n = A309731 (n + 1)

end A309731

/-! ## A309731.P4340761677683678925

`A309732(n+1)-2*A308084(n+1)`
-/

namespace A309731.P4340761677683678925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309732 (n + 1) - 2 * A308084 (n + 1)

end

end A309731.P4340761677683678925

namespace A309731

/-- `A309732(n+1)-2*A308084(n+1)` -/
def P4340761677683678925.Spec : Prop :=
  ∀ n, P4340761677683678925.a n = A309731 (n + 1)

end A309731

/-! ## A309731.P18352506042487815271

`(n+1)*(A000203(n+1)+A000005(n+1))/2`
-/

namespace A309731.P18352506042487815271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000203 (n + 1) + A000005 (n + 1) : ℚ) / 2)

end

end A309731.P18352506042487815271

namespace A309731

/-- `(n+1)*(A000203(n+1)+A000005(n+1))/2` -/
def P18352506042487815271.Spec : Prop :=
  ∀ n, P18352506042487815271.a n = (A309731 (n + 1) : ℚ)

end A309731

/-! ## A309731.P9972927795176467183

`A309732(n+1)-A000005(n+1)*A000217(n)`
-/

namespace A309731.P9972927795176467183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309732 (n + 1) - A000005 (n + 1) * A000217 n

end

end A309731.P9972927795176467183

namespace A309731

/-- `A309732(n+1)-A000005(n+1)*A000217(n)` -/
def P9972927795176467183.Spec : Prop :=
  ∀ n, P9972927795176467183.a n = A309731 (n + 1)

end A309731

/-! ## A309731.P15952924798131638050

`A302032((n+1)*∑{d}[n+1, #+1])`
-/

namespace A309731.P15952924798131638050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), (d + 1)))

end

end A309731.P15952924798131638050

namespace A309731

/-- `A302032((n+1)*∑{d}[n+1, #+1])` -/
def P15952924798131638050.Spec : Prop :=
  ∀ n, P15952924798131638050.a n = A309731 (n + 1)

end A309731

/-!
# A309732: Expansion of Sum_{k>=1} k^2 * x^k/(1 - x^k)^3.

The programs for A309732, the canonical program `A309732.P16927828332471193003` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309732 has offset 1).

The definition of A309732 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152211, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309732.P16927828332471193003

`(n+1)*A152211(n+1)/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A309732

/-- `(n+1)*A152211(n+1)/2` -/
def P16927828332471193003.Spec : Prop :=
  ∀ n, P16927828332471193003.a n = (A309732 (n + 1) : ℚ)

end A309732

/-! ## A309732.P7634255533403320978

`(n+1)*(A038040(n+1)+A000203(n+1))/2`
-/

namespace A309732.P7634255533403320978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A038040 (n + 1) + A000203 (n + 1) : ℚ) / 2)

end

end A309732.P7634255533403320978

namespace A309732

/-- `(n+1)*(A038040(n+1)+A000203(n+1))/2` -/
def P7634255533403320978.Spec : Prop :=
  ∀ n, P7634255533403320978.a n = (A309732 (n + 1) : ℚ)

end A309732

/-! ## A309732.P2086932488386476509

`∑{d}[n+1, #*A344510((n+1)/#)]`
-/

namespace A309732.P2086932488386476509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A344510 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P2086932488386476509

namespace A309732

/-- `∑{d}[n+1, #*A344510((n+1)/#)]` -/
def P2086932488386476509.Spec : Prop :=
  ∀ n, P2086932488386476509.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P12414960412287055486

`A308084(n+1)+A034715(n+1)`
-/

namespace A309732.P12414960412287055486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308084 (n + 1) + A034715 (n + 1)

end

end A309732.P12414960412287055486

namespace A309732

/-- `A308084(n+1)+A034715(n+1)` -/
def P12414960412287055486.Spec : Prop :=
  ∀ n, P12414960412287055486.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P6242314116016705822

`A309731(n+1)+2*A308084(n+1)`
-/

namespace A309732.P6242314116016705822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309731 (n + 1) + 2 * A308084 (n + 1)

end

end A309732.P6242314116016705822

namespace A309732

/-- `A309731(n+1)+2*A308084(n+1)` -/
def P6242314116016705822.Spec : Prop :=
  ∀ n, P6242314116016705822.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P12860866641015654168

`(A064987(n+1)+A034714(n+1))/2`
-/

namespace A309732.P12860866641015654168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) + A034714 (n + 1) : ℚ) / 2

end

end A309732.P12860866641015654168

namespace A309732

/-- `(A064987(n+1)+A034714(n+1))/2` -/
def P12860866641015654168.Spec : Prop :=
  ∀ n, P12860866641015654168.a n = (A309732 (n + 1) : ℚ)

end A309732

/-! ## A309732.P3342178644151058980

`2*A034715(n+1)-A309731(n+1)`
-/

namespace A309732.P3342178644151058980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034715 (n + 1) - A309731 (n + 1)

end

end A309732.P3342178644151058980

namespace A309732

/-- `2*A034715(n+1)-A309731(n+1)` -/
def P3342178644151058980.Spec : Prop :=
  ∀ n, P3342178644151058980.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P9393188594415020691

`∑{d}[n+1, A000217(#)*A000290((n+1)/#)]`
-/

namespace A309732.P9393188594415020691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P9393188594415020691

namespace A309732

/-- `∑{d}[n+1, A000217(#)*A000290((n+1)/#)]` -/
def P9393188594415020691.Spec : Prop :=
  ∀ n, P9393188594415020691.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P7253136855710929701

`∑{d}[n+1, A001157(#)*A007438((n+1)/#)]`
-/

namespace A309732.P7253136855710929701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A007438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P7253136855710929701

namespace A309732

/-- `∑{d}[n+1, A001157(#)*A007438((n+1)/#)]` -/
def P7253136855710929701.Spec : Prop :=
  ∀ n, P7253136855710929701.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P7919341317149549267

`∑{d}[n+1, A007434(#)*A007437((n+1)/#)]`
-/

namespace A309732.P7919341317149549267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A007437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P7919341317149549267

namespace A309732

/-- `∑{d}[n+1, A007434(#)*A007437((n+1)/#)]` -/
def P7919341317149549267.Spec : Prop :=
  ∀ n, P7919341317149549267.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P5469933324440980638

`∑{d}[n+1, A023896(#)*A064987((n+1)/#)]`
-/

namespace A309732.P5469933324440980638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P5469933324440980638

namespace A309732

/-- `∑{d}[n+1, A023896(#)*A064987((n+1)/#)]` -/
def P5469933324440980638.Spec : Prop :=
  ∀ n, P5469933324440980638.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P15628536429728721003

`∑{d}[n+1, A057661(#)*A069097((n+1)/#)]`
-/

namespace A309732.P15628536429728721003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P15628536429728721003

namespace A309732

/-- `∑{d}[n+1, A057661(#)*A069097((n+1)/#)]` -/
def P15628536429728721003.Spec : Prop :=
  ∀ n, P15628536429728721003.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P14270647547409275535

`∑{d}[n+1, A002618(#)*A309731((n+1)/#)]`
-/

namespace A309732.P14270647547409275535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P14270647547409275535

namespace A309732

/-- `∑{d}[n+1, A002618(#)*A309731((n+1)/#)]` -/
def P14270647547409275535.Spec : Prop :=
  ∀ n, P14270647547409275535.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P3616256787920021762

`∑{d}[n+1, A007433(#)*A326828((n+1)/#)]`
-/

namespace A309732.P3616256787920021762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P3616256787920021762

namespace A309732

/-- `∑{d}[n+1, A007433(#)*A326828((n+1)/#)]` -/
def P3616256787920021762.Spec : Prop :=
  ∀ n, P3616256787920021762.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P6993853687447855806

`∑{d}[n+1, A057660(#)*A309322((n+1)/#)]`
-/

namespace A309732.P6993853687447855806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A309322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P6993853687447855806

namespace A309732

/-- `∑{d}[n+1, A057660(#)*A309322((n+1)/#)]` -/
def P6993853687447855806.Spec : Prop :=
  ∀ n, P6993853687447855806.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P10240060076908096413

`∑{d}[n+1, A000082(#)*A390808((n+1)/#)]`
-/

namespace A309732.P10240060076908096413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A390808 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P10240060076908096413

namespace A309732

/-- `∑{d}[n+1, A000082(#)*A390808((n+1)/#)]` -/
def P10240060076908096413.Spec : Prop :=
  ∀ n, P10240060076908096413.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P16667852866522542021

`∑{d}[n+1, A091519(#)*A390802((n+1)/#)]`
-/

namespace A309732.P16667852866522542021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A390802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P16667852866522542021

namespace A309732

/-- `∑{d}[n+1, A091519(#)*A390802((n+1)/#)]` -/
def P16667852866522542021.Spec : Prop :=
  ∀ n, P16667852866522542021.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P14010570273697487252

`∑{d}[n+1, A228274(#)*A390804((n+1)/#)]`
-/

namespace A309732.P14010570273697487252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A228274 d * A390804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P14010570273697487252

namespace A309732

/-- `∑{d}[n+1, A228274(#)*A390804((n+1)/#)]` -/
def P14010570273697487252.Spec : Prop :=
  ∀ n, P14010570273697487252.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P12158813806180319064

`∑{d}[n+1, A321322(#)*A326826((n+1)/#)]`
-/

namespace A309732.P12158813806180319064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A326826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P12158813806180319064

namespace A309732

/-- `∑{d}[n+1, A321322(#)*A326826((n+1)/#)]` -/
def P12158813806180319064.Spec : Prop :=
  ∀ n, P12158813806180319064.a n = A309732 (n + 1)

end A309732

/-! ## A309732.P6865328729767001808

`∑{d}[n+1, A351600(#)*A390806((n+1)/#)]`
-/

namespace A309732.P6865328729767001808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351600 d * A390806 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309732.P6865328729767001808

namespace A309732

/-- `∑{d}[n+1, A351600(#)*A390806((n+1)/#)]` -/
def P6865328729767001808.Spec : Prop :=
  ∀ n, P6865328729767001808.a n = A309732 (n + 1)

end A309732

/-!
# A309733: Expansion of Product_{k>=1} 1/(1 - x^k/(1 - x^(2*k))).

The programs for A309733, there is no canonical definition to state claims against.
-/

/-! ## A309733.P10088394169944092879

`and(-A342085(n+1), A055086(A088456(n+1)-n))`
-/

namespace A309733.P10088394169944092879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A342085 (n + 1)) (A055086 (A088456 (n + 1) - (n : ℤ)).toNat)

end

end A309733.P10088394169944092879

/-! ## A309733.P9668476641665388912

`A082447(A349186(n))`
-/

namespace A309733.P9668476641665388912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A349186 n).toNat

end

end A309733.P9668476641665388912

/-! ## A309733.P12841072527344239389

`A089259(n)+A025466(A018028(n))`
-/

namespace A309733.P12841072527344239389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089259 n + A025466 (A018028 n).toNat

end

end A309733.P12841072527344239389

/-! ## A309733.P10224362120072179931

`A003056(A148174(n)+A014397(n))`
-/

namespace A309733.P10224362120072179931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148174 n + A014397 n).toNat

end

end A309733.P10224362120072179931

/-! ## A309733.P1516408544396997557

`A089259(n)+A083895(A000108(n))`
-/

namespace A309733.P1516408544396997557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089259 n + A083895 (A000108 n).toNat

end

end A309733.P1516408544396997557

/-!
# A309735: a(n) is the least positive integer k such that k^n starts with 2.

The programs for A309735, there is no canonical definition to state claims against.
-/

/-! ## A309735.P3840866676492253678

`A067443(n+1)^(1/(n+1))`
-/

namespace A309735.P3840866676492253678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067443 (n + 1) : ℝ) ^ (1 / (n + 1 : ℚ) : ℝ)

end

end A309735.P3840866676492253678

/-! ## A309735.P5904593765762181466

`root(A067443(n+1), n+1)`
-/

namespace A309735.P5904593765762181466
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067443 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A309735.P5904593765762181466

/-!
# A309736: a(1) = 1, and for any n > 1, a(n) is the least k > 0 such that the binary representation of n^k starts with "10".

The programs for A309736, there is no canonical definition to state claims against.
-/

/-! ## A309736.P8652796413156279966

`A098294(round(A008619(n)/A080079(n+1)))`
-/

namespace A309736.P8652796413156279966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (SequenceMachineLib.roundAway ((A008619 n : ℚ) / (A080079 (n + 1) : ℚ))).toNat

end

end A309736.P8652796413156279966

/-! ## A309736.P17327333100647093597

`A106531(A090996(n+1)%A106532(n+2))`
-/

namespace A309736.P17327333100647093597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106531 (Int.tmod (A090996 (n + 1)) (A106532 (n + 2))).toNat

end

end A309736.P17327333100647093597

/-! ## A309736.P11532535456557841728

`A098294(gcd(A059894(n+1), A242349(n+1)))`
-/

namespace A309736.P11532535456557841728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (Int.gcd (A059894 (n + 1)) (A242349 (n + 1)))

end

end A309736.P11532535456557841728

/-! ## A309736.P2557536627362093041

`A106531(A090996(n+1))%A135875(2*(n+1))`
-/

namespace A309736.P2557536627362093041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106531 (A090996 (n + 1)).toNat) (A135875 (2 * (n + 1)))

end

end A309736.P2557536627362093041

/-! ## A309736.P12747534973846974055

`A288256(A090996(2*(n+1))%A181928(n+1))`
-/

namespace A309736.P12747534973846974055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288256 ((Int.tmod (A090996 (2 * (n + 1))) (A181928 (n + 1))).toNat + 10)

end

end A309736.P12747534973846974055

/-!
# A309738: Primes of the form b^2*10^(2*k) + b*10^k + 1 for 1 <= b <= 9, k >= 0.

The programs for A309738, there is no canonical definition to state claims against.
-/

/-! ## A309738.P5356156304414823577

`p?[A002378(A037124(n+1))+1]`
-/

namespace A309738.P5356156304414823577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A037124 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309738.P5356156304414823577

/-! ## A309738.P12238487827202386981

`p?[A000007(A088116(n))+n²+n]`
-/

namespace A309738.P12238487827202386981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A088116 n).toNat + (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309738.P12238487827202386981

/-! ## A309738.P6240821245158778527

`p?[A002378(n)+A000007(A035930(n))]`
-/

namespace A309738.P6240821245158778527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + A000007 (A035930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309738.P6240821245158778527

/-! ## A309738.P12065933589340217549

`p?[(n²+1+n)*A035931(n)]`
-/

namespace A309738.P12065933589340217549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n : ℤ) * A035931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309738.P12065933589340217549

/-!
# A309739: Primes of the form b*10^(2*k) + b*10^k + 1 for 1 <= b <= 9, k >= 0.

The programs for A309739, there is no canonical definition to state claims against.
-/

/-! ## A309739.P4262519438706479014

`p?[∑[A000001(10*10*(n+1)+1)]]`
-/

namespace A309739.P4262519438706479014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (10 * (10 * (n + 1)) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309739.P4262519438706479014

/-! ## A309739.P8072126863216841158

`p?[A085090(n+1)+floor(C(n, 10)/10)]`
-/

namespace A309739.P8072126863216841158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1) + ⌊(Nat.choose n 10 : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309739.P8072126863216841158

/-! ## A309739.P14003761452153285580

`A130057(A084831(n+1))`
-/

namespace A309739.P14003761452153285580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130057 (A084831 (n + 1)).toNat

end

end A309739.P14003761452153285580

/-! ## A309739.P10575147689231202928

`A291934(A062280(n+2))`
-/

namespace A309739.P10575147689231202928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291934 (A062280 (n + 2)).toNat

end

end A309739.P10575147689231202928

/-!
# A309741: Numbers k such that 6*10^(2*k) + 6*10^k + 1 is prime.

The programs for A309741, there is no canonical definition to state claims against.
-/

/-! ## A309741.P16809912531081002690

`A056239(A279683(n)+A165070(n+4))`
-/

namespace A309741.P16809912531081002690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A279683 n + A165070 (n + 4)).toNat

end

end A309741.P16809912531081002690

/-! ## A309741.P11155717120861407758

`A122227(a(n-1)+3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A309741.P11155717120861407758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  A122227 (a (n - 1) + 3).toNat

end

end A309741.P11155717120861407758

/-!
# A309742: Numbers k such that 8*10^(2*k) + 8*10^k + 1 are prime.

The programs for A309742, there is no canonical definition to state claims against.
-/

/-! ## A309742.P8823636282060135298

`xor(A076314(A000312(n)), A292476(n))`
-/

namespace A309742.P8823636282060135298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076314 (A000312 n).toNat) (A292476 n)

end

end A309742.P8823636282060135298

/-! ## A309742.P4018185791590371117

`xor(A004525(A117766(n)), A326755(n))`
-/

namespace A309742.P4018185791590371117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004525 (A117766 n).toNat) (A326755 n)

end

end A309742.P4018185791590371117

/-!
# A309743: Numbers k such that 9*10^(2*k) + 9*10^k + 1 is prime.

The programs for A309743, there is no canonical definition to state claims against.
-/

/-! ## A309743.P12284366332937115924

`A359897(A377823(n))`
-/

namespace A309743.P12284366332937115924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359897 (A377823 n).toNat

end

end A309743.P12284366332937115924

/-! ## A309743.P2883725197444371919

`A359897(∑[A033129(n)])`
-/

namespace A309743.P2883725197444371919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359897 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309743.P2883725197444371919

/-!
# A309746: Number of ways of placing 2*n-1 nonattacking queens on a hexagonal board with edge-length n in Glinski's hexagonal chess.

The programs for A309746, there is no canonical definition to state claims against.
-/

/-! ## A309746.P229028754434344386

`A372706(A189391(n+1))`
-/

namespace A309746.P229028754434344386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372706 (A189391 (n + 1)).toNat

end

end A309746.P229028754434344386

/-! ## A309746.P17305938403599663654

`A219480(A009623(n)+∑[C(3, (n%4)²)])`
-/

namespace A309746.P17305938403599663654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((n % 4) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219480 (A009623 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A309746.P17305938403599663654

/-! ## A309746.P5199545519345911102

`(Δ[or(2, n+2)]+n)*A355536(A064614(3*n+2))`
-/

namespace A309746.P5199545519345911102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) * A355536 (A064614 (3 * n + 2)).toNat

end

end A309746.P5199545519345911102

/-! ## A309746.P2182152796403407397

`A103344(A124214(n)%A028859(n))`
-/

namespace A309746.P2182152796403407397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (Int.tmod (A124214 n) (A028859 n)).toNat

end

end A309746.P2182152796403407397

/-! ## A309746.P10672929538273017060

`C(A134021(A324062(n)), A078298(n))`
-/

namespace A309746.P10672929538273017060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134021 (A324062 n).toNat).toNat (A078298 n).toNat

end

end A309746.P10672929538273017060

/-!
# A309747: Numbers k such that k^k + (k+1)^(k+1) is a semiprime.

The programs for A309747, there is no canonical definition to state claims against.
-/

/-! ## A309747.P9733609139698419235

`eq[2, A217435(n+1)]`
-/

namespace A309747.P9733609139698419235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309747.P9733609139698419235

/-! ## A309747.P1638189776111973118

`lt[A189743(A217435(n+1)), A027434(n+1)]`
-/

namespace A309747.P1638189776111973118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189743 (A217435 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309747.P1638189776111973118

/-! ## A309747.P17949855124894922800

`lt[A217430(A217435(n+1)), A217403(n+6)]`
-/

namespace A309747.P17949855124894922800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217430 (A217435 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217403 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309747.P17949855124894922800

/-! ## A309747.P18057682549175669751

`lt[A217430(A217435(n+1)), A217448(2*n+1)]`
-/

namespace A309747.P18057682549175669751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217430 (A217435 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217448 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309747.P18057682549175669751

/-! ## A309747.P13349464229527417917

`lt[A006936(A217435(n+1))*A065091(n+1), 3]`
-/

namespace A309747.P13349464229527417917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006936 (A217435 (n + 1)).toNat * A065091 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A309747.P13349464229527417917

/-!
# A309748: The number of non-equivalent distinguishing coloring partitions of the path on n vertices (n>=1) with exactly k parts (k>=1). Regular triangle read by rows: the rows are indexed by n, the number of vertices of the path, and the columns are indexed by k, the number of parts.

The programs for A309748, there is no canonical definition to state claims against.
-/

/-! ## A309748.P7519013680041016529

`A122066(A111106(n))*A135898(n)`
-/

namespace A309748.P7519013680041016529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122066 (A111106 n).toNat * A135898 n

end

end A309748.P7519013680041016529

/-! ## A309748.P5527576023628147603

`A245092(A084938(n)^A001055(n+2))`
-/

namespace A309748.P5527576023628147603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A084938 n : ℚ) ^ (A001055 (n + 2) : ℤ))).toNat

end

end A309748.P5527576023628147603

/-! ## A309748.P14581569086629068597

`A245092(A084938(n)^A292886(n+2))`
-/

namespace A309748.P14581569086629068597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A084938 n : ℚ) ^ (A292886 (n + 2) : ℤ))).toNat

end

end A309748.P14581569086629068597

/-! ## A309748.P1110637907863971903

`ceil((A350261(A274741(n))+A189233(n))^ϕ)`
-/

namespace A309748.P1110637907863971903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350261 (A274741 n).toNat + A189233 n : ℝ) ^ Real.goldenRatio⌉

end

end A309748.P1110637907863971903

/-! ## A309748.P15382312397884178049

`A343866(A335330(n+1))`
-/

namespace A309748.P15382312397884178049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343866 (A335330 (n + 1)).toNat

end

end A309748.P15382312397884178049

/-!
# A309751: Approximation of the 2-adic integer arctan(2) up to 2^n.

The programs for A309751, there is no canonical definition to state claims against.
-/

/-! ## A309751.P15696680107735056461

`714%A028310(A000079(n))`
-/

namespace A309751.P15696680107735056461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 714 (A028310 (A000079 n).toNat)

end

end A309751.P15696680107735056461

/-! ## A309751.P17728211724893118677

`A119167(A117366(2^n))%(2^n)`
-/

namespace A309751.P17728211724893118677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119167 (A117366 (2 ^ n)).toNat) (2 ^ n : ℤ)

end

end A309751.P17728211724893118677

/-! ## A309751.P4441378531233752023

`∑[and(A011782(n), A339617(3*(n+1)))]`
-/

namespace A309751.P4441378531233752023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011782 n) (A339617 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309751.P4441378531233752023

/-! ## A309751.P13337770120781987012

`A305548(A250741(n+1))%A220051(n)`
-/

namespace A309751.P13337770120781987012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305548 (A250741 (n + 1)).toNat) (A220051 n)

end

end A309751.P13337770120781987012

/-! ## A309751.P13607504805826700953

`and(A000225(n), A305548(A250741(n+1)))`
-/

namespace A309751.P13607504805826700953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A305548 (A250741 (n + 1)).toNat)

end

end A309751.P13607504805826700953

/-!
# A309752: Digits of the 2-adic integer arctan(2).

The programs for A309752, there is no canonical definition to state claims against.
-/

/-! ## A309752.P946372169795953916

`(A309751(n+1)-A309751(n))/2^n`
-/

namespace A309752.P946372169795953916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309751 (n + 1) - A309751 n : ℚ) / (2 ^ n : ℚ)

end

end A309752.P946372169795953916

/-! ## A309752.P37154449184836537

`floor(atan(Δ[A309751(n)]))`
-/

namespace A309752.P37154449184836537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A309752.P37154449184836537

/-! ## A309752.P11454832578067010143

`Δ[A309751(n)]/A000079(n)`
-/

namespace A309752.P11454832578067010143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309751 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A309752.P11454832578067010143

/-! ## A309752.P11774127508082065460

`floor(A309751(n+1)/A000079(n))`
-/

namespace A309752.P11774127508082065460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309751 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A309752.P11774127508082065460

/-! ## A309752.P5415435469668157604

`Δ[A309751(n)]/A117303(2*n+1)`
-/

namespace A309752.P5415435469668157604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309751 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A117303 (2 * n + 1) : ℚ)

end

end A309752.P5415435469668157604

/-!
# A309753: Approximation of the 2-adic integer arctanh(2) up to 2^n.

The programs for A309753, there is no canonical definition to state claims against.
-/

/-! ## A309753.P6828882874638064140

`∑[A011782(n)*A321694(n)]`
-/

namespace A309753.P6828882874638064140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A321694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309753.P6828882874638064140

/-! ## A309753.P5117702311507391675

`∑[A131577(n*A321694(n))]`
-/

namespace A309753.P5117702311507391675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 ((n : ℤ) * A321694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309753.P5117702311507391675

/-! ## A309753.P9431595224712191604

`∑[A000079(n)*A321694(n)]/2`
-/

namespace A309753.P9431595224712191604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A321694 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A309753.P9431595224712191604

/-! ## A309753.P17918895145307934253

`A321691(n+1)/2`
-/

namespace A309753.P17918895145307934253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321691 (n + 1) : ℚ) / 2

end

end A309753.P17918895145307934253

/-! ## A309753.P4469835775822381811

`Δ[∑[A321691(n)]/2]`
-/

namespace A309753.P4469835775822381811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321691 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309753.P4469835775822381811

/-!
# A309754: Digits of the 2-adic integer arctanh(2).

The programs for A309754, there is no canonical definition to state claims against.
-/

/-! ## A309754.P8395050098634954773

`(A309753(n+1)-A309753(n))/2^n`
-/

namespace A309754.P8395050098634954773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309753 (n + 1) - A309753 n : ℚ) / (2 ^ n : ℚ)

end

end A309754.P8395050098634954773

/-! ## A309754.P11640505864473625214

`A321694((n+1)%A273579(n))`
-/

namespace A309754.P11640505864473625214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 (Int.tmod (n + 1 : ℤ) (A273579 n)).toNat

end

end A309754.P11640505864473625214

/-! ## A309754.P18004072479614184385

`A321694(n+1)`
-/

namespace A309754.P18004072479614184385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 (n + 1)

end

end A309754.P18004072479614184385

/-! ## A309754.P417751589643023800

`∑[Δ[A321694(n)]^3]`
-/

namespace A309754.P417751589643023800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309754.P417751589643023800

/-! ## A309754.P1490529662346550281

`A000035(Δ[∑[A321694(n)]²])`
-/

namespace A309754.P1490529662346550281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat

end

end A309754.P1490529662346550281

/-! ## A309754.P7313336072753892008

`A000035(∑[2-Δ[A321694(n)]])`
-/

namespace A309754.P7313336072753892008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309754.P7313336072753892008

/-! ## A309754.P6887583456870611917

`A000045(Δ[2*∑[A321694(n)]])`
-/

namespace A309754.P6887583456870611917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A309754.P6887583456870611917

/-! ## A309754.P15866629664425936426

`A000045(∑[Δ[A321694(n)]%3])`
-/

namespace A309754.P15866629664425936426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309754.P15866629664425936426

/-! ## A309754.P6848568488788514789

`A001222(∑[2*Δ[A321694(n)]]!)`
-/

namespace A309754.P6848568488788514789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A309754.P6848568488788514789

/-! ## A309754.P10728989832685280204

`A000108(∑[2*Δ[A321694(n)]])-1`
-/

namespace A309754.P10728989832685280204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A309754.P10728989832685280204

/-!
# A309755: Primes with record Euclidean distance from the origin. When starting rightwards in a grid, turn left after a prime number, if not walk straight on.

The programs for A309755, there is no canonical definition to state claims against.
-/

/-! ## A309755.P17942639894220649435

`p?[A088450(n+1)*A088459(n+4)]`
-/

namespace A309755.P17942639894220649435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (n + 1) * A088459 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309755.P17942639894220649435

/-! ## A309755.P304737032579182564

`A316428(∑{digits}[n, #²]+p?[round(8*n/7)]-n)`
-/

namespace A309755.P304737032579182564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316428 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - (n : ℤ))).toNat

end

end A309755.P304737032579182564

/-! ## A309755.P17858322513422031690

`A040083(record[Δ[A334267(n+1)]])`
-/

namespace A309755.P17858322513422031690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309755.P17858322513422031690

/-!
# A309756: Approximation of the 2-adic integer arctan(4) up to 2^n.

The programs for A309756, there is no canonical definition to state claims against.
-/

/-! ## A309756.P8901662302459839597

`∑[A004526(A316344(n+3)^n)]`
-/

namespace A309756.P8901662302459839597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A316344 (n + 3) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309756.P8901662302459839597

/-! ## A309756.P6835273084002262695

`A027379(A341752(n+2))%A000079(n)`
-/

namespace A309756.P6835273084002262695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027379 (A341752 (n + 2)).toNat) (A000079 n)

end

end A309756.P6835273084002262695

/-! ## A309756.P7770609845457135225

`and(A000225(n), A027379(A341752(n+2)))`
-/

namespace A309756.P7770609845457135225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A027379 (A341752 (n + 2)).toNat)

end

end A309756.P7770609845457135225

/-! ## A309756.P16540975421690429075

`and(A027379(A341752(n+2)), A274300(n))`
-/

namespace A309756.P16540975421690429075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027379 (A341752 (n + 2)).toNat) (A274300 n)

end

end A309756.P16540975421690429075

/-! ## A309756.P7836438546027593940

`and(A055998(A341752(n+2)), A255047(n))`
-/

namespace A309756.P7836438546027593940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055998 (A341752 (n + 2)).toNat) (A255047 n)

end

end A309756.P7836438546027593940

/-!
# A309758: Numbers that are sums of consecutive powers of 3.

The programs for A309758, the canonical program `A309758.P17135568325741650578` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309758 has offset 1).

The definition of A309758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309758.P12078684405436706076

`∑[ceil(A027465(n)/A132749(n))]`
-/

namespace A309758.P12078684405436706076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027465 n : ℚ) / (A132749 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309758.P12078684405436706076

namespace A309758

/-- `∑[ceil(A027465(n)/A132749(n))]` -/
def P12078684405436706076.Spec : Prop :=
  ∀ n, P12078684405436706076.a n = A309758 (n + 1)

end A309758

/-! ## A309758.P17135568325741650578

`A007051(A002024(n+1))-A007051(A025581(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309758

/-- `A007051(A002024(n+1))-A007051(A025581(n))` -/
def P17135568325741650578.Spec : Prop :=
  ∀ n, P17135568325741650578.a n = A309758 (n + 1)

theorem P17135568325741650578.correct : P17135568325741650578.Spec := by
  intro n
  simp only [A309758, Nat.add_sub_cancel]

end A309758

/-! ## A309758.P8173746176057068871

`∑[A135293(A038722(n+1))/2]`
-/

namespace A309758.P8173746176057068871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135293 (A038722 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309758.P8173746176057068871

namespace A309758

/-- `∑[A135293(A038722(n+1))/2]` -/
def P8173746176057068871.Spec : Prop :=
  ∀ n, P8173746176057068871.a n = (A309758 (n + 1) : ℚ)

end A309758

/-! ## A309758.P15131456440244791031

`∑[A135293(A278818(n))/2]`
-/

namespace A309758.P15131456440244791031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135293 (A278818 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309758.P15131456440244791031

namespace A309758

/-- `∑[A135293(A278818(n))/2]` -/
def P15131456440244791031.Spec : Prop :=
  ∀ n, P15131456440244791031.a n = (A309758 (n + 1) : ℚ)

end A309758

/-! ## A309758.P11236198242947048666

`(A188341(A007401(n+1))+1)/2`
-/

namespace A309758.P11236198242947048666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188341 (A007401 (n + 1)).toNat + 1 : ℚ) / 2

end

end A309758.P11236198242947048666

namespace A309758

/-- `(A188341(A007401(n+1))+1)/2` -/
def P11236198242947048666.Spec : Prop :=
  ∀ n, P11236198242947048666.a n = (A309758 (n + 1) : ℚ)

end A309758

/-! ## A309758.P9265762005470648423

`∩[A023759(n+1), A121153(n+1)]`
-/

namespace A309758.P9265762005470648423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309758.P9265762005470648423

namespace A309758

/-- `∩[A023759(n+1), A121153(n+1)]` -/
def P9265762005470648423.Spec : Prop :=
  ∀ n, (P9265762005470648423.a n : ℤ) = A309758 (n + 1)

end A309758

/-! ## A309758.P4059488405170967646

`ceil(A044966(n+1)/2)`
-/

namespace A309758.P4059488405170967646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A044966 (n + 1) : ℚ) / 2⌉

end

end A309758.P4059488405170967646

namespace A309758

/-- `ceil(A044966(n+1)/2)` -/
def P4059488405170967646.Spec : Prop :=
  ∀ n, P4059488405170967646.a n = A309758 (n + 1)

end A309758

/-! ## A309758.P12951091398684749986

`record[A178590(n+1)]`
-/

namespace A309758.P12951091398684749986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309758.P12951091398684749986

namespace A309758

/-- `record[A178590(n+1)]` -/
def P12951091398684749986.Spec : Prop :=
  ∀ n, P12951091398684749986.a n = A309758 (n + 1)

end A309758

/-! ## A309758.P15701142503616477563

`record[A183211(n+1)]`
-/

namespace A309758.P15701142503616477563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309758.P15701142503616477563

namespace A309758

/-- `record[A183211(n+1)]` -/
def P15701142503616477563.Spec : Prop :=
  ∀ n, P15701142503616477563.a n = A309758 (n + 1)

end A309758

/-! ## A309758.P2924797768218465364

`record[A183212(n+1)/2]`
-/

namespace A309758.P2924797768218465364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183212 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309758.P2924797768218465364

namespace A309758

/-- `record[A183212(n+1)/2]` -/
def P2924797768218465364.Spec : Prop :=
  ∀ n, P2924797768218465364.a n = (A309758 (n + 1) : ℚ)

end A309758

/-!
# A309759: Numbers that are sums of consecutive powers of 4.

The programs for A309759, the canonical program `A309759.P11154735191982409754` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309759 has offset 1).

The definition of A309759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309759.P11154735191982409754

`A115216(A292564(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A309759

/-- `A115216(A292564(n))` -/
def P11154735191982409754.Spec : Prop :=
  ∀ n, P11154735191982409754.a n = A309759 (n + 1)

theorem P11154735191982409754.correct : P11154735191982409754.Spec := by
  intro n
  simp only [A309759, Nat.add_sub_cancel]

end A309759

/-! ## A309759.P15171806008094819144

`A181666(A004201(n+1))`
-/

namespace A309759.P15171806008094819144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (A004201 (n + 1)).toNat

end

end A309759.P15171806008094819144

namespace A309759

/-- `A181666(A004201(n+1))` -/
def P15171806008094819144.Spec : Prop :=
  ∀ n, P15171806008094819144.a n = A309759 (n + 1)

end A309759

/-! ## A309759.P4235332461478363996

`A175332(A185868(n+1))/3`
-/

namespace A309759.P4235332461478363996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175332 (A185868 (n + 1)).toNat : ℚ) / 3

end

end A309759.P4235332461478363996

namespace A309759

/-- `A175332(A185868(n+1))/3` -/
def P4235332461478363996.Spec : Prop :=
  ∀ n, P4235332461478363996.a n = (A309759 (n + 1) : ℚ)

end A309759

/-! ## A309759.P12081124173065157555

`A043569(A185870(n+1))/6`
-/

namespace A309759.P12081124173065157555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043569 (A185870 (n + 1)).toNat : ℚ) / 6

end

end A309759.P12081124173065157555

namespace A309759

/-- `A043569(A185870(n+1))/6` -/
def P12081124173065157555.Spec : Prop :=
  ∀ n, P12081124173065157555.a n = (A309759 (n + 1) : ℚ)

end A309759

/-! ## A309759.P5744242577279515721

`A175332(A185869(n+1))/6`
-/

namespace A309759.P5744242577279515721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175332 (A185869 (n + 1)).toNat : ℚ) / 6

end

end A309759.P5744242577279515721

namespace A309759

/-- `A175332(A185869(n+1))/6` -/
def P5744242577279515721.Spec : Prop :=
  ∀ n, P5744242577279515721.a n = (A309759 (n + 1) : ℚ)

end A309759

/-! ## A309759.P15537636415923274968

`A043569(A185871(n+1))/12`
-/

namespace A309759.P15537636415923274968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043569 (A185871 (n + 1)).toNat : ℚ) / 12

end

end A309759.P15537636415923274968

namespace A309759

/-- `A043569(A185871(n+1))/12` -/
def P15537636415923274968.Spec : Prop :=
  ∀ n, P15537636415923274968.a n = (A309759 (n + 1) : ℚ)

end A309759

/-! ## A309759.P15453504388346439123

`A047849(A002024(n+1))-A047849(A025581(n))`
-/

namespace A309759.P15453504388346439123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 (A002024 (n + 1)).toNat - A047849 (A025581 n).toNat

end

end A309759.P15453504388346439123

namespace A309759

/-- `A047849(A002024(n+1))-A047849(A025581(n))` -/
def P15453504388346439123.Spec : Prop :=
  ∀ n, P15453504388346439123.a n = A309759 (n + 1)

end A309759

/-! ## A309759.P10754482700743549170

`A192113(2*n+3)/3`
-/

namespace A309759.P10754482700743549170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192113 (2 * n + 3) : ℚ) / 3

end

end A309759.P10754482700743549170

namespace A309759

/-- `A192113(2*n+3)/3` -/
def P10754482700743549170.Spec : Prop :=
  ∀ n, P10754482700743549170.a n = (A309759 (n + 1) : ℚ)

end A309759

/-! ## A309759.P15802249000718996921

`A130321(n)²*A001157(A059268(n))`
-/

namespace A309759.P15802249000718996921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A001157 (A059268 n).toNat

end

end A309759.P15802249000718996921

namespace A309759

/-- `A130321(n)²*A001157(A059268(n))` -/
def P15802249000718996921.Spec : Prop :=
  ∀ n, P15802249000718996921.a n = A309759 (n + 1)

end A309759

/-!
# A309760: Even numbers k such that k-p is composite where p is the largest prime <= k.

The programs for A309760, there is no canonical definition to state claims against.
-/

/-! ## A309760.P2065773124579705621

`filter[A244207(n+1), A323162(#)]`
-/

namespace A309760.P2065773124579705621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A309760.P2065773124579705621

/-! ## A309760.P6213064409509085502

`∩[A138026(n+1), A244207(n+1)]`
-/

namespace A309760.P6213064409509085502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P6213064409509085502

/-! ## A309760.P16850309161077183556

`∩[A138026(n+1), A387501(n+1)]`
-/

namespace A309760.P16850309161077183556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P16850309161077183556

/-! ## A309760.P15537295979104213977

`∩[A138026(n+1), A298366(n+1)]`
-/

namespace A309760.P15537295979104213977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P15537295979104213977

/-! ## A309760.P7320547549382214512

`∩[A118954(n+1), A244207(n+1)]`
-/

namespace A309760.P7320547549382214512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P7320547549382214512

/-! ## A309760.P10280874262097142242

`∩[A118954(n+1), A387501(n+1)]`
-/

namespace A309760.P10280874262097142242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P10280874262097142242

/-! ## A309760.P6860477641278511357

`∩[A100319(n+1), A138026(n+1)]`
-/

namespace A309760.P6860477641278511357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P6860477641278511357

/-! ## A309760.P15658956285095797959

`∩[A138026(n+1), A076772(n)]`
-/

namespace A309760.P15658956285095797959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P15658956285095797959

/-! ## A309760.P15027581132444715248

`∩[A076770(n+1), A138026(n+1)]`
-/

namespace A309760.P15027581132444715248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P15027581132444715248

/-! ## A309760.P17337785961258637922

`∩[A138026(n+1), A398389(n+1)]`
-/

namespace A309760.P17337785961258637922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P17337785961258637922

/-! ## A309760.P9219926544644128066

`∩[A138026(n+1), A020744(n)]`
-/

namespace A309760.P9219926544644128066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P9219926544644128066

/-! ## A309760.P17420229726183131509

`∩[A138026(n+1), A392181(n+1)]`
-/

namespace A309760.P17420229726183131509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P17420229726183131509

/-! ## A309760.P5849234061113581847

`∩[A138026(n+1), A004271(n)]`
-/

namespace A309760.P5849234061113581847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P5849234061113581847

/-! ## A309760.P5596467068957680396

`∩[A138026(n+1), A004272(n)]`
-/

namespace A309760.P5596467068957680396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P5596467068957680396

/-! ## A309760.P155879845750885250

`∩[A138026(n+1), A004275(n)]`
-/

namespace A309760.P155879845750885250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P155879845750885250

/-! ## A309760.P13920758657298988591

`∩[A138026(n+1), A004277(n)]`
-/

namespace A309760.P13920758657298988591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P13920758657298988591

/-! ## A309760.P14280837599624370283

`∩[A138026(n+1), A004279(n)]`
-/

namespace A309760.P14280837599624370283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P14280837599624370283

/-! ## A309760.P16234165782800803764

`∩[A138026(n+1), A005843(n)]`
-/

namespace A309760.P16234165782800803764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P16234165782800803764

/-! ## A309760.P7249865247117535075

`∩[A138026(n+1), A020739(n)]`
-/

namespace A309760.P7249865247117535075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P7249865247117535075

/-! ## A309760.P6407973823533162765

`∩[A138026(n+1), A103517(n)]`
-/

namespace A309760.P6407973823533162765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309760.P6407973823533162765

/-!
# A309761: Numbers that are sums of consecutive powers of 10.

The programs for A309761, the canonical program `A309761.P8963305717422464653` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309761 has offset 1).

The definition of A309761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309761.P8963305717422464653

`A276349(n+1)/10`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A309761

/-- `A276349(n+1)/10` -/
def P8963305717422464653.Spec : Prop :=
  ∀ n, P8963305717422464653.a n = (A309761 (n + 1) : ℚ)

end A309761

/-! ## A309761.P10506216496656208144

`A007088(A023758(n+2))`
-/

namespace A309761.P10506216496656208144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A023758 (n + 2)).toNat

end

end A309761.P10506216496656208144

namespace A309761

/-- `A007088(A023758(n+2))` -/
def P10506216496656208144.Spec : Prop :=
  ∀ n, P10506216496656208144.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P5665931250812368824

`A131664(n+1)-A002275(A025581(n))`
-/

namespace A309761.P5665931250812368824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (n + 1) - A002275 (A025581 n).toNat

end

end A309761.P5665931250812368824

namespace A309761

/-- `A131664(n+1)-A002275(A025581(n))` -/
def P5665931250812368824.Spec : Prop :=
  ∀ n, P5665931250812368824.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P3758281400493024655

`A131664(n+1)-A002275(log2(A130321(n)))`
-/

namespace A309761.P3758281400493024655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (n + 1) - A002275 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A309761.P3758281400493024655

namespace A309761

/-- `A131664(n+1)-A002275(log2(A130321(n)))` -/
def P3758281400493024655.Spec : Prop :=
  ∀ n, P3758281400493024655.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P6634047709525772907

`A002275(A002024(n+1))-A002275(A025581(n))`
-/

namespace A309761.P6634047709525772907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A002024 (n + 1)).toNat - A002275 (A025581 n).toNat

end

end A309761.P6634047709525772907

namespace A309761

/-- `A002275(A002024(n+1))-A002275(A025581(n))` -/
def P6634047709525772907.Spec : Prop :=
  ∀ n, P6634047709525772907.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P2898123249026190604

`A110380(n+1)-A014824(A003056(n))`
-/

namespace A309761.P2898123249026190604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110380 (n + 1) - A014824 (A003056 n).toNat

end

end A309761.P2898123249026190604

namespace A309761

/-- `A110380(n+1)-A014824(A003056(n))` -/
def P2898123249026190604.Spec : Prop :=
  ∀ n, P2898123249026190604.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P9888789581385090216

`A007088(A089633(n)+1)`
-/

namespace A309761.P9888789581385090216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A089633 n + 1).toNat

end

end A309761.P9888789581385090216

namespace A309761

/-- `A007088(A089633(n)+1)` -/
def P9888789581385090216.Spec : Prop :=
  ∀ n, P9888789581385090216.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P5403026557261354551

`A007088(∑[A057728(n+1)])`
-/

namespace A309761.P5403026557261354551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309761.P5403026557261354551

namespace A309761

/-- `A007088(∑[A057728(n+1)])` -/
def P5403026557261354551.Spec : Prop :=
  ∀ n, P5403026557261354551.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P15458130225788149319

`A007088(A043569(n+1)/2)`
-/

namespace A309761.P15458130225788149319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A043569 (n + 1) : ℚ) / 2)).toNat

end

end A309761.P15458130225788149319

namespace A309761

/-- `A007088(A043569(n+1)/2)` -/
def P15458130225788149319.Spec : Prop :=
  ∀ n, P15458130225788149319.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P13253038143260743758

`A007088((A081118(n+1)+1)/2)`
-/

namespace A309761.P13253038143260743758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A081118 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A309761.P13253038143260743758

namespace A309761

/-- `A007088((A081118(n+1)+1)/2)` -/
def P13253038143260743758.Spec : Prop :=
  ∀ n, P13253038143260743758.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P7638065238372083689

`A007088(∑[A155038(A080036(n))])`
-/

namespace A309761.P7638065238372083689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309761.P7638065238372083689

namespace A309761

/-- `A007088(∑[A155038(A080036(n))])` -/
def P7638065238372083689.Spec : Prop :=
  ∀ n, P7638065238372083689.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P15593339405562485490

`A007088(A140513(n)-A130321(n))`
-/

namespace A309761.P15593339405562485490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A140513 n - A130321 n).toNat

end

end A309761.P15593339405562485490

namespace A309761

/-- `A007088(A140513(n)-A130321(n))` -/
def P15593339405562485490.Spec : Prop :=
  ∀ n, P15593339405562485490.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P4695961244989617588

`record[A139709(n+1)]`
-/

namespace A309761.P4695961244989617588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309761.P4695961244989617588

namespace A309761

/-- `record[A139709(n+1)]` -/
def P4695961244989617588.Spec : Prop :=
  ∀ n, P4695961244989617588.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P3351800603963933417

`record[A221714(n+1)]`
-/

namespace A309761.P3351800603963933417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309761.P3351800603963933417

namespace A309761

/-- `record[A221714(n+1)]` -/
def P3351800603963933417.Spec : Prop :=
  ∀ n, P3351800603963933417.a n = A309761 (n + 1)

end A309761

/-! ## A309761.P17095634154503803267

`A139709(A099627(n))`
-/

namespace A309761.P17095634154503803267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (A099627 n).toNat

end

end A309761.P17095634154503803267

namespace A309761

/-- `A139709(A099627(n))` -/
def P17095634154503803267.Spec : Prop :=
  ∀ n, P17095634154503803267.a n = A309761 (n + 1)

end A309761

/-!
# A309763: Numbers that are the sum of 4 nonzero 4th powers in more than one way.

The programs for A309763, there is no canonical definition to state claims against.
-/

/-! ## A309763.P13907759285144197379

`∪[A344193(n+1), A344241(n+1)]`
-/

namespace A309763.P13907759285144197379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309763.P13907759285144197379

/-! ## A309763.P1362400278505363271

`record[A344193(A307797(n+1))]`
-/

namespace A309763.P1362400278505363271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344193 (A307797 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309763.P1362400278505363271

/-! ## A309763.P14867774397752306546

`record[A344193(A292375((n+1)²))]`
-/

namespace A309763.P14867774397752306546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344193 (A292375 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309763.P14867774397752306546

/-! ## A309763.P7026747597835934849

`A344193(n+1)%A083602(n+1)`
-/

namespace A309763.P7026747597835934849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344193 (n + 1)) (A083602 (n + 1))

end

end A309763.P7026747597835934849

/-! ## A309763.P2664941446558975886

`A001222(A054818(n))*A344193(n+1)`
-/

namespace A309763.P2664941446558975886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054818 n).toNat * A344193 (n + 1)

end

end A309763.P2664941446558975886

/-!
# A309764: a(0)=0; for n > 0, a(n) = a(n-1) + d * n, where initially d = 1 but changes sign whenever n = |a(k)|, 0 < k < n.

The programs for A309764, there is no canonical definition to state claims against.
-/

/-! ## A309764.P14014412293071835659

`∑[n*A165481(A088813(n))]`
-/

namespace A309764.P14014412293071835659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165481 (A088813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309764.P14014412293071835659

/-! ## A309764.P11014883287947266756

`∑[A071670(n)/A165481(A088813(n))]`
-/

namespace A309764.P11014883287947266756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071670 n : ℚ) / (A165481 (A088813 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309764.P11014883287947266756

/-! ## A309764.P4827694838923002873

`∑[A118759(n)/A165481(A088813(n))]`
-/

namespace A309764.P4827694838923002873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118759 n : ℚ) / (A165481 (A088813 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309764.P4827694838923002873

/-! ## A309764.P6017498536318750228

`∑[n*A134323(2^(n+1))]`
-/

namespace A309764.P6017498536318750228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134323 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309764.P6017498536318750228

/-! ## A309764.P1363197408730285046

`∑[n*A309873(A281019(n+1))]`
-/

namespace A309764.P1363197408730285046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A309873 (A281019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309764.P1363197408730285046

/-!
# A309765: a(n) is the least k>=1 such that k*(k+1) is divisible by A003418(n).

The programs for A309765, there is no canonical definition to state claims against.
-/

/-! ## A309765.P15733093802140064896

`A011772(round(A109935(n+1)/2))`
-/

namespace A309765.P15733093802140064896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.roundAway ((A109935 (n + 1) : ℚ) / 2)).toNat

end

end A309765.P15733093802140064896

/-! ## A309765.P16540200536251971556

`A344005(∏[(n+1)/∏{p}[n+1, (n+1)/#]])`
-/

namespace A309765.P16540200536251971556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A309765.P16540200536251971556

/-! ## A309765.P8720660406947326574

`A344005(A120108(∑[n]))`
-/

namespace A309765.P8720660406947326574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A120108 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A309765.P8720660406947326574

/-! ## A309765.P3265373895275374285

`A015909(A003418(n+1))`
-/

namespace A309765.P3265373895275374285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015909 (A003418 (n + 1)).toNat

end

end A309765.P3265373895275374285

/-! ## A309765.P2046937250851737236

`A015909(A058312(n+1))`
-/

namespace A309765.P2046937250851737236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015909 (A058312 (n + 1)).toNat

end

end A309765.P2046937250851737236

/-!
# A309766: Digits of the 2-adic integer arctan(4).

The programs for A309766, there is no canonical definition to state claims against.
-/

/-! ## A309766.P5411806477825700235

`(A309756(n+1)-A309756(n))/2^n`
-/

namespace A309766.P5411806477825700235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309756 (n + 1) - A309756 n : ℚ) / (2 ^ n : ℚ)

end

end A309766.P5411806477825700235

/-! ## A309766.P16518902108939809135

`floor(atan(Δ[A309756(n)]))`
-/

namespace A309766.P16518902108939809135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A309766.P16518902108939809135

/-! ## A309766.P18295103242751183114

`floor(A309756(n+1)/2^n)`
-/

namespace A309766.P18295103242751183114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309756 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A309766.P18295103242751183114

/-! ## A309766.P4082584163909234346

`Δ[A309756(n)]/A000079(n)`
-/

namespace A309766.P4082584163909234346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309756 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A309766.P4082584163909234346

/-!
# A309767: Approximation of the 2-adic integer arctanh(4) up to 2^n.

The programs for A309767, there is no canonical definition to state claims against.
-/

/-! ## A309767.P4259474492965275909

`A005914(A239130(n))²%A000079(n)`
-/

namespace A309767.P4259474492965275909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005914 (A239130 n).toNat ^ 2) (A000079 n)

end

end A309767.P4259474492965275909

/-! ## A309767.P1815497420492485328

`A187860(2^n)%(2^n)`
-/

namespace A309767.P1815497420492485328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187860 (2 ^ n)) (2 ^ n : ℤ)

end

end A309767.P1815497420492485328

/-! ## A309767.P5081075741695754150

`and(A000225(n), A187860(A000079(n)))`
-/

namespace A309767.P5081075741695754150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A187860 (A000079 n).toNat)

end

end A309767.P5081075741695754150

/-! ## A309767.P14785163842956706004

`and(A000918(n), A187860(A000079(n)))`
-/

namespace A309767.P14785163842956706004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A187860 (A000079 n).toNat)

end

end A309767.P14785163842956706004

/-! ## A309767.P12884975398980172362

`and(A036563(n), A187860(A000079(n)))`
-/

namespace A309767.P12884975398980172362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036563 n) (A187860 (A000079 n).toNat)

end

end A309767.P12884975398980172362

/-!
# A309768: Digits of the 2-adic integer arctanh(4).

The programs for A309768, there is no canonical definition to state claims against.
-/

/-! ## A309768.P13332433660463326059

`(A309767(n+1)-A309767(n))/2^n`
-/

namespace A309768.P13332433660463326059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309767 (n + 1) - A309767 n : ℚ) / (2 ^ n : ℚ)

end

end A309768.P13332433660463326059

/-! ## A309768.P15201024357605751327

`floor(atan(Δ[A309767(n)]))`
-/

namespace A309768.P15201024357605751327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A309768.P15201024357605751327

/-! ## A309768.P4331017514291191608

`A000007(C(2, Δ[A309767(n)]))`
-/

namespace A309768.P4331017514291191608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose 2 (f1 (n + 1) - f1 n).toNat)

end

end A309768.P4331017514291191608

/-! ## A309768.P15650707254031273363

`Δ[A309767(n)]/A000079(n)`
-/

namespace A309768.P15650707254031273363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A309768.P15650707254031273363

/-! ## A309768.P10302203794528717599

`ceil(Δ[A309767(n)/A000051(n)])`
-/

namespace A309768.P10302203794528717599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309767 n : ℚ) / (A000051 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A309768.P10302203794528717599

/-!
# A309769: Even numbers m having at least one odd prime divisor p for which there exists a positive integer k < p-1 such that p-k|m-k.

The programs for A309769, there is no canonical definition to state claims against.
-/

/-! ## A309769.P12878787991813724555

`∩[2*(n+1), comp[A309239(n+1)]]`
-/

namespace A309769.P12878787991813724555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309239 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A309769.P12878787991813724555

/-! ## A309769.P2792589139711000335

`∩[comp[A309239(n+1)], A004277(n+4)]`
-/

namespace A309769.P2792589139711000335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309239 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A309769.P2792589139711000335

/-! ## A309769.P10276901838140155497

`∩[comp[A309239(n+1)], A176100(n+4)]`
-/

namespace A309769.P10276901838140155497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309239 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A309769.P10276901838140155497

/-! ## A309769.P10626944925532379842

`∩[A046470(n+1), A384011(n+1)]`
-/

namespace A309769.P10626944925532379842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309769.P10626944925532379842

/-! ## A309769.P11405788096082658992

`∩[A075818(n+1), A384011(n+1)]`
-/

namespace A309769.P11405788096082658992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309769.P11405788096082658992

/-!
# A309770: Numbers that are sums of one or more consecutive primes in more than one way.

The programs for A309770, there is no canonical definition to state claims against.
-/

/-! ## A309770.P9415763397602497698

`∪[A054997(n+1), A067372(n+1)]`
-/

namespace A309770.P9415763397602497698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309770.P9415763397602497698

/-! ## A309770.P13073884922153359193

`∪[A067372(n+1), A067377(n+1)]`
-/

namespace A309770.P13073884922153359193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309770.P13073884922153359193

/-! ## A309770.P1523662306327319780

`∪[A067372(n+1), A337095(n+1)]`
-/

namespace A309770.P1523662306327319780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309770.P1523662306327319780

/-! ## A309770.P7411975617134269435

`lt[1, A054845(n)]`
-/

namespace A309770.P7411975617134269435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309770.P7411975617134269435

/-! ## A309770.P6803388955169077855

`eq[1, A051023(a(A054845(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A309770.P6803388955169077855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A051023 (f2 (A054845 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309770.P6803388955169077855

/-! ## A309770.P11262302159672623547

`eq[1, A288942(a(A054845(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A309770.P11262302159672623547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A288942 (f2 (A054845 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309770.P11262302159672623547

/-! ## A309770.P971749626085849376

`eq[1, A000010(a(A054845(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A309770.P971749626085849376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A000010 (f2 (A054845 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309770.P971749626085849376

/-! ## A309770.P16662322220989906137

`eq[1, A103921(a(A054845(n))²)]` with `a(0)=4, a(1)=4`
-/

namespace A309770.P16662322220989906137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A103921 (f2 (A054845 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309770.P16662322220989906137

/-!
# A309772: Least common multiple of prime(n+1)+1 and prime(n)+1.

The programs for A309772, the canonical program `A309772.P15365321864234993061` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309772 has offset 1).

The definition of A309772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309772.P16152135438178078416

`A180617(n+1)/A063086(n+1)`
-/

namespace A309772.P16152135438178078416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180617 (n + 1) : ℚ) / (A063086 (n + 1) : ℚ)

end

end A309772.P16152135438178078416

namespace A309772

/-- `A180617(n+1)/A063086(n+1)` -/
def P16152135438178078416.Spec : Prop :=
  ∀ n, P16152135438178078416.a n = (A309772 (n + 1) : ℚ)

end A309772

/-! ## A309772.P15365321864234993061

`lcm(A135731(n+1), A175216(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309772

/-- `lcm(A135731(n+1), A175216(n+1))` -/
def P15365321864234993061.Spec : Prop :=
  ∀ n, (P15365321864234993061.a n : ℤ) = A309772 (n + 1)

theorem P15365321864234993061.correct : P15365321864234993061.Spec := by
  intro n
  simp only [A309772, Nat.add_sub_cancel]

end A309772

/-! ## A309772.P13187041406211906056

`lcm(A065091(n+1)+1, A028815(n+1))`
-/

namespace A309772.P13187041406211906056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065091 (n + 1) + 1) (A028815 (n + 1))

end

end A309772.P13187041406211906056

namespace A309772

/-- `lcm(A065091(n+1)+1, A028815(n+1))` -/
def P13187041406211906056.Spec : Prop :=
  ∀ n, (P13187041406211906056.a n : ℤ) = A309772 (n + 1)

end A309772

/-! ## A309772.P10955007041416993811

`lcm(A008864(n+1), A008864(n+2))`
-/

namespace A309772.P10955007041416993811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008864 (n + 1)) (A008864 (n + 2))

end

end A309772.P10955007041416993811

namespace A309772

/-- `lcm(A008864(n+1), A008864(n+2))` -/
def P10955007041416993811.Spec : Prop :=
  ∀ n, (P10955007041416993811.a n : ℤ) = A309772 (n + 1)

end A309772

/-! ## A309772.P5511130394896930628

`lcm(A055670(n+2), A299763(n+2))`
-/

namespace A309772.P5511130394896930628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055670 (n + 2)) (A299763 (n + 2))

end

end A309772.P5511130394896930628

namespace A309772

/-- `lcm(A055670(n+2), A299763(n+2))` -/
def P5511130394896930628.Spec : Prop :=
  ∀ n, (P5511130394896930628.a n : ℤ) = A309772 (n + 1)

end A309772

/-! ## A309772.P15362392442436665532

`sqrt(lcm(A110833(n+1), A110833(n+2)))`
-/

namespace A309772.P15362392442436665532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (A110833 (n + 1)) (A110833 (n + 2)) : ℝ)

end

end A309772.P15362392442436665532

namespace A309772

/-- `sqrt(lcm(A110833(n+1), A110833(n+2)))` -/
def P15362392442436665532.Spec : Prop :=
  ∀ n, P15362392442436665532.a n = (A309772 (n + 1) : ℝ)

end A309772

/-! ## A309772.P8614687563136335445

`lcm(A000040(n+1)+1, A000040(n+2)+1)`
-/

namespace A309772.P8614687563136335445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (n + 1) + 1) (A000040 (n + 2) + 1)

end

end A309772.P8614687563136335445

namespace A309772

/-- `lcm(A000040(n+1)+1, A000040(n+2)+1)` -/
def P8614687563136335445.Spec : Prop :=
  ∀ n, (P8614687563136335445.a n : ℤ) = A309772 (n + 1)

end A309772

/-! ## A309772.P8207355739330408308

`lcm(A006093(n+2)+2, A006093(n+1)+2)`
-/

namespace A309772.P8207355739330408308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006093 (n + 2) + 2) (A006093 (n + 1) + 2)

end

end A309772.P8207355739330408308

namespace A309772

/-- `lcm(A006093(n+2)+2, A006093(n+1)+2)` -/
def P8207355739330408308.Spec : Prop :=
  ∀ n, (P8207355739330408308.a n : ℤ) = A309772 (n + 1)

end A309772

/-! ## A309772.P16537096774385522168

`A008864(n+1)/A063086(n+1)*A008864(n+2)`
-/

namespace A309772.P16537096774385522168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) : ℚ) / (A063086 (n + 1) : ℚ) * (A008864 (n + 2) : ℚ)

end

end A309772.P16537096774385522168

namespace A309772

/-- `A008864(n+1)/A063086(n+1)*A008864(n+2)` -/
def P16537096774385522168.Spec : Prop :=
  ∀ n, P16537096774385522168.a n = (A309772 (n + 1) : ℚ)

end A309772

/-!
# A309773: n directly precedes a(n) in Sharkovskii ordering.

The programs for A309773, there is no canonical definition to state claims against.
-/

/-! ## A309773.P13847551328727484013

`A153152(n+1)+A080940(2*(n+2))`
-/

namespace A309773.P13847551328727484013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (n + 1) + A080940 (2 * (n + 2))

end

end A309773.P13847551328727484013

/-! ## A309773.P3874370304225115235

`A062050(n+2)+xor(n+1, A062050(n+1))`
-/

namespace A309773.P3874370304225115235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (n + 2) + Int.xor (n + 1 : ℤ) (A062050 (n + 1))

end

end A309773.P3874370304225115235

/-! ## A309773.P3316157562460181011

`A153152(2*or(n+1, A153152(n+1))-(n+1))`
-/

namespace A309773.P3316157562460181011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (2 * Int.lor (n + 1 : ℤ) (A153152 (n + 1)) - (n + 1 : ℤ)).toNat

end

end A309773.P3316157562460181011

/-! ## A309773.P7956799230414538934

`A153152(A153152(n+1)+xor(n+1, A153152(n+1)))`
-/

namespace A309773.P7956799230414538934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A153152 (n + 1) + Int.xor (n + 1 : ℤ) (A153152 (n + 1))).toNat

end

end A309773.P7956799230414538934

/-!
# A309775: Expansion of e.g.f. exp(2 * (1 - exp(x)) + x).

The programs for A309775, there is no canonical definition to state claims against.
-/

/-! ## A309775.P9016178929642130612

`A335977(∑[n+3])`
-/

namespace A309775.P9016178929642130612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309775.P9016178929642130612

/-! ## A309775.P13019885200241278835

`-A213170(n+1)/2`
-/

namespace A309775.P13019885200241278835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A213170 (n + 1) : ℚ) / 2)

end

end A309775.P13019885200241278835

/-! ## A309775.P9162568162181810794

`a(n-1)*ratio[A213170(n)]` with `a(0)=1`
-/

namespace A309775.P9162568162181810794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213170 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A309775.P9162568162181810794

/-! ## A309775.P11169247043969885656

`A000035(2*n)-A213170(n+1)/2`
-/

namespace A309775.P11169247043969885656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℚ) - (A213170 (n + 1) : ℚ) / 2

end

end A309775.P11169247043969885656

/-! ## A309775.P9081038120690085380

`A213170(n+1)/A213170(A007318(∑[n]))`
-/

namespace A309775.P9081038120690085380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213170 (n + 1) : ℚ) / (A213170 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ)

end

end A309775.P9081038120690085380

/-!
# A309776: Form a triangle: first row is n in base 2, next row is sums of pairs of adjacent digits of previous row, repeat until get a single number which is a(n).

The programs for A309776, there is no canonical definition to state claims against.
-/

/-! ## A309776.P15368530994139756180

`A329697(A049332(n))+and(1, n)`
-/

namespace A309776.P15368530994139756180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A049332 n).toNat + (Nat.land 1 n : ℤ)

end

end A309776.P15368530994139756180

/-! ## A309776.P8448982925191889777

`A329697(A084221(n)+3^(n%2))`
-/

namespace A309776.P8448982925191889777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A084221 n + (3 ^ (n % 2) : ℤ)).toNat

end

end A309776.P8448982925191889777

/-! ## A309776.P5369507031346663276

`A329697(A049332(n))+A000035(n)`
-/

namespace A309776.P5369507031346663276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A049332 n).toNat + A000035 n

end

end A309776.P5369507031346663276

/-! ## A309776.P427230578591837398

`A329697(A049332(n))+Δ[A004526(n)]`
-/

namespace A309776.P427230578591837398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A049332 n).toNat + (f1 (n + 1) - f1 n)

end

end A309776.P427230578591837398

/-! ## A309776.P15999407275966129891

`A329697(A049332(n))+Δ[A008619(n)]`
-/

namespace A309776.P15999407275966129891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A049332 n).toNat + (f1 (n + 1) - f1 n)

end

end A309776.P15999407275966129891

/-!
# A309777: Number of ways of being dealt an n-point Bridge hand.

The programs for A309777, there is no canonical definition to state claims against.
-/

/-! ## A309777.P9011341288421718844

`A371448(A136219(n))`
-/

namespace A309777.P9011341288421718844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371448 (A136219 n).toNat

end

end A309777.P9011341288421718844

/-! ## A309777.P7844873560829369458

`A014160(n)-A143536(A063443(n))`
-/

namespace A309777.P7844873560829369458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014160 n - A143536 (A063443 n).toNat

end

end A309777.P7844873560829369458

/-! ## A309777.P3502143340219077623

`A014160(n)-A295895(A241870(n+3))`
-/

namespace A309777.P3502143340219077623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014160 n - A295895 (A241870 (n + 3 + 10)).toNat

end

end A309777.P3502143340219077623

/-!
# A309778: a(n) is the greatest integer such that, for every positive integer k <= a(n), n^2 can be written as the sum of k positive square integers.

The programs for A309778, there is no canonical definition to state claims against.
-/

/-! ## A309778.P9332205849190745155

`A204929(A121347(n+2)^A122851(n))`
-/

namespace A309778.P9332205849190745155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204929 (SequenceMachineLib.roundAway ((A121347 (n + 2) : ℚ) ^ (A122851 n : ℤ))).toNat

end

end A309778.P9332205849190745155

/-! ## A309778.P15794988436327554602

`A058360(C(A271665(n+1), A039754(n)))`
-/

namespace A309778.P15794988436327554602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058360 (Nat.choose (A271665 (n + 1)).toNat (A039754 n).toNat)

end

end A309778.P15794988436327554602

/-! ## A309778.P16665569883365054879

`A076317(gcd(A006785(n+1), A079565(n+1)))`
-/

namespace A309778.P16665569883365054879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (Int.gcd (A006785 (n + 1)) (A079565 (n + 1)))

end

end A309778.P16665569883365054879

/-! ## A309778.P18431089413646262800

`A208453(gcd(A050045(3*n+1), A208453(n)))`
-/

namespace A309778.P18431089413646262800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208453 (Int.gcd (A050045 (3 * n + 1)) (A208453 n))

end

end A309778.P18431089413646262800

/-!
# A309779: Squares that can be expressed as the sum of two positive squares but not as the sum of three positive squares.

The programs for A309779, the canonical program `A309779.P15708478659679310066` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309779 has offset 1).

The definition of A309779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309779.P15708478659679310066

`25*4^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309779

/-- `25*4^n` -/
def P15708478659679310066.Spec : Prop :=
  ∀ n, (P15708478659679310066.a n : ℤ) = A309779 (n + 1)

theorem P15708478659679310066.correct : P15708478659679310066.Spec := by
  intro n
  simp only [A309779, Nat.add_sub_cancel]

end A309779

/-!
# A309780: Even numbers m having the property that for every odd prime divisor p of m there exists a positive integer k < p-1, such that p-k|m-k.

The programs for A309780, there is no canonical definition to state claims against.
-/

/-! ## A309780.P1733339018244647891

`∩[A162685(n+1), A309769(n+1)]`
-/

namespace A309780.P1733339018244647891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309780.P1733339018244647891

/-! ## A309780.P2179692044978222178

`∩[A084227(n+1), A309769(n+1)]`
-/

namespace A309780.P2179692044978222178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309780.P2179692044978222178

/-! ## A309780.P12789624848927507015

`∩[A279064(n+1), A309769(n+1)]`
-/

namespace A309780.P12789624848927507015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309780.P12789624848927507015

/-! ## A309780.P14052210511790854843

`∩[A309769(n+1), A316793(n+1)]`
-/

namespace A309780.P14052210511790854843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309780.P14052210511790854843

/-! ## A309780.P13133015920693024083

`∩[A309769(n+1), A383515(n+1)]`
-/

namespace A309780.P13133015920693024083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309780.P13133015920693024083

/-!
# A309783: Numbers that are sums of one or more consecutive positive triangular numbers in more than one way.

The programs for A309783, there is no canonical definition to state claims against.
-/

/-! ## A309783.P17445163595817367652

`lt[1, A307666(n+1)]+1`
-/

namespace A309783.P17445163595817367652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309783.P17445163595817367652

/-! ## A309783.P4806068986033979988

`lt[1, A307666(A028310(n))]`
-/

namespace A309783.P4806068986033979988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309783.P4806068986033979988

/-! ## A309783.P17487046863782835929

`lt[1, A307666(A000007(n)+n)]`
-/

namespace A309783.P17487046863782835929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309783.P17487046863782835929

/-! ## A309783.P5753608783676559240

`A113484(lt[1, A307666(n+1)])`
-/

namespace A309783.P5753608783676559240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A309783.P5753608783676559240

/-! ## A309783.P11320136069385603755

`A113484(eq[2, A307666(n+1)])`
-/

namespace A309783.P11320136069385603755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309783.P11320136069385603755

/-!
# A309784: T(n,k) is the number of non-equivalent distinguishing coloring partitions of the cycle on n vertices with exactly k parts. Regular triangle read by rows, n >= 1, 1 <= k <= n.

The programs for A309784, there is no canonical definition to state claims against.
-/

/-! ## A309784.P14214459185813905888

`A001082(A050566(n+1))%A329744(n+1)`
-/

namespace A309784.P14214459185813905888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001082 (A050566 (n + 1)).toNat) (A329744 (n + 1))

end

end A309784.P14214459185813905888

/-! ## A309784.P2647071607535938468

`A216188(A281890(n+1))`
-/

namespace A309784.P2647071607535938468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216188 (A281890 (n + 1)).toNat

end

end A309784.P2647071607535938468

/-! ## A309784.P2644888961395206875

`A331160(n)%A239660(A007477(n))`
-/

namespace A309784.P2644888961395206875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331160 n) (A239660 (A007477 n).toNat)

end

end A309784.P2644888961395206875

/-! ## A309784.P6331395057623079522

`A358477(A295027(n+1)+A000030(n))`
-/

namespace A309784.P6331395057623079522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358477 (A295027 (n + 1) + A000030 n).toNat

end

end A309784.P6331395057623079522

/-! ## A309784.P15104899805918064527

`A251723(A118190(n))%A329744(n+1)`
-/

namespace A309784.P15104899805918064527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251723 (A118190 n).toNat) (A329744 (n + 1))

end

end A309784.P15104899805918064527

/-!
# A309785: The number of non-equivalent distinguishing coloring partitions of the cycle on n vertices with at most k parts (k>=1). The cycle graph is defined for n>=3; extended to n=1,2 using the closed form. Square array read by descending antidiagonals: the rows are indexed by n, the number of vertices of the cycle, and the columns are indexed by k, the number of parts.

The programs for A309785, there is no canonical definition to state claims against.
-/

/-! ## A309785.P4805434173664977474

`A325678(A295028(n+1))-A102382(A295028(n+1))`
-/

namespace A309785.P4805434173664977474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A295028 (n + 1)).toNat - A102382 (A295028 (n + 1)).toNat

end

end A309785.P4805434173664977474

/-! ## A309785.P7668462750400371530

`∑{e}[A210520(A292795(n)), #]`
-/

namespace A309785.P7668462750400371530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210520 (A292795 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A309785.P7668462750400371530

/-! ## A309785.P15270445123814571444

`A049615(A292795(n))%A054501(n+1)`
-/

namespace A309785.P15270445123814571444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049615 (A292795 n).toNat) (A054501 (n + 1))

end

end A309785.P15270445123814571444

/-! ## A309785.P1933001138981606234

`A049615(A292795(n))^A014963(A017017(n))`
-/

namespace A309785.P1933001138981606234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049615 (A292795 n).toNat : ℚ) ^ (A014963 (A017017 n).toNat : ℤ)

end

end A309785.P1933001138981606234

/-!
# A309786: a(n) is the length of the cycle of the trajectory of 1/n under the map f(x) = min(2*x, 2-2*x).

The programs for A309786, there is no canonical definition to state claims against.
-/

/-! ## A309786.P17463482891702755097

`A003558(floor(n/(xor(n, n+1)+1)))`
-/

namespace A309786.P17463482891702755097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A309786.P17463482891702755097

/-! ## A309786.P628472703983520990

`A003558(floor(n/2^val(n+1, 2))/2)`
-/

namespace A309786.P628472703983520990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat

end

end A309786.P628472703983520990

/-! ## A309786.P15333260957453541796

`A003558(ceil((n+1)/(xor(n, n+1)+1))-1)`
-/

namespace A309786.P15333260957453541796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ - 1).toNat

end

end A309786.P15333260957453541796

/-! ## A309786.P14159791283938726547

`A003558(A025480(n))`
-/

namespace A309786.P14159791283938726547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A025480 n).toNat

end

end A309786.P14159791283938726547

/-! ## A309786.P9510771038766779981

`A003558(A101279(n+1))`
-/

namespace A309786.P9510771038766779981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A101279 (n + 1)).toNat

end

end A309786.P9510771038766779981

/-! ## A309786.P5862192056785638795

`A003558(A153733(n)/2)`
-/

namespace A309786.P5862192056785638795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A309786.P5862192056785638795

/-! ## A309786.P5285935181923866290

`A003558(A003602(n+1)-1)`
-/

namespace A309786.P5285935181923866290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A003602 (n + 1) - 1).toNat

end

end A309786.P5285935181923866290

/-! ## A309786.P6093956105249228496

`A003558(floor(A000265(n+1)/2))`
-/

namespace A309786.P6093956105249228496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ⌊(A000265 (n + 1) : ℚ) / 2⌋.toNat

end

end A309786.P6093956105249228496

/-! ## A309786.P8372634172336976481

`A216647(n+1)-A001511(n+1)`
-/

namespace A309786.P8372634172336976481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216647 (n + 1) - A001511 (n + 1)

end

end A309786.P8372634172336976481

/-!
# A309788: Product of digits of (n written in base 9).

The programs for A309788, the canonical program `A309788.P3499531923763128304` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309788 has offset 0).

The definition of A309788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309788.P3499531923763128304

`∏{digits}[A007095(n), #]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309788

/-- `∏{digits}[A007095(n), #]` -/
def P3499531923763128304.Spec : Prop :=
  ∀ n, (P3499531923763128304.a n : ℤ) = A309788 n

theorem P3499531923763128304.correct : P3499531923763128304.Spec := by
  intro n
  simp only [A309788]

end A309788

/-! ## A309788.P6771736363187489922

`A007954(A007095(n))`
-/

namespace A309788.P6771736363187489922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A007095 n).toNat

end

end A309788.P6771736363187489922

namespace A309788

/-- `A007954(A007095(n))` -/
def P6771736363187489922.Spec : Prop :=
  ∀ n, P6771736363187489922.a n = A309788 n

end A309788

/-! ## A309788.P15819592516022158280

`A007954(record[A004728(n)])`
-/

namespace A309788.P15819592516022158280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309788.P15819592516022158280

namespace A309788

/-- `A007954(record[A004728(n)])` -/
def P15819592516022158280.Spec : Prop :=
  ∀ n, P15819592516022158280.a n = A309788 n

end A309788

/-! ## A309788.P8207319699952149333

`A007954(eq[A006942(n), A277116(n)])`
-/

namespace A309788.P8207319699952149333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309788.P8207319699952149333

namespace A309788

/-- `A007954(eq[A006942(n), A277116(n)])` -/
def P8207319699952149333.Spec : Prop :=
  ∀ n, P8207319699952149333.a n = A309788 n

end A309788

/-! ## A309788.P16178635323604305081

`∏{digits}[record[A004184(n)], #]`
-/

namespace A309788.P16178635323604305081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A309788.P16178635323604305081

namespace A309788

/-- `∏{digits}[record[A004184(n)], #]` -/
def P16178635323604305081.Spec : Prop :=
  ∀ n, (P16178635323604305081.a n : ℤ) = A309788 n

end A309788

/-! ## A309788.P16045494770246522695

`A007954(record[A235049(n)])`
-/

namespace A309788.P16045494770246522695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309788.P16045494770246522695

namespace A309788

/-- `A007954(record[A235049(n)])` -/
def P16045494770246522695.Spec : Prop :=
  ∀ n, P16045494770246522695.a n = A309788 n

end A309788

/-! ## A309788.P150242230527723209

`abs(A187844(record[A235049(n)]))`
-/

namespace A309788.P150242230527723209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A309788.P150242230527723209

namespace A309788

/-- `abs(A187844(record[A235049(n)]))` -/
def P150242230527723209.Spec : Prop :=
  ∀ n, P150242230527723209.a n = A309788 n

end A309788

/-! ## A309788.P12580735764958417861

`A007954(record[n-A136400(n)])`
-/

namespace A309788.P12580735764958417861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309788.P12580735764958417861

namespace A309788

/-- `A007954(record[n-A136400(n)])` -/
def P12580735764958417861.Spec : Prop :=
  ∀ n, P12580735764958417861.a n = A309788 n

end A309788

/-!
# A309790: G.f. A(x) satisfies: A(x) = 2*x*(1 - x)*A(x^2) + x/(1 - x).

The programs for A309790, the canonical program `A309790.P12506806462962635043` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309790 has offset 0).

The definition of A309790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309790.P12506806462962635043

`A104895(2*n+3)+A065620(A063946(2*(n+1)))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A309790

/-- `A104895(2*n+3)+A065620(A063946(2*(n+1)))` -/
def P12506806462962635043.Spec : Prop :=
  ∀ n, P12506806462962635043.a n = A309790 n

theorem P12506806462962635043.correct : P12506806462962635043.Spec := by
  intro n
  simp only [A309790]

end A309790

/-! ## A309790.P3243669426639259935

`A104895(2*n+3)-A104895(A063946(2*n+2))`
-/

namespace A309790.P3243669426639259935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (2 * n + 3) - A104895 (A063946 (2 * n + 2)).toNat

end

end A309790.P3243669426639259935

namespace A309790

/-- `A104895(2*n+3)-A104895(A063946(2*n+2))` -/
def P3243669426639259935.Spec : Prop :=
  ∀ n, P3243669426639259935.a n = A309790 n

end A309790

/-! ## A309790.P18259296796932999397

`A117120(A231551(2*(n+1)))-A231551(2*(n+1))`
-/

namespace A309790.P18259296796932999397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A231551 (2 * (n + 1))).toNat - A231551 (2 * (n + 1))

end

end A309790.P18259296796932999397

namespace A309790

/-- `A117120(A231551(2*(n+1)))-A231551(2*(n+1))` -/
def P18259296796932999397.Spec : Prop :=
  ∀ n, P18259296796932999397.a n = A309790 n

end A309790

/-! ## A309790.P11348667621250654646

`A117120(A153154(2*n+3))-A153154(2*n+3)`
-/

namespace A309790.P11348667621250654646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A153154 (2 * n + 3)).toNat - A153154 (2 * n + 3)

end

end A309790.P11348667621250654646

namespace A309790

/-- `A117120(A153154(2*n+3))-A153154(2*n+3)` -/
def P11348667621250654646.Spec : Prop :=
  ∀ n, P11348667621250654646.a n = A309790 n

end A309790

/-!
# A309791: Expansion of (1 + 8*x - 6*x^2 + 12*x^3 - 18*x^4)/(1 - x - 9*x^4 + 9*x^5).

The programs for A309791, there is no canonical definition to state claims against.
-/

/-! ## A309791.P7163790527791421245

`A160079(A338207(A309792(n)))`
-/

namespace A309791.P7163790527791421245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160079 (A338207 (A309792 n).toNat).toNat

end

end A309791.P7163790527791421245

/-!
# A309792: Expansion of (2 + 6*x + 3*x^2 +4*x^3 - 10*x^4)/(1 - x - 4*x^4 + 4*x^5).

The programs for A309792, the canonical program `A309792.P11439331734889417556` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309792 has offset 0).

The definition of A309792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309792.P11439331734889417556

`4*a(n-4)-1` with `a(0)=2, a(1)=8, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A309792

/-- `4*a(n-4)-1` -/
def P11439331734889417556.Spec : Prop :=
  ∀ n, P11439331734889417556.a n = A309792 n

theorem P11439331734889417556.correct : P11439331734889417556.Spec := by
  intro n
  simp only [A309792]

end A309792

/-!
# A309793: Number of odd parts appearing among the second largest parts of the partitions of n into 4 parts.

The programs for A309793, there is no canonical definition to state claims against.
-/

/-! ## A309793.P1128116387818674833

`A026810(n)-A309795(n)`
-/

namespace A309793.P1128116387818674833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A309795 n

end

end A309793.P1128116387818674833

/-! ## A309793.P5944375889203513553

`A005232(n)-(A309795(n)+A266769(n))`
-/

namespace A309793.P5944375889203513553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n - (A309795 n + A266769 n)

end

end A309793.P5944375889203513553

/-! ## A309793.P14323379947767487618

`A266755(n)-(A309795(n)+A060023(n))`
-/

namespace A309793.P14323379947767487618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - (A309795 n + A060023 n)

end

end A309793.P14323379947767487618

/-! ## A309793.P8868160710755974925

`A288165(A008486(n))-A309795(n)`
-/

namespace A309793.P8868160710755974925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008486 n).toNat - A309795 n

end

end A309793.P8868160710755974925

/-! ## A309793.P11532830333014594714

`A288165(A008585(n))-A309795(n)`
-/

namespace A309793.P11532830333014594714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008585 n).toNat - A309795 n

end

end A309793.P11532830333014594714

/-!
# A309794: Sum of the odd parts appearing among the second largest parts of the partitions of n into 4 parts.

The programs for A309794, there is no canonical definition to state claims against.
-/

/-! ## A309794.P17619271953635035618

`∑[A308096(A004274(n+1)-n)]-A309796(n)`
-/

namespace A309794.P17619271953635035618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A004274 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309796 n

end

end A309794.P17619271953635035618

/-! ## A309794.P3516078557827120348

`A308759(n)-A309796(n)`
-/

namespace A309794.P3516078557827120348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308759 n - A309796 n

end

end A309794.P3516078557827120348

/-! ## A309794.P12402945565656289039

`∑[A308096(A233583(n+1)-1)]-A309796(n)`
-/

namespace A309794.P12402945565656289039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309796 n

end

end A309794.P12402945565656289039

/-! ## A309794.P14622462112219970115

`A308759(n)-A156726(A277253(n)+A000001(n))`
-/

namespace A309794.P14622462112219970115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308759 n - A156726 (A277253 n + A000001 n).toNat

end

end A309794.P14622462112219970115

/-!
# A309795: Number of even parts appearing among the second largest parts of the partitions of n into 4 parts.

The programs for A309795, there is no canonical definition to state claims against.
-/

/-! ## A309795.P10318151231096681935

`A026810(n)-A309793(n)`
-/

namespace A309795.P10318151231096681935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A309793 n

end

end A309795.P10318151231096681935

/-! ## A309795.P2100335355258047180

`∑[A005044(abs(1-n))]-A309793(n)`
-/

namespace A309795.P2100335355258047180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309793 n

end

end A309795.P2100335355258047180

/-! ## A309795.P1916194326328830006

`∑[A325691(n)]-round(n²/12)-A309793(n)`
-/

namespace A309795.P1916194326328830006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) - A309793 n

end

end A309795.P1916194326328830006

/-! ## A309795.P5111421818809035275

`A308775(n)/A028310(n)-A309793(n)`
-/

namespace A309795.P5111421818809035275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308775 n : ℚ) / (A028310 n : ℚ) - (A309793 n : ℚ)

end

end A309795.P5111421818809035275

/-! ## A309795.P3852048320666697412

`∑[A266755(n)]-A001399(n)-A309793(n)`
-/

namespace A309795.P3852048320666697412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 n - A309793 n

end

end A309795.P3852048320666697412

/-! ## A309795.P9705121127369350645

`A266769(n)-(A320592(n+6)+A309793(n))`
-/

namespace A309795.P9705121127369350645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - (A320592 (n + 6) + A309793 n)

end

end A309795.P9705121127369350645

/-! ## A309795.P8438042294797655108

`A288165(A008486(n))-A309793(n)`
-/

namespace A309795.P8438042294797655108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008486 n).toNat - A309793 n

end

end A309795.P8438042294797655108

/-! ## A309795.P15035156138887987525

`A288165(A008585(n))-A309793(n)`
-/

namespace A309795.P15035156138887987525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (A008585 n).toNat - A309793 n

end

end A309795.P15035156138887987525

/-!
# A309796: Sum of the even parts appearing among the second largest parts of the partitions of n into 4 parts.

The programs for A309796, there is no canonical definition to state claims against.
-/

/-! ## A309796.P14326942527823396118

`A308759(n)-A309794(n)`
-/

namespace A309796.P14326942527823396118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308759 n - A309794 n

end

end A309796.P14326942527823396118

/-! ## A309796.P11695682042118286203

`∑[A308096(A233583(n+1)-1)]-A309794(n)`
-/

namespace A309796.P11695682042118286203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A309794 n

end

end A309796.P11695682042118286203

/-! ## A309796.P3875704020307310074

`A156726(A277253(n)+A000001(n))`
-/

namespace A309796.P3875704020307310074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A277253 n + A000001 n).toNat

end

end A309796.P3875704020307310074

/-!
# A309798: Sum of the odd parts appearing among the largest parts of the partitions of n into 4 parts.

The programs for A309798, there is no canonical definition to state claims against.
-/

/-! ## A309798.P13480094134301840335

`A308760(n)-A309800(n)`
-/

namespace A309798.P13480094134301840335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308760 n - A309800 n

end

end A309798.P13480094134301840335

/-!
# A309799: Number of distinct nonnegative values that can be assumed by the determinant of an n X n matrix whose entries are a permutation of the multiset {1^n,..,n^n}.

The programs for A309799, there is no canonical definition to state claims against.
-/

/-! ## A309799.P11551514565188627238

`A026422((n+1)*A001035(n))`
-/

namespace A309799.P11551514565188627238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 ((n + 1 : ℤ) * A001035 n).toNat

end

end A309799.P11551514565188627238

