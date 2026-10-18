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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A316700: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n/n! * Product_{k=1..n} (n+1-k) + k/A(x).

The programs for A316700, there is no canonical definition to state claims against.
-/

/-! ## A316700.P5732339618070844103

`Δ[A007412(A000772(n))]+1`
-/

namespace A316700.P5732339618070844103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (A000772 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A316700.P5732339618070844103

/-! ## A316700.P10442705250630806471

`A255072(A159925(n+1))`
-/

namespace A316700.P10442705250630806471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A159925 (n + 1)).toNat

end

end A316700.P10442705250630806471

/-!
# A316701: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n/n! * Product_{k=1..n} (n+1-k) + k*A(x).

The programs for A316701, there is no canonical definition to state claims against.
-/

/-! ## A316701.P6150742363619407142

`∑[A007093(n^(n+1))]+1`
-/

namespace A316701.P6150742363619407142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (n ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316701.P6150742363619407142

/-!
# A316702: E.g.f.: Sum_{n>=0} x^n/n! * Product_{k=1..n} (n+1-k) + k*x^2.

The programs for A316702, there is no canonical definition to state claims against.
-/

/-! ## A316702.P12358005725998069138

`∏{p}[floor((n^n+1)^(n/4))+1, #-1]`
-/

namespace A316702.P12358005725998069138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ n + 1 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A316702.P12358005725998069138

/-! ## A316702.P14953144493391546432

`A128556(A222013(n))`
-/

namespace A316702.P14953144493391546432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128556 (A222013 n).toNat

end

end A316702.P14953144493391546432

/-!
# A316703: O.g.f. A(x) satisfies: [x^n] exp(-n*x*A(x)) * (n+1 - n/A(x)) = 0 for n>=1.

The programs for A316703, there is no canonical definition to state claims against.
-/

/-! ## A316703.P6264797781010096149

`A362741(n)-A048760(A184993(n))`
-/

namespace A316703.P6264797781010096149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362741 n - A048760 (A184993 n).toNat

end

end A316703.P6264797781010096149

/-! ## A316703.P8655970994294682075

`ceil(sqrt(A056956(n^n)))`
-/

namespace A316703.P8655970994294682075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A056956 (n ^ n) : ℝ)⌉

end

end A316703.P8655970994294682075

/-!
# A316704: E.g.f.: Sum_{n>=0} (2*x)^n/n! * Product_{k=1..n} (n+1-k) + k*x.

The programs for A316704, there is no canonical definition to state claims against.
-/

/-! ## A316704.P13943570055353692463

`A119559(3*n+1)+char[4]`
-/

namespace A316704.P13943570055353692463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119559 (3 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316704.P13943570055353692463

/-!
# A316705: E.g.f.: Sum_{n>=0} x^n/n! * Product_{k=1..n} (2*n+1-2*k) + (2*k-1)*x.

The programs for A316705, there is no canonical definition to state claims against.
-/

/-! ## A316705.P7017159890292039548

`A188112(n^n)+1`
-/

namespace A316705.P7017159890292039548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188112 (n ^ n) + 1

end

end A316705.P7017159890292039548

/-!
# A316706: Number of solutions to k_1 + 2*k_2 + ... + n*k_n = n, where k_i are from {-1,0,1}, i=1..n.

The programs for A316706, there is no canonical definition to state claims against.
-/

/-! ## A316706.P859589336495145132

`A023193(or(A124302(n), A321331(n)))`
-/

namespace A316706.P859589336495145132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (A124302 n) (A321331 n)).toNat

end

end A316706.P859589336495145132

/-! ## A316706.P13304932417546909488

`A023193(∑[A195982(n)+A148161(n)])`
-/

namespace A316706.P13304932417546909488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195982 n + A148161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316706.P13304932417546909488

/-! ## A316706.P726438357774071366

`A005041(A289990(n+1))-A332641(n)`
-/

namespace A316706.P726438357774071366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A289990 (n + 1)).toNat - A332641 n

end

end A316706.P726438357774071366

/-! ## A316706.P17495486921329654956

`A332641(A239218(n+3))+A095892(n)`
-/

namespace A316706.P17495486921329654956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332641 (A239218 (n + 3)).toNat + A095892 n

end

end A316706.P17495486921329654956

/-! ## A316706.P17288339715841742772

`A005041(A289990(n+1))-A033111(n+1)`
-/

namespace A316706.P17288339715841742772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A289990 (n + 1)).toNat - A033111 (n + 1)

end

end A316706.P17288339715841742772

/-!
# A316707: For any n >= 0 with base-5 expansion Sum_{k=0..w} d_k * 5^k, let f(n) = Sum_{k=0..w} [d_k > 0] * (2 + i)^k * i^(d_k - 1) (where [] is an Iverson bracket and i denotes the imaginary unit); a(n) equals the square of the modulus of f(n).

The programs for A316707, there is no canonical definition to state claims against.
-/

/-! ## A316707.P13936961967806453531

`A316657(n)²+A316658(n)²`
-/

namespace A316707.P13936961967806453531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316657 n ^ 2 + A316658 n ^ 2

end

end A316707.P13936961967806453531

/-!
# A316708: Bisection of the odd-indexed Pell numbers A001653: part 1.

The programs for A316708, the canonical program `A316708.P15803374327236737161` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316708 has offset 0).

The definition of A316708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316708.P15803374327236737161

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316708

/-- `34*a(n-1)-a(n-2)` -/
def P15803374327236737161.Spec : Prop :=
  ∀ n, P15803374327236737161.a n = A316708 n

theorem P15803374327236737161.correct : P15803374327236737161.Spec := by
  intro n
  simp only [A316708]

end A316708

/-! ## A316708.P14448577952438952771

`A001653(2*n+1)`
-/

namespace A316708.P14448577952438952771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (2 * n + 1)

end

end A316708.P14448577952438952771

namespace A316708

/-- `A001653(2*n+1)` -/
def P14448577952438952771.Spec : Prop :=
  ∀ n, P14448577952438952771.a n = A316708 n

end A316708

/-! ## A316708.P5724195781432193323

`A000129(4*n+1)`
-/

namespace A316708.P5724195781432193323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (4 * n + 1)

end

end A316708.P5724195781432193323

namespace A316708

/-- `A000129(4*n+1)` -/
def P5724195781432193323.Spec : Prop :=
  ∀ n, P5724195781432193323.a n = A316708 n

end A316708

/-! ## A316708.P17140062003534862854

`A041011(4*n)`
-/

namespace A316708.P17140062003534862854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 (4 * n)

end

end A316708.P17140062003534862854

namespace A316708

/-- `A041011(4*n)` -/
def P17140062003534862854.Spec : Prop :=
  ∀ n, P17140062003534862854.a n = A316708 n

end A316708

/-! ## A316708.P291555195180643979

`A077985(4*n)`
-/

namespace A316708.P291555195180643979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 (4 * n)

end

end A316708.P291555195180643979

namespace A316708

/-- `A077985(4*n)` -/
def P291555195180643979.Spec : Prop :=
  ∀ n, P291555195180643979.a n = A316708 n

end A316708

/-! ## A316708.P6837968804097931971

`A104683(4*n)`
-/

namespace A316708.P6837968804097931971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104683 (4 * n)

end

end A316708.P6837968804097931971

namespace A316708

/-- `A104683(4*n)` -/
def P6837968804097931971.Spec : Prop :=
  ∀ n, P6837968804097931971.a n = A316708 n

end A316708

/-! ## A316708.P2177031104878528729

`A117719(4*n)`
-/

namespace A316708.P2177031104878528729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117719 (4 * n)

end

end A316708.P2177031104878528729

namespace A316708

/-- `A117719(4*n)` -/
def P2177031104878528729.Spec : Prop :=
  ∀ n, P2177031104878528729.a n = A316708 n

end A316708

/-! ## A316708.P13625089369818588531

`∑[A110225(4*n)]`
-/

namespace A316708.P13625089369818588531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110225 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316708.P13625089369818588531

namespace A316708

/-- `∑[A110225(4*n)]` -/
def P13625089369818588531.Spec : Prop :=
  ∀ n, P13625089369818588531.a n = A316708 n

end A316708

/-! ## A316708.P11555296116767405702

`A182190(2*n)+1`
-/

namespace A316708.P11555296116767405702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 (2 * n) + 1

end

end A316708.P11555296116767405702

namespace A316708

/-- `A182190(2*n)+1` -/
def P11555296116767405702.Spec : Prop :=
  ∀ n, P11555296116767405702.a n = A316708 n

end A316708

/-! ## A316708.P13514178385657675765

`A089499(4*n+1)`
-/

namespace A316708.P13514178385657675765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 (4 * n + 1)

end

end A316708.P13514178385657675765

namespace A316708

/-- `A089499(4*n+1)` -/
def P13514178385657675765.Spec : Prop :=
  ∀ n, P13514178385657675765.a n = A316708 n

end A316708

/-!
# A316709: Bisection of the odd-indexed Pell numbers A001653: part 2.

The programs for A316709, the canonical program `A316709.P8472276891010981246` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316709 has offset 0).

The definition of A316709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316709.P8472276891010981246

`34*a(n-1)-a(n-2)` with `a(0)=5, a(1)=169`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316709

/-- `34*a(n-1)-a(n-2)` -/
def P8472276891010981246.Spec : Prop :=
  ∀ n, P8472276891010981246.a n = A316709 n

theorem P8472276891010981246.correct : P8472276891010981246.Spec := by
  intro n
  simp only [A316709]

end A316709

/-! ## A316709.P18087189635834277193

`A001653(2*(n+1))`
-/

namespace A316709.P18087189635834277193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (2 * (n + 1))

end

end A316709.P18087189635834277193

namespace A316709

/-- `A001653(2*(n+1))` -/
def P18087189635834277193.Spec : Prop :=
  ∀ n, P18087189635834277193.a n = A316709 n

end A316709

/-! ## A316709.P14785544375347225307

`A000129(4*n+3)`
-/

namespace A316709.P14785544375347225307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (4 * n + 3)

end

end A316709.P14785544375347225307

namespace A316709

/-- `A000129(4*n+3)` -/
def P14785544375347225307.Spec : Prop :=
  ∀ n, P14785544375347225307.a n = A316709 n

end A316709

/-! ## A316709.P709482976485323759

`record[-round(a(n-1)/(3-sqrt(8)))]` with `a(0)=5`
-/

namespace A316709.P709482976485323759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316709.P709482976485323759

namespace A316709

/-- `record[-round(a(n-1)/(3-sqrt(8)))]` -/
def P709482976485323759.Spec : Prop :=
  ∀ n, P709482976485323759.a n = A316709 n

end A316709

/-! ## A316709.P13695760205151258857

`Δ[A084158(2*n)]`
-/

namespace A316709.P13695760205151258857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084158 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A316709.P13695760205151258857

namespace A316709

/-- `Δ[A084158(2*n)]` -/
def P13695760205151258857.Spec : Prop :=
  ∀ n, P13695760205151258857.a n = A316709 n

end A316709

/-! ## A316709.P13415289830157449790

`A261116(4*(n+1))`
-/

namespace A316709.P13415289830157449790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261116 (4 * (n + 1))

end

end A316709.P13415289830157449790

namespace A316709

/-- `A261116(4*(n+1))` -/
def P13415289830157449790.Spec : Prop :=
  ∀ n, P13415289830157449790.a n = A316709 n

end A316709

/-! ## A316709.P2893405770320861069

`A041011(4*n+2)`
-/

namespace A316709.P2893405770320861069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 (4 * n + 2)

end

end A316709.P2893405770320861069

namespace A316709

/-- `A041011(4*n+2)` -/
def P2893405770320861069.Spec : Prop :=
  ∀ n, P2893405770320861069.a n = A316709 n

end A316709

/-! ## A316709.P18074491135376298518

`A069306(4*n+2)`
-/

namespace A316709.P18074491135376298518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069306 (4 * n + 2)

end

end A316709.P18074491135376298518

namespace A316709

/-- `A069306(4*n+2)` -/
def P18074491135376298518.Spec : Prop :=
  ∀ n, P18074491135376298518.a n = A316709 n

end A316709

/-! ## A316709.P6621140183792068081

`A077985(4*n+2)`
-/

namespace A316709.P6621140183792068081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 (4 * n + 2)

end

end A316709.P6621140183792068081

namespace A316709

/-- `A077985(4*n+2)` -/
def P6621140183792068081.Spec : Prop :=
  ∀ n, P6621140183792068081.a n = A316709 n

end A316709

/-! ## A316709.P15829312163307066570

`A104683(4*n+2)`
-/

namespace A316709.P15829312163307066570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104683 (4 * n + 2)

end

end A316709.P15829312163307066570

namespace A316709

/-- `A104683(4*n+2)` -/
def P15829312163307066570.Spec : Prop :=
  ∀ n, P15829312163307066570.a n = A316709 n

end A316709

/-!
# A316711: Decimal expansion of s:= t/(t - 1), with the tribonacci constant t = A058265.

The programs for A316711, there is no canonical definition to state claims against.
-/

/-! ## A316711.P14961931725732741028

`A317202(n)-floor(acot(n))`
-/

namespace A316711.P14961931725732741028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317202 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A316711.P14961931725732741028

/-! ## A316711.P6396428998980015750

`A317202(n)-A000007(n)`
-/

namespace A316711.P6396428998980015750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317202 (n + 1) - A000007 n

end

end A316711.P6396428998980015750

/-!
# A316712: Numbers k such that 421*2^k+1 is prime.

The programs for A316712, there is no canonical definition to state claims against.
-/

/-! ## A316712.P13984710908920122504

`∑[4*A328867(A007999(n))]`
-/

namespace A316712.P13984710908920122504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A328867 (A007999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316712.P13984710908920122504

/-!
# A316713: Unique representation of nonnegative numbers by iterated tribonacci A, B and C sequences.

The programs for A316713, there is no canonical definition to state claims against.
-/

/-! ## A316713.P3984289780983162596

`A255765(2*n+1)%A255744(A000248(n+3))`
-/

namespace A316713.P3984289780983162596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255765 (2 * n + 1)) (A255744 (A000248 (n + 3)).toNat)

end

end A316713.P3984289780983162596

/-!
# A316714: a(n) is the number of digits of A316713(n). This is the number of A, B and C sequences used in the tribonacci ABC-representation of n >= 0.

The programs for A316714, the canonical program `A316714.P1143918142362973525` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316714 has offset 0).

The definition of A316714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316715, A316716, A316717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A316714.P1143918142362973525

`A316715(n)+A316716(n)+A316717(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A316714

/-- `A316715(n)+A316716(n)+A316717(n)` -/
def P1143918142362973525.Spec : Prop :=
  ∀ n, P1143918142362973525.a n = A316714 n

theorem P1143918142362973525.correct : P1143918142362973525.Spec := by
  intro n
  simp only [A316714]

end A316714

/-! ## A316714.P6311048955695713958

`A278042(n)+2%(n+2)`
-/

namespace A316714.P6311048955695713958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 n + ((2 % (n + 2) : ℕ) : ℤ)

end

end A316714.P6311048955695713958

namespace A316714

/-- `A278042(n)+2%(n+2)` -/
def P6311048955695713958.Spec : Prop :=
  ∀ n, P6311048955695713958.a n = A316714 n

end A316714

/-! ## A316714.P9482982426092143944

`A317207(n+1)+ceil(abs(sin(n)))`
-/

namespace A316714.P9482982426092143944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉

end

end A316714.P9482982426092143944

namespace A316714

/-- `A317207(n+1)+ceil(abs(sin(n)))` -/
def P9482982426092143944.Spec : Prop :=
  ∀ n, P9482982426092143944.a n = A316714 n

end A316714

/-! ## A316714.P15337887190984370384

`A317207(-xor(n, -1))+C(n, C(n, n²))`
-/

namespace A316714.P15337887190984370384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (-Int.xor (n : ℤ) (-1)).toNat + (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A316714.P15337887190984370384

namespace A316714

/-- `A317207(-xor(n, -1))+C(n, C(n, n²))` -/
def P15337887190984370384.Spec : Prop :=
  ∀ n, P15337887190984370384.a n = A316714 n

end A316714

/-! ## A316714.P5857464936863031449

`A278042(A308199(n))`
-/

namespace A316714.P5857464936863031449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (A308199 n).toNat

end

end A316714.P5857464936863031449

namespace A316714

/-- `A278042(A308199(n))` -/
def P5857464936863031449.Spec : Prop :=
  ∀ n, P5857464936863031449.a n = A316714 n

end A316714

/-! ## A316714.P16827767049961606107

`A317207(A003144(n+1))`
-/

namespace A316714.P16827767049961606107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (A003144 (n + 1)).toNat

end

end A316714.P16827767049961606107

namespace A316714

/-- `A317207(A003144(n+1))` -/
def P16827767049961606107.Spec : Prop :=
  ∀ n, P16827767049961606107.a n = A316714 n

end A316714

/-! ## A316714.P5081281418893612866

`A317207(A003145(n+1))`
-/

namespace A316714.P5081281418893612866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (A003145 (n + 1)).toNat

end

end A316714.P5081281418893612866

namespace A316714

/-- `A317207(A003145(n+1))` -/
def P5081281418893612866.Spec : Prop :=
  ∀ n, P5081281418893612866.a n = A316714 n

end A316714

/-! ## A316714.P14841736185569633455

`A317207(A003146(n+1))`
-/

namespace A316714.P14841736185569633455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (A003146 (n + 1)).toNat

end

end A316714.P14841736185569633455

namespace A316714

/-- `A317207(A003146(n+1))` -/
def P14841736185569633455.Spec : Prop :=
  ∀ n, P14841736185569633455.a n = A316714 n

end A316714

/-! ## A316714.P7660473984546001269

`A278042(A278040(n))+1`
-/

namespace A316714.P7660473984546001269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (A278040 n).toNat + 1

end

end A316714.P7660473984546001269

namespace A316714

/-- `A278042(A278040(n))+1` -/
def P7660473984546001269.Spec : Prop :=
  ∀ n, P7660473984546001269.a n = A316714 n

end A316714

/-! ## A316714.P10308563206307534583

`A278042(A278041(n))+1`
-/

namespace A316714.P10308563206307534583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (A278041 n).toNat + 1

end

end A316714.P10308563206307534583

namespace A316714

/-- `A278042(A278041(n))+1` -/
def P10308563206307534583.Spec : Prop :=
  ∀ n, P10308563206307534583.a n = A316714 n

end A316714

/-! ## A316714.P14997007225331092537

`A317207(A278039(n)+1)`
-/

namespace A316714.P14997007225331092537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (A278039 n + 1).toNat

end

end A316714.P14997007225331092537

namespace A316714

/-- `A317207(A278039(n)+1)` -/
def P14997007225331092537.Spec : Prop :=
  ∀ n, P14997007225331092537.a n = A316714 n

end A316714

/-! ## A316714.P13096491583969344511

`A317207(A278041(n)+1)`
-/

namespace A316714.P13096491583969344511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (A278041 n + 1).toNat

end

end A316714.P13096491583969344511

namespace A316714

/-- `A317207(A278041(n)+1)` -/
def P13096491583969344511.Spec : Prop :=
  ∀ n, P13096491583969344511.a n = A316714 n

end A316714

/-! ## A316714.P10205843140579872038

`A278042(A319967(n+1))`
-/

namespace A316714.P10205843140579872038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (A319967 (n + 1)).toNat

end

end A316714.P10205843140579872038

namespace A316714

/-- `A278042(A319967(n+1))` -/
def P10205843140579872038.Spec : Prop :=
  ∀ n, P10205843140579872038.a n = A316714 n

end A316714

/-! ## A316714.P5173117943761355907

`A278042(A319968(n+1))`
-/

namespace A316714.P5173117943761355907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (A319968 (n + 1)).toNat

end

end A316714.P5173117943761355907

namespace A316714

/-- `A278042(A319968(n+1))` -/
def P5173117943761355907.Spec : Prop :=
  ∀ n, P5173117943761355907.a n = A316714 n

end A316714

/-! ## A316714.P10931953955858016483

`A278042(A278040(n)-1)`
-/

namespace A316714.P10931953955858016483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (A278040 n - 1).toNat

end

end A316714.P10931953955858016483

namespace A316714

/-- `A278042(A278040(n)-1)` -/
def P10931953955858016483.Spec : Prop :=
  ∀ n, P10931953955858016483.a n = A316714 n

end A316714

/-! ## A316714.P12030381197818075710

`A278042(A278041(n)-1)`
-/

namespace A316714.P12030381197818075710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (A278041 n - 1).toNat

end

end A316714.P12030381197818075710

namespace A316714

/-- `A278042(A278041(n)-1)` -/
def P12030381197818075710.Spec : Prop :=
  ∀ n, P12030381197818075710.a n = A316714 n

end A316714

/-! ## A316714.P16884051831770265021

`A278042(eq[1, A317950(n)])`
-/

namespace A316714.P16884051831770265021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316714.P16884051831770265021

namespace A316714

/-- `A278042(eq[1, A317950(n)])` -/
def P16884051831770265021.Spec : Prop :=
  ∀ n, P16884051831770265021.a n = A316714 n

end A316714

/-! ## A316714.P7031483968480569542

`A317207(A319966(n+1))-1`
-/

namespace A316714.P7031483968480569542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (A319966 (n + 1)).toNat - 1

end

end A316714.P7031483968480569542

namespace A316714

/-- `A317207(A319966(n+1))-1` -/
def P7031483968480569542.Spec : Prop :=
  ∀ n, P7031483968480569542.a n = A316714 n

end A316714

/-! ## A316714.P9741029769672748346

`A317207(n+1)+A000045(ceil(n/98))`
-/

namespace A316714.P9741029769672748346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) + A000045 ⌈(n : ℚ) / 98⌉.toNat

end

end A316714.P9741029769672748346

namespace A316714

/-- `A317207(n+1)+A000045(ceil(n/98))` -/
def P9741029769672748346.Spec : Prop :=
  ∀ n, P9741029769672748346.a n = A316714 n

end A316714

/-! ## A316714.P8289292302518493968

`A317207(n+1)+and(1, A000040(n+1))`
-/

namespace A316714.P8289292302518493968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317207 (n + 1) + Int.land 1 (A000040 (n + 1))

end

end A316714.P8289292302518493968

namespace A316714

/-- `A317207(n+1)+and(1, A000040(n+1))` -/
def P8289292302518493968.Spec : Prop :=
  ∀ n, P8289292302518493968.a n = A316714 n

end A316714

/-!
# A316715: a(n) is the number of 1s in A316713(n). That is, a(n) is the number of B-sequences (A278039) used in the tribonacci ABC-representation of n >= 0.

The programs for A316715, the canonical program `A316715.P11769109710965712386` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316715 has offset 0).

The definition of A316715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316715.P11769109710965712386

`A107782(2*A003726(n+1))+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A316715

