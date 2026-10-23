import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A114700: Triangle T, read by rows, such that the m-th matrix power satisfies T^m = I + m*(T - I), where T(n,k) = [T^-1](n-1,k) + [T^-1](n-1,k-1) for n>k>0, with T(n,0)=T(n,n)=1 for n>=0 and I is the identity matrix.

The programs for A114700, there is no canonical definition to state claims against.
-/

/-! ## A114700.P3408092842557185775

`A143200(n)^A128568(A351978(n))`
-/

namespace A114700.P3408092842557185775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143200 n : ℚ) ^ (A128568 (A351978 n).toNat : ℤ)

end

end A114700.P3408092842557185775

/-! ## A114700.P10061941067975252059

`A143200(n)^A325797(A268232(n+1))`
-/

namespace A114700.P10061941067975252059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143200 n : ℚ) ^ (A325797 (A268232 (n + 1)).toNat : ℤ)

end

end A114700.P10061941067975252059

/-! ## A114700.P496745703113552

`A174553(n)%A020639(A156552(2*n+3))`
-/

namespace A114700.P496745703113552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174553 n) (A020639 (A156552 (2 * n + 3)).toNat)

end

end A114700.P496745703113552

/-! ## A114700.P13254642018778763326

`A166282(n)^A189633(A340098(n+1))`
-/

namespace A114700.P13254642018778763326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166282 n : ℚ) ^ (A189633 (A340098 (n + 1)).toNat : ℤ)

end

end A114700.P13254642018778763326

/-!
# A114701: Number of sets {p, p'}, where p is a partition of n and p' is conjugate partition of p such that p and p' have no common parts.

The programs for A114701, there is no canonical definition to state claims against.
-/

/-! ## A114701.P7221562287584437317

`ceil(A240674(n)/2)`
-/

namespace A114701.P7221562287584437317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A240674 n : ℚ) / 2⌉

end

end A114701.P7221562287584437317

/-! ## A114701.P10530516936516791976

`A004525(A240674(n))`
-/

namespace A114701.P10530516936516791976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A240674 n).toNat

end

end A114701.P10530516936516791976

/-! ## A114701.P1991351260503556903

`A004526(A240674(n)+1)`
-/

namespace A114701.P1991351260503556903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A240674 n + 1).toNat

end

end A114701.P1991351260503556903

/-! ## A114701.P11947673904804406259

`A240674(n)/A000122(n²)`
-/

namespace A114701.P11947673904804406259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240674 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A114701.P11947673904804406259

/-! ## A114701.P15063985822991930304

`A240674(n)/A036452(n+1)`
-/

namespace A114701.P15063985822991930304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240674 n : ℚ) / (A036452 (n + 1) : ℚ)

end

end A114701.P15063985822991930304

/-! ## A114701.P13061978321020175860

`A240674(n)/A036453(n+1)`
-/

namespace A114701.P13061978321020175860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240674 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A114701.P13061978321020175860

/-! ## A114701.P4936306011365878589

`A240674(n)/A104435(n+1)`
-/

namespace A114701.P4936306011365878589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240674 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A114701.P4936306011365878589

/-! ## A114701.P7477880267339161520

`A240674(n)/(1-A057428(n))`
-/

namespace A114701.P7477880267339161520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240674 n : ℚ) / (1 - A057428 n : ℚ)

end

end A114701.P7477880267339161520

/-!
# A114702: Number of binary vectors (x_1,...x_(n-1)) satisfying Sum_{i=1..n-1} (-1)^i*i*x_i = 0 (mod n).

The programs for A114702, there is no canonical definition to state claims against.
-/

/-! ## A114702.P1057453343284760082

`A053633(∑[or(1, n)+1])`
-/

namespace A114702.P1057453343284760082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114702.P1057453343284760082

/-! ## A114702.P5482279969804998226

`A053633(floor((n+2)²/2))`
-/

namespace A114702.P5482279969804998226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 ⌊((n + 2) ^ 2 : ℚ) / 2⌋.toNat

end

end A114702.P5482279969804998226

/-! ## A114702.P3392295090159173314

`A053633(A007590(n+2))%A000016(n+3)`
-/

namespace A114702.P3392295090159173314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053633 (A007590 (n + 2)).toNat) (A000016 (n + 3))

end

end A114702.P3392295090159173314

/-! ## A114702.P15102884777280840145

`A054650(n+2)+A010051(A100136(2*n))`
-/

namespace A114702.P15102884777280840145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (n + 2) + A010051 (A100136 (2 * n)).toNat

end

end A114702.P15102884777280840145

/-! ## A114702.P17554118220889423588

`A202304(A148188(n))`
-/

namespace A114702.P17554118220889423588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A148188 n).toNat

end

end A114702.P17554118220889423588

/-!
# A114703: a(2*n) = F(3*n)*F(3*n+2), a(2*n+1) = F(3*n+1)*F(3*n+2), where F = A000045.

The programs for A114703, the canonical program `A114703.P7889097354654684052` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114703 has offset 0).

The definition of A114703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114703.P7453985376578932109

`A107363(A008486(n))*A117647(n)`
-/

namespace A114703.P7453985376578932109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107363 (A008486 n).toNat * A117647 n

end

end A114703.P7453985376578932109

namespace A114703

/-- `A107363(A008486(n))*A117647(n)` -/
def P7453985376578932109.Spec : Prop :=
  ∀ n, P7453985376578932109.a n = A114703 n

end A114703

/-! ## A114703.P7889097354654684052

`A000045(A166517(n))*A117647(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114703

/-- `A000045(A166517(n))*A117647(n)` -/
def P7889097354654684052.Spec : Prop :=
  ∀ n, P7889097354654684052.a n = A114703 n

theorem P7889097354654684052.correct : P7889097354654684052.Spec := by
  intro n
  simp only [A114703]

end A114703

/-! ## A114703.P13951409061483070831

`A053602(3*n+1)*A053602(A052928(3*n))`
-/

namespace A114703.P13951409061483070831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (3 * n + 1) * A053602 (A052928 (3 * n)).toNat

end

end A114703.P13951409061483070831

namespace A114703

/-- `A053602(3*n+1)*A053602(A052928(3*n))` -/
def P13951409061483070831.Spec : Prop :=
  ∀ n, P13951409061483070831.a n = A114703 n

end A114703

/-! ## A114703.P17475783160173444991

`A053602(3*n+1)*A212804(A008619(3*n))`
-/

namespace A114703.P17475783160173444991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (3 * n + 1) * A212804 (A008619 (3 * n)).toNat

end

end A114703.P17475783160173444991

namespace A114703

/-- `A053602(3*n+1)*A212804(A008619(3*n))` -/
def P17475783160173444991.Spec : Prop :=
  ∀ n, P17475783160173444991.a n = A114703 n

end A114703

/-! ## A114703.P14052039330373039062

`A000045(A007494(n))*A000045(A166517(n))`
-/

namespace A114703.P14052039330373039062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A007494 n).toNat * A000045 (A166517 n).toNat

end

end A114703.P14052039330373039062

namespace A114703

/-- `A000045(A007494(n))*A000045(A166517(n))` -/
def P14052039330373039062.Spec : Prop :=
  ∀ n, P14052039330373039062.a n = A114703 n

end A114703

/-!
# A114704: Smallest primes p such that the p-th Fibonacci number consists of n prime factors.

The programs for A114704, there is no canonical definition to state claims against.
-/

/-! ## A114704.P10198500254649250356

`A135958(n+1)`
-/

namespace A114704.P10198500254649250356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135958 (n + 1)

end

end A114704.P10198500254649250356

/-! ## A114704.P17304744488091503707

`ratio[-∏[A135958(n)]]`
-/

namespace A114704.P17304744488091503707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A114704.P17304744488091503707

/-! ## A114704.P13714139758697533196

`A000040(A135957(n+1))`
-/

namespace A114704.P13714139758697533196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A135957 (n + 1)).toNat

end

end A114704.P13714139758697533196

/-! ## A114704.P12944167860302297290

`Δ[A000027(∑[A135958(n)])]`
-/

namespace A114704.P12944167860302297290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114704.P12944167860302297290

/-!
# A114705: Sum of divisors of 2^n + 3^n.

The programs for A114705, the canonical program `A114705.P5903285541950164071` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114705 has offset 1).

The definition of A114705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114705.P5903285541950164071

`A000203(A007689(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114705

/-- `A000203(A007689(n+1))` -/
def P5903285541950164071.Spec : Prop :=
  ∀ n, P5903285541950164071.a n = A114705 (n + 1)

theorem P5903285541950164071.correct : P5903285541950164071.Spec := by
  intro n
  simp only [A114705, Nat.add_sub_cancel]

end A114705

/-! ## A114705.P17132350169792204948

`∑{d}[3^n+2*a(n-1), #]` with `a(0)=5`
-/

namespace A114705.P17132350169792204948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  3 ^ n + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A114705.P17132350169792204948

namespace A114705

/-- `∑{d}[3^n+2*a(n-1), #]` -/
def P17132350169792204948.Spec : Prop :=
  ∀ n, (P17132350169792204948.a n : ℤ) = A114705 (n + 1)

end A114705

/-! ## A114705.P11183692527053832384

`∑{d}[A085281(n+2), #]`
-/

namespace A114705.P11183692527053832384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A114705.P11183692527053832384

namespace A114705

/-- `∑{d}[A085281(n+2), #]` -/
def P11183692527053832384.Spec : Prop :=
  ∀ n, (P11183692527053832384.a n : ℤ) = A114705 (n + 1)

end A114705

/-! ## A114705.P1501357762926307699

`∑{d}[Δ[A094374(n+1)], #]`
-/

namespace A114705.P1501357762926307699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A114705.P1501357762926307699

namespace A114705

/-- `∑{d}[Δ[A094374(n+1)], #]` -/
def P1501357762926307699.Spec : Prop :=
  ∀ n, (P1501357762926307699.a n : ℤ) = A114705 (n + 1)

end A114705

/-! ## A114705.P12469070312358757694

`∑{d}[Δ[A099754(n+1)], #]`
-/

namespace A114705.P12469070312358757694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A114705.P12469070312358757694

namespace A114705

/-- `∑{d}[Δ[A099754(n+1)], #]` -/
def P12469070312358757694.Spec : Prop :=
  ∀ n, (P12469070312358757694.a n : ℤ) = A114705 (n + 1)

end A114705

/-!
# A114706: Triangle read by rows: T(n,k) is the number of hill-free Schroeder paths of length 2n and having k ascents (n>=1; 0<=k<=n-1). A Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis. A hill is a peak at height 1. An ascent in a Schroeder path is a maximal sequence of consecutive U steps.

The programs for A114706, there is no canonical definition to state claims against.
-/

/-! ## A114706.P5433820365087450506

`A353847(A046740(n+2))`
-/

namespace A114706.P5433820365087450506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A046740 (n + 2)).toNat

end

end A114706.P5433820365087450506

/-!
# A114707: a(1)=1. For n>1, a(n) = a(n-1) + (number of distinct primes dividing n but not a(n-1)).

The programs for A114707, the canonical program `A114707.P3298939068066820916` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114707 has offset 1).

The definition of A114707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114707.P3298939068066820916

`A001221((n+1)*a(n-1))-A001221(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114707

/-- `A001221((n+1)*a(n-1))-A001221(a(n-1))+a(n-1)` -/
def P3298939068066820916.Spec : Prop :=
  ∀ n, P3298939068066820916.a n = A114707 (n + 1)

theorem P3298939068066820916.correct : P3298939068066820916.Spec := by
  intro n
  simp only [A114707, Nat.add_sub_cancel]

end A114707

/-! ## A114707.P16627786070478130188

`∑[A114708(abs(1-n)+2)]`
-/

namespace A114707.P16627786070478130188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114708 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114707.P16627786070478130188

namespace A114707

/-- `∑[A114708(abs(1-n)+2)]` -/
def P16627786070478130188.Spec : Prop :=
  ∀ n, P16627786070478130188.a n = A114707 (n + 1)

end A114707

/-! ## A114707.P13772672728644399752

`A114708(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A114707.P13772672728644399752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114708 (n + 1) + a (n - 1)

end

end A114707.P13772672728644399752

namespace A114707

/-- `A114708(n+1)+a(n-1)` -/
def P13772672728644399752.Spec : Prop :=
  ∀ n, P13772672728644399752.a n = A114707 (n + 1)

end A114707

/-! ## A114707.P8166037852144089592

`∑[A114708(n+2)]+1-A114708(n+2)`
-/

namespace A114707.P8166037852144089592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114708 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A114708 (n + 2))

end

end A114707.P8166037852144089592

namespace A114707

/-- `∑[A114708(n+2)]+1-A114708(n+2)` -/
def P8166037852144089592.Spec : Prop :=
  ∀ n, P8166037852144089592.a n = A114707 (n + 1)

end A114707

/-! ## A114707.P14323556071853245282

`A363741(A323642(n+2))+n`
-/

namespace A114707.P14323556071853245282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363741 (A323642 (n + 2)).toNat + (n : ℤ)

end

end A114707.P14323556071853245282

namespace A114707

/-- `A363741(A323642(n+2))+n` -/
def P14323556071853245282.Spec : Prop :=
  ∀ n, P14323556071853245282.a n = A114707 (n + 1)

end A114707

/-!
# A114708: a(n) = A114707(n) - A114707(n-1) = the number of distinct primes dividing n but not A114707(n-1).

The programs for A114708, the canonical program `A114708.P3839565635950427400` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114708 has offset 2).

The definition of A114708 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114708.P3839565635950427400

