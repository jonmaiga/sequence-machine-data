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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A127501: Triangle read by rows :T(n,k)=Sum_{j, j>=0}A089942(n,j)*binomial(j,k).

The programs for A127501, there is no canonical definition to state claims against.
-/

/-! ## A127501.P7931527054799232716

`A039599(n)+A181667(A181659(n+1))%A181654(n)`
-/

namespace A127501.P7931527054799232716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n + Int.tmod (A181667 (A181659 (n + 1)).toNat) (A181654 n)

end

end A127501.P7931527054799232716

/-! ## A127501.P4041083747118422203

`A039599(n)+A181694(A181654(n))%A181639(n+1)`
-/

namespace A127501.P4041083747118422203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n + Int.tmod (A181694 (A181654 n).toNat) (A181639 (n + 1))

end

end A127501.P4041083747118422203

/-!
# A127502: Number of n X n positive definite matrices with 1's on the main diagonal and -1's and 0's elsewhere.

The programs for A127502, there is no canonical definition to state claims against.
-/

/-! ## A127502.P268635291947358202

`A172475(A008545(n))+1`
-/

namespace A127502.P268635291947358202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A008545 n).toNat + 1

end

end A127502.P268635291947358202

/-!
# A127503: Number of n X n matrices A with 1's on the main diagonal and -1's and 0's elsewhere such that A + A' has only 0's and -1's off the main diagonal and is positive semi-definite.

The programs for A127503, there is no canonical definition to state claims against.
-/

/-! ## A127503.P17255587080167737221

`A032033(n)+A004524(A214223(n+1))`
-/

namespace A127503.P17255587080167737221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032033 n + A004524 (A214223 (n + 1)).toNat

end

end A127503.P17255587080167737221

/-!
# A127504: Triangle T(n,k) = phi(n) if k|n, =0 otherwise.

The programs for A127504, the canonical program `A127504.P10253220181753577764` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127504 has offset 1).

The definition of A127504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127504.P10253220181753577764

`A000010(row(n)+1)*A051731(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127504

/-- `A000010(row(n)+1)*A051731(C(row(n)+1, 2)+col(n)+1)` -/
def P10253220181753577764.Spec : Prop :=
  ∀ n, P10253220181753577764.a n = A127504 (n + 1)

theorem P10253220181753577764.correct : P10253220181753577764.Spec := by
  intro n
  simp only [A127504, Nat.add_sub_cancel]

end A127504

/-! ## A127504.P11541494672643269183

`∑{d}[A127446(n+1), A007431(#)]`
-/

namespace A127504.P11541494672643269183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A127504.P11541494672643269183

namespace A127504

/-- `∑{d}[A127446(n+1), A007431(#)]` -/
def P11541494672643269183.Spec : Prop :=
  ∀ n, P11541494672643269183.a n = A127504 (n + 1)

end A127504

/-! ## A127504.P3818476999863167932

`A000010(∑[char[∑[n]]])*A051731(n+1)`
-/

namespace A127504.P3818476999863167932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j) * A051731 (n + 1)

end

end A127504.P3818476999863167932

namespace A127504

/-- `A000010(∑[char[∑[n]]])*A051731(n+1)` -/
def P3818476999863167932.Spec : Prop :=
  ∀ n, P3818476999863167932.a n = A127504 (n + 1)

end A127504

/-! ## A127504.P11772122975638607894

`lcm(A000010(∑[char[∑[n]]]), A054522(n+1))`
-/

namespace A127504.P11772122975638607894
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (∑ j ∈ Finset.range (n + 1), f1 j)) (A054522 (n + 1))

end

end A127504.P11772122975638607894

namespace A127504

/-- `lcm(A000010(∑[char[∑[n]]]), A054522(n+1))` -/
def P11772122975638607894.Spec : Prop :=
  ∀ n, (P11772122975638607894.a n : ℤ) = A127504 (n + 1)

end A127504

/-! ## A127504.P10541159674781787711

`A000010(A002024(n+1))%(A127446(n+1)+1)`
-/

namespace A127504.P10541159674781787711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A002024 (n + 1)).toNat) (A127446 (n + 1) + 1)

end

end A127504.P10541159674781787711

namespace A127504

/-- `A000010(A002024(n+1))%(A127446(n+1)+1)` -/
def P10541159674781787711.Spec : Prop :=
  ∀ n, P10541159674781787711.a n = A127504 (n + 1)

end A127504

/-! ## A127504.P15341346688871200654

`A054523(2-A307662(n+1)+n)`
-/

namespace A127504.P15341346688871200654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (2 - A307662 (n + 1) + (n : ℤ)).toNat

end

end A127504.P15341346688871200654

namespace A127504

/-- `A054523(2-A307662(n+1)+n)` -/
def P15341346688871200654.Spec : Prop :=
  ∀ n, P15341346688871200654.a n = A127504 (n + 1)

end A127504

/-! ## A127504.P5244237915854791904

`A127467(2-A307662(n+1)+n)`
-/

namespace A127504.P5244237915854791904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127467 (2 - A307662 (n + 1) + (n : ℤ)).toNat

end

end A127504.P5244237915854791904

namespace A127504

/-- `A127467(2-A307662(n+1)+n)` -/
def P5244237915854791904.Spec : Prop :=
  ∀ n, P5244237915854791904.a n = A127504 (n + 1)

end A127504

/-! ## A127504.P11751856118193138523

`A159937(2-A307662(n+1)+n)`
-/

namespace A127504.P11751856118193138523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159937 (2 - A307662 (n + 1) + (n : ℤ)).toNat

end

end A127504.P11751856118193138523

namespace A127504

/-- `A159937(2-A307662(n+1)+n)` -/
def P11751856118193138523.Spec : Prop :=
  ∀ n, P11751856118193138523.a n = A127504 (n + 1)

end A127504

/-! ## A127504.P7166552634552834555

`∑{e}[A000079(A127446(n+1)), A000010(#)]`
-/

namespace A127504.P7166552634552834555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A127446 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A127504.P7166552634552834555

namespace A127504

/-- `∑{e}[A000079(A127446(n+1)), A000010(#)]` -/
def P7166552634552834555.Spec : Prop :=
  ∀ n, P7166552634552834555.a n = A127504 (n + 1)

end A127504

/-!
# A127505: Triangle T(n,k) = mobius(n/k)*phi(k) if k|n, otherwise T(n,k)=0; 1<=k<=n.

The programs for A127505, the canonical program `A127505.P16814428001717394106` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127505 has offset 1).

The definition of A127505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127505.P16814428001717394106

`A054522(n+1)*A054525(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127505

/-- `A054522(n+1)*A054525(n+1)` -/
def P16814428001717394106.Spec : Prop :=
  ∀ n, P16814428001717394106.a n = A127505 (n + 1)

theorem P16814428001717394106.correct : P16814428001717394106.Spec := by
  intro n
  simp only [A127505, Nat.add_sub_cancel]

end A127505

/-! ## A127505.P1329232031043497641

`A054525(n+1)*A054526(n+1)`
-/

namespace A127505.P1329232031043497641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A054526 (n + 1)

end

end A127505.P1329232031043497641

namespace A127505

/-- `A054525(n+1)*A054526(n+1)` -/
def P1329232031043497641.Spec : Prop :=
  ∀ n, P1329232031043497641.a n = A127505 (n + 1)

end A127505

/-! ## A127505.P3638157740974240215

`A054525(n+1)*A054532(n+1)`
-/

namespace A127505.P3638157740974240215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A054532 (n + 1)

end

end A127505.P3638157740974240215

namespace A127505

/-- `A054525(n+1)*A054532(n+1)` -/
def P3638157740974240215.Spec : Prop :=
  ∀ n, P3638157740974240215.a n = A127505 (n + 1)

end A127505

/-! ## A127505.P957489115700299662

`A054525(n+1)*A372673(n+1)`
-/

namespace A127505.P957489115700299662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A372673 (n + 1)

end

end A127505.P957489115700299662

namespace A127505

/-- `A054525(n+1)*A372673(n+1)` -/
def P957489115700299662.Spec : Prop :=
  ∀ n, P957489115700299662.a n = A127505 (n + 1)

end A127505

/-! ## A127505.P9247477926149905947

`A143468(n+1)%2*A054522(n+1)`
-/

namespace A127505.P9247477926149905947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143468 (n + 1)) 2 * A054522 (n + 1)

end

end A127505.P9247477926149905947

namespace A127505

/-- `A143468(n+1)%2*A054522(n+1)` -/
def P9247477926149905947.Spec : Prop :=
  ∀ n, P9247477926149905947.a n = A127505 (n + 1)

end A127505

/-! ## A127505.P1346625405183737950

`A000010(A002260(n+1))*A054525(n+1)`
-/

namespace A127505.P1346625405183737950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A054525 (n + 1)

end

end A127505.P1346625405183737950

namespace A127505

/-- `A000010(A002260(n+1))*A054525(n+1)` -/
def P1346625405183737950.Spec : Prop :=
  ∀ n, P1346625405183737950.a n = A127505 (n + 1)

end A127505

/-! ## A127505.P11059100762927785545

`A000010(A002262(n)+1)*A054525(n+1)`
-/

namespace A127505.P11059100762927785545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat * A054525 (n + 1)

end

end A127505.P11059100762927785545

namespace A127505

/-- `A000010(A002262(n)+1)*A054525(n+1)` -/
def P11059100762927785545.Spec : Prop :=
  ∀ n, P11059100762927785545.a n = A127505 (n + 1)

end A127505

/-! ## A127505.P15068685543112447567

`A008683(A010766(n+1))*A054522(n+1)`
-/

namespace A127505.P15068685543112447567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A010766 (n + 1)).toNat * A054522 (n + 1)

end

end A127505.P15068685543112447567

namespace A127505

/-- `A008683(A010766(n+1))*A054522(n+1)` -/
def P15068685543112447567.Spec : Prop :=
  ∀ n, P15068685543112447567.a n = A127505 (n + 1)

end A127505

/-! ## A127505.P12224637670294767517

`A000010(A050873(n+1))*A054525(n+1)`
-/

namespace A127505.P12224637670294767517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050873 (n + 1)).toNat * A054525 (n + 1)

end

end A127505.P12224637670294767517

namespace A127505

/-- `A000010(A050873(n+1))*A054525(n+1)` -/
def P12224637670294767517.Spec : Prop :=
  ∀ n, P12224637670294767517.a n = A127505 (n + 1)

end A127505

/-!
# A127506: Triangle read by rows: T(n,k) = A054521(n,k)*A000010(k), 1<=k<=n .

The programs for A127506, the canonical program `A127506.P2576218990608271660` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127506 has offset 1).

The definition of A127506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127506.P2576218990608271660

`A054521(C(row(n)+1, 2)+col(n)+1)*A000010(col(n)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127506

/-- `A054521(C(row(n)+1, 2)+col(n)+1)*A000010(col(n)+1)` -/
def P2576218990608271660.Spec : Prop :=
  ∀ n, P2576218990608271660.a n = A127506 (n + 1)

theorem P2576218990608271660.correct : P2576218990608271660.Spec := by
  intro n
  simp only [A127506, Nat.add_sub_cancel]

end A127506

/-! ## A127506.P11176136321246717551

`∑{d}[A127368(n+1), A007431(#)]`
-/

namespace A127506.P11176136321246717551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A127506.P11176136321246717551

namespace A127506

/-- `∑{d}[A127368(n+1), A007431(#)]` -/
def P11176136321246717551.Spec : Prop :=
  ∀ n, P11176136321246717551.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P11976932208225015375

`A054521(n+1)*A054526(n+1)`
-/

namespace A127506.P11976932208225015375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A054526 (n + 1)

end

end A127506.P11976932208225015375

namespace A127506

/-- `A054521(n+1)*A054526(n+1)` -/
def P11976932208225015375.Spec : Prop :=
  ∀ n, P11976932208225015375.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P14231757349510107704

`A054521(n+1)*A181538(n+1)`
-/

namespace A127506.P14231757349510107704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A181538 (n + 1)

end

end A127506.P14231757349510107704

namespace A127506

/-- `A054521(n+1)*A181538(n+1)` -/
def P14231757349510107704.Spec : Prop :=
  ∀ n, P14231757349510107704.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P10540883621084222454

`lcm(A054526(n+1), A215200(n+1))`
-/

namespace A127506.P10540883621084222454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054526 (n + 1)) (A215200 (n + 1))

end

end A127506.P10540883621084222454

namespace A127506

/-- `lcm(A054526(n+1), A215200(n+1))` -/
def P10540883621084222454.Spec : Prop :=
  ∀ n, (P10540883621084222454.a n : ℤ) = A127506 (n + 1)

end A127506

/-! ## A127506.P207141790364515587

`A000010(col(n)+1)*A054521(n+1)`
-/

namespace A127506.P207141790364515587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.triCol n + 1) * A054521 (n + 1)

end

end A127506.P207141790364515587

namespace A127506

/-- `A000010(col(n)+1)*A054521(n+1)` -/
def P207141790364515587.Spec : Prop :=
  ∀ n, P207141790364515587.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P8042426616039718227

`A000010(1-C(∑[char[∑[n]]], 2)+n)*A054521(n+1)`
-/

namespace A127506.P8042426616039718227
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A054521 (n + 1)

end

end A127506.P8042426616039718227

namespace A127506

/-- `A000010(1-C(∑[char[∑[n]]], 2)+n)*A054521(n+1)` -/
def P8042426616039718227.Spec : Prop :=
  ∀ n, P8042426616039718227.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P4398006956051436397

`A000010(A128227(n))*A054521(n+1)`
-/

namespace A127506.P4398006956051436397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A128227 n).toNat * A054521 (n + 1)

end

end A127506.P4398006956051436397

namespace A127506

/-- `A000010(A128227(n))*A054521(n+1)` -/
def P4398006956051436397.Spec : Prop :=
  ∀ n, P4398006956051436397.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P2599662621384418430

`A000010(A193738(n))*A054521(n+1)`
-/

namespace A127506.P2599662621384418430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A193738 n).toNat * A054521 (n + 1)

end

end A127506.P2599662621384418430

namespace A127506

/-- `A000010(A193738(n))*A054521(n+1)` -/
def P2599662621384418430.Spec : Prop :=
  ∀ n, P2599662621384418430.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P15332236398132970155

`lcm(A000010(A128227(n)), A215200(n+1))`
-/

namespace A127506.P15332236398132970155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (A128227 n).toNat) (A215200 (n + 1))

end

end A127506.P15332236398132970155

namespace A127506

/-- `lcm(A000010(A128227(n)), A215200(n+1))` -/
def P15332236398132970155.Spec : Prop :=
  ∀ n, (P15332236398132970155.a n : ℤ) = A127506 (n + 1)

end A127506

/-! ## A127506.P15138981600354692726

`A000010(A002260(n+1))*A054521(n+1)`
-/

namespace A127506.P15138981600354692726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A054521 (n + 1)

end

end A127506.P15138981600354692726

namespace A127506

/-- `A000010(A002260(n+1))*A054521(n+1)` -/
def P15138981600354692726.Spec : Prop :=
  ∀ n, P15138981600354692726.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P2223702425019558375

`A000010(A128077(n+1))*A054521(n+1)`
-/

namespace A127506.P2223702425019558375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A128077 (n + 1)).toNat * A054521 (n + 1)

end

end A127506.P2223702425019558375

namespace A127506

/-- `A000010(A128077(n+1))*A054521(n+1)` -/
def P2223702425019558375.Spec : Prop :=
  ∀ n, P2223702425019558375.a n = A127506 (n + 1)

end A127506

/-! ## A127506.P2410106124292552930

`A127476(n+1)/(A349317(n+1)+A143614(n+1))`
-/

namespace A127506.P2410106124292552930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127476 (n + 1) : ℚ) / (A349317 (n + 1) + A143614 (n + 1) : ℚ)

end

end A127506.P2410106124292552930

namespace A127506

/-- `A127476(n+1)/(A349317(n+1)+A143614(n+1))` -/
def P2410106124292552930.Spec : Prop :=
  ∀ n, P2410106124292552930.a n = (A127506 (n + 1) : ℚ)

end A127506

/-! ## A127506.P17621468820846251497

`∑{e}[A000079(A127368(n+1)), A000010(#)]`
-/

namespace A127506.P17621468820846251497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A127368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A127506.P17621468820846251497

namespace A127506

/-- `∑{e}[A000079(A127368(n+1)), A000010(#)]` -/
def P17621468820846251497.Spec : Prop :=
  ∀ n, P17621468820846251497.a n = A127506 (n + 1)

end A127506

/-!
# A127507: Triangle read by rows: T(n,k) = mu(n) where 1<=k<=n and mu=A008683.

The programs for A127507, the canonical program `A127507.P3340875001784584220` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127507 has offset 1).

The definition of A127507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(row(n)+1)` (program `A127507.P3340875001784584220`, by `A127507.P3340875001784584220.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127507.P3340875001784584220

`A008683(row(n)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127507

/-- `A008683(row(n)+1)` -/
def P3340875001784584220.Spec : Prop :=
  ∀ n, P3340875001784584220.a n = A127507 (n + 1)

theorem P3340875001784584220.correct : P3340875001784584220.Spec := by
  intro n
  simp only [A127507, Nat.add_sub_cancel]

end A127507

/-! ## A127507.P705858673828657316

`A008683(∑[char[∑[n]]])`
-/

namespace A127507.P705858673828657316
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127507.P705858673828657316

namespace A127507

/-- `A008683(∑[char[∑[n]]])` -/
def P705858673828657316.Spec : Prop :=
  ∀ n, P705858673828657316.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P777727695844933459

`A007423(row(n)+1)-1`
-/

namespace A127507.P777727695844933459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (SequenceMachineLib.triRow n + 1) - 1

end

end A127507.P777727695844933459

namespace A127507

/-- `A007423(row(n)+1)-1` -/
def P777727695844933459.Spec : Prop :=
  ∀ n, P777727695844933459.a n = A127507 (n + 1)

theorem P777727695844933459.correct : P777727695844933459.Spec := by
  intro n
  simp only [A127507, Nat.add_sub_cancel, A127507.P777727695844933459.a, A127507.P3340875001784584220.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127507

/-! ## A127507.P227261139065484581

`A054525(1+n-col(n))`
-/

namespace A127507.P227261139065484581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (1 + ((n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A127507.P227261139065484581

namespace A127507

/-- `A054525(1+n-col(n))` -/
def P227261139065484581.Spec : Prop :=
  ∀ n, P227261139065484581.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P17721826247773933260

`A077050(n+1-col(n))`
-/

namespace A127507.P17721826247773933260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077050 (n + 1 - SequenceMachineLib.triCol n)

end

end A127507.P17721826247773933260

namespace A127507

/-- `A077050(n+1-col(n))` -/
def P17721826247773933260.Spec : Prop :=
  ∀ n, P17721826247773933260.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P16765266937827436500

`∏{e}[row(n)+1, A240328(#)]`
-/

namespace A127507.P16765266937827436500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A240328 (Nat.factorization (f1 n) p)

end

end A127507.P16765266937827436500

namespace A127507

/-- `∏{e}[row(n)+1, A240328(#)]` -/
def P16765266937827436500.Spec : Prop :=
  ∀ n, P16765266937827436500.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P13715899374232812326

`A130161(A057944(n))`
-/

namespace A127507.P13715899374232812326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130161 (A057944 n).toNat

end

end A127507.P13715899374232812326

namespace A127507

/-- `A130161(A057944(n))` -/
def P13715899374232812326.Spec : Prop :=
  ∀ n, P13715899374232812326.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P9786221076646448938

`A127512(n+1)/A007318(n)`
-/

namespace A127507.P9786221076646448938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127512 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A127507.P9786221076646448938

namespace A127507

/-- `A127512(n+1)/A007318(n)` -/
def P9786221076646448938.Spec : Prop :=
  ∀ n, P9786221076646448938.a n = (A127507 (n + 1) : ℚ)

end A127507

/-! ## A127507.P8560988778016771768

`A054525(n+2-A002260(n+1))`
-/

namespace A127507.P8560988778016771768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A127507.P8560988778016771768

namespace A127507

/-- `A054525(n+2-A002260(n+1))` -/
def P8560988778016771768.Spec : Prop :=
  ∀ n, P8560988778016771768.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P15888025418631818858

`A054533(n+2-A002260(n+1))`
-/

namespace A127507.P15888025418631818858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A127507.P15888025418631818858

namespace A127507

/-- `A054533(n+2-A002260(n+1))` -/
def P15888025418631818858.Spec : Prop :=
  ∀ n, P15888025418631818858.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P7372455833235057460

`A077050(n+2-A002260(n+1))`
-/

namespace A127507.P7372455833235057460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077050 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A127507.P7372455833235057460

namespace A127507

/-- `A077050(n+2-A002260(n+1))` -/
def P7372455833235057460.Spec : Prop :=
  ∀ n, P7372455833235057460.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P14906184426950634565

`A143468(n+2-A002260(n+1))`
-/

namespace A127507.P14906184426950634565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143468 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A127507.P14906184426950634565

namespace A127507

/-- `A143468(n+2-A002260(n+1))` -/
def P14906184426950634565.Spec : Prop :=
  ∀ n, P14906184426950634565.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P916221804179160787

`A144824(n+2-A002260(n+1))`
-/

namespace A127507.P916221804179160787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144824 ((n + 2 : ℤ) - A002260 (n + 1)).toNat

end

end A127507.P916221804179160787

namespace A127507

/-- `A144824(n+2-A002260(n+1))` -/
def P916221804179160787.Spec : Prop :=
  ∀ n, P916221804179160787.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P6978136757526531

`A127510(n+1)/A002260(n+1)`
-/

namespace A127507.P6978136757526531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127510 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127507.P6978136757526531

namespace A127507

/-- `A127510(n+1)/A002260(n+1)` -/
def P6978136757526531.Spec : Prop :=
  ∀ n, P6978136757526531.a n = (A127507 (n + 1) : ℚ)

end A127507

/-! ## A127507.P10680203160931493578

`A054534(row(n)+1-col(n)+n)`
-/

namespace A127507.P10680203160931493578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (n : ℤ)).toNat

end

end A127507.P10680203160931493578

namespace A127507

/-- `A054534(row(n)+1-col(n)+n)` -/
def P10680203160931493578.Spec : Prop :=
  ∀ n, P10680203160931493578.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P18065767251782991327

`A054534(C(round(sqrt(2*(n+1)))+1, 2))`
-/

namespace A127507.P18065767251782991327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1).toNat 2)

end

end A127507.P18065767251782991327

namespace A127507

/-- `A054534(C(round(sqrt(2*(n+1)))+1, 2))` -/
def P18065767251782991327.Spec : Prop :=
  ∀ n, P18065767251782991327.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P6428566220797599899

`A054524(A127739(n+1))`
-/

namespace A127507.P6428566220797599899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (A127739 (n + 1)).toNat

end

end A127507.P6428566220797599899

namespace A127507

/-- `A054524(A127739(n+1))` -/
def P6428566220797599899.Spec : Prop :=
  ∀ n, P6428566220797599899.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P12167312411720866992

`A077052(A004736(n+1)+n)`
-/

namespace A127507.P12167312411720866992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077052 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A127507.P12167312411720866992

namespace A127507

/-- `A077052(A004736(n+1)+n)` -/
def P12167312411720866992.Spec : Prop :=
  ∀ n, P12167312411720866992.a n = A127507 (n + 1)

end A127507

/-! ## A127507.P5212823200179000701

`A128410(n+1)/A135539(n+1)`
-/

namespace A127507.P5212823200179000701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128410 (n + 1) : ℚ) / (A135539 (n + 1) : ℚ)

end

end A127507.P5212823200179000701

namespace A127507

/-- `A128410(n+1)/A135539(n+1)` -/
def P5212823200179000701.Spec : Prop :=
  ∀ n, P5212823200179000701.a n = (A127507 (n + 1) : ℚ)

end A127507

/-! ## A127507.P14440551783927037687

`A054527(A377809(n+1))`
-/

namespace A127507.P14440551783927037687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (A377809 (n + 1)).toNat

end

end A127507.P14440551783927037687

namespace A127507

/-- `A054527(A377809(n+1))` -/
def P14440551783927037687.Spec : Prop :=
  ∀ n, P14440551783927037687.a n = A127507 (n + 1)

end A127507

/-!
# A127508: A007376(4n+2).

The programs for A127508, there is no canonical definition to state claims against.
-/

/-! ## A127508.P17027876847278655282

`A007376(4*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127508.P17027876847278655282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (4 * n + 2)

end

end A127508.P17027876847278655282

/-! ## A127508.P9043422585197674901

`dr(A007376(Δ[2*n²]))`
-/

namespace A127508.P9043422585197674901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A127508.P9043422585197674901

/-! ## A127508.P10640155814763691626

`A007376(or(2, 4*n))%10`
-/

namespace A127508.P10640155814763691626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (Nat.lor 2 (4 * n))) 10

end

end A127508.P10640155814763691626

/-! ## A127508.P10224236875250232254

`A007318(C(2, n))*A007376(Δ[2*n²])`
-/

namespace A127508.P10224236875250232254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A127508.P10224236875250232254

/-! ## A127508.P1208172681220722799

`A000041(C(2, 2*n))*A007376(Δ[2*n²])`
-/

namespace A127508.P1208172681220722799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A127508.P1208172681220722799

/-! ## A127508.P1074457783759457250

`A127353(Δ[n²])`
-/

namespace A127508.P1074457783759457250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127353 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A127508.P1074457783759457250

/-! ## A127508.P11796742313853999864

`A033307(4*n+1)`
-/

namespace A127508.P11796742313853999864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (4 * n + 1)

end

end A127508.P11796742313853999864

/-! ## A127508.P2763942963276845921

`A059805(Δ[n²])%10`
-/

namespace A127508.P2763942963276845921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 10

end

end A127508.P2763942963276845921

/-! ## A127508.P6920014474193994080

`dr(A127353(2*n+1))`
-/

namespace A127508.P6920014474193994080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127353 (2 * n + 1))

end

end A127508.P6920014474193994080

/-! ## A127508.P4556492069614966389

`dr(A033307(record[xor(3, n)-2]))`
-/

namespace A127508.P4556492069614966389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A127508.P4556492069614966389

/-! ## A127508.P10147242589291454422

`A033307(A016813(n))%10`
-/

namespace A127508.P10147242589291454422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033307 (A016813 n).toNat) 10

end

end A127508.P10147242589291454422

/-! ## A127508.P10605342885663889504

`dr(A033307(record[A157142(n)]))`
-/

namespace A127508.P10605342885663889504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A127508.P10605342885663889504

/-! ## A127508.P9033867190031056124

`A010879(A059805(2*n+1))`
-/

namespace A127508.P9033867190031056124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A059805 (2 * n + 1)).toNat

end

end A127508.P9033867190031056124

/-! ## A127508.P3028301751947858170

`9-A031310(4*n+2)`
-/

namespace A127508.P3028301751947858170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A031310 (4 * n + 2)

end

end A127508.P3028301751947858170

/-! ## A127508.P4906782769113345310

`A098727(4*n+2)-(4*n+2)`
-/

namespace A127508.P4906782769113345310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098727 (4 * n + 2) - (4 * n + 2 : ℤ)

end

end A127508.P4906782769113345310

/-! ## A127508.P3263818165360505864

`A054899(A136414(4*n+2))`
-/

namespace A127508.P3263818165360505864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (4 * n + 2)).toNat

end

end A127508.P3263818165360505864

/-! ## A127508.P17624633491259553326

`A108202(8*n+4)`
-/

namespace A127508.P17624633491259553326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (8 * n + 4)

end

end A127508.P17624633491259553326

/-! ## A127508.P3870023744612889704

`A108712(A017101(n))`
-/

namespace A127508.P3870023744612889704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A017101 n).toNat

end

end A127508.P3870023744612889704

/-! ## A127508.P9813065023229718273

`A108712(A017077(n)+2)`
-/

namespace A127508.P9813065023229718273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A017077 n + 2).toNat

end

end A127508.P9813065023229718273

/-!
# A127509: Number of n-tuples where each entry is chosen from the subsets of {1,2,3} such that the intersection of all n entries contains exactly one element.

The programs for A127509, the canonical program `A127509.P5672709053485805299` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127509 has offset 1).

The definition of A127509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127509.P16800294046271881196

`ogf((3+6x)/(1-7x+14x^2-8x^3))`
-/

namespace A127509.P16800294046271881196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6] [1, -7, 14, -8] n

end

end A127509.P16800294046271881196

namespace A127509

/-- `ogf((3+6x)/(1-7x+14x^2-8x^3))` -/
def P16800294046271881196.Spec : Prop :=
  ∀ n, P16800294046271881196.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P5672709053485805299

`3*(2^(n+1)-1)²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127509

/-- `3*(2^(n+1)-1)²` -/
def P5672709053485805299.Spec : Prop :=
  ∀ n, P5672709053485805299.a n = A127509 (n + 1)

theorem P5672709053485805299.correct : P5672709053485805299.Spec := by
  intro n
  simp only [A127509, Nat.add_sub_cancel]

end A127509

/-! ## A127509.P15117456785278521426

`∑[sqrt(lcm(3, 4^n))]²`
-/