/-- `A107782(2*A003726(n+1))+1` -/
def P11769109710965712386.Spec : Prop :=
  ∀ n, P11769109710965712386.a n = A316715 n

theorem P11769109710965712386.correct : P11769109710965712386.Spec := by
  intro n
  simp only [A316715]

end A316715

/-! ## A316715.P17641897148669093581

`A316714(n)-A069010(A003726(n+1))`
-/

namespace A316715.P17641897148669093581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316714 n - A069010 (A003726 (n + 1)).toNat

end

end A316715.P17641897148669093581

namespace A316715

/-- `A316714(n)-A069010(A003726(n+1))` -/
def P17641897148669093581.Spec : Prop :=
  ∀ n, P17641897148669093581.a n = A316715 n

end A316715

/-! ## A316715.P17553655255570210635

`∑{digits}[A317206(A003144(n+1)), A287801(#)]`
-/

namespace A316715.P17553655255570210635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 (A003144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A287801 x).sum

end

end A316715.P17553655255570210635

namespace A316715

/-- `∑{digits}[A317206(A003144(n+1)), A287801(#)]` -/
def P17553655255570210635.Spec : Prop :=
  ∀ n, P17553655255570210635.a n = A316715 n

end A316715

/-! ## A316715.P9460580289402089647

`A316714(n)+A316717(n)-A278043(n)`
-/

namespace A316715.P9460580289402089647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316714 n + (A316717 n - A278043 n)

end

end A316715.P9460580289402089647

namespace A316715

/-- `A316714(n)+A316717(n)-A278043(n)` -/
def P9460580289402089647.Spec : Prop :=
  ∀ n, P9460580289402089647.a n = A316715 n

end A316715

/-! ## A316715.P12986140299601277431

`A316714(n)-(A316717(n)+A316716(n))`
-/

namespace A316715.P12986140299601277431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316714 n - (A316717 n + A316716 n)

end

end A316715.P12986140299601277431

namespace A316715

/-- `A316714(n)-(A316717(n)+A316716(n))` -/
def P12986140299601277431.Spec : Prop :=
  ∀ n, P12986140299601277431.a n = A316715 n

end A316715

/-! ## A316715.P92419112295875875

`∑{digits}[A316713(n), A003849(#)]`
-/

namespace A316715.P92419112295875875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003849 x).sum

end

end A316715.P92419112295875875

namespace A316715

/-- `∑{digits}[A316713(n), A003849(#)]` -/
def P92419112295875875.Spec : Prop :=
  ∀ n, P92419112295875875.a n = A316715 n

end A316715

/-! ## A316715.P14086627010535199902

`∑{digits}[A316713(n), A083035(#)]`
-/

namespace A316715.P14086627010535199902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A083035 x).sum

end

end A316715.P14086627010535199902

namespace A316715

/-- `∑{digits}[A316713(n), A083035(#)]` -/
def P14086627010535199902.Spec : Prop :=
  ∀ n, P14086627010535199902.a n = A316715 n

end A316715

/-! ## A316715.P1044592962093697486

`∑{digits}[A316713(n), A287801(#)]`
-/

namespace A316715.P1044592962093697486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A287801 x).sum

end

end A316715.P1044592962093697486

namespace A316715

/-- `∑{digits}[A316713(n), A287801(#)]` -/
def P1044592962093697486.Spec : Prop :=
  ∀ n, P1044592962093697486.a n = A316715 n

end A316715

/-! ## A316715.P9493371702691913244

`∑{digits}[A316713(n), A080843(#²)]`
-/

namespace A316715.P9493371702691913244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A080843 (x ^ 2)).sum

end

end A316715.P9493371702691913244

namespace A316715

/-- `∑{digits}[A316713(n), A080843(#²)]` -/
def P9493371702691913244.Spec : Prop :=
  ∀ n, P9493371702691913244.a n = A316715 n

end A316715

/-!
# A316716: a(n) is the number of 2s in A316713(n). That is, a(n) is the number of A-sequences (A278040) used in the tribonacci ABC-representation of n >= 0.

The programs for A316716, the canonical program `A316716.P5868275179206833086` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316716 has offset 0).

The definition of A316716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316716.P5868275179206833086

`A277937(A003726(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A316716

/-- `A277937(A003726(n+1))` -/
def P5868275179206833086.Spec : Prop :=
  ∀ n, P5868275179206833086.a n = A316716 n

theorem P5868275179206833086.correct : P5868275179206833086.Spec := by
  intro n
  simp only [A316716]

end A316716

/-! ## A316716.P7278950077613850011

`A277937(eq[0, A014082(n)])`
-/

namespace A316716.P7278950077613850011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316716.P7278950077613850011

namespace A316716

/-- `A277937(eq[0, A014082(n)])` -/
def P7278950077613850011.Spec : Prop :=
  ∀ n, P7278950077613850011.a n = A316716 n

end A316716

/-! ## A316716.P14735082588678224530

`A277937(eq[1, A329720(n)])`
-/

namespace A316716.P14735082588678224530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316716.P14735082588678224530

namespace A316716

/-- `A277937(eq[1, A329720(n)])` -/
def P14735082588678224530.Spec : Prop :=
  ∀ n, P14735082588678224530.a n = A316716 n

end A316716

/-! ## A316716.P12836702777334681483

`A277937(lt[A014082(n), 1])`
-/

namespace A316716.P12836702777334681483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A316716.P12836702777334681483

namespace A316716

/-- `A277937(lt[A014082(n), 1])` -/
def P12836702777334681483.Spec : Prop :=
  ∀ n, P12836702777334681483.a n = A316716 n

end A316716

/-! ## A316716.P14345904471278040471

`A277937(lt[A246596(n), 5])`
-/

namespace A316716.P14345904471278040471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A316716.P14345904471278040471

namespace A316716

/-- `A277937(lt[A246596(n), 5])` -/
def P14345904471278040471.Spec : Prop :=
  ∀ n, P14345904471278040471.a n = A316716 n

end A316716

/-! ## A316716.P4096127840987919773

`A277937(lt[A246660(n), 5])`
-/

namespace A316716.P4096127840987919773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A316716.P4096127840987919773

namespace A316716

/-- `A277937(lt[A246660(n), 5])` -/
def P4096127840987919773.Spec : Prop :=
  ∀ n, P4096127840987919773.a n = A316716 n

end A316716

/-! ## A316716.P12575814434656969293

`A278043(n)-2*A316717(n)`
-/

namespace A316716.P12575814434656969293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 n - 2 * A316717 n

end

end A316716.P12575814434656969293

namespace A316716

/-- `A278043(n)-2*A316717(n)` -/
def P12575814434656969293.Spec : Prop :=
  ∀ n, P12575814434656969293.a n = A316716 n

end A316716

/-! ## A316716.P13694799038385875149

`∑{digits}[A317206(n+1), A288633(#)]`
-/

namespace A316716.P13694799038385875149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A288633 x).sum

end

end A316716.P13694799038385875149

namespace A316716

/-- `∑{digits}[A317206(n+1), A288633(#)]` -/
def P13694799038385875149.Spec : Prop :=
  ∀ n, P13694799038385875149.a n = A316716 n

end A316716

/-! ## A316716.P5157675854563155105

`∑{digits}[A317206(n+1), A317192(#)]`
-/

namespace A316716.P5157675854563155105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A317192 x).sum

end

end A316716.P5157675854563155105

namespace A316716

/-- `∑{digits}[A317206(n+1), A317192(#)]` -/
def P5157675854563155105.Spec : Prop :=
  ∀ n, P5157675854563155105.a n = A316716 n

end A316716

/-! ## A316716.P8989129806568350431

`A277937(eq[A072272(n), A253065(n)])`
-/

namespace A316716.P8989129806568350431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316716.P8989129806568350431

namespace A316716

/-- `A277937(eq[A072272(n), A253065(n)])` -/
def P8989129806568350431.Spec : Prop :=
  ∀ n, P8989129806568350431.a n = A316716 n

end A316716

/-! ## A316716.P11620994207632681285

`A277937(eq[A161903(n), A163617(n)])`
-/

namespace A316716.P11620994207632681285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316716.P11620994207632681285

namespace A316716

/-- `A277937(eq[A161903(n), A163617(n)])` -/
def P11620994207632681285.Spec : Prop :=
  ∀ n, P11620994207632681285.a n = A316716 n

end A316716

/-! ## A316716.P4690554513861708475

`A277937(eq[A106737(n), A245564(n)])`
-/

namespace A316716.P4690554513861708475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316716.P4690554513861708475

namespace A316716

/-- `A277937(eq[A106737(n), A245564(n)])` -/
def P4690554513861708475.Spec : Prop :=
  ∀ n, P4690554513861708475.a n = A316716 n

end A316716

/-! ## A316716.P9545752337826646415

`A277937(eq[A069010(n), A329320(n)])`
-/

namespace A316716.P9545752337826646415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316716.P9545752337826646415

namespace A316716

/-- `A277937(eq[A069010(n), A329320(n)])` -/
def P9545752337826646415.Spec : Prop :=
  ∀ n, P9545752337826646415.a n = A316716 n

end A316716

/-! ## A316716.P4810041069099145488

`A277937(eq[A179821(n), A292272(n)])`
-/

namespace A316716.P4810041069099145488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316716.P4810041069099145488

namespace A316716

/-- `A277937(eq[A179821(n), A292272(n)])` -/
def P4810041069099145488.Spec : Prop :=
  ∀ n, P4810041069099145488.a n = A316716 n

end A316716

/-! ## A316716.P4293610154199640210

`A277937(eq[A246661(n), A278161(n)])`
-/

namespace A316716.P4293610154199640210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246661 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316716.P4293610154199640210

namespace A316716

/-- `A277937(eq[A246661(n), A278161(n)])` -/
def P4293610154199640210.Spec : Prop :=
  ∀ n, P4293610154199640210.a n = A316716 n

end A316716

/-! ## A316716.P8987673982042557387

`A069010(A003726(n+1))-A316717(n)`
-/

namespace A316716.P8987673982042557387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A003726 (n + 1)).toNat - A316717 n

end

end A316716.P8987673982042557387

namespace A316716

/-- `A069010(A003726(n+1))-A316717(n)` -/
def P8987673982042557387.Spec : Prop :=
  ∀ n, P8987673982042557387.a n = A316716 n

end A316716

/-! ## A316716.P9564729624824285533

`A316714(n)-(A316717(n)+A316715(n))`
-/

namespace A316716.P9564729624824285533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316714 n - (A316717 n + A316715 n)

end

end A316716.P9564729624824285533

namespace A316716

/-- `A316714(n)-(A316717(n)+A316715(n))` -/
def P9564729624824285533.Spec : Prop :=
  ∀ n, P9564729624824285533.a n = A316716 n

end A316716

/-!
# A316717: a(n) is the number of 3s in A316713(n). That is, a(n) is the number of C-sequences (A278041) used in the tribonacci ABC-representation of n >= 0.

The programs for A316717, the canonical program `A316717.P5515055320797680457` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316717 has offset 0).

The definition of A316717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316717.P5515055320797680457