`A114707(n+2)-A114707(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A114708

/-- `A114707(n+2)-A114707(n+1)` -/
def P3839565635950427400.Spec : Prop :=
  ∀ n, P3839565635950427400.a n = A114708 (n + 2)

theorem P3839565635950427400.correct : P3839565635950427400.Spec := by
  intro n
  simp only [A114708, Nat.add_sub_cancel]

end A114708

/-! ## A114708.P6404721146771900729

`Δ[A114707(n+1)]`
-/

namespace A114708.P6404721146771900729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114708.P6404721146771900729

namespace A114708

/-- `Δ[A114707(n+1)]` -/
def P6404721146771900729.Spec : Prop :=
  ∀ n, P6404721146771900729.a n = A114708 (n + 2)

theorem P6404721146771900729.correct : P6404721146771900729.Spec := by
  intro n
  simp only [A114708, Nat.add_sub_cancel, A114708.P6404721146771900729.f1, A114708.P6404721146771900729.a, A114708.P3839565635950427400.a, SequenceMachineLib.memo_apply]

end A114708

/-! ## A114708.P12092755540693586377

`abs(Δ[A114707(-xor(n, -1))])`
-/

namespace A114708.P12092755540693586377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114707 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A114708.P12092755540693586377

namespace A114708

/-- `abs(Δ[A114707(-xor(n, -1))])` -/
def P12092755540693586377.Spec : Prop :=
  ∀ n, P12092755540693586377.a n = A114708 (n + 2)

end A114708

/-! ## A114708.P5868429406468133915

`A002998(Δ[A114707(-xor(n, -1))])`
-/

namespace A114708.P5868429406468133915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114707 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (f1 (n + 1) - f1 n).toNat

end

end A114708.P5868429406468133915

namespace A114708

/-- `A002998(Δ[A114707(-xor(n, -1))])` -/
def P5868429406468133915.Spec : Prop :=
  ∀ n, P5868429406468133915.a n = A114708 (n + 2)

end A114708

/-! ## A114708.P8248333090433271966

`Δ[A000027(A114707(Δ[n²]-n))]`
-/

namespace A114708.P8248333090433271966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A114707 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114708.P8248333090433271966

namespace A114708

/-- `Δ[A000027(A114707(Δ[n²]-n))]` -/
def P8248333090433271966.Spec : Prop :=
  ∀ n, P8248333090433271966.a n = A114708 (n + 2)

end A114708

/-! ## A114708.P3903607881360333539

`A266190(Δ[A114707(Δ[n²]-n)])`
-/

namespace A114708.P3903607881360333539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114707 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (f1 (n + 1) - f1 n).toNat

end

end A114708.P3903607881360333539

namespace A114708

/-- `A266190(Δ[A114707(Δ[n²]-n)])` -/
def P3903607881360333539.Spec : Prop :=
  ∀ n, P3903607881360333539.a n = A114708 (n + 2)

end A114708

/-! ## A114708.P14387720703568055324

`Δ[A114707(Δ[n²]-n)%A017514(n)]`
-/

namespace A114708.P14387720703568055324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114707 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) (A017514 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114708.P14387720703568055324

namespace A114708

/-- `Δ[A114707(Δ[n²]-n)%A017514(n)]` -/
def P14387720703568055324.Spec : Prop :=
  ∀ n, P14387720703568055324.a n = A114708 (n + 2)

end A114708

/-! ## A114708.P9582772865523507257

`abs(Δ[A114707(A008619(2*n))])`
-/

namespace A114708.P9582772865523507257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114707 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A114708.P9582772865523507257

namespace A114708

/-- `abs(Δ[A114707(A008619(2*n))])` -/
def P9582772865523507257.Spec : Prop :=
  ∀ n, P9582772865523507257.a n = A114708 (n + 2)

end A114708

/-!
# A114709: Triangle read by rows: T(n,k) is the number of hill-free Schroeder paths of length 2n that have k horizontal steps on the x-axis (0<=k<=n). A Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis. A hill is a peak at height 1.

The programs for A114709, there is no canonical definition to state claims against.
-/

/-! ## A114709.P17673719392140498158

`A122921(2*A101371(n)²)`
-/

namespace A114709.P17673719392140498158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (2 * A101371 n ^ 2).toNat

end

end A114709.P17673719392140498158

/-! ## A114709.P15789790155938278249

`A104578(n)*A338466(A119502(n))`
-/

namespace A114709.P15789790155938278249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 n * A338466 (A119502 n).toNat

end

end A114709.P15789790155938278249

/-! ## A114709.P1501093929922192759

`A105422(n)*A122204(A099375(n)²)`
-/

namespace A114709.P1501093929922192759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n * A122204 (A099375 n ^ 2).toNat

end

end A114709.P1501093929922192759

/-! ## A114709.P12450305704894646640

`A122921(2*A101371(n)*A101371(n))`
-/

namespace A114709.P12450305704894646640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (2 * A101371 n * A101371 n).toNat

end

end A114709.P12450305704894646640

/-!
# A114710: Number of hill-free Schroeder paths of length 2n that have no horizontal steps on the x-axis.

The programs for A114710, there is no canonical definition to state claims against.
-/

/-! ## A114710.P11044363643517071458

`A114709(∑[n])`
-/

namespace A114710.P11044363643517071458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114710.P11044363643517071458

/-! ## A114710.P2399421266353085597

`or(A000007(n), A114709(A000217(n)))`
-/

namespace A114710.P2399421266353085597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A114709 (A000217 n).toNat)

end

end A114710.P2399421266353085597

/-! ## A114710.P3505948091901797275

`A000164(A000164(n))*A114709(A000217(n))`
-/

namespace A114710.P3505948091901797275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A114709 (A000217 n).toNat

end

end A114710.P3505948091901797275

/-! ## A114710.P5828450918895682972

`A014963(A008458(n))*A114709(A000217(n))`
-/

namespace A114710.P5828450918895682972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A114709 (A000217 n).toNat

end

end A114710.P5828450918895682972

/-! ## A114710.P14661422259030800234

`A033630(A005408(n))*A114709(A000217(n))`
-/

namespace A114710.P14661422259030800234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A005408 n).toNat * A114709 (A000217 n).toNat

end

end A114710.P14661422259030800234

/-! ## A114710.P12113860064720133472

`A033630(A017281(n))*A114709(A000217(n))`
-/

namespace A114710.P12113860064720133472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A017281 n).toNat * A114709 (A000217 n).toNat

end

end A114710.P12113860064720133472

/-!
# A114711: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n and having k weak ascents (1 <= k <= ceiling(n/3)).

The programs for A114711, there is no canonical definition to state claims against.
-/

/-! ## A114711.P14313385782120832139

`A182880(n)/A023134(n+1)`
-/

namespace A114711.P14313385782120832139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182880 n : ℚ) / (A023134 (n + 1) : ℚ)

end

end A114711.P14313385782120832139

/-! ## A114711.P15179921683259261737

`A246186(n)-A178798(A165652(2*n))`
-/

namespace A114711.P15179921683259261737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246186 n - A178798 (A165652 (2 * n)).toNat

end

end A114711.P15179921683259261737

/-!
# A114713: Number of ascents in all peakless Motzkin paths of length n+3.

The programs for A114713, there is no canonical definition to state claims against.
-/

/-! ## A114713.P17482890307892299739

`A051286(n+2)-A292460(n+1)`
-/

namespace A114713.P17482890307892299739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 2) - A292460 (n + 1)

end

end A114713.P17482890307892299739

/-! ## A114713.P3481230638187397663

`A051286(n+2)-A004148(n+2)`
-/

namespace A114713.P3481230638187397663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 2) - A004148 (n + 2)

end

end A114713.P3481230638187397663

/-! ## A114713.P10637890110779316416

`A110236(n+1)+A110320(n+2)-A110236(n+2)`
-/

namespace A114713.P10637890110779316416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (n + 1) + (A110320 (n + 2) - A110236 (n + 2))

end

end A114713.P10637890110779316416

/-! ## A114713.P9275278759270053135

`A110236(n+3)-A051291(n+2)`
-/

namespace A114713.P9275278759270053135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (n + 3) - A051291 (n + 2)

end

end A114713.P9275278759270053135

/-! ## A114713.P345202002096705891

`A079487(A090288(n+1))`
-/

namespace A114713.P345202002096705891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A090288 (n + 1)).toNat

end

end A114713.P345202002096705891

/-! ## A114713.P15356723802713676270

`A079487(A051890(n+3))`
-/

namespace A114713.P15356723802713676270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A051890 (n + 3)).toNat

end

end A114713.P15356723802713676270

/-! ## A114713.P7492454021914402201

`A079487(A152813(n)+7)`
-/

namespace A114713.P7492454021914402201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A152813 n + 7).toNat

end

end A114713.P7492454021914402201

/-! ## A114713.P3137067453585452990

`A079487(A001844(n+2)+1)`
-/

namespace A114713.P3137067453585452990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A001844 (n + 2) + 1).toNat

end

end A114713.P3137067453585452990

/-! ## A114713.P2974541964859743161

`A079487(A099776(n+2)+1)`
-/

namespace A114713.P2974541964859743161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A099776 (n + 2) + 1).toNat

end

end A114713.P2974541964859743161

/-! ## A114713.P17303429711523125319

`record[A079487(A330613(n+1)+1)]`
-/

namespace A114713.P17303429711523125319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A330613 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114713.P17303429711523125319

/-!
# A114714: Number of linear extensions of a 2 X 2 X n lattice.

The programs for A114714, there is no canonical definition to state claims against.
-/

/-! ## A114714.P1982670710624359362

`A395140(A139274(n))`
-/

namespace A114714.P1982670710624359362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395140 (A139274 n).toNat

end

end A114714.P1982670710624359362

/-! ## A114714.P18168378147486067235

`A395140(A139276(n))`
-/

namespace A114714.P18168378147486067235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395140 (A139276 n).toNat

end

end A114714.P18168378147486067235

/-! ## A114714.P4335947176123110068

`A114715(A133263(n))`
-/

namespace A114714.P4335947176123110068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114715 (A133263 n).toNat

end

end A114714.P4335947176123110068

/-! ## A114714.P6399995967009833347

`A114715(A134189(n+1))`
-/

namespace A114714.P6399995967009833347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114715 (A134189 (n + 1)).toNat

end

end A114714.P6399995967009833347

/-! ## A114714.P16013643941597116558

`A114715(A212342(n+1))`
-/

namespace A114714.P16013643941597116558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114715 (A212342 (n + 1)).toNat

end

end A114714.P16013643941597116558

/-!
# A114715: Number A(n,m) of linear extensions of a 2 X n X m lattice; square array A(n,m), n>=1, m>=1, read by antidiagonals.

The programs for A114715, there is no canonical definition to state claims against.
-/

/-! ## A114715.P7461898862784077317

`A114717(5*A036561(n))`
-/

namespace A114715.P7461898862784077317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (5 * A036561 n).toNat

end

end A114715.P7461898862784077317

/-! ## A114715.P7542686175191211024

`A114717(lcm(5, A036561(n)))`
-/

namespace A114715.P7542686175191211024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (Int.lcm 5 (A036561 n))

end

end A114715.P7542686175191211024

/-! ## A114715.P11657803979662141148

`A114717(5*A175840(n))`
-/

namespace A114715.P11657803979662141148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (5 * A175840 n).toNat

end

end A114715.P11657803979662141148

/-! ## A114715.P5817132236098634688

`A114717(lcm(7, A175840(n)))`
-/

namespace A114715.P5817132236098634688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (Int.lcm 7 (A175840 n))

end

end A114715.P5817132236098634688

/-! ## A114715.P18262216256699359622

`A114717(A232646(n+1)+2*A232646(n+1))`
-/

namespace A114715.P18262216256699359622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (A232646 (n + 1) + 2 * A232646 (n + 1)).toNat

end

end A114715.P18262216256699359622

/-!
# A114716: Number of linear extensions of a 3 X 2 X n lattice.

The programs for A114716, there is no canonical definition to state claims against.
-/

/-! ## A114716.P11170887551882132959

`A114715(∑[n+2]-1)`
-/

namespace A114716.P11170887551882132959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114715 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A114716.P11170887551882132959

/-!
# A114717: Number of linear extensions of the divisor lattice of n.

The programs for A114717, there is no canonical definition to state claims against.
-/

/-! ## A114717.P4559493617385264693

`A119499(A081707(n+1)%A141214(n))`
-/

namespace A114717.P4559493617385264693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119499 (Int.tmod (A081707 (n + 1)) (A141214 n)).toNat

end

end A114717.P4559493617385264693

/-! ## A114717.P6308217955407424441

`A131236(A281116(n+1)%A141214(n))`
-/

namespace A114717.P6308217955407424441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131236 (Int.tmod (A281116 (n + 1)) (A141214 n)).toNat

end

end A114717.P6308217955407424441

/-! ## A114717.P2876115845874543159

`A119499(A081707(n+1)^A089723(n+1))`
-/

namespace A114717.P2876115845874543159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119499 (SequenceMachineLib.roundAway ((A081707 (n + 1) : ℚ) ^ (A089723 (n + 1) : ℤ))).toNat

end

end A114717.P2876115845874543159

/-! ## A114717.P10649094630775806288

`A131236(A281116(n+1)^A089723(n+1))`
-/

namespace A114717.P10649094630775806288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131236 (SequenceMachineLib.roundAway ((A281116 (n + 1) : ℚ) ^ (A089723 (n + 1) : ℤ))).toNat

end

end A114717.P10649094630775806288

/-! ## A114717.P1209729473159364843

`A131236(lcm(A281116(n+1), A327012(n+1)))`
-/

namespace A114717.P1209729473159364843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131236 (Int.lcm (A281116 (n + 1)) (A327012 (n + 1)))

end

end A114717.P1209729473159364843

/-!
# A114719: a(n) = sum of terms in n-th row of triangle A112592.

The programs for A114719, there is no canonical definition to state claims against.
-/

/-! ## A114719.P361485498355999494

`∑[n]+A093412(∑[C(n, 2)]+1)-1`
-/

namespace A114719.P361485498355999494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A093412 (∑ j ∈ Finset.range (n + 1), f2 j + 1) - 1)

end

end A114719.P361485498355999494

/-!
# A114721: Denominator of expansion of RiemannSiegelTheta(t) about infinity.

The programs for A114721, there is no canonical definition to state claims against.
-/

/-! ## A114721.P1203388306313534939

`4*12*A282899(n+1)`
-/

namespace A114721.P1203388306313534939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (12 * A282899 (n + 1))

end

end A114721.P1203388306313534939

/-! ## A114721.P15752473803623183014

`2*A277003(n+1)`
-/

namespace A114721.P15752473803623183014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277003 (n + 1)

end

end A114721.P15752473803623183014

/-! ## A114721.P5708463187198145047

`A277003(n+1)+A277003(A348553(n))`
-/

namespace A114721.P5708463187198145047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277003 (n + 1) + A277003 (A348553 n).toNat

end

end A114721.P5708463187198145047

/-! ## A114721.P7642391190575800470

`A277003(A000027(n+1))+A277003(n+1)`
-/

namespace A114721.P7642391190575800470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277003 (A000027 (n + 1)).toNat + A277003 (n + 1)

end

end A114721.P7642391190575800470

/-! ## A114721.P17052513596188905676

`A277003(A110303(n+1))+A277003(n+1)`
-/

namespace A114721.P17052513596188905676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277003 (A110303 (n + 1)).toNat + A277003 (n + 1)

end

end A114721.P17052513596188905676

/-!
# A114723: G.f.: x*(1 - 2*x^2)/(1 - x - 3*x^2 - 3*x^3 - x^4).

The programs for A114723, the canonical program `A114723.P9727395690052707750` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114723 has offset 0).

The definition of A114723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114723.P9727395690052707750

`a(n-1)+3*a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114723

/-- `a(n-1)+3*a(n-2)+3*a(n-3)+a(n-4)` -/
def P9727395690052707750.Spec : Prop :=
  ∀ n, (P9727395690052707750.a n : ℤ) = A114723 n

theorem P9727395690052707750.correct : P9727395690052707750.Spec := by
  intro n
  simp only [A114723]

end A114723

/-! ## A114723.P13168881234249168113

`ogf((-x+2x^3)/(-1+x+3x^2+3x^3+x^4))`
-/

namespace A114723.P13168881234249168113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -2] [1, -1, -3, -3, -1] n

end

end A114723.P13168881234249168113

namespace A114723

/-- `ogf((-x+2x^3)/(-1+x+3x^2+3x^3+x^4))` -/
def P13168881234249168113.Spec : Prop :=
  ∀ n, P13168881234249168113.a n = A114723 n

end A114723

/-! ## A114723.P16393918279176679527

`Δ[A008647(∑[A209717(n+1)])]`
-/

namespace A114723.P16393918279176679527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209717 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114723.P16393918279176679527

namespace A114723

/-- `Δ[A008647(∑[A209717(n+1)])]` -/
def P16393918279176679527.Spec : Prop :=
  ∀ n, P16393918279176679527.a n = A114723 n

end A114723

/-! ## A114723.P10893796979079522381

`A165190(A000045(2*(n+2)))-A072670(n)`
-/

namespace A114723.P10893796979079522381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A000045 (2 * (n + 2))).toNat - A072670 n

end

end A114723.P10893796979079522381

namespace A114723

/-- `A165190(A000045(2*(n+2)))-A072670(n)` -/
def P10893796979079522381.Spec : Prop :=
  ∀ n, P10893796979079522381.a n = A114723 n

