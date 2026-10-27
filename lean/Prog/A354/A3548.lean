import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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
import Seq.Opaque.C024

/-!
# A354800: Cardinality of the set of ordered pairs (m(lambda),f(lambda)), where lambda ranges over all partitions of n and m gives the infimum and f gives the sum of the squares of the argument.

The programs for A354800, there is no canonical definition to state claims against.
-/

/-! ## A354800.P6055450247369529671

`A001935(n)+A001222(A360747(n))`
-/

namespace A354800.P6055450247369529671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n + A001222 (A360747 n).toNat

end

end A354800.P6055450247369529671

/-! ## A354800.P87440715888345218

`A001402(n)-A010894(A001402(n+1))`
-/

namespace A354800.P87440715888345218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A010894 ((A001402 (n + 1)).toNat + 21)

end

end A354800.P87440715888345218

/-! ## A354800.P6738858191117549551

`A000041(n)-A257684(A076019(n+1))`
-/

namespace A354800.P6738858191117549551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A257684 (A076019 (n + 1)).toNat

end

end A354800.P6738858191117549551

/-! ## A354800.P13360324079985396210

`A001402(n)-A346632(A146254(n+1))`
-/

namespace A354800.P13360324079985396210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A346632 (A146254 (n + 1)).toNat

end

end A354800.P13360324079985396210

/-! ## A354800.P18408908254604922274

`A280937(n)-A281319(A014689(n+1))`
-/

namespace A354800.P18408908254604922274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280937 n - A281319 (A014689 (n + 1)).toNat

end

end A354800.P18408908254604922274

/-!
# A354801: n^2 minus the sum of all aliquot divisors of all positive integers <= n.

The programs for A354801, the canonical program `A354801.P2682689815244805645` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354801 has offset 1).

The definition of A354801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354801.P7998642702072364381

`A000217(n+1)+A004125(n+1)`
-/

namespace A354801.P7998642702072364381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A004125 (n + 1)

end

end A354801.P7998642702072364381

namespace A354801

/-- `A000217(n+1)+A004125(n+1)` -/
def P7998642702072364381.Spec : Prop :=
  ∀ n, P7998642702072364381.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P8232306024191464426

`A000290(n+1)-A153485(n+1)`
-/

namespace A354801.P8232306024191464426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A153485 (n + 1)

end

end A354801.P8232306024191464426

namespace A354801

/-- `A000290(n+1)-A153485(n+1)` -/
def P8232306024191464426.Spec : Prop :=
  ∀ n, P8232306024191464426.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P2682689815244805645

`A024916(n+1)+A004125(n+1)-A153485(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A354801

/-- `A024916(n+1)+A004125(n+1)-A153485(n+1)` -/
def P2682689815244805645.Spec : Prop :=
  ∀ n, P2682689815244805645.a n = A354801 (n + 1)

theorem P2682689815244805645.correct : P2682689815244805645.Spec := by
  intro n
  simp only [A354801, Nat.add_sub_cancel]

end A354801

/-! ## A354801.P3299472599944367691

`∑[3*n+2-∑{d}[n+1, #]]`
-/

namespace A354801.P3299472599944367691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P3299472599944367691

namespace A354801

/-- `∑[3*n+2-∑{d}[n+1, #]]` -/
def P3299472599944367691.Spec : Prop :=
  ∀ n, P3299472599944367691.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P15373169527630946650

`∑[n+2-∑{d}[n+1, #]+n+n]`
-/

namespace A354801.P15373169527630946650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P15373169527630946650

namespace A354801

/-- `∑[n+2-∑{d}[n+1, #]+n+n]` -/
def P15373169527630946650.Spec : Prop :=
  ∀ n, P15373169527630946650.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P4294178752420824964

`2*n+2-∑{d}[n+1, #]+a(n-1)+n` with `a(0)=1`
-/

namespace A354801.P4294178752420824964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) + (a (n - 1) + (n : ℤ))

end

end A354801.P4294178752420824964

namespace A354801

/-- `2*n+2-∑{d}[n+1, #]+a(n-1)+n` -/
def P4294178752420824964.Spec : Prop :=
  ∀ n, P4294178752420824964.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P364733757095037748

`∑[A353190(n+1)]`
-/

namespace A354801.P364733757095037748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P364733757095037748

namespace A354801

/-- `∑[A353190(n+1)]` -/
def P364733757095037748.Spec : Prop :=
  ∀ n, P364733757095037748.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P9064101305098953549

`∑[Δ[A111490(n)]+n]`
-/

namespace A354801.P9064101305098953549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P9064101305098953549

namespace A354801

/-- `∑[Δ[A111490(n)]+n]` -/
def P9064101305098953549.Spec : Prop :=
  ∀ n, P9064101305098953549.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P17168163096771804119

`∑[A033885(n+1)-1]`
-/

namespace A354801.P17168163096771804119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P17168163096771804119

namespace A354801

/-- `∑[A033885(n+1)-1]` -/
def P17168163096771804119.Spec : Prop :=
  ∀ n, P17168163096771804119.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P11438809406153496879

`∑[A033879(n+1)+n]`
-/

namespace A354801.P11438809406153496879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P11438809406153496879

namespace A354801

/-- `∑[A033879(n+1)+n]` -/
def P11438809406153496879.Spec : Prop :=
  ∀ n, P11438809406153496879.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P14926302038142631429

`A111490(n+1)+∑[n]`
-/

namespace A354801.P14926302038142631429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A354801.P14926302038142631429

namespace A354801

/-- `A111490(n+1)+∑[n]` -/
def P14926302038142631429.Spec : Prop :=
  ∀ n, P14926302038142631429.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P426484249951234777

`∑[n-A033880(n+1)]`
-/

namespace A354801.P426484249951234777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P426484249951234777

namespace A354801

/-- `∑[n-A033880(n+1)]` -/
def P426484249951234777.Spec : Prop :=
  ∀ n, P426484249951234777.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P9584747602261667850

`A049766(n+1)+1+n`
-/

namespace A354801.P9584747602261667850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049766 (n + 1) + 1 + (n : ℤ)

end

end A354801.P9584747602261667850

namespace A354801

/-- `A049766(n+1)+1+n` -/
def P9584747602261667850.Spec : Prop :=
  ∀ n, P9584747602261667850.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P11482814040019698957

`A099738(n+1)-(n+1)`
-/

namespace A354801.P11482814040019698957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099738 (n + 1) - (n + 1 : ℤ)

end

end A354801.P11482814040019698957

namespace A354801

/-- `A099738(n+1)-(n+1)` -/
def P11482814040019698957.Spec : Prop :=
  ∀ n, P11482814040019698957.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P16764245926955683062

`∑[A235796(n+1)+n+1]`
-/

namespace A354801.P16764245926955683062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P16764245926955683062

namespace A354801

/-- `∑[A235796(n+1)+n+1]` -/
def P16764245926955683062.Spec : Prop :=
  ∀ n, P16764245926955683062.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P4593891789731305784

`∑[n+1-A237588(n+1)]`
-/

namespace A354801.P4593891789731305784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P4593891789731305784

namespace A354801

/-- `∑[n+1-A237588(n+1)]` -/
def P4593891789731305784.Spec : Prop :=
  ∀ n, P4593891789731305784.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P15018073269775948156

`(n+1)²-∑[A001065(n+1)]`
-/

namespace A354801.P15018073269775948156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P15018073269775948156

namespace A354801

/-- `(n+1)²-∑[A001065(n+1)]` -/
def P15018073269775948156.Spec : Prop :=
  ∀ n, P15018073269775948156.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P2662414689898913663

`∑[3*n+2-A000203(n+1)]`
-/

namespace A354801.P2662414689898913663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P2662414689898913663

namespace A354801

/-- `∑[3*n+2-A000203(n+1)]` -/
def P2662414689898913663.Spec : Prop :=
  ∀ n, P2662414689898913663.a n = A354801 (n + 1)

end A354801

/-! ## A354801.P15674240191827373232

`∑[Δ[n²]-∑{d}[n+1, #-A000010(#)]]`
-/

namespace A354801.P15674240191827373232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - A000010 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354801.P15674240191827373232

namespace A354801

/-- `∑[Δ[n²]-∑{d}[n+1, #-A000010(#)]]` -/
def P15674240191827373232.Spec : Prop :=
  ∀ n, P15674240191827373232.a n = A354801 (n + 1)

end A354801

/-!
# A354802: Irregular triangle read by rows where T(n,k) is the number of independent sets of size k in the n-hypercube graph.

The programs for A354802, there is no canonical definition to state claims against.
-/

/-! ## A354802.P2519594327530732923

`gcd(A001316(A055228(n)), A294477(n))`
-/

namespace A354802.P2519594327530732923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 (A055228 n).toNat) (A294477 n)

end

end A354802.P2519594327530732923

/-! ## A354802.P8164121445481851287

`A006519(A294477(n)+A000079(n+2))`
-/

namespace A354802.P8164121445481851287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A294477 n + A000079 (n + 2)).toNat

end

end A354802.P8164121445481851287

/-! ## A354802.P4850312365920854822

`A001316(C(A060547(n+1), A051993(n+1)))`
-/

namespace A354802.P4850312365920854822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.choose (A060547 (n + 1)).toNat (A051993 (n + 1)).toNat)

end

end A354802.P4850312365920854822

/-!
# A354803: a(1) = 1; for n > 1, a(n) is the smallest positive number that is coprime to a(n-1) and the product a(n) * a(n-1) is distinct from all previous products a(i) * a(i-1), i=2..n-1.

The programs for A354803, there is no canonical definition to state claims against.
-/

/-! ## A354803.P2841566691826540715

`A354804(n)/a(n-1)` with `a(0)=1`
-/

namespace A354803.P2841566691826540715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A354804 n : ℚ) / a (n - 1)

end

end A354803.P2841566691826540715

/-! ## A354803.P9530302989933356600

`A317024(n+1)%A217519(2*n+3)`
-/

namespace A354803.P9530302989933356600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317024 (n + 1)) (A217519 (2 * n + 3))

end

end A354803.P9530302989933356600

/-! ## A354803.P8546789538850698814

`A317024(n+1)%A139321(A005704(n))`
-/

namespace A354803.P8546789538850698814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317024 (n + 1)) (A139321 (A005704 n).toNat)

end

end A354803.P8546789538850698814

/-! ## A354803.P12549764997385268478

`A139551(A090750(n+1))*A317024(n+1)`
-/

namespace A354803.P12549764997385268478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 (A090750 (n + 1)).toNat * A317024 (n + 1)

end

end A354803.P12549764997385268478

/-! ## A354803.P10754103948042706540

`A317024(n+1)^A001221(A151785(2*n+1))`
-/

namespace A354803.P10754103948042706540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317024 (n + 1) : ℚ) ^ (A001221 (A151785 (2 * n + 1)).toNat : ℤ)

end

end A354803.P10754103948042706540

/-! ## A354803.P2880744964158965504

`A317024(n+1)+A164292(A354754(n+5))`
-/

namespace A354803.P2880744964158965504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317024 (n + 1) + A164292 (A354754 (n + 5)).toNat

end

end A354803.P2880744964158965504

/-! ## A354803.P14004660138261421053

`A317024(n+1)+A000007(A326534(n+1))`
-/

namespace A354803.P14004660138261421053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317024 (n + 1) + A000007 (A326534 (n + 1)).toNat

end

end A354803.P14004660138261421053

/-! ## A354803.P11530391387220988664

`A317024(n+1)+A000007(A051037(3*n+4))`
-/

namespace A354803.P11530391387220988664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317024 (n + 1) + A000007 (A051037 (3 * n + 4)).toNat

end

end A354803.P11530391387220988664

/-! ## A354803.P347724077833360909

`A317024(n+1)+A000007(A242139(n+1))`
-/

namespace A354803.P347724077833360909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317024 (n + 1) + A000007 (A242139 (n + 1)).toNat

end

end A354803.P347724077833360909

/-! ## A354803.P8714796205360030102

`and(A141311(n+1), A317024(n+1))`
-/

namespace A354803.P8714796205360030102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A317024 (n + 1))

end

end A354803.P8714796205360030102

/-!
# A354804: The products of consecutive terms in A354803.

The programs for A354804, there is no canonical definition to state claims against.
-/

/-! ## A354804.P9918476862596401187

`A354803(n+1)*A354803(n+2)`
-/

namespace A354804.P9918476862596401187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354803 (n + 1) * A354803 (n + 2)

end

end A354804.P9918476862596401187

/-! ## A354804.P14843115486168701444

`lcm(A354803(A020725(n+1)), A354803(n+1))`
-/

namespace A354804.P14843115486168701444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A354803 (A020725 (n + 1)).toNat) (A354803 (n + 1))

end

end A354804.P14843115486168701444

/-! ## A354804.P10969627493135958062

`lcm(A354803(A000027(n+1)), A354803(n+2))`
-/

namespace A354804.P10969627493135958062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A354803 (A000027 (n + 1)).toNat) (A354803 (n + 2))

end

end A354804.P10969627493135958062

/-! ## A354804.P3330259119861345087

`A317025(n+1)%A005898(A193896(n))`
-/

namespace A354804.P3330259119861345087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317025 (n + 1)) (A005898 (A193896 n).toNat)

end

end A354804.P3330259119861345087

/-! ## A354804.P4207880363128786976

`A317025(n+1)+A124761(A160713(n+1))`
-/

namespace A354804.P4207880363128786976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317025 (n + 1) + A124761 (A160713 (n + 1)).toNat

end

end A354804.P4207880363128786976

/-! ## A354804.P16027740313262801787

`A317025(n+1)+A297109(A365871(2*n+5))`
-/

namespace A354804.P16027740313262801787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317025 (n + 1) + A297109 (A365871 (2 * n + 5)).toNat

end

end A354804.P16027740313262801787

/-! ## A354804.P13423253180826018596

`A317025(n+1)+A000007(A013609(n))`
-/

namespace A354804.P13423253180826018596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317025 (n + 1) + A000007 (A013609 n).toNat

end

end A354804.P13423253180826018596

/-! ## A354804.P5197141844493691502

`A317025(n+1)+A000007(A326534(n+1))`
-/

namespace A354804.P5197141844493691502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317025 (n + 1) + A000007 (A326534 (n + 1)).toNat

end

end A354804.P5197141844493691502

/-! ## A354804.P7401441656908278968

`A107286(A086508(n+3))*A317025(n+1)`
-/

namespace A354804.P7401441656908278968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A086508 (n + 3)).toNat * A317025 (n + 1)

end

end A354804.P7401441656908278968

/-!
# A354805: Triangle T(n,k) is an array of characteristic functions of primes involved in Goldbach's partitions of 2n.

The programs for A354805, there is no canonical definition to state claims against.
-/

/-! ## A354805.P7395754390389657973

`A354836(n+3)%2`
-/

namespace A354805.P7395754390389657973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354836 (n + 3)) 2

end

end A354805.P7395754390389657973

/-! ## A354805.P5029343247874534841

`A000001(A354836(n+3))`
-/

namespace A354805.P5029343247874534841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A354836 (n + 3)).toNat

end

end A354805.P5029343247874534841

/-! ## A354805.P12010858940572995140

`A057427(A354836(n+3)²)`
-/

namespace A354805.P12010858940572995140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A354836 (n + 3) ^ 2).toNat

end

end A354805.P12010858940572995140

/-! ## A354805.P16678161237493273889

`A055396(A354836(n+3)+1)`
-/

namespace A354805.P16678161237493273889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A354836 (n + 3) + 1).toNat

end

end A354805.P16678161237493273889

/-! ## A354805.P7408526263201810414

`A060576(A354836(n+3)+1)`
-/

namespace A354805.P7408526263201810414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A354836 (n + 3) + 1).toNat

end

end A354805.P7408526263201810414

/-! ## A354805.P12203064101741664360

`A000035(A354836(n+3)+2)`
-/

namespace A354805.P12203064101741664360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A354836 (n + 3) + 2).toNat

end

end A354805.P12203064101741664360

/-! ## A354805.P15754261046206779461

`A019430(2*A354836(n+3))`
-/

namespace A354805.P15754261046206779461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * A354836 (n + 3)).toNat

end

end A354805.P15754261046206779461

/-! ## A354805.P14615148309046202387