`A014081(eq[0, and(n, 2*and(n, 2*n))])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A316717

/-- `A014081(eq[0, and(n, 2*and(n, 2*n))])` -/
def P5515055320797680457.Spec : Prop :=
  ∀ n, P5515055320797680457.a n = A316717 n

theorem P5515055320797680457.correct : P5515055320797680457.Spec := by
  intro n
  simp only [A316717]

end A316717

/-! ## A316717.P3923417225134127763

`A014081(A003726(n+1))`
-/

namespace A316717.P3923417225134127763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A003726 (n + 1)).toNat

end

end A316717.P3923417225134127763

namespace A316717

/-- `A014081(A003726(n+1))` -/
def P3923417225134127763.Spec : Prop :=
  ∀ n, P3923417225134127763.a n = A316717 n

end A316717

/-! ## A316717.P14924200799403233484

`A014081(eq[0, A014082(n)])`
-/

namespace A316717.P14924200799403233484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316717.P14924200799403233484

namespace A316717

/-- `A014081(eq[0, A014082(n)])` -/
def P14924200799403233484.Spec : Prop :=
  ∀ n, P14924200799403233484.a n = A316717 n

end A316717

/-! ## A316717.P128663902712064891

`A014081(eq[1, A329720(n)])`
-/

namespace A316717.P128663902712064891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316717.P128663902712064891

namespace A316717

/-- `A014081(eq[1, A329720(n)])` -/
def P128663902712064891.Spec : Prop :=
  ∀ n, P128663902712064891.a n = A316717 n

end A316717

/-! ## A316717.P17592005491229228640

`A014081(lt[A014082(n), 1])`
-/

namespace A316717.P17592005491229228640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A316717.P17592005491229228640

namespace A316717

/-- `A014081(lt[A014082(n), 1])` -/
def P17592005491229228640.Spec : Prop :=
  ∀ n, P17592005491229228640.a n = A316717 n

end A316717

/-! ## A316717.P11507410414944706179

`A014081(lt[A246661(n), 5])`
-/

namespace A316717.P11507410414944706179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246661 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A316717.P11507410414944706179

namespace A316717

/-- `A014081(lt[A246661(n), 5])` -/
def P11507410414944706179.Spec : Prop :=
  ∀ n, P11507410414944706179.a n = A316717 n

end A316717

/-! ## A316717.P16652713246346403429

`A014081(record[n/A329720(n)])`
-/

namespace A316717.P16652713246346403429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A329720 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A316717.P16652713246346403429

namespace A316717

/-- `A014081(record[n/A329720(n)])` -/
def P16652713246346403429.Spec : Prop :=
  ∀ n, P16652713246346403429.a n = A316717 n

end A316717

/-! ## A316717.P14044196353473374750

`A014081(record[gcd(n, A014082(n))])`
-/

namespace A316717.P14044196353473374750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A014082 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A316717.P14044196353473374750

namespace A316717

/-- `A014081(record[gcd(n, A014082(n))])` -/
def P14044196353473374750.Spec : Prop :=
  ∀ n, P14044196353473374750.a n = A316717 n

end A316717

/-! ## A316717.P4983976173643665594

`val(p?[A063948(A246660(n))]!², 12)`
-/

namespace A316717.P4983976173643665594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063948 (A246660 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 2) 12

end

end A316717.P4983976173643665594

namespace A316717

/-- `val(p?[A063948(A246660(n))]!², 12)` -/
def P4983976173643665594.Spec : Prop :=
  ∀ n, (P4983976173643665594.a n : ℤ) = A316717 n

end A316717

/-! ## A316717.P2183817001345008703

`A002264(p?[A003605(A246661(n))])`
-/

namespace A316717.P2183817001345008703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (A246661 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P2183817001345008703

namespace A316717

/-- `A002264(p?[A003605(A246661(n))])` -/
def P2183817001345008703.Spec : Prop :=
  ∀ n, P2183817001345008703.a n = A316717 n

end A316717

/-! ## A316717.P14217397482271179502

`A055679(p?[A003605(A246661(n))])`
-/

namespace A316717.P14217397482271179502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (A246661 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P14217397482271179502

namespace A316717

/-- `A055679(p?[A003605(A246661(n))])` -/
def P14217397482271179502.Spec : Prop :=
  ∀ n, P14217397482271179502.a n = A316717 n

end A316717

/-! ## A316717.P3833762341806501603

`A057360(p?[A003605(A246661(n))])`
-/

namespace A316717.P3833762341806501603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (A246661 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P3833762341806501603

namespace A316717

/-- `A057360(p?[A003605(A246661(n))])` -/
def P3833762341806501603.Spec : Prop :=
  ∀ n, P3833762341806501603.a n = A316717 n

end A316717

/-! ## A316717.P16407304599826221510

`A025480(p?[A125169(A246660(n))])`
-/

namespace A316717.P16407304599826221510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A246660 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P16407304599826221510

namespace A316717

/-- `A025480(p?[A125169(A246660(n))])` -/
def P16407304599826221510.Spec : Prop :=
  ∀ n, P16407304599826221510.a n = A316717 n

end A316717

/-! ## A316717.P14635391975123509797

`A065134(p?[A102363(A246661(n))])`
-/

namespace A316717.P14635391975123509797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A246661 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P14635391975123509797

namespace A316717

/-- `A065134(p?[A102363(A246661(n))])` -/
def P14635391975123509797.Spec : Prop :=
  ∀ n, P14635391975123509797.a n = A316717 n

end A316717

/-! ## A316717.P17993201661723806512

`A008133(p?[A174225(A246028(n))])`
-/

namespace A316717.P17993201661723806512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174225 (A246028 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P17993201661723806512

namespace A316717

/-- `A008133(p?[A174225(A246028(n))])` -/
def P17993201661723806512.Spec : Prop :=
  ∀ n, P17993201661723806512.a n = A316717 n

end A316717

/-! ## A316717.P12215253891113408766

`A049115(p?[A152216(A246661(n))])`
-/

namespace A316717.P12215253891113408766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152216 (A246661 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P12215253891113408766

namespace A316717

/-- `A049115(p?[A152216(A246661(n))])` -/
def P12215253891113408766.Spec : Prop :=
  ∀ n, P12215253891113408766.a n = A316717 n

end A316717

/-! ## A316717.P3261969826861456133

`A139351(p?[A063948(A246660(n))])`
-/

namespace A316717.P3261969826861456133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063948 (A246660 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P3261969826861456133

namespace A316717

/-- `A139351(p?[A063948(A246660(n))])` -/
def P3261969826861456133.Spec : Prop :=
  ∀ n, P3261969826861456133.a n = A316717 n

end A316717

/-! ## A316717.P4890951843888107527

`A029274(p?[A189934(A246596(n))])`
-/

namespace A316717.P4890951843888107527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (A246596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029274 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P4890951843888107527

namespace A316717

/-- `A029274(p?[A189934(A246596(n))])` -/
def P4890951843888107527.Spec : Prop :=
  ∀ n, P4890951843888107527.a n = A316717 n

end A316717

/-! ## A316717.P17925557882617087149

`A048113(p?[A186155(A247282(n))])`
-/

namespace A316717.P17925557882617087149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186155 (A247282 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048113 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P17925557882617087149

namespace A316717

/-- `A048113(p?[A186155(A247282(n))])` -/
def P17925557882617087149.Spec : Prop :=
  ∀ n, P17925557882617087149.a n = A316717 n

end A316717

/-! ## A316717.P16154333183746113089

`A025861(p?[A215069(A246674(n))])`
-/

namespace A316717.P16154333183746113089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215069 (A246674 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025861 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A316717.P16154333183746113089

namespace A316717

/-- `A025861(p?[A215069(A246674(n))])` -/
def P16154333183746113089.Spec : Prop :=
  ∀ n, P16154333183746113089.a n = A316717 n

end A316717

/-!
# A316718: Expansion of Product_{k=1..6} (1+x^(2*k-1))/(1-x^(2*k)).

The programs for A316718, there is no canonical definition to state claims against.
-/

/-! ## A316718.P9954695160312386439

`A014063(A004148(n))+A006950(n)`
-/

namespace A316718.P9954695160312386439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014063 (A004148 n).toNat + A006950 n

end

end A316718.P9954695160312386439

/-! ## A316718.P1241770886907399467

`A316719(n)+A014063(A004148(n))`
-/

namespace A316718.P1241770886907399467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316719 n + A014063 (A004148 n).toNat

end

end A316718.P1241770886907399467

/-! ## A316718.P7849803199330292278

`A316720(n)+A014063(A004148(n))`
-/

namespace A316718.P7849803199330292278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316720 n + A014063 (A004148 n).toNat

end

end A316718.P7849803199330292278

/-! ## A316718.P16089278958329652103

`A006950(n)-A006923(A006927(n))`
-/

namespace A316718.P16089278958329652103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A006923 (A006927 n).toNat

end

end A316718.P16089278958329652103

/-!
# A316719: Expansion of Product_{k=1..7} (1+x^(2*k-1))/(1-x^(2*k)).

The programs for A316719, there is no canonical definition to state claims against.
-/

/-! ## A316719.P10949948603515365251

`A000188(∑[A036020(n)]²)`
-/

namespace A316719.P10949948603515365251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A316719.P10949948603515365251

/-! ## A316719.P9667906668409065804

`A000194(∑[A036020(n)]²)`
-/

namespace A316719.P9667906668409065804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A316719.P9667906668409065804

/-! ## A316719.P9340967932215596118

`A000196(∑[A036020(n)]²)`
-/

namespace A316719.P9340967932215596118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A316719.P9340967932215596118

/-! ## A316719.P97075882259023330

`A003059(∑[A036020(n)]²)`
-/

namespace A316719.P97075882259023330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A316719.P97075882259023330

/-! ## A316719.P1530883704791098405

`∑[A036020(n)%A360368(3*n+2)]`
-/

namespace A316719.P1530883704791098405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036020 n) (A360368 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316719.P1530883704791098405

/-!
# A316720: Expansion of Product_{k=1..8} (1+x^(2*k-1))/(1-x^(2*k)).

The programs for A316720, there is no canonical definition to state claims against.
-/

/-! ## A316720.P10062563651767961563

`A006950(n)-A185284(2*n+3)`
-/

namespace A316720.P10062563651767961563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A185284 (2 * n + 3)

end

end A316720.P10062563651767961563

/-! ## A316720.P9166166817369430603

`abs(A185284(2*n+3)+A106507(n))`
-/

namespace A316720.P9166166817369430603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185284 (2 * n + 3) + A106507 n|

end

end A316720.P9166166817369430603

/-! ## A316720.P2090955244097670649

`A016389(A013610(n))+A006950(n)`
-/

namespace A316720.P2090955244097670649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A013610 n).toNat + A006950 n

end

end A316720.P2090955244097670649

/-! ## A316720.P6594373833505638720

`A006950(n)-A010894(A008279(n))`
-/

namespace A316720.P6594373833505638720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A010894 ((A008279 n).toNat + 21)

end

end A316720.P6594373833505638720

/-! ## A316720.P17939219163325101986

`A006950(n)-A044941(A011782(n))`
-/

namespace A316720.P17939219163325101986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A044941 (A011782 n).toNat

end

end A316720.P17939219163325101986

/-!
# A316721: Expansion of Product_{k=1..9} (1+x^(2*k-1))/(1-x^(2*k)).

The programs for A316721, there is no canonical definition to state claims against.
-/

/-! ## A316721.P10953783081932974941

`A010815(A016898(n))+A006950(n)`
-/

namespace A316721.P10953783081932974941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A016898 n).toNat + A006950 n

end

end A316721.P10953783081932974941

/-! ## A316721.P16279837775890363856

`A316722(n)+A010815(A016898(n))`
-/

namespace A316721.P16279837775890363856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316722 n + A010815 (A016898 n).toNat

end

end A316721.P16279837775890363856

/-! ## A316721.P11175889826950403828

`A006950(n)-A044941(A104722(n))`
-/

namespace A316721.P11175889826950403828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A044941 (A104722 n).toNat

end

end A316721.P11175889826950403828

/-!
# A316722: Expansion of Product_{k=1..10} (1+x^(2*k-1))/(1-x^(2*k)).

The programs for A316722, there is no canonical definition to state claims against.
-/

/-! ## A316722.P3420517236912859960

`A006950(n)-A031286(A184945(n+1))`
-/

namespace A316722.P3420517236912859960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A031286 (A184945 (n + 1)).toNat

end

end A316722.P3420517236912859960

/-! ## A316722.P13175386026633634994

`A006950(n)-A185284(comp[2*(n+3)])`
-/

namespace A316722.P13175386026633634994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A185284 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A316722.P13175386026633634994

/-! ## A316722.P6729144811973276198

`A006950(n)-A044941(A000016(n))`
-/

namespace A316722.P6729144811973276198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A044941 (A000016 n).toNat

end

end A316722.P6729144811973276198

/-! ## A316722.P7879708017302515983

`A006950(n)-A006926(A058343(n))`
-/

namespace A316722.P7879708017302515983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A006926 (A058343 n).toNat

end

end A316722.P7879708017302515983

/-! ## A316722.P7080572955788175881

`A006950(n)-A124761(A185044(n))`
-/

namespace A316722.P7080572955788175881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A124761 (A185044 n).toNat

end

end A316722.P7080572955788175881

/-!
# A316723: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j=1..k} (1+x^j)/(1-x^j).

The programs for A316723, there is no canonical definition to state claims against.
-/

/-! ## A316723.P9925059912318809947

`A036453(A086645(n))*A262553(n)`
-/

namespace A316723.P9925059912318809947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A086645 n).toNat * A262553 n

end

end A316723.P9925059912318809947

/-! ## A316723.P6002840553050428035

`A036453(A126770(n))*A262553(n)`
-/

namespace A316723.P6002840553050428035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A126770 n).toNat * A262553 n

end

end A316723.P6002840553050428035

/-! ## A316723.P8360116048766265818

`A036453(A174545(n))*A262553(n)`
-/

namespace A316723.P8360116048766265818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A174545 n).toNat * A262553 n

end

end A316723.P8360116048766265818

/-! ## A316723.P14854908330183820044

`A040001(A199335(n))*A262553(n)`
-/

namespace A316723.P14854908330183820044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A199335 n).toNat * A262553 n

end

end A316723.P14854908330183820044

/-! ## A316723.P14537471261846007725

`A020639(A019538(n+1))*A262553(n)`
-/

namespace A316723.P14537471261846007725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A019538 (n + 1)).toNat * A262553 n

end

end A316723.P14537471261846007725

/-!
# A316724: Generalized 26-gonal (or icosihexagonal) numbers: m*(12*m - 11) with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A316724, the canonical program `A316724.P11059870044245921392` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316724 has offset 0).

The definition of A316724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316724.P1931238293900994471

`(12*n*(n+1)+5*(2*n+1)*(-1)^n-5)/4`
-/

namespace A316724.P1931238293900994471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 * (n * (n + 1)) : ℤ) + 5 * ((2 * n + 1 : ℤ) * (-1) ^ n) - 5 : ℚ) / 4

end

end A316724.P1931238293900994471

namespace A316724

/-- `(12*n*(n+1)+5*(2*n+1)*(-1)^n-5)/4` -/
def P1931238293900994471.Spec : Prop :=
  ∀ n, P1931238293900994471.a n = (A316724 n : ℚ)

theorem P1931238293900994471.correct : P1931238293900994471.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A316724, Nat.add_sub_cancel, A316724.P1931238293900994471.a, A316724.P11059870044245921392.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A316724, Nat.add_sub_cancel, A316724.P1931238293900994471.a, A316724.P11059870044245921392.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A316724

/-! ## A316724.P11059870044245921392

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=23, a(3)=26, a(4)=70`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316724

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P11059870044245921392.Spec : Prop :=
  ∀ n, P11059870044245921392.a n = A316724 n

theorem P11059870044245921392.correct : P11059870044245921392.Spec := by
  intro n
  simp only [A316724]

end A316724

/-! ## A316724.P2429512262532825196

`∑[n*gcd(11, n%2)]`
-/

namespace A316724.P2429512262532825196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 11 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316724.P2429512262532825196

namespace A316724

/-- `∑[n*gcd(11, n%2)]` -/
def P2429512262532825196.Spec : Prop :=
  ∀ n, (P2429512262532825196.a n : ℤ) = A316724 n

end A316724

/-! ## A316724.P12293316856210001053

`∑[n*∑[-a(n-1)]]+∑[n]` with `a(0)=10`
-/

namespace A316724.P12293316856210001053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A316724.P12293316856210001053

namespace A316724

/-- `∑[n*∑[-a(n-1)]]+∑[n]` -/
def P12293316856210001053.Spec : Prop :=
  ∀ n, P12293316856210001053.a n = A316724 n

end A316724

/-! ## A316724.P5762115468259691142

`∑[A317322(n)]`
-/

namespace A316724.P5762115468259691142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316724.P5762115468259691142

namespace A316724

/-- `∑[A317322(n)]` -/
def P5762115468259691142.Spec : Prop :=
  ∀ n, P5762115468259691142.a n = A316724 n

end A316724

/-! ## A316724.P9363476371475659347

`A195158(n)-a(n-1)` with `a(0)=0`
-/

namespace A316724.P9363476371475659347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195158 n - a (n - 1)

end

end A316724.P9363476371475659347

namespace A316724

/-- `A195158(n)-a(n-1)` -/
def P9363476371475659347.Spec : Prop :=
  ∀ n, P9363476371475659347.a n = A316724 n

end A316724

/-! ## A316724.P10615140085773583387

`∑[n*11^and(1, n+1)]%A006094(n+1)`
-/

namespace A316724.P10615140085773583387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 11 ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006094 (n + 1))

end

end A316724.P10615140085773583387

namespace A316724

/-- `∑[n*11^and(1, n+1)]%A006094(n+1)` -/
def P10615140085773583387.Spec : Prop :=
  ∀ n, P10615140085773583387.a n = A316724 n

end A316724

/-! ## A316724.P17210495533696483796

`A303814(n)+A110660(n)`
-/

namespace A316724.P17210495533696483796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303814 n + A110660 n

end

end A316724.P17210495533696483796

namespace A316724

/-- `A303814(n)+A110660(n)` -/
def P17210495533696483796.Spec : Prop :=
  ∀ n, P17210495533696483796.a n = A316724 n

end A316724

/-! ## A316724.P285740788583311006

`A303812(n)-A110660(n)`
-/

namespace A316724.P285740788583311006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303812 n - A110660 n

end

end A316724.P285740788583311006

namespace A316724

/-- `A303812(n)-A110660(n)` -/
def P285740788583311006.Spec : Prop :=
  ∀ n, P285740788583311006.a n = A316724 n

end A316724

/-! ## A316724.P10511383053100570975

`A152741(n)-A219390(n+1)`
-/

namespace A316724.P10511383053100570975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 n - A219390 (n + 1)

end

end A316724.P10511383053100570975

namespace A316724

/-- `A152741(n)-A219390(n+1)` -/
def P10511383053100570975.Spec : Prop :=
  ∀ n, P10511383053100570975.a n = A316724 n

end A316724

/-! ## A316724.P8638146367507381009

`A303299(n)+2*A110660(n)`
-/

namespace A316724.P8638146367507381009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303299 n + 2 * A110660 n

end

end A316724.P8638146367507381009

namespace A316724

/-- `A303299(n)+2*A110660(n)` -/
def P8638146367507381009.Spec : Prop :=
  ∀ n, P8638146367507381009.a n = A316724 n

end A316724

/-! ## A316724.P16075839242474574098

`A005408(n)*A166517(n)-2`
-/

namespace A316724.P16075839242474574098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A166517 n - 2

end

end A316724.P16075839242474574098

namespace A316724

/-- `A005408(n)*A166517(n)-2` -/
def P16075839242474574098.Spec : Prop :=
  ∀ n, P16075839242474574098.a n = A316724 n

end A316724

/-! ## A316724.P9010873887508417536

`A303304(n)+A110660(n)/2`
-/

namespace A316724.P9010873887508417536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303304 n : ℚ) + (A110660 n : ℚ) / 2

end

end A316724.P9010873887508417536

namespace A316724

/-- `A303304(n)+A110660(n)/2` -/
def P9010873887508417536.Spec : Prop :=
  ∀ n, P9010873887508417536.a n = (A316724 n : ℚ)

end A316724

/-! ## A316724.P13708759051794884086

`A316729(n)-2*A110660(n)`
-/

namespace A316724.P13708759051794884086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316729 n - 2 * A110660 n

end

end A316724.P13708759051794884086

namespace A316724

/-- `A316729(n)-2*A110660(n)` -/
def P13708759051794884086.Spec : Prop :=
  ∀ n, P13708759051794884086.a n = A316724 n

end A316724

/-! ## A316724.P8051509095572683973

`2*A303304(n)-A303814(n)`
-/

namespace A316724.P8051509095572683973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303304 n - A303814 n

end

end A316724.P8051509095572683973

namespace A316724

/-- `2*A303304(n)-A303814(n)` -/
def P8051509095572683973.Spec : Prop :=
  ∀ n, P8051509095572683973.a n = A316724 n

end A316724

/-! ## A316724.P758185688460366770

`2*A303814(n)-A303299(n)`
-/

namespace A316724.P758185688460366770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303814 n - A303299 n

end

end A316724.P758185688460366770

namespace A316724

/-- `2*A303814(n)-A303299(n)` -/
def P758185688460366770.Spec : Prop :=
  ∀ n, P758185688460366770.a n = A316724 n

end A316724

/-! ## A316724.P9032391444574481065

`2*A316725(n)-A303812(n)`
-/

namespace A316724.P9032391444574481065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316725 n - A303812 n

end

end A316724.P9032391444574481065

namespace A316724

/-- `2*A316725(n)-A303812(n)` -/
def P9032391444574481065.Spec : Prop :=
  ∀ n, P9032391444574481065.a n = A316724 n

end A316724

/-! ## A316724.P2136504060176842021

`A316725(n)-A110660(n)/2`
-/

namespace A316724.P2136504060176842021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316725 n : ℚ) - (A110660 n : ℚ) / 2

end

end A316724.P2136504060176842021

namespace A316724

/-- `A316725(n)-A110660(n)/2` -/
def P2136504060176842021.Spec : Prop :=
  ∀ n, P2136504060176842021.a n = (A316724 n : ℚ)

end A316724

/-! ## A316724.P5065060521307380119

`A195162(n)+A303303(n)-A118277(n)`
-/

namespace A316724.P5065060521307380119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n + (A303303 n - A118277 n)

end

end A316724.P5065060521307380119

namespace A316724

/-- `A195162(n)+A303303(n)-A118277(n)` -/
def P5065060521307380119.Spec : Prop :=
  ∀ n, P5065060521307380119.a n = A316724 n

end A316724

/-! ## A316724.P9404914491423355302

`A085787(n)+A303813(n)-A317300(n)`
-/

namespace A316724.P9404914491423355302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + (A303813 n - A317300 n)

end

end A316724.P9404914491423355302

namespace A316724

/-- `A085787(n)+A303813(n)-A317300(n)` -/
def P9404914491423355302.Spec : Prop :=
  ∀ n, P9404914491423355302.a n = A316724 n

end A316724

/-!
# A316725: Generalized 27-gonal (or icosiheptagonal) numbers: m*(25*m - 23)/2 with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A316725, the canonical program `A316725.P10316419746588915738` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316725 has offset 0).

The definition of A316725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316725.P10316419746588915738

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=24, a(3)=27, a(4)=73`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316725

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10316419746588915738.Spec : Prop :=
  ∀ n, P10316419746588915738.a n = A316725 n

theorem P10316419746588915738.correct : P10316419746588915738.Spec := by
  intro n
  simp only [A316725]

end A316725

/-! ## A316725.P2114008062965445405

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=23, a(3)=3`
-/

namespace A316725.P2114008062965445405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 23, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316725.P2114008062965445405

namespace A316725

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P2114008062965445405.Spec : Prop :=
  ∀ n, P2114008062965445405.a n = A316725 n

end A316725

/-! ## A316725.P7058459519816750213

`∑[A317323(n)]`
-/

namespace A316725.P7058459519816750213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316725.P7058459519816750213

namespace A316725

/-- `∑[A317323(n)]` -/
def P7058459519816750213.Spec : Prop :=
  ∀ n, P7058459519816750213.a n = A316725 n

end A316725

/-! ## A316725.P3667495545129419527

`∑[3*A317316(n)-n]/2`
-/

namespace A316725.P3667495545129419527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A317316 n - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A316725.P3667495545129419527

namespace A316725

/-- `∑[3*A317316(n)-n]/2` -/
def P3667495545129419527.Spec : Prop :=
  ∀ n, P3667495545129419527.a n = (A316725 n : ℚ)

end A316725

/-! ## A316725.P9171116227957827305

`A303304(n)+A110660(n)`
-/

namespace A316725.P9171116227957827305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303304 n + A110660 n

end

end A316725.P9171116227957827305

namespace A316725

/-- `A303304(n)+A110660(n)` -/
def P9171116227957827305.Spec : Prop :=
  ∀ n, P9171116227957827305.a n = A316725 n

end A316725

/-! ## A316725.P17648333723735350886