end A114723

/-!
# A114725: The first entry of the vector v[n]=Mv[n-1], where M is the 6 X 6 matrix [[0, 1, 0, 0, 0, 0], [0, 0, 1, 0, 0, 0], [0, 0, 0, 1, 0, 0], [0, 0, 0, 0, 1, 0], [0, 0, 0, 0, 0, 1], [1, 5, 10, 10, 5, 1]] and v[0] is the column vector [0, 1, 1, 2, 3, 5].

The programs for A114725, there is no canonical definition to state claims against.
-/

/-! ## A114725.P8774446318057051012

`A004090(A259384(n+1)^A097242(n))`
-/

namespace A114725.P8774446318057051012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 (SequenceMachineLib.roundAway ((A259384 (n + 1) : ℚ) ^ (A097242 n : ℤ))).toNat

end

end A114725.P8774446318057051012

/-!
# A114726: Fixed points of permutation A114650.

The programs for A114726, there is no canonical definition to state claims against.
-/

/-! ## A114726.P15627181221418728837

`2*A001671(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A114726.P15627181221418728837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A001671 n - (a (n - 1) + 1)

end

end A114726.P15627181221418728837

/-! ## A114726.P6994300779483815303

`1-(a(n-1)-2*A000149(n))` with `a(0)=1`
-/

namespace A114726.P6994300779483815303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - 2 * A000149 n)

end

end A114726.P6994300779483815303

/-!
# A114729: One of a family of six fractal sequences that transform to each other.

The programs for A114729, there is no canonical definition to state claims against.
-/

/-! ## A114729.P5253754837433155812

`A114731(lt[1, A114734(n+1)]+1)`
-/

namespace A114729.P5253754837433155812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A114729.P5253754837433155812

/-! ## A114729.P13101154223471031114

`ceil(A090100(n+1)/A103009(n+1))`
-/

namespace A114729.P13101154223471031114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090100 (n + 1) : ℚ) / (A103009 (n + 1) : ℚ)⌉

end

end A114729.P13101154223471031114

/-!
# A114730: One of a family of fractal sequences that transforms into each other.

The programs for A114730, there is no canonical definition to state claims against.
-/

/-! ## A114730.P14177910811470805640

`A114729(lt[1, A114732(n+1)]+1)`
-/

namespace A114730.P14177910811470805640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A114730.P14177910811470805640

/-! ## A114730.P9925938538909992381

`A049084(p?[A008578(A114731(n+1))])`
-/

namespace A114730.P9925938538909992381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A114731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114730.P9925938538909992381

/-! ## A114730.P11038220681227816881

`A066328(p?[A008578(A114731(n+1))])`
-/

namespace A114730.P11038220681227816881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A114731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114730.P11038220681227816881

/-! ## A114730.P16654108558557695263

`A114731(lt[2, A114734(n+1)]+1)`
-/

namespace A114730.P16654108558557695263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A114730.P16654108558557695263

/-! ## A114730.P17559278842661282826

`A114731(lt[6, A092543(n+3)])`
-/

namespace A114730.P17559278842661282826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114730.P17559278842661282826

/-!
# A114731: One of a family of six fractal sequences that transform into each other.

The programs for A114731, there is no canonical definition to state claims against.
-/

/-! ## A114731.P5414585283194525537

`A114729(lt[2, A114732(n+1)]+1)`
-/

namespace A114731.P5414585283194525537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A114731.P5414585283194525537

/-! ## A114731.P3559945000831130567

`A244415(∑[2*A250306(n)])`
-/

namespace A114731.P3559945000831130567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114731.P3559945000831130567

/-! ## A114731.P1311200302402905420

`A244415(∑[A005843(A250306(n))])`
-/

namespace A114731.P1311200302402905420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A250306 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114731.P1311200302402905420

/-!
# A114732: One of a family of six fractal sequences that transform into each other.

The programs for A114732, there is no canonical definition to state claims against.
-/

/-! ## A114732.P322105455579870512

`A114734(lt[1, A114734(n+1)]+1)-1`
-/

namespace A114732.P322105455579870512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A114732.P322105455579870512

/-! ## A114732.P6500639192515873867

`A114733(lt[2, A114734(n+1)])`
-/

namespace A114732.P6500639192515873867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114732.P6500639192515873867

/-! ## A114732.P12960639770413863802

`A114734(lt[2, A114731(n+1)]+1)`
-/

namespace A114732.P12960639770413863802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A114732.P12960639770413863802

/-!
# A114733: One of a family of six fractal sequences that transforms into each other.

The programs for A114733, there is no canonical definition to state claims against.
-/

/-! ## A114733.P3011844136858647927

`A114732(lt[1, A114732(n+1)]+1)-1`
-/

namespace A114733.P3011844136858647927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A114733.P3011844136858647927

/-! ## A114733.P17834271115678237752

`A114734(lt[2, A114734(n+1)]+1)-2`
-/

namespace A114733.P17834271115678237752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 2

end

end A114733.P17834271115678237752

/-! ## A114733.P10595130237107649747

`A114734(lt[2, A114732(n+1)])`
-/

namespace A114733.P10595130237107649747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114733.P10595130237107649747

/-! ## A114733.P13062495662443723241

`A114734(lt[1, A114731(n+1)]+1)`
-/

namespace A114733.P13062495662443723241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A114733.P13062495662443723241

/-! ## A114733.P6795519285806012501

`A114732(lt[2, A114729(n+1)]+1)`
-/

namespace A114733.P6795519285806012501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A114733.P6795519285806012501

/-!
# A114734: One of a family of six fractal sequences that transform into each other.

The programs for A114734, there is no canonical definition to state claims against.
-/

/-! ## A114734.P5671997211423367720

`A114732(lt[2, A114732(n+1)]+1)-2`
-/

namespace A114734.P5671997211423367720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 2

end

end A114734.P5671997211423367720

/-! ## A114734.P9711429628181630682

`A114732(lt[1, A114729(n+1)]+1)`
-/

namespace A114734.P9711429628181630682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A114734.P9711429628181630682

/-! ## A114734.P15073682544654728010

`A114732(lt[2, A114733(n+1)])`
-/

namespace A114734.P15073682544654728010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114734.P15073682544654728010

/-!
# A114736: Number of planar partitions of n where parts strictly decrease along each row and column.

The programs for A114736, there is no canonical definition to state claims against.
-/

/-! ## A114736.P16298274545119705896

`A067085(A345953(n))`
-/

namespace A114736.P16298274545119705896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A345953 n).toNat

end

end A114736.P16298274545119705896

/-! ## A114736.P10218945283835850885

`A228364(n)+A000035(A006130(n))`
-/

namespace A114736.P10218945283835850885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 n + A000035 (A006130 n).toNat

end

end A114736.P10218945283835850885

/-! ## A114736.P11238222267528986283

`A000196(A000009(n)*A017913(n))`
-/

namespace A114736.P11238222267528986283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000009 n * A017913 n).toNat

end

end A114736.P11238222267528986283

/-! ## A114736.P10687584890258527281

`A135662(A261646(n+1)*A358229(n+1))`
-/

namespace A114736.P10687584890258527281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A261646 (n + 1) * A358229 (n + 1)).toNat

end

end A114736.P10687584890258527281

/-! ## A114736.P17435535029256046778

`A135662(A023424(n+1))-A135660(2*n+1)`
-/

namespace A114736.P17435535029256046778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A023424 (n + 1)).toNat - A135660 (2 * n + 1)

end

end A114736.P17435535029256046778

/-!
# A114737: Positive integers x such that there exist positive integers y >= x and z satisfying x^3 + y^3 = z^5.

The programs for A114737, there is no canonical definition to state claims against.
-/

/-! ## A114737.P5124954178244475846

`A103268(comp[(n+1)²]+1)`
-/

namespace A114737.P5124954178244475846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103268 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A114737.P5124954178244475846

/-! ## A114737.P14425297825574156309

`record[A103268(n+1)^A264391(n)]`
-/

namespace A114737.P14425297825574156309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103268 (n + 1) : ℚ) ^ (A264391 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114737.P14425297825574156309

/-!
# A114741: a(1) = 2, a(2) = 3, a(n+1) = least prime of the form k*(a(n-1)) - a(n) not included earlier.

The programs for A114741, there is no canonical definition to state claims against.
-/

/-! ## A114741.P16987642172175290773

`or(A032758(n+1), A049783(A001700(n)))`
-/

namespace A114741.P16987642172175290773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032758 (n + 1)) (A049783 (A001700 n).toNat)

end

end A114741.P16987642172175290773

/-!
# A114742: Value of k pertaining to A114741.

The programs for A114742, there is no canonical definition to state claims against.
-/

/-! ## A114742.P3389371915977635606

`(A114741(n+2)+A114741(n+3))/A114741(n+1)`
-/

namespace A114742.P3389371915977635606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114741 (n + 2) + A114741 (n + 3) : ℚ) / (A114741 (n + 1) : ℚ)

end

end A114742.P3389371915977635606

/-!
# A114743: a(1) =4, a(2) = 6, a(n+1) = least composite number of the form k*(a(n-1)) - a(n), not included earlier.

The programs for A114743, the canonical program `A114743.P7057480201678743068` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114743 has offset 1).

The definition of A114743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114743.P7057480201678743068

`2*a(n-3)` with `a(0)=4, a(1)=6, a(2)=10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114743

/-- `2*a(n-3)` -/
def P7057480201678743068.Spec : Prop :=
  ∀ n, (P7057480201678743068.a n : ℤ) = A114743 (n + 1)

theorem P7057480201678743068.correct : P7057480201678743068.Spec := by
  intro n
  simp only [A114743, Nat.add_sub_cancel]

end A114743

/-! ## A114743.P12346465648295604895

`2*A114744(n+2)`
-/

namespace A114743.P12346465648295604895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114744 (n + 2)

end

end A114743.P12346465648295604895

namespace A114743

/-- `2*A114744(n+2)` -/
def P12346465648295604895.Spec : Prop :=
  ∀ n, P12346465648295604895.a n = A114743 (n + 1)

end A114743

/-! ## A114743.P14855877443757240359

`a(n-3)+a(n-3)` with `a(0)=4, a(1)=6, a(2)=10`
-/

namespace A114743.P14855877443757240359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 10] fun n a =>
  a (n - 3) + a (n - 3)

end

end A114743.P14855877443757240359

namespace A114743

/-- `a(n-3)+a(n-3)` -/
def P14855877443757240359.Spec : Prop :=
  ∀ n, (P14855877443757240359.a n : ℤ) = A114743 (n + 1)

theorem P14855877443757240359.correct : P14855877443757240359.Spec := by
  intro n
  simp only [A114743, Nat.add_sub_cancel, A114743.P14855877443757240359.a, A114743.P7057480201678743068.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114743

/-! ## A114743.P17061403733712765334

`a(n-3)/(1-1/2)` with `a(0)=4, a(1)=6, a(2)=10`
-/

namespace A114743.P17061403733712765334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 6, 10] fun n a =>
  a (n - 3) / (1 - (1 : ℚ) / 2)

end

end A114743.P17061403733712765334

namespace A114743

/-- `a(n-3)/(1-1/2)` -/
def P17061403733712765334.Spec : Prop :=
  ∀ n, P17061403733712765334.a n = (A114743 (n + 1) : ℚ)

end A114743

/-! ## A114743.P16993512352075106286

`or(1, a(n-3))-(1-a(n-3))` with `a(0)=4, a(1)=6, a(2)=10`
-/

namespace A114743.P16993512352075106286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 10] fun n a =>
  Int.lor 1 (a (n - 3)) - (1 - a (n - 3))

end

end A114743.P16993512352075106286

namespace A114743

/-- `or(1, a(n-3))-(1-a(n-3))` -/
def P16993512352075106286.Spec : Prop :=
  ∀ n, P16993512352075106286.a n = A114743 (n + 1)

end A114743

/-! ## A114743.P12823926693932539837

`A114745(n+4)`
-/

namespace A114743.P12823926693932539837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114745 (n + 4)

end

end A114743.P12823926693932539837

namespace A114743

/-- `A114745(n+4)` -/
def P12823926693932539837.Spec : Prop :=
  ∀ n, P12823926693932539837.a n = A114743 (n + 1)

end A114743

/-! ## A114743.P9633652535193190697

`A114744(n+5)`
-/

namespace A114743.P9633652535193190697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114744 (n + 5)

end

end A114743.P9633652535193190697

namespace A114743

/-- `A114744(n+5)` -/
def P9633652535193190697.Spec : Prop :=
  ∀ n, P9633652535193190697.a n = A114743 (n + 1)

end A114743

/-! ## A114743.P1091755764401197584

`A060548(2*n+1)+A060547(n+5)`
-/

namespace A114743.P1091755764401197584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (2 * n + 1) + A060547 (n + 5)

end

end A114743.P1091755764401197584

namespace A114743

/-- `A060548(2*n+1)+A060547(n+5)` -/
def P1091755764401197584.Spec : Prop :=
  ∀ n, P1091755764401197584.a n = A114743 (n + 1)

end A114743

/-! ## A114743.P17191683532307352962

`ogf((4+6x+10x^2)/(1-2x^3))`
-/

namespace A114743.P17191683532307352962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6, 10] [1, 0, 0, -2] n

end

end A114743.P17191683532307352962

namespace A114743

/-- `ogf((4+6x+10x^2)/(1-2x^3))` -/
def P17191683532307352962.Spec : Prop :=
  ∀ n, P17191683532307352962.a n = A114743 (n + 1)

end A114743

/-!
# A114744: a(1) = 1, a(2) = 2, a(n+1) = least strictly positive number of the form k*a(n-1) - a(n), not included earlier.

The programs for A114744, the canonical program `A114744.P2928043654258340571` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114744 has offset 1).

The definition of A114744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114744.P2928043654258340571

`2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114744

/-- `2*a(n-3)` -/
def P2928043654258340571.Spec : Prop :=
  ∀ n, (P2928043654258340571.a n : ℤ) = A114744 (n + 1)

theorem P2928043654258340571.correct : P2928043654258340571.Spec := by
  intro n
  simp only [A114744, Nat.add_sub_cancel]

end A114744

/-! ## A114744.P3141999877395352083

`a(n-3)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A114744.P3141999877395352083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 3) + a (n - 3)

end

end A114744.P3141999877395352083

namespace A114744

/-- `a(n-3)+a(n-3)` -/
def P3141999877395352083.Spec : Prop :=
  ∀ n, (P3141999877395352083.a n : ℤ) = A114744 (n + 1)

theorem P3141999877395352083.correct : P3141999877395352083.Spec := by
  intro n
  simp only [A114744, Nat.add_sub_cancel, A114744.P3141999877395352083.a, A114744.P2928043654258340571.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114744

/-! ## A114744.P1779864734268046763

`ogf((1+2x+3x^2+3x^3)/(1-2x^3))`
-/

namespace A114744.P1779864734268046763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 3] [1, 0, 0, -2] n

end

end A114744.P1779864734268046763

namespace A114744

/-- `ogf((1+2x+3x^2+3x^3)/(1-2x^3))` -/
def P1779864734268046763.Spec : Prop :=
  ∀ n, P1779864734268046763.a n = A114744 (n + 1)

end A114744

/-! ## A114744.P5752952090646421013

`A114745(n+3)/2`
-/

namespace A114744.P5752952090646421013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114745 (n + 3) : ℚ) / 2

end

end A114744.P5752952090646421013