`A057427(2*A354836(n+3))`
-/

namespace A354805.P14615148309046202387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A354836 (n + 3)).toNat

end

end A354805.P14615148309046202387

/-! ## A354805.P11484541254326529239

`A168046(5*A354836(n+3))`
-/

namespace A354805.P11484541254326529239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (5 * A354836 (n + 3)).toNat

end

end A354805.P11484541254326529239

/-! ## A354805.P14982295542908584276

`A126869(C(2, A354836(n+3)))`
-/

namespace A354805.P14982295542908584276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (Nat.choose 2 (A354836 (n + 3)).toNat)

end

end A354805.P14982295542908584276

/-!
# A354806: Parity of Dirichlet inverse of {A003415, arithmetic derivative of n + A063524 (1, 0, 0, 0, ...)}.

The programs for A354806, there is no canonical definition to state claims against.
-/

/-! ## A354806.P9012372980752310698

`and(1, A346241(n+1))`
-/

namespace A354806.P9012372980752310698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A346241 (n + 1))

end

end A354806.P9012372980752310698

/-! ## A354806.P7951313139290238788

`(A346241(n+1)+A161344(n+1))%2`
-/

namespace A354806.P7951313139290238788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346241 (n + 1) + A161344 (n + 1)) 2

end

end A354806.P7951313139290238788

/-! ## A354806.P15876160872131762657

`A000035(gcd(comp[2*n+3], A346241(n+1)))`
-/

namespace A354806.P15876160872131762657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A346241 (n + 1)))

end

end A354806.P15876160872131762657

/-! ## A354806.P15669878660795757163

`(A346241(n+1)%A053669(2*n+1))²`
-/

namespace A354806.P15669878660795757163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346241 (n + 1)) (A053669 (2 * n + 1)) ^ 2

end

end A354806.P15669878660795757163

/-! ## A354806.P12177957896926730634

`A000035(abs(A346241(n+1)))`
-/

namespace A354806.P12177957896926730634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 |A346241 (n + 1)|.toNat

end

end A354806.P12177957896926730634

/-! ## A354806.P9340182834324578547

`A000035(∑{d}[A346241(n+1), A000010(#)])`
-/

namespace A354806.P9340182834324578547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A354806.P9340182834324578547

/-! ## A354806.P14387321948366013790

`A000035(lcm(3, A346241(n+1)))`
-/

namespace A354806.P14387321948366013790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm 3 (A346241 (n + 1)))

end

end A354806.P14387321948366013790

/-! ## A354806.P16140852743315687690

`A059841(A046133(n+1)-A346241(n+1))`
-/

namespace A354806.P16140852743315687690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A046133 (n + 1) - A346241 (n + 1)).toNat

end

end A354806.P16140852743315687690

/-! ## A354806.P11255476657014760965

`A059841(A346241(n+1)+A046133(n+1))`
-/

namespace A354806.P11255476657014760965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A346241 (n + 1) + A046133 (n + 1)).toNat

end

end A354806.P11255476657014760965

/-! ## A354806.P15623272844180361216

`A000035(A346241(n+1)+A004011(3*n+2))`
-/

namespace A354806.P15623272844180361216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A346241 (n + 1) + A004011 (3 * n + 2)).toNat

end

end A354806.P15623272844180361216

/-! ## A354806.P11918170849618126251

`(A346241((n+1)²)%2)²`
-/

namespace A354806.P11918170849618126251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346241 ((n + 1) ^ 2)) 2 ^ 2

end

end A354806.P11918170849618126251

/-!
# A354807: a(n) = 1 if A346241(n) is negative, and 0 otherwise, where A346241 is the Dirichlet inverse of {A003415, arithmetic derivative of n + A063524 (1, 0, 0, 0, ...)}.

The programs for A354807, there is no canonical definition to state claims against.
-/

/-! ## A354807.P16294964186611753996

`char[lt[A346241(n+1), 0]]`
-/

namespace A354807.P16294964186611753996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354807.P16294964186611753996

/-! ## A354807.P14205990853576752798

`floor(A346241(n+1)/A001248(n+1))²`
-/

namespace A354807.P14205990853576752798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346241 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)⌋ ^ 2

end

end A354807.P14205990853576752798

/-! ## A354807.P2660564724074951906

`floor(A346241(n+1)/A031924(n+1))²`
-/

namespace A354807.P2660564724074951906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346241 (n + 1) : ℚ) / (A031924 (n + 1) : ℚ)⌋ ^ 2

end

end A354807.P2660564724074951906

/-! ## A354807.P11995629944226915651

`floor(acot(A346241(n+1)))^A285374(n+1)`
-/

namespace A354807.P11995629944226915651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (A346241 (n + 1) : ℝ)⌋ : ℚ) ^ (A285374 (n + 1) : ℤ)

end

end A354807.P11995629944226915651

/-! ## A354807.P3162370543245438887

`ceil(-(A346241(n+1)/record[A006530(n+2)²]))`
-/

namespace A354807.P3162370543245438887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((A346241 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))⌉

end

end A354807.P3162370543245438887

/-! ## A354807.P14114752558888914595

`val(A101296(n+1), A181819(A045966(n+1)))`
-/

namespace A354807.P14114752558888914595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A101296 (n + 1)).toNat (A181819 (A045966 (n + 1)).toNat).toNat

end

end A354807.P14114752558888914595

/-!
# A354808: Positions of negative terms in A346241.

The programs for A354808, there is no canonical definition to state claims against.
-/

/-! ## A354808.P10495524691349787017

`lt[0, A354807(n+1)]+1`
-/

namespace A354808.P10495524691349787017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354808.P10495524691349787017

/-! ## A354808.P8880078760384424879

`eq[1, A354807(n+2)]+2`
-/

namespace A354808.P8880078760384424879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A354808.P8880078760384424879

/-! ## A354808.P5778433931359465408

`comp[A354809(n+1)-1]+1`
-/

namespace A354808.P5778433931359465408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354809 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A354808.P5778433931359465408

/-! ## A354808.P9724301592126243757

`lt[A346241(n+1), 0]+1`
-/

namespace A354808.P9724301592126243757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354808.P9724301592126243757

/-! ## A354808.P15412212582390435304

`lt[A346241(A028310(n)), 0]`
-/

namespace A354808.P15412212582390435304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354808.P15412212582390435304

/-! ## A354808.P11214703701210869156

`lt[A000608(A226378(n)), n]`
-/

namespace A354808.P11214703701210869156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000608 (A226378 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354808.P11214703701210869156

/-!
# A354809: Positions of nonnegative terms in A346241.

The programs for A354809, there is no canonical definition to state claims against.
-/

/-! ## A354809.P7132135031709046245

`eq[0, A354807(n+1)]+1`
-/

namespace A354809.P7132135031709046245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354809.P7132135031709046245

/-! ## A354809.P11387794411531385888

`comp[(n+2)*A354807(n+2)]`
-/

namespace A354809.P11387794411531385888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A354807 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354809.P11387794411531385888

/-! ## A354809.P2448230626730519430

`lt[0, A346241(n+1)]+1`
-/

namespace A354809.P2448230626730519430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354809.P2448230626730519430

/-! ## A354809.P10327763233854700880

`eq[A000007(n), A354807(A028310(n))]`
-/

namespace A354809.P10327763233854700880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354809.P10327763233854700880

/-! ## A354809.P16857084648347225008

`lt[A317643(n), A346241(A028310(n))]`
-/

namespace A354809.P16857084648347225008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354809.P16857084648347225008

/-! ## A354809.P14266982573483515792

`lt[A354807(n+1), A001222(A108546(n+1))]+1`
-/

namespace A354809.P14266982573483515792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108546 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354809.P14266982573483515792

/-! ## A354809.P16671876702345387350

`lt[A354807(n+1), A055396(2*(n+2))]+1`
-/

namespace A354809.P16671876702345387350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354809.P16671876702345387350

/-! ## A354809.P13558981882431684110

`lt[A000161(3*n), A346241(A028310(n))]`
-/

namespace A354809.P13558981882431684110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354809.P13558981882431684110

/-!
# A354810: Positions of zeros in A346242.

The programs for A354810, there is no canonical definition to state claims against.
-/

/-! ## A354810.P7665694661507025486

`filter[A013929(n+1), A354820(#)]`
-/

namespace A354810.P7665694661507025486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P7665694661507025486

/-! ## A354810.P15214489180609259734

`eq[1, A354820(n+1)]+1`
-/

namespace A354810.P15214489180609259734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354810.P15214489180609259734

/-! ## A354810.P18121778321973705923

`lt[0, A354820(n+2)]+2`
-/

namespace A354810.P18121778321973705923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354820 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A354810.P18121778321973705923

/-! ## A354810.P4317347091478268935

`eq[0, A346242(n+1)]+1`
-/

namespace A354810.P4317347091478268935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354810.P4317347091478268935

/-! ## A354810.P14134867341171268976

`filter[A274141(n+1), A354820(#)]`
-/

namespace A354810.P14134867341171268976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P14134867341171268976

/-! ## A354810.P14415858230694487319

`filter[A162966(n+1), A354820(#)]`
-/

namespace A354810.P14415858230694487319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P14415858230694487319

/-! ## A354810.P2315669446389996101

`filter[A354360(n+1), A354820(#)]`
-/

namespace A354810.P2315669446389996101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P2315669446389996101

/-! ## A354810.P5915539973611466024

`filter[A389462(n+1), A354820(#)]`
-/

namespace A354810.P5915539973611466024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P5915539973611466024

/-! ## A354810.P17772797878775023742

`filter[A002808(n+1), A354820(#)]`
-/

namespace A354810.P17772797878775023742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P17772797878775023742

/-! ## A354810.P11482992425069928374

`filter[A018252(n+1), A354820(#)]`
-/

namespace A354810.P11482992425069928374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P11482992425069928374

/-! ## A354810.P3037890721238583560

`filter[A366288(n+1), A354820(#)]`
-/

namespace A354810.P3037890721238583560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P3037890721238583560

/-! ## A354810.P9381316827607083446

`filter[A289553(n+1), A354820(#)]`
-/

namespace A354810.P9381316827607083446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P9381316827607083446

/-! ## A354810.P3419341326535144568

`filter[A088609(n+1), A354820(#)]`
-/

namespace A354810.P3419341326535144568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P3419341326535144568

/-! ## A354810.P7190338953630807503

`filter[A060679(n+1), A354820(#)]`
-/

namespace A354810.P7190338953630807503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P7190338953630807503

/-! ## A354810.P3897925426473941710

`filter[A179891(n+1), A354820(#)]`
-/

namespace A354810.P3897925426473941710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P3897925426473941710

/-! ## A354810.P10863019348752693282

`filter[A088610(n+1), A354820(#)]`
-/

namespace A354810.P10863019348752693282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P10863019348752693282

/-! ## A354810.P1816692161633896343

`filter[A075378(2*n+1), A354820(#)]`
-/

namespace A354810.P1816692161633896343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P1816692161633896343

/-! ## A354810.P1038086420980449135

`filter[A193166(n+1), A354820(#)]`
-/

namespace A354810.P1038086420980449135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P1038086420980449135

/-! ## A354810.P11749224668706257569

`filter[A065090(n+1), A354820(#)]`
-/

namespace A354810.P11749224668706257569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P11749224668706257569

/-! ## A354810.P10602562342833414730

`filter[A073900(n+1), A354820(#)]`
-/

namespace A354810.P10602562342833414730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354820 (f1 j).toNat = 1) n)

end

end A354810.P10602562342833414730

/-!
# A354811: Positions of +1's in A346242.

The programs for A354811, there is no canonical definition to state claims against.
-/

/-! ## A354811.P4606121245975427028

`eq[1, A346242(n+1)]+1`
-/

namespace A354811.P4606121245975427028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354811.P4606121245975427028

/-! ## A354811.P6408113412521459012

`eq[1, A346243(n+1)-A324198(n+1)]+1`
-/

namespace A354811.P6408113412521459012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346243 (n + 1) - A324198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354811.P6408113412521459012

/-! ## A354811.P11948306409959790001

`eq[1, A346242(A000038(n)+n)]`
-/

namespace A354811.P11948306409959790001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354811.P11948306409959790001

/-! ## A354811.P11604051845362296884

`eq[1, A346242(abs(A000038(n)-n))]`
-/

namespace A354811.P11604051845362296884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 |A000038 n - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354811.P11604051845362296884

/-! ## A354811.P16679092121763296239

`eq[n-1, abs(n-A346242(A028310(n)))]`
-/

namespace A354811.P16679092121763296239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A346242 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354811.P16679092121763296239

/-! ## A354811.P3362785225863643478

`eq[A057427(n), A346242(A028310(n))]`
-/

namespace A354811.P3362785225863643478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354811.P3362785225863643478

/-!
# A354812: Positions of +2's in A346242.

The programs for A354812, the canonical program `A354812.P524993802197872541` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354812 has offset 1).

The definition of A354812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354812.P524993802197872541