namespace A127509.P15117456785278521426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 3 (4 ^ n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A127509.P15117456785278521426

namespace A127509

/-- `∑[sqrt(lcm(3, 4^n))]²` -/
def P15117456785278521426.Spec : Prop :=
  ∀ n, P15117456785278521426.a n = (A127509 (n + 1) : ℝ)

end A127509

/-! ## A127509.P317671518827607543

`∑[ogf((3+6x)/(1-6x+8x^2))]`
-/

namespace A127509.P317671518827607543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127509.P317671518827607543

namespace A127509

/-- `∑[ogf((3+6x)/(1-6x+8x^2))]` -/
def P317671518827607543.Spec : Prop :=
  ∀ n, P317671518827607543.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P11603839635029421872

`3*∑[record[2^col(n)]]²`
-/

namespace A127509.P11603839635029421872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triCol n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A127509.P11603839635029421872

namespace A127509

/-- `3*∑[record[2^col(n)]]²` -/
def P11603839635029421872.Spec : Prop :=
  ∀ n, (P11603839635029421872.a n : ℤ) = A127509 (n + 1)

end A127509

/-! ## A127509.P9849292572566256289

`floor(3*∑[2*a(n-1)]²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A127509.P9849292572566256289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A127509.P9849292572566256289

namespace A127509

/-- `floor(3*∑[2*a(n-1)]²)` -/
def P9849292572566256289.Spec : Prop :=
  ∀ n, (P9849292572566256289.a n : ℤ) = A127509 (n + 1)

end A127509

/-! ## A127509.P10015735631825367812

`∑[∑[2*a(n-1)]²-1]` with `a(0)=2, a(1)=3`
-/

namespace A127509.P10015735631825367812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127509.P10015735631825367812

namespace A127509

/-- `∑[∑[2*a(n-1)]²-1]` -/
def P10015735631825367812.Spec : Prop :=
  ∀ n, P10015735631825367812.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P10320120172363429027

`abs(3*or(1, 2^(n+1)-1)*∑[2^n])`
-/

namespace A127509.P10320120172363429027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (Int.lor 1 ((2 ^ (n + 1) : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A127509.P10320120172363429027

namespace A127509

/-- `abs(3*or(1, 2^(n+1)-1)*∑[2^n])` -/
def P10320120172363429027.Spec : Prop :=
  ∀ n, P10320120172363429027.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P16246422323218957385

`abs(3*∑[2^n]*record[2^abs(1-n)-1])`
-/

namespace A127509.P16246422323218957385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))|

end

end A127509.P16246422323218957385

namespace A127509

/-- `abs(3*∑[2^n]*record[2^abs(1-n)-1])` -/
def P16246422323218957385.Spec : Prop :=
  ∀ n, P16246422323218957385.a n = (A127509 (n + 1) : ℚ)

end A127509

/-! ## A127509.P8417739115517149051

`abs(3*(2^(n+1)-tan(acot(1)))*∑[2^n])`
-/

namespace A127509.P8417739115517149051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |3 * (((2 ^ (n + 1) : ℝ) - Real.tan (SequenceMachineLib.acot (1 : ℝ))) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))|

end

end A127509.P8417739115517149051

namespace A127509

/-- `abs(3*(2^(n+1)-tan(acot(1)))*∑[2^n])` -/
def P8417739115517149051.Spec : Prop :=
  ∀ n, P8417739115517149051.a n = (A127509 (n + 1) : ℝ)

end A127509

/-! ## A127509.P1433963844364991795

`∑[a(n-1)/(1-1/2)]²-∑[2^n]²` with `a(0)=2`
-/

namespace A127509.P1433963844364991795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ)

end

end A127509.P1433963844364991795

namespace A127509

/-- `∑[a(n-1)/(1-1/2)]²-∑[2^n]²` -/
def P1433963844364991795.Spec : Prop :=
  ∀ n, P1433963844364991795.a n = (A127509 (n + 1) : ℚ)

end A127509

/-! ## A127509.P5126175248425691217

`∑[3*A165665(n)]`
-/

namespace A127509.P5126175248425691217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A165665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127509.P5126175248425691217

namespace A127509

/-- `∑[3*A165665(n)]` -/
def P5126175248425691217.Spec : Prop :=
  ∀ n, P5126175248425691217.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P10192520276586127361

`∑[sqrt(A164346(n))]²`
-/

namespace A127509.P10192520276586127361
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164346 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A127509.P10192520276586127361

namespace A127509

/-- `∑[sqrt(A164346(n))]²` -/
def P10192520276586127361.Spec : Prop :=
  ∀ n, P10192520276586127361.a n = (A127509 (n + 1) : ℝ)

end A127509

/-! ## A127509.P3700682961664437827

`2*A020527(n)+1`
-/

namespace A127509.P3700682961664437827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020527 n + 1

end

end A127509.P3700682961664437827

namespace A127509

/-- `2*A020527(n)+1` -/
def P3700682961664437827.Spec : Prop :=
  ∀ n, P3700682961664437827.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P15400791089300801375

`4*A169726(n)-1`
-/

namespace A127509.P15400791089300801375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A169726 n - 1

end

end A127509.P15400791089300801375

namespace A127509

/-- `4*A169726(n)-1` -/
def P15400791089300801375.Spec : Prop :=
  ∀ n, P15400791089300801375.a n = A127509 (n + 1)

theorem P15400791089300801375.correct : P15400791089300801375.Spec := by
  intro n
  simp only [A127509, Nat.add_sub_cancel, A127509.P15400791089300801375.a, A127509.P5672709053485805299.a, A169726, A169726.P11086986432710171647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127509

/-! ## A127509.P17252506582424280241

`∑[A153893(n)²-1]`
-/

namespace A127509.P17252506582424280241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127509.P17252506582424280241

namespace A127509

/-- `∑[A153893(n)²-1]` -/
def P17252506582424280241.Spec : Prop :=
  ∀ n, P17252506582424280241.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P9627419675758650491

`∑[sqrt(A002001(n+1))]²`
-/

namespace A127509.P9627419675758650491
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002001 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A127509.P9627419675758650491

namespace A127509

/-- `∑[sqrt(A002001(n+1))]²` -/
def P9627419675758650491.Spec : Prop :=
  ∀ n, P9627419675758650491.a n = (A127509 (n + 1) : ℝ)

end A127509

/-! ## A127509.P6148024944205991426

`∑[∑[A042950(n)]²-1]`
-/

namespace A127509.P6148024944205991426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127509.P6148024944205991426

namespace A127509

/-- `∑[∑[A042950(n)]²-1]` -/
def P6148024944205991426.Spec : Prop :=
  ∀ n, P6148024944205991426.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P7243369580855337488

`∑[Δ[A079583(n)]²-1]`
-/

namespace A127509.P7243369580855337488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127509.P7243369580855337488

namespace A127509

/-- `∑[Δ[A079583(n)]²-1]` -/
def P7243369580855337488.Spec : Prop :=
  ∀ n, P7243369580855337488.a n = A127509 (n + 1)

end A127509

/-! ## A127509.P6390900464801776146

`∑[A055010(n+1)²-1]`
-/

namespace A127509.P6390900464801776146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (n + 1) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127509.P6390900464801776146

namespace A127509

/-- `∑[A055010(n+1)²-1]` -/
def P6390900464801776146.Spec : Prop :=
  ∀ n, P6390900464801776146.a n = A127509 (n + 1)

end A127509

/-!
# A127510: Triangle T(n,k) = k*mobius(n).

The programs for A127510, the canonical program `A127510.P4543285095068175280` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127510 has offset 1).

The definition of A127510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*A008683(row(n)+1)` (program `A127510.P4543285095068175280`, by `A127510.P4543285095068175280.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127510.P4543285095068175280

`(col(n)+1)*A008683(row(n)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127510

/-- `(col(n)+1)*A008683(row(n)+1)` -/
def P4543285095068175280.Spec : Prop :=
  ∀ n, P4543285095068175280.a n = A127510 (n + 1)

theorem P4543285095068175280.correct : P4543285095068175280.Spec := by
  intro n
  simp only [A127510, Nat.add_sub_cancel]

end A127510

/-! ## A127510.P8030469975602431579

`(1-C(∑[char[∑[n]]], 2)+n)*A008683(∑[char[∑[n]]])`
-/

namespace A127510.P8030469975602431579
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A008683 (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A127510.P8030469975602431579

namespace A127510

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A008683(∑[char[∑[n]]])` -/
def P8030469975602431579.Spec : Prop :=
  ∀ n, P8030469975602431579.a n = A127510 (n + 1)

end A127510

/-! ## A127510.P18353277708436359795

`A002260(n+1)*A127507(n+1)`
-/

namespace A127510.P18353277708436359795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127507 (n + 1)

end

end A127510.P18353277708436359795

namespace A127510

/-- `A002260(n+1)*A127507(n+1)` -/
def P18353277708436359795.Spec : Prop :=
  ∀ n, P18353277708436359795.a n = A127510 (n + 1)

theorem P18353277708436359795.correct : P18353277708436359795.Spec := by
  intro n
  simp only [A127510, Nat.add_sub_cancel, A127510.P18353277708436359795.a, A127510.P4543285095068175280.a, A002260, A002260.P9170571874073898642.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A127507, A127507.P3340875001784584220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127510

/-! ## A127510.P6655600887386649301

`A008683(∑[char[∑[n]]])*A002260(n+1)`
-/

namespace A127510.P6655600887386649301
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) * A002260 (n + 1)

end

end A127510.P6655600887386649301

namespace A127510

/-- `A008683(∑[char[∑[n]]])*A002260(n+1)` -/
def P6655600887386649301.Spec : Prop :=
  ∀ n, P6655600887386649301.a n = A127510 (n + 1)

end A127510

/-! ## A127510.P13953506380361138811

`(A002262(n)+1)*A008683(round(sqrt(2*(n+1))))`
-/

namespace A127510.P13953506380361138811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A008683 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A127510.P13953506380361138811

namespace A127510

/-- `(A002262(n)+1)*A008683(round(sqrt(2*(n+1))))` -/
def P13953506380361138811.Spec : Prop :=
  ∀ n, P13953506380361138811.a n = A127510 (n + 1)

end A127510

/-! ## A127510.P8896803286775219872

`A002260(n+1)*A008683(A002024(n+1))`
-/

namespace A127510.P8896803286775219872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008683 (A002024 (n + 1)).toNat

end

end A127510.P8896803286775219872

namespace A127510

/-- `A002260(n+1)*A008683(A002024(n+1))` -/
def P8896803286775219872.Spec : Prop :=
  ∀ n, P8896803286775219872.a n = A127510 (n + 1)

end A127510

/-! ## A127510.P6099686510532395283

`(1-C(∑[char[∑[n]]], 2)+n)*A054527(C(comp[∑[n]]-n, 2))`
-/

namespace A127510.P6099686510532395283
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
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A054527 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2)

end

end A127510.P6099686510532395283

namespace A127510

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A054527(C(comp[∑[n]]-n, 2))` -/
def P6099686510532395283.Spec : Prop :=
  ∀ n, P6099686510532395283.a n = A127510 (n + 1)

end A127510

/-! ## A127510.P7768155040261574958

`(col(n)+1)*A189021((row(n)+1)²)`
-/

namespace A127510.P7768155040261574958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A189021 ((SequenceMachineLib.triRow n + 1) ^ 2)

end

end A127510.P7768155040261574958

namespace A127510

/-- `(col(n)+1)*A189021((row(n)+1)²)` -/
def P7768155040261574958.Spec : Prop :=
  ∀ n, P7768155040261574958.a n = A127510 (n + 1)

end A127510

/-! ## A127510.P7356278727375698532

`A008683(∑[char[∑[n]]])*A349520(2*n+1)`
-/

namespace A127510.P7356278727375698532
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) * A349520 (2 * n + 1)

end

end A127510.P7356278727375698532

namespace A127510

/-- `A008683(∑[char[∑[n]]])*A349520(2*n+1)` -/
def P7356278727375698532.Spec : Prop :=
  ∀ n, P7356278727375698532.a n = A127510 (n + 1)

end A127510

/-! ## A127510.P11360961315492719308

`A008683(∑[char[∑[n]]])*A097285(2*n+1)`
-/

namespace A127510.P11360961315492719308
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) * A097285 (2 * n + 1)

end

end A127510.P11360961315492719308

namespace A127510

/-- `A008683(∑[char[∑[n]]])*A097285(2*n+1)` -/
def P11360961315492719308.Spec : Prop :=
  ∀ n, P11360961315492719308.a n = A127510 (n + 1)

end A127510

/-! ## A127510.P6954162868600647250

`A000005(A059268(n))*A127507(n+1)`
-/

namespace A127510.P6954162868600647250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A127507 (n + 1)

end

end A127510.P6954162868600647250

namespace A127510

/-- `A000005(A059268(n))*A127507(n+1)` -/
def P6954162868600647250.Spec : Prop :=
  ∀ n, P6954162868600647250.a n = A127510 (n + 1)

end A127510

/-!
# A127511: a(n) = mu(n) * 2^(n-1).

The programs for A127511, the canonical program `A127511.P5037785664011029634` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127511 has offset 1).

The definition of A127511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n+1)*2^n` (program `A127511.P5037785664011029634`, by `A127511.P5037785664011029634.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127511.P5037785664011029634

`A008683(n+1)*2^n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127511

/-- `A008683(n+1)*2^n` -/
def P5037785664011029634.Spec : Prop :=
  ∀ n, P5037785664011029634.a n = A127511 (n + 1)

theorem P5037785664011029634.correct : P5037785664011029634.Spec := by
  intro n
  simp only [A127511, Nat.add_sub_cancel]

end A127511

/-! ## A127511.P6364896620404305567

`2^n*A008683(n+1)`
-/

namespace A127511.P6364896620404305567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008683 (n + 1)

end

end A127511.P6364896620404305567

namespace A127511

/-- `2^n*A008683(n+1)` -/
def P6364896620404305567.Spec : Prop :=
  ∀ n, P6364896620404305567.a n = A127511 (n + 1)

theorem P6364896620404305567.correct : P6364896620404305567.Spec := by
  intro n
  simp only [A127511, Nat.add_sub_cancel, A127511.P6364896620404305567.a, A127511.P5037785664011029634.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A127511

/-! ## A127511.P823552237562673194

`A011782(n)*A378225(n+1)`
-/

namespace A127511.P823552237562673194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A378225 (n + 1)

end

end A127511.P823552237562673194

namespace A127511

/-- `A011782(n)*A378225(n+1)` -/
def P823552237562673194.Spec : Prop :=
  ∀ n, P823552237562673194.a n = A127511 (n + 1)

end A127511

/-! ## A127511.P4074816260387474457

`(A007423(n+1)-1)*A000079(n)`
-/

namespace A127511.P4074816260387474457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A000079 n

end

end A127511.P4074816260387474457

namespace A127511

/-- `(A007423(n+1)-1)*A000079(n)` -/
def P4074816260387474457.Spec : Prop :=
  ∀ n, P4074816260387474457.a n = A127511 (n + 1)

theorem P4074816260387474457.correct : P4074816260387474457.Spec := by
  intro n
  simp only [A127511, Nat.add_sub_cancel, A127511.P4074816260387474457.a, A127511.P5037785664011029634.a, A000079, A000079.P10855139691139572931.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127511

/-! ## A127511.P12905160749716462489

`A162512(n+1)%2*A000079(n)`
-/

namespace A127511.P12905160749716462489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 * A000079 n

end

end A127511.P12905160749716462489

namespace A127511

/-- `A162512(n+1)%2*A000079(n)` -/
def P12905160749716462489.Spec : Prop :=
  ∀ n, P12905160749716462489.a n = A127511 (n + 1)

end A127511

/-! ## A127511.P11651221046368649568

`floor(A008683(n+1)/2*A198633(n))`
-/

namespace A127511.P11651221046368649568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008683 (n + 1) : ℚ) / 2 * (A198633 n : ℚ)⌋

end

end A127511.P11651221046368649568

namespace A127511

/-- `floor(A008683(n+1)/2*A198633(n))` -/
def P11651221046368649568.Spec : Prop :=
  ∀ n, P11651221046368649568.a n = A127511 (n + 1)

end A127511

/-! ## A127511.P6251022120638274438

`A008683(n+1)+A000225(n)*A008683(n+1)`
-/

namespace A127511.P6251022120638274438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A000225 n * A008683 (n + 1)

end

end A127511.P6251022120638274438

namespace A127511

/-- `A008683(n+1)+A000225(n)*A008683(n+1)` -/
def P6251022120638274438.Spec : Prop :=
  ∀ n, P6251022120638274438.a n = A127511 (n + 1)

theorem P6251022120638274438.correct : P6251022120638274438.Spec := by
  intro n
  simp only [A127511, Nat.add_sub_cancel, A127511.P6251022120638274438.a, A127511.P5037785664011029634.a, A000225, A000225.P6535533121115206393.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127511

/-! ## A127511.P15773877130551166085

`(A000079(n+1)-A062777(n+1))*A000079(n)`
-/

namespace A127511.P15773877130551166085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) - A062777 (n + 1)) * A000079 n

end

end A127511.P15773877130551166085

namespace A127511

/-- `(A000079(n+1)-A062777(n+1))*A000079(n)` -/
def P15773877130551166085.Spec : Prop :=
  ∀ n, P15773877130551166085.a n = A127511 (n + 1)

theorem P15773877130551166085.correct : P15773877130551166085.Spec := by
  intro n
  simp only [A127511, Nat.add_sub_cancel, A127511.P15773877130551166085.a, A127511.P5037785664011029634.a, A000079, A000079.P10855139691139572931.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A062777, A062777.P8405652242778700290.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127511

/-!
# A127512: Triangle read by rows: T(n,k)= mobius(n)*binomial(n-1,k-1).

The programs for A127512, the canonical program `A127512.P6519862492124889995` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127512 has offset 1).

The definition of A127512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(row(n)+1)*C(row(n), col(n))` (program `A127512.P6519862492124889995`, by `A127512.P6519862492124889995.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127512.P6519862492124889995

`A008683(row(n)+1)*C(row(n), col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127512

/-- `A008683(row(n)+1)*C(row(n), col(n))` -/
def P6519862492124889995.Spec : Prop :=
  ∀ n, P6519862492124889995.a n = A127512 (n + 1)

theorem P6519862492124889995.correct : P6519862492124889995.Spec := by
  intro n
  simp only [A127512, Nat.add_sub_cancel]

end A127512

/-! ## A127512.P4816962291726319378

`A007318(n)*A127507(n+1)`
-/

namespace A127512.P4816962291726319378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A127507 (n + 1)

end

end A127512.P4816962291726319378

namespace A127512

/-- `A007318(n)*A127507(n+1)` -/
def P4816962291726319378.Spec : Prop :=
  ∀ n, P4816962291726319378.a n = A127512 (n + 1)

theorem P4816962291726319378.correct : P4816962291726319378.Spec := by
  intro n
  simp only [A127512, Nat.add_sub_cancel, A127512.P4816962291726319378.a, A127512.P6519862492124889995.a, A007318, A007318.P11755526479805562006.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A127507, A127507.P3340875001784584220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127512

/-! ## A127512.P17280756838944676681

`A007318(n)*A008683(∑[char[∑[n]]])`
-/

namespace A127512.P17280756838944676681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127512.P17280756838944676681

namespace A127512

/-- `A007318(n)*A008683(∑[char[∑[n]]])` -/
def P17280756838944676681.Spec : Prop :=
  ∀ n, P17280756838944676681.a n = A127512 (n + 1)

end A127512

/-! ## A127512.P8551056209044455252

`A028326(n)/2*A008683(∑[char[∑[n]]])`
-/

namespace A127512.P8551056209044455252
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A008683 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A127512.P8551056209044455252

namespace A127512

/-- `A028326(n)/2*A008683(∑[char[∑[n]]])` -/
def P8551056209044455252.Spec : Prop :=
  ∀ n, P8551056209044455252.a n = (A127512 (n + 1) : ℚ)

end A127512

/-! ## A127512.P14185487047361769108

`A008683(comp[∑[n-1]]-n)*A007318(n)`
-/

namespace A127512.P14185487047361769108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) * A007318 n

end

end A127512.P14185487047361769108

namespace A127512

/-- `A008683(comp[∑[n-1]]-n)*A007318(n)` -/
def P14185487047361769108.Spec : Prop :=
  ∀ n, P14185487047361769108.a n = A127512 (n + 1)

end A127512

/-! ## A127512.P9246962336428045023

`ceil(A109128(n)/2)*A008683(∑[char[∑[n]]])`
-/

namespace A127512.P9246962336428045023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ * A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127512.P9246962336428045023

namespace A127512

/-- `ceil(A109128(n)/2)*A008683(∑[char[∑[n]]])` -/
def P9246962336428045023.Spec : Prop :=
  ∀ n, P9246962336428045023.a n = A127512 (n + 1)

end A127512

/-! ## A127512.P11779909915713380566

`(A131061(n)+3)/4*A008683(∑[char[∑[n]]])`
-/

namespace A127512.P11779909915713380566
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131061 n + 3 : ℚ) / 4 * (A008683 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A127512.P11779909915713380566

namespace A127512

/-- `(A131061(n)+3)/4*A008683(∑[char[∑[n]]])` -/
def P11779909915713380566.Spec : Prop :=
  ∀ n, P11779909915713380566.a n = (A127512 (n + 1) : ℚ)

end A127512

/-! ## A127512.P10441793790133779419

`(A131063(n)+4)/5*A008683(∑[char[∑[n]]])`
-/

namespace A127512.P10441793790133779419
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n + 4 : ℚ) / 5 * (A008683 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A127512.P10441793790133779419

namespace A127512

/-- `(A131063(n)+4)/5*A008683(∑[char[∑[n]]])` -/
def P10441793790133779419.Spec : Prop :=
  ∀ n, P10441793790133779419.a n = (A127512 (n + 1) : ℚ)

end A127512

/-! ## A127512.P5124029281171808125

`A007318(n)*A189021((row(n)+1)²)`
-/

namespace A127512.P5124029281171808125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A189021 ((SequenceMachineLib.triRow n + 1) ^ 2)

end

end A127512.P5124029281171808125

namespace A127512

/-- `A007318(n)*A189021((row(n)+1)²)` -/
def P5124029281171808125.Spec : Prop :=
  ∀ n, P5124029281171808125.a n = A127512 (n + 1)

end A127512

/-! ## A127512.P6311792996004996580

`A007318(n)*A271102((row(n)+1)²)`
-/

namespace A127512.P6311792996004996580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A271102 ((SequenceMachineLib.triRow n + 1) ^ 2)

end

end A127512.P6311792996004996580

namespace A127512

/-- `A007318(n)*A271102((row(n)+1)²)` -/
def P6311792996004996580.Spec : Prop :=
  ∀ n, P6311792996004996580.a n = A127512 (n + 1)

end A127512

/-!
# A127513: Partial sums of A127511.

The programs for A127513, the canonical program `A127513.P3682238697581112364` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127513 has offset 1).

The definition of A127513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127513.P12668838173959851186

`∑[2^n*round(acot(∏{e}[n+1, -#]))]`
-/

namespace A127513.P12668838173959851186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P12668838173959851186

namespace A127513

/-- `∑[2^n*round(acot(∏{e}[n+1, -#]))]` -/
def P12668838173959851186.Spec : Prop :=
  ∀ n, P12668838173959851186.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P347285323164737540

`∑[2^n*A008683(n+1)]`
-/

namespace A127513.P347285323164737540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P347285323164737540

namespace A127513

/-- `∑[2^n*A008683(n+1)]` -/
def P347285323164737540.Spec : Prop :=
  ∀ n, P347285323164737540.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P3135347841120434815

`∑[2^n*A162512(n+1)%2]`
-/

namespace A127513.P3135347841120434815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P3135347841120434815

namespace A127513

/-- `∑[2^n*A162512(n+1)%2]` -/
def P3135347841120434815.Spec : Prop :=
  ∀ n, P3135347841120434815.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P11980927940876112481

`∑[2^n*∏{e}[n+1, A016351(#)]]`
-/

namespace A127513.P11980927940876112481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), A016351 (Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P11980927940876112481

namespace A127513

/-- `∑[2^n*∏{e}[n+1, A016351(#)]]` -/
def P11980927940876112481.Spec : Prop :=
  ∀ n, P11980927940876112481.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P227757384699054262

`∑[A008683(n+1)*A000079(n)]`
-/

namespace A127513.P227757384699054262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P227757384699054262

namespace A127513

/-- `∑[A008683(n+1)*A000079(n)]` -/
def P227757384699054262.Spec : Prop :=
  ∀ n, P227757384699054262.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P18013874017963131123

`∑[A008683(n+1)*∑[A011782(n)]]`
-/

namespace A127513.P18013874017963131123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P18013874017963131123

namespace A127513

/-- `∑[A008683(n+1)*∑[A011782(n)]]` -/
def P18013874017963131123.Spec : Prop :=
  ∀ n, P18013874017963131123.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P15819021212696487219

`∑[A008683(n+1)*A131577(n+1)]`
-/

namespace A127513.P15819021212696487219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P15819021212696487219

namespace A127513

/-- `∑[A008683(n+1)*A131577(n+1)]` -/
def P15819021212696487219.Spec : Prop :=
  ∀ n, P15819021212696487219.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P3682238697581112364

`1-∑[A000079(n)*A157658(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127513

/-- `1-∑[A000079(n)*A157658(n+1)]` -/
def P3682238697581112364.Spec : Prop :=
  ∀ n, P3682238697581112364.a n = A127513 (n + 1)

theorem P3682238697581112364.correct : P3682238697581112364.Spec := by
  intro n
  simp only [A127513, Nat.add_sub_cancel]

end A127513

/-! ## A127513.P10608503216662473293

`∑[A008683(n+1)*A171449(n)]+2`
-/

namespace A127513.P10608503216662473293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A171449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A127513.P10608503216662473293

namespace A127513

/-- `∑[A008683(n+1)*A171449(n)]+2` -/
def P10608503216662473293.Spec : Prop :=
  ∀ n, P10608503216662473293.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P1444253399285025377

`∑[floor(A262804(n+1)/2)^A001359(n+1)*2^n]`
-/

namespace A127513.P1444253399285025377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A262804 (n + 1) : ℚ) / 2⌋ : ℚ) ^ (A001359 (n + 1) : ℤ) * (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P1444253399285025377

namespace A127513

/-- `∑[floor(A262804(n+1)/2)^A001359(n+1)*2^n]` -/
def P1444253399285025377.Spec : Prop :=
  ∀ n, P1444253399285025377.a n = (A127513 (n + 1) : ℚ)

end A127513

/-! ## A127513.P6348094853982151290

`∑[A008683(n+1)*Δ[A000051(n)]]`
-/

namespace A127513.P6348094853982151290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P6348094853982151290

namespace A127513

/-- `∑[A008683(n+1)*Δ[A000051(n)]]` -/
def P6348094853982151290.Spec : Prop :=
  ∀ n, P6348094853982151290.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P2633420664994137821

`∑[A008683(n+1)*Δ[A000225(n)]]`
-/

namespace A127513.P2633420664994137821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P2633420664994137821

namespace A127513

/-- `∑[A008683(n+1)*Δ[A000225(n)]]` -/
def P2633420664994137821.Spec : Prop :=
  ∀ n, P2633420664994137821.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P8593637154484817006

`∑[A127511(n+1)]`
-/

namespace A127513.P8593637154484817006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P8593637154484817006

namespace A127513

/-- `∑[A127511(n+1)]` -/
def P8593637154484817006.Spec : Prop :=
  ∀ n, P8593637154484817006.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P11039000877214766059

`∑[A008683(n+1)*A078840(∑[n])]`
-/

namespace A127513.P11039000877214766059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A078840 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P11039000877214766059

namespace A127513

/-- `∑[A008683(n+1)*A078840(∑[n])]` -/
def P11039000877214766059.Spec : Prop :=
  ∀ n, P11039000877214766059.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P8303909662762136008

`∑[2^n*A282634(∑[n]+2)]`
-/

namespace A127513.P8303909662762136008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A282634 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P8303909662762136008

namespace A127513

/-- `∑[2^n*A282634(∑[n]+2)]` -/
def P8303909662762136008.Spec : Prop :=
  ∀ n, P8303909662762136008.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P13801042237965590902

`∑[A008683(n+1)*A055248(∑[n])]`
-/

namespace A127513.P13801042237965590902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A055248 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P13801042237965590902

namespace A127513

/-- `∑[A008683(n+1)*A055248(∑[n])]` -/
def P13801042237965590902.Spec : Prop :=
  ∀ n, P13801042237965590902.a n = A127513 (n + 1)

end A127513

/-! ## A127513.P4650972916389251512

`∑[A008683(n+1)*A130321(∑[n])]`
-/

namespace A127513.P4650972916389251512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A130321 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127513.P4650972916389251512

namespace A127513

/-- `∑[A008683(n+1)*A130321(∑[n])]` -/
def P4650972916389251512.Spec : Prop :=
  ∀ n, P4650972916389251512.a n = A127513 (n + 1)

end A127513

/-!
# A127514: Binomial transform of an infinite lower triangular matrix with mu(n) in the diagonal.

The programs for A127514, the canonical program `A127514.P8561216037142629593` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127514 has offset 1).

The definition of A127514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127514.P6236866400766043901

`C(row(n), col(n))*A054527(n+1)`
-/

namespace A127514.P6236866400766043901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A054527 (n + 1)

end

end A127514.P6236866400766043901

namespace A127514

/-- `C(row(n), col(n))*A054527(n+1)` -/
def P6236866400766043901.Spec : Prop :=
  ∀ n, P6236866400766043901.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P8561216037142629593

`A007318(n)*A054527(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127514

/-- `A007318(n)*A054527(n+1)` -/
def P8561216037142629593.Spec : Prop :=
  ∀ n, P8561216037142629593.a n = A127514 (n + 1)

theorem P8561216037142629593.correct : P8561216037142629593.Spec := by
  intro n
  simp only [A127514, Nat.add_sub_cancel]

end A127514

/-! ## A127514.P17364712389391626227

`A007318(n)*A008683(col(n)+1)`
-/

namespace A127514.P17364712389391626227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008683 (SequenceMachineLib.triCol n + 1)

end

end A127514.P17364712389391626227

namespace A127514

/-- `A007318(n)*A008683(col(n)+1)` -/
def P17364712389391626227.Spec : Prop :=
  ∀ n, P17364712389391626227.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P9482949266282815393

`A008683(A002260(n+1))*A007318(n)`
-/

namespace A127514.P9482949266282815393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A007318 n

end

end A127514.P9482949266282815393

namespace A127514

/-- `A008683(A002260(n+1))*A007318(n)` -/
def P9482949266282815393.Spec : Prop :=
  ∀ n, P9482949266282815393.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P6188643191194495728

`A008683(A002262(n)+1)*A007318(n)`
-/

namespace A127514.P6188643191194495728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002262 n + 1).toNat * A007318 n

end

end A127514.P6188643191194495728

namespace A127514

/-- `A008683(A002262(n)+1)*A007318(n)` -/
def P6188643191194495728.Spec : Prop :=
  ∀ n, P6188643191194495728.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P3433990123485288679

`A008683(sqrt(A133819(n+1)))*A007318(n)`
-/

namespace A127514.P3433990123485288679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A007318 n

end

end A127514.P3433990123485288679

namespace A127514

/-- `A008683(sqrt(A133819(n+1)))*A007318(n)` -/
def P3433990123485288679.Spec : Prop :=
  ∀ n, P3433990123485288679.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P3516685057463538911

`A007318(n)*A008683(A057555(Δ[n²]))`
-/

namespace A127514.P3516685057463538911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008683 (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A127514.P3516685057463538911

namespace A127514

/-- `A007318(n)*A008683(A057555(Δ[n²]))` -/
def P3516685057463538911.Spec : Prop :=
  ∀ n, P3516685057463538911.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P7786533625817139824

`A007318(n)*A008683(A097285(Δ[n²]))`
-/

namespace A127514.P7786533625817139824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008683 (A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A127514.P7786533625817139824

namespace A127514

/-- `A007318(n)*A008683(A097285(Δ[n²]))` -/
def P7786533625817139824.Spec : Prop :=
  ∀ n, P7786533625817139824.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P9825507484958548120

`A008683(A057555(2*n+1))*A007318(n)`
-/

namespace A127514.P9825507484958548120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A057555 (2 * n + 1)).toNat * A007318 n

end

end A127514.P9825507484958548120

namespace A127514

/-- `A008683(A057555(2*n+1))*A007318(n)` -/
def P9825507484958548120.Spec : Prop :=
  ∀ n, P9825507484958548120.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P1332513525227671240

`A008683(A097285(2*n+1))*A007318(n)`
-/

namespace A127514.P1332513525227671240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A097285 (2 * n + 1)).toNat * A007318 n

end

end A127514.P1332513525227671240

namespace A127514

/-- `A008683(A097285(2*n+1))*A007318(n)` -/
def P1332513525227671240.Spec : Prop :=
  ∀ n, P1332513525227671240.a n = A127514 (n + 1)

end A127514

/-! ## A127514.P5870229360488388627

`A007318(n)*A008683(A000005(A059268(n)))`
-/

namespace A127514.P5870229360488388627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008683 (A000005 (A059268 n).toNat).toNat

end

end A127514.P5870229360488388627

namespace A127514

/-- `A007318(n)*A008683(A000005(A059268(n)))` -/
def P5870229360488388627.Spec : Prop :=
  ∀ n, P5870229360488388627.a n = A127514 (n + 1)

end A127514

/-!
# A127515: a(n) is the smallest positive integer which does not occur earlier in the sequence and is such that Sum_{k=1..n} 1/a(k) has a numerator which is prime (or is 1).

The programs for A127515, there is no canonical definition to state claims against.
-/

/-! ## A127515.P12409573063411034879

`A141298(A216959(n+5)-val(A260593(n+1), 2))`
-/

namespace A127515.P12409573063411034879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141298 (A216959 (n + 5) - (SequenceMachineLib.valuation (A260593 (n + 1)).toNat 2 : ℤ)).toNat

end

end A127515.P12409573063411034879

/-!
# A127516: a(n) = numerator of Sum_{k=1..n} 1/A127515(k).

The programs for A127516, there is no canonical definition to state claims against.
-/

/-! ## A127516.P9072620953045777649

`or(A096795(n+1), A324666(A096773(n+1)))`
-/

namespace A127516.P9072620953045777649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096795 (n + 1)) (A324666 (A096773 (n + 1)).toNat)

end

end A127516.P9072620953045777649

/-! ## A127516.P16961582773737121246

`or(A096795(n+1), A096842(A096801(3*n+2)))`
-/

namespace A127516.P16961582773737121246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096795 (n + 1)) (A096842 (A096801 (3 * n + 2)).toNat)

end

end A127516.P16961582773737121246

/-!
# A127517: a(n) = denominator of Sum_{k=1..n} 1/A127515(k).

The programs for A127517, there is no canonical definition to state claims against.
-/

/-! ## A127517.P6833928044212047684

`lcm(A000005(A326859(n)), A322381(n))`
-/

namespace A127517.P6833928044212047684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A326859 n).toNat) (A322381 n)

end

end A127517.P6833928044212047684

/-! ## A127517.P8547781130970987948

`record[A225631(lcm(2, n))]`
-/

namespace A127517.P8547781130970987948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225631 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127517.P8547781130970987948

/-! ## A127517.P8566381906561529591

`record[A225641(eq[1, and(n-1, 1-n)%3])]`
-/

namespace A127517.P8566381906561529591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land ((n : ℤ) - 1) (1 - (n : ℤ))) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127517.P8566381906561529591

/-!
# A127520: a(n) = denominator of Sum_{k=1..n} 1/A127518(k).

The programs for A127520, there is no canonical definition to state claims against.
-/

/-! ## A127520.P13150077740960537617

`∏{p}[A001710(n+2), A257811(#)]`
-/

namespace A127520.P13150077740960537617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A257811 p

end

end A127520.P13150077740960537617

/-! ## A127520.P5293487888733626304

`A281230(∏[dr(A237517(3*n+1))])`
-/

namespace A127520.P5293487888733626304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A237517 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A127520.P5293487888733626304

/-! ## A127520.P10834665789640452934

`A065080(n+2)*A131033(A025627(2*(n+1)))`
-/

namespace A127520.P10834665789640452934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065080 (n + 2) * A131033 (A025627 (2 * (n + 1))).toNat

end

end A127520.P10834665789640452934

/-!
# A127523: a(n) = floor(p(n)*((log of p(n+2) to base p(n+1))-1)), where p(n) is n-th prime.

The programs for A127523, there is no canonical definition to state claims against.
-/

/-! ## A127523.P986151880478502586

`A321396(∑[1-A073272(n+1)]²)`
-/

namespace A127523.P986151880478502586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321396 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A127523.P986151880478502586

/-! ## A127523.P5241706167679405356

`A126309((2-A121699(n+2))²+1)`
-/

namespace A127523.P5241706167679405356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126309 ((2 - A121699 (n + 2)) ^ 2 + 1).toNat

end

end A127523.P5241706167679405356

/-! ## A127523.P2106283385035530318

`floor(A211006(2*n+3)/A210984(2*(n+1)))`
-/

namespace A127523.P2106283385035530318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211006 (2 * n + 3) : ℚ) / (A210984 (2 * (n + 1)) : ℚ)⌋

end

end A127523.P2106283385035530318

/-! ## A127523.P2218082490335132522

`A355258(round(A218075(n+2)/A000040(n+5)))`
-/

namespace A127523.P2218082490335132522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355258 (SequenceMachineLib.roundAway ((A218075 (n + 2) : ℚ) / (A000040 (n + 5) : ℚ))).toNat

end

end A127523.P2218082490335132522

/-! ## A127523.P8339960080740224566

`A276794(A022144(n)*A034448(n+3))`
-/

namespace A127523.P8339960080740224566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 (A022144 n * A034448 (n + 3)).toNat

end

end A127523.P8339960080740224566

/-!
# A127524: Number of unordered rooted trees where each subtree from given node has the same number of nodes.

The programs for A127524, there is no canonical definition to state claims against.
-/

/-! ## A127524.P10840683645511830968

`A185246(A000124(n))+A083710(n)`
-/

namespace A127524.P10840683645511830968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A000124 n).toNat + A083710 n

end

end A127524.P10840683645511830968

/-! ## A127524.P1193068426900493691

`A185246(A008804(n))+A083710(n)`
-/

namespace A127524.P1193068426900493691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A008804 n).toNat + A083710 n

end

end A127524.P1193068426900493691

/-! ## A127524.P16094914351286161529

`A329362(A088626(n))+A083710(n)`
-/

namespace A127524.P16094914351286161529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A088626 n).toNat + A083710 n

end

end A127524.P16094914351286161529

/-! ## A127524.P9157847315614328659

`A355880(A323092(n+4))+A003114(n)`
-/

namespace A127524.P9157847315614328659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A323092 (n + 4)).toNat + A003114 n

end

end A127524.P9157847315614328659

/-!
# A127525: Number of ordered rooted trees where each subtree from given node has the same number of nodes.

The programs for A127525, there is no canonical definition to state claims against.
-/

/-! ## A127525.P3420098956716104550

`A328335(∑[A054251(n)])`
-/

namespace A127525.P3420098956716104550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127525.P3420098956716104550

/-! ## A127525.P13199153249438948960

`A291811(A080528(n)+1)`
-/

namespace A127525.P13199153249438948960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A080528 n + 1).toNat

end

end A127525.P13199153249438948960

/-! ## A127525.P9668681169681049764

`A291812(A080528(n)+1)`
-/

namespace A127525.P9668681169681049764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A080528 n + 1).toNat

end

end A127525.P9668681169681049764