`A303815(n)-A110660(n)`
-/

namespace A316725.P17648333723735350886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303815 n - A110660 n

end

end A316725.P17648333723735350886

namespace A316725

/-- `A303815(n)-A110660(n)` -/
def P17648333723735350886.Spec : Prop :=
  ∀ n, P17648333723735350886.a n = A316725 n

end A316725

/-! ## A316725.P8840203787126973927

`∑[A317322(n)+A142150(n)]`
-/

namespace A316725.P8840203787126973927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317322 n + A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316725.P8840203787126973927

namespace A316725

/-- `∑[A317322(n)+A142150(n)]` -/
def P8840203787126973927.Spec : Prop :=
  ∀ n, P8840203787126973927.a n = A316725 n

end A316725

/-! ## A316725.P8405267813673101881

`A303303(n)+2*A110660(n)`
-/

namespace A316725.P8405267813673101881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303303 n + 2 * A110660 n

end

end A316725.P8405267813673101881

namespace A316725

/-- `A303303(n)+2*A110660(n)` -/
def P8405267813673101881.Spec : Prop :=
  ∀ n, P8405267813673101881.a n = A316725 n

end A316725

/-! ## A316725.P10077073864418509662

`2*A303305(n)-A085787(n)`
-/

namespace A316725.P10077073864418509662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303305 n - A085787 n

end

end A316725.P10077073864418509662

namespace A316725

/-- `2*A303305(n)-A085787(n)` -/
def P10077073864418509662.Spec : Prop :=
  ∀ n, P10077073864418509662.a n = A316725 n

end A316725

/-! ## A316725.P10009692450845048737

`A316724(n)+A110660(n)/2`
-/

namespace A316725.P10009692450845048737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316724 n : ℚ) + (A110660 n : ℚ) / 2

end

end A316725.P10009692450845048737

namespace A316725

/-- `A316724(n)+A110660(n)/2` -/
def P10009692450845048737.Spec : Prop :=
  ∀ n, P10009692450845048737.a n = (A316725 n : ℚ)

end A316725

/-! ## A316725.P17789518883407168239

`2*A303304(n)-A303303(n)`
-/

namespace A316725.P17789518883407168239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303304 n - A303303 n

end

end A316725.P17789518883407168239

namespace A316725

/-- `2*A303304(n)-A303303(n)` -/
def P17789518883407168239.Spec : Prop :=
  ∀ n, P17789518883407168239.a n = A316725 n

end A316725

/-! ## A316725.P10927283365346513927

`2*A303303(n)-A303813(n)`
-/

namespace A316725.P10927283365346513927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303303 n - A303813 n

end

end A316725.P10927283365346513927

namespace A316725

/-- `2*A303303(n)-A303813(n)` -/
def P10927283365346513927.Spec : Prop :=
  ∀ n, P10927283365346513927.a n = A316725 n

end A316725

/-! ## A316725.P3445021987549628505

`2*A303814(n)-A303298(n)`
-/

namespace A316725.P3445021987549628505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303814 n - A303298 n

end

end A316725.P3445021987549628505

namespace A316725

/-- `2*A303814(n)-A303298(n)` -/
def P3445021987549628505.Spec : Prop :=
  ∀ n, P3445021987549628505.a n = A316725 n

end A316725

/-! ## A316725.P14537558214741117022

`2*A303812(n)-A303815(n)`
-/

namespace A316725.P14537558214741117022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303812 n - A303815 n

end

end A316725.P14537558214741117022

namespace A316725

/-- `2*A303812(n)-A303815(n)` -/
def P14537558214741117022.Spec : Prop :=
  ∀ n, P14537558214741117022.a n = A316725 n

end A316725

/-! ## A316725.P15044304439211548522

`2*A316724(n)-A303304(n)`
-/

namespace A316725.P15044304439211548522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316724 n - A303304 n

end

end A316725.P15044304439211548522

namespace A316725

/-- `2*A316724(n)-A303304(n)` -/
def P15044304439211548522.Spec : Prop :=
  ∀ n, P15044304439211548522.a n = A316725 n

end A316725

/-! ## A316725.P2015727045160032033

`(A316724(n)+A303812(n))/2`
-/

namespace A316725.P2015727045160032033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316724 n + A303812 n : ℚ) / 2

end

end A316725.P2015727045160032033

namespace A316725

/-- `(A316724(n)+A303812(n))/2` -/
def P2015727045160032033.Spec : Prop :=
  ∀ n, P2015727045160032033.a n = (A316725 n : ℚ)

end A316725

/-! ## A316725.P14236693829582905494

`A303812(n)-A110660(n)/2`
-/

namespace A316725.P14236693829582905494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303812 n : ℚ) - (A110660 n : ℚ) / 2

end

end A316725.P14236693829582905494

namespace A316725

/-- `A303812(n)-A110660(n)/2` -/
def P14236693829582905494.Spec : Prop :=
  ∀ n, P14236693829582905494.a n = (A316725 n : ℚ)

end A316725

/-! ## A316725.P7650214596625080817

`2*A274978(n+1)-A001318(n)`
-/

namespace A316725.P7650214596625080817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274978 (n + 1) - A001318 n

end

end A316725.P7650214596625080817

namespace A316725

/-- `2*A274978(n+1)-A001318(n)` -/
def P7650214596625080817.Spec : Prop :=
  ∀ n, P7650214596625080817.a n = A316725 n

end A316725

/-! ## A316725.P8063584637433569017

`2*A274979(n+1)-A118277(n)`
-/

namespace A316725.P8063584637433569017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274979 (n + 1) - A118277 n

end

end A316725.P8063584637433569017

namespace A316725

/-- `2*A274979(n+1)-A118277(n)` -/
def P8063584637433569017.Spec : Prop :=
  ∀ n, P8063584637433569017.a n = A316725 n

end A316725

/-! ## A316725.P17486269860852418029

`A001318(n)+A303812(n)-A000217(n)`
-/

namespace A316725.P17486269860852418029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (A303812 n - A000217 n)

end

end A316725.P17486269860852418029

namespace A316725

/-- `A001318(n)+A303812(n)-A000217(n)` -/
def P17486269860852418029.Spec : Prop :=
  ∀ n, P17486269860852418029.a n = A316725 n

end A316725

/-!
# A316726: The number of ways to tile (with squares and rectangles) a 2 X (n+2) strip with the upper left and upper right squares removed.

The programs for A316726, the canonical program `A316726.P609439699001129141` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316726 has offset 0).

The definition of A316726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316726.P609439699001129141

`2*a(n-1)+4*a(n-2)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=15, a(3)=46`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316726

/-- `2*a(n-1)+4*a(n-2)-a(n-4)` -/
def P609439699001129141.Spec : Prop :=
  ∀ n, P609439699001129141.a n = A316726 n

theorem P609439699001129141.correct : P609439699001129141.Spec := by
  intro n
  simp only [A316726]

end A316726

/-! ## A316726.P2335748670648288142

`A030186(n)+2*A033505(n-1)+a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A316726.P2335748670648288142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A030186 n + 2 * A033505 (n - 1) + a (n - 2)

end

end A316726.P2335748670648288142

namespace A316726

/-- `A030186(n)+2*A033505(n-1)+a(n-2)` -/
def P2335748670648288142.Spec : Prop :=
  ∀ n, P2335748670648288142.a n = A316726 n

end A316726

/-! ## A316726.P9445505806026943324

`A287275(n+2)-n%2`
-/

namespace A316726.P9445505806026943324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 (n + 2) - ((n % 2 : ℕ) : ℤ)

end

end A316726.P9445505806026943324

namespace A316726

/-- `A287275(n+2)-n%2` -/
def P9445505806026943324.Spec : Prop :=
  ∀ n, P9445505806026943324.a n = A316726 n

end A316726

/-! ## A316726.P6124029025565437613

`A220563(n+1)+(-1)^n`
-/

namespace A316726.P6124029025565437613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220563 (n + 1) + (-1) ^ n

end

end A316726.P6124029025565437613

namespace A316726

/-- `A220563(n+1)+(-1)^n` -/
def P6124029025565437613.Spec : Prop :=
  ∀ n, P6124029025565437613.a n = A316726 n

end A316726

/-! ## A316726.P17593928180775438387

`∑[A033999(n)+A033505(n)]`
-/

namespace A316726.P17593928180775438387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316726.P17593928180775438387

namespace A316726

/-- `∑[A033999(n)+A033505(n)]` -/
def P17593928180775438387.Spec : Prop :=
  ∀ n, P17593928180775438387.a n = A316726 n

end A316726

/-! ## A316726.P4320332247209842575

`Δ[A110654(n)]+∑[A033505(n)]`
-/

namespace A316726.P4320332247209842575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A316726.P4320332247209842575

namespace A316726

/-- `Δ[A110654(n)]+∑[A033505(n)]` -/
def P4320332247209842575.Spec : Prop :=
  ∀ n, P4320332247209842575.a n = A316726 n

end A316726

/-! ## A316726.P1144303406565238986

`A000035(n+1)+∑[A033505(n)]`
-/

namespace A316726.P1144303406565238986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316726.P1144303406565238986

namespace A316726

/-- `A000035(n+1)+∑[A033505(n)]` -/
def P1144303406565238986.Spec : Prop :=
  ∀ n, P1144303406565238986.a n = A316726 n

end A316726

/-! ## A316726.P14312130951943248781

`1-(A000035(n)-∑[A033505(n)])`
-/

namespace A316726.P14312130951943248781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316726.P14312130951943248781

namespace A316726

/-- `1-(A000035(n)-∑[A033505(n)])` -/
def P14312130951943248781.Spec : Prop :=
  ∀ n, P14312130951943248781.a n = A316726 n

end A316726

/-! ## A316726.P3760647123670546768

`∑[A033505(n)]+A030186(n)%2`
-/

namespace A316726.P3760647123670546768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A030186 n) 2

end

end A316726.P3760647123670546768

namespace A316726

/-- `∑[A033505(n)]+A030186(n)%2` -/
def P3760647123670546768.Spec : Prop :=
  ∀ n, P3760647123670546768.a n = A316726 n

end A316726

/-! ## A316726.P4372198275465688141

`∑[A033505(n)]+A030236(n)%2`
-/

namespace A316726.P4372198275465688141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A030236 n) 2

end

end A316726.P4372198275465688141

namespace A316726

/-- `∑[A033505(n)]+A030236(n)%2` -/
def P4372198275465688141.Spec : Prop :=
  ∀ n, P4372198275465688141.a n = A316726 n

end A316726

/-! ## A316726.P15168802463163181183

`A061534(n+1)-A220563(n+1)`
-/

namespace A316726.P15168802463163181183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061534 (n + 1) - A220563 (n + 1)

end

end A316726.P15168802463163181183

namespace A316726

/-- `A061534(n+1)-A220563(n+1)` -/
def P15168802463163181183.Spec : Prop :=
  ∀ n, P15168802463163181183.a n = A316726 n

end A316726

/-! ## A316726.P6821986971481875374

`A030186(n+1)+A030186(n)-A220563(n+1)`
-/

namespace A316726.P6821986971481875374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 (n + 1) + (A030186 n - A220563 (n + 1))

end

end A316726.P6821986971481875374

namespace A316726

/-- `A030186(n+1)+A030186(n)-A220563(n+1)` -/
def P6821986971481875374.Spec : Prop :=
  ∀ n, P6821986971481875374.a n = A316726 n

end A316726

/-!
# A316727: Number of permutations of {0,1,...,2n} with first element n whose sequence of ascents and descents forms a Dyck path.

The programs for A316727, there is no canonical definition to state claims against.
-/

/-! ## A316727.P15461600166201580371

`A316728(∑[2*n])`
-/

namespace A316727.P15461600166201580371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316728 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316727.P15461600166201580371

/-! ## A316727.P8177098250594854262

`or(1, A316728(A002378(n)))`
-/

namespace A316727.P8177098250594854262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316728 (A002378 n).toNat)

end

end A316727.P8177098250594854262

/-! ## A316727.P3760666284934191992

`or(1, A316728(A005843(∑[n])))`
-/

namespace A316727.P3760666284934191992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316728 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A316727.P3760666284934191992

/-! ## A316727.P6054042409486286005

`A316728(A002378(n))+A000007(n+1)`
-/

namespace A316727.P6054042409486286005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316728 (A002378 n).toNat + A000007 (n + 1)

end

end A316727.P6054042409486286005

/-! ## A316727.P10314444440706344782

`A316728(A002378(n))-n*A000007(n)`
-/

namespace A316727.P10314444440706344782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316728 (A002378 n).toNat - (n : ℤ) * A000007 n

end

end A316727.P10314444440706344782

/-!
# A316729: Generalized 30-gonal (or triacontagonal) numbers: m*(14*m - 13) with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A316729, the canonical program `A316729.P13278597444828167793` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316729 has offset 0).

The definition of A316729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316729.P13278597444828167793

`(28*n*(n+1)+12*(2*n+1)*(-1)^n-12)/8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316729

/-- `(28*n*(n+1)+12*(2*n+1)*(-1)^n-12)/8` -/
def P13278597444828167793.Spec : Prop :=
  ∀ n, P13278597444828167793.a n = (A316729 n : ℚ)

end A316729

/-! ## A316729.P15029514124898493677

`∑[n*(4^gcd(2, n)-3)]`
-/

namespace A316729.P15029514124898493677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((4 ^ Nat.gcd 2 n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316729.P15029514124898493677

namespace A316729

/-- `∑[n*(4^gcd(2, n)-3)]` -/
def P15029514124898493677.Spec : Prop :=
  ∀ n, P15029514124898493677.a n = A316729 n

end A316729

/-! ## A316729.P16076343674049122013

`∑[n*(gcd(4, 2*n)²-3)]`
-/

namespace A316729.P16076343674049122013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.gcd 4 (2 * n) ^ 2 : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316729.P16076343674049122013

namespace A316729

/-- `∑[n*(gcd(4, 2*n)²-3)]` -/
def P16076343674049122013.Spec : Prop :=
  ∀ n, P16076343674049122013.a n = A316729 n

end A316729

/-! ## A316729.P15871343681953682218

`a(n-1)+n*(((-1)^n+3)²-3)` with `a(0)=0`
-/

namespace A316729.P15871343681953682218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * (((-1) ^ n + 3) ^ 2 - 3)

end

end A316729.P15871343681953682218

namespace A316729

/-- `a(n-1)+n*(((-1)^n+3)²-3)` -/
def P15871343681953682218.Spec : Prop :=
  ∀ n, P15871343681953682218.a n = A316729 n

end A316729

/-! ## A316729.P6828528930663206917

`∑[A317326(n)]`
-/

namespace A316729.P6828528930663206917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316729.P6828528930663206917

namespace A316729

/-- `∑[A317326(n)]` -/
def P6828528930663206917.Spec : Prop :=
  ∀ n, P6828528930663206917.a n = A316729 n

end A316729

/-! ## A316729.P6846580613103687674

`A303812(n)+A110660(n)`
-/

namespace A316729.P6846580613103687674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303812 n + A110660 n

end

end A316729.P6846580613103687674

namespace A316729

/-- `A303812(n)+A110660(n)` -/
def P6846580613103687674.Spec : Prop :=
  ∀ n, P6846580613103687674.a n = A316729 n

end A316729

/-! ## A316729.P101517852038875761

`∪[A195028(n), A254474(n)]`
-/

namespace A316729.P101517852038875761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254474 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316729.P101517852038875761

namespace A316729

/-- `∪[A195028(n), A254474(n)]` -/
def P101517852038875761.Spec : Prop :=
  ∀ n, (P101517852038875761.a n : ℤ) = A316729 n

end A316729

/-! ## A316729.P5170297117933957424

`A262221(n)-A104777(n+1)`
-/

namespace A316729.P5170297117933957424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n - A104777 (n + 1)

end

end A316729.P5170297117933957424

namespace A316729

/-- `A262221(n)-A104777(n+1)` -/
def P5170297117933957424.Spec : Prop :=
  ∀ n, P5170297117933957424.a n = A316729 n

end A316729

/-! ## A316729.P18121199592261907262

`A316724(n)+2*A110660(n)`
-/

namespace A316729.P18121199592261907262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316724 n + 2 * A110660 n

end

end A316729.P18121199592261907262

namespace A316729

/-- `A316724(n)+2*A110660(n)` -/
def P18121199592261907262.Spec : Prop :=
  ∀ n, P18121199592261907262.a n = A316729 n

end A316729

/-! ## A316729.P9981616540638215497

`A303815(n)+A110660(n)/2`
-/

namespace A316729.P9981616540638215497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303815 n : ℚ) + (A110660 n : ℚ) / 2

end

end A316729.P9981616540638215497

namespace A316729

/-- `A303815(n)+A110660(n)/2` -/
def P9981616540638215497.Spec : Prop :=
  ∀ n, P9981616540638215497.a n = (A316729 n : ℚ)

end A316729

/-! ## A316729.P15000026935456316558

`2*A277082(n)-A317300(n)`
-/

namespace A316729.P15000026935456316558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277082 n - A317300 n

end

end A316729.P15000026935456316558

namespace A316729

/-- `2*A277082(n)-A317300(n)` -/
def P15000026935456316558.Spec : Prop :=
  ∀ n, P15000026935456316558.a n = A316729 n

end A316729

/-! ## A316729.P17647987014496728632

`2*A303815(n)-A303812(n)`
-/

namespace A316729.P17647987014496728632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303815 n - A303812 n

end

end A316729.P17647987014496728632

namespace A316729

/-- `2*A303815(n)-A303812(n)` -/
def P17647987014496728632.Spec : Prop :=
  ∀ n, P17647987014496728632.a n = A316729 n

end A316729

/-! ## A316729.P16139022954180020287

`2*A303812(n)-A316724(n)`
-/

namespace A316729.P16139022954180020287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303812 n - A316724 n

end

end A316729.P16139022954180020287

namespace A316729

/-- `2*A303812(n)-A316724(n)` -/
def P16139022954180020287.Spec : Prop :=
  ∀ n, P16139022954180020287.a n = A316729 n

end A316729

/-! ## A316729.P4817443407091126539

`2*A316725(n)-A303814(n)`
-/

namespace A316729.P4817443407091126539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316725 n - A303814 n

end

end A316729.P4817443407091126539

namespace A316729

/-- `2*A316725(n)-A303814(n)` -/
def P4817443407091126539.Spec : Prop :=
  ∀ n, P4817443407091126539.a n = A316729 n

end A316729

/-! ## A316729.P7248368536091466834

`A372718(n+1)-A152950(n+1)`
-/

namespace A316729.P7248368536091466834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372718 (n + 1) - A152950 (n + 1)

end

end A316729.P7248368536091466834

namespace A316729

/-- `A372718(n+1)-A152950(n+1)` -/
def P7248368536091466834.Spec : Prop :=
  ∀ n, P7248368536091466834.a n = A316729 n

end A316729

/-! ## A316729.P15203321708692843119

`2*A274979(n+1)-A000217(n)`
-/

namespace A316729.P15203321708692843119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274979 (n + 1) - A000217 n

end

end A316729.P15203321708692843119

namespace A316729

/-- `2*A274979(n+1)-A000217(n)` -/
def P15203321708692843119.Spec : Prop :=
  ∀ n, P15203321708692843119.a n = A316729 n

end A316729

/-! ## A316729.P1531875154334433976

`2*A218864(n+1)-A074377(n)`
-/

namespace A316729.P1531875154334433976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218864 (n + 1) - A074377 n

end

end A316729.P1531875154334433976

namespace A316729

/-- `2*A218864(n+1)-A074377(n)` -/
def P1531875154334433976.Spec : Prop :=
  ∀ n, P1531875154334433976.a n = A316729 n

end A316729

/-! ## A316729.P12883945875959240252

`2*A303813(n)-A001082(n+1)`
-/

namespace A316729.P12883945875959240252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303813 n - A001082 (n + 1)

end

end A316729.P12883945875959240252

namespace A316729

/-- `2*A303813(n)-A001082(n+1)` -/
def P12883945875959240252.Spec : Prop :=
  ∀ n, P12883945875959240252.a n = A316729 n

end A316729

/-! ## A316729.P14224493838894539410

`2*A303303(n)-A274978(n+1)`
-/

namespace A316729.P14224493838894539410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303303 n - A274978 (n + 1)

end

end A316729.P14224493838894539410

namespace A316729

/-- `2*A303303(n)-A274978(n+1)` -/
def P14224493838894539410.Spec : Prop :=
  ∀ n, P14224493838894539410.a n = A316729 n

end A316729

/-! ## A316729.P12564864339974336763

`2*A303814(n)-A274979(n+1)`
-/

namespace A316729.P12564864339974336763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303814 n - A274979 (n + 1)

end

end A316729.P12564864339974336763

namespace A316729

/-- `2*A303814(n)-A274979(n+1)` -/
def P12564864339974336763.Spec : Prop :=
  ∀ n, P12564864339974336763.a n = A316729 n

end A316729

/-!
# A316730: Number of permutations of {0,1,...,2n+2} with first element n whose sequence of ascents and descents forms a Dyck path.

The programs for A316730, there is no canonical definition to state claims against.
-/

/-! ## A316730.P16693874376007311062

`A316728((n+1)²+n)`
-/

namespace A316730.P16693874376007311062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316728 ((n + 1) ^ 2 + n)

end

end A316730.P16693874376007311062

/-! ## A316730.P7453832881945056116

`or(1, A316728(A028387(n)))`
-/

namespace A316730.P7453832881945056116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316728 (A028387 n).toNat)