`A016813(A001748(n+5))-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A354812

/-- `A016813(A001748(n+5))-1` -/
def P524993802197872541.Spec : Prop :=
  ∀ n, P524993802197872541.a n = A354812 (n + 1)

theorem P524993802197872541.correct : P524993802197872541.Spec := by
  intro n
  simp only [A354812, Nat.add_sub_cancel]

end A354812

/-! ## A354812.P4359867663018640127

`A008574(3*A000040(n+5))`
-/

namespace A354812.P4359867663018640127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (3 * A000040 (n + 5)).toNat

end

end A354812.P4359867663018640127

namespace A354812

/-- `A008574(3*A000040(n+5))` -/
def P4359867663018640127.Spec : Prop :=
  ∀ n, P4359867663018640127.a n = A354812 (n + 1)

end A354812

/-! ## A354812.P16675643905394648412

`A265046(3*A006005(n+5))`
-/

namespace A354812.P16675643905394648412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265046 (3 * A006005 (n + 5)).toNat

end

end A354812.P16675643905394648412

namespace A354812

/-- `A265046(3*A006005(n+5))` -/
def P16675643905394648412.Spec : Prop :=
  ∀ n, P16675643905394648412.a n = A354812 (n + 1)

end A354812

/-! ## A354812.P11737835088331663232

`A008574(lcm(3, A000040(n+5)))`
-/

namespace A354812.P11737835088331663232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (Int.lcm 3 (A000040 (n + 5)))

end

end A354812.P11737835088331663232

namespace A354812

/-- `A008574(lcm(3, A000040(n+5)))` -/
def P11737835088331663232.Spec : Prop :=
  ∀ n, P11737835088331663232.a n = A354812 (n + 1)

end A354812

/-! ## A354812.P14814129958615540259

`6*A056552(A001749(n+5))`
-/

namespace A354812.P14814129958615540259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056552 (A001749 (n + 5)).toNat

end

end A354812.P14814129958615540259

namespace A354812

/-- `6*A056552(A001749(n+5))` -/
def P14814129958615540259.Spec : Prop :=
  ∀ n, P14814129958615540259.a n = A354812 (n + 1)

end A354812

/-! ## A354812.P3920807843726302886

`∩[A063080(n+1), A325037(n+1)]`
-/

namespace A354812.P3920807843726302886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354812.P3920807843726302886

namespace A354812

/-- `∩[A063080(n+1), A325037(n+1)]` -/
def P3920807843726302886.Spec : Prop :=
  ∀ n, (P3920807843726302886.a n : ℤ) = A354812 (n + 1)

end A354812

/-! ## A354812.P15781439854327818905

`A008594(A120533(n+1))`
-/

namespace A354812.P15781439854327818905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A120533 (n + 1)).toNat

end

end A354812.P15781439854327818905

namespace A354812

/-- `A008594(A120533(n+1))` -/
def P15781439854327818905.Spec : Prop :=
  ∀ n, P15781439854327818905.a n = A354812 (n + 1)

end A354812

/-! ## A354812.P12101300418462265867

`A008594(A090417(n+2))`
-/

namespace A354812.P12101300418462265867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A090417 (n + 2)).toNat

end

end A354812.P12101300418462265867

namespace A354812

/-- `A008594(A090417(n+2))` -/
def P12101300418462265867.Spec : Prop :=
  ∀ n, P12101300418462265867.a n = A354812 (n + 1)

end A354812

/-! ## A354812.P17085312125999468382

`A336845(A362866(n+2))`
-/

namespace A354812.P17085312125999468382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (A362866 (n + 2)).toNat

end

end A354812.P17085312125999468382

namespace A354812

/-- `A336845(A362866(n+2))` -/
def P17085312125999468382.Spec : Prop :=
  ∀ n, P17085312125999468382.a n = A354812 (n + 1)

end A354812

/-! ## A354812.P6771283126899835756

`4*A127329(n+3)`
-/

namespace A354812.P6771283126899835756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A127329 (n + 3)

end

end A354812.P6771283126899835756

namespace A354812

/-- `4*A127329(n+3)` -/
def P6771283126899835756.Spec : Prop :=
  ∀ n, P6771283126899835756.a n = A354812 (n + 1)

end A354812

/-!
# A354813: Positions of +3's in A346242.

The programs for A354813, there is no canonical definition to state claims against.
-/

/-! ## A354813.P16461271728566148523

`eq[3, A346242(n+1)]+1`
-/

namespace A354813.P16461271728566148523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354813.P16461271728566148523

/-! ## A354813.P3187439651299298200

`eq[3, A346243(n+1)-A324198(n+1)]+1`
-/

namespace A354813.P3187439651299298200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346243 (n + 1) - A324198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354813.P3187439651299298200

/-! ## A354813.P13428562489353583807

`eq[3, A346242(A028310(n))]`
-/

namespace A354813.P13428562489353583807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354813.P13428562489353583807

/-! ## A354813.P5988738138629323260

`eq[3, A346242(A000038(n)+n)]`
-/

namespace A354813.P5988738138629323260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354813.P5988738138629323260

/-! ## A354813.P9086978861726987424

`eq[3, A346242(A233583(n+1))]`
-/

namespace A354813.P9086978861726987424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354813.P9086978861726987424

/-!
# A354815: Positions of zeros in A354347.

The programs for A354815, there is no canonical definition to state claims against.
-/

/-! ## A354815.P18274289506267243509

`eq[3, A355832(n+1)]+1`
-/

namespace A354815.P18274289506267243509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354815.P18274289506267243509

/-! ## A354815.P17292403179703363103

`eq[0, A354347(n+1)]+1`
-/

namespace A354815.P17292403179703363103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354815.P17292403179703363103

/-! ## A354815.P9755586078832273160

`A020725(eq[0, A354347(n+1)])`
-/

namespace A354815.P9755586078832273160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354815.P9755586078832273160

/-! ## A354815.P103872429717834080

`A065475(eq[0, A354347(n+1)])`
-/

namespace A354815.P103872429717834080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354815.P103872429717834080

/-! ## A354815.P2988260478069343904

`eq[0, A354347(2-(n-A004275(n)))]`
-/

namespace A354815.P2988260478069343904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (2 - ((n : ℤ) - A004275 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354815.P2988260478069343904

/-!
# A354816: Positions of -1's in A354347.

The programs for A354816, there is no canonical definition to state claims against.
-/

/-! ## A354816.P2447425694888947081

`lt[0, A354817(n+1)]+1`
-/

namespace A354816.P2447425694888947081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354816.P2447425694888947081

/-! ## A354816.P15850262110419081869

`eq[2, A355832(n+1)]+1`
-/

namespace A354816.P15850262110419081869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354816.P15850262110419081869

/-! ## A354816.P3851923195277643335

`eq[2, A355832(n^floor(atan(n)))]`
-/

namespace A354816.P3851923195277643335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355832 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354816.P3851923195277643335

/-! ## A354816.P16136403876307367955

`eq[-1, A354347(n+1)]+1`
-/

namespace A354816.P16136403876307367955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354816.P16136403876307367955

/-! ## A354816.P4886705214789039500

`filter[A122132(n+1), A354817(#)]`
-/

namespace A354816.P4886705214789039500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A354816.P4886705214789039500

/-! ## A354816.P13537217138783106733

`filter[A353511(n+1), A354817(#)]`
-/

namespace A354816.P13537217138783106733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A354816.P13537217138783106733

/-! ## A354816.P12968617366869521836

`filter[A168183(n+1), A354817(#)]`
-/

namespace A354816.P12968617366869521836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A354816.P12968617366869521836

/-! ## A354816.P10653862495932952339

`filter[A347248(n+1), A354817(#)]`
-/

namespace A354816.P10653862495932952339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A354816.P10653862495932952339

/-! ## A354816.P10774353825953995238

`filter[A093618(n+1), A354817(#)]`
-/

namespace A354816.P10774353825953995238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A354816.P10774353825953995238

/-! ## A354816.P17161104444061089480

`filter[A014089(n+1), A354817(#)]`
-/

namespace A354816.P17161104444061089480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A354816.P17161104444061089480

/-! ## A354816.P16579375017371571302

`filter[A054027(n+1), A354817(#)]`
-/

namespace A354816.P16579375017371571302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A354816.P16579375017371571302

/-! ## A354816.P5963255564452519905

`lt[0, A354817(A028310(n))]`
-/

namespace A354816.P5963255564452519905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354817 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354816.P5963255564452519905

/-! ## A354816.P12821982860886319338

`A020725(eq[1, A354817(n+1)])`
-/

namespace A354816.P12821982860886319338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354816.P12821982860886319338

/-! ## A354816.P697867744708131797

`lt[0, A354817(A008458(n)-5*n)]`
-/

namespace A354816.P697867744708131797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354817 (A008458 n - (5 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354816.P697867744708131797

/-!
# A354817: a(n) = 1 if A354347(n) = -1, otherwise 0.

The programs for A354817, there is no canonical definition to state claims against.
-/

/-! ## A354817.P6316420698812101700

`floor(cos(A354347(n+1)+1)²)`
-/

namespace A354817.P6316420698812101700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A354347 (n + 1) + 1 : ℝ) ^ 2⌋

end

end A354817.P6316420698812101700

/-! ## A354817.P2810792719348233769

`∏{d}[A354347(n+1)+1, A001221(#)]`
-/

namespace A354817.P2810792719348233769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A354817.P2810792719348233769

/-! ## A354817.P9240487973399910072

`∏{d}[A354347(n+1)+1, A302242(#)]`
-/

namespace A354817.P9240487973399910072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A302242 d

end

end A354817.P9240487973399910072

/-! ## A354817.P17508964156568230289

`∏{d}[A354347(n+1)+1, A354820(#)]`
-/

namespace A354817.P17508964156568230289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A354820 d

end

end A354817.P17508964156568230289

/-! ## A354817.P11176453738176889119

`∏{d}[A354347(n+1)+1, A192344(A020639(2*#))]`
-/

namespace A354817.P11176453738176889119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A192344 (A020639 (2 * d)).toNat

end

end A354817.P11176453738176889119

/-! ## A354817.P9926786781899854240

`∏{d}[A354347(n+1)+1, A238402(#)]`
-/

namespace A354817.P9926786781899854240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A238402 d

end

end A354817.P9926786781899854240

/-! ## A354817.P17186455389163640488

`A348970(A348970(A357841(A355832(n+1))))`
-/

namespace A354817.P17186455389163640488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348970 (A348970 (A357841 (A355832 (n + 1)).toNat).toNat).toNat

end

end A354817.P17186455389163640488

/-!
# A354818: Positions of even terms in A346241.

The programs for A354818, there is no canonical definition to state claims against.
-/

/-! ## A354818.P5582578122979461086

`eq[0, A354806(n+1)]+1`
-/

namespace A354818.P5582578122979461086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354818.P5582578122979461086

/-! ## A354818.P3320081664042239331

`lt[A354806(n+3), 1]+3`
-/

namespace A354818.P3320081664042239331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354806 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A354818.P3320081664042239331

/-! ## A354818.P6688614967584461449

`comp[(n+1)*A354806(n+4)]+3`
-/

namespace A354818.P6688614967584461449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354806 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A354818.P6688614967584461449

/-! ## A354818.P18370174799516506713

`eq[0, A354806(A028310(n))]`
-/

namespace A354818.P18370174799516506713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354806 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354818.P18370174799516506713

/-! ## A354818.P118814004758577043

`A326178(lt[A354806(n+1), 1])`
-/

namespace A354818.P118814004758577043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354806 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A354818.P118814004758577043

/-! ## A354818.P11997964312748794018

`eq[0, A354806(A000007(n)+n)]`
-/

namespace A354818.P11997964312748794018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354806 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354818.P11997964312748794018

/-!
# A354819: a(n) = 1 if n is a nonprime squarefree number, otherwise 0.

The programs for A354819, the canonical program `A354819.P1113722115681755102` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354819 has offset 1).

The definition of A354819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354819.P1113722115681755102

`A008966(n+1)*(1-A010051(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A354819

/-- `A008966(n+1)*(1-A010051(n+1))` -/
def P1113722115681755102.Spec : Prop :=
  ∀ n, P1113722115681755102.a n = A354819 (n + 1)

theorem P1113722115681755102.correct : P1113722115681755102.Spec := by
  intro n
  simp only [A354819, Nat.add_sub_cancel]

end A354819

/-! ## A354819.P16158576221721811684

`C(∏{p}[n+1, #%n], n+1)`
-/

namespace A354819.P16158576221721811684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p % n) (n + 1)

end

end A354819.P16158576221721811684

namespace A354819

/-- `C(∏{p}[n+1, #%n], n+1)` -/
def P16158576221721811684.Spec : Prop :=
  ∀ n, (P16158576221721811684.a n : ℤ) = A354819 (n + 1)

end A354819

/-! ## A354819.P3008565628359411562

`1-abs(A106743(n+1))`
-/

namespace A354819.P3008565628359411562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A106743 (n + 1)|

end

end A354819.P3008565628359411562

namespace A354819

/-- `1-abs(A106743(n+1))` -/
def P3008565628359411562.Spec : Prop :=
  ∀ n, P3008565628359411562.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P10688515924190642427

`char[A000469(n+1)-1]`
-/

namespace A354819.P10688515924190642427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354819.P10688515924190642427

namespace A354819

/-- `char[A000469(n+1)-1]` -/
def P10688515924190642427.Spec : Prop :=
  ∀ n, (P10688515924190642427.a n : ℤ) = A354819 (n + 1)

end A354819

/-! ## A354819.P11987611109561341012

`char[A361321(n+1)-1]`
-/

namespace A354819.P11987611109561341012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354819.P11987611109561341012

namespace A354819

/-- `char[A361321(n+1)-1]` -/
def P11987611109561341012.Spec : Prop :=
  ∀ n, (P11987611109561341012.a n : ℤ) = A354819 (n + 1)

end A354819

/-! ## A354819.P752557779029355372

`and(1, A211776(n+1)%3)`
-/

namespace A354819.P752557779029355372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A211776 (n + 1)) 3)

end

end A354819.P752557779029355372

namespace A354819

/-- `and(1, A211776(n+1)%3)` -/
def P752557779029355372.Spec : Prop :=
  ∀ n, P752557779029355372.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P7560012507831909030

`C(A334085(n+1), n+1)`
-/

namespace A354819.P7560012507831909030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334085 (n + 1)).toNat (n + 1)

end

end A354819.P7560012507831909030

namespace A354819

/-- `C(A334085(n+1), n+1)` -/
def P7560012507831909030.Spec : Prop :=
  ∀ n, (P7560012507831909030.a n : ℤ) = A354819 (n + 1)

end A354819

/-! ## A354819.P11221841527033153715

`C(A340679(n+1), n+1)`
-/

namespace A354819.P11221841527033153715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340679 (n + 1)).toNat (n + 1)

end

end A354819.P11221841527033153715

namespace A354819

/-- `C(A340679(n+1), n+1)` -/
def P11221841527033153715.Spec : Prop :=
  ∀ n, (P11221841527033153715.a n : ℤ) = A354819 (n + 1)

end A354819

/-! ## A354819.P15350654352994024779

`∑{e}[A226177(n+1)+1, #]`
-/

namespace A354819.P15350654352994024779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A354819.P15350654352994024779

namespace A354819

/-- `∑{e}[A226177(n+1)+1, #]` -/
def P15350654352994024779.Spec : Prop :=
  ∀ n, (P15350654352994024779.a n : ℤ) = A354819 (n + 1)

end A354819

/-! ## A354819.P9412276299361978920

`ceil(sin(∏{d}[n+1, A008683(#)]))`
-/

namespace A354819.P9412276299361978920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((∏ d ∈ Nat.divisors (f1 n), A008683 d : ℤ) : ℝ)⌉

end

end A354819.P9412276299361978920

namespace A354819

/-- `ceil(sin(∏{d}[n+1, A008683(#)]))` -/
def P9412276299361978920.Spec : Prop :=
  ∀ n, P9412276299361978920.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P452727340123696616

`A023532(A074823(n+1))`
-/

namespace A354819.P452727340123696616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A074823 (n + 1)).toNat

end

end A354819.P452727340123696616

namespace A354819

/-- `A023532(A074823(n+1))` -/
def P452727340123696616.Spec : Prop :=
  ∀ n, P452727340123696616.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P12212095116535370451

`A127705(n+1)%A118136(n)`
-/

namespace A354819.P12212095116535370451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127705 (n + 1)) (A118136 n)

end

end A354819.P12212095116535370451

namespace A354819

/-- `A127705(n+1)%A118136(n)` -/
def P12212095116535370451.Spec : Prop :=
  ∀ n, P12212095116535370451.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P1312623533865791681

`and(A002033(n), A005171(n+1))`
-/

namespace A354819.P1312623533865791681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A005171 (n + 1))

end

end A354819.P1312623533865791681

namespace A354819

/-- `and(A002033(n), A005171(n+1))` -/
def P1312623533865791681.Spec : Prop :=
  ∀ n, P1312623533865791681.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P18156511002724177808

`and(A005171(n+1), A195588(n))`
-/

namespace A354819.P18156511002724177808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (n + 1)) (A195588 n)

end

end A354819.P18156511002724177808

namespace A354819

/-- `and(A005171(n+1), A195588(n))` -/
def P18156511002724177808.Spec : Prop :=
  ∀ n, P18156511002724177808.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P3298867771188438513

`A001221((A226177(n+1)+1)²)`
-/

namespace A354819.P3298867771188438513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A226177 (n + 1) + 1) ^ 2).toNat

end

end A354819.P3298867771188438513

namespace A354819

/-- `A001221((A226177(n+1)+1)²)` -/
def P3298867771188438513.Spec : Prop :=
  ∀ n, P3298867771188438513.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P6528452329774980118

`A069158(n+1)+A010051(n+1)`
-/

namespace A354819.P6528452329774980118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) + A010051 (n + 1)

end

end A354819.P6528452329774980118

namespace A354819

/-- `A069158(n+1)+A010051(n+1)` -/
def P6528452329774980118.Spec : Prop :=
  ∀ n, P6528452329774980118.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P12266897857575339105

`A380477(n+1)+A380469(n+1)`
-/

namespace A354819.P12266897857575339105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380477 (n + 1) + A380469 (n + 1)

end

end A354819.P12266897857575339105

namespace A354819

/-- `A380477(n+1)+A380469(n+1)` -/
def P12266897857575339105.Spec : Prop :=
  ∀ n, P12266897857575339105.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P16471276201333940928

`A008966(n+1)-A010051(n+1)`
-/

namespace A354819.P16471276201333940928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) - A010051 (n + 1)

end

end A354819.P16471276201333940928

namespace A354819

/-- `A008966(n+1)-A010051(n+1)` -/
def P16471276201333940928.Spec : Prop :=
  ∀ n, P16471276201333940928.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P4840291912443101710

`A005171(n+1)-A107078(n+1)`
-/

namespace A354819.P4840291912443101710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - A107078 (n + 1)

end

end A354819.P4840291912443101710

namespace A354819

/-- `A005171(n+1)-A107078(n+1)` -/
def P4840291912443101710.Spec : Prop :=
  ∀ n, P4840291912443101710.a n = A354819 (n + 1)

end A354819

/-! ## A354819.P1285240411421460014

`A005171(n+1)*A008966(n+1)`
-/

namespace A354819.P1285240411421460014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A008966 (n + 1)

end

end A354819.P1285240411421460014

namespace A354819