/-! ## A127525.P7073187730666997908

`A291811(A048816(n+1)+1)`
-/

namespace A127525.P7073187730666997908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A048816 (n + 1) + 1).toNat

end

end A127525.P7073187730666997908

/-! ## A127525.P18329804684258540226

`A291812(A048816(n+1)+1)`
-/

namespace A127525.P18329804684258540226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A048816 (n + 1) + 1).toNat

end

end A127525.P18329804684258540226

/-!
# A127526: Sequence related to fifth roots of certain Fibonacci fractions.

The programs for A127526, the canonical program `A127526.P3473760243189758897` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127526 has offset 1).

The definition of A127526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127526.P3473760243189758897

`ogf((15-15x+x^2+x^3)/(1-3x+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127526

/-- `ogf((15-15x+x^2+x^3)/(1-3x+3x^3-x^4))` -/
def P3473760243189758897.Spec : Prop :=
  ∀ n, P3473760243189758897.a n = A127526 (n + 1)

theorem P3473760243189758897.correct : P3473760243189758897.Spec := by
  intro n
  simp only [A127526, Nat.add_sub_cancel]

end A127526

/-! ## A127526.P1101565126204537721

`Δ[A114185(n+3)-gcd(2, n)²]`
-/

namespace A127526.P1101565126204537721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114185 (n + 3) - (Nat.gcd 2 n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127526.P1101565126204537721

namespace A127526

/-- `Δ[A114185(n+3)-gcd(2, n)²]` -/
def P1101565126204537721.Spec : Prop :=
  ∀ n, P1101565126204537721.a n = A127526 (n + 1)

end A127526

/-! ## A127526.P2165322861191025437

`Δ[A001906(n+3)-or(1, xor(1, n)-1)]`
-/

namespace A127526.P2165322861191025437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 3) - Int.lor 1 ((Nat.xor 1 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127526.P2165322861191025437

namespace A127526

/-- `Δ[A001906(n+3)-or(1, xor(1, n)-1)]` -/
def P2165322861191025437.Spec : Prop :=
  ∀ n, P2165322861191025437.a n = A127526 (n + 1)

end A127526

/-! ## A127526.P14805426339971712755

`A000071(2*(n+1))+A000204(n+2)*A001060(n+1)`
-/

namespace A127526.P14805426339971712755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * (n + 1)) + A000204 (n + 2) * A001060 (n + 1)

end

end A127526.P14805426339971712755

namespace A127526

/-- `A000071(2*(n+1))+A000204(n+2)*A001060(n+1)` -/
def P14805426339971712755.Spec : Prop :=
  ∀ n, P14805426339971712755.a n = A127526 (n + 1)

end A127526

/-! ## A127526.P6847053428989573592

`A001610(2*(n+1))+A000204(n+2)*A000285(n+1)`
-/

namespace A127526.P6847053428989573592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * (n + 1)) + A000204 (n + 2) * A000285 (n + 1)

end

end A127526.P6847053428989573592

namespace A127526

/-- `A001610(2*(n+1))+A000204(n+2)*A000285(n+1)` -/
def P6847053428989573592.Spec : Prop :=
  ∀ n, P6847053428989573592.a n = A127526 (n + 1)

end A127526

/-! ## A127526.P18056091592838946666

`A056699(2*(n+1))+A020706(2*n+3)-A056699(2*(n+2))`
-/

namespace A127526.P18056091592838946666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (2 * (n + 1)) + (A020706 (2 * n + 3) - A056699 (2 * (n + 2)))

end

end A127526.P18056091592838946666

namespace A127526

/-- `A056699(2*(n+1))+A020706(2*n+3)-A056699(2*(n+2))` -/
def P18056091592838946666.Spec : Prop :=
  ∀ n, P18056091592838946666.a n = A127526 (n + 1)

end A127526

/-!
# A127527: Triangle T(n,k)= tau(k)*phi(n/k) if k|n, else T(n,k)=0.

The programs for A127527, the canonical program `A127527.P15161782034350291340` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127527 has offset 1).

The definition of A127527 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127527.P15161782034350291340

`A000005(col(n)+1)*A054523(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127527

/-- `A000005(col(n)+1)*A054523(C(row(n)+1, 2)+col(n)+1)` -/
def P15161782034350291340.Spec : Prop :=
  ∀ n, P15161782034350291340.a n = A127527 (n + 1)

theorem P15161782034350291340.correct : P15161782034350291340.Spec := by
  intro n
  simp only [A127527, Nat.add_sub_cancel]

end A127527

/-! ## A127527.P8087482116524196701

`A051194(n+1)*A054523(n+1)`
-/

namespace A127527.P8087482116524196701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1) * A054523 (n + 1)

end

end A127527.P8087482116524196701

namespace A127527

/-- `A051194(n+1)*A054523(n+1)` -/
def P8087482116524196701.Spec : Prop :=
  ∀ n, P8087482116524196701.a n = A127527 (n + 1)

end A127527

/-! ## A127527.P13164790246909359329

`A054523(n+1)*A130210(n+1)`
-/

namespace A127527.P13164790246909359329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A130210 (n + 1)

end

end A127527.P13164790246909359329

namespace A127527

/-- `A054523(n+1)*A130210(n+1)` -/
def P13164790246909359329.Spec : Prop :=
  ∀ n, P13164790246909359329.a n = A127527 (n + 1)

end A127527

/-! ## A127527.P10396439598869966597

`A000005(1-C(∑[char[∑[n]]], 2)+n)*A054523(n+1)`
-/

namespace A127527.P10396439598869966597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A054523 (n + 1)

end

end A127527.P10396439598869966597

namespace A127527

/-- `A000005(1-C(∑[char[∑[n]]], 2)+n)*A054523(n+1)` -/
def P10396439598869966597.Spec : Prop :=
  ∀ n, P10396439598869966597.a n = A127527 (n + 1)

end A127527

/-! ## A127527.P2483815872565789148

`A000005(A002260(n+1))*A054523(n+1)`
-/

namespace A127527.P2483815872565789148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A054523 (n + 1)

end

end A127527.P2483815872565789148

namespace A127527

/-- `A000005(A002260(n+1))*A054523(n+1)` -/
def P2483815872565789148.Spec : Prop :=
  ∀ n, P2483815872565789148.a n = A127527 (n + 1)

end A127527

/-! ## A127527.P7071561229547115031

`A000005(A002262(n)+1)*A054523(n+1)`
-/

namespace A127527.P7071561229547115031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002262 n + 1).toNat * A054523 (n + 1)

end

end A127527.P7071561229547115031

namespace A127527

/-- `A000005(A002262(n)+1)*A054523(n+1)` -/
def P7071561229547115031.Spec : Prop :=
  ∀ n, P7071561229547115031.a n = A127527 (n + 1)

end A127527

/-! ## A127527.P3448002832322879587

`A000005(A050873(n+1))*A054523(n+1)`
-/

namespace A127527.P3448002832322879587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A050873 (n + 1)).toNat * A054523 (n + 1)

end

end A127527.P3448002832322879587

namespace A127527

/-- `A000005(A050873(n+1))*A054523(n+1)` -/
def P3448002832322879587.Spec : Prop :=
  ∀ n, P3448002832322879587.a n = A127527 (n + 1)

end A127527

/-! ## A127527.P18063372250948786040

`A000005(A123275(n+1))*A054523(n+1)`
-/

namespace A127527.P18063372250948786040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123275 (n + 1)).toNat * A054523 (n + 1)

end

end A127527.P18063372250948786040

namespace A127527

/-- `A000005(A123275(n+1))*A054523(n+1)` -/
def P18063372250948786040.Spec : Prop :=
  ∀ n, P18063372250948786040.a n = A127527 (n + 1)

end A127527

/-! ## A127527.P17636017752162112778

`A000005(A112544(n+1))*A054523(n+1)`
-/

namespace A127527.P17636017752162112778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A112544 (n + 1)).toNat * A054523 (n + 1)

end

end A127527.P17636017752162112778

namespace A127527

/-- `A000005(A112544(n+1))*A054523(n+1)` -/
def P17636017752162112778.Spec : Prop :=
  ∀ n, P17636017752162112778.a n = A127527 (n + 1)

end A127527

/-! ## A127527.P10552776218974906995

`A127471(A120913(n+1))`
-/

namespace A127527.P10552776218974906995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127471 (A120913 (n + 1)).toNat

end

end A127527.P10552776218974906995

namespace A127527

/-- `A127471(A120913(n+1))` -/
def P10552776218974906995.Spec : Prop :=
  ∀ n, P10552776218974906995.a n = A127527 (n + 1)

end A127527

/-!
# A127528: Triangle T(n,k) read by rows: tau(n)*phi(n/k) if k|n, else 0.

The programs for A127528, the canonical program `A127528.P7975887621646932099` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127528 has offset 1).

The definition of A127528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127528.P7975887621646932099

`A000005(row(n)+1)*A054523(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127528

/-- `A000005(row(n)+1)*A054523(C(row(n)+1, 2)+col(n)+1)` -/
def P7975887621646932099.Spec : Prop :=
  ∀ n, P7975887621646932099.a n = A127528 (n + 1)

theorem P7975887621646932099.correct : P7975887621646932099.Spec := by
  intro n
  simp only [A127528, Nat.add_sub_cancel]

end A127528

/-! ## A127528.P8954672867823419869

`A054523(n+1)*A130277(n+1)`
-/

namespace A127528.P8954672867823419869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A130277 (n + 1)

end

end A127528.P8954672867823419869

namespace A127528

/-- `A054523(n+1)*A130277(n+1)` -/
def P8954672867823419869.Spec : Prop :=
  ∀ n, P8954672867823419869.a n = A127528 (n + 1)

end A127528

/-! ## A127528.P4568305079100055480

`A000005(∑[char[∑[n]]])*A054523(n+1)`
-/

namespace A127528.P4568305079100055480
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j) * A054523 (n + 1)

end

end A127528.P4568305079100055480

namespace A127528

/-- `A000005(∑[char[∑[n]]])*A054523(n+1)` -/
def P4568305079100055480.Spec : Prop :=
  ∀ n, P4568305079100055480.a n = A127528 (n + 1)

end A127528

/-! ## A127528.P11170222815529072783

`A051194(A127739(n+1))*A054523(n+1)`
-/

namespace A127528.P11170222815529072783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A127739 (n + 1)).toNat * A054523 (n + 1)

end

end A127528.P11170222815529072783

namespace A127528

/-- `A051194(A127739(n+1))*A054523(n+1)` -/
def P11170222815529072783.Spec : Prop :=
  ∀ n, P11170222815529072783.a n = A127528 (n + 1)

end A127528

/-! ## A127528.P3771851255901777308

`A054523(n+1)*A114896(A057944(n))`
-/

namespace A127528.P3771851255901777308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A114896 (A057944 n).toNat

end

end A127528.P3771851255901777308

namespace A127528

/-- `A054523(n+1)*A114896(A057944(n))` -/
def P3771851255901777308.Spec : Prop :=
  ∀ n, P3771851255901777308.a n = A127528 (n + 1)

end A127528

/-! ## A127528.P10234476093813385608

`A046951(A093995(n+1))*A054523(n+1)`
-/

namespace A127528.P10234476093813385608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A093995 (n + 1)).toNat * A054523 (n + 1)

end

end A127528.P10234476093813385608

namespace A127528

/-- `A046951(A093995(n+1))*A054523(n+1)` -/
def P10234476093813385608.Spec : Prop :=
  ∀ n, P10234476093813385608.a n = A127528 (n + 1)

end A127528

/-!
# A127531: Number of jumps in all binary trees with n edges.

The programs for A127531, the canonical program `A127531.P14165418015592472488` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127531 has offset 1).

The definition of A127531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127531.P1136366532845837892

`Δ[∑{#}[n, C(n, #)²]-A005807(n)]`
-/

namespace A127531.P1136366532845837892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k ^ 2 : ℕ) : ℤ) - A005807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P1136366532845837892

namespace A127531

/-- `Δ[∑{#}[n, C(n, #)²]-A005807(n)]` -/
def P1136366532845837892.Spec : Prop :=
  ∀ n, P1136366532845837892.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P14165418015592472488

`Δ[A000984(n)-A000778(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127531

/-- `Δ[A000984(n)-A000778(n)]` -/
def P14165418015592472488.Spec : Prop :=
  ∀ n, P14165418015592472488.a n = A127531 (n + 1)

theorem P14165418015592472488.correct : P14165418015592472488.Spec := by
  intro n
  simp only [A127531, Nat.add_sub_cancel]

end A127531

/-! ## A127531.P6930401432785829491

`Δ[A000984(n)-A005807(n)]`
-/

namespace A127531.P6930401432785829491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A005807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P6930401432785829491

namespace A127531

/-- `Δ[A000984(n)-A005807(n)]` -/
def P6930401432785829491.Spec : Prop :=
  ∀ n, P6930401432785829491.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P4415661553309583174

`A220101(n+1)-A099376(n)`
-/

namespace A127531.P4415661553309583174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220101 (n + 1) - A099376 n

end

end A127531.P4415661553309583174

namespace A127531

/-- `A220101(n+1)-A099376(n)` -/
def P4415661553309583174.Spec : Prop :=
  ∀ n, P4415661553309583174.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P6930511106301463541

`A051960(n)-A000108(n+2)`
-/

namespace A127531.P6930511106301463541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 n - A000108 (n + 2)

end

end A127531.P6930511106301463541

namespace A127531

/-- `A051960(n)-A000108(n+2)` -/
def P6930511106301463541.Spec : Prop :=
  ∀ n, P6930511106301463541.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P14202737702989962349

`n*A000245(n)-A099376(n)`
-/

namespace A127531.P14202737702989962349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000245 n - A099376 n

end

end A127531.P14202737702989962349

namespace A127531

/-- `n*A000245(n)-A099376(n)` -/
def P14202737702989962349.Spec : Prop :=
  ∀ n, P14202737702989962349.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P16531139972608591804

`n*A071724(n)-A099376(n)`
-/

namespace A127531.P16531139972608591804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071724 n - A099376 n

end

end A127531.P16531139972608591804

namespace A127531

/-- `n*A071724(n)-A099376(n)` -/
def P16531139972608591804.Spec : Prop :=
  ∀ n, P16531139972608591804.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P7509934872909090792

`Δ[A001791(n)-Δ[A014137(n)]]`
-/

namespace A127531.P7509934872909090792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P7509934872909090792

namespace A127531

/-- `Δ[A001791(n)-Δ[A014137(n)]]` -/
def P7509934872909090792.Spec : Prop :=
  ∀ n, P7509934872909090792.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P14840582794529410919

`Δ[A001791(n)-Δ[A014138(n)]]`
-/

namespace A127531.P14840582794529410919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P14840582794529410919

namespace A127531

/-- `Δ[A001791(n)-Δ[A014138(n)]]` -/
def P14840582794529410919.Spec : Prop :=
  ∀ n, P14840582794529410919.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P17853128131921416769

`Δ[A276666(n)-Δ[A000108(n)]]`
-/

namespace A127531.P17853128131921416769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P17853128131921416769

namespace A127531

/-- `Δ[A276666(n)-Δ[A000108(n)]]` -/
def P17853128131921416769.Spec : Prop :=
  ∀ n, P17853128131921416769.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P7936047159045068642

`Δ[A001791(n)-A000108(n+1)]`
-/

namespace A127531.P7936047159045068642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P7936047159045068642

namespace A127531

/-- `Δ[A001791(n)-A000108(n+1)]` -/
def P7936047159045068642.Spec : Prop :=
  ∀ n, P7936047159045068642.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P2625847723741271559

`Δ[A001791(n)-A120304(n+1)]`
-/

namespace A127531.P2625847723741271559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - A120304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P2625847723741271559

namespace A127531

/-- `Δ[A001791(n)-A120304(n+1)]` -/
def P2625847723741271559.Spec : Prop :=
  ∀ n, P2625847723741271559.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P1752094874268410571

`Δ[A001791(n)-A120588(n+2)]`
-/

namespace A127531.P1752094874268410571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - A120588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P1752094874268410571

namespace A127531

/-- `Δ[A001791(n)-A120588(n+2)]` -/
def P1752094874268410571.Spec : Prop :=
  ∀ n, P1752094874268410571.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P127418040747840208

`n*Δ[A000108(n)]-A099376(n)`
-/

namespace A127531.P127418040747840208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A099376 n

end

end A127531.P127418040747840208

namespace A127531

/-- `n*Δ[A000108(n)]-A099376(n)` -/
def P127418040747840208.Spec : Prop :=
  ∀ n, P127418040747840208.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P2656174605682505612

`n*Δ[A120304(n)]-A099376(n)`
-/

namespace A127531.P2656174605682505612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A099376 n

end

end A127531.P2656174605682505612

namespace A127531

/-- `n*Δ[A120304(n)]-A099376(n)` -/
def P2656174605682505612.Spec : Prop :=
  ∀ n, P2656174605682505612.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P17060485435076655618

`A051924(n+1)-A280891(n+1)`
-/

namespace A127531.P17060485435076655618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) - A280891 (n + 1)

end

end A127531.P17060485435076655618

namespace A127531

/-- `A051924(n+1)-A280891(n+1)` -/
def P17060485435076655618.Spec : Prop :=
  ∀ n, P17060485435076655618.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P10554370089338874931

`Δ[A037952(2*n)-A000108(n+1)]`
-/

namespace A127531.P10554370089338874931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) - A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P10554370089338874931

namespace A127531

/-- `Δ[A037952(2*n)-A000108(n+1)]` -/
def P10554370089338874931.Spec : Prop :=
  ∀ n, P10554370089338874931.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P15105339217292072205

`Δ[A037952(2*n)-A120304(n+1)]`
-/

namespace A127531.P15105339217292072205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) - A120304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P15105339217292072205

namespace A127531

/-- `Δ[A037952(2*n)-A120304(n+1)]` -/
def P15105339217292072205.Spec : Prop :=
  ∀ n, P15105339217292072205.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P17346251901462205571

`Δ[n*A000108(n)-A000108(n+1)]`
-/

namespace A127531.P17346251901462205571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000108 n - A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127531.P17346251901462205571

namespace A127531

/-- `Δ[n*A000108(n)-A000108(n+1)]` -/
def P17346251901462205571.Spec : Prop :=
  ∀ n, P17346251901462205571.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P13821515357562764123

`A050168(2*n+1)-A000108(n+2)`
-/

namespace A127531.P13821515357562764123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n + 1) - A000108 (n + 2)

end

end A127531.P13821515357562764123

namespace A127531

/-- `A050168(2*n+1)-A000108(n+2)` -/
def P13821515357562764123.Spec : Prop :=
  ∀ n, P13821515357562764123.a n = A127531 (n + 1)

end A127531

/-! ## A127531.P2744469899960861409

`C(Δ[n²], n+3)+C(2*n, n+2)`
-/

namespace A127531.P2744469899960861409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (n + 3) + Nat.choose (2 * n) (n + 2)

end

end A127531.P2744469899960861409

namespace A127531

/-- `C(Δ[n²], n+3)+C(2*n, n+2)` -/
def P2744469899960861409.Spec : Prop :=
  ∀ n, (P2744469899960861409.a n : ℤ) = A127531 (n + 1)

end A127531

/-!
# A127533: Sum of jump-lengths of all binary trees with n edges.

The programs for A127533, the canonical program `A127533.P9803744706263550024` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127533 has offset 0).

The definition of A127533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127533.P9803744706263550024

`Δ[A000984(n)]-A002057(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127533

/-- `Δ[A000984(n)]-A002057(n)` -/
def P9803744706263550024.Spec : Prop :=
  ∀ n, P9803744706263550024.a n = A127533 n

theorem P9803744706263550024.correct : P9803744706263550024.Spec := by
  intro n
  simp only [A127533]

end A127533

/-! ## A127533.P4006244130552599558

`A051924(n+1)-A002057(n)`
-/

namespace A127533.P4006244130552599558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) - A002057 n

end

end A127533.P4006244130552599558

namespace A127533

/-- `A051924(n+1)-A002057(n)` -/
def P4006244130552599558.Spec : Prop :=
  ∀ n, P4006244130552599558.a n = A127533 n

end A127533

/-! ## A127533.P2400426701658561325

`A026010(2*n)-A002057(n)`
-/

namespace A127533.P2400426701658561325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n) - A002057 n

end

end A127533.P2400426701658561325

namespace A127533

/-- `A026010(2*n)-A002057(n)` -/
def P2400426701658561325.Spec : Prop :=
  ∀ n, P2400426701658561325.a n = A127533 n

end A127533

/-! ## A127533.P16722589180362965146

`Δ[A000984(n)-∑[A099376(n)]]`
-/

namespace A127533.P16722589180362965146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127533.P16722589180362965146

namespace A127533

/-- `Δ[A000984(n)-∑[A099376(n)]]` -/
def P16722589180362965146.Spec : Prop :=
  ∀ n, P16722589180362965146.a n = A127533 n

end A127533

/-! ## A127533.P9184351096684266720

`Δ[A000984(n)]-A099376(n+1)`
-/

namespace A127533.P9184351096684266720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 (n + 1)

end

end A127533.P9184351096684266720

namespace A127533

/-- `Δ[A000984(n)]-A099376(n+1)` -/
def P9184351096684266720.Spec : Prop :=
  ∀ n, P9184351096684266720.a n = A127533 n

end A127533

/-! ## A127533.P11010057901236142465

`Δ[A000984(n)-A279557(n+1)]`
-/

namespace A127533.P11010057901236142465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A279557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127533.P11010057901236142465

namespace A127533

/-- `Δ[A000984(n)-A279557(n+1)]` -/
def P11010057901236142465.Spec : Prop :=
  ∀ n, P11010057901236142465.a n = A127533 n

end A127533

/-! ## A127533.P15714893700590909557

`Δ[A000984(n)]-∑[A071725(n+1)]`
-/

namespace A127533.P15714893700590909557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A127533.P15714893700590909557

namespace A127533

/-- `Δ[A000984(n)]-∑[A071725(n+1)]` -/
def P15714893700590909557.Spec : Prop :=
  ∀ n, P15714893700590909557.a n = A127533 n

end A127533

/-! ## A127533.P9752587735651627067

`A037954(2*n+1)+A037953(2*n)`
-/

namespace A127533.P9752587735651627067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (2 * n + 1) + A037953 (2 * n)

end

end A127533.P9752587735651627067

namespace A127533

/-- `A037954(2*n+1)+A037953(2*n)` -/
def P9752587735651627067.Spec : Prop :=
  ∀ n, P9752587735651627067.a n = A127533 n

end A127533

/-! ## A127533.P8621556952040974383

`A037957(2*n+1)+A037953(2*n)`
-/

namespace A127533.P8621556952040974383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (2 * n + 1) + A037953 (2 * n)

end

end A127533.P8621556952040974383

namespace A127533

/-- `A037957(2*n+1)+A037953(2*n)` -/
def P8621556952040974383.Spec : Prop :=
  ∀ n, P8621556952040974383.a n = A127533 n

end A127533

/-! ## A127533.P9591043463598507797

`A037957(2*n)+A037954(2*n+1)`
-/

namespace A127533.P9591043463598507797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (2 * n) + A037954 (2 * n + 1)

end

end A127533.P9591043463598507797

namespace A127533

/-- `A037957(2*n)+A037954(2*n+1)` -/
def P9591043463598507797.Spec : Prop :=
  ∀ n, P9591043463598507797.a n = A127533 n

end A127533

/-! ## A127533.P3000232399535961344

`A037957(2*n+1)+A037957(2*n)`
-/

namespace A127533.P3000232399535961344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 (2 * n + 1) + A037957 (2 * n)

end

end A127533.P3000232399535961344

namespace A127533

/-- `A037957(2*n+1)+A037957(2*n)` -/
def P3000232399535961344.Spec : Prop :=
  ∀ n, P3000232399535961344.a n = A127533 n

end A127533

/-! ## A127533.P16862289849629332859

`A037953(2*(n+1))-A037951(2*n)`
-/

namespace A127533.P16862289849629332859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (2 * (n + 1)) - A037951 (2 * n)

end

end A127533.P16862289849629332859

namespace A127533

/-- `A037953(2*(n+1))-A037951(2*n)` -/
def P16862289849629332859.Spec : Prop :=
  ∀ n, P16862289849629332859.a n = A127533 n

end A127533

/-! ## A127533.P16335061810219716150

`A037953(2*(n+1))-A037956(2*n)`
-/

namespace A127533.P16335061810219716150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037953 (2 * (n + 1)) - A037956 (2 * n)

end

end A127533.P16335061810219716150

namespace A127533

/-- `A037953(2*(n+1))-A037956(2*n)` -/
def P16335061810219716150.Spec : Prop :=
  ∀ n, P16335061810219716150.a n = A127533 n

end A127533

/-! ## A127533.P8238834553319039389

`A037958(2*n)+2*A037953(2*n)`
-/

namespace A127533.P8238834553319039389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037958 (2 * n) + 2 * A037953 (2 * n)

end

end A127533.P8238834553319039389

namespace A127533

/-- `A037958(2*n)+2*A037953(2*n)` -/
def P8238834553319039389.Spec : Prop :=
  ∀ n, P8238834553319039389.a n = A127533 n

end A127533

/-! ## A127533.P9081251916356227459

`2*A037954(2*n+1)-A037954(2*n)`
-/

namespace A127533.P9081251916356227459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037954 (2 * n + 1) - A037954 (2 * n)

end

end A127533.P9081251916356227459

namespace A127533

/-- `2*A037954(2*n+1)-A037954(2*n)` -/
def P9081251916356227459.Spec : Prop :=
  ∀ n, P9081251916356227459.a n = A127533 n

end A127533

/-! ## A127533.P2049069571790564300

`A000984(n+1)-(A002057(n)+A000984(n))`
-/

namespace A127533.P2049069571790564300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - (A002057 n + A000984 n)

end

end A127533.P2049069571790564300

namespace A127533

/-- `A000984(n+1)-(A002057(n)+A000984(n))` -/
def P2049069571790564300.Spec : Prop :=
  ∀ n, P2049069571790564300.a n = A127533 n

theorem P2049069571790564300.correct : P2049069571790564300.Spec := by
  intro n
  simp only [A127533, Nat.add_sub_cancel, A127533.P2049069571790564300.a, A127533.P9803744706263550024.f1, A127533.P9803744706263550024.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A127533

/-! ## A127533.P5467862595276009696

`A088218(n+1)+A001791(n)-A002057(n)`
-/

namespace A127533.P5467862595276009696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + (A001791 n - A002057 n)

end

end A127533.P5467862595276009696

namespace A127533

/-- `A088218(n+1)+A001791(n)-A002057(n)` -/
def P5467862595276009696.Spec : Prop :=
  ∀ n, P5467862595276009696.a n = A127533 n

end A127533

/-!
# A127534: Number of jumps in all even trees with 2n edges.

The programs for A127534, the canonical program `A127534.P2297780280243781454` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127534 has offset 1).

The definition of A127534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127534.P2297780280243781454

`n*(4*(n+1)-3)*C(3*(n+1), n+1)/(3*(2*(n+1)+1)*(3*(n+1)-1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127534

/-- `n*(4*(n+1)-3)*C(3*(n+1), n+1)/(3*(2*(n+1)+1)*(3*(n+1)-1))` -/
def P2297780280243781454.Spec : Prop :=
  ∀ n, P2297780280243781454.a n = (A127534 (n + 1) : ℚ)

end A127534

/-! ## A127534.P14906116688670567013

`A045721(n)-record[A110616(n)]`
-/

namespace A127534.P14906116688670567013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127534.P14906116688670567013

namespace A127534

/-- `A045721(n)-record[A110616(n)]` -/
def P14906116688670567013.Spec : Prop :=
  ∀ n, P14906116688670567013.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P15656841685765101684

`A045721(n)-record[A127898(n)]`
-/

namespace A127534.P15656841685765101684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127534.P15656841685765101684

namespace A127534

/-- `A045721(n)-record[A127898(n)]` -/
def P15656841685765101684.Spec : Prop :=
  ∀ n, P15656841685765101684.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P14912111782927258290

`A045721(n)-A001764(n+1)`
-/

namespace A127534.P14912111782927258290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n - A001764 (n + 1)

end

end A127534.P14912111782927258290

namespace A127534

/-- `A045721(n)-A001764(n+1)` -/
def P14912111782927258290.Spec : Prop :=
  ∀ n, P14912111782927258290.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P18020397570551190170

`A065942(Δ[n²])-record[A110616(n)]`
-/

namespace A127534.P18020397570551190170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A127534.P18020397570551190170

namespace A127534

/-- `A065942(Δ[n²])-record[A110616(n)]` -/
def P18020397570551190170.Spec : Prop :=
  ∀ n, P18020397570551190170.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P15876350104609121840

`A045721(n)-A047749(2*(n+1))`
-/

namespace A127534.P15876350104609121840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n - A047749 (2 * (n + 1))

end

end A127534.P15876350104609121840

namespace A127534

/-- `A045721(n)-A047749(2*(n+1))` -/
def P15876350104609121840.Spec : Prop :=
  ∀ n, P15876350104609121840.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P11679374281107192864

`A099578(2*n)-A001764(n+1)`
-/

namespace A127534.P11679374281107192864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n) - A001764 (n + 1)

end

end A127534.P11679374281107192864

namespace A127534

/-- `A099578(2*n)-A001764(n+1)` -/
def P11679374281107192864.Spec : Prop :=
  ∀ n, P11679374281107192864.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P8592204223179519833

`A065942(Δ[n²])-A001764(n+1)`
-/

namespace A127534.P8592204223179519833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A001764 (n + 1)

end

end A127534.P8592204223179519833

namespace A127534

/-- `A065942(Δ[n²])-A001764(n+1)` -/
def P8592204223179519833.Spec : Prop :=
  ∀ n, P8592204223179519833.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P11537279659816284909

`A134565(2*(n+1))+A099578(2*n)`
-/

namespace A127534.P11537279659816284909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134565 (2 * (n + 1)) + A099578 (2 * n)

end

end A127534.P11537279659816284909

namespace A127534

/-- `A134565(2*(n+1))+A099578(2*n)` -/
def P11537279659816284909.Spec : Prop :=
  ∀ n, P11537279659816284909.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P4398868041220056881

`(n+1)*A006013(n)-A001764(n+1)`
-/

namespace A127534.P4398868041220056881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006013 n - A001764 (n + 1)

end

end A127534.P4398868041220056881

namespace A127534

/-- `(n+1)*A006013(n)-A001764(n+1)` -/
def P4398868041220056881.Spec : Prop :=
  ∀ n, P4398868041220056881.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P7105917289893394360

`(3*n+1)*A001764(n)-A001764(n+1)`
-/

namespace A127534.P7105917289893394360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A001764 n - A001764 (n + 1)

end

end A127534.P7105917289893394360

namespace A127534

/-- `(3*n+1)*A001764(n)-A001764(n+1)` -/
def P7105917289893394360.Spec : Prop :=
  ∀ n, P7105917289893394360.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P15086101761077644481

`A134565(2*(n+1))+(n+1)*A134565(2*n+1)`
-/

namespace A127534.P15086101761077644481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134565 (2 * (n + 1)) + (n + 1 : ℤ) * A134565 (2 * n + 1)

end

end A127534.P15086101761077644481

namespace A127534

/-- `A134565(2*(n+1))+(n+1)*A134565(2*n+1)` -/
def P15086101761077644481.Spec : Prop :=
  ∀ n, P15086101761077644481.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P9732625259384684003

`A045721(n)-(A188678(n+1)+A188678(n))`
-/

namespace A127534.P9732625259384684003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n - (A188678 (n + 1) + A188678 n)

end

end A127534.P9732625259384684003

namespace A127534

/-- `A045721(n)-(A188678(n+1)+A188678(n))` -/
def P9732625259384684003.Spec : Prop :=
  ∀ n, P9732625259384684003.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P18434690298750102772

`A001764(n)*A016777(n)-A001764(n+1)`
-/

namespace A127534.P18434690298750102772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A016777 n - A001764 (n + 1)

end

end A127534.P18434690298750102772

namespace A127534

/-- `A001764(n)*A016777(n)-A001764(n+1)` -/
def P18434690298750102772.Spec : Prop :=
  ∀ n, P18434690298750102772.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P6766779266892507242

`(A099576(2*n)-A093951(2*n+1))/2`
-/

namespace A127534.P6766779266892507242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099576 (2 * n) - A093951 (2 * n + 1) : ℚ) / 2

end

end A127534.P6766779266892507242

namespace A127534

/-- `(A099576(2*n)-A093951(2*n+1))/2` -/
def P6766779266892507242.Spec : Prop :=
  ∀ n, P6766779266892507242.a n = (A127534 (n + 1) : ℚ)

end A127534

/-! ## A127534.P8090880371840824702

`A099576(2*n+1)-(A127040(2*n)+A099576(2*n))`
-/

namespace A127534.P8090880371840824702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 (2 * n + 1) - (A127040 (2 * n) + A099576 (2 * n))

end

end A127534.P8090880371840824702

namespace A127534

/-- `A099576(2*n+1)-(A127040(2*n)+A099576(2*n))` -/
def P8090880371840824702.Spec : Prop :=
  ∀ n, P8090880371840824702.a n = A127534 (n + 1)

end A127534

/-! ## A127534.P17353629674396887643

`A099576(2*n+1)-(A099578(2*n+1)+A099576(2*n))`
-/

namespace A127534.P17353629674396887643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 (2 * n + 1) - (A099578 (2 * n + 1) + A099576 (2 * n))

end

end A127534.P17353629674396887643

namespace A127534

/-- `A099576(2*n+1)-(A099578(2*n+1)+A099576(2*n))` -/
def P17353629674396887643.Spec : Prop :=
  ∀ n, P17353629674396887643.a n = A127534 (n + 1)

end A127534

/-!
# A127536: Sum of jump-lengths of all even trees with 2n edges.

The programs for A127536, the canonical program `A127536.P3976489637807869491` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127536 has offset 1).

The definition of A127536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127536.P16209841226274327492

`∑{#}[n, #*A127535(C(n+1, 2)+#+1)]`
-/

namespace A127536.P16209841226274327492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A127535 (Nat.choose (n + 1) 2 + k + 1)

end

end A127536.P16209841226274327492

namespace A127536

/-- `∑{#}[n, #*A127535(C(n+1, 2)+#+1)]` -/
def P16209841226274327492.Spec : Prop :=
  ∀ n, P16209841226274327492.a n = A127536 (n + 1)

end A127536

/-! ## A127536.P10825874523738707625

`A025174(n+1)-A006629(n)`
-/

namespace A127536.P10825874523738707625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (n + 1) - A006629 n

end

end A127536.P10825874523738707625

namespace A127536

/-- `A025174(n+1)-A006629(n)` -/
def P10825874523738707625.Spec : Prop :=
  ∀ n, P10825874523738707625.a n = A127536 (n + 1)

end A127536

/-! ## A127536.P3847312875691890973

`A099578(2*n+1)-A006629(n)`
-/

namespace A127536.P3847312875691890973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n + 1) - A006629 n