end

end A316730.P7453832881945056116

/-! ## A316730.P17776452348027602857

`record[A316728(∑[A270059(n)])]`
-/

namespace A316730.P17776452348027602857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316728 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316730.P17776452348027602857

/-! ## A316730.P16979475670479952865

`record[A316728(n)/A014721(n+1)]`
-/

namespace A316730.P16979475670479952865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316728 n : ℚ) / (A014721 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316730.P16979475670479952865

/-! ## A316730.P15970953992106707761

`record[A316728(n)/A014467(n+1)]`
-/

namespace A316730.P15970953992106707761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316728 n : ℚ) / (A014467 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316730.P15970953992106707761

/-!
# A316731: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316731, there is no canonical definition to state claims against.
-/

/-! ## A316731.P16621049255378465928

`A316733(∑[4*n]+1)`
-/

namespace A316731.P16621049255378465928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316731.P16621049255378465928

/-! ## A316731.P5376979246792948138

`and(-1, A316733(A001844(n)))`
-/

namespace A316731.P5376979246792948138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316733 (A001844 n).toNat)

end

end A316731.P5376979246792948138

/-! ## A316731.P7315128303389558136

`record[A003982(n)*A316733(n+1)]`
-/

namespace A316731.P7315128303389558136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316731.P7315128303389558136

/-! ## A316731.P18194093671292415224

`record[A214505(n)*A316733(n+1)]`
-/

namespace A316731.P18194093671292415224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A316733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316731.P18194093671292415224

/-! ## A316731.P9039013255640533011

`record[root(A316733(n+1), A059674(n))]`
-/

namespace A316731.P9039013255640533011
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316733 (n + 1) : ℝ) ^ (1 / (A059674 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316731.P9039013255640533011

/-!
# A316732: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316732, there is no canonical definition to state claims against.
-/

/-! ## A316732.P1273433992333881623

`A316733(A374008(n+1))`
-/

namespace A316732.P1273433992333881623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (A374008 (n + 1)).toNat

end

end A316732.P1273433992333881623

/-! ## A316732.P15109159159043542659

`A316733(A167487(n+5))`
-/

namespace A316732.P15109159159043542659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (A167487 (n + 5)).toNat

end

end A316732.P15109159159043542659

/-! ## A316732.P13078783099944564937

`A316733(A056119(n)+28)`
-/

namespace A316732.P13078783099944564937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (A056119 n + 28).toNat

end

end A316732.P13078783099944564937

/-! ## A316732.P3370650592691820960

`A316733(eq[11, A066657(n)])`
-/

namespace A316732.P3370650592691820960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316732.P3370650592691820960

/-! ## A316732.P15037691512066934897

`A316733(A166136(n+5)+1)`
-/

namespace A316732.P15037691512066934897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (A166136 (n + 5) + 1).toNat

end

end A316732.P15037691512066934897

/-!
# A316734: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316734, there is no canonical definition to state claims against.
-/

/-! ## A316734.P6364357018736211680

`A316740(∑[4*n]+1)`
-/

namespace A316734.P6364357018736211680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316734.P6364357018736211680

/-! ## A316734.P6239579745398758290

`record[A316740(Δ[A235355(n)])]`
-/

namespace A316734.P6239579745398758290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316734.P6239579745398758290

/-! ## A316734.P13096741049133309226

`record[A316740(A330613(n+1))]`
-/

namespace A316734.P13096741049133309226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316734.P13096741049133309226

/-! ## A316734.P287331217710794983

`A316740(A001844(n))+char[10]`
-/

namespace A316734.P287331217710794983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316734.P287331217710794983

/-! ## A316734.P6597322152602203252

`record[A003982(n)*A316740(n+1)]`
-/

namespace A316734.P6597322152602203252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316734.P6597322152602203252

/-!
# A316735: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316735, there is no canonical definition to state claims against.
-/

/-! ## A316735.P7304442289426978833

`A316740(∑[n+2]+4)`
-/

namespace A316735.P7304442289426978833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316735.P7304442289426978833

/-! ## A316735.P2715008977821400875

`A316740(A167614(n+1))+A185284(n)`
-/

namespace A316735.P2715008977821400875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A167614 (n + 1)).toNat + A185284 n

end

end A316735.P2715008977821400875

/-! ## A316735.P15451977152600738359

`A316740(A167614(n+1))%A220852(n)`
-/

namespace A316735.P15451977152600738359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316740 (A167614 (n + 1)).toNat) (A220852 n)

end

end A316735.P15451977152600738359

/-! ## A316735.P6213980256215075257

`lcm(A020985(n), A316740(A167614(n+1)))`
-/

namespace A316735.P6213980256215075257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A316740 (A167614 (n + 1)).toNat)

end

end A316735.P6213980256215075257

/-! ## A316735.P1767504737061184123

`or(A000007(n), A316740(A167614(n+1)))`
-/

namespace A316735.P1767504737061184123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A316740 (A167614 (n + 1)).toNat)

end

end A316735.P1767504737061184123

/-!
# A316736: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316736, there is no canonical definition to state claims against.
-/

/-! ## A316736.P8376138476152769825

`A316740(A374004(n+1))`
-/

namespace A316736.P8376138476152769825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A374004 (n + 1)).toNat

end

end A316736.P8376138476152769825

/-! ## A316736.P11224060495336047977

`A316740(A052905(n)+9)`
-/

namespace A316736.P11224060495336047977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A052905 n + 9).toNat

end

end A316736.P11224060495336047977

/-! ## A316736.P18074197739236109826

`A316740(A055999(n)+10)`
-/

namespace A316736.P18074197739236109826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A055999 n + 10).toNat

end

end A316736.P18074197739236109826

/-! ## A316736.P2936651512625267860

`A316740(A167614(n+2)+1)`
-/

namespace A316736.P2936651512625267860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A167614 (n + 2) + 1).toNat

end

end A316736.P2936651512625267860

/-! ## A316736.P11203276289292713392

`A316740(A166136(n+2)-2)`
-/

namespace A316736.P11203276289292713392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A166136 (n + 2) - 2).toNat

end

end A316736.P11203276289292713392

/-!
# A316737: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316737, there is no canonical definition to state claims against.
-/

/-! ## A316737.P16891622684618847140

`A316740(A374005(n+1))`
-/

namespace A316737.P16891622684618847140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A374005 (n + 1)).toNat

end

end A316737.P16891622684618847140

/-! ## A316737.P13758442531204356759

`A316740(A167499(n+3))`
-/

namespace A316737.P13758442531204356759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A167499 (n + 3)).toNat

end

end A316737.P13758442531204356759

/-! ## A316737.P17097912440336844263

`A316740(A056000(n)+15)`
-/

namespace A316737.P17097912440336844263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A056000 n + 15).toNat

end

end A316737.P17097912440336844263

/-! ## A316737.P14105517790245252655

`A316740(A055998(n+2)+8)`
-/

namespace A316737.P14105517790245252655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A055998 (n + 2) + 8).toNat

end

end A316737.P14105517790245252655

/-! ## A316737.P1706386876074394250

`A316740(A052905(n+1)+10)`
-/

namespace A316737.P1706386876074394250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A052905 (n + 1) + 10).toNat

end

end A316737.P1706386876074394250

/-!
# A316738: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316738, there is no canonical definition to state claims against.
-/

/-! ## A316738.P10668303583987938723

`A316740(A374007(n+1))`
-/

namespace A316738.P10668303583987938723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A374007 (n + 1)).toNat

end

end A316738.P10668303583987938723

/-! ## A316738.P13966008503541675289

`A316740(A166136(n+4))`
-/

namespace A316738.P13966008503541675289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A166136 (n + 4)).toNat

end

end A316738.P13966008503541675289

/-! ## A316738.P6794383956550491796

`A316740(A167614(n+4)+3)`
-/

namespace A316738.P6794383956550491796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A167614 (n + 4) + 3).toNat

end

end A316738.P6794383956550491796

/-! ## A316738.P6059640690790872082

`A316740(A000124(n+5)+5)`
-/

namespace A316738.P6059640690790872082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A000124 (n + 5) + 5).toNat

end

end A316738.P6059640690790872082

/-! ## A316738.P10000351958123325156

`A316740(A000217(n+5)+6)`
-/

namespace A316738.P10000351958123325156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A000217 (n + 5) + 6).toNat

end

end A316738.P10000351958123325156

/-!
# A316739: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316739, there is no canonical definition to state claims against.
-/

/-! ## A316739.P8929434940153092126

`A316740(A374008(n+1))`
-/

namespace A316739.P8929434940153092126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A374008 (n + 1)).toNat

end

end A316739.P8929434940153092126

/-! ## A316739.P3672454665560878768

`A316740(A056119(n)+28)`
-/

namespace A316739.P3672454665560878768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A056119 n + 28).toNat

end

end A316739.P3672454665560878768

/-! ## A316739.P5792651520353523939

`A316740(A055998(n+4)+10)`
-/

namespace A316739.P5792651520353523939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A055998 (n + 4) + 10).toNat

end

end A316739.P5792651520353523939

/-! ## A316739.P49215449236291029

`A316740(eq[8, A131818(n+1)])`
-/

namespace A316739.P49215449236291029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316739.P49215449236291029

/-! ## A316739.P8985770300589979643

`A316740(A055999(n+4))`
-/

namespace A316739.P8985770300589979643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (A055999 (n + 4)).toNat

end

end A316739.P8985770300589979643

/-!
# A316740: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316740, there is no canonical definition to state claims against.
-/

/-! ## A316740.P5902795760862374908

`A305089(n+1)+A037800(A188910(n+1))`
-/

namespace A316740.P5902795760862374908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (n + 1) + A037800 (A188910 (n + 1)).toNat

end

end A316740.P5902795760862374908

/-! ## A316740.P1919233497376074513

`A305089(n+1)+A037800(A189111(n+1))`
-/

namespace A316740.P1919233497376074513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (n + 1) + A037800 (A189111 (n + 1)).toNat

end

end A316740.P1919233497376074513

/-! ## A316740.P4602692611228124630

`A305089(n+1)-A178798(A008292(n+1))`
-/

namespace A316740.P4602692611228124630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (n + 1) - A178798 (A008292 (n + 1)).toNat

end

end A316740.P4602692611228124630

/-! ## A316740.P9197547033966323824

`A305089(n+1)-A178798(A006046(n))`
-/

namespace A316740.P9197547033966323824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (n + 1) - A178798 (A006046 n).toNat

end

end A316740.P9197547033966323824

/-! ## A316740.P14299868095646038616

`A305089(n+1)+A185274(A299314(n+1))`
-/

namespace A316740.P14299868095646038616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (n + 1) + A185274 (A299314 (n + 1)).toNat

end

end A316740.P14299868095646038616

/-!
# A316742: Stepping through the Mersenne sequence (A000225) one step back, two steps forward.

The programs for A316742, the canonical program `A316742.P1027657054092603322` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316742 has offset 0).

The definition of A316742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316742.P1027657054092603322

`2*a(n-2)+1` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316742

/-- `2*a(n-2)+1` -/
def P1027657054092603322.Spec : Prop :=
  ∀ n, (P1027657054092603322.a n : ℤ) = A316742 n

theorem P1027657054092603322.correct : P1027657054092603322.Spec := by
  intro n
  simp only [A316742]

end A316742

/-! ## A316742.P4654488508104766448

`(1+(-1)^n)*(2^(n/2)-2^((n-3)/2))+2^((n-1)/2)-1`
-/

namespace A316742.P4654488508104766448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ n : ℝ) * ((2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) - (2 : ℝ) ^ (((n : ℤ) - 3 : ℚ) / 2 : ℝ)) + (2 : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ) - 1

end

end A316742.P4654488508104766448

namespace A316742

/-- `(1+(-1)^n)*(2^(n/2)-2^((n-3)/2))+2^((n-1)/2)-1` -/
def P4654488508104766448.Spec : Prop :=
  ∀ n, P4654488508104766448.a n = (A316742 n : ℝ)

end A316742

/-! ## A316742.P8666277548553401296