/-- `A005171(n+1)*A008966(n+1)` -/
def P1285240411421460014.Spec : Prop :=
  ∀ n, P1285240411421460014.a n = A354819 (n + 1)

end A354819

/-!
# A354820: a(n) = 1 if A346242(n) = 0, otherwise 0.

The programs for A354820, there is no canonical definition to state claims against.
-/

/-! ## A354820.P16016536887235397888

`char[eq[0, A346242(n+1)]]`
-/

namespace A354820.P16016536887235397888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354820.P16016536887235397888

/-! ## A354820.P359788834950575145

`∏{d}[A346242(n+1), A001222(#)]`
-/

namespace A354820.P359788834950575145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A354820.P359788834950575145

/-! ## A354820.P12258620135558440621

`char[eq[0, A346243(n+1)-A324198(n+1)]]`
-/

namespace A354820.P12258620135558440621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346243 (n + 1) - A324198 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354820.P12258620135558440621

/-! ## A354820.P8381980740678428723

`A001222(gcd(A000040(n+1), A346242(n+1)))`
-/

namespace A354820.P8381980740678428723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000040 (n + 1)) (A346242 (n + 1)))

end

end A354820.P8381980740678428723

/-! ## A354820.P261848896566862244

`∏{d}[A346242(n+1), A331292(#)]`
-/

namespace A354820.P261848896566862244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A331292 d

end

end A354820.P261848896566862244

/-! ## A354820.P14513337953906381940

`∏{d}[A346242(n+1), A049600(#)]`
-/

namespace A354820.P14513337953906381940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A049600 d

end

end A354820.P14513337953906381940

/-! ## A354820.P1814420612783088768

`∏{d}[A346242(n+1), A049615(#)]`
-/

namespace A354820.P1814420612783088768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A049615 d

end

end A354820.P1814420612783088768

/-! ## A354820.P13016022317819785112

`∏{d}[A346242(n+1), A117497(#)]`
-/

namespace A354820.P13016022317819785112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A117497 d

end

end A354820.P13016022317819785112

/-! ## A354820.P14713951313126506721

`A000038(abs(A346242(n+1)))/2`
-/

namespace A354820.P14713951313126506721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 |A346242 (n + 1)|.toNat : ℚ) / 2

end

end A354820.P14713951313126506721

/-! ## A354820.P13625638006604430175

`∏{d}[A346242(n+1), A049597(#)]`
-/

namespace A354820.P13625638006604430175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A049597 d

end

end A354820.P13625638006604430175

/-! ## A354820.P16125170156070506923

`∏{d}[A346242(n+1), A211514(#)]`
-/

namespace A354820.P16125170156070506923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A211514 d

end

end A354820.P16125170156070506923

/-! ## A354820.P141253288898004406

`∏{d}[A346242(n+1), A049616(#)]`
-/

namespace A354820.P141253288898004406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A049616 d

end

end A354820.P141253288898004406

/-!
# A354824: Dirichlet inverse of A351084, where A351084(n) = gcd(n, A328572(n)), and A328572 converts the primorial base expansion of n into its prime product form, but with 1 subtracted from all nonzero digits.

The programs for A354824, there is no canonical definition to state claims against.
-/

/-! ## A354824.P4336355713433778220

`A008683(n+1)-A138811(A020711(n))`
-/

namespace A354824.P4336355713433778220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A138811 (A020711 n).toNat

end

end A354824.P4336355713433778220

/-! ## A354824.P5289976008576091333

`A008683(n+1)-A083910(A081436(n))`
-/

namespace A354824.P5289976008576091333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A083910 (A081436 n).toNat

end

end A354824.P5289976008576091333

/-! ## A354824.P1437525842637147999

`A008683(n+1)-A184955(A099174(n+2))`
-/

namespace A354824.P1437525842637147999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A184955 (A099174 (n + 2)).toNat

end

end A354824.P1437525842637147999

/-! ## A354824.P14263187594167474335

`A008683(n+1)-A184955(A180662(n))`
-/

namespace A354824.P14263187594167474335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A184955 (A180662 n).toNat

end

end A354824.P14263187594167474335

/-! ## A354824.P14455955213122895885

`A008683(n+1)-A250002(A115253(n+1))`
-/

namespace A354824.P14455955213122895885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A250002 (A115253 (n + 1)).toNat

end

end A354824.P14455955213122895885

/-!
# A354825: Dirichlet inverse of A293442, where A293442 is multiplicative with a(p^e) = A019565(e).

The programs for A354825, there is no canonical definition to state claims against.
-/

/-! ## A354825.P12302390327131361820

`(-2)^∑{e}[(n+1)^5, #%2]`
-/

namespace A354825.P12302390327131361820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % 2)

end

end A354825.P12302390327131361820

/-! ## A354825.P10113383265324719948

`∏{e}[n+1, (-C(2, #))^#]-A258019(2^val(n+1, 2))`
-/

namespace A354825.P10113383265324719948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p - A258019 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A354825.P10113383265324719948

/-! ## A354825.P15129121784918286534

`∏{e}[n+1, 2*(-1)^#]/A327523(∏{e}[n+1, #^#])`
-/

namespace A354825.P15129121784918286534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p : ℤ) : ℚ) / (A327523 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ Nat.factorization (f2 n) p) : ℚ)

end

end A354825.P15129121784918286534

/-! ## A354825.P12511760020130610774

`∏{e}[n+1, (-C(2, #))^#]-A056626((n+1)*Δ[n^3])`
-/

namespace A354825.P12511760020130610774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p - A056626 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A354825.P12511760020130610774

/-! ## A354825.P11666726083104085042

`∏{e}[n+1, (-C(2, #))^#]-A104488((n+1)*Δ[n^3])`
-/

namespace A354825.P11666726083104085042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p - A104488 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A354825.P11666726083104085042

/-!
# A354830: a(n) is the number of permutations p of [n] such that gcd(i, p(i)) > 1 for 2 <= i <= n.

The programs for A354830, there is no canonical definition to state claims against.
-/

/-! ## A354830.P16173000432176466610

`A257694(A173437(n+1)-1)`
-/

namespace A354830.P16173000432176466610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257694 (A173437 (n + 1) - 1).toNat

end

end A354830.P16173000432176466610

/-! ## A354830.P2571548410933083944

`A319187(A056813(A347304(n+1)))`
-/

namespace A354830.P2571548410933083944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319187 (A056813 (A347304 (n + 1)).toNat).toNat

end

end A354830.P2571548410933083944

/-! ## A354830.P15935759353868582231

`A316413(A293607(n))-A331315(n)`
-/

namespace A354830.P15935759353868582231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (A293607 n).toNat - A331315 n

end

end A354830.P15935759353868582231

/-! ## A354830.P14147478080251948937

`A227355(A120588(n)*A261679(n))`
-/

namespace A354830.P14147478080251948937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 (A120588 n * A261679 n).toNat

end

end A354830.P14147478080251948937

/-! ## A354830.P11222583967423186858

`A045828(A045905(n)-A045888(n+1))`
-/

namespace A354830.P11222583967423186858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (A045905 n - A045888 (n + 1)).toNat

end

end A354830.P11222583967423186858

/-!
# A354832: Integers m such that iterating the map f(x) = x^2 + 1 on m generates a number ending with m in binary format.

The programs for A354832, there is no canonical definition to state claims against.
-/

/-! ## A354832.P112614651612466318

`lt[A213671(n+1), n+2]`
-/

namespace A354832.P112614651612466318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213671 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354832.P112614651612466318

/-! ## A354832.P18206694381617171895

`A332966(2^n)`
-/

namespace A354832.P18206694381617171895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332966 (2 ^ n)

end

end A354832.P18206694381617171895

/-! ## A354832.P1298099593471755818

`record[A332966(A001316(n))]`
-/

namespace A354832.P1298099593471755818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332966 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354832.P1298099593471755818

/-! ## A354832.P7376788580856006042

`A332966(A000079(n))%A000079(n)`
-/

namespace A354832.P7376788580856006042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332966 (A000079 n).toNat) (A000079 n)

end

end A354832.P7376788580856006042

/-! ## A354832.P12833574763541914421

`lcm(A033999(n), A332966(A000079(n)))`
-/

namespace A354832.P12833574763541914421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A332966 (A000079 n).toNat)

end

end A354832.P12833574763541914421

/-!
# A354834: Numbers k such that 2*k can be written in at least one way as p+q with p, q, p+2*q and 2*q+p all prime.

The programs for A354834, there is no canonical definition to state claims against.
-/

/-! ## A354834.P7489137686569982369

`lt[0, A182376(n+1)]+1`
-/

namespace A354834.P7489137686569982369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354834.P7489137686569982369

/-! ## A354834.P18319920513831464081

`lt[0, A182376(n-a(2%n))]` with `a(0)=0`
-/

namespace A354834.P18319920513831464081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A182376 ((n : ℤ) - f2 (2 % n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354834.P18319920513831464081

/-! ## A354834.P8173855638594321909

`lt[0, A237885(n+1)]+1`
-/

namespace A354834.P8173855638594321909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354834.P8173855638594321909

/-! ## A354834.P4241462720536763904

`lt[0, A237885(A000038(n)+n)]`
-/

namespace A354834.P4241462720536763904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237885 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354834.P4241462720536763904

/-! ## A354834.P16617435289066026023

`eq[2, A001222(a(A237885(n+1))+32)]+1` with `a(0)=-25`
-/

namespace A354834.P16617435289066026023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-25] fun n f2 =>
  A001222 (f2 (A237885 (n + 1)).toNat + 32).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354834.P16617435289066026023

/-!
# A354835: Numbers k such that the k-th and (k+1)-th Stieltjes constants have opposite signs.

The programs for A354835, there is no canonical definition to state claims against.
-/

/-! ## A354835.P6366809454287433582

`∑[A114524(n)]-1`
-/

namespace A354835.P6366809454287433582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A354835.P6366809454287433582

/-! ## A354835.P7333036074130699676

`∑[A114524(n)%A080036(n)]`
-/

namespace A354835.P7333036074130699676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114524 n) (A080036 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354835.P7333036074130699676

/-! ## A354835.P8872051444727511552

`∑[xor(A000007(n), A114524(n))]`
-/

namespace A354835.P8872051444727511552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A114524 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354835.P8872051444727511552

/-! ## A354835.P13668567474320052647

`∑[A057428(n)²*A114524(n)]`
-/

namespace A354835.P13668567474320052647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A114524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354835.P13668567474320052647

/-! ## A354835.P291688421934318346

`A023443(∑[A114524(n)])`
-/

namespace A354835.P291688421934318346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354835.P291688421934318346

/-! ## A354835.P5467838997914066734

`abs(A024000(∑[A114524(n)]))`
-/

namespace A354835.P5467838997914066734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A354835.P5467838997914066734

/-! ## A354835.P11258994679854003521

`∑[and(A114524(n), A114569(n))]`
-/

namespace A354835.P11258994679854003521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114524 n) (A114569 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354835.P11258994679854003521

/-!
# A354836: Triangle T(n,k) where, if n-k and n+k are prime, T(n,k) = n+k is the greater term of a Goldbach partition of 2n into two odd primes, or zero otherwise.

The programs for A354836, there is no canonical definition to state claims against.
-/

/-! ## A354836.P3476970478278828196

`A353612(lt[A325328(2*(n+1)), A077526(n+1)])`
-/

namespace A354836.P3476970478278828196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325328 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353612 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354836.P3476970478278828196

/-! ## A354836.P4065894717037873103

`A353612(lt[A347644(2*(n+1)), A077526(n+1)])`
-/

namespace A354836.P4065894717037873103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347644 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353612 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354836.P4065894717037873103

/-! ## A354836.P7554226143691062439

`A154720(A063657(n+1)+1)%A121265(n)`
-/

namespace A354836.P7554226143691062439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154720 (A063657 (n + 1) + 1).toNat) (A121265 (n + 10))

end

end A354836.P7554226143691062439

/-! ## A354836.P14705574443561393563

`A353612(comp[∑[n]]%A352230(n+1))`
-/

namespace A354836.P14705574443561393563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353612 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A352230 (n + 1))).toNat

end

end A354836.P14705574443561393563

/-! ## A354836.P15197535601884993358

`A353612(lt[1, A374700(3*(n+1))])`
-/

namespace A354836.P15197535601884993358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374700 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A354836.P15197535601884993358

/-!
# A354837: Odd numbers k such that gcd(k, A007088(k)) != 1.

The programs for A354837, the canonical program `A354837.P13891097066587560124` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354837 has offset 1).

The definition of A354837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354837.P13891097066587560124

`lt[1, A001057(gcd(n, A007088(n)))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A354837

/-- `lt[1, A001057(gcd(n, A007088(n)))]` -/
def P13891097066587560124.Spec : Prop :=
  ∀ n, (P13891097066587560124.a n : ℤ) = A354837 (n + 1)

theorem P13891097066587560124.correct : P13891097066587560124.Spec := by
  intro n
  simp only [A354837, Nat.add_sub_cancel]

end A354837

/-! ## A354837.P17998851040284087373

`A023239(A227549(n+4))+2`
-/

namespace A354837.P17998851040284087373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023239 (A227549 (n + 4)).toNat + 2

end

end A354837.P17998851040284087373

namespace A354837

/-- `A023239(A227549(n+4))+2` -/
def P17998851040284087373.Spec : Prop :=
  ∀ n, P17998851040284087373.a n = A354837 (n + 1)

end A354837

/-! ## A354837.P1097827309071209935

`A046523(A023277(n+3))+A023239(n+3)`
-/

namespace A354837.P1097827309071209935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A023277 (n + 3)).toNat + A023239 (n + 3)

end

end A354837.P1097827309071209935

namespace A354837

/-- `A046523(A023277(n+3))+A023239(n+3)` -/
def P1097827309071209935.Spec : Prop :=
  ∀ n, P1097827309071209935.a n = A354837 (n + 1)

end A354837

/-!
# A354838: For n >= 1, a(n) = A007088(n)/gcd(n, A007088(n)).

The programs for A354838, the canonical program `A354838.P6821527339940627715` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354838 has offset 1).

The definition of A354838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354838.P6821527339940627715

`A007088(n+1)/gcd(n+1, A007088(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A354838

/-- `A007088(n+1)/gcd(n+1, A007088(n+1))` -/
def P6821527339940627715.Spec : Prop :=
  ∀ n, P6821527339940627715.a n = (A354838 (n + 1) : ℚ)

end A354838

/-! ## A354838.P18139756132166040024

`lcm(n+1, A007088(n+1))/(n+1)`
-/

namespace A354838.P18139756132166040024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A007088 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A354838.P18139756132166040024

namespace A354838

/-- `lcm(n+1, A007088(n+1))/(n+1)` -/
def P18139756132166040024.Spec : Prop :=
  ∀ n, P18139756132166040024.a n = (A354838 (n + 1) : ℚ)

end A354838

/-! ## A354838.P17971348274776282478

`A007088(n+1)/A076775(n+1)`
-/

namespace A354838.P17971348274776282478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (n + 1) : ℚ) / (A076775 (n + 1) : ℚ)

end

end A354838.P17971348274776282478

namespace A354838

/-- `A007088(n+1)/A076775(n+1)` -/
def P17971348274776282478.Spec : Prop :=
  ∀ n, P17971348274776282478.a n = (A354838 (n + 1) : ℚ)

end A354838

/-! ## A354838.P10597548136551311115

`∑[A138342(n+1)]/A076775(n+1)`
-/

namespace A354838.P10597548136551311115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A076775 (n + 1) : ℚ)

end

end A354838.P10597548136551311115

namespace A354838

/-- `∑[A138342(n+1)]/A076775(n+1)` -/
def P10597548136551311115.Spec : Prop :=
  ∀ n, P10597548136551311115.a n = (A354838 (n + 1) : ℚ)

end A354838

/-! ## A354838.P2452099391196810587

`Δ[A067894(n)]/A076775(n+1)`
-/

namespace A354838.P2452099391196810587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A076775 (n + 1) : ℚ)

end

end A354838.P2452099391196810587

namespace A354838

/-- `Δ[A067894(n)]/A076775(n+1)` -/
def P2452099391196810587.Spec : Prop :=
  ∀ n, P2452099391196810587.a n = (A354838 (n + 1) : ℚ)

end A354838

/-! ## A354838.P3748710935319425465