end

end A127536.P3847312875691890973

namespace A127536

/-- `A099578(2*n+1)-A006629(n)` -/
def P3847312875691890973.Spec : Prop :=
  ∀ n, P3847312875691890973.a n = A127536 (n + 1)

end A127536

/-! ## A127536.P3976489637807869491

`A262394(n+1)+A262394(n+1)-A006013(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127536

/-- `A262394(n+1)+A262394(n+1)-A006013(n+1)` -/
def P3976489637807869491.Spec : Prop :=
  ∀ n, P3976489637807869491.a n = A127536 (n + 1)

theorem P3976489637807869491.correct : P3976489637807869491.Spec := by
  intro n
  simp only [A127536, Nat.add_sub_cancel]

end A127536

/-! ## A127536.P7727044536178221061

`A232223(∑[n+2])`
-/

namespace A127536.P7727044536178221061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127536.P7727044536178221061

namespace A127536

/-- `A232223(∑[n+2])` -/
def P7727044536178221061.Spec : Prop :=
  ∀ n, P7727044536178221061.a n = A127536 (n + 1)

end A127536

/-!
# A127538: Triangle read by rows: T(n,k) is the number of ordered trees with n edges having k odd-length branches starting at the root (0<=k<=n).

The programs for A127538, there is no canonical definition to state claims against.
-/

/-! ## A127538.P15521554500516001693

`A237271(A336425(n))-A057427(n)`
-/

namespace A127538.P15521554500516001693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A336425 n).toNat - A057427 n

end

end A127538.P15521554500516001693

/-! ## A127538.P6281106408778385784

`A064286(A280779(n)+A002117(n+1))`
-/

namespace A127538.P6281106408778385784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064286 (A280779 n + A002117 (n + 1)).toNat

end

end A127538.P6281106408778385784

/-! ## A127538.P14410561576703593506

`A224861(A056242(n+1))+A099174(n)`
-/

namespace A127538.P14410561576703593506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224861 (A056242 (n + 1)).toNat + A099174 n

end

end A127538.P14410561576703593506

/-! ## A127538.P12332046984524130463

`A348528(A060540(n+1))+A099174(n)`
-/

namespace A127538.P12332046984524130463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 (A060540 (n + 1)).toNat + A099174 n

end

end A127538.P12332046984524130463

/-! ## A127538.P1443685466458882689

`A007814(A337412(n+1)+A000040(2*n+3))`
-/

namespace A127538.P1443685466458882689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A337412 (n + 1) + A000040 (2 * n + 3)).toNat

end

end A127538.P1443685466458882689

/-!
# A127539: Number of ordered trees with n edges having no odd-length branches starting at the root.

The programs for A127539, there is no canonical definition to state claims against.
-/

/-! ## A127539.P335655106513976724

`A127538(∑[n])`
-/

namespace A127539.P335655106513976724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127539.P335655106513976724

/-! ## A127539.P11475648438189202825

`(char[3]+1)*A127538(A000217(n))`
-/

namespace A127539.P11475648438189202825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A127538 (A000217 n).toNat

end

end A127539.P11475648438189202825

/-! ## A127539.P8607131935602705389

`A326540(n)+A127538(C(n+1, 2))`
-/

namespace A127539.P8607131935602705389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 n + A127538 (Nat.choose (n + 1) 2)

end

end A127539.P8607131935602705389

/-! ## A127539.P3120030710516466638

`A127538(C(n+1, 2))+A034495(n+1)`
-/

namespace A127539.P3120030710516466638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127538 (Nat.choose (n + 1) 2) + A034495 (n + 1)

end

end A127539.P3120030710516466638

/-! ## A127539.P5909578757910766794

`A308979(n)+A127538(A000217(n))`
-/

namespace A127539.P5909578757910766794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308979 n + A127538 (A000217 n).toNat

end

end A127539.P5909578757910766794

/-!
# A127540: Number of odd-length branches starting at the root in all ordered trees with n edges.

The programs for A127540, the canonical program `A127540.P10408115391990332246` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127540 has offset 0).

The definition of A127540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127540.P364574618184013239

`∑{#}[n, #*A127538(C(n+1, 2)+#)]`
-/

namespace A127540.P364574618184013239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A127538 (Nat.choose (n + 1) 2 + k)

end

end A127540.P364574618184013239

namespace A127540

/-- `∑{#}[n, #*A127538(C(n+1, 2)+#)]` -/
def P364574618184013239.Spec : Prop :=
  ∀ n, P364574618184013239.a n = A127540 n

end A127540

/-! ## A127540.P2032366006296309969

`Δ[(4-6/(n+1))*a(n-1)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A127540.P2032366006296309969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A127540.P2032366006296309969

namespace A127540

/-- `Δ[(4-6/(n+1))*a(n-1)]-a(n-1)` -/
def P2032366006296309969.Spec : Prop :=
  ∀ n, P2032366006296309969.a n = (A127540 n : ℚ)

end A127540

/-! ## A127540.P10408115391990332246

`Δ[A032357(n)+n%2]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127540

/-- `Δ[A032357(n)+n%2]` -/
def P10408115391990332246.Spec : Prop :=
  ∀ n, P10408115391990332246.a n = A127540 n

theorem P10408115391990332246.correct : P10408115391990332246.Spec := by
  intro n
  simp only [A127540]

end A127540

/-! ## A127540.P11631649094903421418

`A000245(n)-a(n-1)` with `a(0)=0`
-/

namespace A127540.P11631649094903421418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000245 n - a (n - 1)

end

end A127540.P11631649094903421418

namespace A127540

/-- `A000245(n)-a(n-1)` -/
def P11631649094903421418.Spec : Prop :=
  ∀ n, P11631649094903421418.a n = A127540 n

end A127540

/-! ## A127540.P11210737761757614839

`A071724(n)-a(n-1)` with `a(0)=0`
-/

namespace A127540.P11210737761757614839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A071724 n - a (n - 1)

end

end A127540.P11210737761757614839

namespace A127540

/-- `A071724(n)-a(n-1)` -/
def P11210737761757614839.Spec : Prop :=
  ∀ n, P11210737761757614839.a n = A127540 n

end A127540

/-! ## A127540.P17706815581005252272

`Δ[A000108(n)]-a(n-1)` with `a(0)=0`
-/

namespace A127540.P17706815581005252272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A127540.P17706815581005252272

namespace A127540

/-- `Δ[A000108(n)]-a(n-1)` -/
def P17706815581005252272.Spec : Prop :=
  ∀ n, P17706815581005252272.a n = A127540 n

end A127540

/-! ## A127540.P12241434211739029030

`Δ[A120304(n)]-a(n-1)` with `a(0)=0`
-/

namespace A127540.P12241434211739029030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A127540.P12241434211739029030

namespace A127540

/-- `Δ[A120304(n)]-a(n-1)` -/
def P12241434211739029030.Spec : Prop :=
  ∀ n, P12241434211739029030.a n = A127540 n

end A127540

/-! ## A127540.P16324452325724001619

`Δ[A028303(2*n)]-a(n-1)` with `a(0)=0`
-/

namespace A127540.P16324452325724001619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A127540.P16324452325724001619

namespace A127540

/-- `Δ[A028303(2*n)]-a(n-1)` -/
def P16324452325724001619.Spec : Prop :=
  ∀ n, P16324452325724001619.a n = A127540 n

end A127540

/-! ## A127540.P16040378339987832803

`Δ[A032357(n)+A000034(n)]`
-/

namespace A127540.P16040378339987832803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032357 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127540.P16040378339987832803

namespace A127540

/-- `Δ[A032357(n)+A000034(n)]` -/
def P16040378339987832803.Spec : Prop :=
  ∀ n, P16040378339987832803.a n = A127540 n

theorem P16040378339987832803.correct : P16040378339987832803.Spec := by
  intro n
  simp only [A127540, Nat.add_sub_cancel, A127540.P16040378339987832803.f1, A127540.P16040378339987832803.a, A127540.P10408115391990332246.f1, A127540.P10408115391990332246.a, A000034, A000034.P10773112074177680709.a, A032357, A032357.P17874980805433282385.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127540

/-! ## A127540.P9963510989576431758

`A033999(n)+Δ[A032357(n)]`
-/

namespace A127540.P9963510989576431758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (f1 (n + 1) - f1 n)

end

end A127540.P9963510989576431758

namespace A127540

/-- `A033999(n)+Δ[A032357(n)]` -/
def P9963510989576431758.Spec : Prop :=
  ∀ n, P9963510989576431758.a n = A127540 n

end A127540

/-! ## A127540.P10124735013331908167

`A033297(n+2)-A032357(n)`
-/

namespace A127540.P10124735013331908167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033297 (n + 2) - A032357 n

end

end A127540.P10124735013331908167

namespace A127540

/-- `A033297(n+2)-A032357(n)` -/
def P10124735013331908167.Spec : Prop :=
  ∀ n, P10124735013331908167.a n = A127540 n

end A127540

/-! ## A127540.P16527397132593749322

`abs(∑[A168491(n+1)+A168491(n)])`
-/

namespace A127540.P16527397132593749322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 (n + 1) + A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A127540.P16527397132593749322

namespace A127540

/-- `abs(∑[A168491(n+1)+A168491(n)])` -/
def P16527397132593749322.Spec : Prop :=
  ∀ n, P16527397132593749322.a n = A127540 n

end A127540

/-! ## A127540.P11783728848893439208

`A000108(n+1)-(a(n-1)+A000108(n))` with `a(0)=0`
-/

namespace A127540.P11783728848893439208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000108 (n + 1) - (a (n - 1) + A000108 n)

end

end A127540.P11783728848893439208

namespace A127540

/-- `A000108(n+1)-(a(n-1)+A000108(n))` -/
def P11783728848893439208.Spec : Prop :=
  ∀ n, P11783728848893439208.a n = A127540 n

end A127540

/-! ## A127540.P9551938378551652393

`A032357(n+1)+A033999(n)-A032357(n)`
-/

namespace A127540.P9551938378551652393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032357 (n + 1) + (A033999 n - A032357 n)

end

end A127540.P9551938378551652393

namespace A127540

/-- `A032357(n+1)+A033999(n)-A032357(n)` -/
def P9551938378551652393.Spec : Prop :=
  ∀ n, P9551938378551652393.a n = A127540 n

end A127540

/-! ## A127540.P1105639689576487698

`Δ[C(2*n, n)/(n+1)]-a(n-1)` with `a(0)=0`
-/

namespace A127540.P1105639689576487698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A127540.P1105639689576487698

namespace A127540

/-- `Δ[C(2*n, n)/(n+1)]-a(n-1)` -/
def P1105639689576487698.Spec : Prop :=
  ∀ n, P1105639689576487698.a n = (A127540 n : ℚ)

end A127540

/-! ## A127540.P1938864236765819869

`A033297(n+2)-A271453(A000217(n))`
-/

namespace A127540.P1938864236765819869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033297 (n + 2) - A271453 (A000217 n).toNat

end

end A127540.P1938864236765819869

namespace A127540

/-- `A033297(n+2)-A271453(A000217(n))` -/
def P1938864236765819869.Spec : Prop :=
  ∀ n, P1938864236765819869.a n = A127540 n

end A127540

/-!
# A127543: Triangle T(n,k), 0<=k<=n, read by rows given by :[ -1,1,1,1,1,1,1,...] DELTA [1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A127543, there is no canonical definition to state claims against.
-/

/-! ## A127543.P11779206586837013954

`Δ[A276996(A276995(n)²)]`
-/

namespace A127543.P11779206586837013954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276996 (A276995 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127543.P11779206586837013954

/-! ## A127543.P6838289691799042141

`A210709(2*n)+Δ[A215200(n+1)]`
-/

namespace A127543.P6838289691799042141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (2 * n) + (f1 (n + 1) - f1 n)

end

end A127543.P6838289691799042141

/-! ## A127543.P8349534131039240651

`A214411(A025626(n+3))-A025581(n)`
-/

namespace A127543.P8349534131039240651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A025626 (n + 3)).toNat - A025581 n

end

end A127543.P8349534131039240651

/-! ## A127543.P17520168390270270674

`A214411(A025626(n+3))-A025669(n+1)`
-/

namespace A127543.P17520168390270270674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A025626 (n + 3)).toNat - A025669 (n + 1)

end

end A127543.P17520168390270270674

/-! ## A127543.P13517959862797152423

`Δ[A020639(A113088(n))-A323718(n)]`
-/

namespace A127543.P13517959862797152423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A113088 n).toNat - A323718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127543.P13517959862797152423

/-!
# A127544: Partition numbers (A000041) which are multiples of 10 (A008592).

The programs for A127544, there is no canonical definition to state claims against.
-/

/-! ## A127544.P9881379490179100833

`10*A225317(n+1)`
-/

namespace A127544.P9881379490179100833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A225317 (n + 1)

end

end A127544.P9881379490179100833

/-! ## A127544.P5842450991539926919

`A000041(eq[0, A178743(n)])`
-/

namespace A127544.P5842450991539926919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127544.P5842450991539926919

/-! ## A127544.P239564481484786672

`A000041(lt[A178743(n), 1])`
-/

namespace A127544.P239564481484786672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178743 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A127544.P239564481484786672

/-! ## A127544.P8850872922578941765

`A000041(eq[0, A000041(n)%10])`
-/

namespace A127544.P8850872922578941765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127544.P8850872922578941765

/-! ## A127544.P9320089215060891158

`A000041(lt[5, gcd(10, A000041(n))])`
-/

namespace A127544.P9320089215060891158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127544.P9320089215060891158

/-!
# A127545: Multiples of 7, k, such that k +/ - 1 are twin primes.

The programs for A127545, there is no canonical definition to state claims against.
-/

/-! ## A127545.P18446667858805355867

`7*A173904(n+1)`
-/

namespace A127545.P18446667858805355867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A173904 (n + 1)

end

end A127545.P18446667858805355867

/-! ## A127545.P211077472047759720

`14*A124520(n+1)`
-/

namespace A127545.P211077472047759720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A124520 (n + 1)

end

end A127545.P211077472047759720

/-! ## A127545.P14914575035366191334

`p?[A124826(n+1)-2]+1`
-/

namespace A127545.P14914575035366191334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A127545.P14914575035366191334

/-! ## A127545.P11241393640586960815

`p?[A141898(n+1)+2]-1`
-/

namespace A127545.P11241393640586960815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A127545.P11241393640586960815

/-! ## A127545.P4086752011612503585

`p?[A140444(n+1)-2]+1`
-/

namespace A127545.P4086752011612503585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A127545.P4086752011612503585

/-! ## A127545.P3713804837261525409

`p?[A045465(n+2)-2]+1`
-/

namespace A127545.P3713804837261525409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A127545.P3713804837261525409

/-! ## A127545.P2702101194824257182

`p?[A045473(n+1)+2]-1`
-/

namespace A127545.P2702101194824257182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A127545.P2702101194824257182

/-! ## A127545.P4273694526153255573

`p?[p?[7*n+1]-2]+1`
-/

namespace A127545.P4273694526153255573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A127545.P4273694526153255573

/-! ## A127545.P18401329662248460877

`∩[2*A008603(n), A014574(n+1)]`
-/

namespace A127545.P18401329662248460877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P18401329662248460877

/-! ## A127545.P11117376066342412033

`∩[2*A008603(n), A217259(n+1)]`
-/

namespace A127545.P11117376066342412033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P11117376066342412033

/-! ## A127545.P11844793344069454131

`∩[A014574(n+1), A008603(n)]`
-/

namespace A127545.P11844793344069454131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P11844793344069454131

/-! ## A127545.P7687896762484135144

`∩[A217259(n+1), A008603(n)]`
-/

namespace A127545.P7687896762484135144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P7687896762484135144

/-! ## A127545.P12074339792612442142

`∩[A387935(n+1), A008603(n)]`
-/

namespace A127545.P12074339792612442142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P12074339792612442142

/-! ## A127545.P2950731920081921133

`A008596(A124520(n+1)-n)+A008596(n)`
-/

namespace A127545.P2950731920081921133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (A124520 (n + 1) - (n : ℤ)).toNat + A008596 n

end

end A127545.P2950731920081921133

/-! ## A127545.P7937491671930657060

`A008596(A124520(n+1))`
-/

namespace A127545.P7937491671930657060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (A124520 (n + 1)).toNat

end

end A127545.P7937491671930657060

/-! ## A127545.P13139825581477602727

`∩[A014574(n+1), A008596(n)]`
-/

namespace A127545.P13139825581477602727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P13139825581477602727

/-! ## A127545.P10437607745295242929

`∩[A056853(n+1), A008596(n)]`
-/

namespace A127545.P10437607745295242929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P10437607745295242929

/-! ## A127545.P16501826495543558320

`∩[A217259(n+1), A008596(n)]`
-/

namespace A127545.P16501826495543558320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P16501826495543558320

/-! ## A127545.P1862884843469369580

`∩[2*A008589(n), A014574(n+1)]`
-/

namespace A127545.P1862884843469369580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P1862884843469369580

/-! ## A127545.P17436136593263583976

`∩[A167706(n+1), A008596(n)]`
-/

namespace A127545.P17436136593263583976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127545.P17436136593263583976

/-!
# A127546: a(n) = F(n)^2 + F(n+1)^2 + F(n+2)^2, where F(n) denotes the n-th Fibonacci number.

The programs for A127546, the canonical program `A127546.P1234568312699290565` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127546 has offset 0).

The definition of A127546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²+A000045(n+1)²+A000045(n+2)²` (program `A127546.P1234568312699290565`, by `A127546.P1234568312699290565.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127546.P9268214524377707729

`ogf((2+2x-2x^2)/(1-2x-2x^2+x^3))`
-/

namespace A127546.P9268214524377707729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2] [1, -2, -2, 1] n

end

end A127546.P9268214524377707729

namespace A127546

/-- `ogf((2+2x-2x^2)/(1-2x-2x^2+x^3))` -/
def P9268214524377707729.Spec : Prop :=
  ∀ n, P9268214524377707729.a n = A127546 n

end A127546

/-! ## A127546.P9693230538363838346

`3*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=2, a(1)=6`
-/

namespace A127546.P9693230538363838346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * (-1) ^ n

end

end A127546.P9693230538363838346

namespace A127546

/-- `3*a(n-1)-a(n-2)-2*(-1)^n` -/
def P9693230538363838346.Spec : Prop :=
  ∀ n, P9693230538363838346.a n = A127546 n

end A127546

/-! ## A127546.P10901481343964750460

`4*A000045(n+1)²-2*(-1)^n`
-/

namespace A127546.P10901481343964750460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 1) ^ 2 - 2 * (-1) ^ n

end

end A127546.P10901481343964750460

namespace A127546

/-- `4*A000045(n+1)²-2*(-1)^n` -/
def P10901481343964750460.Spec : Prop :=
  ∀ n, P10901481343964750460.a n = A127546 n

end A127546

/-! ## A127546.P1234568312699290565

`A000045(n)²+A000045(n+1)²+A000045(n+2)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127546

/-- `A000045(n)²+A000045(n+1)²+A000045(n+2)²` -/
def P1234568312699290565.Spec : Prop :=
  ∀ n, P1234568312699290565.a n = A127546 n

theorem P1234568312699290565.correct : P1234568312699290565.Spec := by
  intro n
  simp only [A127546]

end A127546

/-! ## A127546.P589524676671525105

`2*Δ[A110035(n)]`
-/

namespace A127546.P589524676671525105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A127546.P589524676671525105

namespace A127546

/-- `2*Δ[A110035(n)]` -/
def P589524676671525105.Spec : Prop :=
  ∀ n, P589524676671525105.a n = A127546 n

end A127546

/-! ## A127546.P17650111964285969940

`record[lcm(2, A293411(n))]`
-/

namespace A127546.P17650111964285969940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A293411 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127546.P17650111964285969940

namespace A127546

/-- `record[lcm(2, A293411(n))]` -/
def P17650111964285969940.Spec : Prop :=
  ∀ n, (P17650111964285969940.a n : ℤ) = A127546 n

end A127546

/-! ## A127546.P12887036718655414324

`4*A064831(n)+2`
-/

namespace A127546.P12887036718655414324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A064831 n + 2

end

end A127546.P12887036718655414324

namespace A127546

/-- `4*A064831(n)+2` -/
def P12887036718655414324.Spec : Prop :=
  ∀ n, P12887036718655414324.a n = A127546 n

end A127546

/-! ## A127546.P7958969299322511045

`2*A293411(2*n)`
-/

namespace A127546.P7958969299322511045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293411 (2 * n)

end

end A127546.P7958969299322511045

namespace A127546

/-- `2*A293411(2*n)` -/
def P7958969299322511045.Spec : Prop :=
  ∀ n, P7958969299322511045.a n = A127546 n

end A127546

/-! ## A127546.P16164542222708819670

`∑[4*A001654(n)]+2`
-/

namespace A127546.P16164542222708819670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A127546.P16164542222708819670

namespace A127546

/-- `∑[4*A001654(n)]+2` -/
def P16164542222708819670.Spec : Prop :=
  ∀ n, P16164542222708819670.a n = A127546 n

end A127546

/-! ## A127546.P6429735149572241767

`2*A126116(2*(n+1))`
-/

namespace A127546.P6429735149572241767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126116 (2 * (n + 1))

end

end A127546.P6429735149572241767

namespace A127546

/-- `2*A126116(2*(n+1))` -/
def P6429735149572241767.Spec : Prop :=
  ∀ n, P6429735149572241767.a n = A127546 n

end A127546

/-! ## A127546.P14340818413720218678

`2*A295671(2*(n+2))`
-/

namespace A127546.P14340818413720218678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295671 (2 * (n + 2))

end

end A127546.P14340818413720218678

namespace A127546

/-- `2*A295671(2*(n+2))` -/
def P14340818413720218678.Spec : Prop :=
  ∀ n, P14340818413720218678.a n = A127546 n

end A127546

/-! ## A127546.P3666171429129405060

`2*or(1, A192873(n+1))`
-/

namespace A127546.P3666171429129405060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A192873 (n + 1))

end

end A127546.P3666171429129405060

namespace A127546

/-- `2*or(1, A192873(n+1))` -/
def P3666171429129405060.Spec : Prop :=
  ∀ n, P3666171429129405060.a n = A127546 n

end A127546

/-! ## A127546.P11254605630922916701

`2*(∑[∑[A175395(n)]]+1)`
-/

namespace A127546.P11254605630922916701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127546.P11254605630922916701

namespace A127546

/-- `2*(∑[∑[A175395(n)]]+1)` -/
def P11254605630922916701.Spec : Prop :=
  ∀ n, P11254605630922916701.a n = A127546 n

end A127546

/-! ## A127546.P9693945206803190543

`∑[∑[(2*A000045(n))²]]+2`
-/

namespace A127546.P9693945206803190543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000045 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A127546.P9693945206803190543

namespace A127546

/-- `∑[∑[(2*A000045(n))²]]+2` -/
def P9693945206803190543.Spec : Prop :=
  ∀ n, P9693945206803190543.a n = A127546 n

end A127546

/-! ## A127546.P10940643128869316036

`round((2/ϕ*A000045(n+2))²)`
-/

namespace A127546.P10940643128869316036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 / Real.goldenRatio * (A000045 (n + 2) : ℝ)) ^ 2)

end

end A127546.P10940643128869316036

namespace A127546

/-- `round((2/ϕ*A000045(n+2))²)` -/
def P10940643128869316036.Spec : Prop :=
  ∀ n, P10940643128869316036.a n = A127546 n

end A127546

/-! ## A127546.P4098855065814068049

`4*A000045(Δ[n²])-a(n-1)` with `a(0)=2`
-/

namespace A127546.P4098855065814068049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1)

end

end A127546.P4098855065814068049

namespace A127546

/-- `4*A000045(Δ[n²])-a(n-1)` -/
def P4098855065814068049.Spec : Prop :=
  ∀ n, P4098855065814068049.a n = A127546 n

end A127546

/-! ## A127546.P15515731441407377232

`2*(2*A000045(n+1)²-(-1)^n)`
-/

namespace A127546.P15515731441407377232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A000045 (n + 1) ^ 2 - (-1) ^ n)

end

end A127546.P15515731441407377232

namespace A127546

/-- `2*(2*A000045(n+1)²-(-1)^n)` -/
def P15515731441407377232.Spec : Prop :=
  ∀ n, P15515731441407377232.a n = A127546 n

end A127546

/-! ## A127546.P5557112874113962333

`2*2*A000045(2*n+1)-a(n-1)` with `a(0)=2`
-/

namespace A127546.P5557112874113962333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (2 * A000045 (2 * n + 1)) - a (n - 1)

end

end A127546.P5557112874113962333

namespace A127546

/-- `2*2*A000045(2*n+1)-a(n-1)` -/
def P5557112874113962333.Spec : Prop :=
  ∀ n, P5557112874113962333.a n = A127546 n

end A127546

/-! ## A127546.P11951725751606379971

`A048575(n)+A007598(n)`
-/

namespace A127546.P11951725751606379971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n + A007598 n

end

end A127546.P11951725751606379971

namespace A127546

/-- `A048575(n)+A007598(n)` -/
def P11951725751606379971.Spec : Prop :=
  ∀ n, P11951725751606379971.a n = A127546 n

end A127546

/-!
# A127547: a(n) = 13*n + 4.

The programs for A127547, the canonical program `A127547.P10889722998451657340` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127547 has offset 0).

The definition of A127547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n+4` (program `A127547.P10889722998451657340`, by `A127547.P10889722998451657340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127547.P10889722998451657340

`13*n+4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127547

/-- `13*n+4` -/
def P10889722998451657340.Spec : Prop :=
  ∀ n, (P10889722998451657340.a n : ℤ) = A127547 n

theorem P10889722998451657340.correct : P10889722998451657340.Spec := by
  intro n
  simp only [A127547]

end A127547

/-!
# A127548: O.g.f.: Sum_{n>=0} n!*(x/(1+x)^2)^n.

The programs for A127548, there is no canonical definition to state claims against.
-/

/-! ## A127548.P12067180835664973278

`A078509(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A127548.P12067180835664973278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A078509 n - a (n - 1)

end

end A127548.P12067180835664973278

/-! ## A127548.P274433081439121528

`2*A000271(n)-A000179(n)`
-/

namespace A127548.P274433081439121528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000271 n - A000179 n

end

end A127548.P274433081439121528

/-! ## A127548.P11960381480951229066

`A000425(n+1)/(n+1)-A000179(n)`
-/

namespace A127548.P11960381480951229066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000425 (n + 1) : ℚ) / (n + 1 : ℚ) - (A000179 n : ℚ)

end

end A127548.P11960381480951229066

/-! ## A127548.P3148051945741032334

`A000270(n)/A003056(A000124(n))`
-/

namespace A127548.P3148051945741032334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000270 n : ℚ) / (A003056 (A000124 n).toNat : ℚ)

end

end A127548.P3148051945741032334

/-! ## A127548.P14609133564947198504

`A000270(n)/A008619(A004273(n))`
-/

namespace A127548.P14609133564947198504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000270 n : ℚ) / (A008619 (A004273 n).toNat : ℚ)

end

end A127548.P14609133564947198504

/-! ## A127548.P10190670583724375259

`A000270(n)/A162514(A133263(n))`
-/

namespace A127548.P10190670583724375259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000270 n : ℚ) / (A162514 (A133263 n).toNat : ℚ)

end

end A127548.P10190670583724375259

/-! ## A127548.P9989996734891998113

`A000270(n)/A003602(A004280(n+1))`
-/

namespace A127548.P9989996734891998113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000270 n : ℚ) / (A003602 (A004280 (n + 1)).toNat : ℚ)

end

end A127548.P9989996734891998113

/-!
# A127549: Decimal expansion of the number 1.31303673643358290638395160264... having continued fraction expansion 1, 3, 5, 7, 11, 13, 17, 19, ...

The programs for A127549, there is no canonical definition to state claims against.
-/

/-! ## A127549.P15909131444430317126

`A064442(and(2, a(n-1)²)+n)` with `a(0)=1`
-/

namespace A127549.P15909131444430317126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064442 ((Int.land 2 (a (n - 1) ^ 2) + (n : ℤ)).toNat + 1)

end

end A127549.P15909131444430317126

/-! ## A127549.P4509763886952682351

`A064442(n-and(2, a(n-1)²))` with `a(0)=1`
-/

namespace A127549.P4509763886952682351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064442 (((n : ℤ) - Int.land 2 (a (n - 1) ^ 2)).toNat + 1)

end

end A127549.P4509763886952682351

/-! ## A127549.P5825462162257907384

`A064442(A000038(n)+n)`
-/

namespace A127549.P5825462162257907384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064442 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A127549.P5825462162257907384

/-! ## A127549.P12681146751043036989

`A064442(xor(n, A000038(n)))`
-/

namespace A127549.P12681146751043036989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064442 ((Int.xor (n : ℤ) (A000038 n)).toNat + 1)

end

end A127549.P12681146751043036989

/-! ## A127549.P9117050905261730290

`A064442(n)-A000038(n)/2`
-/

namespace A127549.P9117050905261730290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064442 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A127549.P9117050905261730290

/-! ## A127549.P9393752654289003567

`A064442(and(8, A064442(a(n-1)))+n)` with `a(0)=1`
-/

namespace A127549.P9393752654289003567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064442 ((Int.land 8 (A064442 ((a (n - 1)).toNat + 1)) + (n : ℤ)).toNat + 1)

end

end A127549.P9393752654289003567

/-! ## A127549.P7593712017163035726

`A064442(n-and(8, A064442(a(n-1))))` with `a(0)=1`
-/

namespace A127549.P7593712017163035726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064442 (((n : ℤ) - Int.land 8 (A064442 ((a (n - 1)).toNat + 1))).toNat + 1)

end

end A127549.P7593712017163035726

/-! ## A127549.P5491740609073720931

`A064442(n)-floor(2/A326621(n+1))`
-/

namespace A127549.P5491740609073720931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064442 (n + 1) - ⌊2 / (A326621 (n + 1) : ℚ)⌋

end

end A127549.P5491740609073720931

/-!
# A127553: a(n) = Product_{k=1..n} lcm(k,n)/gcd(k,n).

The programs for A127553, the canonical program `A127553.P16603871116089107536` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127553 has offset 1).

The definition of A127553 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, A071248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127553.P16603871116089107536

`A071248(n+1)/A067911(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127553

/-- `A071248(n+1)/A067911(n+1)` -/
def P16603871116089107536.Spec : Prop :=
  ∀ n, P16603871116089107536.a n = (A127553 (n + 1) : ℚ)

end A127553

/-! ## A127553.P9617225242810824260

`(n+1)!*A308944(n+1)`
-/

namespace A127553.P9617225242810824260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A308944 (n + 1)

end

end A127553.P9617225242810824260

namespace A127553

/-- `(n+1)!*A308944(n+1)` -/
def P9617225242810824260.Spec : Prop :=
  ∀ n, P9617225242810824260.a n = A127553 (n + 1)

end A127553

/-! ## A127553.P6771360742738357319

`A056916(n+1)*A119619(n+1)`
-/

namespace A127553.P6771360742738357319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056916 (n + 1) * A119619 (n + 1)

end

end A127553.P6771360742738357319

namespace A127553

/-- `A056916(n+1)*A119619(n+1)` -/
def P6771360742738357319.Spec : Prop :=
  ∀ n, P6771360742738357319.a n = A127553 (n + 1)

end A127553

/-! ## A127553.P1895049102286923073

`A000142(n+1)*A308944(n+1)`
-/

namespace A127553.P1895049102286923073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A308944 (n + 1)

end

end A127553.P1895049102286923073

namespace A127553

/-- `A000142(n+1)*A308944(n+1)` -/
def P1895049102286923073.Spec : Prop :=
  ∀ n, P1895049102286923073.a n = A127553 (n + 1)

end A127553

/-! ## A127553.P5254528270354292576

`n!/A051190(n+1)*A056916(n+1)`
-/

namespace A127553.P5254528270354292576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A051190 (n + 1) : ℚ) * (A056916 (n + 1) : ℚ)

end

end A127553.P5254528270354292576

namespace A127553

/-- `n!/A051190(n+1)*A056916(n+1)` -/
def P5254528270354292576.Spec : Prop :=
  ∀ n, P5254528270354292576.a n = (A127553 (n + 1) : ℚ)

end A127553

/-!
# A127554: Sum of the digits of left factorial !n.

The programs for A127554, there is no canonical definition to state claims against.
-/

/-! ## A127554.P3754037193092696843

`∑{digits}[∑[abs(1-n)!]-1, #]`
-/

namespace A127554.P3754037193092696843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A127554.P3754037193092696843

/-! ## A127554.P17291431415255513079

`∑{digits}[a(n-1)+(n-1)!, #]` with `a(0)=0`
-/

namespace A127554.P17291431415255513079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A127554.P17291431415255513079

/-! ## A127554.P7859628851473194825

`∑{digits}[A003422(n), #]`
-/

namespace A127554.P7859628851473194825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A127554.P7859628851473194825

/-! ## A127554.P6658914953271673459

`∑{digits}[∑[A104150(n)], #]`
-/

namespace A127554.P6658914953271673459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A127554.P6658914953271673459

/-! ## A127554.P15814822139074169518

`∑{digits}[1-A067078(n+1), #]`
-/

namespace A127554.P15814822139074169518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A067078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A127554.P15814822139074169518

/-! ## A127554.P16315115977916426881

`∑{digits}[∑[A132393(A000124(n))], #]`
-/

namespace A127554.P16315115977916426881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000124 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A127554.P16315115977916426881

/-! ## A127554.P3150108355583676572

`∑{digits}[n!-∑[n!], #]`
-/

namespace A127554.P3150108355583676572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A127554.P3150108355583676572

/-! ## A127554.P10902971592240512113

`∑{digits}[A000142(n)-∑[A000142(n)], #]`
-/

namespace A127554.P10902971592240512113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A127554.P10902971592240512113

/-!
# A127560: Number of fixed r-celled polyominoes with smallest containing rectangle measuring k by m, read in order r=A056556(n)+1, k=A056560(n)+1, m=A056558(n)+1.

The programs for A127560, there is no canonical definition to state claims against.
-/

/-! ## A127560.P12933692016042539708

`A329615(A109377(n+1))`
-/

namespace A127560.P12933692016042539708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329615 (A109377 (n + 1)).toNat

end

end A127560.P12933692016042539708

/-! ## A127560.P15760085804425159951

`A052343(p?[A028791(n+1)])²`
-/

namespace A127560.P15760085804425159951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 2

end

end A127560.P15760085804425159951

/-! ## A127560.P7521101656290545249

`A052344(p?[A028791(n+1)])²`
-/

namespace A127560.P7521101656290545249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 2

end

end A127560.P7521101656290545249

/-! ## A127560.P978797978520993779

`and(A101603(n), A333989(A346303(n+2)))`
-/

namespace A127560.P978797978520993779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101603 n) (A333989 (A346303 (n + 2)).toNat)