namespace A114744

/-- `A114745(n+3)/2` -/
def P5752952090646421013.Spec : Prop :=
  ∀ n, P5752952090646421013.a n = (A114744 (n + 1) : ℚ)

end A114744

/-! ## A114744.P13153743848168995946

`A005843(a(n-3))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A114744.P13153743848168995946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A005843 (a (n - 3)).toNat

end

end A114744.P13153743848168995946

namespace A114744

/-- `A005843(a(n-3))` -/
def P13153743848168995946.Spec : Prop :=
  ∀ n, P13153743848168995946.a n = A114744 (n + 1)

end A114744

/-!
# A114745: a(1) = 1, a(2) = 3, a(n+1) = least number of the form k*(a(n-1)) - a(n), not included earlier.

The programs for A114745, the canonical program `A114745.P3305999800435817904` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114745 has offset 1).

The definition of A114745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114745.P3305999800435817904

`2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=6, a(5)=10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114745

/-- `2*a(n-3)` -/
def P3305999800435817904.Spec : Prop :=
  ∀ n, (P3305999800435817904.a n : ℤ) = A114745 (n + 1)

theorem P3305999800435817904.correct : P3305999800435817904.Spec := by
  intro n
  simp only [A114745, Nat.add_sub_cancel]

end A114745

/-! ## A114745.P8541032757636818953

`a(n-3)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=6, a(5)=10`
-/

namespace A114745.P8541032757636818953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4, 6, 10] fun n a =>
  a (n - 3) + a (n - 3)

end

end A114745.P8541032757636818953

namespace A114745

/-- `a(n-3)+a(n-3)` -/
def P8541032757636818953.Spec : Prop :=
  ∀ n, (P8541032757636818953.a n : ℤ) = A114745 (n + 1)

theorem P8541032757636818953.correct : P8541032757636818953.Spec := by
  intro n
  simp only [A114745, Nat.add_sub_cancel, A114745.P8541032757636818953.a, A114745.P3305999800435817904.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114745

/-! ## A114745.P16066858818876413961

`a(n-3)/(1-1/2)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=6, a(5)=10`
-/

namespace A114745.P16066858818876413961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 2, 4, 6, 10] fun n a =>
  a (n - 3) / (1 - (1 : ℚ) / 2)

end

end A114745.P16066858818876413961

namespace A114745

/-- `a(n-3)/(1-1/2)` -/
def P16066858818876413961.Spec : Prop :=
  ∀ n, P16066858818876413961.a n = (A114745 (n + 1) : ℚ)

end A114745

/-! ## A114745.P14739904594271758362

`or(1, a(n-3))-(1-a(n-3))` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=6, a(5)=10`
-/

namespace A114745.P14739904594271758362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 4, 6, 10] fun n a =>
  Int.lor 1 (a (n - 3)) - (1 - a (n - 3))

end

end A114745.P14739904594271758362

namespace A114745

/-- `or(1, a(n-3))-(1-a(n-3))` -/
def P14739904594271758362.Spec : Prop :=
  ∀ n, P14739904594271758362.a n = A114745 (n + 1)

end A114745

/-! ## A114745.P11528283929020626568

`ogf((1+3x+2x^2+2x^3+6x^5)/(1-2x^3))`
-/

namespace A114745.P11528283929020626568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, 2, 0, 6] [1, 0, 0, -2] n

end

end A114745.P11528283929020626568

namespace A114745

/-- `ogf((1+3x+2x^2+2x^3+6x^5)/(1-2x^3))` -/
def P11528283929020626568.Spec : Prop :=
  ∀ n, P11528283929020626568.a n = A114745 (n + 1)

end A114745

/-!
# A114747: a(1) = 1, a(2) = 1, a(n+1) = least Fibonacci number of the form k*(a(n-1)) - a(n), not included earlier.

The programs for A114747, there is no canonical definition to state claims against.
-/

/-! ## A114747.P4448002514529569305

`A000045(7*a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A114747.P4448002514529569305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5] fun n a =>
  A000045 (7 * a (n - 4)).toNat

end

end A114747.P4448002514529569305

/-! ## A114747.P7177689228299007872

`A000045(∑[a(n-3)+6])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A114747.P7177689228299007872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114747.P7177689228299007872

/-! ## A114747.P9706797357546093922

`A000045(lt[n%7*floor(n/7), ceil(sin(gcd(6, n)))])`
-/

namespace A114747.P9706797357546093922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 7 : ℕ) : ℤ) * ⌊(n : ℚ) / 7⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Nat.gcd 6 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114747.P9706797357546093922

/-! ## A114747.P6828814935386084787

`A102310(A025723(n))`
-/

namespace A114747.P6828814935386084787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102310 (A025723 n).toNat

end

end A114747.P6828814935386084787

/-!
# A114749: a(n) = a(n-1) + 4*a(n-2) + 6*a(n-3) + 4*a(n-4) + a(n-5).

The programs for A114749, the canonical program `A114749.P9448797508628166327` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114749 has offset 0).

The definition of A114749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)+6*a(n-3)+4*a(n-4)+a(n-5)` (program `A114749.P9448797508628166327`, by `A114749.P9448797508628166327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114749.P9448797508628166327

`a(n-1)+4*a(n-2)+6*a(n-3)+4*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114749

/-- `a(n-1)+4*a(n-2)+6*a(n-3)+4*a(n-4)+a(n-5)` -/
def P9448797508628166327.Spec : Prop :=
  ∀ n, (P9448797508628166327.a n : ℤ) = A114749 n

theorem P9448797508628166327.correct : P9448797508628166327.Spec := by
  intro n
  simp only [A114749]

end A114749

/-!
# A114751: Triangle where row n contains the n consecutive numbers from n to 2n-1, in ascending order if n is odd, else in descending order; listed by rows.

The programs for A114751, the canonical program `A114751.P5114552108412707646` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114751 has offset 1).

The definition of A114751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114751.P14242302856779890829

`A092543(n+1)+∑[char[∑[n+1]]]`
-/

namespace A114751.P14242302856779890829
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A114751.P14242302856779890829

namespace A114751

/-- `A092543(n+1)+∑[char[∑[n+1]]]` -/
def P14242302856779890829.Spec : Prop :=
  ∀ n, P14242302856779890829.a n = A114751 (n + 1)

end A114751

/-! ## A114751.P5114552108412707646

`A094727(A056011(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A114751

/-- `A094727(A056011(n+1))` -/
def P5114552108412707646.Spec : Prop :=
  ∀ n, P5114552108412707646.a n = A114751 (n + 1)

theorem P5114552108412707646.correct : P5114552108412707646.Spec := by
  intro n
  simp only [A114751, Nat.add_sub_cancel]

end A114751

/-! ## A114751.P4447616008944636273

`A377809(n+1)-A056023(n+1)`
-/

namespace A114751.P4447616008944636273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - A056023 (n + 1)

end

end A114751.P4447616008944636273

namespace A114751

/-- `A377809(n+1)-A056023(n+1)` -/
def P4447616008944636273.Spec : Prop :=
  ∀ n, P4447616008944636273.a n = A114751 (n + 1)

end A114751

/-! ## A114751.P1934806764395948708

`A082233(∑[2*n]%comp[∑[n]])`
-/

namespace A114751.P1934806764395948708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A114751.P1934806764395948708

namespace A114751

/-- `A082233(∑[2*n]%comp[∑[n]])` -/
def P1934806764395948708.Spec : Prop :=
  ∀ n, P1934806764395948708.a n = A114751 (n + 1)

end A114751

/-! ## A114751.P8412546861351342650

`A082233(∑[char[∑[n]]]²-1-n)`
-/

namespace A114751.P8412546861351342650
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1 - (n : ℤ)).toNat

end

end A114751.P8412546861351342650

namespace A114751

/-- `A082233(∑[char[∑[n]]]²-1-n)` -/
def P8412546861351342650.Spec : Prop :=
  ∀ n, P8412546861351342650.a n = A114751 (n + 1)

end A114751

/-! ## A114751.P2464612529983067665

`A128076(A056023(n+1))`
-/

namespace A114751.P2464612529983067665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (A056023 (n + 1)).toNat

end

end A114751.P2464612529983067665

namespace A114751

/-- `A128076(A056023(n+1))` -/
def P2464612529983067665.Spec : Prop :=
  ∀ n, P2464612529983067665.a n = A114751 (n + 1)

end A114751

/-! ## A114751.P13746422282392771698

`A319571(2*n+1)+∑[char[∑[n]]]`
-/

namespace A114751.P13746422282392771698
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A114751.P13746422282392771698

namespace A114751

/-- `A319571(2*n+1)+∑[char[∑[n]]]` -/
def P13746422282392771698.Spec : Prop :=
  ∀ n, P13746422282392771698.a n = A114751 (n + 1)

end A114751

/-! ## A114751.P14572171074225311813

`∑[2*char[∑[n]]]-A092542(n+1)`
-/

namespace A114751.P14572171074225311813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A092542 (n + 1)

end

end A114751.P14572171074225311813

namespace A114751

/-- `∑[2*char[∑[n]]]-A092542(n+1)` -/
def P14572171074225311813.Spec : Prop :=
  ∀ n, P14572171074225311813.a n = A114751 (n + 1)

end A114751

/-! ## A114751.P7705748207554706668

`A002024(n+1)+A002024(n+1)-A092542(n+1)`
-/

namespace A114751.P7705748207554706668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A002024 (n + 1) - A092542 (n + 1))

end

end A114751.P7705748207554706668

namespace A114751

/-- `A002024(n+1)+A002024(n+1)-A092542(n+1)` -/
def P7705748207554706668.Spec : Prop :=
  ∀ n, P7705748207554706668.a n = A114751 (n + 1)

end A114751

/-! ## A114751.P5790436278199854528

`A319573(n)+∑[char[∑[n]]]`
-/

namespace A114751.P5790436278199854528
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319573 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A114751.P5790436278199854528

namespace A114751

/-- `A319573(n)+∑[char[∑[n]]]` -/
def P5790436278199854528.Spec : Prop :=
  ∀ n, P5790436278199854528.a n = A114751 (n + 1)

end A114751

/-!
# A114752: a(2n)=2n, a(2n+1)=4n+1.

The programs for A114752, the canonical program `A114752.P5450699498717519749` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114752 has offset 1).

The definition of A114752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114752.P5450699498717519749

`(3*(n+1)-n*(-1)^(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114752

/-- `(3*(n+1)-n*(-1)^(n+1)-1)/2` -/
def P5450699498717519749.Spec : Prop :=
  ∀ n, P5450699498717519749.a n = (A114752 (n + 1) : ℚ)

end A114752

/-! ## A114752.P15799403053793373342

`n*gcd(2, n)+1`
-/

namespace A114752.P15799403053793373342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

end

end A114752.P15799403053793373342

namespace A114752

/-- `n*gcd(2, n)+1` -/
def P15799403053793373342.Spec : Prop :=
  ∀ n, (P15799403053793373342.a n : ℤ) = A114752 (n + 1)

end A114752

/-! ## A114752.P8507484304257333834

`C(or(1, n), n)+n`
-/

namespace A114752.P8507484304257333834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n + n

end

end A114752.P8507484304257333834

namespace A114752

/-- `C(or(1, n), n)+n` -/
def P8507484304257333834.Spec : Prop :=
  ∀ n, (P8507484304257333834.a n : ℤ) = A114752 (n + 1)

end A114752

/-! ## A114752.P1596487968319325339

`1-n*or(n, -2)`
-/

namespace A114752.P1596487968319325339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * Int.lor (n : ℤ) (-2)

end

end A114752.P1596487968319325339

namespace A114752

/-- `1-n*or(n, -2)` -/
def P1596487968319325339.Spec : Prop :=
  ∀ n, P1596487968319325339.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P3073381498355292158

`n*(2-n%2)+1`
-/

namespace A114752.P3073381498355292158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)) + 1

end

end A114752.P3073381498355292158

namespace A114752

/-- `n*(2-n%2)+1` -/
def P3073381498355292158.Spec : Prop :=
  ∀ n, P3073381498355292158.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P14690891290504638263

`3*n+1-lcm(2, n)`
-/

namespace A114752.P14690891290504638263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (1 - (Nat.lcm 2 n : ℤ))

end

end A114752.P14690891290504638263

namespace A114752

/-- `3*n+1-lcm(2, n)` -/
def P14690891290504638263.Spec : Prop :=
  ∀ n, P14690891290504638263.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P6686955352836306629

`n*(2-and(1, n))+1`
-/

namespace A114752.P6686955352836306629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.land 1 n : ℤ)) + 1

end

end A114752.P6686955352836306629

namespace A114752

/-- `n*(2-and(1, n))+1` -/
def P6686955352836306629.Spec : Prop :=
  ∀ n, P6686955352836306629.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P18035031163756027826

`1-n*(and(1, n)-2)`
-/

namespace A114752.P18035031163756027826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * ((Nat.land 1 n : ℤ) - 2)

end

end A114752.P18035031163756027826

namespace A114752

/-- `1-n*(and(1, n)-2)` -/
def P18035031163756027826.Spec : Prop :=
  ∀ n, P18035031163756027826.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P346959785782266780

`gcd(n+1, and(1, n))+n`
-/

namespace A114752.P346959785782266780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.land 1 n) + n

end

end A114752.P346959785782266780

namespace A114752

/-- `gcd(n+1, and(1, n))+n` -/
def P346959785782266780.Spec : Prop :=
  ∀ n, (P346959785782266780.a n : ℤ) = A114752 (n + 1)

end A114752

/-! ## A114752.P13663492481159219164

`xor(1, a(n-2)+3)` with `a(0)=1, a(1)=2`
-/

namespace A114752.P13663492481159219164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (a (n - 2) + 3)

end

end A114752.P13663492481159219164

namespace A114752

/-- `xor(1, a(n-2)+3)` -/
def P13663492481159219164.Spec : Prop :=
  ∀ n, (P13663492481159219164.a n : ℤ) = A114752 (n + 1)

end A114752

/-! ## A114752.P7173616163160095534

`gcd((n+1)², or(1, n))+n`
-/

namespace A114752.P7173616163160095534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 2) (Nat.lor 1 n) + n

end

end A114752.P7173616163160095534

namespace A114752

/-- `gcd((n+1)², or(1, n))+n` -/
def P7173616163160095534.Spec : Prop :=
  ∀ n, (P7173616163160095534.a n : ℤ) = A114752 (n + 1)

end A114752

/-! ## A114752.P2510409810078536790

`-xor(-1, gcd(2*n, n²))`
-/

namespace A114752.P2510409810078536790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Nat.gcd (2 * n) (n ^ 2) : ℤ)

end

end A114752.P2510409810078536790

namespace A114752

/-- `-xor(-1, gcd(2*n, n²))` -/
def P2510409810078536790.Spec : Prop :=
  ∀ n, P2510409810078536790.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P6001308234069677559

`∑{d}[or(n, -2), n+2-#]`
-/

namespace A114752.P6001308234069677559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 2 : ℤ) - (d : ℤ))

end

end A114752.P6001308234069677559

namespace A114752

/-- `∑{d}[or(n, -2), n+2-#]` -/
def P6001308234069677559.Spec : Prop :=
  ∀ n, P6001308234069677559.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P13362192588679815516

`∑[∑[ogf((1+2x+3x^2)/(1+2x+x^2))]]`
-/

namespace A114752.P13362192588679815516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114752.P13362192588679815516

namespace A114752