`sqrt(A063009(n+1))/A076775(n+1)`
-/

namespace A354838.P3748710935319425465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (n + 1) : ℝ) / (A076775 (n + 1) : ℝ)

end

end A354838.P3748710935319425465

namespace A354838

/-- `sqrt(A063009(n+1))/A076775(n+1)` -/
def P3748710935319425465.Spec : Prop :=
  ∀ n, P3748710935319425465.a n = (A354838 (n + 1) : ℝ)

end A354838

/-!
# A354841: Number of primes between n and n+log(n), exclusive.

The programs for A354841, there is no canonical definition to state claims against.
-/

/-! ## A354841.P14722937098506962989

`A120936(n+1)-char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A354841.P14722937098506962989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A354841.P14722937098506962989

/-! ## A354841.P4946936218233571892

`A120936(n+1)-Δ[A230980(n)]`
-/

namespace A354841.P4946936218233571892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (n + 1) - (f1 (n + 1) - f1 n)

end

end A354841.P4946936218233571892

/-! ## A354841.P7586933494031276443

`A120936(n+1)-A010051(n+1)`
-/

namespace A354841.P7586933494031276443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (n + 1) - A010051 (n + 1)

end

end A354841.P7586933494031276443

/-! ## A354841.P4240879918757308186

`A120936(n+1)-A129950(n+1)²`
-/

namespace A354841.P4240879918757308186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (n + 1) - A129950 (n + 1) ^ 2

end

end A354841.P4240879918757308186

/-! ## A354841.P18141226873183923749

`A120936(n+1)-char[A006093(n+1)]`
-/

namespace A354841.P18141226873183923749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354841.P18141226873183923749

/-! ## A354841.P2062035935103134888

`A120936(n+1)-A001222(A089026(n+1))`
-/

namespace A354841.P2062035935103134888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (n + 1) - A001222 (A089026 (n + 1)).toNat

end

end A354841.P2062035935103134888

/-! ## A354841.P13962182376817813979

`A000720(A212445(n+1))-A000720(n+1)`
-/

namespace A354841.P13962182376817813979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A212445 (n + 1)).toNat - A000720 (n + 1)

end

end A354841.P13962182376817813979

/-! ## A354841.P1223163455971127537

`A230980(A212445(n+1))-∑[A010051(n+1)]`
-/

namespace A354841.P1223163455971127537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A212445 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354841.P1223163455971127537

/-! ## A354841.P18183798095231917394

`A120936(n+1)+A230980(n)-A000720(n+1)`
-/

namespace A354841.P18183798095231917394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120936 (n + 1) + (A230980 n - A000720 (n + 1))

end

end A354841.P18183798095231917394

/-! ## A354841.P5926187738328894261

`A230980(A212445(n+1))-(A230980(n)+A010051(n+1))`
-/

namespace A354841.P5926187738328894261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A212445 (n + 1)).toNat - (A230980 n + A010051 (n + 1))

end

end A354841.P5926187738328894261

/-!
# A354843: a(n) = n! * Sum_{d|n} (n/d)^d / d!.

The programs for A354843, the canonical program `A354843.P1048998598308698844` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354843 has offset 1).

The definition of A354843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354843.P1048998598308698844

`(n+1)!*∑{d}[n+1, ((n+1)/#)^#/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354843

/-- `(n+1)!*∑{d}[n+1, ((n+1)/#)^#/#!]` -/
def P1048998598308698844.Spec : Prop :=
  ∀ n, P1048998598308698844.a n = (A354843 (n + 1) : ℚ)

end A354843

/-!
# A354844: a(n) = n! * Sum_{d|n} (n/d)^d / (d! * (n/d)!).

The programs for A354844, the canonical program `A354844.P12382148788933614355` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354844 has offset 1).

The definition of A354844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354844.P12382148788933614355

`(n+1)!*∑{d}[n+1, ((n+1)/#)^#/(#!*((n+1)/#)!)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354844

/-- `(n+1)!*∑{d}[n+1, ((n+1)/#)^#/(#!*((n+1)/#)!)]` -/
def P12382148788933614355.Spec : Prop :=
  ∀ n, P12382148788933614355.a n = (A354844 (n + 1) : ℚ)

end A354844

/-!
# A354845: a(n) = n! * Sum_{d|n} (n/d)^(d-1) / d!.

The programs for A354845, the canonical program `A354845.P13615095933118929295` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354845 has offset 1).

The definition of A354845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354845.P13615095933118929295

`(n+1)!*∑{d}[n+1, ((n+1)/#)^(#-1)/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354845

/-- `(n+1)!*∑{d}[n+1, ((n+1)/#)^(#-1)/#!]` -/
def P13615095933118929295.Spec : Prop :=
  ∀ n, P13615095933118929295.a n = (A354845 (n + 1) : ℚ)

end A354845

/-! ## A354845.P8655435556047355788

`(n+1)!*∑{d}[n+1, ((n+1)/#)^#/(#!*(n+1)/#)]`
-/

namespace A354845.P8655435556047355788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d / ((Nat.factorial d : ℚ) * ((n + 1 : ℚ) / (d : ℚ))))

end

end A354845.P8655435556047355788

namespace A354845

/-- `(n+1)!*∑{d}[n+1, ((n+1)/#)^#/(#!*(n+1)/#)]` -/
def P8655435556047355788.Spec : Prop :=
  ∀ n, P8655435556047355788.a n = (A354845 (n + 1) : ℚ)

end A354845

/-!
# A354847: Number of binary relations on [n] that are idempotent and reduced.

The programs for A354847, there is no canonical definition to state claims against.
-/

/-! ## A354847.P5197895546035231843

`A175018(2*(n+1)^n)`
-/

namespace A354847.P5197895546035231843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175018 (2 * (n + 1) ^ n)

end

end A354847.P5197895546035231843

/-!
# A354848: a(n) = (n-1)! * Sum_{d|n} d^(n/d + 1).

The programs for A354848, the canonical program `A354848.P1353386790687208976` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354848 has offset 1).

The definition of A354848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354848.P1353386790687208976

`n!*∑{d}[n+1, #^((n+1)/#+1)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354848

/-- `n!*∑{d}[n+1, #^((n+1)/#+1)]` -/
def P1353386790687208976.Spec : Prop :=
  ∀ n, P1353386790687208976.a n = (A354848 (n + 1) : ℝ)

end A354848

/-! ## A354848.P1017338307382000295

`n!*A078308(n+1)`
-/

namespace A354848.P1017338307382000295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A078308 (n + 1)

end

end A354848.P1017338307382000295

namespace A354848

/-- `n!*A078308(n+1)` -/
def P1017338307382000295.Spec : Prop :=
  ∀ n, P1017338307382000295.a n = A354848 (n + 1)

end A354848

/-! ## A354848.P13209851487137140732

`n!*A308502(∑[n+2])`
-/

namespace A354848.P13209851487137140732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A308502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354848.P13209851487137140732

namespace A354848

/-- `n!*A308502(∑[n+2])` -/
def P13209851487137140732.Spec : Prop :=
  ∀ n, P13209851487137140732.a n = A354848 (n + 1)

end A354848

/-! ## A354848.P15584165540404850528

`∑{d}[n+1, #^ceil((n+2)/#)]*A000142(n)`
-/

namespace A354848.P15584165540404850528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (⌈(n + 2 : ℚ) / (d : ℚ)⌉ : ℤ)) * (A000142 n : ℚ)

end

end A354848.P15584165540404850528

namespace A354848

/-- `∑{d}[n+1, #^ceil((n+2)/#)]*A000142(n)` -/
def P15584165540404850528.Spec : Prop :=
  ∀ n, P15584165540404850528.a n = (A354848 (n + 1) : ℚ)

end A354848

/-! ## A354848.P15484116247074766973

`n!*A294579(∑[n+2])`
-/

namespace A354848.P15484116247074766973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A294579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354848.P15484116247074766973

namespace A354848

/-- `n!*A294579(∑[n+2])` -/
def P15484116247074766973.Spec : Prop :=
  ∀ n, P15484116247074766973.a n = A354848 (n + 1)

end A354848

/-!
# A354849: a(n) = (n-1)! * Sum_{d|n} d^(n/d) / (d-1)!.

The programs for A354849, the canonical program `A354849.P10322145578739384168` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354849 has offset 1).

The definition of A354849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354849.P10322145578739384168

`n!*∑{d}[n+1, #^((n+1)/#)/(#-1)!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354849

/-- `n!*∑{d}[n+1, #^((n+1)/#)/(#-1)!]` -/
def P10322145578739384168.Spec : Prop :=
  ∀ n, P10322145578739384168.a n = (A354849 (n + 1) : ℝ)

end A354849

/-!
# A354850: a(n) is the number of free polyominoes of width 4 and size n.

The programs for A354850, there is no canonical definition to state claims against.
-/

/-! ## A354850.P557369592395535508

`A349192(A278555(n)-A048760(n))`
-/

namespace A354850.P557369592395535508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349192 (A278555 n - A048760 n).toNat

end

end A354850.P557369592395535508

/-!
# A354851: a(n) = (n-1)! * Sum_{d|n} d^(n/d).

The programs for A354851, the canonical program `A354851.P9421620093565977383` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354851 has offset 1).

The definition of A354851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354851.P9421620093565977383

`n!*∑{d}[n+1, #^((n+1)/#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354851

/-- `n!*∑{d}[n+1, #^((n+1)/#)]` -/
def P9421620093565977383.Spec : Prop :=
  ∀ n, P9421620093565977383.a n = (A354851 (n + 1) : ℝ)

end A354851

/-! ## A354851.P7144545095441023362

`n!*A055225(n+1)`
-/

namespace A354851.P7144545095441023362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A055225 (n + 1)

end

end A354851.P7144545095441023362

namespace A354851

/-- `n!*A055225(n+1)` -/
def P7144545095441023362.Spec : Prop :=
  ∀ n, P7144545095441023362.a n = A354851 (n + 1)

end A354851

/-! ## A354851.P17988590739188590481

`n!*A308502(∑[n+1])`
-/

namespace A354851.P17988590739188590481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A308502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354851.P17988590739188590481

namespace A354851

/-- `n!*A308502(∑[n+1])` -/
def P17988590739188590481.Spec : Prop :=
  ∀ n, P17988590739188590481.a n = A354851 (n + 1)

end A354851

/-! ## A354851.P549931387637921970

`A000142(n)*A055225(n+1)`
-/

namespace A354851.P549931387637921970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A055225 (n + 1)

end

end A354851.P549931387637921970

namespace A354851

/-- `A000142(n)*A055225(n+1)` -/
def P549931387637921970.Spec : Prop :=
  ∀ n, P549931387637921970.a n = A354851 (n + 1)

end A354851

/-! ## A354851.P8925996387007175116

`n!*A308690(∑[n+2])`
-/

namespace A354851.P8925996387007175116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A308690 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354851.P8925996387007175116

namespace A354851

/-- `n!*A308690(∑[n+2])` -/
def P8925996387007175116.Spec : Prop :=
  ∀ n, P8925996387007175116.a n = A354851 (n + 1)

end A354851

/-!
# A354855: a(n) = floor(n*(2+sqrt(5))^n), equivalently, floor(n*phi^(3n)), where phi = (1+sqrt(5))/2 is the golden ratio.

The programs for A354855, there is no canonical definition to state claims against.
-/

/-! ## A354855.P6848175700281261744

`floor(n*sqrt(A087215(n)))`
-/

namespace A354855.P6848175700281261744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (A087215 n : ℝ)⌋

end

end A354855.P6848175700281261744

/-! ## A354855.P11744529805462391688

`floor(n*sqrt(A005248(3*n)))`
-/

namespace A354855.P11744529805462391688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (A005248 (3 * n) : ℝ)⌋

end

end A354855.P11744529805462391688

/-! ## A354855.P18240177199879823276

`floor(sqrt(n²*A104626(3*n+2)))`
-/

namespace A354855.P18240177199879823276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n ^ 2 : ℤ) * A104626 (3 * n + 2))

end

end A354855.P18240177199879823276

/-!
# A354856: a(1) = 1, a(n) = the number of times a(n-1) appears among the first n-2 terms.

The programs for A354856, the canonical program `A354856.P1027179100370006014` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354856 has offset 1).

The definition of A354856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354856.P1027179100370006014

`a(n-4)+n%2` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354856

/-- `a(n-4)+n%2` -/
def P1027179100370006014.Spec : Prop :=
  ∀ n, (P1027179100370006014.a n : ℤ) = A354856 (n + 1)

theorem P1027179100370006014.correct : P1027179100370006014.Spec := by
  intro n
  simp only [A354856, Nat.add_sub_cancel]

end A354856

/-! ## A354856.P17115647855855326409

`∑[a(n-2)-(-1)^n]-a(n-2)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A354856.P17115647855855326409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A354856.P17115647855855326409

namespace A354856

/-- `∑[a(n-2)-(-1)^n]-a(n-2)` -/
def P17115647855855326409.Spec : Prop :=
  ∀ n, P17115647855855326409.a n = A354856 (n + 1)

end A354856

/-! ## A354856.P2820811890764948662

`ceil(lcm(2, n+1)/4)%(gcd(1-n, floor(n/2))+1)`
-/

namespace A354856.P2820811890764948662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉ (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ + 1 : ℤ)

end

end A354856.P2820811890764948662

namespace A354856

/-- `ceil(lcm(2, n+1)/4)%(gcd(1-n, floor(n/2))+1)` -/
def P2820811890764948662.Spec : Prop :=
  ∀ n, P2820811890764948662.a n = A354856 (n + 1)

end A354856

/-! ## A354856.P4366888367713294370

`A152271(n)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A354856.P4366888367713294370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A152271 n - a (n - 2)

end

end A354856.P4366888367713294370

namespace A354856

/-- `A152271(n)-a(n-2)` -/
def P4366888367713294370.Spec : Prop :=
  ∀ n, P4366888367713294370.a n = A354856 (n + 1)

end A354856

/-! ## A354856.P7973251654655402308

`and(A003817(A124625(n)), A087620(n))`
-/

namespace A354856.P7973251654655402308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A124625 n).toNat) (A087620 n)

end

end A354856.P7973251654655402308

namespace A354856

/-- `and(A003817(A124625(n)), A087620(n))` -/
def P7973251654655402308.Spec : Prop :=
  ∀ n, P7973251654655402308.a n = A354856 (n + 1)

end A354856

/-! ## A354856.P2999006655630627357