end

end A127560.P978797978520993779

/-! ## A127560.P4796200974823623536

`A052344(p?[A028791(n+1)])^A001222(n+1)`
-/

namespace A127560.P4796200974823623536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A127560.P4796200974823623536

/-!
# A127561: Array T(n,k) = n^2+5*n*k+5*k^2 read downwards antidiagonals, n,k>=0.

The programs for A127561, the canonical program `A127561.P16741325488187197281` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127561 has offset 0).

The definition of A127561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)²+5*col(n)*(row(n)-col(n))+5*(row(n)-col(n))²` (program `A127561.P16741325488187197281`, by `A127561.P16741325488187197281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127561.P16741325488187197281

`col(n)²+5*col(n)*(row(n)-col(n))+5*(row(n)-col(n))²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127561

/-- `col(n)²+5*col(n)*(row(n)-col(n))+5*(row(n)-col(n))²` -/
def P16741325488187197281.Spec : Prop :=
  ∀ n, P16741325488187197281.a n = A127561 n

theorem P16741325488187197281.correct : P16741325488187197281.Spec := by
  intro n
  simp only [A127561]

end A127561

/-! ## A127561.P2191745857708366985

`A091435(n)+A294317(n)²`
-/

namespace A127561.P2191745857708366985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + A294317 n ^ 2

end

end A127561.P2191745857708366985

namespace A127561

/-- `A091435(n)+A294317(n)²` -/
def P2191745857708366985.Spec : Prop :=
  ∀ n, P2191745857708366985.a n = A127561 n

theorem P2191745857708366985.correct : P2191745857708366985.Spec := by
  intro n
  simp only [A127561, Nat.add_sub_cancel, A127561.P2191745857708366985.a, A127561.P16741325488187197281.a, A091435, A091435.P4633070448187892032.a, A294317, A294317.P6597418737474744620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127561

/-! ## A127561.P13839155452726836269

`A091435(n)+(1-A128076(n+1))²`
-/

namespace A127561.P13839155452726836269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + (1 - A128076 (n + 1)) ^ 2

end

end A127561.P13839155452726836269

namespace A127561

/-- `A091435(n)+(1-A128076(n+1))²` -/
def P13839155452726836269.Spec : Prop :=
  ∀ n, P13839155452726836269.a n = A127561 n

theorem P13839155452726836269.correct : P13839155452726836269.Spec := by
  intro n
  simp only [A127561, Nat.add_sub_cancel, A127561.P13839155452726836269.a, A127561.P16741325488187197281.a, A091435, A091435.P4633070448187892032.a, A128076, A128076.P18422387938473498740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127561

/-! ## A127561.P12265589204201162547

`A091435(n)+A051162(A061579(n))²`
-/

namespace A127561.P12265589204201162547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + A051162 (A061579 n).toNat ^ 2

end

end A127561.P12265589204201162547

namespace A127561

/-- `A091435(n)+A051162(A061579(n))²` -/
def P12265589204201162547.Spec : Prop :=
  ∀ n, P12265589204201162547.a n = A127561 n

end A127561

/-! ## A127561.P17347253392467378751

`A073254(n)+A008586(A091435(n))`
-/

namespace A127561.P17347253392467378751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n + A008586 (A091435 n).toNat

end

end A127561.P17347253392467378751

namespace A127561

/-- `A073254(n)+A008586(A091435(n))` -/
def P17347253392467378751.Spec : Prop :=
  ∀ n, P17347253392467378751.a n = A127561 n

end A127561

/-! ## A127561.P3884136694831655551

`A143844(n)+A008587(A091435(n))`
-/

namespace A127561.P3884136694831655551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A008587 (A091435 n).toNat

end

end A127561.P3884136694831655551

namespace A127561

/-- `A143844(n)+A008587(A091435(n))` -/
def P3884136694831655551.Spec : Prop :=
  ∀ n, P3884136694831655551.a n = A127561 n

end A127561

/-! ## A127561.P4066144746542915293

`A008587(A091435(n))+A002262(n)²`
-/

namespace A127561.P4066144746542915293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A091435 n).toNat + A002262 n ^ 2

end

end A127561.P4066144746542915293

namespace A127561

/-- `A008587(A091435(n))+A002262(n)²` -/
def P4066144746542915293.Spec : Prop :=
  ∀ n, P4066144746542915293.a n = A127561 n

end A127561

/-! ## A127561.P16346128478181707723

`A091435(n)+A025581(A292564(n))²`
-/

namespace A127561.P16346128478181707723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + A025581 (A292564 n).toNat ^ 2

end

end A127561.P16346128478181707723

namespace A127561

/-- `A091435(n)+A025581(A292564(n))²` -/
def P16346128478181707723.Spec : Prop :=
  ∀ n, P16346128478181707723.a n = A127561 n

end A127561

/-! ## A127561.P10184758256882640427

`A091435(n)-A001489(A294317(n)²)`
-/

namespace A127561.P10184758256882640427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n - A001489 (A294317 n ^ 2).toNat

end

end A127561.P10184758256882640427

namespace A127561

/-- `A091435(n)-A001489(A294317(n)²)` -/
def P10184758256882640427.Spec : Prop :=
  ∀ n, P10184758256882640427.a n = A127561 n

end A127561

/-! ## A127561.P16296312724461603110

`A344686(n)+A091435(A292564(n))`
-/

namespace A127561.P16296312724461603110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344686 n + A091435 (A292564 n).toNat

end

end A127561.P16296312724461603110

namespace A127561

/-- `A344686(n)+A091435(A292564(n))` -/
def P16296312724461603110.Spec : Prop :=
  ∀ n, P16296312724461603110.a n = A127561 n

end A127561

/-!
# A127562: a(1)=1. a(2)=2. For n>=3, a(n) is the smallest positive integer not occurring earlier in the sequence such that (Sum_{k=1..n} a(k)) divides Product_{j=1..n} a(j).

The programs for A127562, there is no canonical definition to state claims against.
-/

/-! ## A127562.P3921912453780425698

`Δ[A127563(A028310(n))]+floor(acot(n))`
-/

namespace A127562.P3921912453780425698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127563 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A127562.P3921912453780425698

/-! ## A127562.P14642641963514075888

`Δ[A127563(n*A051023(a((2*n)%3)))]` with `a(0)=0, a(1)=1`
-/

namespace A127562.P14642641963514075888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A127563 ((n : ℤ) * A051023 (f1 (2 * n % 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127562.P14642641963514075888

/-! ## A127562.P10018171654684166987

`A028310(Δ[A127563(A028310(n))])`
-/

namespace A127562.P10018171654684166987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127563 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A127562.P10018171654684166987

/-! ## A127562.P2687812661731251946

`A127564(n+1)/A127564(A028310(n))`
-/

namespace A127562.P2687812661731251946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127564 (n + 1) : ℚ) / (A127564 (A028310 n).toNat : ℚ)

end

end A127562.P2687812661731251946

/-!
# A127563: a(n) = sum{k=1 to n} A127562(k).

The programs for A127563, there is no canonical definition to state claims against.
-/

/-! ## A127563.P16841782466005982631

`∑[A127562(n+1)]`
-/

namespace A127563.P16841782466005982631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127563.P16841782466005982631

/-! ## A127563.P4971950860513959425

`A127562(-xor(n, -1))+a(n-1)` with `a(0)=1`
-/

namespace A127563.P4971950860513959425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127562 (-Int.xor (n : ℤ) (-1)).toNat + a (n - 1)

end

end A127563.P4971950860513959425

/-! ## A127563.P17548160900579407827

`A127562(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A127563.P17548160900579407827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127562 (n + 1) + a (A023443 n).toNat

end

end A127563.P17548160900579407827

/-! ## A127563.P6041380225836351687

`A127562(A020725(n))+a(n-1)` with `a(0)=1`
-/

namespace A127563.P6041380225836351687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127562 (A020725 n).toNat + a (n - 1)

end

end A127563.P6041380225836351687

/-! ## A127563.P6384566947257532631

`∑[A000196(A127562(-xor(n, -1))²)]`
-/

namespace A127563.P6384566947257532631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A127562 (-Int.xor (n : ℤ) (-1)).toNat ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127563.P6384566947257532631

/-! ## A127563.P7144700692364338670

`∑[A127562(-xor(n, -1))%A017571(n)]`
-/

namespace A127563.P7144700692364338670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127562 (-Int.xor (n : ℤ) (-1)).toNat) (A017571 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127563.P7144700692364338670

/-!
# A127564: a(n) = product{k=1 to n} A127562(k).

The programs for A127564, there is no canonical definition to state claims against.
-/

/-! ## A127564.P5885806989878463645

`∏[A127562(n+1)]`
-/

namespace A127564.P5885806989878463645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127564.P5885806989878463645

/-! ## A127564.P12605769631221011630

`a(n-1)*A127562(-xor(n, -1))` with `a(0)=1`
-/

namespace A127564.P12605769631221011630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A127562 (-Int.xor (n : ℤ) (-1)).toNat

end

end A127564.P12605769631221011630

/-! ## A127564.P3693390911641178512

`a(A023443(n))*A127562(n+1)` with `a(0)=1`
-/

namespace A127564.P3693390911641178512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat * A127562 (n + 1)

end

end A127564.P3693390911641178512

/-! ## A127564.P5704875781653961750

`a(n-1)*Δ[A127563(A028310(n))]` with `a(0)=1`
-/

namespace A127564.P5704875781653961750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127563 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A127564.P5704875781653961750

/-! ## A127564.P4699623581443776169

`(A127562(n+1)+A000038(n))*a(n-1)` with `a(0)=1`
-/

namespace A127564.P4699623581443776169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A127562 (n + 1) + A000038 n) * a (n - 1)

end

end A127564.P4699623581443776169

/-!
# A127565: Floor (sum_{k=1..n} log(log(prime(k)))).

The programs for A127565, the canonical program `A127565.P3882218105622547786` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127565 has offset 1).

The definition of A127565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127565.P3882218105622547786

`floor(∑[log(log(A000040(n+1)))])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127565

/-- `floor(∑[log(log(A000040(n+1)))])` -/
def P3882218105622547786.Spec : Prop :=
  ∀ n, P3882218105622547786.a n = A127565 (n + 1)

theorem P3882218105622547786.correct : P3882218105622547786.Spec := by
  intro n
  simp only [A127565, Nat.add_sub_cancel]

end A127565

/-! ## A127565.P4233679799240010879

`A005408(n+1)-A000196(A322409(2*n+1))`
-/

namespace A127565.P4233679799240010879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) - A000196 (A322409 (2 * n + 1)).toNat

end

end A127565.P4233679799240010879

namespace A127565

/-- `A005408(n+1)-A000196(A322409(2*n+1))` -/
def P4233679799240010879.Spec : Prop :=
  ∀ n, P4233679799240010879.a n = A127565 (n + 1)

end A127565

/-! ## A127565.P4539611181628356609

`2*n-A072649(A301854(n+1))`
-/

namespace A127565.P4539611181628356609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A072649 (A301854 (n + 1)).toNat

end

end A127565.P4539611181628356609

namespace A127565

/-- `2*n-A072649(A301854(n+1))` -/
def P4539611181628356609.Spec : Prop :=
  ∀ n, P4539611181628356609.a n = A127565 (n + 1)

end A127565

/-! ## A127565.P16846283195183653328

`Δ[n²]-A127321(A033429(2*n+1))`
-/

namespace A127565.P16846283195183653328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A127321 (A033429 (2 * n + 1)).toNat

end

end A127565.P16846283195183653328

namespace A127565

/-- `Δ[n²]-A127321(A033429(2*n+1))` -/
def P16846283195183653328.Spec : Prop :=
  ∀ n, P16846283195183653328.a n = A127565 (n + 1)

end A127565

/-!
# A127566: Primes p such that at least one of k-1, k+1 is prime, where k = absolute value of q^2 - p*r and p, q, r are consecutive primes.

The programs for A127566, there is no canonical definition to state claims against.
-/

/-! ## A127566.P12238558210387339425

`A000040(lt[A292155(n+5), A011379(n)])`
-/

namespace A127566.P12238558210387339425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292155 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127566.P12238558210387339425

/-!
# A127567: Given k, the product of the first n primes and starting with the first prime at least 3 greater than k, a(n) is the number of consecutive primes where p-k is also prime.

The programs for A127567, there is no canonical definition to state claims against.
-/

/-! ## A127567.P3431848200847360717

`A160434(n+1)-1`
-/

namespace A127567.P3431848200847360717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160434 (n + 1) - 1

end

end A127567.P3431848200847360717

/-! ## A127567.P7212610473229518346

`Δ[∑[A160434(n)]-n]`
-/

namespace A127567.P7212610473229518346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160434 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127567.P7212610473229518346

/-! ## A127567.P5831634427788886494

`A023443(A160434(n+1))`
-/

namespace A127567.P5831634427788886494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A160434 (n + 1)).toNat

end

end A127567.P5831634427788886494

/-! ## A127567.P701319561840672777

`A023444(A160434(n+1)+1)`
-/

namespace A127567.P701319561840672777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A160434 (n + 1) + 1).toNat

end

end A127567.P701319561840672777

/-! ## A127567.P17390047781928023784

`A140106(2*A160434(n+1))`
-/

namespace A127567.P17390047781928023784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A160434 (n + 1)).toNat

end

end A127567.P17390047781928023784

/-! ## A127567.P4120305463034170498

`A233583(or(char[1], A160434(n+1)))`
-/

namespace A127567.P4120305463034170498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A160434 (n + 1))).toNat

end

end A127567.P4120305463034170498

/-! ## A127567.P7577013601462963961

`A233583(xor(A000007(n), A160434(n+1)))`
-/

namespace A127567.P7577013601462963961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.xor (A000007 n) (A160434 (n + 1))).toNat

end

end A127567.P7577013601462963961

/-! ## A127567.P13939873982098037987

`abs(A160434(n+1)+A008683(A002146(n)))`
-/

namespace A127567.P13939873982098037987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160434 (n + 1) + A008683 (A002146 n).toNat|

end

end A127567.P13939873982098037987

/-! ## A127567.P14795390268655023313

`A233583(A160434(n+1)+A000007(n+1))`
-/

namespace A127567.P14795390268655023313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A160434 (n + 1) + A000007 (n + 1)).toNat

end

end A127567.P14795390268655023313

/-! ## A127567.P927827806165347103

`A199969(A160434(n+1)%A005473(n+1))`
-/

namespace A127567.P927827806165347103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (Int.tmod (A160434 (n + 1)) (A005473 (n + 1))).toNat

end

end A127567.P927827806165347103

/-!
# A127568: Triangle T(n,k) = Bell(k) = A000110(k), 0<=k<=n.

The programs for A127568, the canonical program `A127568.P7777449639732980606` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127568 has offset 0).

The definition of A127568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127568.P7777449639732980606

`A000110(col(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127568

/-- `A000110(col(n))` -/
def P7777449639732980606.Spec : Prop :=
  ∀ n, P7777449639732980606.a n = A127568 n

theorem P7777449639732980606.correct : P7777449639732980606.Spec := by
  intro n
  simp only [A127568]

end A127568

/-! ## A127568.P7842781253687073862

`A056273(col(n))`
-/

namespace A127568.P7842781253687073862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 (SequenceMachineLib.triCol n)

end

end A127568.P7842781253687073862

namespace A127568

/-- `A056273(col(n))` -/
def P7842781253687073862.Spec : Prop :=
  ∀ n, P7842781253687073862.a n = A127568 n

end A127568

/-! ## A127568.P453512810055331949

`A108305(col(n))`
-/

namespace A127568.P453512810055331949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108305 (SequenceMachineLib.triCol n)

end

end A127568.P453512810055331949

namespace A127568

/-- `A108305(col(n))` -/
def P453512810055331949.Spec : Prop :=
  ∀ n, P453512810055331949.a n = A127568 n

end A127568

/-! ## A127568.P9341161657310702943

`A164863(col(n))`
-/

namespace A127568.P9341161657310702943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164863 (SequenceMachineLib.triCol n)

end

end A127568.P9341161657310702943

namespace A127568

/-- `A164863(col(n))` -/
def P9341161657310702943.Spec : Prop :=
  ∀ n, P9341161657310702943.a n = A127568 n

end A127568

/-! ## A127568.P7412850419203271817

`A164864(col(n))`
-/

namespace A127568.P7412850419203271817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 (SequenceMachineLib.triCol n)

end

end A127568.P7412850419203271817

namespace A127568

/-- `A164864(col(n))` -/
def P7412850419203271817.Spec : Prop :=
  ∀ n, P7412850419203271817.a n = A127568 n

end A127568

/-!
# A127569: Triangle read by rows: product of the Mobius matrix A054525 by the diagonal matrix diag(A000203(n)).

The programs for A127569, the canonical program `A127569.P701359726830216431` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127569 has offset 1).

The definition of A127569 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054525, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127569.P701359726830216431

`A054525(C(row(n)+1, 2)+col(n)+1)*A000203(col(n)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127569

/-- `A054525(C(row(n)+1, 2)+col(n)+1)*A000203(col(n)+1)` -/
def P701359726830216431.Spec : Prop :=
  ∀ n, P701359726830216431.a n = A127569 (n + 1)

theorem P701359726830216431.correct : P701359726830216431.Spec := by
  intro n
  simp only [A127569, Nat.add_sub_cancel]

end A127569

/-! ## A127569.P10157742646930506048

`A054525(n+1)*A127570(n+1)`
-/

namespace A127569.P10157742646930506048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A127570 (n + 1)

end

end A127569.P10157742646930506048

namespace A127569

/-- `A054525(n+1)*A127570(n+1)` -/
def P10157742646930506048.Spec : Prop :=
  ∀ n, P10157742646930506048.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P12205398775643491279

`A054525(n+1)*A245093(n+1)`
-/

namespace A127569.P12205398775643491279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A245093 (n + 1)

end

end A127569.P12205398775643491279

namespace A127569

/-- `A054525(n+1)*A245093(n+1)` -/
def P12205398775643491279.Spec : Prop :=
  ∀ n, P12205398775643491279.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P2976731463507821734

`∑{d}[A050873(n+1), #*A054525(n+1)]`
-/

namespace A127569.P2976731463507821734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A054525 (n + 1)

end

end A127569.P2976731463507821734

namespace A127569

/-- `∑{d}[A050873(n+1), #*A054525(n+1)]` -/
def P2976731463507821734.Spec : Prop :=
  ∀ n, P2976731463507821734.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P9062289271767021512

`∑{d}[A127093(n+1), #*A054525(n+1)]`
-/

namespace A127569.P9062289271767021512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A054525 (n + 1)

end

end A127569.P9062289271767021512

namespace A127569

/-- `∑{d}[A127093(n+1), #*A054525(n+1)]` -/
def P9062289271767021512.Spec : Prop :=
  ∀ n, P9062289271767021512.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P7781143238508232281

`∑{d}[A127448(n+1), #*A054525(n+1)]`
-/

namespace A127569.P7781143238508232281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A054525 (n + 1)

end

end A127569.P7781143238508232281

namespace A127569

/-- `∑{d}[A127448(n+1), #*A054525(n+1)]` -/
def P7781143238508232281.Spec : Prop :=
  ∀ n, P7781143238508232281.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P7751296698059328537

`A000203(1-C(∑[char[∑[n]]], 2)+n)*A054525(n+1)`
-/

namespace A127569.P7751296698059328537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A054525 (n + 1)

end

end A127569.P7751296698059328537

namespace A127569

/-- `A000203(1-C(∑[char[∑[n]]], 2)+n)*A054525(n+1)` -/
def P7751296698059328537.Spec : Prop :=
  ∀ n, P7751296698059328537.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P15806007688637714904

`A000203(A002260(n+1))*A054525(n+1)`
-/

namespace A127569.P15806007688637714904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A054525 (n + 1)

end

end A127569.P15806007688637714904

namespace A127569

/-- `A000203(A002260(n+1))*A054525(n+1)` -/
def P15806007688637714904.Spec : Prop :=
  ∀ n, P15806007688637714904.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P7197589318559282280

`A000203(A002262(n)+1)*A054525(n+1)`
-/

namespace A127569.P7197589318559282280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002262 n + 1).toNat * A054525 (n + 1)

end

end A127569.P7197589318559282280

namespace A127569

/-- `A000203(A002262(n)+1)*A054525(n+1)` -/
def P7197589318559282280.Spec : Prop :=
  ∀ n, P7197589318559282280.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P17430082189540640227

`A000203(A050873(n+1))*A054525(n+1)`
-/

namespace A127569.P17430082189540640227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050873 (n + 1)).toNat * A054525 (n + 1)

end

end A127569.P17430082189540640227

namespace A127569

/-- `A000203(A050873(n+1))*A054525(n+1)` -/
def P17430082189540640227.Spec : Prop :=
  ∀ n, P17430082189540640227.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P7719136488808591617

`A000203(A123275(n+1))*A054525(n+1)`
-/

namespace A127569.P7719136488808591617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A123275 (n + 1)).toNat * A054525 (n + 1)

end

end A127569.P7719136488808591617

namespace A127569

/-- `A000203(A123275(n+1))*A054525(n+1)` -/
def P7719136488808591617.Spec : Prop :=
  ∀ n, P7719136488808591617.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P8744784965785778331

`A000203(A307662(n+1))*A054525(n+1)`
-/

namespace A127569.P8744784965785778331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A307662 (n + 1)).toNat * A054525 (n + 1)

end

end A127569.P8744784965785778331

namespace A127569

/-- `A000203(A307662(n+1))*A054525(n+1)` -/
def P8744784965785778331.Spec : Prop :=
  ∀ n, P8744784965785778331.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P8863148082404733003

`A054525(n+1)*A132442(n+1)`
-/

namespace A127569.P8863148082404733003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A132442 (n + 1)

end

end A127569.P8863148082404733003

namespace A127569

/-- `A054525(n+1)*A132442(n+1)` -/
def P8863148082404733003.Spec : Prop :=
  ∀ n, P8863148082404733003.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P13217161268974063558

`A125093(n+1)/A049840(n+1)*A132442(n+1)`
-/

namespace A127569.P13217161268974063558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ) * (A132442 (n + 1) : ℚ)

end

end A127569.P13217161268974063558

namespace A127569

/-- `A125093(n+1)/A049840(n+1)*A132442(n+1)` -/
def P13217161268974063558.Spec : Prop :=
  ∀ n, P13217161268974063558.a n = (A127569 (n + 1) : ℚ)

end A127569

/-! ## A127569.P6846205503413586190

`A000203(A112544(n+1))*A054525(n+1)`
-/

namespace A127569.P6846205503413586190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A112544 (n + 1)).toNat * A054525 (n + 1)

end

end A127569.P6846205503413586190

namespace A127569

/-- `A000203(A112544(n+1))*A054525(n+1)` -/
def P6846205503413586190.Spec : Prop :=
  ∀ n, P6846205503413586190.a n = A127569 (n + 1)

end A127569

/-! ## A127569.P14688711587271030669

`A000203(A000005(A059268(n)))*A054525(n+1)`
-/

namespace A127569.P14688711587271030669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A059268 n).toNat).toNat * A054525 (n + 1)

end

end A127569.P14688711587271030669

namespace A127569

/-- `A000203(A000005(A059268(n)))*A054525(n+1)` -/
def P14688711587271030669.Spec : Prop :=
  ∀ n, P14688711587271030669.a n = A127569 (n + 1)

end A127569

/-!
# A127570: Triangle T(n,k) = sigma(k) if k|n, otherwise T(n,k)=0; 1 <= k <= n.

The programs for A127570, the canonical program `A127570.P6714932124384465757` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127570 has offset 1).

The definition of A127570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127570.P6714932124384465757

`A051731(C(row(n)+1, 2)+col(n)+1)*A000203(col(n)+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127570

/-- `A051731(C(row(n)+1, 2)+col(n)+1)*A000203(col(n)+1)` -/
def P6714932124384465757.Spec : Prop :=
  ∀ n, P6714932124384465757.a n = A127570 (n + 1)

theorem P6714932124384465757.correct : P6714932124384465757.Spec := by
  intro n
  simp only [A127570, Nat.add_sub_cancel]

end A127570

/-! ## A127570.P9814844039771858661

`∑{d}[A127093(n+1), #]`
-/

namespace A127570.P9814844039771858661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A127570.P9814844039771858661

namespace A127570

/-- `∑{d}[A127093(n+1), #]` -/
def P9814844039771858661.Spec : Prop :=
  ∀ n, (P9814844039771858661.a n : ℤ) = A127570 (n + 1)

end A127570

/-! ## A127570.P15509857275112396402

`∑{d}[sqrt(A134575(n+1)), #]`
-/

namespace A127570.P15509857275112396402
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134575 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A127570.P15509857275112396402

namespace A127570

/-- `∑{d}[sqrt(A134575(n+1)), #]` -/
def P15509857275112396402.Spec : Prop :=
  ∀ n, (P15509857275112396402.a n : ℤ) = A127570 (n + 1)

end A127570

/-! ## A127570.P3650351017825479253

`∑{d}[A176079(n+1)+1, #]`
-/

namespace A127570.P3650351017825479253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176079 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A127570.P3650351017825479253

namespace A127570

/-- `∑{d}[A176079(n+1)+1, #]` -/
def P3650351017825479253.Spec : Prop :=
  ∀ n, (P3650351017825479253.a n : ℤ) = A127570 (n + 1)

end A127570

/-! ## A127570.P3615158601027480652

`∑{d}[ceil(A134560(n+1)/2), #]`
-/

namespace A127570.P3615158601027480652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134560 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A127570.P3615158601027480652

namespace A127570

/-- `∑{d}[ceil(A134560(n+1)/2), #]` -/
def P3615158601027480652.Spec : Prop :=
  ∀ n, (P3615158601027480652.a n : ℤ) = A127570 (n + 1)

end A127570

/-! ## A127570.P1384267600206172310

`∑{d}[A051731(n+1)*(col(n)+1), #]`
-/

namespace A127570.P1384267600206172310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * (SequenceMachineLib.triCol n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A127570.P1384267600206172310

namespace A127570

/-- `∑{d}[A051731(n+1)*(col(n)+1), #]` -/
def P1384267600206172310.Spec : Prop :=
  ∀ n, (P1384267600206172310.a n : ℤ) = A127570 (n + 1)

end A127570

/-! ## A127570.P17522330776632931578

`A245092(A134560(n+1))`
-/

namespace A127570.P17522330776632931578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A134560 (n + 1)).toNat

end

end A127570.P17522330776632931578

namespace A127570

/-- `A245092(A134560(n+1))` -/
def P17522330776632931578.Spec : Prop :=
  ∀ n, P17522330776632931578.a n = A127570 (n + 1)

end A127570

/-! ## A127570.P13802856374039148139

`∑{d}[A230980(A127639(n+1)), #]`
-/

namespace A127570.P13802856374039148139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A127639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A127570.P13802856374039148139

namespace A127570

/-- `∑{d}[A230980(A127639(n+1)), #]` -/
def P13802856374039148139.Spec : Prop :=
  ∀ n, (P13802856374039148139.a n : ℤ) = A127570 (n + 1)

end A127570

/-! ## A127570.P2362794205609005977

`A051731(n+1)*A245093(n+1)`
-/

namespace A127570.P2362794205609005977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A245093 (n + 1)

end

end A127570.P2362794205609005977

namespace A127570

/-- `A051731(n+1)*A245093(n+1)` -/
def P2362794205609005977.Spec : Prop :=
  ∀ n, P2362794205609005977.a n = A127570 (n + 1)

end A127570

/-! ## A127570.P9741619456415763167

`A127573(n+1)/A002260(n+1)`
-/

namespace A127570.P9741619456415763167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127573 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127570.P9741619456415763167

namespace A127570

/-- `A127573(n+1)/A002260(n+1)` -/
def P9741619456415763167.Spec : Prop :=
  ∀ n, P9741619456415763167.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P15007533512911203400

`A127572(n+1)/A010766(n+1)`
-/

namespace A127570.P15007533512911203400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127572 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A127570.P15007533512911203400

namespace A127570

/-- `A127572(n+1)/A010766(n+1)` -/
def P15007533512911203400.Spec : Prop :=
  ∀ n, P15007533512911203400.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P4120671800484542019

`A127572(n+1)/A049834(n+1)`
-/

namespace A127570.P4120671800484542019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127572 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A127570.P4120671800484542019

namespace A127570

/-- `A127572(n+1)/A049834(n+1)` -/
def P4120671800484542019.Spec : Prop :=
  ∀ n, P4120671800484542019.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P14705481556241163473

`A127573(n+1)/A050873(n+1)`
-/

namespace A127570.P14705481556241163473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127573 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A127570.P14705481556241163473

namespace A127570

/-- `A127573(n+1)/A050873(n+1)` -/
def P14705481556241163473.Spec : Prop :=
  ∀ n, P14705481556241163473.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P6973702135832467797

`A127572(n+1)/A051537(n+1)`
-/

namespace A127570.P6973702135832467797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127572 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A127570.P6973702135832467797

namespace A127570

/-- `A127572(n+1)/A051537(n+1)` -/
def P6973702135832467797.Spec : Prop :=
  ∀ n, P6973702135832467797.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P8858596327572937293

`A127572(n+1)/A054531(n+1)`
-/

namespace A127570.P8858596327572937293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127572 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A127570.P8858596327572937293

namespace A127570

/-- `A127572(n+1)/A054531(n+1)` -/
def P8858596327572937293.Spec : Prop :=
  ∀ n, P8858596327572937293.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P14028070255523098353

`A127572(n+1)/A059026(n+1)`
-/

namespace A127570.P14028070255523098353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127572 (n + 1) : ℚ) / (A059026 (n + 1) : ℚ)

end

end A127570.P14028070255523098353

namespace A127570

/-- `A127572(n+1)/A059026(n+1)` -/
def P14028070255523098353.Spec : Prop :=
  ∀ n, P14028070255523098353.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P6057456632037586039

`A127573(n+1)/A123275(n+1)`
-/

namespace A127570.P6057456632037586039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127573 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A127570.P6057456632037586039

namespace A127570

/-- `A127573(n+1)/A123275(n+1)` -/
def P6057456632037586039.Spec : Prop :=
  ∀ n, P6057456632037586039.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P519347430418860882

`A127572(n+1)/A219158(n+1)`
-/

namespace A127570.P519347430418860882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127572 (n + 1) : ℚ) / (A219158 (n + 1) : ℚ)

end

end A127570.P519347430418860882

namespace A127570

/-- `A127572(n+1)/A219158(n+1)` -/
def P519347430418860882.Spec : Prop :=
  ∀ n, P519347430418860882.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P3259929909642493529

`A127572(n+1)/A234575(n+1)`
-/

namespace A127570.P3259929909642493529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127572 (n + 1) : ℚ) / (A234575 (n + 1) : ℚ)

end

end A127570.P3259929909642493529

namespace A127570

/-- `A127572(n+1)/A234575(n+1)` -/
def P3259929909642493529.Spec : Prop :=
  ∀ n, P3259929909642493529.a n = (A127570 (n + 1) : ℚ)

end A127570

/-! ## A127570.P14876915716144549602

`and(A130888(n+1), A245093(n+1))`
-/

namespace A127570.P14876915716144549602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A245093 (n + 1))

end

end A127570.P14876915716144549602

namespace A127570

/-- `and(A130888(n+1), A245093(n+1))` -/
def P14876915716144549602.Spec : Prop :=
  ∀ n, P14876915716144549602.a n = A127570 (n + 1)

end A127570

/-!
# A127571: Triangle T(n,k) = phi(n/k)*sigma(k) if k divides n, else 0.

The programs for A127571, the canonical program `A127571.P3484283855856059856` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127571 has offset 1).

The definition of A127571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127571.P3484283855856059856