/-- `∑[∑[ogf((1+2x+3x^2)/(1+2x+x^2))]]` -/
def P13362192588679815516.Spec : Prop :=
  ∀ n, P13362192588679815516.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P7963676082520337772

`ogf((1+2x+3x^2)/(1-2x^2+x^4))`
-/

namespace A114752.P7963676082520337772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 0, -2, 0, 1] n

end

end A114752.P7963676082520337772

namespace A114752

/-- `ogf((1+2x+3x^2)/(1-2x^2+x^4))` -/
def P7963676082520337772.Spec : Prop :=
  ∀ n, P7963676082520337772.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P4161753438422643149

`3-xor(1, -a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A114752.P4161753438422643149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - Int.xor 1 (-a (n - 2))

end

end A114752.P4161753438422643149

namespace A114752

/-- `3-xor(1, -a(n-2))` -/
def P4161753438422643149.Spec : Prop :=
  ∀ n, P4161753438422643149.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P5078306287283727115

`n*((n+1)%2+1)+1`
-/

namespace A114752.P5078306287283727115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2 + 1) + 1

end

end A114752.P5078306287283727115

namespace A114752

/-- `n*((n+1)%2+1)+1` -/
def P5078306287283727115.Spec : Prop :=
  ∀ n, (P5078306287283727115.a n : ℤ) = A114752 (n + 1)

end A114752

/-! ## A114752.P17028502386025438706

`1-n*((1-n)%2-1)`
-/

namespace A114752.P17028502386025438706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * (Int.tmod (1 - (n : ℤ)) 2 - 1)

end

end A114752.P17028502386025438706

namespace A114752

/-- `1-n*((1-n)%2-1)` -/
def P17028502386025438706.Spec : Prop :=
  ∀ n, P17028502386025438706.a n = A114752 (n + 1)

end A114752

/-! ## A114752.P18169056611389576152

`n*(and(1, n+1)+1)+1`
-/

namespace A114752.P18169056611389576152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 (n + 1) + 1) + 1

end

end A114752.P18169056611389576152

namespace A114752

/-- `n*(and(1, n+1)+1)+1` -/
def P18169056611389576152.Spec : Prop :=
  ∀ n, (P18169056611389576152.a n : ℤ) = A114752 (n + 1)

end A114752

/-! ## A114752.P2261208595004605515

`or(1, 3*n)-a(n-1)` with `a(0)=1`
-/

namespace A114752.P2261208595004605515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lor 1 (3 * n) : ℤ) - a (n - 1)

end

end A114752.P2261208595004605515

namespace A114752

/-- `or(1, 3*n)-a(n-1)` -/
def P2261208595004605515.Spec : Prop :=
  ∀ n, P2261208595004605515.a n = A114752 (n + 1)

end A114752

/-!
# A114753: a(n) = n if odd, else 2n-1.

The programs for A114753, the canonical program `A114753.P16883376096494013089` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114753 has offset 1).

The definition of A114753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114753.P16883376096494013089

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114753

/-- `2*a(n-2)-a(n-4)` -/
def P16883376096494013089.Spec : Prop :=
  ∀ n, P16883376096494013089.a n = A114753 (n + 1)

theorem P16883376096494013089.correct : P16883376096494013089.Spec := by
  intro n
  simp only [A114753, Nat.add_sub_cancel]

end A114753

/-! ## A114753.P4020507093498925748

`(3*(n+1)-1-n*(-1)^n)/2`
-/

namespace A114753.P4020507093498925748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - 1 - (n : ℤ) * (-1) ^ n : ℚ) / 2

end

end A114753.P4020507093498925748

namespace A114753

/-- `(3*(n+1)-1-n*(-1)^n)/2` -/
def P4020507093498925748.Spec : Prop :=
  ∀ n, P4020507093498925748.a n = (A114753 (n + 1) : ℚ)

theorem P4020507093498925748.correct : P4020507093498925748.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A114753, Nat.add_sub_cancel, A114753.P4020507093498925748.a, A114753.P16883376096494013089.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A114753, Nat.add_sub_cancel, A114753.P4020507093498925748.a, A114753.P16883376096494013089.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A114753

/-! ## A114753.P4639272507336975877

`lcm(2, n)+1`
-/

namespace A114753.P4639272507336975877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

end

end A114753.P4639272507336975877

namespace A114753

/-- `lcm(2, n)+1` -/
def P4639272507336975877.Spec : Prop :=
  ∀ n, (P4639272507336975877.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P6764488337448723865

`or(1, sqrt(lcm(4, n²)))`
-/

namespace A114753.P6764488337448723865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.sqrt (Nat.lcm 4 (n ^ 2) : ℝ)))

end

end A114753.P6764488337448723865

namespace A114753

/-- `or(1, sqrt(lcm(4, n²)))` -/
def P6764488337448723865.Spec : Prop :=
  ∀ n, P6764488337448723865.a n = A114753 (n + 1)

end A114753

/-! ## A114753.P6778225172806340668

`2*gcd(n, ∑[n])+1`
-/

namespace A114753.P6778225172806340668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A114753.P6778225172806340668

namespace A114753

/-- `2*gcd(n, ∑[n])+1` -/
def P6778225172806340668.Spec : Prop :=
  ∀ n, (P6778225172806340668.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P19293013132355879

`n*(n%2+1)+1`
-/

namespace A114753.P19293013132355879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 1) + 1

end

end A114753.P19293013132355879

namespace A114753

/-- `n*(n%2+1)+1` -/
def P19293013132355879.Spec : Prop :=
  ∀ n, (P19293013132355879.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P10737809114988957360

`n*(and(1, n)+1)+1`
-/

namespace A114753.P10737809114988957360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 1) + 1

end

end A114753.P10737809114988957360

namespace A114753

/-- `n*(and(1, n)+1)+1` -/
def P10737809114988957360.Spec : Prop :=
  ∀ n, (P10737809114988957360.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P3225037792647560154

`or(1, n*gcd(2, n+1))`
-/

namespace A114753.P3225037792647560154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.gcd 2 (n + 1))

end

end A114753.P3225037792647560154

namespace A114753

/-- `or(1, n*gcd(2, n+1))` -/
def P3225037792647560154.Spec : Prop :=
  ∀ n, (P3225037792647560154.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P1574421374944275365

`(n+1)^and(1, n)+n`
-/

namespace A114753.P1574421374944275365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 n + n

end

end A114753.P1574421374944275365

namespace A114753

/-- `(n+1)^and(1, n)+n` -/
def P1574421374944275365.Spec : Prop :=
  ∀ n, (P1574421374944275365.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P9677342132559917580

`C(n+1, and(1, n))+n`
-/

namespace A114753.P9677342132559917580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.land 1 n) + n

end

end A114753.P9677342132559917580

namespace A114753

/-- `C(n+1, and(1, n))+n` -/
def P9677342132559917580.Spec : Prop :=
  ∀ n, (P9677342132559917580.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P7932431050096788259

`C(n+1, or(1, n))+n`
-/

namespace A114753.P7932431050096788259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.lor 1 n) + n

end

end A114753.P7932431050096788259

namespace A114753

/-- `C(n+1, or(1, n))+n` -/
def P7932431050096788259.Spec : Prop :=
  ∀ n, (P7932431050096788259.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P16477603477529795962

`C(n, xor(1, n))+n+1`
-/

namespace A114753.P16477603477529795962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 1 n) + (n + 1)

end

end A114753.P16477603477529795962

namespace A114753

/-- `C(n, xor(1, n))+n+1` -/
def P16477603477529795962.Spec : Prop :=
  ∀ n, (P16477603477529795962.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P1162756966856214069

`1-n*or(n+1, -2)`
-/

namespace A114753.P1162756966856214069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * Int.lor (n + 1 : ℤ) (-2)

end

end A114753.P1162756966856214069

namespace A114753

/-- `1-n*or(n+1, -2)` -/
def P1162756966856214069.Spec : Prop :=
  ∀ n, P1162756966856214069.a n = A114753 (n + 1)

end A114753

/-! ## A114753.P1080880480134463955

`1-2*n/or(n, -2)`
-/

namespace A114753.P1080880480134463955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)

end

end A114753.P1080880480134463955

namespace A114753

/-- `1-2*n/or(n, -2)` -/
def P1080880480134463955.Spec : Prop :=
  ∀ n, P1080880480134463955.a n = (A114753 (n + 1) : ℚ)

end A114753

/-! ## A114753.P5675225133777205883

`or(1, n*(2*and(1, n))!)`
-/

namespace A114753.P5675225133777205883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.factorial (2 * Nat.land 1 n))

end

end A114753.P5675225133777205883

namespace A114753

/-- `or(1, n*(2*and(1, n))!)` -/
def P5675225133777205883.Spec : Prop :=
  ∀ n, (P5675225133777205883.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P5563460787328501201

`xor(1, n*(2*and(1, n))!)`
-/

namespace A114753.P5563460787328501201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * Nat.factorial (2 * Nat.land 1 n))

end

end A114753.P5563460787328501201

namespace A114753

/-- `xor(1, n*(2*and(1, n))!)` -/
def P5563460787328501201.Spec : Prop :=
  ∀ n, (P5563460787328501201.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P4610399077737693963

`gcd(n²+n, 2*n)+1`
-/

namespace A114753.P4610399077737693963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2 + n) (2 * n) + 1

end

end A114753.P4610399077737693963

namespace A114753

/-- `gcd(n²+n, 2*n)+1` -/
def P4610399077737693963.Spec : Prop :=
  ∀ n, (P4610399077737693963.a n : ℤ) = A114753 (n + 1)

end A114753

/-! ## A114753.P1314356972152581715

`and(n, -and(1, n))+n+1`
-/

namespace A114753.P1314356972152581715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Nat.land 1 n : ℤ)) + (n + 1 : ℤ)

end

end A114753.P1314356972152581715

namespace A114753

/-- `and(n, -and(1, n))+n+1` -/
def P1314356972152581715.Spec : Prop :=
  ∀ n, P1314356972152581715.a n = A114753 (n + 1)

end A114753

/-! ## A114753.P1328021072565236637

`1-n*((n-1)%2-2)`
-/

namespace A114753.P1328021072565236637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * (Int.tmod ((n : ℤ) - 1) 2 - 2)

end

end A114753.P1328021072565236637

namespace A114753

/-- `1-n*((n-1)%2-2)` -/
def P1328021072565236637.Spec : Prop :=
  ∀ n, P1328021072565236637.a n = A114753 (n + 1)

end A114753

/-! ## A114753.P6946330095186227320

`or(1, 3*n-a(n-1))` with `a(0)=1`
-/

namespace A114753.P6946330095186227320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ((3 * n : ℤ) - a (n - 1))

end

end A114753.P6946330095186227320

namespace A114753

/-- `or(1, 3*n-a(n-1))` -/
def P6946330095186227320.Spec : Prop :=
  ∀ n, P6946330095186227320.a n = A114753 (n + 1)

end A114753

/-!
# A114756: Smallest prime of the form: n successive positive integers in ascending order followed by a 7.

The programs for A114756, there is no canonical definition to state claims against.
-/

/-! ## A114756.P17355592750495492317

`p?[A234964(n+2)+8]`
-/

namespace A114756.P17355592750495492317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234964 (n + 2) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114756.P17355592750495492317

/-!
# A114761: a(n) = (floor(sqrt(2)*10^n))^2.

The programs for A114761, the canonical program `A114761.P3570042180189453089` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114761 has offset 0).

The definition of A114761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2)*10^n)²` (program `A114761.P3570042180189453089`, by `A114761.P3570042180189453089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114761.P3570042180189453089

`floor(sqrt(2)*10^n)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114761

/-- `floor(sqrt(2)*10^n)²` -/
def P3570042180189453089.Spec : Prop :=
  ∀ n, P3570042180189453089.a n = A114761 n

theorem P3570042180189453089.correct : P3570042180189453089.Spec := by
  intro n
  simp only [A114761]

end A114761

/-! ## A114761.P4942416453578432150

`A011547(n)*A011547(n)`
-/

namespace A114761.P4942416453578432150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011547 n * A011547 n

end

end A114761.P4942416453578432150

namespace A114761

/-- `A011547(n)*A011547(n)` -/
def P4942416453578432150.Spec : Prop :=
  ∀ n, P4942416453578432150.a n = A114761 n

end A114761

/-! ## A114761.P3689807564567046627

`record[A011547(A025581(n))²]`
-/

namespace A114761.P3689807564567046627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011547 (A025581 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114761.P3689807564567046627

namespace A114761

/-- `record[A011547(A025581(n))²]` -/
def P3689807564567046627.Spec : Prop :=
  ∀ n, P3689807564567046627.a n = A114761 n

end A114761

/-! ## A114761.P11748631346443284648

`record[A011547(A082375(n))²]`
-/

namespace A114761.P11748631346443284648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011547 (A082375 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114761.P11748631346443284648

namespace A114761

/-- `record[A011547(A082375(n))²]` -/
def P11748631346443284648.Spec : Prop :=
  ∀ n, P11748631346443284648.a n = A114761 n

end A114761

/-! ## A114761.P18084230723656435547

`record[A083377(A093178(n))²]`
-/

namespace A114761.P18084230723656435547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (A093178 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114761.P18084230723656435547

namespace A114761

/-- `record[A083377(A093178(n))²]` -/
def P18084230723656435547.Spec : Prop :=
  ∀ n, P18084230723656435547.a n = A114761 n

end A114761

/-! ## A114761.P2475078098775807056

`A011547(n)²/A177849(n)`
-/

namespace A114761.P2475078098775807056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011547 n ^ 2 : ℚ) / (A177849 n : ℚ)

end

end A114761.P2475078098775807056

namespace A114761

/-- `A011547(n)²/A177849(n)` -/
def P2475078098775807056.Spec : Prop :=
  ∀ n, P2475078098775807056.a n = (A114761 n : ℚ)

end A114761

/-! ## A114761.P10329227571080588171

`or(A011547(n)², A000007(n))`
-/

namespace A114761.P10329227571080588171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011547 n ^ 2) (A000007 n)

end

end A114761.P10329227571080588171

namespace A114761

/-- `or(A011547(n)², A000007(n))` -/
def P10329227571080588171.Spec : Prop :=
  ∀ n, P10329227571080588171.a n = A114761 n

end A114761

/-! ## A114761.P6303004062191224625

`record[A083377(A000265(n+1))²]`
-/

namespace A114761.P6303004062191224625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (A000265 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114761.P6303004062191224625

namespace A114761

/-- `record[A083377(A000265(n+1))²]` -/
def P6303004062191224625.Spec : Prop :=
  ∀ n, P6303004062191224625.a n = A114761 n

end A114761

/-! ## A114761.P15049716713276288516

`record[A083377(n+1)²*A033999(n)]`
-/

namespace A114761.P15049716713276288516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (n + 1) ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114761.P15049716713276288516

namespace A114761

/-- `record[A083377(n+1)²*A033999(n)]` -/
def P15049716713276288516.Spec : Prop :=
  ∀ n, P15049716713276288516.a n = A114761 n

end A114761

/-! ## A114761.P4068173600206574415

`record[(A056594(n)*A083377(n+1))²]`
-/

namespace A114761.P4068173600206574415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n * A083377 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114761.P4068173600206574415

namespace A114761

/-- `record[(A056594(n)*A083377(n+1))²]` -/
def P4068173600206574415.Spec : Prop :=
  ∀ n, P4068173600206574415.a n = A114761 n

end A114761

/-!
# A114762: a(n) = floor(3^(1/2)*10^n)^2.

The programs for A114762, the canonical program `A114762.P3742689660324386009` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114762 has offset 0).

The definition of A114762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(1/2)*10^n)²` (program `A114762.P3742689660324386009`, by `A114762.P3742689660324386009.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114762.P3742689660324386009

`floor(3^(1/2)*10^n)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114762

/-- `floor(3^(1/2)*10^n)²` -/
def P3742689660324386009.Spec : Prop :=
  ∀ n, P3742689660324386009.a n = A114762 n

theorem P3742689660324386009.correct : P3742689660324386009.Spec := by
  intro n
  simp only [A114762]

end A114762

/-! ## A114762.P344016472046966314

`floor(sqrt(A198698(2*n)))^2`
-/

namespace A114762.P344016472046966314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A198698 (2 * n)) ^ 2

end

end A114762.P344016472046966314

namespace A114762

/-- `floor(sqrt(A198698(2*n)))^2` -/
def P344016472046966314.Spec : Prop :=
  ∀ n, P344016472046966314.a n = A114762 n

end A114762

/-! ## A114762.P12549184394120131475

`floor(sqrt(3)*10^n)^A020639(2*(n+1))`
-/

namespace A114762.P12549184394120131475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.sqrt (3 : ℝ) * (10 ^ n : ℝ)⌋ : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A114762.P12549184394120131475

namespace A114762

/-- `floor(sqrt(3)*10^n)^A020639(2*(n+1))` -/
def P12549184394120131475.Spec : Prop :=
  ∀ n, P12549184394120131475.a n = (A114762 n : ℚ)

end A114762

/-! ## A114762.P1759684483856766711

`A011549(n)*A011549(n)`
-/

namespace A114762.P1759684483856766711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011549 n * A011549 n

end

end A114762.P1759684483856766711

namespace A114762

/-- `A011549(n)*A011549(n)` -/
def P1759684483856766711.Spec : Prop :=
  ∀ n, P1759684483856766711.a n = A114762 n

end A114762

/-! ## A114762.P15916653505246898231

`A000007(n+1)+floor(sqrt(A198698(2*n)))²`
-/

namespace A114762.P15916653505246898231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A198698 (2 * n)) ^ 2

end

end A114762.P15916653505246898231

namespace A114762

/-- `A000007(n+1)+floor(sqrt(A198698(2*n)))²` -/
def P15916653505246898231.Spec : Prop :=
  ∀ n, P15916653505246898231.a n = A114762 n

end A114762

/-! ## A114762.P394330489553800684

`A000035(2*n)+floor(sqrt(A198698(2*n)))²`
-/

namespace A114762.P394330489553800684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + Int.sqrt (A198698 (2 * n)) ^ 2

end

end A114762.P394330489553800684

namespace A114762

/-- `A000035(2*n)+floor(sqrt(A198698(2*n)))²` -/
def P394330489553800684.Spec : Prop :=
  ∀ n, P394330489553800684.a n = A114762 n

end A114762

/-! ## A114762.P2557100706697403749

`A008683(8*n+4)+floor(sqrt(A198698(2*n)))²`
-/

namespace A114762.P2557100706697403749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * n + 4) + Int.sqrt (A198698 (2 * n)) ^ 2

end

end A114762.P2557100706697403749

namespace A114762

/-- `A008683(8*n+4)+floor(sqrt(A198698(2*n)))²` -/
def P2557100706697403749.Spec : Prop :=
  ∀ n, P2557100706697403749.a n = A114762 n

end A114762

/-!
# A114763: a(n) = floor(sqrt(5)*10^n)^2.

The programs for A114763, the canonical program `A114763.P768753503703715144` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114763 has offset 0).

The definition of A114763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(5)*10^n)²` (program `A114763.P768753503703715144`, by `A114763.P768753503703715144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114763.P768753503703715144

`floor(sqrt(5)*10^n)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114763

/-- `floor(sqrt(5)*10^n)²` -/
def P768753503703715144.Spec : Prop :=
  ∀ n, P768753503703715144.a n = A114763 n

theorem P768753503703715144.correct : P768753503703715144.Spec := by
  intro n
  simp only [A114763]

end A114763

/-! ## A114763.P3111069154239464306

`A109999(2*n+1)^2`
-/

namespace A114763.P3111069154239464306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109999 (2 * n + 1) ^ 2

end

end A114763.P3111069154239464306

namespace A114763

/-- `A109999(2*n+1)^2` -/
def P3111069154239464306.Spec : Prop :=
  ∀ n, P3111069154239464306.a n = A114763 n

end A114763

/-! ## A114763.P16386624527999753917

`record[A109999(n+1)²*A059841(n)]`
-/

namespace A114763.P16386624527999753917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109999 (n + 1) ^ 2 * A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114763.P16386624527999753917

namespace A114763

/-- `record[A109999(n+1)²*A059841(n)]` -/
def P16386624527999753917.Spec : Prop :=
  ∀ n, P16386624527999753917.a n = A114763 n

end A114763

/-! ## A114763.P13674201061913322813

`A109999(2*n+1)²*A007318(∑[n])`
-/

namespace A114763.P13674201061913322813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109999 (2 * n + 1) ^ 2 * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114763.P13674201061913322813

namespace A114763

/-- `A109999(2*n+1)²*A007318(∑[n])` -/
def P13674201061913322813.Spec : Prop :=
  ∀ n, P13674201061913322813.a n = A114763 n

end A114763

/-! ## A114763.P4048917145119940045

`A109999(2*n+1)²*A184303(n+1)`
-/

namespace A114763.P4048917145119940045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109999 (2 * n + 1) ^ 2 * A184303 (n + 1)

end

end A114763.P4048917145119940045

namespace A114763

/-- `A109999(2*n+1)²*A184303(n+1)` -/
def P4048917145119940045.Spec : Prop :=
  ∀ n, P4048917145119940045.a n = A114763 n

end A114763

/-!
# A114764: a(n) = floor(sqrt(6)*10^n)^2.

The programs for A114764, the canonical program `A114764.P10414246506048434286` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114764 has offset 0).

The definition of A114764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(6)*10^n)²` (program `A114764.P10414246506048434286`, by `A114764.P10414246506048434286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114764.P10414246506048434286