`A057979(n+2)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A354856.P2999006655630627357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A057979 (n + 2) - a (n - 2)

end

end A354856.P2999006655630627357

namespace A354856

/-- `A057979(n+2)-a(n-2)` -/
def P2999006655630627357.Spec : Prop :=
  ∀ n, P2999006655630627357.a n = A354856 (n + 1)

end A354856

/-! ## A354856.P15242198430622726525

`and(A087620(n), A234643(n))`
-/

namespace A354856.P15242198430622726525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087620 n) (A234643 n)

end

end A354856.P15242198430622726525

namespace A354856

/-- `and(A087620(n), A234643(n))` -/
def P15242198430622726525.Spec : Prop :=
  ∀ n, P15242198430622726525.a n = A354856 (n + 1)

end A354856

/-!
# A354859: a(n) is the numerator of 1/prime(n) + 2/prime(n-1) + 3/prime(n-2) + ... + (n-1)/3 + n/2.

The programs for A354859, there is no canonical definition to state claims against.
-/

/-! ## A354859.P15327593698951477102

`A103011(A302796(n+1))-A076497(n+1)`
-/

namespace A354859.P15327593698951477102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103011 (A302796 (n + 1)).toNat - A076497 (n + 1)

end

end A354859.P15327593698951477102

/-!
# A354860: a(n) is the denominator of 1/prime(n) + 2/prime(n-1) + 3/prime(n-2) + ... + (n-1)/3 + n/2.

The programs for A354860, there is no canonical definition to state claims against.
-/

/-! ## A354860.P2896618638969447596

`A275733(A180875(n)-A255588(n))`
-/

namespace A354860.P2896618638969447596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A180875 n - A255588 n).toNat

end

end A354860.P2896618638969447596

/-! ## A354860.P16765924610853184371

`A328571(floor(10^n/9)+n^n)`
-/

namespace A354860.P16765924610853184371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (⌊(10 ^ n : ℚ) / 9⌋ + (n ^ n : ℤ)).toNat

end

end A354860.P16765924610853184371

/-!
# A354861: Base-n digit sum of A002034(n)!.

The programs for A354861, there is no canonical definition to state claims against.
-/

/-! ## A354861.P5359108716840844486

`A354854(A043318(n+2))`
-/

namespace A354861.P5359108716840844486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354854 (A043318 (n + 2)).toNat

end

end A354861.P5359108716840844486

/-! ## A354861.P13607901139064855721

`A354854(A044915(n+2))`
-/

namespace A354861.P13607901139064855721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354854 (A044915 (n + 2)).toNat

end

end A354861.P13607901139064855721

/-! ## A354861.P3941468451927770124

`A354854(A161951(n+2))`
-/

namespace A354861.P3941468451927770124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354854 (A161951 (n + 2)).toNat

end

end A354861.P3941468451927770124

/-! ## A354861.P18054476562115367097

`A354854(A071786(n+1)+1)`
-/

namespace A354861.P18054476562115367097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354854 (A071786 (n + 1) + 1).toNat

end

end A354861.P18054476562115367097

/-!
# A354862: a(n) = n! * Sum_{d|n} (n/d)! / d!.

The programs for A354862, the canonical program `A354862.P392139479352196327` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354862 has offset 1).

The definition of A354862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354862.P392139479352196327

`(n+1)!*∑{d}[n+1, ((n+1)/#)!/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354862

/-- `(n+1)!*∑{d}[n+1, ((n+1)/#)!/#!]` -/
def P392139479352196327.Spec : Prop :=
  ∀ n, P392139479352196327.a n = (A354862 (n + 1) : ℚ)

end A354862

/-!
# A354863: a(n) = n! * Sum_{d|n} (n/d) / d!.

The programs for A354863, there is no canonical definition to state claims against.
-/

/-! ## A354863.P12269266476107928682

`A323129(A360879(n+2)+n)`
-/

namespace A354863.P12269266476107928682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323129 (A360879 (n + 2) + (n : ℤ)).toNat

end

end A354863.P12269266476107928682

/-!
# A354865: a(n) is the hafnian of the 2n X 2n symmetric matrix whose element M_{i,j} equals phi(abs(i-j)).

The programs for A354865, there is no canonical definition to state claims against.
-/

/-! ## A354865.P16750649324936912653

`A057511(ceil((2*(n+1))^n/9))`
-/

namespace A354865.P16750649324936912653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057511 ⌈((2 * (n + 1)) ^ n : ℚ) / 9⌉.toNat

end

end A354865.P16750649324936912653

/-!
# A354866: Dirichlet inverse of A122111.

The programs for A354866, there is no canonical definition to state claims against.
-/

/-! ## A354866.P8232570975368452911

`A354867(n+1)-A122111(n+1)`
-/

namespace A354866.P8232570975368452911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - A122111 (n + 1)

end

end A354866.P8232570975368452911

/-! ## A354866.P10882072478279238016

`A354867(n+1)-∑{d}[n+1, A329034(#)]`
-/

namespace A354866.P10882072478279238016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A329034 d

end

end A354866.P10882072478279238016

/-! ## A354866.P734780740458008257

`A354867(n+1)-A331595(n+1)*A331598(n+1)`
-/

namespace A354866.P734780740458008257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - A331595 (n + 1) * A331598 (n + 1)

end

end A354866.P734780740458008257

/-! ## A354866.P1221905037496462187

`A354867(n+1)-A181821(n+1)/A181821((n+1)/A006530(n+1))`
-/

namespace A354866.P1221905037496462187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354867 (n + 1) : ℚ) - (A181821 (n + 1) : ℚ) / (A181821 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ)

end

end A354866.P1221905037496462187

/-! ## A354866.P3840931780516264318

`A354867(n+1)-A241909(n+1)*A331598(n+1)/A331599(n+1)`
-/

namespace A354866.P3840931780516264318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354867 (n + 1) : ℚ) - (A241909 (n + 1) * A331598 (n + 1) : ℚ) / (A331599 (n + 1) : ℚ)

end

end A354866.P3840931780516264318

/-! ## A354866.P4923079227153797271

`A354867(n+1)-A279352(A249817(n+1))`
-/

namespace A354866.P4923079227153797271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - A279352 (A249817 (n + 1)).toNat

end

end A354866.P4923079227153797271

/-! ## A354866.P6409183975794432452

`A354867(n+1)-A243505(A048673(n+1))`
-/

namespace A354866.P6409183975794432452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - A243505 (A048673 (n + 1)).toNat

end

end A354866.P6409183975794432452

/-! ## A354866.P474259144291807859

`A354867(n+1)-A243070(A004277(n²))`
-/

namespace A354866.P474259144291807859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - A243070 (A004277 (n ^ 2)).toNat

end

end A354866.P474259144291807859

/-! ## A354866.P613688187064401321

`A354867(n+1)-A243070((n+1)²+n²)`
-/

namespace A354866.P613688187064401321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - A243070 ((n + 1) ^ 2 + n ^ 2)

end

end A354866.P613688187064401321

/-! ## A354866.P15863047988622664426

`A354867(n+1)-A331595(n+1)*A331599(A241916(n+1))`
-/

namespace A354866.P15863047988622664426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354867 (n + 1) - A331595 (n + 1) * A331599 (A241916 (n + 1)).toNat

end

end A354866.P15863047988622664426

/-!
# A354867: Sum of A122111 and its Dirichlet inverse.

The programs for A354867, there is no canonical definition to state claims against.
-/

/-! ## A354867.P9879270419036026175

`A122111(n+1)+A354866(n+1)`
-/

namespace A354867.P9879270419036026175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) + A354866 (n + 1)

end

end A354867.P9879270419036026175

/-! ## A354867.P1651395148338694518

`A354866(n+1)+A331595(n+1)*A331598(n+1)`
-/

namespace A354867.P1651395148338694518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354866 (n + 1) + A331595 (n + 1) * A331598 (n + 1)

end

end A354867.P1651395148338694518

/-! ## A354867.P5559745000845344793

`A354866(n+1)+A181821(n+1)/A181821((n+1)/A006530(n+1))`
-/

namespace A354867.P5559745000845344793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354866 (n + 1) : ℚ) + (A181821 (n + 1) : ℚ) / (A181821 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ)

end

end A354867.P5559745000845344793

/-! ## A354867.P18328150693363605290

`A354866(n+1)+n+1-A352491(n+1)`
-/

namespace A354867.P18328150693363605290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354866 (n + 1) + ((n + 1 : ℤ) - A352491 (n + 1))

end

end A354867.P18328150693363605290

/-! ## A354867.P7352820283517107261

`A354866(n+1)+A241909(n+1)*A331598(n+1)/A331599(n+1)`
-/

namespace A354867.P7352820283517107261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354866 (n + 1) : ℚ) + (A241909 (n + 1) * A331598 (n + 1) : ℚ) / (A331599 (n + 1) : ℚ)

end

end A354867.P7352820283517107261

/-! ## A354867.P11354719057235832790

`A354866(n+1)+A279352(A249817(n+1))`
-/

namespace A354867.P11354719057235832790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354866 (n + 1) + A279352 (A249817 (n + 1)).toNat

end

end A354867.P11354719057235832790

/-! ## A354867.P4822278327879794675

`A354866(n+1)+A243505(A048673(n+1))`
-/

namespace A354867.P4822278327879794675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354866 (n + 1) + A243505 (A048673 (n + 1)).toNat

end

end A354867.P4822278327879794675

/-! ## A354867.P1626584021321433086

`A354866(n+1)+A243070(A004277(n²))`
-/

namespace A354867.P1626584021321433086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354866 (n + 1) + A243070 (A004277 (n ^ 2)).toNat

end

end A354867.P1626584021321433086

/-! ## A354867.P17330526225831009537

`A354866(n+1)+A243070((n+1)²+n²)`
-/

namespace A354867.P17330526225831009537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354866 (n + 1) + A243070 ((n + 1) ^ 2 + n ^ 2)

end

end A354867.P17330526225831009537

/-!
# A354868: Parity of Dirichlet inverse of A122111.

The programs for A354868, there is no canonical definition to state claims against.
-/

/-! ## A354868.P1192738735669871655

`char[A354869(n+1)-1]`
-/

namespace A354868.P1192738735669871655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354868.P1192738735669871655

/-! ## A354868.P9877763289560316427

`and(1, A354866(n+1))`
-/

namespace A354868.P9877763289560316427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A354866 (n + 1))

end

end A354868.P9877763289560316427

/-! ## A354868.P5616634131612866730

`A000035(gcd(2*n, A354866(n+1)))`
-/

namespace A354868.P5616634131612866730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (2 * n : ℤ) (A354866 (n + 1)))

end

end A354868.P5616634131612866730

/-! ## A354868.P13737566365964224951

`((A354866(n+1)%2)^A007318(n))²`
-/

namespace A354868.P13737566365964224951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.tmod (A354866 (n + 1)) 2 : ℚ) ^ (A007318 n : ℤ)) ^ 2

end

end A354868.P13737566365964224951

/-! ## A354868.P4594901124071179573

`and(1, A354867(n+1)-A331595(n+1)*A331598(n+1))`
-/

namespace A354868.P4594901124071179573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A354867 (n + 1) - A331595 (n + 1) * A331598 (n + 1))

end

end A354868.P4594901124071179573

/-! ## A354868.P5366475467844980647

`A000035(gcd(A354866(n+1)², A016825(n)))`
-/

namespace A354868.P5366475467844980647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (A354866 (n + 1) ^ 2) (A016825 n))

end

end A354868.P5366475467844980647

/-! ## A354868.P11145692357042275019

`A359781(A137502(n+1))`
-/

namespace A354868.P11145692357042275019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (A137502 (n + 1)).toNat

end

end A354868.P11145692357042275019

/-! ## A354868.P12023067289376022522

`A130657(4^A071178(n+1))`
-/

namespace A354868.P12023067289376022522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130657 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A071178 (n + 1) : ℤ))).toNat

end

end A354868.P12023067289376022522

/-! ## A354868.P8384325209087227600

`A097898(A071178(n+1))^A008486(n)`
-/

namespace A354868.P8384325209087227600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097898 (A071178 (n + 1)).toNat : ℚ) ^ (A008486 n : ℤ)

end

end A354868.P8384325209087227600

/-! ## A354868.P9588457363727242115

`A097898(A071178(n+1))^A013609(n)`
-/

namespace A354868.P9588457363727242115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097898 (A071178 (n + 1)).toNat : ℚ) ^ (A013609 n : ℤ)

end

end A354868.P9588457363727242115

/-! ## A354868.P14493910737370404177

`A097898(A071178(n+1))^A097913(n)`
-/

namespace A354868.P14493910737370404177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097898 (A071178 (n + 1)).toNat : ℚ) ^ (A097913 n : ℤ)

end

end A354868.P14493910737370404177

/-! ## A354868.P14656394017170097603

`A097898(A071178(n+1))^A097920(n)`
-/

namespace A354868.P14656394017170097603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097898 (A071178 (n + 1)).toNat : ℚ) ^ (A097920 n : ℤ)

end

end A354868.P14656394017170097603

/-! ## A354868.P4125395807078406662

`A097898(A071178(n+1))^A178440(n)`
-/

namespace A354868.P4125395807078406662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097898 (A071178 (n + 1)).toNat : ℚ) ^ (A178440 n : ℤ)

end

end A354868.P4125395807078406662

/-! ## A354868.P3423506490965950800

`A097898(A071178(n+1))^A008578(n+1)`
-/

namespace A354868.P3423506490965950800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097898 (A071178 (n + 1)).toNat : ℚ) ^ (A008578 (n + 1) : ℤ)

end

end A354868.P3423506490965950800

/-! ## A354868.P7953560016861762788

`A097898(A071178(n+1))^A033286(n+1)`
-/

namespace A354868.P7953560016861762788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097898 (A071178 (n + 1)).toNat : ℚ) ^ (A033286 (n + 1) : ℤ)

end

end A354868.P7953560016861762788

/-!
# A354869: Positions of odd terms in A354866, the Dirichlet inverse of A122111.

The programs for A354869, there is no canonical definition to state claims against.
-/

/-! ## A354869.P17973552520567420401

`record[(n+1)*A354868(n+1)]`
-/

namespace A354869.P17973552520567420401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354869.P17973552520567420401

/-! ## A354869.P5609483678300240224

`lt[0, A354868(n+1)]+1`
-/

namespace A354869.P5609483678300240224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354869.P5609483678300240224

/-! ## A354869.P14822540653789899080

`filter[A048098(n+1), A354868(#)]`
-/

namespace A354869.P14822540653789899080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P14822540653789899080

/-! ## A354869.P15941746856158030849

`filter[A387941(n+1), A354868(#)]`
-/

namespace A354869.P15941746856158030849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P15941746856158030849

/-! ## A354869.P18149181823377305300

`filter[A082377(n+1), A354868(#)]`
-/

namespace A354869.P18149181823377305300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P18149181823377305300

/-! ## A354869.P15506884850982081063

`filter[A162966(n+1), A354868(#)]`
-/

namespace A354869.P15506884850982081063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P15506884850982081063

/-! ## A354869.P17983935335796658761

`filter[A354360(n+1), A354868(#)]`
-/

namespace A354869.P17983935335796658761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P17983935335796658761

/-! ## A354869.P12344706179262413501

`filter[A018252(n+1), A354868(#)]`
-/

namespace A354869.P12344706179262413501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P12344706179262413501

/-! ## A354869.P9907135900596113997

`filter[A289553(n+1), A354868(#)]`
-/

namespace A354869.P9907135900596113997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P9907135900596113997

/-! ## A354869.P8635943920216040510

`filter[A088609(n+1), A354868(#)]`
-/

namespace A354869.P8635943920216040510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P8635943920216040510

/-! ## A354869.P12628109701123638044

`filter[A316350(n+1), A354868(#)]`
-/

namespace A354869.P12628109701123638044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P12628109701123638044

/-! ## A354869.P6404194764806483137

`filter[A145190(n+1), A354868(#)]`
-/

namespace A354869.P6404194764806483137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P6404194764806483137

/-! ## A354869.P6977717063360007013

`filter[A174891(n+1), A354868(#)]`
-/

namespace A354869.P6977717063360007013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P6977717063360007013

/-! ## A354869.P12171464600696524010

`filter[A347202(n+1), A354868(#)]`
-/

namespace A354869.P12171464600696524010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P12171464600696524010

/-! ## A354869.P8846487460906498812

`filter[A246716(n+1), A354868(#)]`
-/

namespace A354869.P8846487460906498812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P8846487460906498812

/-! ## A354869.P4369891882379951632

`filter[A088610(n+1), A354868(#)]`
-/

namespace A354869.P4369891882379951632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P4369891882379951632

/-! ## A354869.P8375144104986659326

`filter[A075378(2*n+1), A354868(#)]`
-/

namespace A354869.P8375144104986659326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P8375144104986659326

/-! ## A354869.P3417282469153973640

`filter[A065090(n+1), A354868(#)]`
-/

namespace A354869.P3417282469153973640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P3417282469153973640

/-! ## A354869.P2187534659046137230

`filter[A073900(n+1), A354868(#)]`
-/

namespace A354869.P2187534659046137230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P2187534659046137230

/-! ## A354869.P1908565165092395200

`filter[A171581(n+1), A354868(#)]`
-/

namespace A354869.P1908565165092395200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A354869.P1908565165092395200

/-!
# A354870: 

The programs for A354870, there is no canonical definition to state claims against.
-/

/-! ## A354870.P3238675740458915186

`A034444(n+1)-A001221(n+1)`
-/

namespace A354870.P3238675740458915186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A001221 (n + 1)

end

end A354870.P3238675740458915186

/-! ## A354870.P15612267620474688996

`∏{e}[∏{p}[n+1, #], #+1]-∑{e}[∏{p}[n+1, #], #]`
-/

namespace A354870.P15612267620474688996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ)

end

end A354870.P15612267620474688996

/-! ## A354870.P7534077960664603936

`A376504(n+1)+1`
-/

namespace A354870.P7534077960664603936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376504 (n + 1) + 1

end