`A054523(n+1)*A127570(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A127571

/-- `A054523(n+1)*A127570(n+1)` -/
def P3484283855856059856.Spec : Prop :=
  ∀ n, P3484283855856059856.a n = A127571 (n + 1)

theorem P3484283855856059856.correct : P3484283855856059856.Spec := by
  intro n
  simp only [A127571, Nat.add_sub_cancel]

end A127571

/-! ## A127571.P2651097370848542464

`A054523(n+1)*A245093(n+1)`
-/

namespace A127571.P2651097370848542464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A245093 (n + 1)

end

end A127571.P2651097370848542464

namespace A127571

/-- `A054523(n+1)*A245093(n+1)` -/
def P2651097370848542464.Spec : Prop :=
  ∀ n, P2651097370848542464.a n = A127571 (n + 1)

end A127571

/-! ## A127571.P11418889273736223167

`A000203(col(n)+1)*A054523(n+1)`
-/

namespace A127571.P11418889273736223167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.triCol n + 1) * A054523 (n + 1)

end

end A127571.P11418889273736223167

namespace A127571

/-- `A000203(col(n)+1)*A054523(n+1)` -/
def P11418889273736223167.Spec : Prop :=
  ∀ n, P11418889273736223167.a n = A127571 (n + 1)

end A127571

/-! ## A127571.P15825374139076612845

`A000203(A002260(n+1))*A054523(n+1)`
-/

namespace A127571.P15825374139076612845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A054523 (n + 1)

end

end A127571.P15825374139076612845

namespace A127571

/-- `A000203(A002260(n+1))*A054523(n+1)` -/
def P15825374139076612845.Spec : Prop :=
  ∀ n, P15825374139076612845.a n = A127571 (n + 1)

end A127571

/-! ## A127571.P3279708441878409732

`A000203(A050873(n+1))*A054523(n+1)`
-/

namespace A127571.P3279708441878409732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050873 (n + 1)).toNat * A054523 (n + 1)

end

end A127571.P3279708441878409732

namespace A127571

/-- `A000203(A050873(n+1))*A054523(n+1)` -/
def P3279708441878409732.Spec : Prop :=
  ∀ n, P3279708441878409732.a n = A127571 (n + 1)

end A127571

/-! ## A127571.P9117775694189768405

`A000203(A123275(n+1))*A054523(n+1)`
-/

namespace A127571.P9117775694189768405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A123275 (n + 1)).toNat * A054523 (n + 1)

end

end A127571.P9117775694189768405

namespace A127571

/-- `A000203(A123275(n+1))*A054523(n+1)` -/
def P9117775694189768405.Spec : Prop :=
  ∀ n, P9117775694189768405.a n = A127571 (n + 1)

end A127571

/-! ## A127571.P8898848189819596004

`A000010(A054531(n+1))*A127570(n+1)`
-/

namespace A127571.P8898848189819596004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A054531 (n + 1)).toNat * A127570 (n + 1)

end

end A127571.P8898848189819596004

namespace A127571

/-- `A000010(A054531(n+1))*A127570(n+1)` -/
def P8898848189819596004.Spec : Prop :=
  ∀ n, P8898848189819596004.a n = A127571 (n + 1)

end A127571

/-! ## A127571.P17621317527590564622

`A054523(n+1)*A132442(n+1)`
-/

namespace A127571.P17621317527590564622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A132442 (n + 1)

end

end A127571.P17621317527590564622

namespace A127571

/-- `A054523(n+1)*A132442(n+1)` -/
def P17621317527590564622.Spec : Prop :=
  ∀ n, P17621317527590564622.a n = A127571 (n + 1)

end A127571

/-! ## A127571.P12905189259164574734

`A000203(A112544(n+1))*A054523(n+1)`
-/

namespace A127571.P12905189259164574734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A112544 (n + 1)).toNat * A054523 (n + 1)

end

end A127571.P12905189259164574734

namespace A127571

/-- `A000203(A112544(n+1))*A054523(n+1)` -/
def P12905189259164574734.Spec : Prop :=
  ∀ n, P12905189259164574734.a n = A127571 (n + 1)

end A127571

/-! ## A127571.P6707777190274377670

`A054523(n+1)*A134839(n+1)`
-/

namespace A127571.P6707777190274377670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A134839 (n + 1)

end

end A127571.P6707777190274377670

namespace A127571

/-- `A054523(n+1)*A134839(n+1)` -/
def P6707777190274377670.Spec : Prop :=
  ∀ n, P6707777190274377670.a n = A127571 (n + 1)

end A127571

/-!
# A127572: Triangle, T(n,k) = sigma(k) * n/k if k|n, T(n,k) = 0 otherwise.

The programs for A127572, the canonical program `A127572.P3347120465689043577` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127572 has offset 1).

The definition of A127572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127572.P3347120465689043577

`A010766(n+1)*A127570(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127572

/-- `A010766(n+1)*A127570(n+1)` -/
def P3347120465689043577.Spec : Prop :=
  ∀ n, P3347120465689043577.a n = A127572 (n + 1)

theorem P3347120465689043577.correct : P3347120465689043577.Spec := by
  intro n
  simp only [A127572, Nat.add_sub_cancel]

end A127572

/-! ## A127572.P980125238420374933

`A049834(n+1)*A127570(n+1)`
-/

namespace A127572.P980125238420374933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127570 (n + 1)

end

end A127572.P980125238420374933

namespace A127572

/-- `A049834(n+1)*A127570(n+1)` -/
def P980125238420374933.Spec : Prop :=
  ∀ n, P980125238420374933.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P9253880017239990989

`A051537(n+1)*A127570(n+1)`
-/

namespace A127572.P9253880017239990989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127570 (n + 1)

end

end A127572.P9253880017239990989

namespace A127572

/-- `A051537(n+1)*A127570(n+1)` -/
def P9253880017239990989.Spec : Prop :=
  ∀ n, P9253880017239990989.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P8383684141340253089

`A054531(n+1)*A127570(n+1)`
-/

namespace A127572.P8383684141340253089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127570 (n + 1)

end

end A127572.P8383684141340253089

namespace A127572

/-- `A054531(n+1)*A127570(n+1)` -/
def P8383684141340253089.Spec : Prop :=
  ∀ n, P8383684141340253089.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P17074120858064597650

`A059026(n+1)*A127570(n+1)`
-/

namespace A127572.P17074120858064597650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127570 (n + 1)

end

end A127572.P17074120858064597650

namespace A127572

/-- `A059026(n+1)*A127570(n+1)` -/
def P17074120858064597650.Spec : Prop :=
  ∀ n, P17074120858064597650.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P15355674268970007014

`A126988(n+1)*A127570(n+1)`
-/

namespace A127572.P15355674268970007014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127570 (n + 1)

end

end A127572.P15355674268970007014

namespace A127572

/-- `A126988(n+1)*A127570(n+1)` -/
def P15355674268970007014.Spec : Prop :=
  ∀ n, P15355674268970007014.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P6540111510520951633

`A127570(n+1)*A219158(n+1)`
-/

namespace A127572.P6540111510520951633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127570 (n + 1) * A219158 (n + 1)

end

end A127572.P6540111510520951633

namespace A127572

/-- `A127570(n+1)*A219158(n+1)` -/
def P6540111510520951633.Spec : Prop :=
  ∀ n, P6540111510520951633.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P5777784157682872206

`A127570(n+1)*A234575(n+1)`
-/

namespace A127572.P5777784157682872206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127570 (n + 1) * A234575 (n + 1)

end

end A127572.P5777784157682872206

namespace A127572

/-- `A127570(n+1)*A234575(n+1)` -/
def P5777784157682872206.Spec : Prop :=
  ∀ n, P5777784157682872206.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P17934956607514065028

`A126988(n+1)*A245093(n+1)`
-/

namespace A127572.P17934956607514065028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A245093 (n + 1)

end

end A127572.P17934956607514065028

namespace A127572

/-- `A126988(n+1)*A245093(n+1)` -/
def P17934956607514065028.Spec : Prop :=
  ∀ n, P17934956607514065028.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P16046888687310640629

`A127570(n+1)*A372523(n+1)`
-/

namespace A127572.P16046888687310640629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127570 (n + 1) * A372523 (n + 1)

end

end A127572.P16046888687310640629

namespace A127572

/-- `A127570(n+1)*A372523(n+1)` -/
def P16046888687310640629.Spec : Prop :=
  ∀ n, P16046888687310640629.a n = A127572 (n + 1)

end A127572

/-! ## A127572.P9370394401286928481

`A126988(n+1)*A132442(n+1)`
-/

namespace A127572.P9370394401286928481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A132442 (n + 1)

end

end A127572.P9370394401286928481

namespace A127572

/-- `A126988(n+1)*A132442(n+1)` -/
def P9370394401286928481.Spec : Prop :=
  ∀ n, P9370394401286928481.a n = A127572 (n + 1)

end A127572

/-!
# A127573: Triangle T(n, k) = k*sigma(k) if k divides n, else 0.

The programs for A127573, the canonical program `A127573.P2420926288322352170` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127573 has offset 1).

The definition of A127573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127573.P2420926288322352170

`∑{d}[A127093(1+n), A069097(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127573

/-- `∑{d}[A127093(1+n), A069097(#)]` -/
def P2420926288322352170.Spec : Prop :=
  ∀ n, P2420926288322352170.a n = A127573 (n + 1)

theorem P2420926288322352170.correct : P2420926288322352170.Spec := by
  intro n
  simp only [A127573, Nat.add_sub_cancel]

end A127573

/-! ## A127573.P1387312431893261255

`A002260(n+1)*A127570(n+1)`
-/

namespace A127573.P1387312431893261255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127570 (n + 1)

end

end A127573.P1387312431893261255

namespace A127573

/-- `A002260(n+1)*A127570(n+1)` -/
def P1387312431893261255.Spec : Prop :=
  ∀ n, P1387312431893261255.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P11084293390913149690

`A050873(n+1)*A127570(n+1)`
-/

namespace A127573.P11084293390913149690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A127570 (n + 1)

end

end A127573.P11084293390913149690

namespace A127573

/-- `A050873(n+1)*A127570(n+1)` -/
def P11084293390913149690.Spec : Prop :=
  ∀ n, P11084293390913149690.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P14203548586171058583

`A123275(n+1)*A127570(n+1)`
-/

namespace A127573.P14203548586171058583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A127570 (n + 1)

end

end A127573.P14203548586171058583

namespace A127573

/-- `A123275(n+1)*A127570(n+1)` -/
def P14203548586171058583.Spec : Prop :=
  ∀ n, P14203548586171058583.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P13518099454754793637

`A127093(n+1)*A127570(n+1)`
-/

namespace A127573.P13518099454754793637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A127570 (n + 1)

end

end A127573.P13518099454754793637

namespace A127573

/-- `A127093(n+1)*A127570(n+1)` -/
def P13518099454754793637.Spec : Prop :=
  ∀ n, P13518099454754793637.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P2314862772386269786

`A127093(n+1)*A245093(n+1)`
-/

namespace A127573.P2314862772386269786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A245093 (n + 1)

end

end A127573.P2314862772386269786

namespace A127573

/-- `A127093(n+1)*A245093(n+1)` -/
def P2314862772386269786.Spec : Prop :=
  ∀ n, P2314862772386269786.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P17151128629843340933

`A127570(n+1)*A334230(n+1)`
-/

namespace A127573.P17151128629843340933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127570 (n + 1) * A334230 (n + 1)

end

end A127573.P17151128629843340933

namespace A127573

/-- `A127570(n+1)*A334230(n+1)` -/
def P17151128629843340933.Spec : Prop :=
  ∀ n, P17151128629843340933.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P644271486893931099

`A127570(n+1)*A357554(n+1)`
-/

namespace A127573.P644271486893931099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127570 (n + 1) * A357554 (n + 1)

end

end A127573.P644271486893931099

namespace A127573

/-- `A127570(n+1)*A357554(n+1)` -/
def P644271486893931099.Spec : Prop :=
  ∀ n, P644271486893931099.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P428490598371335379

`A000203(A050873(n+1))*A127093(n+1)`
-/

namespace A127573.P428490598371335379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050873 (n + 1)).toNat * A127093 (n + 1)

end

end A127573.P428490598371335379

namespace A127573

/-- `A000203(A050873(n+1))*A127093(n+1)` -/
def P428490598371335379.Spec : Prop :=
  ∀ n, P428490598371335379.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P7139059118343266410

`A127570(n+1)*A307662(n+1)`
-/

namespace A127573.P7139059118343266410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127570 (n + 1) * A307662 (n + 1)

end

end A127573.P7139059118343266410

namespace A127573

/-- `A127570(n+1)*A307662(n+1)` -/
def P7139059118343266410.Spec : Prop :=
  ∀ n, P7139059118343266410.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P13761493766098293386

`A127093(n+1)*A132442(n+1)`
-/

namespace A127573.P13761493766098293386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A132442 (n + 1)

end

end A127573.P13761493766098293386

namespace A127573

/-- `A127093(n+1)*A132442(n+1)` -/
def P13761493766098293386.Spec : Prop :=
  ∀ n, P13761493766098293386.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P7243502681309706996

`A050873(n+1)*A051731(n+1)*A132442(n+1)`
-/

namespace A127573.P7243502681309706996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A051731 (n + 1) * A132442 (n + 1)

end

end A127573.P7243502681309706996

namespace A127573

/-- `A050873(n+1)*A051731(n+1)*A132442(n+1)` -/
def P7243502681309706996.Spec : Prop :=
  ∀ n, P7243502681309706996.a n = A127573 (n + 1)

end A127573

/-! ## A127573.P10287843849900313245

`A112544(n+1)*A127570(n+1)`
-/

namespace A127573.P10287843849900313245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A127570 (n + 1)

end

end A127573.P10287843849900313245

namespace A127573

/-- `A112544(n+1)*A127570(n+1)` -/
def P10287843849900313245.Spec : Prop :=
  ∀ n, P10287843849900313245.a n = A127573 (n + 1)

end A127573

/-!
# A127574: Triangle T(n,k) = k*sigma(n) if k divides n, else 0.

The programs for A127574, the canonical program `A127574.P3677561878007637829` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127574 has offset 1).

The definition of A127574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127574.P14784316153410738371

`A000203(∑[char[∑[n]]])*A127093(n+1)`
-/

namespace A127574.P14784316153410738371
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j) * A127093 (n + 1)

end

end A127574.P14784316153410738371

namespace A127574

/-- `A000203(∑[char[∑[n]]])*A127093(n+1)` -/
def P14784316153410738371.Spec : Prop :=
  ∀ n, P14784316153410738371.a n = A127574 (n + 1)

end A127574

/-! ## A127574.P3677561878007637829

`∑{d}[A002024(n+1), #*A127093(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127574

/-- `∑{d}[A002024(n+1), #*A127093(n+1)]` -/
def P3677561878007637829.Spec : Prop :=
  ∀ n, P3677561878007637829.a n = A127574 (n + 1)

theorem P3677561878007637829.correct : P3677561878007637829.Spec := by
  intro n
  simp only [A127574, Nat.add_sub_cancel]

end A127574

/-! ## A127574.P9279752173295495160

`∑{d}[A003056(n)+1, #]*A127093(n+1)`
-/

namespace A127574.P9279752173295495160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A127093 (n + 1)

end

end A127574.P9279752173295495160

namespace A127574

/-- `∑{d}[A003056(n)+1, #]*A127093(n+1)` -/
def P9279752173295495160.Spec : Prop :=
  ∀ n, P9279752173295495160.a n = A127574 (n + 1)

end A127574

/-! ## A127574.P15068110070504407821

`∑{d}[A127446(n+1), #*A050873(n+1)]`
-/

namespace A127574.P15068110070504407821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A050873 (n + 1)

end

end A127574.P15068110070504407821

namespace A127574

/-- `∑{d}[A127446(n+1), #*A050873(n+1)]` -/
def P15068110070504407821.Spec : Prop :=
  ∀ n, P15068110070504407821.a n = A127574 (n + 1)

end A127574

/-! ## A127574.P10672678186730949719

`∑{d}[A123229(n+1), #*A127093(n+1)]`
-/

namespace A127574.P10672678186730949719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A127093 (n + 1)

end

end A127574.P10672678186730949719

namespace A127574

/-- `∑{d}[A123229(n+1), #*A127093(n+1)]` -/
def P10672678186730949719.Spec : Prop :=
  ∀ n, P10672678186730949719.a n = A127574 (n + 1)

end A127574

/-! ## A127574.P3478887293808932009

`∑{d}[A002024(n+1), A127651(n+1)/#]`
-/

namespace A127574.P3478887293808932009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A127651 (n + 1) : ℚ) / (d : ℚ)

end

end A127574.P3478887293808932009

namespace A127574

/-- `∑{d}[A002024(n+1), A127651(n+1)/#]` -/
def P3478887293808932009.Spec : Prop :=
  ∀ n, P3478887293808932009.a n = (A127574 (n + 1) : ℚ)

end A127574

/-! ## A127574.P5930014657605778130

`A127093(n+1)*A245092(A131507(n))`
-/

namespace A127574.P5930014657605778130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A245092 (A131507 n).toNat

end

end A127574.P5930014657605778130

namespace A127574

/-- `A127093(n+1)*A245092(A131507(n))` -/
def P5930014657605778130.Spec : Prop :=
  ∀ n, P5930014657605778130.a n = A127574 (n + 1)

end A127574

/-! ## A127574.P201024468197064735

`A127093(n+1)*A265652(n+1)`
-/

namespace A127574.P201024468197064735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A265652 (n + 1)

end

end A127574.P201024468197064735

namespace A127574

/-- `A127093(n+1)*A265652(n+1)` -/
def P201024468197064735.Spec : Prop :=
  ∀ n, P201024468197064735.a n = A127574 (n + 1)

end A127574

/-! ## A127574.P5847351573941811925

`A050873(n+1)*A051731(n+1)*A265652(n+1)`
-/

namespace A127574.P5847351573941811925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A051731 (n + 1) * A265652 (n + 1)

end

end A127574.P5847351573941811925

namespace A127574

/-- `A050873(n+1)*A051731(n+1)*A265652(n+1)` -/
def P5847351573941811925.Spec : Prop :=
  ∀ n, P5847351573941811925.a n = A127574 (n + 1)

end A127574

/-!
# A127575: Numbers n such that 16n+15 is prime.

The programs for A127575, the canonical program `A127575.P17578973089902924162` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127575 has offset 1).

The definition of A127575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127575.P12790604151177207693

`comp[A153264(n+1)]`
-/

namespace A127575.P12790604151177207693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127575.P12790604151177207693

namespace A127575