`floor(sqrt(6)*10^n)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114764

/-- `floor(sqrt(6)*10^n)²` -/
def P10414246506048434286.Spec : Prop :=
  ∀ n, P10414246506048434286.a n = A114764 n

theorem P10414246506048434286.correct : P10414246506048434286.Spec := by
  intro n
  simp only [A114764]

end A114764

/-! ## A114764.P7864754096298834892

`floor(sqrt(6)*10^n)^A020639(2*(n+1))`
-/

namespace A114764.P7864754096298834892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.sqrt (6 : ℝ) * (10 ^ n : ℝ)⌋ : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A114764.P7864754096298834892

namespace A114764

/-- `floor(sqrt(6)*10^n)^A020639(2*(n+1))` -/
def P7864754096298834892.Spec : Prop :=
  ∀ n, P7864754096298834892.a n = (A114764 n : ℚ)

end A114764

/-! ## A114764.P16370143069027116248

`floor(sqrt(6)*10^n)^A000005(A002144(n+1))`
-/

namespace A114764.P16370143069027116248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.sqrt (6 : ℝ) * (10 ^ n : ℝ)⌋ : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A114764.P16370143069027116248

namespace A114764

/-- `floor(sqrt(6)*10^n)^A000005(A002144(n+1))` -/
def P16370143069027116248.Spec : Prop :=
  ∀ n, P16370143069027116248.a n = (A114764 n : ℚ)

end A114764

/-! ## A114764.P12506237860422248630

`floor(sqrt(6)*10^n)^A001222(A115585(n+1))`
-/

namespace A114764.P12506237860422248630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.sqrt (6 : ℝ) * (10 ^ n : ℝ)⌋ : ℚ) ^ (A001222 (A115585 (n + 1)).toNat : ℤ)

end

end A114764.P12506237860422248630

namespace A114764

/-- `floor(sqrt(6)*10^n)^A001222(A115585(n+1))` -/
def P12506237860422248630.Spec : Prop :=
  ∀ n, P12506237860422248630.a n = (A114764 n : ℚ)

end A114764

/-! ## A114764.P7110444939020329503

`floor(sqrt(6)*10^n)^A275468(A000040(n+1))`
-/

namespace A114764.P7110444939020329503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.sqrt (6 : ℝ) * (10 ^ n : ℝ)⌋ : ℚ) ^ (A275468 (A000040 (n + 1)).toNat : ℤ)

end

end A114764.P7110444939020329503

namespace A114764

/-- `floor(sqrt(6)*10^n)^A275468(A000040(n+1))` -/
def P7110444939020329503.Spec : Prop :=
  ∀ n, P7110444939020329503.a n = (A114764 n : ℚ)

end A114764

/-!
# A114765: a(n) = floor(sqrt(7) * 10^n)^2.

The programs for A114765, the canonical program `A114765.P5140901864799025845` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114765 has offset 0).

The definition of A114765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(7)*10^n)²` (program `A114765.P5140901864799025845`, by `A114765.P5140901864799025845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114765.P5140901864799025845

`floor(sqrt(7)*10^n)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114765

/-- `floor(sqrt(7)*10^n)²` -/
def P5140901864799025845.Spec : Prop :=
  ∀ n, P5140901864799025845.a n = A114765 n

theorem P5140901864799025845.correct : P5140901864799025845.Spec := by
  intro n
  simp only [A114765]

end A114765

/-! ## A114765.P8959299128088360556

`floor(sqrt(7)*10^n)^A001222(A129854(n))`
-/

namespace A114765.P8959299128088360556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.sqrt (7 : ℝ) * (10 ^ n : ℝ)⌋ : ℚ) ^ (A001222 (A129854 n).toNat : ℤ)

end

end A114765.P8959299128088360556

namespace A114765

/-- `floor(sqrt(7)*10^n)^A001222(A129854(n))` -/
def P8959299128088360556.Spec : Prop :=
  ∀ n, P8959299128088360556.a n = (A114765 n : ℚ)

end A114765

/-!
# A114766: a(n) = floor(sqrt(8)*10^n)^2.

The programs for A114766, the canonical program `A114766.P9984853842571417220` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114766 has offset 0).

The definition of A114766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(8)*10^n)²` (program `A114766.P9984853842571417220`, by `A114766.P9984853842571417220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114766.P9984853842571417220

`floor(sqrt(8)*10^n)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114766

/-- `floor(sqrt(8)*10^n)²` -/
def P9984853842571417220.Spec : Prop :=
  ∀ n, P9984853842571417220.a n = A114766 n

theorem P9984853842571417220.correct : P9984853842571417220.Spec := by
  intro n
  simp only [A114766]

end A114766

/-! ## A114766.P16932199808388050589

`floor(sqrt(A346178(2*n+1)))^2`
-/

namespace A114766.P16932199808388050589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A346178 (2 * n + 1)) ^ 2

end

end A114766.P16932199808388050589

namespace A114766

/-- `floor(sqrt(A346178(2*n+1)))^2` -/
def P16932199808388050589.Spec : Prop :=
  ∀ n, P16932199808388050589.a n = A114766 n

end A114766

/-!
# A114767: a(n) = floor(2^(1/3)*10^n)^3.

The programs for A114767, the canonical program `A114767.P11108968446594514697` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114767 has offset 0).

The definition of A114767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(1/3)*10^n)^3` (program `A114767.P11108968446594514697`, by `A114767.P11108968446594514697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114767.P11108968446594514697

`floor(2^(1/3)*10^n)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114767

/-- `floor(2^(1/3)*10^n)^3` -/
def P11108968446594514697.Spec : Prop :=
  ∀ n, P11108968446594514697.a n = A114767 n

theorem P11108968446594514697.correct : P11108968446594514697.Spec := by
  intro n
  simp only [A114767]

end A114767

/-!
# A114768: a(n) = floor(3^(1/3)*10^n)^3.

The programs for A114768, the canonical program `A114768.P13536592534847396950` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114768 has offset 0).

The definition of A114768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(1/3)*10^n)^3` (program `A114768.P13536592534847396950`, by `A114768.P13536592534847396950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114768.P13536592534847396950

`floor(3^(1/3)*10^n)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114768

/-- `floor(3^(1/3)*10^n)^3` -/
def P13536592534847396950.Spec : Prop :=
  ∀ n, P13536592534847396950.a n = A114768 n

theorem P13536592534847396950.correct : P13536592534847396950.Spec := by
  intro n
  simp only [A114768]

end A114768

/-!
# A114769: a(n) = floor(4^(1/3)*10^n)^3.

The programs for A114769, the canonical program `A114769.P10863124919660655357` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114769 has offset 0).

The definition of A114769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4^(1/3)*10^n)^3` (program `A114769.P10863124919660655357`, by `A114769.P10863124919660655357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114769.P10863124919660655357

`floor(4^(1/3)*10^n)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114769

/-- `floor(4^(1/3)*10^n)^3` -/
def P10863124919660655357.Spec : Prop :=
  ∀ n, P10863124919660655357.a n = A114769 n

theorem P10863124919660655357.correct : P10863124919660655357.Spec := by
  intro n
  simp only [A114769]

end A114769

/-!
# A114770: a(n) = floor(5^(1/3)*10^n)^3.

The programs for A114770, the canonical program `A114770.P1915323645045066203` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114770 has offset 0).

The definition of A114770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5^(1/3)*10^n)^3` (program `A114770.P1915323645045066203`, by `A114770.P1915323645045066203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114770.P1915323645045066203

`floor(5^(1/3)*10^n)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114770

/-- `floor(5^(1/3)*10^n)^3` -/
def P1915323645045066203.Spec : Prop :=
  ∀ n, P1915323645045066203.a n = A114770 n

theorem P1915323645045066203.correct : P1915323645045066203.Spec := by
  intro n
  simp only [A114770]

end A114770

/-!
# A114771: a(n) = floor(6^(1/3)*10^n)^3.

The programs for A114771, the canonical program `A114771.P12071137081015958427` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114771 has offset 0).

The definition of A114771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6^(1/3)*10^n)^3` (program `A114771.P12071137081015958427`, by `A114771.P12071137081015958427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114771.P12071137081015958427

`floor(6^(1/3)*10^n)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114771

/-- `floor(6^(1/3)*10^n)^3` -/
def P12071137081015958427.Spec : Prop :=
  ∀ n, P12071137081015958427.a n = A114771 n

theorem P12071137081015958427.correct : P12071137081015958427.Spec := by
  intro n
  simp only [A114771]

end A114771

/-!
# A114772: a(n) = floor(7^(1/3)*10^n)^3.

The programs for A114772, the canonical program `A114772.P9949846330599044944` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114772 has offset 0).

The definition of A114772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^(1/3)*10^n)^3` (program `A114772.P9949846330599044944`, by `A114772.P9949846330599044944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114772.P9949846330599044944