end A354870.P7534077960664603936

/-! ## A354870.P5782277020097196789

`∑{d}[n+1, A354819(#)]`
-/

namespace A354870.P5782277020097196789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354819 d

end

end A354870.P5782277020097196789

/-! ## A354870.P9410135377396687004

`A033273(∏{p}[n+1, #])`
-/

namespace A354870.P9410135377396687004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A354870.P9410135377396687004

/-! ## A354870.P8004112961689781882

`A081707(∏{p}[n+1, #])`
-/

namespace A354870.P8004112961689781882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A354870.P8004112961689781882

/-! ## A354870.P12189489733915784643

`A055212(∏{p}[n+1, #])+1`
-/

namespace A354870.P12189489733915784643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A354870.P12189489733915784643

/-! ## A354870.P11372865198129568556

`A000005(∏{p}[n+1, #])-∑{e}[∏{p}[n+1, #], #]`
-/

namespace A354870.P11372865198129568556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A354870.P11372865198129568556

/-! ## A354870.P16396986147745786917

`A055212(A292586(n+1))+1`
-/

namespace A354870.P16396986147745786917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (A292586 (n + 1)).toNat + 1

end

end A354870.P16396986147745786917

/-! ## A354870.P16587724223968639277

`A000325(A001222(∏{p}[n+1, #]))`
-/

namespace A354870.P16587724223968639277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A354870.P16587724223968639277

/-! ## A354870.P14245332780048005244

`A033273(n+1)-A048105(n+1)`
-/

namespace A354870.P14245332780048005244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A048105 (n + 1)

end

end A354870.P14245332780048005244

/-! ## A354870.P18241611671615535111

`A000005(n+1)-A351417(n+1)`
-/

namespace A354870.P18241611671615535111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A351417 (n + 1)

end

end A354870.P18241611671615535111

/-! ## A354870.P278349374912278238

`A351394(n+1)-A001222(n+1)`
-/

namespace A354870.P278349374912278238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351394 (n + 1) - A001222 (n + 1)

end

end A354870.P278349374912278238

/-! ## A354870.P10527302643976718571

`A351418(n+1)-A046660(n+1)`
-/

namespace A354870.P10527302643976718571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351418 (n + 1) - A046660 (n + 1)

end

end A354870.P10527302643976718571

/-! ## A354870.P4486300004345328322

`A000005(∏{p}[n+1, #])-∑{p}[n+1, A001222(#)]`
-/

namespace A354870.P4486300004345328322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - ∑ p ∈ Nat.primeFactors (f2 n), A001222 p

end

end A354870.P4486300004345328322

/-! ## A354870.P1738302907047544873

`A000005(∏{p}[n+1, #])-A001222(∏{p}[n+1, #])`
-/

namespace A354870.P1738302907047544873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A354870.P1738302907047544873

/-! ## A354870.P12028918257598083056

`2^A001221(n+1)-log2(A000005(∏{p}[n+1, #]))`
-/

namespace A354870.P12028918257598083056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A001221 (n + 1) : ℤ) : ℝ) - Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ)

end

end A354870.P12028918257598083056

/-! ## A354870.P18425701470557388037

`2^A001221(n+1)-log2(∏{p}[n+1, A001221(#)+1])`
-/

namespace A354870.P18425701470557388037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A001221 (n + 1) : ℤ) : ℝ) - Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), (A001221 p + 1) : ℤ) : ℝ)

end

end A354870.P18425701470557388037

/-! ## A354870.P5388116201570209955

`A000005(A007947(n+1))-A001221(n+1)`
-/

namespace A354870.P5388116201570209955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat - A001221 (n + 1)

end

end A354870.P5388116201570209955

/-! ## A354870.P13138402022816496754

`A000005(A007947(n+1))-∑{p}[n+1, A001222(#)]`
-/

namespace A354870.P13138402022816496754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat - ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A354870.P13138402022816496754

/-!
# A354871: a(n) = gcd(A056239(n), A258851(n)).

The programs for A354871, there is no canonical definition to state claims against.
-/

/-! ## A354871.P2599946206141962879

`gcd(A056239(n+1), A258851(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354871.P2599946206141962879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (n + 1)) (A258851 (n + 1))

end

end A354871.P2599946206141962879

/-! ## A354871.P725056702781236450

`gcd(∑[A258863(n)], A056239(n+1))`
-/

namespace A354871.P725056702781236450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A056239 (n + 1))

end

end A354871.P725056702781236450

/-! ## A354871.P9019881288332830550

`gcd(Δ[A258864(n)], A278510(n+1))`
-/

namespace A354871.P9019881288332830550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A278510 (n + 1))

end

end A354871.P9019881288332830550

/-! ## A354871.P11669254340638521606

`A056239(n+1)^A263688(A273712(n))`
-/

namespace A354871.P11669254340638521606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℚ) ^ (A263688 (A273712 n).toNat : ℤ)

end

end A354871.P11669254340638521606

/-!
# A354872: a(n) = A056239(n) / gcd(A056239(n), A258851(n)).

The programs for A354872, there is no canonical definition to state claims against.
-/

/-! ## A354872.P11042644418466930225

`A056239(n+2)/A354871(n+2)`
-/

namespace A354872.P11042644418466930225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (A354871 (n + 2) : ℚ)

end

end A354872.P11042644418466930225

/-! ## A354872.P16713899017795451381

`A056239(n+2)/gcd(A056239(n+2), A258851(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354872.P16713899017795451381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (Int.gcd (A056239 (n + 2)) (A258851 (n + 2)) : ℚ)

end

end A354872.P16713899017795451381

/-! ## A354872.P12119286517127653538

`A354873(n+2)-A278510(n+2)/A354871(n+2)`
-/

namespace A354872.P12119286517127653538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354873 (n + 2) : ℚ) - (A278510 (n + 2) : ℚ) / (A354871 (n + 2) : ℚ)

end

end A354872.P12119286517127653538

/-!
# A354873: a(n) = A258851(n) / gcd(A056239(n), A258851(n)).

The programs for A354873, there is no canonical definition to state claims against.
-/

/-! ## A354873.P5068157022958909059

`A258851(n+2)/A354871(n+2)`
-/

namespace A354873.P5068157022958909059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258851 (n + 2) : ℚ) / (A354871 (n + 2) : ℚ)

end

end A354873.P5068157022958909059

/-! ## A354873.P14527506436572382903

`A258851(n+2)/gcd(A056239(n+2), A258851(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354873.P14527506436572382903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258851 (n + 2) : ℚ) / (Int.gcd (A056239 (n + 2)) (A258851 (n + 2)) : ℚ)

end

end A354873.P14527506436572382903

/-! ## A354873.P14020386863431639368

`(A278510(n+2)+A056239(n+2))/A354871(n+2)`
-/

namespace A354873.P14020386863431639368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278510 (n + 2) + A056239 (n + 2) : ℚ) / (A354871 (n + 2) : ℚ)

end

end A354873.P14020386863431639368

/-! ## A354873.P12478208754408514979

`A354872(n+2)+A278510(n+2)/A354871(n+2)`
-/

namespace A354873.P12478208754408514979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354872 (n + 2) : ℚ) + (A278510 (n + 2) : ℚ) / (A354871 (n + 2) : ℚ)

end

end A354873.P12478208754408514979

/-!
# A354874: a(n) = 1 if A003415(n) is squarefree, otherwise 0.

The programs for A354874, the canonical program `A354874.P4484004687282161275` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354874 has offset 0).

The definition of A354874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354874.P779442890092421126

`char[A328393(n+1)]`
-/

namespace A354874.P779442890092421126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A354874.P779442890092421126

namespace A354874

/-- `char[A328393(n+1)]` -/
def P779442890092421126.Spec : Prop :=
  ∀ n, (P779442890092421126.a n : ℤ) = A354874 n

end A354874

/-! ## A354874.P14413950482694203114

`char[comp[A328303(n+1)]]`
-/

namespace A354874.P14413950482694203114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354874.P14413950482694203114

namespace A354874

/-- `char[comp[A328303(n+1)]]` -/
def P14413950482694203114.Spec : Prop :=
  ∀ n, (P14413950482694203114.a n : ℤ) = A354874 n

end A354874

/-! ## A354874.P16451412756885859345

`A341994(n)+char[A000040(n+1)]`
-/

namespace A354874.P16451412756885859345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354874.P16451412756885859345

namespace A354874

/-- `A341994(n)+char[A000040(n+1)]` -/
def P16451412756885859345.Spec : Prop :=
  ∀ n, P16451412756885859345.a n = A354874 n

end A354874

/-! ## A354874.P8809720885537519427

`char[∪[A000040(n+1), A328234(n+1)]]`
-/

namespace A354874.P8809720885537519427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A354874.P8809720885537519427

namespace A354874

/-- `char[∪[A000040(n+1), A328234(n+1)]]` -/
def P8809720885537519427.Spec : Prop :=
  ∀ n, (P8809720885537519427.a n : ℤ) = A354874 n

end A354874

/-! ## A354874.P164251971731545332

`A035263(2*n+1)-char[A328303(n+1)]`
-/

namespace A354874.P164251971731545332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354874.P164251971731545332

namespace A354874

/-- `A035263(2*n+1)-char[A328303(n+1)]` -/
def P164251971731545332.Spec : Prop :=
  ∀ n, P164251971731545332.a n = A354874 n

end A354874

/-! ## A354874.P4484004687282161275

`A341994(n)+A010051(A028310(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A354874

/-- `A341994(n)+A010051(A028310(n))` -/
def P4484004687282161275.Spec : Prop :=
  ∀ n, P4484004687282161275.a n = A354874 n

theorem P4484004687282161275.correct : P4484004687282161275.Spec := by
  intro n
  simp only [A354874]

end A354874

/-! ## A354874.P7349512700735674217

`A341994(n)+A000007(A051699(n))`
-/

namespace A354874.P7349512700735674217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n + A000007 (A051699 n).toNat

end

end A354874.P7349512700735674217

namespace A354874

/-- `A341994(n)+A000007(A051699(n))` -/
def P7349512700735674217.Spec : Prop :=
  ∀ n, P7349512700735674217.a n = A354874 n

end A354874

/-! ## A354874.P17761195414575843020

`A341994(n)+A064911(A008486(n))`
-/

namespace A354874.P17761195414575843020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n + A064911 (A008486 n).toNat

end

end A354874.P17761195414575843020

namespace A354874

/-- `A341994(n)+A064911(A008486(n))` -/
def P17761195414575843020.Spec : Prop :=
  ∀ n, P17761195414575843020.a n = A354874 n

end A354874

/-! ## A354874.P3761681691715354524

`A000007((1-A341994(n))*A051699(n))`
-/

namespace A354874.P3761681691715354524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A341994 n) * A051699 n).toNat

end

end A354874.P3761681691715354524

namespace A354874

/-- `A000007((1-A341994(n))*A051699(n))` -/
def P3761681691715354524.Spec : Prop :=
  ∀ n, P3761681691715354524.a n = A354874 n

end A354874

/-! ## A354874.P3392548189435770335

`(A000007(A051699(n)²)-A341994(n))²`
-/

namespace A354874.P3392548189435770335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 (A051699 n ^ 2).toNat - A341994 n) ^ 2

end

end A354874.P3392548189435770335

namespace A354874

/-- `(A000007(A051699(n)²)-A341994(n))²` -/
def P3392548189435770335.Spec : Prop :=
  ∀ n, P3392548189435770335.a n = A354874 n

end A354874

/-! ## A354874.P7129560032956875562

`A341994(n)+char[A112823(n+2)]`
-/

namespace A354874.P7129560032956875562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354874.P7129560032956875562

namespace A354874

/-- `A341994(n)+char[A112823(n+2)]` -/
def P7129560032956875562.Spec : Prop :=
  ∀ n, P7129560032956875562.a n = A354874 n

end A354874

/-! ## A354874.P5238578694298673845

`A074206(A003415(n))%2`
-/

namespace A354874.P5238578694298673845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074206 (A003415 n).toNat) 2

end

end A354874.P5238578694298673845

namespace A354874

/-- `A074206(A003415(n))%2` -/
def P5238578694298673845.Spec : Prop :=
  ∀ n, P5238578694298673845.a n = A354874 n

end A354874

/-! ## A354874.P6664320962493159657

`and(A054977(n), A074206(A003415(n)))`
-/

namespace A354874.P6664320962493159657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A074206 (A003415 n).toNat)

end

end A354874.P6664320962493159657

namespace A354874

/-- `and(A054977(n), A074206(A003415(n)))` -/
def P6664320962493159657.Spec : Prop :=
  ∀ n, P6664320962493159657.a n = A354874 n

end A354874

/-! ## A354874.P3440329522453515140

`and(A057427(n), A074206(A003415(n)))`
-/

namespace A354874.P3440329522453515140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A074206 (A003415 n).toNat)

end

end A354874.P3440329522453515140

namespace A354874

/-- `and(A057427(n), A074206(A003415(n)))` -/
def P3440329522453515140.Spec : Prop :=
  ∀ n, P3440329522453515140.a n = A354874 n

end A354874

/-! ## A354874.P12859849790726388287

`A341994(n)+A257994(A008578(n+1))`
-/

namespace A354874.P12859849790726388287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n + A257994 (A008578 (n + 1)).toNat

end

end A354874.P12859849790726388287

namespace A354874

/-- `A341994(n)+A257994(A008578(n+1))` -/
def P12859849790726388287.Spec : Prop :=
  ∀ n, P12859849790726388287.a n = A354874 n

end A354874

/-! ## A354874.P10084745432386460412

`∑{d}[A003415(n), A271102(#)]`
-/

namespace A354874.P10084745432386460412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A271102 d

end

end A354874.P10084745432386460412

namespace A354874

/-- `∑{d}[A003415(n), A271102(#)]` -/
def P10084745432386460412.Spec : Prop :=
  ∀ n, P10084745432386460412.a n = A354874 n

end A354874

/-!
# A354875: Dirichlet inverse of A344005, the smallest positive m such that n divides the oblong number m*(m+1).

The programs for A354875, there is no canonical definition to state claims against.
-/

/-! ## A354875.P10706185989753867906

`A354876(n+1)-A344005(n+1)`
-/

namespace A354875.P10706185989753867906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - A344005 (n + 1)

end

end A354875.P10706185989753867906

/-! ## A354875.P6558614299082743723

`A354876(n+1)-floor(sqrt(A345988(n+1)))`
-/

namespace A354875.P6558614299082743723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - Int.sqrt (A345988 (n + 1))

end

end A354875.P6558614299082743723

/-! ## A354875.P14210108251845973933

`A354876(n+1)-(1-A182665(n+1)+n)`
-/

namespace A354875.P14210108251845973933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - (1 - A182665 (n + 1) + (n : ℤ))

end

end A354875.P14210108251845973933

/-! ## A354875.P4931784567680236256

`A354876(n+1)-A011772((n+1)/gcd(2, n+1))`
-/

namespace A354875.P4931784567680236256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - A011772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A354875.P4931784567680236256

/-! ## A354875.P8823466816996279726

`A346607(n+1)+A354876(n+1)-A047994(n+1)`
-/

namespace A354875.P8823466816996279726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (n + 1) + (A354876 (n + 1) - A047994 (n + 1))

end

end A354875.P8823466816996279726

/-! ## A354875.P14856375043727936729

`A354876(n+1)-A345992(n+1)*A345998(n+1)`
-/

namespace A354875.P14856375043727936729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - A345992 (n + 1) * A345998 (n + 1)

end

end A354875.P14856375043727936729

/-! ## A354875.P10735398820955542748

`A354876(n+1)-A354985(n+1)*A354987(n+1)`
-/

namespace A354875.P10735398820955542748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - A354985 (n + 1) * A354987 (n + 1)

end

end A354875.P10735398820955542748

/-! ## A354875.P7803057954639797937

`A354876(n+1)-(A345993(n+1)*A345999(n+1)-1)`
-/

namespace A354875.P7803057954639797937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - (A345993 (n + 1) * A345999 (n + 1) - 1)

end

end A354875.P7803057954639797937

/-! ## A354875.P9266839474699190541

`A354876(n+1)-(A354985(n+1)*A354986(n+1)-A346607(n+1))`
-/