/-- `comp[A153264(n+1)]` -/
def P12790604151177207693.Spec : Prop :=
  ∀ n, (P12790604151177207693.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P17578973089902924162

`eq[2*(n+1), A258835(2*n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127575

/-- `eq[2*(n+1), A258835(2*n+1)]` -/
def P17578973089902924162.Spec : Prop :=
  ∀ n, (P17578973089902924162.a n : ℤ) = A127575 (n + 1)

theorem P17578973089902924162.correct : P17578973089902924162.Spec := by
  intro n
  simp only [A127575, Nat.add_sub_cancel]

end A127575

/-! ## A127575.P12933371619882555253

`eq[1, A101264(8*n+7)]`
-/

namespace A127575.P12933371619882555253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P12933371619882555253

namespace A127575

/-- `eq[1, A101264(8*n+7)]` -/
def P12933371619882555253.Spec : Prop :=
  ∀ n, (P12933371619882555253.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P17780513074975880244

`eq[1, A001222(16*n+15)]`
-/

namespace A127575.P17780513074975880244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (16 * n + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P17780513074975880244

namespace A127575

/-- `eq[1, A001222(16*n+15)]` -/
def P17780513074975880244.Spec : Prop :=
  ∀ n, (P17780513074975880244.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P555379493266901529

`eq[2, A000005(16*(n+1)-1)]`
-/

namespace A127575.P555379493266901529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P555379493266901529

namespace A127575

/-- `eq[2, A000005(16*(n+1)-1)]` -/
def P555379493266901529.Spec : Prop :=
  ∀ n, (P555379493266901529.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P15598666072429091009

`lt[A000005(2*(8*n+7)+1), 3]`
-/

namespace A127575.P15598666072429091009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (8 * n + 7) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A127575.P15598666072429091009

namespace A127575

/-- `lt[A000005(2*(8*n+7)+1), 3]` -/
def P15598666072429091009.Spec : Prop :=
  ∀ n, (P15598666072429091009.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P17348887767015385595

`lt[A004768(2*n), A000010(A004771(2*n+1))]`
-/

namespace A127575.P17348887767015385595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004771 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127575.P17348887767015385595

namespace A127575

/-- `lt[A004768(2*n), A000010(A004771(2*n+1))]` -/
def P17348887767015385595.Spec : Prop :=
  ∀ n, (P17348887767015385595.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P11688099448059101532

`eq[1, A046640(A125169(n))]`
-/

namespace A127575.P11688099448059101532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (A125169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P11688099448059101532

namespace A127575

/-- `eq[1, A046640(A125169(n))]` -/
def P11688099448059101532.Spec : Prop :=
  ∀ n, (P11688099448059101532.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P13890197501606007231

`eq[1, ∑{e}[A004767(A004767(n)), #]]`
-/

namespace A127575.P13890197501606007231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A004767 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127575.P13890197501606007231

namespace A127575

/-- `eq[1, ∑{e}[A004767(A004767(n)), #]]` -/
def P13890197501606007231.Spec : Prop :=
  ∀ n, (P13890197501606007231.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P14033726778818746149

`eq[A072480(2*A125169(n)), A125169(n)]`
-/

namespace A127575.P14033726778818746149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (2 * A125169 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127575.P14033726778818746149

namespace A127575

/-- `eq[A072480(2*A125169(n)), A125169(n)]` -/
def P14033726778818746149.Spec : Prop :=
  ∀ n, (P14033726778818746149.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P14007044207571604074

`eq[1, A091304(A004771(n)+1)]`
-/

namespace A127575.P14007044207571604074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A004771 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P14007044207571604074

namespace A127575

/-- `eq[1, A091304(A004771(n)+1)]` -/
def P14007044207571604074.Spec : Prop :=
  ∀ n, (P14007044207571604074.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P15955791732614007328

`eq[1, A034693(A125169(n)-1)]`
-/

namespace A127575.P15955791732614007328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A125169 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P15955791732614007328

namespace A127575

/-- `eq[1, A034693(A125169(n)-1)]` -/
def P15955791732614007328.Spec : Prop :=
  ∀ n, (P15955791732614007328.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P16095178787259579819

`eq[2, A057567(16*(n+1)-1)]`
-/

namespace A127575.P16095178787259579819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (16 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P16095178787259579819

namespace A127575

/-- `eq[2, A057567(16*(n+1)-1)]` -/
def P16095178787259579819.Spec : Prop :=
  ∀ n, (P16095178787259579819.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P9706456517529405089

`eq[1, A001065(4*4*n+15)]`
-/

namespace A127575.P9706456517529405089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (4 * (4 * n) + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P9706456517529405089

namespace A127575

/-- `eq[1, A001065(4*4*n+15)]` -/
def P9706456517529405089.Spec : Prop :=
  ∀ n, (P9706456517529405089.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P9775296366563478444

`eq[1, A018783(A004771(2*n+1))]`
-/

namespace A127575.P9775296366563478444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A004771 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127575.P9775296366563478444

namespace A127575

/-- `eq[1, A018783(A004771(2*n+1))]` -/
def P9775296366563478444.Spec : Prop :=
  ∀ n, (P9775296366563478444.a n : ℤ) = A127575 (n + 1)

end A127575

/-! ## A127575.P8450140545363454459

`record[(n+1)%A014963(A125169(n+1))]`
-/

namespace A127575.P8450140545363454459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A125169 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127575.P8450140545363454459

namespace A127575

/-- `record[(n+1)%A014963(A125169(n+1))]` -/
def P8450140545363454459.Spec : Prop :=
  ∀ n, P8450140545363454459.a n = A127575 (n + 1)

end A127575

/-!
# A127576: Primes of the form 16n+15.

The programs for A127576, the canonical program `A127576.P6805997865159069615` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127576 has offset 1).

The definition of A127576 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127576.anchor (n : ℕ) (hn : 1 ≤ n) : A127576 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({15} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A127.A127576`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127576.P6805997865159069615

`∪[A142041(n+1), A127578(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127576

/-- `∪[A142041(n+1), A127578(n+1)]` -/
def P6805997865159069615.Spec : Prop :=
  ∀ n, (P6805997865159069615.a n : ℤ) = A127576 (n + 1)

theorem P6805997865159069615.correct : P6805997865159069615.Spec := by
  intro n
  simp only [A127576, Nat.add_sub_cancel]

end A127576

/-! ## A127576.P3882291768864890116

`p?[16*n-1]`
-/

namespace A127576.P3882291768864890116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127576.P3882291768864890116

namespace A127576

/-- `p?[16*n-1]` -/
def P3882291768864890116.Spec : Prop :=
  ∀ n, P3882291768864890116.a n = A127576 (n + 1)

end A127576

/-! ## A127576.P12428561372774024130

`or(1, p?[or(15, 12*n)])`
-/

namespace A127576.P12428561372774024130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 15 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127576.P12428561372774024130

namespace A127576

/-- `or(1, p?[or(15, 12*n)])` -/
def P12428561372774024130.Spec : Prop :=
  ∀ n, (P12428561372774024130.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P17175075683919182898

`∩[A001132(n+1), A228228(n+1)]`
-/

namespace A127576.P17175075683919182898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P17175075683919182898

namespace A127576

/-- `∩[A001132(n+1), A228228(n+1)]` -/
def P17175075683919182898.Spec : Prop :=
  ∀ n, (P17175075683919182898.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P1324004022904128762

`A125169(A127575(n+1))`
-/

namespace A127576.P1324004022904128762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (A127575 (n + 1)).toNat

end

end A127576.P1324004022904128762

namespace A127576

/-- `A125169(A127575(n+1))` -/
def P1324004022904128762.Spec : Prop :=
  ∀ n, P1324004022904128762.a n = A127576 (n + 1)

end A127576

/-! ## A127576.P2654777155513456935

`∩[A001132(n+1), A125169(n)]`
-/

namespace A127576.P2654777155513456935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P2654777155513456935

namespace A127576

/-- `∩[A001132(n+1), A125169(n)]` -/
def P2654777155513456935.Spec : Prop :=
  ∀ n, (P2654777155513456935.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P283706903802791434

`∩[A002145(n+1), A125169(n)]`
-/

namespace A127576.P283706903802791434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P283706903802791434

namespace A127576

/-- `∩[A002145(n+1), A125169(n)]` -/
def P283706903802791434.Spec : Prop :=
  ∀ n, (P283706903802791434.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P2489380832807144639

`∩[A003628(n+1), A125169(n)]`
-/

namespace A127576.P2489380832807144639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P2489380832807144639

namespace A127576

/-- `∩[A003628(n+1), A125169(n)]` -/
def P2489380832807144639.Spec : Prop :=
  ∀ n, (P2489380832807144639.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P2589091306043912180

`∩[A007522(n+1), A125169(n)]`
-/

namespace A127576.P2589091306043912180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P2589091306043912180

namespace A127576

/-- `∩[A007522(n+1), A125169(n)]` -/
def P2589091306043912180.Spec : Prop :=
  ∀ n, (P2589091306043912180.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P9499907404104675675

`∩[A014663(n+1), A125169(n)]`
-/

namespace A127576.P9499907404104675675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P9499907404104675675

namespace A127576

/-- `∩[A014663(n+1), A125169(n)]` -/
def P9499907404104675675.Spec : Prop :=
  ∀ n, (P9499907404104675675.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P9210722621360608852

`∩[A038873(n+1), A125169(n)]`
-/

namespace A127576.P9210722621360608852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P9210722621360608852

namespace A127576

/-- `∩[A038873(n+1), A125169(n)]` -/
def P9210722621360608852.Spec : Prop :=
  ∀ n, (P9210722621360608852.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P1500085929087941307

`∩[A040098(n+1), A125169(n)]`
-/

namespace A127576.P1500085929087941307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P1500085929087941307

namespace A127576

/-- `∩[A040098(n+1), A125169(n)]` -/
def P1500085929087941307.Spec : Prop :=
  ∀ n, (P1500085929087941307.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P2596632088602724649

`∩[A040141(n+1), A125169(n)]`
-/

namespace A127576.P2596632088602724649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P2596632088602724649

namespace A127576

/-- `∩[A040141(n+1), A125169(n)]` -/
def P2596632088602724649.Spec : Prop :=
  ∀ n, (P2596632088602724649.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P11522342672353072758

`∩[A045315(n+1), A125169(n)]`
-/

namespace A127576.P11522342672353072758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P11522342672353072758

namespace A127576

/-- `∩[A045315(n+1), A125169(n)]` -/
def P11522342672353072758.Spec : Prop :=
  ∀ n, (P11522342672353072758.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P8903058441714072235

`∩[A045326(n+1), A125169(n)]`
-/

namespace A127576.P8903058441714072235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P8903058441714072235

namespace A127576

/-- `∩[A045326(n+1), A125169(n)]` -/
def P8903058441714072235.Spec : Prop :=
  ∀ n, (P8903058441714072235.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P99401430542245678

`∩[A045355(n+1), A125169(n)]`
-/

namespace A127576.P99401430542245678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P99401430542245678

namespace A127576

/-- `∩[A045355(n+1), A125169(n)]` -/
def P99401430542245678.Spec : Prop :=
  ∀ n, (P99401430542245678.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P11850894543550238988

`∩[A045382(n+1), A125169(n)]`
-/

namespace A127576.P11850894543550238988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P11850894543550238988

namespace A127576

/-- `∩[A045382(n+1), A125169(n)]` -/
def P11850894543550238988.Spec : Prop :=
  ∀ n, (P11850894543550238988.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P7381624830602421506

`∩[A049098(n+1), A125169(n)]`
-/

namespace A127576.P7381624830602421506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P7381624830602421506

namespace A127576

/-- `∩[A049098(n+1), A125169(n)]` -/
def P7381624830602421506.Spec : Prop :=
  ∀ n, (P7381624830602421506.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P12936902644033342986

`∩[A055673(n+1), A125169(n)]`
-/

namespace A127576.P12936902644033342986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P12936902644033342986

namespace A127576

/-- `∩[A055673(n+1), A125169(n)]` -/
def P12936902644033342986.Spec : Prop :=
  ∀ n, (P12936902644033342986.a n : ℤ) = A127576 (n + 1)

end A127576

/-! ## A127576.P2888941267846432076

`∩[A072936(n+1), A125169(n)]`
-/

namespace A127576.P2888941267846432076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127576.P2888941267846432076

namespace A127576

/-- `∩[A072936(n+1), A125169(n)]` -/
def P2888941267846432076.Spec : Prop :=
  ∀ n, (P2888941267846432076.a n : ℤ) = A127576 (n + 1)

end A127576

/-!
# A127577: Numbers n for which 32n+31 is prime.

The programs for A127577, the canonical program `A127577.P11497758234224317345` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127577 has offset 1).

The definition of A127577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127577.P11497758234224317345

`record[A057979(A127575(n+4))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127577

/-- `record[A057979(A127575(n+4))]` -/
def P11497758234224317345.Spec : Prop :=
  ∀ n, P11497758234224317345.a n = A127577 (n + 1)

theorem P11497758234224317345.correct : P11497758234224317345.Spec := by
  intro n
  simp only [A127577, Nat.add_sub_cancel]

end A127577

/-! ## A127577.P6852558173564846890

`eq[ceil(n/(n+1)), A001222(32*(n+1)-1)]`
-/

namespace A127577.P6852558173564846890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (32 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127577.P6852558173564846890

namespace A127577

/-- `eq[ceil(n/(n+1)), A001222(32*(n+1)-1)]` -/
def P6852558173564846890.Spec : Prop :=
  ∀ n, (P6852558173564846890.a n : ℤ) = A127577 (n + 1)

end A127577

/-! ## A127577.P5237272063158585010

`eq[A000005(A239128(n+1)), A040000(n)]`
-/

namespace A127577.P5237272063158585010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A239128 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127577.P5237272063158585010

namespace A127577

/-- `eq[A000005(A239128(n+1)), A040000(n)]` -/
def P5237272063158585010.Spec : Prop :=
  ∀ n, (P5237272063158585010.a n : ℤ) = A127577 (n + 1)

end A127577

/-! ## A127577.P12022733403752780452

`eq[A001222(A239128(n+1)), A057427(n)]`
-/

namespace A127577.P12022733403752780452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239128 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127577.P12022733403752780452

namespace A127577

/-- `eq[A001222(A239128(n+1)), A057427(n)]` -/
def P12022733403752780452.Spec : Prop :=
  ∀ n, (P12022733403752780452.a n : ℤ) = A127577 (n + 1)

end A127577

/-! ## A127577.P2727766251214941859

`lt[A239129(n+3), A006530(A239128(n+1))]`
-/

namespace A127577.P2727766251214941859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239128 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127577.P2727766251214941859

namespace A127577

/-- `lt[A239129(n+3), A006530(A239128(n+1))]` -/
def P2727766251214941859.Spec : Prop :=
  ∀ n, (P2727766251214941859.a n : ℤ) = A127577 (n + 1)

end A127577

/-! ## A127577.P656535237672625412

`eq[A000007(n), A072480(A239128(n+1))]`
-/

namespace A127577.P656535237672625412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A239128 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127577.P656535237672625412

namespace A127577

/-- `eq[A000007(n), A072480(A239128(n+1))]` -/
def P656535237672625412.Spec : Prop :=
  ∀ n, (P656535237672625412.a n : ℤ) = A127577 (n + 1)

end A127577

/-! ## A127577.P16638169913677795112

`eq[A034693(A125169(n)), A040000(n)]`
-/

namespace A127577.P16638169913677795112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A125169 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127577.P16638169913677795112

namespace A127577

/-- `eq[A034693(A125169(n)), A040000(n)]` -/
def P16638169913677795112.Spec : Prop :=
  ∀ n, (P16638169913677795112.a n : ℤ) = A127577 (n + 1)

end A127577

/-! ## A127577.P4943776254470753787

`eq[A000007(n), A245203(A004771(n))]`
-/

namespace A127577.P4943776254470753787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (A004771 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127577.P4943776254470753787

namespace A127577

/-- `eq[A000007(n), A245203(A004771(n))]` -/
def P4943776254470753787.Spec : Prop :=
  ∀ n, (P4943776254470753787.a n : ℤ) = A127577 (n + 1)

end A127577

/-! ## A127577.P13030096034525290882

`eq[A000038(n), A245203(A004771(n))]`
-/

namespace A127577.P13030096034525290882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (A004771 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127577.P13030096034525290882

namespace A127577

/-- `eq[A000038(n), A245203(A004771(n))]` -/
def P13030096034525290882.Spec : Prop :=
  ∀ n, (P13030096034525290882.a n : ℤ) = A127577 (n + 1)

end A127577

/-! ## A127577.P12041212542696936966

`eq[A016014(A125169(n)), A057427(n)]`
-/

namespace A127577.P12041212542696936966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A125169 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127577.P12041212542696936966

namespace A127577

/-- `eq[A016014(A125169(n)), A057427(n)]` -/
def P12041212542696936966.Spec : Prop :=
  ∀ n, (P12041212542696936966.a n : ℤ) = A127577 (n + 1)

end A127577

/-!
# A127578: Primes congruent to 31 mod 32.

The programs for A127578, the canonical program `A127578.P2000685220388056324` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127578 has offset 1).

The definition of A127578 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127578.anchor (n : ℕ) (hn : 1 ≤ n) : A127578 n = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({31} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A127.A127578`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127578.P2000685220388056324

`∪[A127579(n+1), A142939(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127578

/-- `∪[A127579(n+1), A142939(n+1)]` -/
def P2000685220388056324.Spec : Prop :=
  ∀ n, (P2000685220388056324.a n : ℤ) = A127578 (n + 1)

theorem P2000685220388056324.correct : P2000685220388056324.Spec := by
  intro n
  simp only [A127578, Nat.add_sub_cancel]

end A127578

/-! ## A127578.P2271400626048633039

`p?[32*n-1]`
-/

namespace A127578.P2271400626048633039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127578.P2271400626048633039

namespace A127578

/-- `p?[32*n-1]` -/
def P2271400626048633039.Spec : Prop :=
  ∀ n, P2271400626048633039.a n = A127578 (n + 1)

end A127578

/-! ## A127578.P13782998605684300946

`or(1, p?[a(n-1)+32])` with `a(0)=31`
-/

namespace A127578.P13782998605684300946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [31] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127578.P13782998605684300946

namespace A127578

/-- `or(1, p?[a(n-1)+32])` -/
def P13782998605684300946.Spec : Prop :=
  ∀ n, (P13782998605684300946.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P2479444301583440863

`or(1, p?[A239128(n+1)])`
-/

namespace A127578.P2479444301583440863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A127578.P2479444301583440863

namespace A127578

/-- `or(1, p?[A239128(n+1)])` -/
def P2479444301583440863.Spec : Prop :=
  ∀ n, P2479444301583440863.a n = A127578 (n + 1)

end A127578

/-! ## A127578.P10154342319945736230

`∩[A007522(n+1), A239128(n+1)]`
-/

namespace A127578.P10154342319945736230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P10154342319945736230

namespace A127578

/-- `∩[A007522(n+1), A239128(n+1)]` -/
def P10154342319945736230.Spec : Prop :=
  ∀ n, (P10154342319945736230.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P9055277315666615921

`∩[A014663(n+1), A239128(n+1)]`
-/

namespace A127578.P9055277315666615921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P9055277315666615921

namespace A127578

/-- `∩[A014663(n+1), A239128(n+1)]` -/
def P9055277315666615921.Spec : Prop :=
  ∀ n, (P9055277315666615921.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P7140079612544879114

`∩[A045382(n+1), A239128(n+1)]`
-/

namespace A127578.P7140079612544879114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P7140079612544879114

namespace A127578

/-- `∩[A045382(n+1), A239128(n+1)]` -/
def P7140079612544879114.Spec : Prop :=
  ∀ n, (P7140079612544879114.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P3909764798536639789

`∩[A072936(n+1), A239128(n+1)]`
-/

namespace A127578.P3909764798536639789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P3909764798536639789

namespace A127578

/-- `∩[A072936(n+1), A239128(n+1)]` -/
def P3909764798536639789.Spec : Prop :=
  ∀ n, (P3909764798536639789.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P8183184425161861779

`∩[A089199(n+1), A239128(n+1)]`
-/

namespace A127578.P8183184425161861779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P8183184425161861779

namespace A127578

/-- `∩[A089199(n+1), A239128(n+1)]` -/
def P8183184425161861779.Spec : Prop :=
  ∀ n, (P8183184425161861779.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P15989144836180460761

`∩[A094712(n+1), A239128(n+1)]`
-/

namespace A127578.P15989144836180460761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P15989144836180460761

namespace A127578

/-- `∩[A094712(n+1), A239128(n+1)]` -/
def P15989144836180460761.Spec : Prop :=
  ∀ n, (P15989144836180460761.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P18107475101392805645

`∩[A127576(n+1), A239128(n+1)]`
-/

namespace A127578.P18107475101392805645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P18107475101392805645

namespace A127578

/-- `∩[A127576(n+1), A239128(n+1)]` -/
def P18107475101392805645.Spec : Prop :=
  ∀ n, (P18107475101392805645.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P4642846676453178705

`∩[A040098(n+1), A239128(n+1)]`
-/

namespace A127578.P4642846676453178705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P4642846676453178705

namespace A127578

/-- `∩[A040098(n+1), A239128(n+1)]` -/
def P4642846676453178705.Spec : Prop :=
  ∀ n, (P4642846676453178705.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P16603060610032870010

`∩[A225185(n+1), A239128(n+1)]`
-/

namespace A127578.P16603060610032870010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P16603060610032870010

namespace A127578

/-- `∩[A225185(n+1), A239128(n+1)]` -/
def P16603060610032870010.Spec : Prop :=
  ∀ n, (P16603060610032870010.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P11019299798544588914

`∩[A040141(n+1), A239128(n+1)]`
-/

namespace A127578.P11019299798544588914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P11019299798544588914

namespace A127578

/-- `∩[A040141(n+1), A239128(n+1)]` -/
def P11019299798544588914.Spec : Prop :=
  ∀ n, (P11019299798544588914.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P7508401107925672411

`∩[A045315(n+1), A239128(n+1)]`
-/

namespace A127578.P7508401107925672411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P7508401107925672411

namespace A127578

/-- `∩[A045315(n+1), A239128(n+1)]` -/
def P7508401107925672411.Spec : Prop :=
  ∀ n, (P7508401107925672411.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P11175544339025696278

`∩[A001132(n+1), A239128(n+1)]`
-/

namespace A127578.P11175544339025696278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P11175544339025696278

namespace A127578

/-- `∩[A001132(n+1), A239128(n+1)]` -/
def P11175544339025696278.Spec : Prop :=
  ∀ n, (P11175544339025696278.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P11773024690326768874

`∩[A038873(n+1), A239128(n+1)]`
-/

namespace A127578.P11773024690326768874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P11773024690326768874

namespace A127578

/-- `∩[A038873(n+1), A239128(n+1)]` -/
def P11773024690326768874.Spec : Prop :=
  ∀ n, (P11773024690326768874.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P3375926251357851443

`∩[A097958(n+1), A239128(n+1)]`
-/

namespace A127578.P3375926251357851443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P3375926251357851443

namespace A127578

/-- `∩[A097958(n+1), A239128(n+1)]` -/
def P3375926251357851443.Spec : Prop :=
  ∀ n, (P3375926251357851443.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P13779259819624148930

`∩[A002145(n+1), A239128(n+1)]`
-/

namespace A127578.P13779259819624148930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P13779259819624148930

namespace A127578

/-- `∩[A002145(n+1), A239128(n+1)]` -/
def P13779259819624148930.Spec : Prop :=
  ∀ n, (P13779259819624148930.a n : ℤ) = A127578 (n + 1)

end A127578

/-! ## A127578.P4496774567522245292

`∩[A003628(n+1), A239128(n+1)]`
-/

namespace A127578.P4496774567522245292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127578.P4496774567522245292

namespace A127578

/-- `∩[A003628(n+1), A239128(n+1)]` -/
def P4496774567522245292.Spec : Prop :=
  ∀ n, (P4496774567522245292.a n : ℤ) = A127578 (n + 1)

end A127578

/-!
# A127579: Primes of the form 64n+63.

The programs for A127579, the canonical program `A127579.P15098558480322479395` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127579 has offset 1).

The definition of A127579 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127579.anchor (n : ℕ) (hn : 1 ≤ n) : A127579 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 63) (n - 1) : ℤ)` in `Proof.A127.A127579`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127579.P15098558480322479395

`p?[64*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127579

/-- `p?[64*n-1]` -/
def P15098558480322479395.Spec : Prop :=
  ∀ n, P15098558480322479395.a n = A127579 (n + 1)

theorem P15098558480322479395.correct : P15098558480322479395.Spec := by
  intro n
  simp only [A127579, Nat.add_sub_cancel]

end A127579

/-! ## A127579.P8044046356584528500

`or(1, p?[a(n-1)+64])` with `a(0)=63`
-/

namespace A127579.P8044046356584528500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [63] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127579.P8044046356584528500

namespace A127579

/-- `or(1, p?[a(n-1)+64])` -/
def P8044046356584528500.Spec : Prop :=
  ∀ n, (P8044046356584528500.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P4415792015030468572

`∩[A239128(2*(n+1)), A007522(n+2)]`
-/

namespace A127579.P4415792015030468572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P4415792015030468572

namespace A127579

/-- `∩[A239128(2*(n+1)), A007522(n+2)]` -/
def P4415792015030468572.Spec : Prop :=
  ∀ n, (P4415792015030468572.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P5859392152020224803

`∩[A239128(2*(n+1)), A014663(n+2)]`
-/

namespace A127579.P5859392152020224803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P5859392152020224803

namespace A127579

/-- `∩[A239128(2*(n+1)), A014663(n+2)]` -/
def P5859392152020224803.Spec : Prop :=
  ∀ n, (P5859392152020224803.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P14898758504051878115

`∩[A239128(2*(n+1)), A045382(n+2)]`
-/

namespace A127579.P14898758504051878115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P14898758504051878115

namespace A127579

/-- `∩[A239128(2*(n+1)), A045382(n+2)]` -/
def P14898758504051878115.Spec : Prop :=
  ∀ n, (P14898758504051878115.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P3302881281471191503

`∩[A239128(2*(n+1)), A072936(n+2)]`
-/

namespace A127579.P3302881281471191503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072936 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P3302881281471191503

namespace A127579

/-- `∩[A239128(2*(n+1)), A072936(n+2)]` -/
def P3302881281471191503.Spec : Prop :=
  ∀ n, (P3302881281471191503.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P8306905283596228754

`∩[A239128(2*(n+1)), A089199(n+2)]`
-/

namespace A127579.P8306905283596228754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P8306905283596228754

namespace A127579

/-- `∩[A239128(2*(n+1)), A089199(n+2)]` -/
def P8306905283596228754.Spec : Prop :=
  ∀ n, (P8306905283596228754.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P5801293262392335352

`∩[A239128(2*(n+1)), A094712(n+2)]`
-/

namespace A127579.P5801293262392335352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P5801293262392335352

namespace A127579

/-- `∩[A239128(2*(n+1)), A094712(n+2)]` -/
def P5801293262392335352.Spec : Prop :=
  ∀ n, (P5801293262392335352.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P8420635054490600927

`∩[A239128(2*(n+1)), A127576(n+2)]`
-/

namespace A127579.P8420635054490600927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P8420635054490600927

namespace A127579

/-- `∩[A239128(2*(n+1)), A127576(n+2)]` -/
def P8420635054490600927.Spec : Prop :=
  ∀ n, (P8420635054490600927.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P16013254299871635665

`∩[A239128(2*(n+1)), A040098(n+2)]`
-/

namespace A127579.P16013254299871635665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P16013254299871635665

namespace A127579

/-- `∩[A239128(2*(n+1)), A040098(n+2)]` -/
def P16013254299871635665.Spec : Prop :=
  ∀ n, (P16013254299871635665.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P4158729698155024304

`∩[A239128(2*(n+1)), A225185(n+2)]`
-/

namespace A127579.P4158729698155024304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225185 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P4158729698155024304

namespace A127579

/-- `∩[A239128(2*(n+1)), A225185(n+2)]` -/
def P4158729698155024304.Spec : Prop :=
  ∀ n, (P4158729698155024304.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P10159048773434300781

`∩[A239128(2*(n+1)), A001132(n+2)]`
-/

namespace A127579.P10159048773434300781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P10159048773434300781

namespace A127579

/-- `∩[A239128(2*(n+1)), A001132(n+2)]` -/
def P10159048773434300781.Spec : Prop :=
  ∀ n, (P10159048773434300781.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P10797538677241854623

`∩[A239128(2*(n+1)), A038873(n+2)]`
-/

namespace A127579.P10797538677241854623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P10797538677241854623

namespace A127579

/-- `∩[A239128(2*(n+1)), A038873(n+2)]` -/
def P10797538677241854623.Spec : Prop :=
  ∀ n, (P10797538677241854623.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P13599827101634110118

`∩[A239128(2*(n+1)), A097958(n+2)]`
-/

namespace A127579.P13599827101634110118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P13599827101634110118

namespace A127579

/-- `∩[A239128(2*(n+1)), A097958(n+2)]` -/
def P13599827101634110118.Spec : Prop :=
  ∀ n, (P13599827101634110118.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P9931411699168400786

`∩[A239128(2*(n+1)), A003628(n+2)]`
-/

namespace A127579.P9931411699168400786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P9931411699168400786

namespace A127579

/-- `∩[A239128(2*(n+1)), A003628(n+2)]` -/
def P9931411699168400786.Spec : Prop :=
  ∀ n, (P9931411699168400786.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P6777752047827763433

`∩[A239128(2*(n+1)), A045355(n+2)]`
-/

namespace A127579.P6777752047827763433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P6777752047827763433

namespace A127579

/-- `∩[A239128(2*(n+1)), A045355(n+2)]` -/
def P6777752047827763433.Spec : Prop :=
  ∀ n, (P6777752047827763433.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P13003558086772117860

`∩[A239128(2*(n+1)), A228228(n+2)]`
-/

namespace A127579.P13003558086772117860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P13003558086772117860

namespace A127579

/-- `∩[A239128(2*(n+1)), A228228(n+2)]` -/
def P13003558086772117860.Spec : Prop :=
  ∀ n, (P13003558086772117860.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P7695694686505404139

`∩[A007522(n+1), A133898(n)]`
-/

namespace A127579.P7695694686505404139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P7695694686505404139

namespace A127579

/-- `∩[A007522(n+1), A133898(n)]` -/
def P7695694686505404139.Spec : Prop :=
  ∀ n, (P7695694686505404139.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P17925359170600955994

`∩[A045382(n+1), A133898(n)]`
-/

namespace A127579.P17925359170600955994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P17925359170600955994

namespace A127579

/-- `∩[A045382(n+1), A133898(n)]` -/
def P17925359170600955994.Spec : Prop :=
  ∀ n, (P17925359170600955994.a n : ℤ) = A127579 (n + 1)

end A127579

/-! ## A127579.P3800587839885009540

`∩[A094712(n+1), A133898(n)]`
-/

namespace A127579.P3800587839885009540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127579.P3800587839885009540

namespace A127579

/-- `∩[A094712(n+1), A133898(n)]` -/
def P3800587839885009540.Spec : Prop :=
  ∀ n, (P3800587839885009540.a n : ℤ) = A127579 (n + 1)

end A127579

/-!
# A127580: Numbers k such that 64k+63 is prime.

The programs for A127580, the canonical program `A127580.P858959121209447716` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127580 has offset 1).

The definition of A127580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127580.P18402449433413139985

`eq[1, A001221(64*n+63)]`
-/

namespace A127580.P18402449433413139985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (64 * n + 63)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127580.P18402449433413139985

namespace A127580

/-- `eq[1, A001221(64*n+63)]` -/
def P18402449433413139985.Spec : Prop :=
  ∀ n, (P18402449433413139985.a n : ℤ) = A127580 (n + 1)

end A127580

/-! ## A127580.P5532406841793142680

`eq[1, A001222(64*n+63)]`
-/

namespace A127580.P5532406841793142680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (64 * n + 63)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127580.P5532406841793142680

namespace A127580

/-- `eq[1, A001222(64*n+63)]` -/
def P5532406841793142680.Spec : Prop :=
  ∀ n, (P5532406841793142680.a n : ℤ) = A127580 (n + 1)

end A127580

/-! ## A127580.P4609967559501683088

`eq[2, A000005(64*n+63)]`
-/

namespace A127580.P4609967559501683088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (64 * n + 63)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127580.P4609967559501683088

namespace A127580

/-- `eq[2, A000005(64*n+63)]` -/
def P4609967559501683088.Spec : Prop :=
  ∀ n, (P4609967559501683088.a n : ℤ) = A127580 (n + 1)

end A127580

/-! ## A127580.P5041167870746491734

`eq[64*n+63, A006530(64*n+63)]`
-/

namespace A127580.P5041167870746491734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 63

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * n + 63)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127580.P5041167870746491734

namespace A127580

/-- `eq[64*n+63, A006530(64*n+63)]` -/
def P5041167870746491734.Spec : Prop :=
  ∀ n, (P5041167870746491734.a n : ℤ) = A127580 (n + 1)

end A127580

/-! ## A127580.P858959121209447716

`eq[1, A010051(A158071(n+1)-2)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127580

/-- `eq[1, A010051(A158071(n+1)-2)]` -/
def P858959121209447716.Spec : Prop :=
  ∀ n, (P858959121209447716.a n : ℤ) = A127580 (n + 1)

theorem P858959121209447716.correct : P858959121209447716.Spec := by
  intro n
  simp only [A127580, Nat.add_sub_cancel]

end A127580

/-! ## A127580.P10588644425501178314

`lt[A001222(A239128(2*(n+1))), 2]`
-/

namespace A127580.P10588644425501178314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239128 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A127580.P10588644425501178314

namespace A127580

/-- `lt[A001222(A239128(2*(n+1))), 2]` -/
def P10588644425501178314.Spec : Prop :=
  ∀ n, (P10588644425501178314.a n : ℤ) = A127580 (n + 1)

end A127580

/-! ## A127580.P14951038490331910622

`lt[A239128(n+2), A006530(A239128(2*(n+1)))]`
-/

namespace A127580.P14951038490331910622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239128 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127580.P14951038490331910622

namespace A127580

/-- `lt[A239128(n+2), A006530(A239128(2*(n+1)))]` -/
def P14951038490331910622.Spec : Prop :=
  ∀ n, (P14951038490331910622.a n : ℤ) = A127580 (n + 1)

end A127580

/-! ## A127580.P5595917764074878440

`eq[A000007(n), A072480(A239128(2*(n+1)))]`
-/

namespace A127580.P5595917764074878440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A239128 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127580.P5595917764074878440

namespace A127580

/-- `eq[A000007(n), A072480(A239128(2*(n+1)))]` -/
def P5595917764074878440.Spec : Prop :=
  ∀ n, (P5595917764074878440.a n : ℤ) = A127580 (n + 1)

end A127580

/-! ## A127580.P15051788994709222174

`eq[1, A245203(A125169(n))+1]`
-/

namespace A127580.P15051788994709222174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (A125169 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127580.P15051788994709222174

namespace A127580

/-- `eq[1, A245203(A125169(n))+1]` -/
def P15051788994709222174.Spec : Prop :=
  ∀ n, (P15051788994709222174.a n : ℤ) = A127580 (n + 1)

end A127580

/-! ## A127580.P13955699611144125595

`eq[0, A245203(A004771(2*n+1))]`
-/

namespace A127580.P13955699611144125595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (A004771 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127580.P13955699611144125595

namespace A127580

/-- `eq[0, A245203(A004771(2*n+1))]` -/
def P13955699611144125595.Spec : Prop :=
  ∀ n, (P13955699611144125595.a n : ℤ) = A127580 (n + 1)

end A127580

/-!
# A127581: Smallest prime of the form k*2^n - 1, for k >= 2.

The programs for A127581, there is no canonical definition to state claims against.
-/

/-! ## A127581.P4098752349779609261

`(A127586(n)+1)*2^n-1`
-/

namespace A127581.P4098752349779609261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127586 n + 1) * (2 ^ n : ℤ) - 1

end

end A127581.P4098752349779609261

/-! ## A127581.P3293824382908754700

`2^n-(1-A000079(n)*A127586(n))`
-/

namespace A127581.P3293824382908754700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (1 - A000079 n * A127586 n)

end

end A127581.P3293824382908754700

/-! ## A127581.P11911651095845589710

`A000225(n)+A000079(n)*A127586(n)`
-/

namespace A127581.P11911651095845589710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + A000079 n * A127586 n

end

end A127581.P11911651095845589710

/-! ## A127581.P9555665652501730554

`∑[A131577(n)]+A000079(n)*A127586(n)`
-/

namespace A127581.P9555665652501730554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000079 n * A127586 n

end

end A127581.P9555665652501730554

/-! ## A127581.P708343780581819526

`A000079(n)*A127586(n)+A000295(n)+n`
-/

namespace A127581.P708343780581819526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A127586 n + (A000295 n + (n : ℤ))

end

end A127581.P708343780581819526

/-!
# A127582: a(n) = the smallest prime number of the form k*2^n - 1, for k >= 1.

The programs for A127582, there is no canonical definition to state claims against.
-/

/-! ## A127582.P9320549692673203606

`or(n, A087522(n))`
-/

namespace A127582.P9320549692673203606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A087522 n)

end

end A127582.P9320549692673203606

/-! ## A127582.P18153791601623837645

`A087522(char[1]+n)`
-/

namespace A127582.P18153791601623837645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A127582.P18153791601623837645

/-! ## A127582.P3875113818806939446

`A087522(n)+A063524(n)`
-/

namespace A127582.P3875113818806939446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 n + A063524 n

end

end A127582.P3875113818806939446

/-! ## A127582.P14029240793101509136

`A087522(n)-A159075(n)`
-/

namespace A127582.P14029240793101509136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 n - A159075 n

end

end A127582.P14029240793101509136

/-! ## A127582.P3389205127533978744

`A000079(n)*A085427(n)-1`
-/

namespace A127582.P3389205127533978744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A085427 n - 1

end

end A127582.P3389205127533978744

/-! ## A127582.P7171473792762052722

`A087522(n)+A055029(2*n)`
-/

namespace A127582.P7171473792762052722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 n + A055029 (2 * n)

end

end A127582.P7171473792762052722

/-! ## A127582.P7206543108991102709

`A087522(n)+A254667(n)-n`
-/

namespace A127582.P7206543108991102709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 n + (A254667 n - (n : ℤ))

end

end A127582.P7206543108991102709

/-! ## A127582.P7697305201480934855

`A087522(n)+A010054(A000040(n+1))`
-/

namespace A127582.P7697305201480934855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 n + A010054 (A000040 (n + 1)).toNat

end

end A127582.P7697305201480934855

/-! ## A127582.P6407890945484603647

`A087522(n)+A010052(A167706(n+1))`
-/

namespace A127582.P6407890945484603647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 n + A010052 (A167706 (n + 1)).toNat

end

end A127582.P6407890945484603647

/-! ## A127582.P1261462657395510902

`A087522(n)+A010052(n²+3)`
-/

namespace A127582.P1261462657395510902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 n + A010052 (n ^ 2 + 3)

end

end A127582.P1261462657395510902

/-!
# A127584: A007376(4n+3).

The programs for A127584, there is no canonical definition to state claims against.
-/

/-! ## A127584.P8022915540920566708

`A007376(4*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127584.P8022915540920566708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (4 * n + 3)

end

end A127584.P8022915540920566708

/-! ## A127584.P11269781902882466095

`A007376(A004767(n))%10`
-/

namespace A127584.P11269781902882466095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A004767 n).toNat) 10

end

end A127584.P11269781902882466095

/-! ## A127584.P18007202940470210833

`or(A000007(n), A007376(A004767(n)))`
-/

namespace A127584.P18007202940470210833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A004767 n).toNat)

end

end A127584.P18007202940470210833

/-! ## A127584.P4332409203802026829

`A127050(Δ[n²])`
-/

namespace A127584.P4332409203802026829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A127584.P4332409203802026829

/-! ## A127584.P703324367134398754

`A033307(4*n+2)`
-/

namespace A127584.P703324367134398754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (4 * n + 2)

end

end A127584.P703324367134398754

/-! ## A127584.P916226456297847263

`dr(A127050(2*n+1))`
-/

namespace A127584.P916226456297847263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127050 (2 * n + 1))

end

end A127584.P916226456297847263

/-! ## A127584.P4809901849380223447

`A033307(xor(2, 4*n))%10`
-/

namespace A127584.P4809901849380223447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033307 (Nat.xor 2 (4 * n))) 10

end

end A127584.P4809901849380223447

/-! ## A127584.P4253600682733562

`dr(A033307(record[lcm(2, n+2)]))`
-/

namespace A127584.P4253600682733562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A127584.P4253600682733562

/-! ## A127584.P10809902812100822168

`floor(A059805(2*(n+1))/10)`
-/

namespace A127584.P10809902812100822168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059805 (2 * (n + 1)) : ℚ) / 10⌋

end

end A127584.P10809902812100822168

/-! ## A127584.P5265640368700608125

`dr(A033307(A016825(n)))`
-/

namespace A127584.P5265640368700608125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A016825 n).toNat)

end

end A127584.P5265640368700608125

/-! ## A127584.P15457276123360881205

`dr(A033307(A016813(n)+1))`
-/

namespace A127584.P15457276123360881205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A016813 n + 1).toNat)

end

end A127584.P15457276123360881205

/-! ## A127584.P16393402175477141059

`A065649(record[xor(3, n)])%10`
-/

namespace A127584.P16393402175477141059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 10

end

end A127584.P16393402175477141059

/-! ## A127584.P14670663140722326418

`9-A031310(4*n+3)`
-/

namespace A127584.P14670663140722326418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A031310 (4 * n + 3)

end

end A127584.P14670663140722326418

/-! ## A127584.P11089391862862928887

`A136414(4*n+2)%10`
-/

namespace A127584.P11089391862862928887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136414 (4 * n + 2)) 10

end

end A127584.P11089391862862928887

/-! ## A127584.P11203998917143194778

`A098727(4*n+3)-(4*n+3)`
-/

namespace A127584.P11203998917143194778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098727 (4 * n + 3) - (4 * n + 3 : ℤ)

end

end A127584.P11203998917143194778

/-! ## A127584.P12680464008189951520

`A108202(8*n+6)`
-/

namespace A127584.P12680464008189951520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (8 * n + 6)

end

end A127584.P12680464008189951520

/-! ## A127584.P9461039286114615591

`A108712(A004770(n+1))`
-/

namespace A127584.P9461039286114615591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A004770 (n + 1)).toNat

end

end A127584.P9461039286114615591

/-! ## A127584.P5975187800304404852

`A108712(A017101(n)+2)`
-/

namespace A127584.P5975187800304404852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A017101 n + 2).toNat

end

end A127584.P5975187800304404852

/-! ## A127584.P1022171334171897783

`A108712(A113770(n+1))`
-/

namespace A127584.P1022171334171897783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A113770 (n + 1)).toNat

end

end A127584.P1022171334171897783

/-! ## A127584.P4994551545306257542

`A108712(A165372(n+3))`
-/

namespace A127584.P4994551545306257542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A165372 (n + 3)).toNat

end

end A127584.P4994551545306257542

/-!
# A127585: Exponential error term from Stirling's Approximation.

The programs for A127585, the canonical program `A127585.P14479772383584260744` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127585 has offset 0).

The definition of A127585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127585.P14479772383584260744

`floor(sqrt(2*π)*n^n*n^(n/2))-n!`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127585

/-- `floor(sqrt(2*π)*n^n*n^(n/2))-n!` -/
def P14479772383584260744.Spec : Prop :=
  ∀ n, P14479772383584260744.a n = A127585 n

theorem P14479772383584260744.correct : P14479772383584260744.Spec := by
  intro n
  simp only [A127585]

end A127585

/-!
# A127586: Smallest strictly positive integer k such that (k+1)*2^n-1 is prime.

The programs for A127586, there is no canonical definition to state claims against.
-/

/-! ## A127586.P13710466192993837129

`floor(A127581(n)/2^n)`
-/

namespace A127586.P13710466192993837129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127581 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A127586.P13710466192993837129

/-! ## A127586.P16859355559739199500

`A127587(n)+A127581(n)%A127582(n)`
-/

namespace A127586.P16859355559739199500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n + Int.tmod (A127581 n) (A127582 n)

end

end A127586.P16859355559739199500

/-! ## A127586.P10890435033421917807

`A055089(A333053(n+1)-A234694(2*n+1))`
-/

namespace A127586.P10890435033421917807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A333053 (n + 1) - A234694 (2 * n + 1)).toNat

end

end A127586.P10890435033421917807

/-!
# A127587: Smallest nonnegative integer k such that (k+1)*2^n-1 is prime.

The programs for A127587, there is no canonical definition to state claims against.
-/

/-! ## A127587.P5564745676788520569

`A085427(n)-1`
-/

namespace A127587.P5564745676788520569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 n - 1

end

end A127587.P5564745676788520569

/-! ## A127587.P16776484156888583740

`A023446(A085427(n)+3)`
-/

namespace A127587.P16776484156888583740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A085427 n + 3).toNat

end

end A127587.P16776484156888583740

/-! ## A127587.P9239497781553926949

`A308778(A082375(n)²)+A085427(n)`
-/

namespace A127587.P9239497781553926949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A082375 n ^ 2).toNat + A085427 n

end

end A127587.P9239497781553926949

/-! ## A127587.P1567560098977274752

`A308778(A308778(n)²)+A085427(n)`
-/

namespace A127587.P1567560098977274752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A308778 n ^ 2).toNat + A085427 n

end

end A127587.P1567560098977274752

/-! ## A127587.P15207580403155162188

`A338639(A300518(3*n+5))+A085427(n)`
-/

namespace A127587.P15207580403155162188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338639 (A300518 (3 * n + 5)).toNat + A085427 n

end

end A127587.P15207580403155162188

/-! ## A127587.P7131161099970841105

`A348954(A027699(n+1))+A085427(n)`
-/

namespace A127587.P7131161099970841105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348954 (A027699 (n + 1)).toNat + A085427 n

end

end A127587.P7131161099970841105

/-! ## A127587.P14541639322089088797

`A346104(A176994(n))+A085427(n)`
-/

namespace A127587.P14541639322089088797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346104 (A176994 n).toNat + A085427 n

end

end A127587.P14541639322089088797

/-! ## A127587.P151220348798277379

`floor(A087522(n)/2^n)`
-/

namespace A127587.P151220348798277379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087522 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A127587.P151220348798277379

/-! ## A127587.P4592764328246324164

`A127582(n)%A085427(n)`
-/

namespace A127587.P4592764328246324164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127582 n) (A085427 n)

end

end A127587.P4592764328246324164

/-! ## A127587.P17330516037157463252

`floor(A127582(n)/A000079(n))`
-/

namespace A127587.P17330516037157463252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127582 n : ℚ) / (A000079 n : ℚ)⌋

end

end A127587.P17330516037157463252

/-! ## A127587.P7563240066135101382

`A346104(A001359(n+1))+A085427(n)`
-/

namespace A127587.P7563240066135101382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346104 (A001359 (n + 1)).toNat + A085427 n

end

end A127587.P7563240066135101382

/-! ## A127587.P16641266693562856350

`A308778(n²)+A085427(n)`
-/

namespace A127587.P16641266693562856350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A085427 n

end

end A127587.P16641266693562856350

/-!
# A127588: Maximal numerator of Product[(k/(k+1))^e(k),{k,1,n}] over all exponents e(k) equal to either 1 or -1.

The programs for A127588, there is no canonical definition to state claims against.
-/

/-! ## A127588.P7829822384174818704

`A125746(∏[Δ[A080827(n+1)]])`
-/

namespace A127588.P7829822384174818704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127588.P7829822384174818704

/-! ## A127588.P4551228304114501281

`A125746(∏[A000034(n+1)+n])`
-/

namespace A127588.P4551228304114501281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127588.P4551228304114501281

/-! ## A127588.P12281266022561995821

`A079890(∏[A212652(∑{d}[n+1, #])])`
-/

namespace A127588.P12281266022561995821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079890 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127588.P12281266022561995821

/-!
# A127589: Primes of the form 16k + 5.

The programs for A127589, the canonical program `A127589.P13683201596712911778` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127589 has offset 1).

The definition of A127589 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127589.anchor (n : ℕ) (hn : 1 ≤ n) : A127589 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A127.A127589`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127589.P13683201596712911778

`∪[A142036(n+1), A142043(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127589

/-- `∪[A142036(n+1), A142043(n+1)]` -/
def P13683201596712911778.Spec : Prop :=
  ∀ n, (P13683201596712911778.a n : ℤ) = A127589 (n + 1)

theorem P13683201596712911778.correct : P13683201596712911778.Spec := by
  intro n
  simp only [A127589, Nat.add_sub_cancel]

end A127589

/-! ## A127589.P1884399629860316299

`p?[4*4*n+5]`
-/

namespace A127589.P1884399629860316299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127589.P1884399629860316299

namespace A127589

/-- `p?[4*4*n+5]` -/
def P1884399629860316299.Spec : Prop :=
  ∀ n, (P1884399629860316299.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P116234565392251339

`or(1, p?[or(5, 16*n)])`
-/

namespace A127589.P116234565392251339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (16 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127589.P116234565392251339

namespace A127589

/-- `or(1, p?[or(5, 16*n)])` -/
def P116234565392251339.Spec : Prop :=
  ∀ n, (P116234565392251339.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P1470485279204409385

`or(4, p?[a(n-1)+16])` with `a(0)=5`
-/

namespace A127589.P1470485279204409385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127589.P1470485279204409385

namespace A127589

/-- `or(4, p?[a(n-1)+16])` -/
def P1470485279204409385.Spec : Prop :=
  ∀ n, (P1470485279204409385.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P5195090496918108505

`A000027(p?[a(n-1)+16])` with `a(0)=5`
-/

namespace A127589.P5195090496918108505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127589.P5195090496918108505

namespace A127589

/-- `A000027(p?[a(n-1)+16])` -/
def P5195090496918108505.Spec : Prop :=
  ∀ n, P5195090496918108505.a n = A127589 (n + 1)

end A127589

/-! ## A127589.P8050972702831437512

`∩[A002144(n+1), A170837(n)]`
-/

namespace A127589.P8050972702831437512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P8050972702831437512

namespace A127589

/-- `∩[A002144(n+1), A170837(n)]` -/
def P8050972702831437512.Spec : Prop :=
  ∀ n, (P8050972702831437512.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P8664862418884529251

`∩[A002313(n+1), A170837(n)]`
-/

namespace A127589.P8664862418884529251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P8664862418884529251

namespace A127589

/-- `∩[A002313(n+1), A170837(n)]` -/
def P8664862418884529251.Spec : Prop :=
  ∀ n, (P8664862418884529251.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P12770420630571250434

`∩[A003628(n+1), A170837(n)]`
-/

namespace A127589.P12770420630571250434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P12770420630571250434

namespace A127589

/-- `∩[A003628(n+1), A170837(n)]` -/
def P12770420630571250434.Spec : Prop :=
  ∀ n, (P12770420630571250434.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P11428875196351751896

`∩[A003629(n+1), A170837(n)]`
-/

namespace A127589.P11428875196351751896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P11428875196351751896

namespace A127589

/-- `∩[A003629(n+1), A170837(n)]` -/
def P11428875196351751896.Spec : Prop :=
  ∀ n, (P11428875196351751896.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P15742753979463128831

`∩[A007521(n+1), A170837(n)]`
-/

namespace A127589.P15742753979463128831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P15742753979463128831

namespace A127589

/-- `∩[A007521(n+1), A170837(n)]` -/
def P15742753979463128831.Spec : Prop :=
  ∀ n, (P15742753979463128831.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P15560672884601757757

`∩[A040100(n+1), A170837(n)]`
-/

namespace A127589.P15560672884601757757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P15560672884601757757

namespace A127589

/-- `∩[A040100(n+1), A170837(n)]` -/
def P15560672884601757757.Spec : Prop :=
  ∀ n, (P15560672884601757757.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P297713361969046582

`∩[A040144(n+1), A170837(n)]`
-/

namespace A127589.P297713361969046582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P297713361969046582

namespace A127589

/-- `∩[A040144(n+1), A170837(n)]` -/
def P297713361969046582.Spec : Prop :=
  ∀ n, (P297713361969046582.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P9638574168350854862

`∩[A040993(n+1), A170837(n)]`
-/

namespace A127589.P9638574168350854862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P9638574168350854862

namespace A127589

/-- `∩[A040993(n+1), A170837(n)]` -/
def P9638574168350854862.Spec : Prop :=
  ∀ n, (P9638574168350854862.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P7079592920410862230

`∩[A042999(n+1), A170837(n)]`
-/

namespace A127589.P7079592920410862230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P7079592920410862230

namespace A127589

/-- `∩[A042999(n+1), A170837(n)]` -/
def P7079592920410862230.Spec : Prop :=
  ∀ n, (P7079592920410862230.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P16439252964277367296

`∩[A045355(n+1), A170837(n)]`
-/

namespace A127589.P16439252964277367296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P16439252964277367296

namespace A127589

/-- `∩[A045355(n+1), A170837(n)]` -/
def P16439252964277367296.Spec : Prop :=
  ∀ n, (P16439252964277367296.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P9899673437431761501

`∩[A045366(n+1), A170837(n)]`
-/

namespace A127589.P9899673437431761501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P9899673437431761501

namespace A127589

/-- `∩[A045366(n+1), A170837(n)]` -/
def P9899673437431761501.Spec : Prop :=
  ∀ n, (P9899673437431761501.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P5767651574421096190

`∩[A049092(n+1), A170837(n)]`
-/

namespace A127589.P5767651574421096190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P5767651574421096190

namespace A127589

/-- `∩[A049092(n+1), A170837(n)]` -/
def P5767651574421096190.Spec : Prop :=
  ∀ n, (P5767651574421096190.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P15526848687384682009

`∩[A055025(n+1), A170837(n)]`
-/

namespace A127589.P15526848687384682009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P15526848687384682009

namespace A127589

/-- `∩[A055025(n+1), A170837(n)]` -/
def P15526848687384682009.Spec : Prop :=
  ∀ n, (P15526848687384682009.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P16378607891948681257

`∩[A059263(n+1), A170837(n)]`
-/

namespace A127589.P16378607891948681257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P16378607891948681257

namespace A127589

/-- `∩[A059263(n+1), A170837(n)]` -/
def P16378607891948681257.Spec : Prop :=
  ∀ n, (P16378607891948681257.a n : ℤ) = A127589 (n + 1)

end A127589

/-! ## A127589.P3349125397857419338

`∩[A059265(n+1), A170837(n)]`
-/

namespace A127589.P3349125397857419338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127589.P3349125397857419338

namespace A127589

/-- `∩[A059265(n+1), A170837(n)]` -/
def P3349125397857419338.Spec : Prop :=
  ∀ n, (P3349125397857419338.a n : ℤ) = A127589 (n + 1)

end A127589

/-!
# A127590: Numbers n such that 16n+5 is prime.

The programs for A127590, the canonical program `A127590.P12891489478159892403` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127590 has offset 1).

The definition of A127590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127590.P12658160958293617586

`comp[A153327(n+1)]`
-/

namespace A127590.P12658160958293617586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A127590.P12658160958293617586

namespace A127590

/-- `comp[A153327(n+1)]` -/
def P12658160958293617586.Spec : Prop :=
  ∀ n, (P12658160958293617586.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P12891489478159892403

`eq[1, A156707(8*n+2)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127590

/-- `eq[1, A156707(8*n+2)]` -/
def P12891489478159892403.Spec : Prop :=
  ∀ n, (P12891489478159892403.a n : ℤ) = A127590 (n + 1)

theorem P12891489478159892403.correct : P12891489478159892403.Spec := by
  intro n
  simp only [A127590, Nat.add_sub_cancel]

end A127590

/-! ## A127590.P606786652676852658

`eq[1, A001222(16*n+5)]`
-/

namespace A127590.P606786652676852658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (16 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P606786652676852658

namespace A127590

/-- `eq[1, A001222(16*n+5)]` -/
def P606786652676852658.Spec : Prop :=
  ∀ n, (P606786652676852658.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P8005000434338187090

`eq[2, A000005(16*n+5)]`
-/

namespace A127590.P8005000434338187090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P8005000434338187090

namespace A127590

/-- `eq[2, A000005(16*n+5)]` -/
def P8005000434338187090.Spec : Prop :=
  ∀ n, (P8005000434338187090.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P867230266938107157

`lt[A000005(2*(8*n+2)+1), 3]`
-/

namespace A127590.P867230266938107157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (8 * n + 2) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A127590.P867230266938107157

namespace A127590

/-- `lt[A000005(2*(8*n+2)+1), 3]` -/
def P867230266938107157.Spec : Prop :=
  ∀ n, (P867230266938107157.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P3078385039197397886

`lt[4*n, A020639(2*(8*n+2)+1)+1]`
-/

namespace A127590.P3078385039197397886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (8 * n + 2) + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127590.P3078385039197397886

namespace A127590

/-- `lt[4*n, A020639(2*(8*n+2)+1)+1]` -/
def P3078385039197397886.Spec : Prop :=
  ∀ n, (P3078385039197397886.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P6113716039726060202

`lt[A001222(A170837(n+2)), 2]`
-/

namespace A127590.P6113716039726060202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A170837 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A127590.P6113716039726060202

namespace A127590

/-- `lt[A001222(A170837(n+2)), 2]` -/
def P6113716039726060202.Spec : Prop :=
  ∀ n, (P6113716039726060202.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P15221648757842461003

`eq[1, A000005(A016969(n)+A008592(n))-1]`
-/

namespace A127590.P15221648757842461003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016969 n + A008592 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P15221648757842461003

namespace A127590

/-- `eq[1, A000005(A016969(n)+A008592(n))-1]` -/
def P15221648757842461003.Spec : Prop :=
  ∀ n, (P15221648757842461003.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P100315577168124445

`eq[2, A175462(2*n)]`
-/

namespace A127590.P100315577168124445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P100315577168124445

namespace A127590

/-- `eq[2, A175462(2*n)]` -/
def P100315577168124445.Spec : Prop :=
  ∀ n, (P100315577168124445.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P17990581967027646841

`A110962(A127589(n+1))`
-/

namespace A127590.P17990581967027646841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A127589 (n + 1)).toNat

end

end A127590.P17990581967027646841

namespace A127590

/-- `A110962(A127589(n+1))` -/
def P17990581967027646841.Spec : Prop :=
  ∀ n, P17990581967027646841.a n = A127590 (n + 1)

end A127590

/-! ## A127590.P9141708136537157887

`lt[A007775(3*n+1), A006530(A170837(n+2))]`
-/

namespace A127590.P9141708136537157887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A170837 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127590.P9141708136537157887

namespace A127590

/-- `lt[A007775(3*n+1), A006530(A170837(n+2))]` -/
def P9141708136537157887.Spec : Prop :=
  ∀ n, (P9141708136537157887.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P1702470454505625383

`eq[1, A345468(4*n+1)]`
-/

namespace A127590.P1702470454505625383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P1702470454505625383

namespace A127590

/-- `eq[1, A345468(4*n+1)]` -/
def P1702470454505625383.Spec : Prop :=
  ∀ n, (P1702470454505625383.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P9739265901219253225

`eq[2, A051686(4*n+1)]`
-/

namespace A127590.P9739265901219253225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P9739265901219253225

namespace A127590

/-- `eq[2, A051686(4*n+1)]` -/
def P9739265901219253225.Spec : Prop :=
  ∀ n, (P9739265901219253225.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P6717960398705027881

`lt[A016014(8*n+2), 2]`
-/

namespace A127590.P6717960398705027881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (8 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A127590.P6717960398705027881

namespace A127590

/-- `lt[A016014(8*n+2), 2]` -/
def P6717960398705027881.Spec : Prop :=
  ∀ n, (P6717960398705027881.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P701208390063142762

`eq[A054906(4*n+1), A265723(n+1)]/2`
-/

namespace A127590.P701208390063142762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A127590.P701208390063142762

namespace A127590

/-- `eq[A054906(4*n+1), A265723(n+1)]/2` -/
def P701208390063142762.Spec : Prop :=
  ∀ n, P701208390063142762.a n = (A127590 (n + 1) : ℚ)

end A127590

/-! ## A127590.P3931289949329887074

`lt[A170837(n), A014963(A170837(n+2))]`
-/

namespace A127590.P3931289949329887074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A170837 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127590.P3931289949329887074

namespace A127590

/-- `lt[A170837(n), A014963(A170837(n+2))]` -/
def P3931289949329887074.Spec : Prop :=
  ∀ n, (P3931289949329887074.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P2423036952134767743

`lt[n, A014963(A016969(n)+A008592(n))]`
-/

namespace A127590.P2423036952134767743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016969 n + A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127590.P2423036952134767743

namespace A127590

/-- `lt[n, A014963(A016969(n)+A008592(n))]` -/
def P2423036952134767743.Spec : Prop :=
  ∀ n, (P2423036952134767743.a n : ℤ) = A127590 (n + 1)

end A127590

/-! ## A127590.P561458126658614382

`eq[A040000(n), A085099(A215137(n)-n)]`
-/

namespace A127590.P561458126658614382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A215137 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127590.P561458126658614382

namespace A127590

/-- `eq[A040000(n), A085099(A215137(n)-n)]` -/
def P561458126658614382.Spec : Prop :=
  ∀ n, (P561458126658614382.a n : ℤ) = A127590 (n + 1)

end A127590

/-!
# A127591: Numbers k such that 64k+21 is prime.

The programs for A127591, the canonical program `A127591.P6759506411526991371` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127591 has offset 1).

The definition of A127591 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127591.anchor (n : ℕ) (hn : 1 ≤ n) : A127591 n = (Nat.nth (fun k => (64 * k + 21).Prime) (n - 1) : ℤ)` in `Proof.A127.A127591`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127591.P6759506411526991371

`floor(A127592(n+1)/64)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127591

/-- `floor(A127592(n+1)/64)` -/
def P6759506411526991371.Spec : Prop :=
  ∀ n, P6759506411526991371.a n = A127591 (n + 1)

theorem P6759506411526991371.correct : P6759506411526991371.Spec := by
  intro n
  simp only [A127591, Nat.add_sub_cancel]

end A127591

/-! ## A127591.P6992063274628786989

`floor(p?[A157336(n+1)-51]/64)`
-/

namespace A127591.P6992063274628786989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157336 (n + 1) - 51

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 64⌋

end

end A127591.P6992063274628786989

namespace A127591

/-- `floor(p?[A157336(n+1)-51]/64)` -/
def P6992063274628786989.Spec : Prop :=
  ∀ n, P6992063274628786989.a n = A127591 (n + 1)

end A127591

/-! ## A127591.P11483066180520543984

`eq[1, A001222(64*n+21)]`
-/

namespace A127591.P11483066180520543984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (64 * n + 21)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127591.P11483066180520543984

namespace A127591

/-- `eq[1, A001222(64*n+21)]` -/
def P11483066180520543984.Spec : Prop :=
  ∀ n, (P11483066180520543984.a n : ℤ) = A127591 (n + 1)

end A127591

/-! ## A127591.P16449745933136346125

`eq[2, A000005(64*n+21)]`
-/

namespace A127591.P16449745933136346125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (64 * n + 21)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127591.P16449745933136346125

namespace A127591

/-- `eq[2, A000005(64*n+21)]` -/
def P16449745933136346125.Spec : Prop :=
  ∀ n, (P16449745933136346125.a n : ℤ) = A127591 (n + 1)

end A127591

/-! ## A127591.P966419324670877145

`eq[64*n+21, A020639(64*n+21)]`
-/

namespace A127591.P966419324670877145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * n + 21)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127591.P966419324670877145

namespace A127591

/-- `eq[64*n+21, A020639(64*n+21)]` -/
def P966419324670877145.Spec : Prop :=
  ∀ n, (P966419324670877145.a n : ℤ) = A127591 (n + 1)

end A127591

/-! ## A127591.P16861182637719744882

`eq[2, A175462(8*n+2)]`
-/

namespace A127591.P16861182637719744882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (8 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127591.P16861182637719744882

namespace A127591

/-- `eq[2, A175462(8*n+2)]` -/
def P16861182637719744882.Spec : Prop :=
  ∀ n, (P16861182637719744882.a n : ℤ) = A127591 (n + 1)

end A127591

/-!
# A127592: Primes of the form 64k+21.

The programs for A127592, the canonical program `A127592.P15689629339464062709` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127592 has offset 1).

The definition of A127592 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A127592.anchor (n : ℕ) (hn : 1 ≤ n) : A127592 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 21) (n - 1) : ℤ)` in `Proof.A127.A127592`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127592.P15689629339464062709

`p?[64*n+21]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127592

/-- `p?[64*n+21]` -/
def P15689629339464062709.Spec : Prop :=
  ∀ n, (P15689629339464062709.a n : ℤ) = A127592 (n + 1)

theorem P15689629339464062709.correct : P15689629339464062709.Spec := by
  intro n
  simp only [A127592, Nat.add_sub_cancel]

end A127592

/-! ## A127592.P13686016291866256939

`A158071(A127591(n+1))+20`
-/

namespace A127592.P13686016291866256939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (A127591 (n + 1)).toNat + 20

end

end A127592.P13686016291866256939

namespace A127592

/-- `A158071(A127591(n+1))+20` -/
def P13686016291866256939.Spec : Prop :=
  ∀ n, P13686016291866256939.a n = A127592 (n + 1)

end A127592

/-! ## A127592.P6798005927167288710

`A000027(p?[A157336(n+1)-51])`
-/

namespace A127592.P6798005927167288710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157336 (n + 1) - 51

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127592.P6798005927167288710

namespace A127592

/-- `A000027(p?[A157336(n+1)-51])` -/
def P6798005927167288710.Spec : Prop :=
  ∀ n, P6798005927167288710.a n = A127592 (n + 1)

end A127592

/-! ## A127592.P14420083345202801948

`∩[A063300(2*(n+1))-A063300(n+3), A002144(n+2)]`
-/

namespace A127592.P14420083345202801948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P14420083345202801948

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A002144(n+2)]` -/
def P14420083345202801948.Spec : Prop :=
  ∀ n, (P14420083345202801948.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P2944632612979761518

`∩[A063300(2*(n+1))-A063300(n+3), A002313(n+2)]`
-/

namespace A127592.P2944632612979761518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P2944632612979761518

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A002313(n+2)]` -/
def P2944632612979761518.Spec : Prop :=
  ∀ n, (P2944632612979761518.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P8252352823645068625

`∩[A063300(2*(n+1))-A063300(n+3), A003628(n+2)]`
-/

namespace A127592.P8252352823645068625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P8252352823645068625

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A003628(n+2)]` -/
def P8252352823645068625.Spec : Prop :=
  ∀ n, (P8252352823645068625.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P3445670366645512064

`∩[A063300(2*(n+1))-A063300(n+3), A007521(n+2)]`
-/

namespace A127592.P3445670366645512064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P3445670366645512064

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A007521(n+2)]` -/
def P3445670366645512064.Spec : Prop :=
  ∀ n, (P3445670366645512064.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P14427774623336170522

`∩[A063300(2*(n+1))-A063300(n+3), A045355(n+2)]`
-/

namespace A127592.P14427774623336170522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P14427774623336170522

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A045355(n+2)]` -/
def P14427774623336170522.Spec : Prop :=
  ∀ n, (P14427774623336170522.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P4239447147251406925

`∩[A063300(2*(n+1))-A063300(n+3), A045366(n+2)]`
-/

namespace A127592.P4239447147251406925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P4239447147251406925

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A045366(n+2)]` -/
def P4239447147251406925.Spec : Prop :=
  ∀ n, (P4239447147251406925.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P17886794054238926137

`∩[A063300(2*(n+1))-A063300(n+3), A055025(n+2)]`
-/

namespace A127592.P17886794054238926137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P17886794054238926137

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A055025(n+2)]` -/
def P17886794054238926137.Spec : Prop :=
  ∀ n, (P17886794054238926137.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P5560962167165026731

`∩[A063300(2*(n+1))-A063300(n+3), A214588(n+2)]`
-/

namespace A127592.P5560962167165026731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P5560962167165026731

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A214588(n+2)]` -/
def P5560962167165026731.Spec : Prop :=
  ∀ n, (P5560962167165026731.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P14541159570617541768

`∩[A063300(2*(n+1))-A063300(n+3), A280084(n+2)]`
-/

namespace A127592.P14541159570617541768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P14541159570617541768

namespace A127592

/-- `∩[A063300(2*(n+1))-A063300(n+3), A280084(n+2)]` -/
def P14541159570617541768.Spec : Prop :=
  ∀ n, (P14541159570617541768.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P7520725058628647590

`A000265(p?[A157336(n+1)-51])`
-/

namespace A127592.P7520725058628647590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157336 (n + 1) - 51

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127592.P7520725058628647590

namespace A127592

/-- `A000265(p?[A157336(n+1)-51])` -/
def P7520725058628647590.Spec : Prop :=
  ∀ n, P7520725058628647590.a n = A127592 (n + 1)

end A127592

/-! ## A127592.P5516324907665809193

`A000265(p?[A124388(n)+A063226(n+1)])`
-/

namespace A127592.P5516324907665809193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A063226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127592.P5516324907665809193

namespace A127592

/-- `A000265(p?[A124388(n)+A063226(n+1)])` -/
def P5516324907665809193.Spec : Prop :=
  ∀ n, P5516324907665809193.a n = A127592 (n + 1)

end A127592

/-! ## A127592.P11875105290506846370

`filter[A142043(n+1), A320006(#)]`
-/

namespace A127592.P11875105290506846370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A127592.P11875105290506846370

namespace A127592

/-- `filter[A142043(n+1), A320006(#)]` -/
def P11875105290506846370.Spec : Prop :=
  ∀ n, P11875105290506846370.a n = A127592 (n + 1)

end A127592

/-! ## A127592.P1417511186446560804

`∩[A315683(2*n)-1, A007521(n+2)]`
-/

namespace A127592.P1417511186446560804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P1417511186446560804

namespace A127592

/-- `∩[A315683(2*n)-1, A007521(n+2)]` -/
def P1417511186446560804.Spec : Prop :=
  ∀ n, (P1417511186446560804.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P681403448458130240

`∩[A315683(2*n)-1, A045366(n+2)]`
-/

namespace A127592.P681403448458130240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P681403448458130240

namespace A127592

/-- `∩[A315683(2*n)-1, A045366(n+2)]` -/
def P681403448458130240.Spec : Prop :=
  ∀ n, (P681403448458130240.a n : ℤ) = A127592 (n + 1)

end A127592

/-! ## A127592.P13249145219659276688

`∩[A315683(2*n)-1, A127589(n+2)]`
-/

namespace A127592.P13249145219659276688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127592.P13249145219659276688

namespace A127592

/-- `∩[A315683(2*n)-1, A127589(n+2)]` -/
def P13249145219659276688.Spec : Prop :=
  ∀ n, (P13249145219659276688.a n : ℤ) = A127592 (n + 1)

end A127592

/-!
# A127593: Primes of the form 256 k + 85.

The programs for A127593, the canonical program `A127593.P3680629163582345878` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127593 has offset 1).

The definition of A127593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127593.P3680629163582345878

`p?[16*(16*n+5)+5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127593

/-- `p?[16*(16*n+5)+5]` -/
def P3680629163582345878.Spec : Prop :=
  ∀ n, (P3680629163582345878.a n : ℤ) = A127593 (n + 1)

theorem P3680629163582345878.correct : P3680629163582345878.Spec := by
  intro n
  simp only [A127593, Nat.add_sub_cancel]

end A127593

/-! ## A127593.P9183201424510982758

`or(1, p?[A004773(A152691(n))])`
-/

namespace A127593.P9183201424510982758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A152691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A127593.P9183201424510982758

namespace A127593

/-- `or(1, p?[A004773(A152691(n))])` -/
def P9183201424510982758.Spec : Prop :=
  ∀ n, P9183201424510982758.a n = A127593 (n + 1)

end A127593

/-! ## A127593.P15097493004536215282

`A151838(n)!*p?[A004773(A152691(n))]`
-/

namespace A127593.P15097493004536215282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A152691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151838 n).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127593.P15097493004536215282

namespace A127593

/-- `A151838(n)!*p?[A004773(A152691(n))]` -/
def P15097493004536215282.Spec : Prop :=
  ∀ n, P15097493004536215282.a n = A127593 (n + 1)

end A127593

/-! ## A127593.P7309292024864343887

`A000038(n+1)+p?[A004773(A152691(n))]`
-/

namespace A127593.P7309292024864343887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A152691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127593.P7309292024864343887

namespace A127593

/-- `A000038(n+1)+p?[A004773(A152691(n))]` -/
def P7309292024864343887.Spec : Prop :=
  ∀ n, P7309292024864343887.a n = A127593 (n + 1)

end A127593

/-! ## A127593.P1319689077404050836

`p?[A004773(A152691(n))]*A008835(n+1)`
-/

namespace A127593.P1319689077404050836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A152691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008835 (n + 1)

end

end A127593.P1319689077404050836

namespace A127593

/-- `p?[A004773(A152691(n))]*A008835(n+1)` -/
def P1319689077404050836.Spec : Prop :=
  ∀ n, P1319689077404050836.a n = A127593 (n + 1)

end A127593

/-!
# A127594: Numbers k such that 256 k + 85 is prime.

The programs for A127594, the canonical program `A127594.P10174064817014405205` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127594 has offset 1).

The definition of A127594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127594.P10174064817014405205

`floor(A127593(n+1)/256)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127594

/-- `floor(A127593(n+1)/256)` -/
def P10174064817014405205.Spec : Prop :=
  ∀ n, P10174064817014405205.a n = A127594 (n + 1)

theorem P10174064817014405205.correct : P10174064817014405205.Spec := by
  intro n
  simp only [A127594, Nat.add_sub_cancel]

end A127594

/-! ## A127594.P11185511054045421914

`A110962(∩[A004770(2*n+1), A127590(n+2)])`
-/

namespace A127594.P11185511054045421914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127590 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A127594.P11185511054045421914

namespace A127594

/-- `A110962(∩[A004770(2*n+1), A127590(n+2)])` -/
def P11185511054045421914.Spec : Prop :=
  ∀ n, P11185511054045421914.a n = A127594 (n + 1)

end A127594

/-! ## A127594.P1399663665824466192

`eq[4, A000005(A158250(3*n+1))]`
-/

namespace A127594.P1399663665824466192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A158250 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127594.P1399663665824466192

namespace A127594

/-- `eq[4, A000005(A158250(3*n+1))]` -/
def P1399663665824466192.Spec : Prop :=
  ∀ n, (P1399663665824466192.a n : ℤ) = A127594 (n + 1)

end A127594

/-!
# A127595: a(n) = F(4n) - 2F(2n) where F(n) = Fibonacci numbers A000045.

The programs for A127595, the canonical program `A127595.P9663319651452094741` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127595 has offset 0).

The definition of A127595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(4*n)-2*A000045(2*n)` (program `A127595.P9663319651452094741`, by `A127595.P9663319651452094741.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127595.P10869157516398669446

`A001906(n)*A004146(n)`
-/

namespace A127595.P10869157516398669446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A004146 n

end

end A127595.P10869157516398669446

namespace A127595

/-- `A001906(n)*A004146(n)` -/
def P10869157516398669446.Spec : Prop :=
  ∀ n, P10869157516398669446.a n = A127595 n

end A127595

/-! ## A127595.P9663319651452094741

`A000045(4*n)-2*A000045(2*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A127595

/-- `A000045(4*n)-2*A000045(2*n)` -/
def P9663319651452094741.Spec : Prop :=
  ∀ n, P9663319651452094741.a n = A127595 n

theorem P9663319651452094741.correct : P9663319651452094741.Spec := by
  intro n
  simp only [A127595]

end A127595

/-! ## A127595.P14996176693835661788

`(ϕ^(2*n)-1)²*(ϕ^(4*n)-1)/(sqrt(5)*ϕ^(4*n))`
-/

namespace A127595.P14996176693835661788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio ^ (2 * n) - 1) ^ 2 * (Real.goldenRatio ^ (4 * n) - 1) / (Real.sqrt (5 : ℝ) * Real.goldenRatio ^ (4 * n))

end

end A127595.P14996176693835661788

namespace A127595

/-- `(ϕ^(2*n)-1)²*(ϕ^(4*n)-1)/(sqrt(5)*ϕ^(4*n))` -/
def P14996176693835661788.Spec : Prop :=
  ∀ n, P14996176693835661788.a n = (A127595 n : ℝ)

end A127595

/-! ## A127595.P11890531629075937862

`A004146(n)*A088305(n)`
-/

namespace A127595.P11890531629075937862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n * A088305 n

end

end A127595.P11890531629075937862

namespace A127595

/-- `A004146(n)*A088305(n)` -/
def P11890531629075937862.Spec : Prop :=
  ∀ n, P11890531629075937862.a n = A127595 n

end A127595

/-! ## A127595.P6568392997718293866

`Δ[A001519(n)]*A004146(n)`
-/

namespace A127595.P6568392997718293866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004146 n

end

end A127595.P6568392997718293866

namespace A127595

/-- `Δ[A001519(n)]*A004146(n)` -/
def P6568392997718293866.Spec : Prop :=
  ∀ n, P6568392997718293866.a n = A127595 n

end A127595

/-! ## A127595.P11205463315425354652

`Δ[A032908(n)]*A004146(n)`
-/

namespace A127595.P11205463315425354652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004146 n

end

end A127595.P11205463315425354652

namespace A127595

/-- `Δ[A032908(n)]*A004146(n)` -/
def P11205463315425354652.Spec : Prop :=
  ∀ n, P11205463315425354652.a n = A127595 n

end A127595

/-! ## A127595.P14735996619512212037

`(A005248(n)-2)*A001906(n)`
-/

namespace A127595.P14735996619512212037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005248 n - 2) * A001906 n

end

end A127595.P14735996619512212037

namespace A127595

/-- `(A005248(n)-2)*A001906(n)` -/
def P14735996619512212037.Spec : Prop :=
  ∀ n, P14735996619512212037.a n = A127595 n

end A127595

/-! ## A127595.P9110293476547211202

`A033888(n)-2*A001906(n)`
-/

namespace A127595.P9110293476547211202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n - 2 * A001906 n

end

end A127595.P9110293476547211202

namespace A127595

/-- `A033888(n)-2*A001906(n)` -/
def P9110293476547211202.Spec : Prop :=
  ∀ n, P9110293476547211202.a n = A127595 n

end A127595

/-! ## A127595.P8055045970177252932

`(A005248(n)-2)*A088305(n)`
-/

namespace A127595.P8055045970177252932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005248 n - 2) * A088305 n

end

end A127595.P8055045970177252932

namespace A127595

/-- `(A005248(n)-2)*A088305(n)` -/
def P8055045970177252932.Spec : Prop :=
  ∀ n, P8055045970177252932.a n = A127595 n

end A127595

/-! ## A127595.P10259513718104039906

`A001350(2*n)*A001906(n)`
-/

namespace A127595.P10259513718104039906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (2 * n) * A001906 n

end

end A127595.P10259513718104039906

namespace A127595

/-- `A001350(2*n)*A001906(n)` -/
def P10259513718104039906.Spec : Prop :=
  ∀ n, P10259513718104039906.a n = A127595 n

end A127595

/-! ## A127595.P17809729486958867979

`A000045(2*n)*A004146(n)`
-/

namespace A127595.P17809729486958867979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A004146 n

end

end A127595.P17809729486958867979

namespace A127595

/-- `A000045(2*n)*A004146(n)` -/
def P17809729486958867979.Spec : Prop :=
  ∀ n, P17809729486958867979.a n = A127595 n

end A127595

/-! ## A127595.P326632719848935545

`A004146(n)*A005013(2*n)`
-/

namespace A127595.P326632719848935545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n * A005013 (2 * n)

end

end A127595.P326632719848935545

namespace A127595

/-- `A004146(n)*A005013(2*n)` -/
def P326632719848935545.Spec : Prop :=
  ∀ n, P326632719848935545.a n = A127595 n

end A127595

/-! ## A127595.P18229750708491396307

`A055588(2*n)-A192908(n+1)`
-/

namespace A127595.P18229750708491396307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (2 * n) - A192908 (n + 1)

end

end A127595.P18229750708491396307

namespace A127595

/-- `A055588(2*n)-A192908(n+1)` -/
def P18229750708491396307.Spec : Prop :=
  ∀ n, P18229750708491396307.a n = A127595 n

end A127595

/-! ## A127595.P11827682283677989395

`A004146(n)*A212804(2*n+1)`
-/

namespace A127595.P11827682283677989395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n * A212804 (2 * n + 1)

end

end A127595.P11827682283677989395

namespace A127595

/-- `A004146(n)*A212804(2*n+1)` -/
def P11827682283677989395.Spec : Prop :=
  ∀ n, P11827682283677989395.a n = A127595 n

end A127595

/-! ## A127595.P1147646261961952919

`A001906(2*n)-A140833(2*n)`
-/

namespace A127595.P1147646261961952919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n) - A140833 (2 * n)

end

end A127595.P1147646261961952919

namespace A127595

/-- `A001906(2*n)-A140833(2*n)` -/
def P1147646261961952919.Spec : Prop :=
  ∀ n, P1147646261961952919.a n = A127595 n

end A127595

/-! ## A127595.P13353363975328491560

`A000045(2*n)*A001350(2*n)`
-/

namespace A127595.P13353363975328491560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A001350 (2 * n)

end

end A127595.P13353363975328491560

namespace A127595

/-- `A000045(2*n)*A001350(2*n)` -/
def P13353363975328491560.Spec : Prop :=
  ∀ n, P13353363975328491560.a n = A127595 n

end A127595

/-! ## A127595.P4715149843479996301

`A001906(2*n)-A006355(2*n+1)`
-/

namespace A127595.P4715149843479996301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n) - A006355 (2 * n + 1)

end

end A127595.P4715149843479996301

namespace A127595

/-- `A001906(2*n)-A006355(2*n+1)` -/
def P4715149843479996301.Spec : Prop :=
  ∀ n, P4715149843479996301.a n = A127595 n

end A127595

/-! ## A127595.P5307040028158086844

`(A008346(2*n)-1)*A001350(2*n)`
-/

namespace A127595.P5307040028158086844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008346 (2 * n) - 1) * A001350 (2 * n)

end

end A127595.P5307040028158086844

namespace A127595

/-- `(A008346(2*n)-1)*A001350(2*n)` -/
def P5307040028158086844.Spec : Prop :=
  ∀ n, P5307040028158086844.a n = A127595 n

end A127595

/-! ## A127595.P7927067547343784849

`(A005247(2*n)-2)*A005013(2*n)`
-/

namespace A127595.P7927067547343784849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005247 (2 * n) - 2) * A005013 (2 * n)

end

end A127595.P7927067547343784849

namespace A127595

/-- `(A005247(2*n)-2)*A005013(2*n)` -/
def P7927067547343784849.Spec : Prop :=
  ∀ n, P7927067547343784849.a n = A127595 n

end A127595

/-! ## A127595.P14414509879712420974

`(A001519(n+1)-A001519(n))*A004146(n)`
-/

namespace A127595.P14414509879712420974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 (n + 1) - A001519 n) * A004146 n

end

end A127595.P14414509879712420974

namespace A127595

/-- `(A001519(n+1)-A001519(n))*A004146(n)` -/
def P14414509879712420974.Spec : Prop :=
  ∀ n, P14414509879712420974.a n = A127595 n

end A127595

/-!
# A127596: Numbers k such that 1 + Sum_{i=1..k-1} A001223(i)*(-1)^i = 0.

The programs for A127596, there is no canonical definition to state claims against.
-/

/-! ## A127596.P487049145627712453

`eq[1, A330547(n+1)]+1`
-/

namespace A127596.P487049145627712453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A127596.P487049145627712453

/-! ## A127596.P15249046802322375646

`eq[1, A308655(n+1)]+2`
-/

namespace A127596.P15249046802322375646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A127596.P15249046802322375646

/-! ## A127596.P12894636604798974737

`A000720(A282178(n+1))`
-/

namespace A127596.P12894636604798974737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A282178 (n + 1)).toNat

end

end A127596.P12894636604798974737

/-! ## A127596.P6121519661697780686

`eq[1, A330547(A028310(n))]`
-/

namespace A127596.P6121519661697780686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127596.P6121519661697780686

/-! ## A127596.P1586836259450106965

`eq[A086530(n+1), A182986(n+1)]`
-/

namespace A127596.P1586836259450106965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127596.P1586836259450106965

/-!
# A127597: Least number k such that k 4^n + (4^n-1)/3 is prime.

The programs for A127597, there is no canonical definition to state claims against.
-/

/-! ## A127597.P10946591607971961818

`floor(A127598(n+1)/A011782(n+1)²)`
-/

namespace A127597.P10946591607971961818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127598 (n + 1) : ℚ) / (A011782 (n + 1) ^ 2 : ℚ)⌋

end

end A127597.P10946591607971961818

/-! ## A127597.P12672178253570953256

`round(A127598(n+1)/A348473(n+1)²)`
-/

namespace A127597.P12672178253570953256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127598 (n + 1) : ℚ) / (A348473 (n + 1) ^ 2 : ℚ))

end

end A127597.P12672178253570953256

/-!
# A127598: Least primes of the form k 4^n + (4^n-1)/3.

The programs for A127598, there is no canonical definition to state claims against.
-/

/-! ## A127598.P7328489681529032136

`A027748(A301584(n)+3)`
-/

namespace A127598.P7328489681529032136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A301584 n + 3).toNat

end

end A127598.P7328489681529032136

/-!
# A127599: Least number x such that x^n-x-1 is prime.

The programs for A127599, there is no canonical definition to state claims against.
-/

/-! ## A127599.P16314614125459254113

`ceil(root(A126439(n+2), n+2))`
-/

namespace A127599.P16314614125459254113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126439 (n + 2) : ℝ) ^ (1 / (n + 2 : ℝ))⌉

end

end A127599.P16314614125459254113