`floor(7^(1/3)*10^n)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114772

/-- `floor(7^(1/3)*10^n)^3` -/
def P9949846330599044944.Spec : Prop :=
  ∀ n, P9949846330599044944.a n = A114772 n

theorem P9949846330599044944.correct : P9949846330599044944.Spec := by
  intro n
  simp only [A114772]

end A114772

/-!
# A114773: a(n) = floor(9^(1/3)*10^n)^3.

The programs for A114773, the canonical program `A114773.P13594915730599152504` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114773 has offset 0).

The definition of A114773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9^(1/3)*10^n)^3` (program `A114773.P13594915730599152504`, by `A114773.P13594915730599152504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114773.P13594915730599152504

`floor(9^(1/3)*10^n)^3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114773

/-- `floor(9^(1/3)*10^n)^3` -/
def P13594915730599152504.Spec : Prop :=
  ∀ n, P13594915730599152504.a n = A114773 n

theorem P13594915730599152504.correct : P13594915730599152504.Spec := by
  intro n
  simp only [A114773]

end A114773

/-!
# A114774: 

The programs for A114774, there is no canonical definition to state claims against.
-/

/-! ## A114774.P14448701460239320013

`((n+1)*∑[10^n])^(n+1)`
-/

namespace A114774.P14448701460239320013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ (n + 1)

end

end A114774.P14448701460239320013

/-! ## A114774.P1425027613593452040

`record[(n*floor(10^n/9))^A004086(n)]`
-/

namespace A114774.P1425027613593452040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ⌊(10 ^ n : ℚ) / 9⌋ : ℚ) ^ (A004086 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114774.P1425027613593452040

/-! ## A114774.P4398587821252933655

`record[A048376(A028310(n))^n]`
-/

namespace A114774.P4398587821252933655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048376 (A028310 n).toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114774.P4398587821252933655

/-!
# A114775: Expansion of x^2*(1+x^2)*(1 - x^4 + x^7)/((1 - x^4 + x^6)*(1 - x^4 - x^6)).

The programs for A114775, the canonical program `A114775.P18039444859149001581` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114775 has offset 0).

The definition of A114775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2+x^4-x^6-x^8+x^9+x^11)/(1-2x^4+x^8-x^12))` (program `A114775.P18039444859149001581`, by `A114775.P18039444859149001581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114775.P18039444859149001581

`ogf((x^2+x^4-x^6-x^8+x^9+x^11)/(1-2x^4+x^8-x^12))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114775

/-- `ogf((x^2+x^4-x^6-x^8+x^9+x^11)/(1-2x^4+x^8-x^12))` -/
def P18039444859149001581.Spec : Prop :=
  ∀ n, P18039444859149001581.a n = A114775 n

theorem P18039444859149001581.correct : P18039444859149001581.Spec := by
  intro n
  simp only [A114775]

end A114775

/-! ## A114775.P15943096779423709636

`A000931(((n+1)%4+n+1)/2)`
-/

namespace A114775.P15943096779423709636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (SequenceMachineLib.roundAway ((((n + 1) % 4 + (n + 1) : ℕ) : ℚ) / 2)).toNat

end

end A114775.P15943096779423709636

namespace A114775

/-- `A000931(((n+1)%4+n+1)/2)` -/
def P15943096779423709636.Spec : Prop :=
  ∀ n, P15943096779423709636.a n = A114775 n

end A114775

/-! ## A114775.P15907773272694380491

`A000931(A083219(n+1))`
-/

namespace A114775.P15907773272694380491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A083219 (n + 1)).toNat

end

end A114775.P15907773272694380491

namespace A114775

/-- `A000931(A083219(n+1))` -/
def P15907773272694380491.Spec : Prop :=
  ∀ n, P15907773272694380491.a n = A114775 n

end A114775

/-! ## A114775.P5792461958302187812

`A000931(A187180(n+2))`
-/

namespace A114775.P5792461958302187812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A187180 (n + 2)).toNat

end

end A114775.P5792461958302187812

namespace A114775

/-- `A000931(A187180(n+2))` -/
def P5792461958302187812.Spec : Prop :=
  ∀ n, P5792461958302187812.a n = A114775 n

end A114775

/-! ## A114775.P14877523811446594901

`A000931(n+1-and(-2, A004526(n+1)))`
-/

namespace A114775.P14877523811446594901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 ((n + 1 : ℤ) - Int.land (-2) (A004526 (n + 1))).toNat

end

end A114775.P14877523811446594901

namespace A114775

/-- `A000931(n+1-and(-2, A004526(n+1)))` -/
def P14877523811446594901.Spec : Prop :=
  ∀ n, P14877523811446594901.a n = A114775 n

end A114775

/-! ## A114775.P17874282205417490043

`A000931(n+1-(A002265(n+1)+A002265(n+1)))`
-/

namespace A114775.P17874282205417490043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 ((n + 1 : ℤ) - (A002265 (n + 1) + A002265 (n + 1))).toNat

end

end A114775.P17874282205417490043

namespace A114775

/-- `A000931(n+1-(A002265(n+1)+A002265(n+1)))` -/
def P17874282205417490043.Spec : Prop :=
  ∀ n, P17874282205417490043.a n = A114775 n

end A114775

/-!
# A114778: Cumulative product of triple factorial A007661.

The programs for A114778, there is no canonical definition to state claims against.
-/

/-! ## A114778.P9219494584783288744

`n!*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A114778.P9219494584783288744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Nat.factorial n * a (n - 3)

end

end A114778.P9219494584783288744

/-! ## A114778.P3746973451001261618

`∏[n*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A114778.P3746973451001261618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  n * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114778.P3746973451001261618

/-! ## A114778.P7465632047562627462

`∏[A007661(n)]`
-/

namespace A114778.P7465632047562627462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114778.P7465632047562627462

/-! ## A114778.P4428943374109733357

`a(n-3)*A000142(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A114778.P4428943374109733357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) * A000142 n

end

end A114778.P4428943374109733357

/-!
# A114779: Cumulative product of quadruple factorial A007662.

The programs for A114779, there is no canonical definition to state claims against.
-/

/-! ## A114779.P4177381205299662263

`n!*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A114779.P4177381205299662263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  Nat.factorial n * a (n - 4)

end

end A114779.P4177381205299662263

/-! ## A114779.P11466438702898990219

`∏[n*a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A114779.P11466438702898990219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  n * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114779.P11466438702898990219

/-! ## A114779.P10730109202640670763

`∏[∏[n/a(n-1)]/a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A114779.P10730109202640670763
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114779.P10730109202640670763

/-! ## A114779.P14222092658294527292

`∏[A007662(n)]`
-/

namespace A114779.P14222092658294527292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114779.P14222092658294527292

/-! ## A114779.P1242439502485212339

`A349424(A038718(n+1))`
-/

namespace A114779.P1242439502485212339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349424 (A038718 (n + 1)).toNat

end

end A114779.P1242439502485212339

/-!
# A114780: Least multiple of 2n-1 ending in prime(n), 0 if no such number exists.

The programs for A114780, there is no canonical definition to state claims against.
-/

/-! ## A114780.P3476196700254960429

`Δ[n²]*A114781(n+1)`
-/

namespace A114780.P3476196700254960429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A114781 (n + 1)

end

end A114780.P3476196700254960429

/-! ## A114780.P11800073417091572068

`A114781(n+1)*A283002(n+1)`
-/

namespace A114780.P11800073417091572068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114781 (n + 1) * A283002 (n + 1)

end

end A114780.P11800073417091572068

/-!
# A114781: a(n) = A114780(n)/(2n-1).

The programs for A114781, there is no canonical definition to state claims against.
-/

/-! ## A114781.P7319323879573848710

`A114780(n+1)/(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114781.P7319323879573848710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114780 (n + 1) : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A114781.P7319323879573848710

/-! ## A114781.P9538835543423662801

`floor(A114780(n+1)/A005408(n))`
-/

namespace A114781.P9538835543423662801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114780 (n + 1) : ℚ) / (A005408 n : ℚ)⌋

end

end A114781.P9538835543423662801

/-! ## A114781.P8072529160231906150

`ceil(A114780(n+1)/A223134(n))`
-/

namespace A114781.P8072529160231906150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114780 (n + 1) : ℚ) / (A223134 n : ℚ)⌉

end

end A114781.P8072529160231906150

/-! ## A114781.P6587815231473983097

`floor(A114780(n+1)/A283002(n+1))`
-/

namespace A114781.P6587815231473983097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114780 (n + 1) : ℚ) / (A283002 (n + 1) : ℚ)⌋

end

end A114781.P6587815231473983097

/-!
# A114782: Smallest prime of the form 10^k + prime(n), k >= d, the number of digits in prime(n). 0 if no such primes exist. a(n) = 0 if prime(n) + 1 == 0 (mod 3).

The programs for A114782, there is no canonical definition to state claims against.
-/

/-! ## A114782.P2443546928174600197

`A088621(floor((n/2)²+n)+2)`
-/

namespace A114782.P2443546928174600197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088621 (⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋ + 2).toNat

end

end A114782.P2443546928174600197

/-! ## A114782.P13858521081707763569

`n%2*A178405(A049575(n+1))`
-/

namespace A114782.P13858521081707763569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A178405 (A049575 (n + 1)).toNat

end

end A114782.P13858521081707763569

/-!
# A114783: 

The programs for A114783, there is no canonical definition to state claims against.
-/

/-! ## A114783.P3056821591711505891

`A200065(A000040(n+1))`
-/

namespace A114783.P3056821591711505891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200065 (A000040 (n + 1)).toNat

end

end A114783.P3056821591711505891

/-! ## A114783.P8067219103070931611

`A200065(record[A006530(n+2)])`
-/

namespace A114783.P8067219103070931611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200065 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114783.P8067219103070931611

/-! ## A114783.P2218690453790395675

`A200065(record[A014963(n+2)])`
-/

namespace A114783.P2218690453790395675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200065 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114783.P2218690453790395675

/-! ## A114783.P8828702827494407491

`A200065(record[A020639(n+2)])`
-/

namespace A114783.P8828702827494407491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200065 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114783.P8828702827494407491

/-! ## A114783.P9585796667816984201

`A200065(p?[A348253(n+1)])`
-/

namespace A114783.P9585796667816984201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200065 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114783.P9585796667816984201

/-!
# A114784: Smallest prime of the form: all twos followed by prime(n). a(n) > prime(n). 0 if no such prime exists.

The programs for A114784, there is no canonical definition to state claims against.
-/

/-! ## A114784.P2121107329029447905

`A138306(A305491(2*(n+2))+A185643(n+2))`
-/

namespace A114784.P2121107329029447905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138306 (A305491 (2 * (n + 2)) + A185643 (n + 2)).toNat

end

end A114784.P2121107329029447905

/-!
# A114785: Smallest prime of the form: all threes followed by prime(n). a(n) >prime(n). 0 if no such prime exists.

The programs for A114785, there is no canonical definition to state claims against.
-/

/-! ## A114785.P1944805556489420510

`A051903(A059167(n))*A327918(n+1)`
-/

namespace A114785.P1944805556489420510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A059167 n).toNat * A327918 (n + 1)

end

end A114785.P1944805556489420510

/-! ## A114785.P17378073378749497484

`A130543(A006455(n))*A327918(n+1)`
-/

namespace A114785.P17378073378749497484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 (A006455 n).toNat * A327918 (n + 1)

end

end A114785.P17378073378749497484

/-! ## A114785.P10044390160050760468

`A057078(A232699(n))*A327918(n+1)`
-/

namespace A114785.P10044390160050760468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A232699 n).toNat * A327918 (n + 1)

end

end A114785.P10044390160050760468

/-!
# A114789: a(1) = 1, a(2) = 3 and thereafter a(n) is the smallest number congruent to 1 mod a(n-1) and having the prime signature of n.

The programs for A114789, there is no canonical definition to state claims against.
-/

/-! ## A114789.P14858257524911662565

`A087311(n+1)-and(1, A000010(3^n))`
-/

namespace A114789.P14858257524911662565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087311 (n + 1) - Int.land 1 (A000010 (3 ^ n))

end

end A114789.P14858257524911662565

/-! ## A114789.P2347392141347349370

`A087311(n+1)-A008683(A265955(n))`
-/

namespace A114789.P2347392141347349370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087311 (n + 1) - A008683 (A265955 n).toNat

end

end A114789.P2347392141347349370

/-! ## A114789.P15986262281361163569

`A087311(n+1)+A014195(A032120(n))`
-/

namespace A114789.P15986262281361163569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087311 (n + 1) + A014195 (A032120 n).toNat

end

end A114789.P15986262281361163569

/-! ## A114789.P18102780580146928889

`A087311(n+1)/A014963(A139115(n+1))`
-/

namespace A114789.P18102780580146928889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087311 (n + 1) : ℚ) / (A014963 (A139115 (n + 1)).toNat : ℚ)

end

end A114789.P18102780580146928889

/-! ## A114789.P13083026857430446119

`A087311(n+1)+A008683(2*A265955(n))`
-/

namespace A114789.P13083026857430446119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087311 (n + 1) + A008683 (2 * A265955 n).toNat

end

end A114789.P13083026857430446119

/-!
# A114790: Cumulative product of quintuple factorial A085157.

The programs for A114790, there is no canonical definition to state claims against.
-/

/-! ## A114790.P13050575416177669220

`∏[A085157(n)]`
-/

namespace A114790.P13050575416177669220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114790.P13050575416177669220

/-! ## A114790.P10927942782907238845

`a(A023443(n))*A085157(n)` with `a(0)=1`
-/

namespace A114790.P10927942782907238845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat * A085157 n

end

end A114790.P10927942782907238845

/-! ## A114790.P6952180776957312907

`∏[A129116(A167499(n)+A008486(n))]`
-/

namespace A114790.P6952180776957312907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A167499 n + A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114790.P6952180776957312907

/-! ## A114790.P16483217777113055238

`∏[A129116(A167614(n+1)+A004277(n))]`
-/

namespace A114790.P16483217777113055238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A167614 (n + 1) + A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114790.P16483217777113055238

/-! ## A114790.P2254486522016682813

`A321898(A114421(n))`
-/

namespace A114790.P2254486522016682813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (A114421 n).toNat

end

end A114790.P2254486522016682813

/-!
# A114791: Array T where T(n,m), n >= 1, 1 <= m <= n, is the number of n-almost primes less than or equal to 2^m. Array read by columns upwards beginning at n = m.

The programs for A114791, there is no canonical definition to state claims against.
-/

/-! ## A114791.P12053497546288696531

`A126279(∑[char[∑[n]]]²-n)`
-/

namespace A114791.P12053497546288696531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A114791.P12053497546288696531

/-! ## A114791.P14003645226766602369

`A092479((n²+1+n)%(comp[C(n, 2)]+1)+n+1)`
-/

namespace A114791.P14003645226766602369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092479 ((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + (n + 1))

end

end A114791.P14003645226766602369

/-! ## A114791.P11040608422551136428

`A092479(A099375(n)+1+n)`
-/

namespace A114791.P11040608422551136428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092479 (A099375 n + 1 + (n : ℤ)).toNat

end

end A114791.P11040608422551136428

/-! ## A114791.P11622062518305198398

`and(log2(1/2), A126279(A038722(n+1)))`
-/

namespace A114791.P11622062518305198398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A126279 (A038722 (n + 1)).toNat)

end

end A114791.P11622062518305198398

/-! ## A114791.P15312333163335294100

`A092479(A014132((n²+n)%comp[∑[n]]+1))`
-/

namespace A114791.P15312333163335294100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092479 (A014132 ((n ^ 2 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A114791.P15312333163335294100

/-! ## A114791.P3758069715765738361

`gcd(A000038(n), A126279(A038722(n+1)))`
-/

namespace A114791.P3758069715765738361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A126279 (A038722 (n + 1)).toNat)

end

end A114791.P3758069715765738361

/-! ## A114791.P4028643063898515824

`lcm(A020985(n), A126279(A038722(n+1)))`
-/

namespace A114791.P4028643063898515824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A126279 (A038722 (n + 1)).toNat)

end

end A114791.P4028643063898515824

/-! ## A114791.P10389128341747571980

`or(A000007(n), A126279(A038722(n+1)))`
-/

namespace A114791.P10389128341747571980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A126279 (A038722 (n + 1)).toNat)