`or(1, 2*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A316742.P8666277548553401296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lor 1 (2 * a (n - 2))

end

end A316742.P8666277548553401296

namespace A316742

/-- `or(1, 2*a(n-2))` -/
def P8666277548553401296.Spec : Prop :=
  ∀ n, (P8666277548553401296.a n : ℤ) = A316742 n

end A316742

/-! ## A316742.P4337888405020789039

`xor(1, 2*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A316742.P4337888405020789039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.xor 1 (2 * a (n - 2))

end

end A316742.P4337888405020789039

namespace A316742

/-- `xor(1, 2*a(n-2))` -/
def P4337888405020789039.Spec : Prop :=
  ∀ n, (P4337888405020789039.a n : ℤ) = A316742 n

end A316742

/-! ## A316742.P11186972647927594218

`∑[2*a(n-2)]` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A316742.P11186972647927594218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316742.P11186972647927594218

namespace A316742

/-- `∑[2*a(n-2)]` -/
def P11186972647927594218.Spec : Prop :=
  ∀ n, P11186972647927594218.a n = A316742 n

end A316742

/-! ## A316742.P13058632714883819830

`or(a(n-2)+1, a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A316742.P13058632714883819830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lor (a (n - 2) + 1) (a (n - 2))

end

end A316742.P13058632714883819830

namespace A316742

/-- `or(a(n-2)+1, a(n-2))` -/
def P13058632714883819830.Spec : Prop :=
  ∀ n, (P13058632714883819830.a n : ℤ) = A316742 n

end A316742

/-! ## A316742.P7246668839371441505

`xor(a(n-2)+1, a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A316742.P7246668839371441505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.xor (a (n - 2) + 1) (a (n - 2))

end

end A316742.P7246668839371441505

namespace A316742

/-- `xor(a(n-2)+1, a(n-2))` -/
def P7246668839371441505.Spec : Prop :=
  ∀ n, (P7246668839371441505.a n : ℤ) = A316742 n

end A316742

/-! ## A316742.P18097526701597314574

`abs(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=0`
-/

namespace A316742.P18097526701597314574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A316742.P18097526701597314574

namespace A316742

/-- `abs(a(n-2)+a(n-2)+1)` -/
def P18097526701597314574.Spec : Prop :=
  ∀ n, (P18097526701597314574.a n : ℤ) = A316742 n

theorem P18097526701597314574.correct : P18097526701597314574.Spec := by
  intro n
  simp only [A316742, Nat.add_sub_cancel, A316742.P18097526701597314574.a, A316742.P1027657054092603322.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A316742

/-! ## A316742.P4589146640726058037

`floor(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A316742.P4589146640726058037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A316742.P4589146640726058037

namespace A316742

/-- `floor(a(n-2)+a(n-2)+1)` -/
def P4589146640726058037.Spec : Prop :=
  ∀ n, (P4589146640726058037.a n : ℤ) = A316742 n

theorem P4589146640726058037.correct : P4589146640726058037.Spec := by
  intro n
  simp only [A316742, Nat.add_sub_cancel, A316742.P4589146640726058037.a, A316742.P1027657054092603322.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A316742

/-! ## A316742.P1135227097131953344

`ceil(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A316742.P1135227097131953344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A316742.P1135227097131953344

namespace A316742

/-- `ceil(a(n-2)+a(n-2)+1)` -/
def P1135227097131953344.Spec : Prop :=
  ∀ n, (P1135227097131953344.a n : ℤ) = A316742 n

theorem P1135227097131953344.correct : P1135227097131953344.Spec := by
  intro n
  simp only [A316742, Nat.add_sub_cancel, A316742.P1135227097131953344.a, A316742.P1027657054092603322.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A316742

/-! ## A316742.P15803569200402778557

`round(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A316742.P15803569200402778557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A316742.P15803569200402778557

namespace A316742

/-- `round(a(n-2)+a(n-2)+1)` -/
def P15803569200402778557.Spec : Prop :=
  ∀ n, (P15803569200402778557.a n : ℤ) = A316742 n

theorem P15803569200402778557.correct : P15803569200402778557.Spec := by
  intro n
  simp only [A316742, Nat.add_sub_cancel, A316742.P15803569200402778557.a, A316742.P1027657054092603322.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A316742

/-! ## A316742.P12788852072486264337

`A000225(A028242(n))`
-/

namespace A316742.P12788852072486264337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A028242 n).toNat

end

end A316742.P12788852072486264337

namespace A316742

/-- `A000225(A028242(n))` -/
def P12788852072486264337.Spec : Prop :=
  ∀ n, P12788852072486264337.a n = A316742 n

end A316742

/-! ## A316742.P3641825292487481006

`A000225(∑[A280193(n)])`
-/

namespace A316742.P3641825292487481006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316742.P3641825292487481006

namespace A316742

/-- `A000225(∑[A280193(n)])` -/
def P3641825292487481006.Spec : Prop :=
  ∀ n, P3641825292487481006.a n = A316742 n

end A316742

/-! ## A316742.P10092539976678261629

`A387325(A168232(n+1))`
-/

namespace A316742.P10092539976678261629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 (A168232 (n + 1)).toNat

end

end A316742.P10092539976678261629

namespace A316742

/-- `A387325(A168232(n+1))` -/
def P10092539976678261629.Spec : Prop :=
  ∀ n, P10092539976678261629.a n = A316742 n

end A316742

/-! ## A316742.P2577983232262907395

`and(A052551(n), A052955(n))`
-/

namespace A316742.P2577983232262907395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A052955 n)

end

end A316742.P2577983232262907395

namespace A316742

/-- `and(A052551(n), A052955(n))` -/
def P2577983232262907395.Spec : Prop :=
  ∀ n, P2577983232262907395.a n = A316742 n

end A316742

/-! ## A316742.P7356661444909227650

`A052551(n)%A112032(n)`
-/

namespace A316742.P7356661444909227650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052551 n) (A112032 n)

end

end A316742.P7356661444909227650

namespace A316742

/-- `A052551(n)%A112032(n)` -/
def P7356661444909227650.Spec : Prop :=
  ∀ n, P7356661444909227650.a n = A316742 n

end A316742

/-! ## A316742.P3657600760238563649

`A052955(n)%A112032(n)`
-/

namespace A316742.P3657600760238563649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052955 n) (A112032 n)

end

end A316742.P3657600760238563649

namespace A316742

/-- `A052955(n)%A112032(n)` -/
def P3657600760238563649.Spec : Prop :=
  ∀ n, P3657600760238563649.a n = A316742 n

end A316742

/-!
# A316743: Discriminants of imaginary fields whose class group has exponent 2, negated.

The programs for A316743, there is no canonical definition to state claims against.
-/

/-! ## A316743.P3746657014703938656

`∩[A003644(n+1), A133288(n+1)]`
-/

namespace A316743.P3746657014703938656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316743.P3746657014703938656

/-! ## A316743.P16489539206239856985

`∩[A003657(n+1), A133288(n+1)]`
-/

namespace A316743.P16489539206239856985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316743.P16489539206239856985

/-! ## A316743.P10858950835899652297

`∩[A003644(n+1), A156683(n+1)]`
-/

namespace A316743.P10858950835899652297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316743.P10858950835899652297

/-! ## A316743.P391512462625444467

`∩[A003644(n+1), A333312(n+1)]`
-/

namespace A316743.P391512462625444467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316743.P391512462625444467

/-! ## A316743.P13664691347830166844

`∩[A003644(n+1), A346608(n+1)]`
-/

namespace A316743.P13664691347830166844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316743.P13664691347830166844

/-!
# A316744: a(n) is the smallest number having exactly n ways to be represented as sum of at least two consecutive positive integers and expressible as sum of n consecutive positive integers, or 0 if no such number exists.

The programs for A316744, there is no canonical definition to state claims against.
-/

/-! ## A316744.P9439255815372599979

`A174726(3*n+2)*A348199(A117228(n+3))`
-/

namespace A316744.P9439255815372599979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (3 * n + 2) * A348199 (A117228 (n + 3)).toNat

end

end A316744.P9439255815372599979

/-! ## A316744.P5804060980589210438

`A038547(n+3)*A348928(A041432(n))`
-/

namespace A316744.P5804060980589210438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (n + 3) * A348928 (A041432 n).toNat

end

end A316744.P5804060980589210438

/-!
# A316750: A self-"read and extend" sequence built following the rules visible in the Comments section.

The programs for A316750, there is no canonical definition to state claims against.
-/

/-! ## A316750.P2550140578229416087

`A316758(n+1)^A185036(n)!`
-/

namespace A316750.P2550140578229416087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316758 (n + 1) ^ Nat.factorial (A185036 n).toNat

end

end A316750.P2550140578229416087

/-! ## A316750.P9177947399010889156

`A316758(n+1)^A185274(n)!`
-/

namespace A316750.P9177947399010889156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316758 (n + 1) ^ Nat.factorial (A185274 n).toNat

end

end A316750.P9177947399010889156

/-! ## A316750.P6080368795530653074

`A316758(n+1)%record[A316791(n)]`
-/

namespace A316750.P6080368795530653074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316758 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A316750.P6080368795530653074

/-! ## A316750.P9695872387654684476

`A316758(n%A061955(n+1)+1)`
-/

namespace A316750.P9695872387654684476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316758 (Int.tmod (n : ℤ) (A061955 (n + 1)) + 1).toNat

end

end A316750.P9695872387654684476

/-! ## A316750.P337328594875924284

`A316758(n+1)/(A316768(n+1)%2)!`
-/

namespace A316750.P337328594875924284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316758 (n + 1) : ℚ) / (Nat.factorial (Int.tmod (A316768 (n + 1)) 2).toNat : ℚ)

end

end A316750.P337328594875924284

/-!
# A316751: Number of nXn 0..1 arrays with every element unequal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316751, there is no canonical definition to state claims against.
-/

/-! ## A316751.P10713843632504239202

`A316757(∑[4*n]+1)`
-/

namespace A316751.P10713843632504239202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316751.P10713843632504239202

/-! ## A316751.P15522677831913474733

`record[A316757(Δ[A235355(n)])]`
-/

namespace A316751.P15522677831913474733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316751.P15522677831913474733

/-! ## A316751.P9260572175003247481

`record[A316757(A272267(n+1))]`
-/

namespace A316751.P9260572175003247481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316751.P9260572175003247481

/-! ## A316751.P8307698159575675615

`record[A316757(A330613(n+1))]`
-/

namespace A316751.P8307698159575675615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316751.P8307698159575675615

/-! ## A316751.P6576147870110376425

`A316757(A001844(n))+char[10]`
-/

namespace A316751.P6576147870110376425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316751.P6576147870110376425

/-!
# A316752: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316752, there is no canonical definition to state claims against.
-/

/-! ## A316752.P6213724725539623023

`A316757(∑[n+2]+4)`
-/

namespace A316752.P6213724725539623023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316752.P6213724725539623023

/-! ## A316752.P18049054188649139041

`A316757(A046691(n)+7)+char[19]`
-/

namespace A316752.P18049054188649139041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316752.P18049054188649139041

/-! ## A316752.P16714145093715489838

`or(char[1], A316757(A055998(n)+6))`
-/

namespace A316752.P16714145093715489838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A316757 (A055998 n + 6).toNat)

end

end A316752.P16714145093715489838

/-! ## A316752.P884612035228898229

`A316757(A167614(n+1))^ceil(acot(n))`
-/

namespace A316752.P884612035228898229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316757 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A316752.P884612035228898229

/-! ## A316752.P5097795223616200605

`A316757(A167614(n+1))+A185284(n)`
-/

namespace A316752.P5097795223616200605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A167614 (n + 1)).toNat + A185284 n

end

end A316752.P5097795223616200605

/-!
# A316753: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316753, there is no canonical definition to state claims against.
-/

/-! ## A316753.P15564318825030250878

`A316757(∑[n+3]+7)`
-/

namespace A316753.P15564318825030250878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316753.P15564318825030250878

/-! ## A316753.P13705612111999247728

`A316757(A055999(n)+10)+char[18]`
-/

namespace A316753.P13705612111999247728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316753.P13705612111999247728

/-! ## A316753.P729933480278372100

`A007318(C(2, n))*A316757(A055999(n)+10)`
-/

namespace A316753.P729933480278372100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A316757 (A055999 n + 10).toNat

end

end A316753.P729933480278372100

/-! ## A316753.P9579956978363378056

`A316757(A055999(n)+10)/A007318(C(n, 2))`
-/

namespace A316753.P9579956978363378056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316757 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A316753.P9579956978363378056

/-! ## A316753.P3306554330147018313

`A316757(A055998(n+2))%A046444(n+1)`
-/

namespace A316753.P3306554330147018313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316757 (A055998 (n + 2)).toNat) (A046444 (n + 1))

end

end A316753.P3306554330147018313

/-!
# A316754: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316754, there is no canonical definition to state claims against.
-/

/-! ## A316754.P13299076223555437442

`A316757(C(n+6, 2)-n)`
-/

namespace A316754.P13299076223555437442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (Nat.choose (n + 6) 2 - n)

end

end A316754.P13299076223555437442

/-! ## A316754.P15016406255361534947

`A316757(A374005(n+1))`
-/

namespace A316754.P15016406255361534947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A374005 (n + 1)).toNat

end

end A316754.P15016406255361534947

/-! ## A316754.P9165838296153426742

`A316757(A167499(n+3))`
-/

namespace A316754.P9165838296153426742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A167499 (n + 3)).toNat

end

end A316754.P9165838296153426742

/-! ## A316754.P13112518374309524797

`A316757(A155212(n)+13)`
-/

namespace A316754.P13112518374309524797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A155212 n + 13).toNat

end

end A316754.P13112518374309524797

/-! ## A316754.P12258881734764432209

`A316757(A056000(n)+15)`
-/

namespace A316754.P12258881734764432209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A056000 n + 15).toNat

end

end A316754.P12258881734764432209

/-!
# A316755: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316755, there is no canonical definition to state claims against.
-/

/-! ## A316755.P7435068219689142916

`A316757(A374007(n+1))`
-/

namespace A316755.P7435068219689142916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A374007 (n + 1)).toNat

end

end A316755.P7435068219689142916

/-! ## A316755.P4035380869172120142

`A316757(A056115(n)+21)`
-/

namespace A316755.P4035380869172120142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A056115 n + 21).toNat

end

end A316755.P4035380869172120142

/-! ## A316755.P3105370769168441611

`A316757(A133263(n+5)+4)`
-/

namespace A316755.P3105370769168441611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A133263 (n + 5) + 4).toNat

end

end A316755.P3105370769168441611

/-! ## A316755.P5953784798861272356

`A316757(A000124(n+5)+5)`
-/

namespace A316755.P5953784798861272356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A000124 (n + 5) + 5).toNat

end

end A316755.P5953784798861272356

/-! ## A316755.P4836539788677013246

`A316757(A025747(n+4)+6)`
-/

namespace A316755.P4836539788677013246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A025747 (n + 4) + 6).toNat

end

end A316755.P4836539788677013246

/-!
# A316756: Number of n X 7 0..1 arrays with every element unequal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316756, there is no canonical definition to state claims against.
-/

/-! ## A316756.P11418657248998600669

`A316757(A374008(n+1))`
-/

namespace A316756.P11418657248998600669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A374008 (n + 1)).toNat

end

end A316756.P11418657248998600669

/-! ## A316756.P1781519867009505935

`A316757(A056119(n)+28)`
-/

namespace A316756.P1781519867009505935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A056119 n + 28).toNat

end

end A316756.P1781519867009505935

/-! ## A316756.P12976562859062975826

`A316757(eq[11, A066657(n)])`
-/

namespace A316756.P12976562859062975826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316756.P12976562859062975826

/-! ## A316756.P12808298636974701571

`A316757(A167499(n+5)+2)`
-/

namespace A316756.P12808298636974701571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A167499 (n + 5) + 2).toNat

end

end A316756.P12808298636974701571

/-! ## A316756.P6453413724449263104

`A316757(A000124(n+6)+6)`
-/

namespace A316756.P6453413724449263104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (A000124 (n + 6) + 6).toNat

end

end A316756.P6453413724449263104

/-!
# A316757: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316757, there is no canonical definition to state claims against.
-/

/-! ## A316757.P6687142862896019834

`A347689(A309876(n))+A305097(n+1)`
-/

namespace A316757.P6687142862896019834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A309876 n).toNat + A305097 (n + 1)

end

end A316757.P6687142862896019834

/-! ## A316757.P13493646312607713849

`or(A122879(A008300(n)), A305097(n+1))`
-/

namespace A316757.P13493646312607713849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122879 (A008300 n).toNat) (A305097 (n + 1))

end

end A316757.P13493646312607713849

/-! ## A316757.P3935951196669726281

`or(A124762(A008459(n)), A305097(n+1))`
-/

namespace A316757.P3935951196669726281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124762 (A008459 n).toNat) (A305097 (n + 1))

end

end A316757.P3935951196669726281

/-! ## A316757.P2428036119352763244

`A316867(A260340(n)²)+A305097(n+1)`
-/

namespace A316757.P2428036119352763244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A260340 n ^ 2).toNat + A305097 (n + 1)

end

end A316757.P2428036119352763244

/-! ## A316757.P1557857870353177577

`or(A268389(A038315(n)), A305097(n+1))`
-/

namespace A316757.P1557857870353177577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268389 (A038315 n).toNat) (A305097 (n + 1))

end

end A316757.P1557857870353177577

/-!
# A316759: Number of nXn 0..1 arrays with every element unequal to 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316759, there is no canonical definition to state claims against.
-/

/-! ## A316759.P4492125397467194955

`A316763(∑[4*n]+1)`
-/

namespace A316759.P4492125397467194955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316759.P4492125397467194955

/-! ## A316759.P8040193631388289648

`record[A316763(A272267(n+1))]`
-/

namespace A316759.P8040193631388289648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316759.P8040193631388289648

/-! ## A316759.P291944731684403140

`A316763(A001844(n))+char[9]`
-/

namespace A316759.P291944731684403140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316759.P291944731684403140

/-! ## A316759.P14966449458731098888

`A316763(A001844(n))/A047996(n)`
-/

namespace A316759.P14966449458731098888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316763 (A001844 n).toNat : ℚ) / (A047996 n : ℚ)

end

end A316759.P14966449458731098888

/-! ## A316759.P5578581335863149242

`C(A316763(A001844(n)), A341847(n))`
-/

namespace A316759.P5578581335863149242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A316763 (A001844 n).toNat).toNat (A341847 n).toNat

end

end A316759.P5578581335863149242

/-!
# A316760: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316760, there is no canonical definition to state claims against.
-/

/-! ## A316760.P8607762855367048693

`A316763(∑[n+4]+11)`
-/

namespace A316760.P8607762855367048693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A316760.P8607762855367048693

/-!
# A316761: Number of n X 6 0..1 arrays with every element unequal to 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316761, there is no canonical definition to state claims against.
-/

/-! ## A316761.P529211637940964602

`A316763(A374007(n+1))`
-/

namespace A316761.P529211637940964602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A374007 (n + 1)).toNat

end

end A316761.P529211637940964602

/-! ## A316761.P1019030337097695987

`A316763(A166136(n+4))`
-/

namespace A316761.P1019030337097695987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A166136 (n + 4)).toNat

end

end A316761.P1019030337097695987

/-! ## A316761.P6045359474347859509

`A316763(eq[7, A131818(n+1)])`
-/

namespace A316761.P6045359474347859509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316761.P6045359474347859509

/-! ## A316761.P3415475706309638804

`A316763(A052905(n+3))`
-/

namespace A316761.P3415475706309638804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A052905 (n + 3)).toNat

end

end A316761.P3415475706309638804

/-! ## A316761.P11053352220620590932

`A316763(A056119(n)+16)`
-/

namespace A316761.P11053352220620590932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A056119 n + 16).toNat

end

end A316761.P11053352220620590932

/-!
# A316762: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316762, there is no canonical definition to state claims against.
-/

/-! ## A316762.P14018400748905352097

`A316763(A374008(n+1))`
-/

namespace A316762.P14018400748905352097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A374008 (n + 1)).toNat

end

end A316762.P14018400748905352097

/-! ## A316762.P1414078003212370402

`A316763(A167487(n+5))`
-/

namespace A316762.P1414078003212370402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A167487 (n + 5)).toNat

end

end A316762.P1414078003212370402

/-! ## A316762.P5205609583195660828

`A316763(A056119(n)+28)`
-/

namespace A316762.P5205609583195660828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (A056119 n + 28).toNat

end

end A316762.P5205609583195660828

/-! ## A316762.P2895760874350163864

`A316763(eq[11, A066657(n)])`
-/

namespace A316762.P2895760874350163864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316762.P2895760874350163864

/-! ## A316762.P14881336759005000624

`A316763(eq[8, A131818(n+1)])`
-/

namespace A316762.P14881336759005000624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316762.P14881336759005000624

/-!
# A316766: Number of series-reduced locally stable rooted identity trees whose leaves form an integer partition of n.

The programs for A316766, there is no canonical definition to state claims against.
-/

/-! ## A316766.P10192799985913301319

`A079952(A001006(n)+2)`
-/

namespace A316766.P10192799985913301319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079952 (A001006 n + 2).toNat

end

end A316766.P10192799985913301319

/-! ## A316766.P14892951355871917141

`A249728(round(sqrt(A135750(n))))`
-/

namespace A316766.P14892951355871917141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (SequenceMachineLib.roundAway (Real.sqrt (A135750 n : ℝ))).toNat

end

end A316766.P14892951355871917141

/-! ## A316766.P7773619363352222209

`A055679(A122006(n+1)+4)`
-/

namespace A316766.P7773619363352222209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A122006 (n + 1) + 4).toNat

end

end A316766.P7773619363352222209

/-! ## A316766.P8945594253034694877

`ceil(A008611(ceil(A239249(n+1)/(n+1)))/(n+1))`
-/

namespace A316766.P8945594253034694877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008611 ⌈(A239249 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A316766.P8945594253034694877

/-! ## A316766.P5917335954991609330

`A256502(A309861(n)+A124497(n))`
-/

namespace A316766.P5917335954991609330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A309861 n + A124497 n).toNat

end

end A316766.P5917335954991609330

/-!
# A316768: Number of series-reduced locally stable rooted trees whose leaves form an integer partition of n.

The programs for A316768, there is no canonical definition to state claims against.
-/

/-! ## A316768.P14367654238581448288

`A226190(A115254(n+1))`
-/

namespace A316768.P14367654238581448288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A115254 (n + 1)).toNat

end

end A316768.P14367654238581448288

/-! ## A316768.P5531302067262070637

`A157271(A137213(n)+2+n)`
-/

namespace A316768.P5531302067262070637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A137213 n + 2 + (n : ℤ)).toNat

end

end A316768.P5531302067262070637

/-!
# A316769: Number of series-reduced locally stable rooted trees with n unlabeled leaves.

The programs for A316769, there is no canonical definition to state claims against.
-/

/-! ## A316769.P11829832530764717170

`A350799(A089976(n))`
-/

namespace A316769.P11829832530764717170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A089976 n).toNat

end

end A316769.P11829832530764717170

/-! ## A316769.P14202043954716942421

`A247911(A100882(∑[n]))`
-/

namespace A316769.P14202043954716942421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A100882 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A316769.P14202043954716942421

/-! ## A316769.P5190270807745333626

`A265918(A000142(n))+A075864(n)`
-/

namespace A316769.P5190270807745333626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265918 (A000142 n).toNat + A075864 n

end

end A316769.P5190270807745333626

/-! ## A316769.P6322018290649916673

`A226190(A218576(n)+A218551(n))`
-/

namespace A316769.P6322018290649916673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A218576 n + A218551 n).toNat

end

end A316769.P6322018290649916673

/-!
# A316770: Number of series-reduced locally nonintersecting rooted identity trees whose leaves form an integer partition of n.

The programs for A316770, there is no canonical definition to state claims against.
-/

/-! ## A316770.P3156624968720517658

`A051889(A051529(n))`
-/

namespace A316770.P3156624968720517658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A051529 n).toNat

end

end A316770.P3156624968720517658

/-! ## A316770.P14287800277218507650

`A261104(A274232(n))`
-/

namespace A316770.P14287800277218507650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A274232 n).toNat

end

end A316770.P14287800277218507650

/-! ## A316770.P8862250715298310439

`A261104(A394406(n))`
-/

namespace A316770.P8862250715298310439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A394406 n).toNat

end

end A316770.P8862250715298310439

/-! ## A316770.P867208036839734675

`A261104(A056333(n+1))`
-/

namespace A316770.P867208036839734675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A056333 (n + 1)).toNat

end

end A316770.P867208036839734675

/-! ## A316770.P720158152911850692

`A000267(A006966(n+2))-1`
-/

namespace A316770.P720158152911850692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A006966 (n + 2)).toNat - 1

end

end A316770.P720158152911850692

/-!
# A316771: Number of series-reduced locally nonintersecting rooted trees whose leaves form the integer partition with Heinz number n.

The programs for A316771, there is no canonical definition to state claims against.
-/

/-! ## A316771.P7948829774282236509

`A319572(lcm(A181819(n+1), A292886(n+1)))`
-/

namespace A316771.P7948829774282236509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319572 (Int.lcm (A181819 (n + 1)) (A292886 (n + 1)))

end

end A316771.P7948829774282236509

/-! ## A316771.P17930335696296167300

`A307597(A052905(A319138(n+1))²)`
-/

namespace A316771.P17930335696296167300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (A052905 (A319138 (n + 1)).toNat ^ 2).toNat

end

end A316771.P17930335696296167300

/-! ## A316771.P590918067342610073

`A234022(C(A319138(n+1), A320732(n+1)))`
-/

namespace A316771.P590918067342610073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (Nat.choose (A319138 (n + 1)).toNat (A320732 (n + 1)).toNat)

end

end A316771.P590918067342610073

/-! ## A316771.P5931929915474753080

`and(A055642(A300716(n+1)), A300726(n+1))`
-/

namespace A316771.P5931929915474753080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055642 (A300716 (n + 1)).toNat) (A300726 (n + 1))

end

end A316771.P5931929915474753080

/-! ## A316771.P12115139978337827370

`A174725(A323300(n+1))%A004442(A022274(n))`
-/

namespace A316771.P12115139978337827370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174725 (A323300 (n + 1)).toNat) (A004442 (A022274 n).toNat)

end

end A316771.P12115139978337827370

/-!
# A316772: Number of series-reduced locally nonintersecting rooted trees whose leaves form an integer partition of n.

The programs for A316772, there is no canonical definition to state claims against.
-/

/-! ## A316772.P16471416097566392168

`A323088(∑[n+2]-2)+∑{digits}[n, and(8, #)/8]`
-/

namespace A316772.P16471416097566392168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323088 (∑ j ∈ Finset.range (n + 1), f1 j - 2) : ℚ) + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

end

end A316772.P16471416097566392168

/-! ## A316772.P9837556960121892205

`or(A091444(n), A323088(A055998(n)))`
-/

namespace A316772.P9837556960121892205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091444 n) (A323088 (A055998 n).toNat)

end

end A316772.P9837556960121892205

/-! ## A316772.P14370616116176883182

`A323088(A055998(n))+A070104(n+1)`
-/

namespace A316772.P14370616116176883182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323088 (A055998 n).toNat + A070104 (n + 1)

end

end A316772.P14370616116176883182

/-! ## A316772.P8016856351426830212

`or(A048158(n+1), A323088(A055998(n)))`
-/

namespace A316772.P8016856351426830212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048158 (n + 1)) (A323088 (A055998 n).toNat)

end

end A316772.P8016856351426830212

/-! ## A316772.P13023798812552367925

`or(A070102(n+1), A323088(A055998(n)))`
-/

namespace A316772.P13023798812552367925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070102 (n + 1)) (A323088 (A055998 n).toNat)

end

end A316772.P13023798812552367925

/-!
# A316774: a(n) = n for n < 2, a(n) = freq(a(n-1),n) + freq(a(n-2),n) for n >= 2, where freq(i,j) is the number of times i appears in [a(0),a(1),...,a(j-1)].

The programs for A316774, there is no canonical definition to state claims against.
-/

/-! ## A316774.P2862357599741325265

`A298167(n+1)+A001222(A215245(2*n))`
-/

namespace A316774.P2862357599741325265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298167 (n + 1) + A001222 (A215245 (2 * n)).toNat

end

end A316774.P2862357599741325265

/-!
# A316775: a(n) is the number of permutations of [1..n] that have the same number of inversions as non-inversions.

The programs for A316775, there is no canonical definition to state claims against.
-/

/-! ## A316775.P9318667282579974587

`∑[A056594(n)]*A000140(A028310(n))`
-/

namespace A316775.P9318667282579974587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000140 (A028310 n).toNat

end

end A316775.P9318667282579974587

/-! ## A316775.P18008154753609149752

`(1-A021913(n))*A000140(A028310(n))`
-/

namespace A316775.P18008154753609149752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A021913 n) * A000140 (A028310 n).toNat

end

end A316775.P18008154753609149752

/-! ## A316775.P9191918007455104480

`A000140(A028310(n))*A021913(n+2)`
-/

namespace A316775.P9191918007455104480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000140 (A028310 n).toNat * A021913 (n + 2)

end

end A316775.P9191918007455104480

/-!
# A316776: a(n) is the number of integers 0 < k < n such that n^2 - k^2 is a semiprime.

The programs for A316776, there is no canonical definition to state claims against.
-/

/-! ## A316776.P11742037911161120930

`A064911(Δ[n²])+A061357(n+1)`
-/

namespace A316776.P11742037911161120930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A061357 (n + 1)

end

end A316776.P11742037911161120930

/-! ## A316776.P17937381000242352611

`A117929(2*(n+1))+A064911(2*n+1)`
-/

namespace A316776.P17937381000242352611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (2 * (n + 1)) + A064911 (2 * n + 1)

end

end A316776.P17937381000242352611

/-! ## A316776.P16253163597355092793

`A303336(2*(n+1))-A303337(2*(n+1))`
-/

namespace A316776.P16253163597355092793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303336 (2 * (n + 1)) - A303337 (2 * (n + 1))

end

end A316776.P16253163597355092793

/-! ## A316776.P15524861376038684024

`A064911(2*n+1)+floor(A002372(n+1)/2)`
-/

namespace A316776.P15524861376038684024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * n + 1) + ⌊(A002372 (n + 1) : ℚ) / 2⌋

end

end A316776.P15524861376038684024

/-! ## A316776.P7829632539782077786

`A064911(2*n+1)+A154787(n+1)/(n+1)`
-/

namespace A316776.P7829632539782077786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064911 (2 * n + 1) : ℚ) + (A154787 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A316776.P7829632539782077786

/-! ## A316776.P18198426873934568005

`A101637(A053742(n))+A061357(n+1)`
-/

namespace A316776.P18198426873934568005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A053742 n).toNat + A061357 (n + 1)