namespace A354875.P9266839474699190541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - (A354985 (n + 1) * A354986 (n + 1) - A346607 (n + 1))

end

end A354875.P9266839474699190541

/-! ## A354875.P7106790900614926642

`A354876(n+1)-A011772(Δ[A001318(n)])`
-/

namespace A354875.P7106790900614926642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - A011772 (f1 (n + 1) - f1 n).toNat

end

end A354875.P7106790900614926642

/-! ## A354875.P918578700158908286

`A354876(n+1)-A011772(A344764(∑[n+1]))`
-/

namespace A354875.P918578700158908286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (n + 1) - A011772 (A344764 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A354875.P918578700158908286

/-!
# A354876: Sum of A344005 and its Dirichlet inverse, where A344005(n) is the smallest positive m such that n divides the oblong number m*(m+1).

The programs for A354876, there is no canonical definition to state claims against.
-/

/-! ## A354876.P14961013981749702972

`A344005(n+1)+A354875(n+1)`
-/

namespace A354876.P14961013981749702972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + A354875 (n + 1)

end

end A354876.P14961013981749702972

/-! ## A354876.P16185103338323096188

`floor(A354875(n+1)+sqrt(A345988(n+1)))`
-/

namespace A354876.P16185103338323096188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A354875 (n + 1) : ℝ) + Real.sqrt (A345988 (n + 1) : ℝ)⌋

end

end A354876.P16185103338323096188

/-! ## A354876.P18266119155185007469

`A354875(n+1)+1-A182665(n+1)+n`
-/

namespace A354876.P18266119155185007469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354875 (n + 1) + (1 - A182665 (n + 1) + (n : ℤ))

end

end A354876.P18266119155185007469

/-! ## A354876.P12168228369794551058

`A354875(n+1)+A011772((n+1)/gcd(2, n+1))`
-/

namespace A354876.P12168228369794551058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354875 (n + 1) + A011772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A354876.P12168228369794551058

/-! ## A354876.P8584827388452435380

`A354875(n+1)+A011772(A026741(n+1))`
-/

namespace A354876.P8584827388452435380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354875 (n + 1) + A011772 (A026741 (n + 1)).toNat

end

end A354876.P8584827388452435380

/-! ## A354876.P6122221559263339874

`A354875(n+1)+A011772(Δ[A001318(n)])`
-/

namespace A354876.P6122221559263339874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354875 (n + 1) + A011772 (f1 (n + 1) - f1 n).toNat

end

end A354876.P6122221559263339874

/-!
# A354879: a(n) is the index of the Stieltjes constant at the beginning of the last set of exactly n successive constants of the same sign.

The programs for A354879, there is no canonical definition to state claims against.
-/

/-! ## A354879.P5136179255332778006

`xor(A000045(A227125(n+1)), A322059(n+1))`
-/

namespace A354879.P5136179255332778006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (A227125 (n + 1)).toNat) (A322059 (n + 1))

end

end A354879.P5136179255332778006

/-!
# A354881: Primes p such that, if q is the next prime, the digit reversal of p*q is prime.

The programs for A354881, there is no canonical definition to state claims against.
-/

/-! ## A354881.P6524858396266006418

`A000292(A016970(2*(n+2)))%A001105(n+4)`
-/

namespace A354881.P6524858396266006418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A016970 (2 * (n + 2))).toNat) (A001105 (n + 4))

end

end A354881.P6524858396266006418

/-!
# A354884: Numbers whose skew binary representation (A169683) is palindromic.

The programs for A354884, there is no canonical definition to state claims against.
-/

/-! ## A354884.P2005664825075664985

`eq[A004086(A169683(n)), A169683(n)]`
-/

namespace A354884.P2005664825075664985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A169683 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354884.P2005664825075664985

/-! ## A354884.P1290745482972965349

`∑[A291684(A138352(3*n+4))+A057353(n)]`
-/

namespace A354884.P1290745482972965349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A138352 (3 * n + 4)).toNat + A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354884.P1290745482972965349

/-! ## A354884.P6013177932391682524

`lt[A327187((2*n)²+n), 1]`
-/

namespace A354884.P6013177932391682524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 ((2 * n) ^ 2 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A354884.P6013177932391682524

/-! ## A354884.P12196776929781869394

`∑[A053735(A102839(n))]`
-/

namespace A354884.P12196776929781869394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A102839 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354884.P12196776929781869394

/-! ## A354884.P2800678177217176647

`eq[A011751(n), A055642(A329034(n+4))]`
-/

namespace A354884.P2800678177217176647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A329034 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354884.P2800678177217176647

/-!
# A354885: Numbers that are palindromes in both ternary and balanced ternary representations.

The programs for A354885, there is no canonical definition to state claims against.
-/

/-! ## A354885.P730615946120194149

`∩[A014190(n+1), A134027(n+1)]`
-/

namespace A354885.P730615946120194149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354885.P730615946120194149

/-! ## A354885.P3275104246694234412

`∩[A014190(n+1), A233010(n+1)]`
-/

namespace A354885.P3275104246694234412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354885.P3275104246694234412

/-! ## A354885.P15086090066570707314

`eq[n, A134028(A265511(n))]`
-/

namespace A354885.P15086090066570707314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 (A265511 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354885.P15086090066570707314

/-! ## A354885.P350914686695034127

`eq[n*A134028(n), A030102(n)²]`
-/

namespace A354885.P350914686695034127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354885.P350914686695034127

/-! ## A354885.P11619259182753521864

`eq[A160652(n), A265511(n)]`
-/

namespace A354885.P11619259182753521864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354885.P11619259182753521864

/-!
# A354886: Numbers that are palindromes in both ternary and balanced ternary representations with representations that are different.

The programs for A354886, there is no canonical definition to state claims against.
-/

/-! ## A354886.P6624347480927095039

`A091077(n+1)/4`
-/

namespace A354886.P6624347480927095039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091077 (n + 1) : ℚ) / 4

end

end A354886.P6624347480927095039

/-! ## A354886.P12280526595700771604

`A173951(n+1)/2`
-/

namespace A354886.P12280526595700771604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173951 (n + 1) : ℚ) / 2

end

end A354886.P12280526595700771604

/-! ## A354886.P17151021105080961292

`ceil(4/2*A173951(ϕ²-(ϕ-n)))/4`
-/

namespace A354886.P17151021105080961292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(4 : ℚ) / 2 * (A173951 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ)⌉ : ℚ) / 4

end

end A354886.P17151021105080961292

/-! ## A354886.P4687864686245264620

`record[A173951(A195663(n))/2]`
-/

namespace A354886.P4687864686245264620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173951 (A195663 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354886.P4687864686245264620

/-! ## A354886.P8376153684732234460

`∩[A044118(n+1), A354885(n+1)]`
-/

namespace A354886.P8376153684732234460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354886.P8376153684732234460

/-!
# A354888: a(n) = n! * Sum_{d|n} d^d / d!.

The programs for A354888, the canonical program `A354888.P11332828948659840729` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354888 has offset 1).

The definition of A354888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354888.P11332828948659840729

`(n+1)!*∑{d}[n+1, #^#/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354888

/-- `(n+1)!*∑{d}[n+1, #^#/#!]` -/
def P11332828948659840729.Spec : Prop :=
  ∀ n, P11332828948659840729.a n = (A354888 (n + 1) : ℚ)

end A354888

/-!
# A354889: a(n) = n! * Sum_{d|n} d^(d-1) / d!.

The programs for A354889, the canonical program `A354889.P12223604379452802409` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354889 has offset 1).

The definition of A354889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354889.P12223604379452802409

`(n+1)!*∑{d}[n+1, #^(#-1)/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354889

/-- `(n+1)!*∑{d}[n+1, #^(#-1)/#!]` -/
def P12223604379452802409.Spec : Prop :=
  ∀ n, P12223604379452802409.a n = (A354889 (n + 1) : ℚ)

end A354889

/-!
# A354890: a(n) = n! * Sum_{d|n} d^n / d!.

The programs for A354890, the canonical program `A354890.P14601411953333916466` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354890 has offset 1).

The definition of A354890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354890.P14601411953333916466

`(n+1)!*∑{d}[n+1, #^(n+1)/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354890

/-- `(n+1)!*∑{d}[n+1, #^(n+1)/#!]` -/
def P14601411953333916466.Spec : Prop :=
  ∀ n, P14601411953333916466.a n = (A354890 (n + 1) : ℚ)

end A354890

/-!
# A354891: a(n) = n! * Sum_{d|n} d^(n - d) / d!.

The programs for A354891, the canonical program `A354891.P12907249350382565913` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354891 has offset 1).

The definition of A354891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354891.P12907249350382565913

`(n+1)!*∑{d}[n+1, #^(n+1-#)/#!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354891

/-- `(n+1)!*∑{d}[n+1, #^(n+1-#)/#!]` -/
def P12907249350382565913.Spec : Prop :=
  ∀ n, P12907249350382565913.a n = (A354891 (n + 1) : ℚ)

end A354891

/-!
# A354892: a(n) = n! * Sum_{d|n} d^n / (n/d)!.

The programs for A354892, the canonical program `A354892.P3703911946705565971` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354892 has offset 1).

The definition of A354892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354892.P3703911946705565971

`(n+1)!*∑{d}[n+1, #^(n+1)/((n+1)/#)!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354892

/-- `(n+1)!*∑{d}[n+1, #^(n+1)/((n+1)/#)!]` -/
def P3703911946705565971.Spec : Prop :=
  ∀ n, P3703911946705565971.a n = (A354892 (n + 1) : ℚ)

end A354892

/-!
# A354893: a(n) = n! * Sum_{d|n} d^(n - d) / (n/d)!.

The programs for A354893, the canonical program `A354893.P8346612412111357691` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354893 has offset 1).

The definition of A354893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354893.P8346612412111357691

`(n+1)!*∑{d}[n+1, #^(n+1-#)/((n+1)/#)!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354893

/-- `(n+1)!*∑{d}[n+1, #^(n+1-#)/((n+1)/#)!]` -/
def P8346612412111357691.Spec : Prop :=
  ∀ n, P8346612412111357691.a n = (A354893 (n + 1) : ℚ)

end A354893

/-!
# A354894: a(n) is the numerator of the n-th hyperharmonic number of order n.

The programs for A354894, there is no canonical definition to state claims against.
-/

/-! ## A354894.P7525649046200366431

`A213998(A056220(n+1))`
-/

namespace A354894.P7525649046200366431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A056220 (n + 1)).toNat

end

end A354894.P7525649046200366431

/-! ## A354894.P8863697263229264928

`A213998(A074148(2*n+1))`
-/

namespace A354894.P8863697263229264928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A074148 (2 * n + 1)).toNat

end

end A354894.P8863697263229264928

/-! ## A354894.P9988906762743319391

`A213998(eq[2, A007913(n+1)])`
-/

namespace A354894.P9988906762743319391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354894.P9988906762743319391

/-! ## A354894.P16278735808628405616

`A213998(A014106(n)+1+n)`
-/

namespace A354894.P16278735808628405616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A014106 n + 1 + (n : ℤ)).toNat

end

end A354894.P16278735808628405616

/-! ## A354894.P14487517969558029751

`A213998(eq[n+1, A061579(n)])`
-/

namespace A354894.P14487517969558029751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A354894.P14487517969558029751

/-!
# A354895: a(n) is the denominator of the n-th hyperharmonic number of order n.

The programs for A354895, there is no canonical definition to state claims against.
-/

/-! ## A354895.P6241959322669306134

`A213999(2*(n+1)²-1)`
-/

namespace A354895.P6241959322669306134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (2 * (n + 1) ^ 2 - 1)

end

end A354895.P6241959322669306134

/-! ## A354895.P9273982970052659823

`A263673(A000005(4^n))`
-/

namespace A354895.P9273982970052659823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263673 (A000005 (4 ^ n)).toNat

end

end A354895.P9273982970052659823

/-! ## A354895.P1376249262229652677

`A263673(Δ[A002998(n)²])`
-/

namespace A354895.P1376249262229652677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263673 (f1 (n + 1) - f1 n).toNat

end

end A354895.P1376249262229652677

/-! ## A354895.P3598313996084390088

`A263673(Δ[n*A002998(n)])`
-/

namespace A354895.P3598313996084390088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263673 (f1 (n + 1) - f1 n).toNat

end

end A354895.P3598313996084390088

/-! ## A354895.P9156212007529109392

`A263673(A032555(n+1)+n)`
-/

namespace A354895.P9156212007529109392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263673 (A032555 (n + 1) + (n : ℤ)).toNat

end

end A354895.P9156212007529109392

/-!
# A354896: A fixed point of the two-block substitution 00->001, 01->010, 10->101, 11->110.

The programs for A354896, there is no canonical definition to state claims against.
-/

/-! ## A354896.P10476034641822399686

`A243566(A235690(2*n+5)+A100050(n))`
-/

namespace A354896.P10476034641822399686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243566 (A235690 (2 * n + 5) + A100050 n).toNat

end

end A354896.P10476034641822399686

/-! ## A354896.P14764183574256249972

`A030302(A000326(3*n+4)+A000188(n+1))`
-/

namespace A354896.P14764183574256249972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A000326 (3 * n + 4) + A000188 (n + 1)).toNat

end

end A354896.P14764183574256249972

/-! ## A354896.P7072728886956539776

`A277885(A029931(3*n+1)*A112917(n+3))`
-/

namespace A354896.P7072728886956539776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A029931 (3 * n + 1) * A112917 (n + 3)).toNat

end

end A354896.P7072728886956539776

/-! ## A354896.P16802429773374665658

`A169671(xor(5, A024985(3*n+1)))`
-/

namespace A354896.P16802429773374665658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169671 (Int.xor 5 (A024985 (3 * n + 1))).toNat

end

end A354896.P16802429773374665658

/-! ## A354896.P15134194263912092104

`A010059(A176452(2*n+1)*A220022(n))`
-/

namespace A354896.P15134194263912092104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A176452 (2 * n + 1) * A220022 n).toNat

end

end A354896.P15134194263912092104

/-!
# A354897: a(n) = n! * Sum_{d|n} d^n / (d! * (n/d)!).

The programs for A354897, the canonical program `A354897.P17528614056947523486` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354897 has offset 1).

The definition of A354897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354897.P17528614056947523486

`(n+1)!*∑{d}[n+1, #^(n+1)/(#!*((n+1)/#)!)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354897

/-- `(n+1)!*∑{d}[n+1, #^(n+1)/(#!*((n+1)/#)!)]` -/
def P17528614056947523486.Spec : Prop :=
  ∀ n, P17528614056947523486.a n = (A354897 (n + 1) : ℚ)

end A354897

/-!
# A354898: a(n) = n! * Sum_{d|n} d^(n - d) / (d! * (n/d)!).

The programs for A354898, the canonical program `A354898.P17314121796508270568` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354898 has offset 1).

The definition of A354898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354898.P17314121796508270568

`(n+1)!*∑{d}[n+1, #^(n+1-#)/(#!*((n+1)/#)!)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354898

/-- `(n+1)!*∑{d}[n+1, #^(n+1-#)/(#!*((n+1)/#)!)]` -/
def P17314121796508270568.Spec : Prop :=
  ∀ n, P17314121796508270568.a n = (A354898 (n + 1) : ℚ)

end A354898

/-! ## A354898.P8396833187816355304

`∏{p}[A051612(A007509(n)), #]`
-/

namespace A354898.P8396833187816355304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A007509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A354898.P8396833187816355304

namespace A354898

/-- `∏{p}[A051612(A007509(n)), #]` -/
def P8396833187816355304.Spec : Prop :=
  ∀ n, (P8396833187816355304.a n : ℤ) = A354898 (n + 1)

end A354898

/-!
# A354899: a(n) = n! * Sum_{d|n} d^d / (d! * (n/d)!).

The programs for A354899, the canonical program `A354899.P10666304103232053509` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354899 has offset 1).

The definition of A354899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354899.P10666304103232053509

`(n+1)!*∑{d}[n+1, #^#/(#!*((n+1)/#)!)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A354899

/-- `(n+1)!*∑{d}[n+1, #^#/(#!*((n+1)/#)!)]` -/
def P10666304103232053509.Spec : Prop :=
  ∀ n, P10666304103232053509.a n = (A354899 (n + 1) : ℚ)

end A354899