end

end A114791.P10389128341747571980

/-! ## A114791.P10494493590399705969

`char[A006068(n)]*A126279(A038722(n+1))`
-/

namespace A114791.P10494493590399705969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A126279 (A038722 (n + 1)).toNat

end

end A114791.P10494493590399705969

/-! ## A114791.P2635220296006455789

`A126279(A038722(n+1))+char[A054467(n+1)]`
-/

namespace A114791.P2635220296006455789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054467 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114791.P2635220296006455789

/-!
# A114792: a(n) = ((p(n+1)-p(n+2))/2)-th integer among those positive integers not occurring earlier in the sequence, where p(n) is the n-th prime.

The programs for A114792, there is no canonical definition to state claims against.
-/

/-! ## A114792.P8194776335442620540

`A113324(n+1)-A052412(A326849(n))`
-/

namespace A114792.P8194776335442620540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (n + 1) - A052412 (A326849 n).toNat

end

end A114792.P8194776335442620540

/-! ## A114792.P9738997016231910778

`A072062(n+2)-1-A052412(A326849(n))`
-/

namespace A114792.P9738997016231910778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072062 (n + 2) - 1 - A052412 (A326849 n).toNat

end

end A114792.P9738997016231910778

/-! ## A114792.P5670112369690386790

`xor(1, A064786(n+2)-1)-A052412(A326849(n))`
-/

namespace A114792.P5670112369690386790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A064786 (n + 2) - 1) - A052412 (A326849 n).toNat

end

end A114792.P5670112369690386790

/-! ## A114792.P567556205261238587

`A113325(A113321(n+1))-A052412(A326849(n))`
-/

namespace A114792.P567556205261238587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113325 (A113321 (n + 1)).toNat - A052412 (A326849 n).toNat

end

end A114792.P567556205261238587

/-! ## A114792.P15035680390855060403

`A023443(A072062(n+2))-A052412(A326849(n))`
-/

namespace A114792.P15035680390855060403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072062 (n + 2)).toNat - A052412 (A326849 n).toNat

end

end A114792.P15035680390855060403

/-!
# A114793: a(1) = a(2) = 1; for n>2, a(n) = a(n-2)^3 + a(n-1)^2.

The programs for A114793, the canonical program `A114793.P4676262750512381752` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114793 has offset 1).

The definition of A114793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)^3+a(n-1)²` (program `A114793.P4676262750512381752`, by `A114793.P4676262750512381752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114793.P4676262750512381752

`a(n-2)^3+a(n-1)²` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114793

/-- `a(n-2)^3+a(n-1)²` -/
def P4676262750512381752.Spec : Prop :=
  ∀ n, (P4676262750512381752.a n : ℤ) = A114793 (n + 1)

theorem P4676262750512381752.correct : P4676262750512381752.Spec := by
  intro n
  simp only [A114793, Nat.add_sub_cancel]

end A114793

/-! ## A114793.P4124080450587699060

`a(n-1)^2+a(n-2)^3` with `a(0)=1, a(1)=1`
-/

namespace A114793.P4124080450587699060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 + a (n - 2) ^ 3

end

end A114793.P4124080450587699060

namespace A114793

/-- `a(n-1)^2+a(n-2)^3` -/
def P4124080450587699060.Spec : Prop :=
  ∀ n, (P4124080450587699060.a n : ℤ) = A114793 (n + 1)

end A114793

/-! ## A114793.P12663610345335107509

`a(n-1)²+a(n-2)²*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A114793.P12663610345335107509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 + a (n - 2) ^ 2 * a (n - 2)

end

end A114793.P12663610345335107509

namespace A114793

/-- `a(n-1)²+a(n-2)²*a(n-2)` -/
def P12663610345335107509.Spec : Prop :=
  ∀ n, (P12663610345335107509.a n : ℤ) = A114793 (n + 1)

end A114793

/-! ## A114793.P13292328028734327073

`a(n-1)*a(n-1)+a(n-2)*a(n-2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A114793.P13292328028734327073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * a (n - 1) + a (n - 2) * a (n - 2) * a (n - 2)

end

end A114793.P13292328028734327073

namespace A114793

/-- `a(n-1)*a(n-1)+a(n-2)*a(n-2)*a(n-2)` -/
def P13292328028734327073.Spec : Prop :=
  ∀ n, (P13292328028734327073.a n : ℤ) = A114793 (n + 1)

end A114793

/-!
# A114795: {concatenation n, n-1, n-2, ...3,2,1} mod n.

The programs for A114795, there is no canonical definition to state claims against.
-/

/-! ## A114795.P7805200099236104971

`(A052246(n)/10)%(n+1)`
-/

namespace A114795.P7805200099236104971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A052246 n : ℚ) / 10)) (n + 1 : ℤ)

end

end A114795.P7805200099236104971

/-! ## A114795.P11431919988828746866

`A000422(A028310(n))%(n+1)`
-/

namespace A114795.P11431919988828746866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (A028310 n).toNat) (n + 1 : ℤ)

end

end A114795.P11431919988828746866

/-! ## A114795.P16326424097496584867

`A000422(n+1)%(n+1)`
-/

namespace A114795.P16326424097496584867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1)) (n + 1 : ℤ)

end

end A114795.P16326424097496584867

/-! ## A114795.P837765841466336841

`A083453(n+1)%(n+1)`
-/

namespace A114795.P837765841466336841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083453 (n + 1)) (n + 1 : ℤ)

end

end A114795.P837765841466336841

/-! ## A114795.P9278032546064279140

`(A019566(n+1)+∑[A078998(n+1)])%(n+1)`
-/

namespace A114795.P9278032546064279140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019566 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A114795.P9278032546064279140

/-! ## A114795.P13971599305109448642

`(A252043(lt[(1-log(n+1))^n, n])+A019566(n+1))%(n+1)`
-/

namespace A114795.P13971599305109448642
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.log (n + 1 : ℝ)) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252043 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n) + A019566 (n + 1)) (n + 1 : ℤ)

end

end A114795.P13971599305109448642

/-!
# A114796: Cumulative product of sextuple factorial A085158.

The programs for A114796, there is no canonical definition to state claims against.
-/

/-! ## A114796.P14331333064544283711

`∏[A085158(n)]`
-/

namespace A114796.P14331333064544283711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114796.P14331333064544283711

/-! ## A114796.P16583591821256157278

`a(A023443(n))*A085158(n)` with `a(0)=1`
-/

namespace A114796.P16583591821256157278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat * A085158 n

end

end A114796.P16583591821256157278

/-! ## A114796.P11935215309402467602

`a(n-1)*A085158(A137735(n²))` with `a(0)=1`
-/

namespace A114796.P11935215309402467602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A085158 (A137735 (n ^ 2)).toNat

end

end A114796.P11935215309402467602

/-! ## A114796.P18271482722884727522

`a(n-1)*A129116(A052905(n+2))` with `a(0)=1`
-/

namespace A114796.P18271482722884727522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A129116 (A052905 (n + 2)).toNat

end

end A114796.P18271482722884727522

/-! ## A114796.P2120323828973924471

`n*(n-6)!!!!!!*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=24, a(5)=120`
-/

namespace A114796.P2120323828973924471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 6, 24, 120] fun n a =>
  n * Nat.factorial (Nat.factorial (Nat.factorial (Nat.factorial (Nat.factorial (Nat.factorial ((n : ℤ) - 6).toNat))))) * a (n - 1)

end

end A114796.P2120323828973924471

/-!
# A114797: a(n) = n multiplied by the least nontrivial nondivisor of n.

The programs for A114797, there is no canonical definition to state claims against.
-/

/-! ## A114797.P8566972117416406931

`(n+3)*A007978(n+3)`
-/

namespace A114797.P8566972117416406931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007978 (n + 3)

end

end A114797.P8566972117416406931

/-! ## A114797.P588555825169038608

`(n+3)*A199968(n+3)`
-/

namespace A114797.P588555825169038608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A199968 (n + 3)

end

end A114797.P588555825169038608

/-! ## A114797.P3487085549761717613

`(n+3)*Δ[A346155(n+2)]`
-/

namespace A114797.P3487085549761717613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346155 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (f1 (n + 1) - f1 n)

end

end A114797.P3487085549761717613

/-! ## A114797.P3074637764895044488

`(n+3)*(A055874(n+3)+1)`
-/

namespace A114797.P3074637764895044488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A055874 (n + 3) + 1)

end

end A114797.P3074637764895044488

/-! ## A114797.P333543598877058153

`(n+3)*(A346563(n+3)-(n+3))`
-/

namespace A114797.P333543598877058153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A346563 (n + 3) - (n + 3 : ℤ))

end

end A114797.P333543598877058153

/-! ## A114797.P12372840344747339228

`lcm(n+3, A073758((n+3)²))`
-/

namespace A114797.P12372840344747339228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (A073758 ((n + 3) ^ 2))

end

end A114797.P12372840344747339228

/-! ## A114797.P13809323098143694784

`(n+3)*A331886(A195605(n+2))`
-/

namespace A114797.P13809323098143694784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A331886 (A195605 (n + 2)).toNat

end

end A114797.P13809323098143694784

/-! ## A114797.P7416322000533672631

`(n+3)*A331886(A184636(n+3))`
-/

namespace A114797.P7416322000533672631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A331886 (A184636 (n + 3)).toNat

end

end A114797.P7416322000533672631

/-!
# A114798: Cubic polynomial coefficients such that an elliptical term is zero.

The programs for A114798, the canonical program `A114798.P18438753826540073323` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114798 has offset 0).

The definition of A114798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114798.P18438753826540073323

`(A124625(n)+2)*A008619(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114798

/-- `(A124625(n)+2)*A008619(n)²` -/
def P18438753826540073323.Spec : Prop :=
  ∀ n, P18438753826540073323.a n = A114798 n

theorem P18438753826540073323.correct : P18438753826540073323.Spec := by
  intro n
  simp only [A114798]

end A114798

/-! ## A114798.P1215164549775737204

`A008619(n)²*A321220(A124625(n))`
-/

namespace A114798.P1215164549775737204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 * A321220 (A124625 n).toNat

end

end A114798.P1215164549775737204

namespace A114798

/-- `A008619(n)²*A321220(A124625(n))` -/
def P1215164549775737204.Spec : Prop :=
  ∀ n, P1215164549775737204.a n = A114798 n

end A114798

/-! ## A114798.P2238288915022471296

`A008619(n)²*A052938(A266303(n))`
-/

namespace A114798.P2238288915022471296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 * A052938 (A266303 n).toNat

end

end A114798.P2238288915022471296

namespace A114798

/-- `A008619(n)²*A052938(A266303(n))` -/
def P2238288915022471296.Spec : Prop :=
  ∀ n, P2238288915022471296.a n = A114798 n

end A114798

/-! ## A114798.P4432837086679787901

`A000463(n+1)*A064455(A321220(n))`
-/

namespace A114798.P4432837086679787901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) * A064455 (A321220 n).toNat

end

end A114798.P4432837086679787901

namespace A114798

/-- `A000463(n+1)*A064455(A321220(n))` -/
def P4432837086679787901.Spec : Prop :=
  ∀ n, P4432837086679787901.a n = A114798 n

end A114798

/-! ## A114798.P2436547045313770501

`A110622(2*n+1)*A176059(n)`
-/

namespace A114798.P2436547045313770501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (2 * n + 1) * A176059 n

end

end A114798.P2436547045313770501

namespace A114798

/-- `A110622(2*n+1)*A176059(n)` -/
def P2436547045313770501.Spec : Prop :=
  ∀ n, P2436547045313770501.a n = A114798 n

end A114798

/-! ## A114798.P14352712732412850959

`(3-A000035(n))*A110005(2*(n+1))`
-/

namespace A114798.P14352712732412850959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000035 n) * A110005 (2 * (n + 1))

end

end A114798.P14352712732412850959

namespace A114798

/-- `(3-A000035(n))*A110005(2*(n+1))` -/
def P14352712732412850959.Spec : Prop :=
  ∀ n, P14352712732412850959.a n = A114798 n

end A114798

/-! ## A114798.P2141621811244251810

`(A000035(n+1)+2)*A110005(2*(n+1))`
-/

namespace A114798.P2141621811244251810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) + 2) * A110005 (2 * (n + 1))

end

end A114798.P2141621811244251810

namespace A114798

/-- `(A000035(n+1)+2)*A110005(2*(n+1))` -/
def P2141621811244251810.Spec : Prop :=
  ∀ n, P2141621811244251810.a n = A114798 n

end A114798

/-! ## A114798.P10193117813541395829

`A008619(n)²*A092543(A167614(n+1))`
-/

namespace A114798.P10193117813541395829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 * A092543 (A167614 (n + 1)).toNat

end

end A114798.P10193117813541395829

namespace A114798

/-- `A008619(n)²*A092543(A167614(n+1))` -/
def P10193117813541395829.Spec : Prop :=
  ∀ n, P10193117813541395829.a n = A114798 n

end A114798

/-!
# A114799: Septuple factorial, 7-factorial, n!7, n!!!!!!!, a(n) = n*a(n-7) if n > 1, else 1.

The programs for A114799, the canonical program `A114799.P14842841805826461912` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114799 has offset 0).

The definition of A114799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-7)` (program `A114799.P14842841805826461912`, by `A114799.P14842841805826461912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114799.P14842841805826461912

`n*a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114799

/-- `n*a(n-7)` -/
def P14842841805826461912.Spec : Prop :=
  ∀ n, (P14842841805826461912.a n : ℤ) = A114799 n

theorem P14842841805826461912.correct : P14842841805826461912.Spec := by
  intro n
  simp only [A114799]

end A114799

/-! ## A114799.P16799411845989028474

`A129116(A052905(n+3)-A057427(n))`
-/

namespace A114799.P16799411845989028474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A052905 (n + 3) - A057427 n).toNat

end

end A114799.P16799411845989028474

namespace A114799

/-- `A129116(A052905(n+3)-A057427(n))` -/
def P16799411845989028474.Spec : Prop :=
  ∀ n, P16799411845989028474.a n = A114799 n

end A114799

/-! ## A114799.P8707993792658325490

`A051903(A007283(n))*A175772(n)`
-/

namespace A114799.P8707993792658325490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007283 n).toNat * A175772 n

end

end A114799.P8707993792658325490

namespace A114799

/-- `A051903(A007283(n))*A175772(n)` -/
def P8707993792658325490.Spec : Prop :=
  ∀ n, P8707993792658325490.a n = A114799 n

end A114799

/-! ## A114799.P13896700574007052882

`A051903(A007283(n))*A274841(n)`
-/

namespace A114799.P13896700574007052882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007283 n).toNat * A274841 n

end

end A114799.P13896700574007052882

namespace A114799

/-- `A051903(A007283(n))*A274841(n)` -/
def P13896700574007052882.Spec : Prop :=
  ∀ n, P13896700574007052882.a n = A114799 n

end A114799

/-! ## A114799.P8941836644229243843

`A175772(n)*A337195(A003945(n))`
-/

namespace A114799.P8941836644229243843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175772 n * A337195 (A003945 n).toNat

end

end A114799.P8941836644229243843

namespace A114799

/-- `A175772(n)*A337195(A003945(n))` -/
def P8941836644229243843.Spec : Prop :=
  ∀ n, P8941836644229243843.a n = A114799 n

end A114799