end

end A316776.P18198426873934568005

/-! ## A316776.P13083180419120743939

`A064911(A005408(n))+A004526(A002372(n+1))`
-/

namespace A316776.P13083180419120743939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A005408 n).toNat + A004526 (A002372 (n + 1)).toNat

end

end A316776.P13083180419120743939

/-! ## A316776.P7224262635068668756

`A064911(A005408(n))+A004526(A035026(n+1))`
-/

namespace A316776.P7224262635068668756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A005408 n).toNat + A004526 (A035026 (n + 1)).toNat

end

end A316776.P7224262635068668756

/-! ## A316776.P18239582109265532218

`A154804(n+1)+A064911(A005408(n))-A101264(n)`
-/

namespace A316776.P18239582109265532218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (n + 1) + (A064911 (A005408 n).toNat - A101264 n)

end

end A316776.P18239582109265532218

/-! ## A316776.P16060877046173924314

`A064911(A005408(n))+A224709(n+1)-A224710(n+2)`
-/

namespace A316776.P16060877046173924314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A005408 n).toNat + (A224709 (n + 1) - A224710 (n + 2))

end

end A316776.P16060877046173924314

/-!
# A316777: a(n) = Sum_{k=1..n} (k!)^5.

The programs for A316777, there is no canonical definition to state claims against.
-/

/-! ## A316777.P3649879084416557183

`∑[(n+1)!^5]`
-/

namespace A316777.P3649879084416557183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316777.P3649879084416557183

/-! ## A316777.P15746600204028646832

`∑[∏[(n+1)^5]]`
-/

namespace A316777.P15746600204028646832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316777.P15746600204028646832

/-! ## A316777.P16279101497507084930

`a(n-1)+(n+1)!^5` with `a(0)=1`
-/

namespace A316777.P16279101497507084930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial (n + 1) ^ 5

end

end A316777.P16279101497507084930

/-! ## A316777.P7900961926062310477

`∏[(n+1)^5]+a(n-1)` with `a(0)=1`
-/

namespace A316777.P7900961926062310477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A316777.P7900961926062310477

/-!
# A316778: a(n) = exp(-1/2) * Sum_{k>=0} H_n(k) / (k!*2^k), where H_n(x) is n-th Hermite polynomial.

The programs for A316778, there is no canonical definition to state claims against.
-/

/-! ## A316778.P10862601758602919502

`A383711(A062471(n+1))+A157155(n)`
-/

namespace A316778.P10862601758602919502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383711 (A062471 (n + 1)).toNat + A157155 n

end

end A316778.P10862601758602919502

/-! ## A316778.P17611159428193189770

`A062108(A148434(n)*A331934(n+1))`
-/

namespace A316778.P17611159428193189770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A148434 n * A331934 (n + 1)).toNat

end

end A316778.P17611159428193189770

/-! ## A316778.P8622388174964651405

`A062108(lcm(A148434(n), A331934(n+1)))`
-/

namespace A316778.P8622388174964651405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.lcm (A148434 n) (A331934 (n + 1)))

end

end A316778.P8622388174964651405

/-!
# A316779: Expansion of 1 + (1/(1-x) + 1/(1-3*x))*x/2 + (1/(1-x) - 8/(1-2*x) + 9/(1-3*x))*x^5/2.

The programs for A316779, the canonical program `A316779.P9053244873008641727` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316779 has offset 0).

The definition of A316779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316779.P9053244873008641727

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=14, a(5)=42`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A316779

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P9053244873008641727.Spec : Prop :=
  ∀ n, P9053244873008641727.a n = A316779 n

theorem P9053244873008641727.correct : P9053244873008641727.Spec := by
  intro n
  simp only [A316779]

end A316779

/-! ## A316779.P11239541345363690785

`A124302(n)+A000392(A289207(n))`
-/

namespace A316779.P11239541345363690785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + A000392 (A289207 n).toNat

end

end A316779.P11239541345363690785

namespace A316779

/-- `A124302(n)+A000392(A289207(n))` -/
def P11239541345363690785.Spec : Prop :=
  ∀ n, P11239541345363690785.a n = A316779 n

end A316779

/-! ## A316779.P2843601836580055774

`A124302(n)+A000392(A004275(n)-n)`
-/

namespace A316779.P2843601836580055774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + A000392 (A004275 n - (n : ℤ)).toNat

end

end A316779.P2843601836580055774

namespace A316779

/-- `A124302(n)+A000392(A004275(n)-n)` -/
def P2843601836580055774.Spec : Prop :=
  ∀ n, P2843601836580055774.a n = A316779 n

end A316779

/-! ## A316779.P16685463959587954499

`A007051((n-1)%(n+1))+A000392(A289207(n))`
-/

namespace A316779.P16685463959587954499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat + A000392 (A289207 n).toNat

end

end A316779.P16685463959587954499

namespace A316779

/-- `A007051((n-1)%(n+1))+A000392(A289207(n))` -/
def P16685463959587954499.Spec : Prop :=
  ∀ n, P16685463959587954499.a n = A316779 n

end A316779

/-! ## A316779.P5649990805453172559

`A056504(A004273(n))+A000392(A289207(n))`
-/

namespace A316779.P5649990805453172559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 (A004273 n).toNat + A000392 (A289207 n).toNat

end

end A316779.P5649990805453172559

namespace A316779

/-- `A056504(A004273(n))+A000392(A289207(n))` -/
def P5649990805453172559.Spec : Prop :=
  ∀ n, P5649990805453172559.a n = A316779 n

end A316779

/-! ## A316779.P18381972164394800869

`A056504(A163985(n))+A000392(A289207(n))`
-/

namespace A316779.P18381972164394800869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 (A163985 n).toNat + A000392 (A289207 n).toNat

end

end A316779.P18381972164394800869

namespace A316779

/-- `A056504(A163985(n))+A000392(A289207(n))` -/
def P18381972164394800869.Spec : Prop :=
  ∀ n, P18381972164394800869.a n = A316779 n

end A316779

/-! ## A316779.P3879940702598178350

`A007051(A289207(n+1))+A000392(A289207(n))`
-/

namespace A316779.P3879940702598178350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A289207 (n + 1)).toNat + A000392 (A289207 n).toNat

end

end A316779.P3879940702598178350

namespace A316779

/-- `A007051(A289207(n+1))+A000392(A289207(n))` -/
def P3879940702598178350.Spec : Prop :=
  ∀ n, P3879940702598178350.a n = A316779 n

end A316779

/-! ## A316779.P17088256951922531121

`A000392(n)+A011782(n)+A000392(A289207(n))`
-/

namespace A316779.P17088256951922531121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n + (A011782 n + A000392 (A289207 n).toNat)

end

end A316779.P17088256951922531121

namespace A316779

/-- `A000392(n)+A011782(n)+A000392(A289207(n))` -/
def P17088256951922531121.Spec : Prop :=
  ∀ n, P17088256951922531121.a n = A316779 n

end A316779

/-! ## A316779.P9317767180708030867

`A094556(n)+A151575(n)+A000392(A289207(n))`
-/

namespace A316779.P9317767180708030867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n + (A151575 n + A000392 (A289207 n).toNat)

end

end A316779.P9317767180708030867

namespace A316779

/-- `A094556(n)+A151575(n)+A000392(A289207(n))` -/
def P9317767180708030867.Spec : Prop :=
  ∀ n, P9317767180708030867.a n = A316779 n

end A316779

/-! ## A316779.P12395847264316598465

`A001519(n)+A262600(n)+A000392(A289207(n))`
-/

namespace A316779.P12395847264316598465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + (A262600 n + A000392 (A289207 n).toNat)

end

end A316779.P12395847264316598465

namespace A316779

/-- `A001519(n)+A262600(n)+A000392(A289207(n))` -/
def P12395847264316598465.Spec : Prop :=
  ∀ n, P12395847264316598465.a n = A316779 n

end A316779

/-! ## A316779.P14251935408676426466

`A116410(n)+A000392(A289207(n))-A097861(n)`
-/

namespace A316779.P14251935408676426466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116410 n + (A000392 (A289207 n).toNat - A097861 n)

end

end A316779.P14251935408676426466

namespace A316779

/-- `A116410(n)+A000392(A289207(n))-A097861(n)` -/
def P14251935408676426466.Spec : Prop :=
  ∀ n, P14251935408676426466.a n = A316779 n

end A316779

/-! ## A316779.P9054367483690722104

`A000392(A289207(n))+A003462(A028310(n)-1)+1`
-/

namespace A316779.P9054367483690722104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (A289207 n).toNat + (A003462 (A028310 n - 1).toNat + 1)

end

end A316779.P9054367483690722104

namespace A316779

/-- `A000392(A289207(n))+A003462(A028310(n)-1)+1` -/
def P9054367483690722104.Spec : Prop :=
  ∀ n, P9054367483690722104.a n = A316779 n

end A316779

/-!
# A316780: a(n) is the least positive integer k such that ceiling(sqrt(A046315(n)*k))^2 - A046315(n)*k is a square.

The programs for A316780, there is no canonical definition to state claims against.
-/

/-! ## A316780.P18284529281157516673

`gcd(A275608(n+1), A318506(2^n))`
-/

namespace A316780.P18284529281157516673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275608 (n + 1)) (A318506 (2 ^ n))

end

end A316780.P18284529281157516673

/-! ## A316780.P11297955123791242852

`gcd(A000225(n), A014820(A085630(n)))`
-/

namespace A316780.P11297955123791242852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000225 n) (A014820 (A085630 n).toNat)

end

end A316780.P11297955123791242852

/-! ## A316780.P4328202018260839686

`A249298(gcd(A046315(n+1), A308583(n+1)))`
-/

namespace A316780.P4328202018260839686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249298 (Int.gcd (A046315 (n + 1)) (A308583 (n + 1)))

end

end A316780.P4328202018260839686

/-! ## A316780.P1120935529342974101

`gcd(A005117(A225124(n)), A278756(2*n+1))`
-/

namespace A316780.P1120935529342974101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005117 (A225124 n).toNat) (A278756 (2 * n + 1))

end

end A316780.P1120935529342974101

/-! ## A316780.P1997957201397604314

`A000265(A328964(n))%A005843(A205386(n+1))`
-/

namespace A316780.P1997957201397604314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A328964 n).toNat) (A005843 (A205386 (n + 1)).toNat)

end

end A316780.P1997957201397604314

/-!
# A316781: a(n) is the Sprague-Grundy value of the Node-Kayles game played on the graph of n diamonds linked at vertices of degree three.

The programs for A316781, there is no canonical definition to state claims against.
-/

/-! ## A316781.P17521489401008950838

`A286332(n+3)-4*char[2]`
-/

namespace A316781.P17521489401008950838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286332 (n + 3) - ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A316781.P17521489401008950838

/-! ## A316781.P5438472339488397185

`lcm(Δ[A051699(n)], A286332(n+3))`
-/

namespace A316781.P5438472339488397185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A286332 (n + 3))

end

end A316781.P5438472339488397185

/-! ## A316781.P8658426110394206859

`abs(abs(A286332(A004525(2*n)+3)-n)-n)`
-/

namespace A316781.P8658426110394206859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A286332 (A004525 (2 * n) + 3).toNat - (n : ℤ)| - (n : ℤ))|

end

end A316781.P8658426110394206859

/-! ## A316781.P18260587656229051538

`abs(abs(A286332(n+3)-n)%A258733(n+1)-n)`
-/

namespace A316781.P18260587656229051538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.tmod |A286332 (n + 3) - (n : ℤ)| (A258733 (n + 1)) - (n : ℤ))|

end

end A316781.P18260587656229051538

/-! ## A316781.P3561050469803781334

`A187829(n+6)%(A286332(n+3)-A187829(n+6))`
-/

namespace A316781.P3561050469803781334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187829 (n + 6)) (A286332 (n + 3) - A187829 (n + 6))

end

end A316781.P3561050469803781334

/-! ## A316781.P16168065257389597475

`and(A000225(A086960(n+1)), A286332(n+3))`
-/

namespace A316781.P16168065257389597475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A086960 (n + 1)).toNat) (A286332 (n + 3))

end

end A316781.P16168065257389597475

/-!
# A316782: Number of achiral tree-factorizations of n.

The programs for A316782, there is no canonical definition to state claims against.
-/

/-! ## A316782.P14264334304103337243

`A325393(A295931(n+1)+1)`
-/

namespace A316782.P14264334304103337243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (A295931 (n + 1) + 1).toNat

end

end A316782.P14264334304103337243

/-! ## A316782.P1638729535404757383

`A046523(A052409(n+1)-A052409(n²+1)+1)`
-/

namespace A316782.P1638729535404757383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A052409 (n + 1) - A052409 (n ^ 2 + 1) + 1).toNat

end

end A316782.P1638729535404757383

/-! ## A316782.P6988267836449328628

`A125173(A316789(n+1)²+1)`
-/

namespace A316782.P6988267836449328628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A316789 (n + 1) ^ 2 + 1).toNat

end

end A316782.P6988267836449328628

/-! ## A316782.P356839887924837341

`A000688(7*A316789(n+1)²)`
-/

namespace A316782.P356839887924837341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (7 * A316789 (n + 1) ^ 2).toNat

end

end A316782.P356839887924837341

/-! ## A316782.P631896654344701413

`∑{e}[A080214(ceil(A295920(n+1)²/2)+1), #]+1`
-/

namespace A316782.P631896654344701413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080214 (⌈(A295920 (n + 1) ^ 2 : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A316782.P631896654344701413

/-! ## A316782.P3376702788721135327

`A001222(A058682(A316789(n+1)+2)+2)`
-/

namespace A316782.P3376702788721135327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A058682 (A316789 (n + 1) + 2).toNat + 2).toNat

end

end A316782.P3376702788721135327

/-! ## A316782.P2185646705676164914

`A225541(A001358((A316789(n+1)+A316789(n+1))²))`
-/

namespace A316782.P2185646705676164914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A001358 ((A316789 (n + 1) + A316789 (n + 1)) ^ 2).toNat).toNat

end

end A316782.P2185646705676164914

/-! ## A316782.P17856035922391357448

`A000010(A253641(n+1)+A253641(n*(n+1)))`
-/

namespace A316782.P17856035922391357448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A253641 (n + 1) + A253641 (n * (n + 1))).toNat

end

end A316782.P17856035922391357448

/-!
# A316783: Seed values of hailstone sequences for which, by the time they first reach 1, the ratio of odd terms to even terms is exactly 1/2. (The seed value itself is included in the ratio calculation.)

The programs for A316783, there is no canonical definition to state claims against.
-/

/-! ## A316783.P3698915762981623785

`eq[2, A220071(n+1)-A006667(n+1)]+1`
-/

namespace A316783.P3698915762981623785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220071 (n + 1) - A006667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316783.P3698915762981623785

/-! ## A316783.P11955383338052544089

`A347269(A064704(n+1))`
-/

namespace A316783.P11955383338052544089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347269 (A064704 (n + 1)).toNat

end

end A316783.P11955383338052544089

/-! ## A316783.P5028367351320127749

`A347269(A083136(n+1))`
-/

namespace A316783.P5028367351320127749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347269 (A083136 (n + 1)).toNat

end

end A316783.P5028367351320127749

/-! ## A316783.P11510619064227339474

`A347269(A117057(n+1))`
-/

namespace A316783.P11510619064227339474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347269 (A117057 (n + 1)).toNat

end

end A316783.P11510619064227339474

/-! ## A316783.P6172878153008753425

`A347269(A277856(n+1))`
-/

namespace A316783.P6172878153008753425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347269 (A277856 (n + 1)).toNat

end

end A316783.P6172878153008753425

/-!
# A316784: Number of orderless identity tree-factorizations of n.

The programs for A316784, there is no canonical definition to state claims against.
-/

/-! ## A316784.P17329745075778514761

`or(A000035(A114107(n+1)), A295279(n+1))`
-/

namespace A316784.P17329745075778514761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A114107 (n + 1)).toNat) (A295279 (n + 1))

end

end A316784.P17329745075778514761

/-! ## A316784.P2017848365168319884

`or(A010052(n+1), A295279(A045966(n+1)))`
-/

namespace A316784.P2017848365168319884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (n + 1)) (A295279 (A045966 (n + 1)).toNat)

end

end A316784.P2017848365168319884

/-! ## A316784.P14944714414277661507

`A295279(A045966(n+1))+A016124(A004769(n))`
-/

namespace A316784.P14944714414277661507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (A045966 (n + 1)).toNat + A016124 (A004769 n).toNat

end

end A316784.P14944714414277661507

/-! ## A316784.P15946771356117395586

`A295279(A045966(n+1))+A056175(A000188(n+1))`
-/

namespace A316784.P15946771356117395586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (A045966 (n + 1)).toNat + A056175 (A000188 (n + 1)).toNat

end

end A316784.P15946771356117395586

/-! ## A316784.P15899311352638581396

`A295279(A045966(n+1))+A122179(A034836(n+1))`
-/

namespace A316784.P15899311352638581396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (A045966 (n + 1)).toNat + A122179 (A034836 (n + 1)).toNat

end

end A316784.P15899311352638581396

/-! ## A316784.P2344067826380365955

`A295279(A045966(n+1))+A072670(A122179(n+1))`
-/

namespace A316784.P2344067826380365955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (A045966 (n + 1)).toNat + A072670 (A122179 (n + 1)).toNat

end

end A316784.P2344067826380365955

/-! ## A316784.P5427225260225427244

`A295279(A045966(n+1))+A046660(A212181(n+1))`
-/

namespace A316784.P5427225260225427244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (A045966 (n + 1)).toNat + A046660 (A212181 (n + 1)).toNat

end

end A316784.P5427225260225427244

/-! ## A316784.P11972701343120627101

`or(A209229(A334878(n+1)), A295279(n+1))`
-/

namespace A316784.P11972701343120627101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 (A334878 (n + 1)).toNat) (A295279 (n + 1))

end

end A316784.P11972701343120627101

/-!
# A316786: Denominator of an upper bound for the maximal element in phi^(-1)(n).

The programs for A316786, there is no canonical definition to state claims against.
-/

/-! ## A316786.P3746150683269851680

`A034836(A034836(n+1))^A372490(3*n+2)`
-/

namespace A316786.P3746150683269851680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034836 (A034836 (n + 1)).toNat : ℚ) ^ (A372490 (3 * n + 2) : ℤ)

end

end A316786.P3746150683269851680

/-! ## A316786.P12631580701895078588

`A375120(n+1)^A375136(A375162(2*(n+1)))`
-/

namespace A316786.P12631580701895078588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375120 (n + 1) : ℚ) ^ (A375136 (A375162 (2 * (n + 1))).toNat : ℤ)

end

end A316786.P12631580701895078588

/-! ## A316786.P15328875620878346682

`A030102(A348610(n+1))^A348610(3*n+2)`
-/

namespace A316786.P15328875620878346682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030102 (A348610 (n + 1)).toNat : ℚ) ^ (A348610 (3 * n + 2) : ℤ)

end

end A316786.P15328875620878346682

/-! ## A316786.P6911546598734454486

`A375120(n+1)^A228525(A375137(2*(n+1)))`
-/

namespace A316786.P6911546598734454486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375120 (n + 1) : ℚ) ^ (A228525 (A375137 (2 * (n + 1))).toNat : ℤ)

end

end A316786.P6911546598734454486

/-!
# A316787: Semipermutable Primes: One-digit primes and primes with 2 or more digits such that all permutations of their digits are primes except for permutations that place either 5 or even numbers in the units digit.

The programs for A316787, there is no canonical definition to state claims against.
-/

/-! ## A316787.P12201565723036677087

`record[A063884(n+1)%A361993(2*n+3)]`
-/

namespace A316787.P12201565723036677087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063884 (n + 1)) (A361993 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316787.P12201565723036677087

/-! ## A316787.P4418664358148816889

`∩[A160544(n+1), A242541(n+1)]`
-/

namespace A316787.P4418664358148816889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316787.P4418664358148816889

/-! ## A316787.P7333113054915253391

`∩[A198191(n+1), A316903(n+1)]`
-/

namespace A316787.P7333113054915253391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316787.P7333113054915253391

/-! ## A316787.P11795088148334449375

`∩[A198191(n+1), A319333(n+1)]`
-/

namespace A316787.P11795088148334449375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316787.P11795088148334449375

/-!
# A316789: Number of same-tree-factorizations of n.

The programs for A316789, there is no canonical definition to state claims against.
-/

/-! ## A316789.P4351413574969600039

`A281145(A253641(n+1))`
-/

namespace A316789.P4351413574969600039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281145 (A253641 (n + 1)).toNat

end

end A316789.P4351413574969600039

/-! ## A316789.P6326371400510556916

`A281145((A052409(n+1)-1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A316789.P6326371400510556916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281145 ((A052409 (n + 1) - 1) * a (n - 1) + 1).toNat

end

end A316789.P6326371400510556916

/-! ## A316789.P9186954320513885231

`A281145((A052409(n+1)-1)^a(n-1)+1)` with `a(0)=1`
-/

namespace A316789.P9186954320513885231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281145 (SequenceMachineLib.roundAway ((A052409 (n + 1) - 1 : ℚ) ^ (a (n - 1) : ℤ) + 1)).toNat

end

end A316789.P9186954320513885231

/-! ## A316789.P476104601126868328

`A281145(A052409(n+1)-A052409(n²+1)+1)`
-/

namespace A316789.P476104601126868328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281145 (A052409 (n + 1) - A052409 (n ^ 2 + 1) + 1).toNat

end

end A316789.P476104601126868328

/-! ## A316789.P7496640190948643533

`A078759(A316782(n+1)!)`
-/

namespace A316789.P7496640190948643533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078759 (Nat.factorial (A316782 (n + 1)).toNat)

end

end A316789.P7496640190948643533

/-! ## A316789.P3821375725798743440

`A067754(A294338(n+1)^4)`
-/

namespace A316789.P3821375725798743440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (A294338 (n + 1) ^ 4).toNat

end

end A316789.P3821375725798743440

/-! ## A316789.P6274146650444060836

`A067754(A294338(n+1)²²)`
-/

namespace A316789.P6274146650444060836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 ((A294338 (n + 1) ^ 2) ^ 2).toNat

end

end A316789.P6274146650444060836

/-! ## A316789.P15984166816148218664

`A057562(A007318(∑[n])*A316782(n+1)+1)`
-/

namespace A316789.P15984166816148218664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057562 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A316782 (n + 1) + 1).toNat

end

end A316789.P15984166816148218664

/-! ## A316789.P1156928756951775595

`A001227(A295931(n+1)!)`
-/

namespace A316789.P1156928756951775595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Nat.factorial (A295931 (n + 1)).toNat)

end

end A316789.P1156928756951775595

/-! ## A316789.P2158087881863313031

`A347456(6*A295920(n+1))`
-/

namespace A316789.P2158087881863313031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (6 * A295920 (n + 1)).toNat

end

end A316789.P2158087881863313031

/-!
# A316790: Number of orderless same-tree-factorizations of n.

The programs for A316790, there is no canonical definition to state claims against.
-/

/-! ## A316790.P2830406778642743536

`A220272(3^A295931(n+1))`
-/

namespace A316790.P2830406778642743536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220272 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A295931 (n + 1) : ℤ))).toNat

end

end A316790.P2830406778642743536

/-! ## A316790.P3713928353950687920

`dr(A293514(A316782(n+1)!))`
-/

namespace A316790.P3713928353950687920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A293514 (Nat.factorial (A316782 (n + 1)).toNat))

end

end A316790.P3713928353950687920

/-! ## A316790.P16325836515485470256

`A069130(A316782(n+1)!)%16`
-/

namespace A316790.P16325836515485470256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069130 (Nat.factorial (A316782 (n + 1)).toNat)) 16

end

end A316790.P16325836515485470256

/-! ## A316790.P10384234924545135689

`∑{d}[A316782(n+1)!, A286562(#)]`
-/

namespace A316790.P10384234924545135689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A316782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A286562 d

end

end A316790.P10384234924545135689

/-! ## A316790.P12591504095843954519

`A346699(2*A316789(n+1)+1)-1`
-/

namespace A316790.P12591504095843954519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (2 * A316789 (n + 1) + 1).toNat - 1

end

end A316790.P12591504095843954519

/-! ## A316790.P6695453280262067482

`A111251(A316782(n+1)+1)-A316782(n²+1)`
-/

namespace A316790.P6695453280262067482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (A316782 (n + 1) + 1).toNat - A316782 (n ^ 2 + 1)

end

end A316790.P6695453280262067482

/-!
# A316791: a(n) is the least prime p such that the second forward difference of three consecutive primes p, q and r is n = (p - 2q + r)/2.

The programs for A316791, there is no canonical definition to state claims against.
-/

/-! ## A316791.P16159343164153144357

`A084127(A135673(n+1)*A191802(n))`
-/

namespace A316791.P16159343164153144357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (A135673 (n + 1) * A191802 n).toNat

end

end A316791.P16159343164153144357

/-!
# A316792: a(n) is the least prime p such that the second forward difference of three consecutive primes p, q and r is n = -(p - 2q + r)/2.

The programs for A316792, there is no canonical definition to state claims against.
-/

/-! ## A316792.P5407338533038812982

`A000961(A329050(2*n)+A284409(n))`
-/

namespace A316792.P5407338533038812982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A329050 (2 * n) + A284409 n).toNat

end

end A316792.P5407338533038812982

/-!
# A316793: Numbers whose prime multiplicities are distinct and relatively prime.

The programs for A316793, there is no canonical definition to state claims against.
-/

/-! ## A316793.P6783172830600610515

`eq[1, C(3, A304455(n+1))]+1`
-/

namespace A316793.P6783172830600610515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A304455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316793.P6783172830600610515

/-! ## A316793.P6417971569656118028

`record[A052410(A130091(n+1))]`
-/

namespace A316793.P6417971569656118028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A130091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316793.P6417971569656118028

/-! ## A316793.P4597383251688746346

`record[A327498(A025478(n+1))]`
-/

namespace A316793.P4597383251688746346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A025478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316793.P4597383251688746346

/-! ## A316793.P16544166317214554623

`record[A327498(A052410(n+1))]`
-/

namespace A316793.P16544166317214554623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A052410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316793.P16544166317214554623

/-! ## A316793.P7867429547817707852

`record[A327498(A175781(n+1))]`
-/

namespace A316793.P7867429547817707852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A175781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316793.P7867429547817707852

/-! ## A316793.P4824338817752666384

`record[A327498(A304491(n+1))]`
-/

namespace A316793.P4824338817752666384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A304491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316793.P4824338817752666384

/-! ## A316793.P1508428101479377706

`filter[A130091(n+1), A132350(#)]`
-/

namespace A316793.P1508428101479377706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A316793.P1508428101479377706

/-! ## A316793.P12930098596035522435

`filter[A331593(n+1), A132350(#)]`
-/

namespace A316793.P12930098596035522435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A316793.P12930098596035522435

/-! ## A316793.P1866931817536510316

`filter[A175082(n+1), A351564(#)]`
-/

namespace A316793.P1866931817536510316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A316793.P1866931817536510316

/-! ## A316793.P14923741255563906385

`record[A327498(abs(A157987(n+1)))]`
-/

namespace A316793.P14923741255563906385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 |A157987 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316793.P14923741255563906385

/-!
# A316794: Matula-Goebel numbers of aperiodic rooted trees with locally distinct multiplicities.

The programs for A316794, there is no canonical definition to state claims against.
-/

/-! ## A316794.P1978069244190484757

`∩[A317709(n+1), A319272(n+1)]`
-/

namespace A316794.P1978069244190484757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316794.P1978069244190484757

/-! ## A316794.P6200503817796142421

`∩[A303431(n+1), A319272(n+1)]`
-/

namespace A316794.P6200503817796142421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316794.P6200503817796142421

/-! ## A316794.P5729854612425634292

`A171865(n+1)-A320656(A213942(2*n+5))`
-/

namespace A316794.P5729854612425634292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171865 (n + 1) - A320656 (A213942 (2 * n + 5)).toNat

end

end A316794.P5729854612425634292

/-!
# A316795: Number of aperiodic rooted trees on n nodes with locally distinct multiplicities.

The programs for A316795, there is no canonical definition to state claims against.
-/

/-! ## A316795.P17247247865162328781

`A159296(A360749(n))`
-/

namespace A316795.P17247247865162328781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159296 (A360749 n).toNat

end

end A316795.P17247247865162328781

/-! ## A316795.P17364583826898277050

`A244017(A191633(n+1))`
-/

namespace A316795.P17364583826898277050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244017 (A191633 (n + 1)).toNat

end

end A316795.P17364583826898277050

/-! ## A316795.P13749683045647222611

`A128557(A003106(n)+A001037(n))`
-/

namespace A316795.P13749683045647222611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128557 (A003106 n + A001037 n).toNat

end

end A316795.P13749683045647222611

/-! ## A316795.P18243221581959676232

`A056556(A124423(n))+A011795(n)`
-/

namespace A316795.P18243221581959676232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A124423 n).toNat + A011795 n

end

end A316795.P18243221581959676232

/-! ## A316795.P967289529928905435

`A001037(n)-A011655(A014138(n))`
-/

namespace A316795.P967289529928905435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n - A011655 (A014138 n).toNat

end

end A316795.P967289529928905435

/-!
# A316796: Number of unlabeled rooted trees with n nodes where the multiplicities in the multiset of branches under any given node are distinct.

The programs for A316796, there is no canonical definition to state claims against.
-/

/-! ## A316796.P9411356906426428735

`A003056(n*ceil(3^n/18)+1)`
-/

namespace A316796.P9411356906426428735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) * ⌈(3 ^ n : ℚ) / 18⌉ + 1).toNat

end

end A316796.P9411356906426428735

/-! ## A316796.P6872556482191709142

`A005041(A390134(n))`
-/

namespace A316796.P6872556482191709142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A390134 n).toNat

end

end A316796.P6872556482191709142

/-! ## A316796.P15118736881155424883

`round(sqrt(A298141(2*(n+1))+A004043(n+8)))-1`
-/

namespace A316796.P15118736881155424883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A298141 (2 * (n + 1)) + A004043 (n + 8) : ℝ)) - 1

end

end A316796.P15118736881155424883

/-! ## A316796.P17507194658653959771

`A003056(A291292(n))+A000073(n)`
-/

namespace A316796.P17507194658653959771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A291292 n).toNat + A000073 n

end

end A316796.P17507194658653959771

/-! ## A316796.P16378554691010761858

`A000267(A077840(n)-A052529(n))`
-/

namespace A316796.P16378554691010761858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A077840 n - A052529 n).toNat

end

end A316796.P16378554691010761858

/-!
# A316797: Number of nXn 0..1 arrays with every element unequal to 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316797, there is no canonical definition to state claims against.
-/

/-! ## A316797.P635056796909162843

`A316801(∑[4*n]+1)`
-/

namespace A316797.P635056796909162843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316797.P635056796909162843

/-! ## A316797.P13955362017683498147

`record[A316801(Δ[A235355(n)])]`
-/

namespace A316797.P13955362017683498147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316797.P13955362017683498147

/-! ## A316797.P2939009592693505142

`record[A316801(A286145(n)+1)]`
-/

namespace A316797.P2939009592693505142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316797.P2939009592693505142

/-! ## A316797.P5126476136111741358

`record[A316801(A330613(n+1))]`
-/

namespace A316797.P5126476136111741358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316797.P5126476136111741358

/-! ## A316797.P7165380466165215000

`A316801(A001844(n))+char[11]`
-/

namespace A316797.P7165380466165215000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316797.P7165380466165215000

/-!
# A316798: Number of nX5 0..1 arrays with every element unequal to 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316798, there is no canonical definition to state claims against.
-/

/-! ## A316798.P17077774422341224995

`A316801(A167499(n+3))`
-/

namespace A316798.P17077774422341224995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A167499 (n + 3)).toNat

end

end A316798.P17077774422341224995

/-! ## A316798.P9653181798294692728

`A316801(A155212(n)+13)`
-/

namespace A316798.P9653181798294692728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A155212 n + 13).toNat

end

end A316798.P9653181798294692728

/-! ## A316798.P17996778200457127602

`A316801(A056000(n)+15)`
-/

namespace A316798.P17996778200457127602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A056000 n + 15).toNat

end

end A316798.P17996778200457127602

/-! ## A316798.P14286914406230450733

`A316801(eq[7, A066657(n)])`
-/

namespace A316798.P14286914406230450733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316798.P14286914406230450733

/-! ## A316798.P8453580639710281148

`A316801(∑[A020705(n)]+11)`
-/

namespace A316798.P8453580639710281148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A316798.P8453580639710281148

/-!
# A316799: Number of nX6 0..1 arrays with every element unequal to 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316799, there is no canonical definition to state claims against.
-/

/-! ## A316799.P10291231992809449703

`A316801(∑[n+5]+16)`
-/

namespace A316799.P10291231992809449703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A316799.P10291231992809449703

/-! ## A316799.P12416963526134693553

`A316801(A000217(n+5)+6)+char[17]`
-/

namespace A316799.P12416963526134693553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316799.P12416963526134693553

/-! ## A316799.P7299201793793888790

`ceil(sin(n)²)*A316801(A056115(n)+21)`
-/

namespace A316799.P7299201793793888790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A316801 (A056115 n + 21).toNat

end

end A316799.P7299201793793888790

/-! ## A316799.P11892164850589521970

`record[A316801(n+1)*A321537(A066657(n+2))]`
-/

namespace A316799.P11892164850589521970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316801 (n + 1) * A321537 (A066657 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316799.P11892164850589521970

/-! ## A316799.P9439745395937459390

`A007318(C(2, n))*A316801(A000217(n+5)+6)`
-/

namespace A316799.P9439745395937459390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A316801 (A000217 (n + 5) + 6).toNat

end

end A316799.P9439745395937459390

