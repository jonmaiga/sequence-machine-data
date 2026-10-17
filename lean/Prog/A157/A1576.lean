import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A157600: Half the number of length n integer sequences with sum zero and sum of squares 9248.

The programs for A157600, there is no canonical definition to state claims against.
-/

/-! ## A157600.P18139602562287610747

`lcm(A007948(A157536(n+2)), A157549(n+2))`
-/

namespace A157600.P18139602562287610747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007948 (A157536 (n + 2)).toNat) (A157549 (n + 2))

end

end A157600.P18139602562287610747

/-!
# A157602: Half the number of length n integer sequences with sum zero and sum of squares 9800.

The programs for A157602, there is no canonical definition to state claims against.
-/

/-! ## A157602.P4319562227884254146

`lcm(A000027(A157542(n+2)), A157546(n+2))`
-/

namespace A157602.P4319562227884254146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157542 (n + 2)).toNat) (A157546 (n + 2))

end

end A157602.P4319562227884254146

/-!
# A157603: Triangle read by rows: T(n,k) = 1 for k <= n/2, T(n,k)=A055248 otherwise.

The programs for A157603, there is no canonical definition to state claims against.
-/

/-! ## A157603.P17062145497866290376

`A055248(n*ceil(sqrt(8*(n+1)))%2)`
-/

namespace A157603.P17062145497866290376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 ((n : ℤ) * Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2).toNat

end

end A157603.P17062145497866290376

/-! ## A157603.P316982568725231923

`A055248(n*A101688(n))`
-/

namespace A157603.P316982568725231923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 ((n : ℤ) * A101688 n).toNat

end

end A157603.P316982568725231923

/-! ## A157603.P16180178693891758294

`A125230(n*A101688(n))`
-/

namespace A157603.P16180178693891758294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125230 ((n : ℤ) * A101688 n).toNat

end

end A157603.P16180178693891758294

/-! ## A157603.P9064810863066721846

`A135224(n*A101688(n))`
-/

namespace A157603.P9064810863066721846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135224 ((n : ℤ) * A101688 n).toNat

end

end A157603.P9064810863066721846

/-! ## A157603.P15941061021955937954

`A055248(lcm(n, A187034(n)))`
-/

namespace A157603.P15941061021955937954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (Int.lcm (n : ℤ) (A187034 n))

end

end A157603.P15941061021955937954

/-! ## A157603.P3885619304694225591

`A055248(n*A187034(n)²)`
-/

namespace A157603.P3885619304694225591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 ((n : ℤ) * A187034 n ^ 2).toNat

end

end A157603.P3885619304694225591

/-! ## A157603.P4313591978576563761

`A055248(n)^A187034(n)²`
-/

namespace A157603.P4313591978576563761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055248 n : ℚ) ^ (A187034 n ^ 2 : ℤ)

end

end A157603.P4313591978576563761

/-! ## A157603.P3254320096035158504

`gcd(A055248(n), A155076(n+1))`
-/

namespace A157603.P3254320096035158504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055248 n) (A155076 (n + 1))

end

end A157603.P3254320096035158504

/-! ## A157603.P2810404923139791688

`gcd(A155077(n+1), A322428(n+1))`
-/

namespace A157603.P2810404923139791688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155077 (n + 1)) (A322428 (n + 1))

end

end A157603.P2810404923139791688

/-! ## A157603.P17168245925449069441

`gcd(A055248(n), A073097(A105868(n)))`
-/

namespace A157603.P17168245925449069441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055248 n) (A073097 (A105868 n).toNat)

end

end A157603.P17168245925449069441

/-!
# A157605: a(2)=1. a(n) = the largest integer coprime to a(n-1) and less than the n-th Fibonacci number.

The programs for A157605, there is no canonical definition to state claims against.
-/

/-! ## A157605.P5529550795805288399

`A202278(n+2)-A001221(comp[∑[n-1]])`
-/

namespace A157605.P5529550795805288399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202278 (n + 2) - A001221 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A157605.P5529550795805288399

/-! ## A157605.P12814183267859331890

`A003293(n)-A363807(A000108(n))`
-/

namespace A157605.P12814183267859331890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n - A363807 (A000108 n).toNat

end

end A157605.P12814183267859331890

/-! ## A157605.P14864784297489745514

`A074317(n+1)-A130654(A042523(n))`
-/

namespace A157605.P14864784297489745514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074317 (n + 1) - A130654 (A042523 n).toNat

end

end A157605.P14864784297489745514

/-! ## A157605.P13570959073406451794

`A000045(n+2)-A071625(A197459(n+2))`
-/

namespace A157605.P13570959073406451794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A071625 (A197459 (n + 2)).toNat

end

end A157605.P13570959073406451794

/-! ## A157605.P7277888385738597181

`A351115(A359672(n))`
-/

namespace A157605.P7277888385738597181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (A359672 n).toNat

end

end A157605.P7277888385738597181

/-!
# A157606: a(1)=1. a(n) = the largest integer coprime to a(n-1) and less than n^2.

The programs for A157606, there is no canonical definition to state claims against.
-/

/-! ## A157606.P13790174060103143448

`A347535(n+1)-A001511(A000285(n))`
-/

namespace A157606.P13790174060103143448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1) - A001511 (A000285 n).toNat

end

end A157606.P13790174060103143448

/-! ## A157606.P5787913903378270165

`A347535(n+1)-A001511(A242497(n+1))`
-/

namespace A157606.P5787913903378270165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1) - A001511 (A242497 (n + 1)).toNat

end

end A157606.P5787913903378270165

/-! ## A157606.P1042009060138994632

`(n+1)²-A001221(A152608(2*n+1))`
-/

namespace A157606.P1042009060138994632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A001221 (A152608 (2 * n + 1)).toNat

end

end A157606.P1042009060138994632

/-! ## A157606.P9889267847753151643

`(n+1)²-A115583(a(n-1))` with `a(0)=1`
-/

namespace A157606.P9889267847753151643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℤ) - A115583 (a (n - 1)).toNat

end

end A157606.P9889267847753151643

/-! ## A157606.P12487151782446250562

`(n+1)²-A069283(A143036(n+1)+1)`
-/

namespace A157606.P12487151782446250562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A069283 (A143036 (n + 1) + 1).toNat

end

end A157606.P12487151782446250562

/-!
# A157608: Array read by antidiagonals, giving number of fixed hexagonal polyominoes of height up to n/2 and with hexagonal cell count k.

The programs for A157608, there is no canonical definition to state claims against.
-/

/-! ## A157608.P9591439549332277766

`A319573(xor(A178249(n+1), A242447(n)))`
-/

namespace A157608.P9591439549332277766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319573 (Int.xor (A178249 (n + 1)) (A242447 n)).toNat

end

end A157608.P9591439549332277766

/-! ## A157608.P9733029496009461616

`A353434(n)-A010054(A157726(n))`
-/

namespace A157608.P9733029496009461616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353434 n - A010054 (A157726 n).toNat

end

end A157608.P9733029496009461616

/-! ## A157608.P10147107418549678867

`A350529(n)-A242249(Δ[A360305(3*n+4)])`
-/

namespace A157608.P10147107418549678867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360305 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n - A242249 (f1 (n + 1) - f1 n).toNat

end

end A157608.P10147107418549678867

/-! ## A157608.P4869615325750335146

`A350529(n)-A318757(Δ[A360305(3*n+4)])`
-/

namespace A157608.P4869615325750335146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360305 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n - A318757 (f1 (n + 1) - f1 n).toNat

end

end A157608.P4869615325750335146

/-! ## A157608.P14869292100250643561

`A167439(A194794(n+1))`
-/

namespace A157608.P14869292100250643561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A194794 (n + 1)).toNat

end

end A157608.P14869292100250643561

/-!
# A157609: a(n) = 2662*n - 22.

The programs for A157609, the canonical program `A157609.P14910852287074054418` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157609 has offset 1).

The definition of A157609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157609.P14910852287074054418

`(A158130(2*(n+1))-1)*11`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157609

/-- `(A158130(2*(n+1))-1)*11` -/
def P14910852287074054418.Spec : Prop :=
  ∀ n, P14910852287074054418.a n = A157609 (n + 1)

theorem P14910852287074054418.correct : P14910852287074054418.Spec := by
  intro n
  simp only [A157609, Nat.add_sub_cancel]

end A157609

/-!
# A157610: a(n) = 29282*n^2 - 484*n + 1.

The programs for A157610, the canonical program `A157610.P244768068460791271` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157610 has offset 1).

The definition of A157610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157610.P244768068460791271

`2*A158130(n+1)²-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157610

/-- `2*A158130(n+1)²-1` -/
def P244768068460791271.Spec : Prop :=
  ∀ n, P244768068460791271.a n = A157610 (n + 1)

theorem P244768068460791271.correct : P244768068460791271.Spec := by
  intro n
  simp only [A157610, Nat.add_sub_cancel]

end A157610

/-! ## A157610.P3910410982975046283

`round(sqrt(A157040(n+1))*A157609(n+1))`
-/

namespace A157610.P3910410982975046283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157040 (n + 1) : ℝ) * (A157609 (n + 1) : ℝ))

end

end A157610.P3910410982975046283

namespace A157610

/-- `round(sqrt(A157040(n+1))*A157609(n+1))` -/
def P3910410982975046283.Spec : Prop :=
  ∀ n, P3910410982975046283.a n = A157610 (n + 1)

end A157610

/-! ## A157610.P13218497946420004532

`A157614(2*(n+1))%(1-A157614(n+1))`
-/

namespace A157610.P13218497946420004532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157614 (2 * (n + 1))) (1 - A157614 (n + 1))

end

end A157610.P13218497946420004532

namespace A157610

/-- `A157614(2*(n+1))%(1-A157614(n+1))` -/
def P13218497946420004532.Spec : Prop :=
  ∀ n, P13218497946420004532.a n = A157610 (n + 1)

end A157610

/-! ## A157610.P16076270398979473182

`(A157614(2*n+2)+3)%A157614(n+1)`
-/

namespace A157610.P16076270398979473182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157614 (2 * n + 2) + 3) (A157614 (n + 1))

end

end A157610.P16076270398979473182

namespace A157610

/-- `(A157614(2*n+2)+3)%A157614(n+1)` -/
def P16076270398979473182.Spec : Prop :=
  ∀ n, P16076270398979473182.a n = A157610 (n + 1)

end A157610

/-! ## A157610.P5239619917855667462

`2*A017510(A017509(n))-1`
-/

namespace A157610.P5239619917855667462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017510 (A017509 n).toNat - 1

end

end A157610.P5239619917855667462

namespace A157610

/-- `2*A017510(A017509(n))-1` -/
def P5239619917855667462.Spec : Prop :=
  ∀ n, P5239619917855667462.a n = A157610 (n + 1)

end A157610

/-! ## A157610.P14840736681604777971

`2*A017510(sqrt(A017510(n)))-1`
-/

namespace A157610.P14840736681604777971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017510 (SequenceMachineLib.roundAway (Real.sqrt (A017510 n : ℝ))).toNat - 1

end

end A157610.P14840736681604777971

namespace A157610

/-- `2*A017510(sqrt(A017510(n)))-1` -/
def P14840736681604777971.Spec : Prop :=
  ∀ n, P14840736681604777971.a n = A157610 (n + 1)

end A157610

/-! ## A157610.P10935377389773852949

`A056220(11*11*(n+1)-1)`
-/

namespace A157610.P10935377389773852949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (11 * (11 * (n + 1)) - 1)

end

end A157610.P10935377389773852949

namespace A157610

/-- `A056220(11*11*(n+1)-1)` -/
def P10935377389773852949.Spec : Prop :=
  ∀ n, P10935377389773852949.a n = A157610 (n + 1)

end A157610

/-!
# A157612: Number of factorizations of n! into distinct factors.

The programs for A157612, there is no canonical definition to state claims against.
-/

/-! ## A157612.P7947793401111431170

`A045778(A000142(n))`
-/

namespace A157612.P7947793401111431170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A000142 n).toNat

end

end A157612.P7947793401111431170

/-! ## A157612.P17484205089108525281

`A318286(A325508(n))`
-/

namespace A157612.P17484205089108525281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A325508 n).toNat

end

end A157612.P17484205089108525281

/-! ## A157612.P4504045840113040448

`A050323(A085089(n!))`
-/

namespace A157612.P4504045840113040448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (A085089 (Nat.factorial n)).toNat

end

end A157612.P4504045840113040448

/-! ## A157612.P13020301547250452557

`A050323(A101296(n!))`
-/

namespace A157612.P13020301547250452557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (A101296 (Nat.factorial n)).toNat

end

end A157612.P13020301547250452557

/-!
# A157613: a(n) = 2662*n + 22.

The programs for A157613, the canonical program `A157613.P3701408785580871283` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157613 has offset 1).

The definition of A157613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157613.P3701408785580871283

`2*11/(n+1)*A173267(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157613

/-- `2*11/(n+1)*A173267(n+1)` -/
def P3701408785580871283.Spec : Prop :=
  ∀ n, P3701408785580871283.a n = (A157613 (n + 1) : ℚ)

end A157613

/-!
# A157614: a(n) = 29282*n^2 + 484*n + 1.

The programs for A157614, the canonical program `A157614.P10492941285321630228` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157614 has offset 1).

The definition of A157614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157614.P10492941285321630228

`2*A158131(n+1)²-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157614

/-- `2*A158131(n+1)²-1` -/
def P10492941285321630228.Spec : Prop :=
  ∀ n, P10492941285321630228.a n = A157614 (n + 1)

theorem P10492941285321630228.correct : P10492941285321630228.Spec := by
  intro n
  simp only [A157614, Nat.add_sub_cancel]

end A157614

/-! ## A157614.P9680877582197921620

`round(sqrt(A181679(n+1))*A157613(n+1))`
-/

namespace A157614.P9680877582197921620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A181679 (n + 1) : ℝ) * (A157613 (n + 1) : ℝ))

end

end A157614.P9680877582197921620

namespace A157614

/-- `round(sqrt(A181679(n+1))*A157613(n+1))` -/
def P9680877582197921620.Spec : Prop :=
  ∀ n, P9680877582197921620.a n = A157614 (n + 1)

end A157614

/-! ## A157614.P6766791689000655224

`A008683(A065091(n+1))+2*A158131(n+1)²`
-/

namespace A157614.P6766791689000655224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065091 (n + 1)).toNat + 2 * A158131 (n + 1) ^ 2

end

end A157614.P6766791689000655224

namespace A157614

/-- `A008683(A065091(n+1))+2*A158131(n+1)²` -/
def P6766791689000655224.Spec : Prop :=
  ∀ n, P6766791689000655224.a n = A157614 (n + 1)

end A157614

/-! ## A157614.P16981090691419201256

`A157610(n+1)+Δ[A017390(A005408(n))]`
-/

namespace A157614.P16981090691419201256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017390 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157610 (n + 1) + (f1 (n + 1) - f1 n)

end

end A157614.P16981090691419201256

namespace A157614

/-- `A157610(n+1)+Δ[A017390(A005408(n))]` -/
def P16981090691419201256.Spec : Prop :=
  ∀ n, P16981090691419201256.a n = A157614 (n + 1)

end A157614

/-! ## A157614.P11746535713156188185

`A008683(A022004(n+1))+2*A158131(n+1)²`
-/

namespace A157614.P11746535713156188185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A022004 (n + 1)).toNat + 2 * A158131 (n + 1) ^ 2

end

end A157614.P11746535713156188185

namespace A157614

/-- `A008683(A022004(n+1))+2*A158131(n+1)²` -/
def P11746535713156188185.Spec : Prop :=
  ∀ n, P11746535713156188185.a n = A157614 (n + 1)

end A157614

/-! ## A157614.P6640741365920662968

`A089263(A339414(n+1))+2*A158131(n+1)²`
-/

namespace A157614.P6640741365920662968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A339414 (n + 1)).toNat + 2 * A158131 (n + 1) ^ 2

end

end A157614.P6640741365920662968

namespace A157614

/-- `A089263(A339414(n+1))+2*A158131(n+1)²` -/
def P6640741365920662968.Spec : Prop :=
  ∀ n, P6640741365920662968.a n = A157614 (n + 1)

end A157614

/-! ## A157614.P8392861768251464109

`A056220(A158131(n+1))`
-/

namespace A157614.P8392861768251464109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A158131 (n + 1)).toNat

end

end A157614.P8392861768251464109

namespace A157614

/-- `A056220(A158131(n+1))` -/
def P8392861768251464109.Spec : Prop :=
  ∀ n, P8392861768251464109.a n = A157614 (n + 1)

end A157614

/-! ## A157614.P17979725382488985761

`A056220(A158130(n+1)+2)`
-/

namespace A157614.P17979725382488985761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A158130 (n + 1) + 2).toNat

end

end A157614.P17979725382488985761

namespace A157614

/-- `A056220(A158130(n+1)+2)` -/
def P17979725382488985761.Spec : Prop :=
  ∀ n, P17979725382488985761.a n = A157614 (n + 1)

end A157614

/-! ## A157614.P11366376576748418858

`A056220(A017509(A017509(n))+2)`
-/

namespace A157614.P11366376576748418858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A017509 (A017509 n).toNat + 2).toNat

end

end A157614.P11366376576748418858

namespace A157614

/-- `A056220(A017509(A017509(n))+2)` -/
def P11366376576748418858.Spec : Prop :=
  ∀ n, P11366376576748418858.a n = A157614 (n + 1)

end A157614

/-! ## A157614.P872616086151487880

`A056220(A017401(A017401(n)+10))`
-/

namespace A157614.P872616086151487880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A017401 (A017401 n + 10).toNat).toNat

end

end A157614.P872616086151487880

namespace A157614

/-- `A056220(A017401(A017401(n)+10))` -/
def P872616086151487880.Spec : Prop :=
  ∀ n, P872616086151487880.a n = A157614 (n + 1)

end A157614

/-!
# A157615: On an n X n board, a(n) is the maximal number of squares covered by a self-avoiding path made of alternated vertical and horizontal unitary steps.

The programs for A157615, there is no canonical definition to state claims against.
-/

/-! ## A157615.P18212352767498514062

`abs(lcm(2, 1-n)-(n+1)²)`
-/

namespace A157615.P18212352767498514062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lcm 2 (1 - (n : ℤ)) : ℤ) - ((n + 1) ^ 2 : ℤ)|

end

end A157615.P18212352767498514062

/-! ## A157615.P1499897488810334371

`(n+1)²-lcm(n-1, ceil(atan(n)))`
-/

namespace A157615.P1499897488810334371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Int.lcm ((n : ℤ) - 1) ⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A157615.P1499897488810334371

/-! ## A157615.P1517241644860108889

`n^(a(n-1)%2)+n²+2` with `a(0)=1`
-/

namespace A157615.P1517241644860108889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ (a (n - 1) % 2) + (n ^ 2 + 2)

end

end A157615.P1517241644860108889

/-! ## A157615.P6296451075917159142

`n^and(1, a(n-1))+n²+2` with `a(0)=1`
-/

namespace A157615.P6296451075917159142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ Nat.land 1 (a (n - 1)) + n ^ 2 + 2

end

end A157615.P6296451075917159142

/-! ## A157615.P13132450701890294097

`or(3, n²)+n*and(1, a(n-1))` with `a(0)=1`
-/

namespace A157615.P13132450701890294097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 3 (n ^ 2) + n * Nat.land 1 (a (n - 1))

end

end A157615.P13132450701890294097

/-!
# A157616: On an n X n board, a(n) is the maximal number of squares covered by a self-avoiding path that starts from a corner and is made of alternated vertical and horizontal unitary steps.

The programs for A157616, there is no canonical definition to state claims against.
-/

/-! ## A157616.P1475991023420617420

`∑[comp[2*n+3]]+lcm(2, n)+1`
-/

namespace A157616.P1475991023420617420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lcm 2 n + 1)

end

end A157616.P1475991023420617420

/-! ## A157616.P18128651721605300172

`∑[char[1]+Δ[n²]]-n*gcd(2, n)`
-/

namespace A157616.P18128651721605300172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n * Nat.gcd 2 n : ℤ)

end

end A157616.P18128651721605300172

/-! ## A157616.P7496236666339069451

`Δ[floor(n/2)²]+ceil(n/acot(n))+1`
-/

namespace A157616.P7496236666339069451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ + 1)

end

end A157616.P7496236666339069451

/-! ## A157616.P2141580627566737210

`and(1, n)+n²+(n^n)%(n+1)+1`
-/

namespace A157616.P2141580627566737210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n ^ 2 + (n ^ n % (n + 1) + 1)

end

end A157616.P2141580627566737210

/-! ## A157616.P8555865836480302474

`(n+1)²+1-∏{p}[n, #^val(2*n, #)]`
-/

namespace A157616.P8555865836480302474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (2 * n) p : ℕ) : ℤ)

end

end A157616.P8555865836480302474

/-!
# A157617: On an n X n board, a(n) is the maximal number of squares covered by a self-avoiding cycle made of alternated vertical and horizontal unit length steps.

The programs for A157617, there is no canonical definition to state claims against.
-/

/-! ## A157617.P11669521255311108129

`A168273(A001481(∑[n+1]+1)+1)-A168273(n²+1)`
-/

namespace A157617.P11669521255311108129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (A001481 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat - A168273 (n ^ 2 + 1)

end

end A157617.P11669521255311108129

/-!
# A157618: a(n) = 625*n^2 - 886*n + 314.

The programs for A157618, the canonical program `A157618.P13404385520136255282` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157618 has offset 1).

The definition of A157618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157618.P13404385520136255282

`A017006(n)+A135659(n)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157618

/-- `A017006(n)+A135659(n)²` -/
def P13404385520136255282.Spec : Prop :=
  ∀ n, P13404385520136255282.a n = A157618 (n + 1)

theorem P13404385520136255282.correct : P13404385520136255282.Spec := by
  intro n
  simp only [A157618, Nat.add_sub_cancel]

end A157618

/-! ## A157618.P18221594563814046912

`A017005(n)²+A135659(n)²`
-/

namespace A157618.P18221594563814046912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n ^ 2 + A135659 n ^ 2

end

end A157618.P18221594563814046912

namespace A157618

/-- `A017005(n)²+A135659(n)²` -/
def P18221594563814046912.Spec : Prop :=
  ∀ n, P18221594563814046912.a n = A157618 (n + 1)

end A157618

/-! ## A157618.P265178367563927624

`round((A157620(n+1)/A157619(n+1))²)`
-/

namespace A157618.P265178367563927624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157620 (n + 1) : ℚ) / (A157619 (n + 1) : ℚ)) ^ 2)

end

end A157618.P265178367563927624

namespace A157618

/-- `round((A157620(n+1)/A157619(n+1))²)` -/
def P265178367563927624.Spec : Prop :=
  ∀ n, P265178367563927624.a n = A157618 (n + 1)

end A157618

/-! ## A157618.P12908120095876260311

`A016921(4*n+1)²+A017005(n)²`
-/

namespace A157618.P12908120095876260311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (4 * n + 1) ^ 2 + A017005 n ^ 2

end

end A157618.P12908120095876260311

namespace A157618

/-- `A016921(4*n+1)²+A017005(n)²` -/
def P12908120095876260311.Spec : Prop :=
  ∀ n, P12908120095876260311.a n = A157618 (n + 1)

end A157618

/-! ## A157618.P14543758592398365594

`A154377(3*n+1)+A154377(4*n+1)-1`
-/

namespace A157618.P14543758592398365594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154377 (3 * n + 1) + (A154377 (4 * n + 1) - 1)

end

end A157618.P14543758592398365594

namespace A157618

/-- `A154377(3*n+1)+A154377(4*n+1)-1` -/
def P14543758592398365594.Spec : Prop :=
  ∀ n, P14543758592398365594.a n = A157618 (n + 1)

end A157618

/-! ## A157618.P14297961641646434921

`A017006(n)+A005408(A017557(n))²`
-/

namespace A157618.P14297961641646434921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n + A005408 (A017557 n).toNat ^ 2

end

end A157618.P14297961641646434921

namespace A157618

/-- `A017006(n)+A005408(A017557(n))²` -/
def P14297961641646434921.Spec : Prop :=
  ∀ n, P14297961641646434921.a n = A157618 (n + 1)

end A157618

/-!
# A157619: a(n) = 31250*n - 22150.

The programs for A157619, there is no canonical definition to state claims against.
-/

/-! ## A157619.P16867497915525929998

`round(A157620(n+1)/sqrt(A157618(n+1)))`
-/

namespace A157619.P16867497915525929998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157620 (n + 1) : ℝ) / Real.sqrt (A157618 (n + 1) : ℝ))

end

end A157619.P16867497915525929998

/-!
# A157620: a(n) = 781250*n^2 - 1107500*n + 392499.

The programs for A157620, there is no canonical definition to state claims against.
-/

/-! ## A157620.P15688064298240155091

`round(sqrt(A157618(n+1))*A157619(n+1))`
-/

namespace A157620.P15688064298240155091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157618 (n + 1) : ℝ) * (A157619 (n + 1) : ℝ))

end

end A157620.P15688064298240155091

/-! ## A157620.P715259131294941412

`A154358(Δ[A153785(n)]+3)`
-/

namespace A157620.P715259131294941412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154358 (f1 (n + 1) - f1 n + 3).toNat

end

end A157620.P715259131294941412

/-! ## A157620.P1752061945330846628

`A154358(A135659(n)+1+n)`
-/

namespace A157620.P1752061945330846628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154358 (A135659 n + 1 + (n : ℤ)).toNat

end

end A157620.P1752061945330846628

/-! ## A157620.P11197017494105095683

`A154358(ceil(sqrt(A157618(n+1))))`
-/

namespace A157620.P11197017494105095683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154358 ⌈Real.sqrt (A157618 (n + 1) : ℝ)⌉.toNat

end

end A157620.P11197017494105095683

/-! ## A157620.P12894589776249947455

`A154358(A135659(n)-xor(n, -1))`
-/

namespace A157620.P12894589776249947455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154358 (A135659 n - Int.xor (n : ℤ) (-1)).toNat

end

end A157620.P12894589776249947455

/-!
# A157621: a(n) = 625n^2 - 364n + 53.

The programs for A157621, the canonical program `A157621.P12761623861028764782` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157621 has offset 1).

The definition of A157621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157621.P18375009296447598560

`round((A157623(n+1)/A157622(n+1))²)`
-/

namespace A157621.P18375009296447598560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157623 (n + 1) : ℚ) / (A157622 (n + 1) : ℚ)) ^ 2)

end

end A157621.P18375009296447598560

namespace A157621

/-- `round((A157623(n+1)/A157622(n+1))²)` -/
def P18375009296447598560.Spec : Prop :=
  ∀ n, P18375009296447598560.a n = A157621 (n + 1)

end A157621

/-! ## A157621.P12761623861028764782

`A017582(2*n+1)+A017042(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157621

/-- `A017582(2*n+1)+A017042(n)` -/
def P12761623861028764782.Spec : Prop :=
  ∀ n, P12761623861028764782.a n = A157621 (n + 1)

theorem P12761623861028764782.correct : P12761623861028764782.Spec := by
  intro n
  simp only [A157621, Nat.add_sub_cancel]

end A157621

/-! ## A157621.P9882882202864298673

`A017078(A016789(n))+A017042(n)`
-/

namespace A157621.P9882882202864298673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 (A016789 n).toNat + A017042 n

end

end A157621.P9882882202864298673

namespace A157621

/-- `A017078(A016789(n))+A017042(n)` -/
def P9882882202864298673.Spec : Prop :=
  ∀ n, P9882882202864298673.a n = A157621 (n + 1)

end A157621

/-! ## A157621.P5984200194473602666

`A016970(A016825(n))+A017041(n)²`
-/

namespace A157621.P5984200194473602666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 (A016825 n).toNat + A017041 n ^ 2

end

end A157621.P5984200194473602666

namespace A157621

/-- `A016970(A016825(n))+A017041(n)²` -/
def P5984200194473602666.Spec : Prop :=
  ∀ n, P5984200194473602666.a n = A157621 (n + 1)

end A157621

/-! ## A157621.P3308652471498709795

`A017042(n)+A016969(A016825(n))²`
-/

namespace A157621.P3308652471498709795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n + A016969 (A016825 n).toNat ^ 2

end

end A157621.P3308652471498709795

namespace A157621

/-- `A017042(n)+A016969(A016825(n))²` -/
def P3308652471498709795.Spec : Prop :=
  ∀ n, P3308652471498709795.a n = A157621 (n + 1)

end A157621

/-! ## A157621.P10488024561001427552

`A017509(n)+A001545(A016885(n))`
-/

namespace A157621.P10488024561001427552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n + A001545 (A016885 n).toNat

end

end A157621.P10488024561001427552

namespace A157621

/-- `A017509(n)+A001545(A016885(n))` -/
def P10488024561001427552.Spec : Prop :=
  ∀ n, P10488024561001427552.a n = A157621 (n + 1)

end A157621

/-! ## A157621.P5903779374578658537

`A017042(n)+A047452(A016969(n))²`
-/

namespace A157621.P5903779374578658537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n + A047452 (A016969 n).toNat ^ 2

end

end A157621.P5903779374578658537

namespace A157621

/-- `A017042(n)+A047452(A016969(n))²` -/
def P5903779374578658537.Spec : Prop :=
  ∀ n, P5903779374578658537.a n = A157621 (n + 1)

end A157621

/-! ## A157621.P9978612524367500948

`A017042(n)+A016789(A004770(n+1))²`
-/

namespace A157621.P9978612524367500948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n + A016789 (A004770 (n + 1)).toNat ^ 2

end

end A157621.P9978612524367500948

namespace A157621

/-- `A017042(n)+A016789(A004770(n+1))²` -/
def P9978612524367500948.Spec : Prop :=
  ∀ n, P9978612524367500948.a n = A157621 (n + 1)

end A157621

/-!
# A157622: a(n) = 31250*n - 9100.

The programs for A157622, there is no canonical definition to state claims against.
-/

/-! ## A157622.P2508831049763037482

`round(A157623(n+1)/sqrt(A157621(n+1)))`
-/

namespace A157622.P2508831049763037482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157623 (n + 1) : ℝ) / Real.sqrt (A157621 (n + 1) : ℝ))

end

end A157622.P2508831049763037482

/-!
# A157623: a(n) = 781250*n^2 - 455000*n + 66249.

The programs for A157623, there is no canonical definition to state claims against.
-/

/-! ## A157623.P17942291617600907495

`round(sqrt(A157621(n+1))*A157622(n+1))`
-/

namespace A157623.P17942291617600907495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157621 (n + 1) : ℝ) * (A157622 (n + 1) : ℝ))

end

end A157623.P17942291617600907495

/-! ## A157623.P7735267332674057886

`A154359(Δ[A263231(n+1)])`
-/

namespace A157623.P7735267332674057886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154359 (f1 (n + 1) - f1 n).toNat

end

end A157623.P7735267332674057886

/-! ## A157623.P6028941980560237322

`A154359(Δ[A153785(n)]+13)`
-/

namespace A157623.P6028941980560237322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154359 (f1 (n + 1) - f1 n + 13).toNat

end

end A157623.P6028941980560237322

/-! ## A157623.P2156595189668740131

`A154359(A154361(n+1)/10)`
-/

namespace A157623.P2156595189668740131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154359 (SequenceMachineLib.roundAway ((A154361 (n + 1) : ℚ) / 10)).toNat

end

end A157623.P2156595189668740131

/-! ## A157623.P7556684233007703921

`A154359(ceil(sqrt(A157621(n+1))))`
-/

namespace A157623.P7556684233007703921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154359 ⌈Real.sqrt (A157621 (n + 1) : ℝ)⌉.toNat

end

end A157623.P7556684233007703921

/-! ## A157623.P1148146598978487143

`A154359(round(sqrt(A157621(n+1))))`
-/

namespace A157623.P1148146598978487143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154359 (SequenceMachineLib.roundAway (Real.sqrt (A157621 (n + 1) : ℝ))).toNat

end

end A157623.P1148146598978487143

/-! ## A157623.P3137028383223423729

`A154359(Δ[A154357(n)-A263231(n)])`
-/

namespace A157623.P3137028383223423729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154357 n - A263231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154359 (f1 (n + 1) - f1 n).toNat

end

end A157623.P3137028383223423729

/-!
# A157625: Product of the composite numbers between n+1 and 2n, both inclusive.

The programs for A157625, there is no canonical definition to state claims against.
-/

/-! ## A157625.P10337750536481367747

`(n+1)!*A263931(n+1)`
-/

namespace A157625.P10337750536481367747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A263931 (n + 1)

end

end A157625.P10337750536481367747

/-! ## A157625.P3923751741880231852

`A000142(n+1)*A263931(n+1)`
-/

namespace A157625.P3923751741880231852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A263931 (n + 1)

end

end A157625.P3923751741880231852

/-! ## A157625.P11695234241110686280

`A000142(n+1)*A182923(2*(n+1))`
-/

namespace A157625.P11695234241110686280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A182923 (2 * (n + 1))

end

end A157625.P11695234241110686280

/-! ## A157625.P11023112166902646649

`A000142(n+1)*A212791(2*(n+1))`
-/

namespace A157625.P11023112166902646649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A212791 (2 * (n + 1))

end

end A157625.P11023112166902646649

/-! ## A157625.P11893008732315068169

`A000142(n+1)/A261130(n+1)*A000984(n+1)`
-/

namespace A157625.P11893008732315068169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A261130 (n + 1) : ℚ) * (A000984 (n + 1) : ℚ)

end

end A157625.P11893008732315068169

/-! ## A157625.P15248216119347562052

`A073840(n+1)/A049614(n+1)*A049614(n)`
-/

namespace A157625.P15248216119347562052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073840 (n + 1) : ℚ) / (A049614 (n + 1) : ℚ) * (A049614 n : ℚ)

end

end A157625.P15248216119347562052

/-!
# A157626: a(n) = 100*n^2 - 151*n + 57.

The programs for A157626, the canonical program `A157626.P12097189253082535444` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157626 has offset 1).

The definition of A157626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157626.P12097189253082535444

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=6, a(1)=155, a(2)=504`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157626

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P12097189253082535444.Spec : Prop :=
  ∀ n, P12097189253082535444.a n = A157626 (n + 1)

theorem P12097189253082535444.correct : P12097189253082535444.Spec := by
  intro n
  simp only [A157626, Nat.add_sub_cancel]

end A157626

/-! ## A157626.P2177572604129949660

`ceil((sqrt(a(n-1))+10)²)` with `a(0)=6`
-/

namespace A157626.P2177572604129949660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 10) ^ 2⌉

end

end A157626.P2177572604129949660

namespace A157626

/-- `ceil((sqrt(a(n-1))+10)²)` -/
def P2177572604129949660.Spec : Prop :=
  ∀ n, P2177572604129949660.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P587153759530343162

`round((sqrt(a(n-1))+10)²)` with `a(0)=6`
-/

namespace A157626.P587153759530343162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (a (n - 1) : ℝ) + 10) ^ 2)

end

end A157626.P587153759530343162

namespace A157626

/-- `round((sqrt(a(n-1))+10)²)` -/
def P587153759530343162.Spec : Prop :=
  ∀ n, P587153759530343162.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P17574639310636493511

`2*C(10*n+3, 2)-n`
-/

namespace A157626.P17574639310636493511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (10 * n + 3) 2 : ℤ) - (n : ℤ)

end

end A157626.P17574639310636493511

namespace A157626

/-- `2*C(10*n+3, 2)-n` -/
def P17574639310636493511.Spec : Prop :=
  ∀ n, P17574639310636493511.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P10609391519157692949

`(10*n+3)*(10*n+2)-n`
-/

namespace A157626.P10609391519157692949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 3) * (10 * n + 2) : ℤ) - (n : ℤ)

end

end A157626.P10609391519157692949

namespace A157626

/-- `(10*n+3)*(10*n+2)-n` -/
def P10609391519157692949.Spec : Prop :=
  ∀ n, P10609391519157692949.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P800438913529866240

`(A215146(n)+A016813(n+1))*A016813(n)`
-/

namespace A157626.P800438913529866240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215146 n + A016813 (n + 1)) * A016813 n

end

end A157626.P800438913529866240

namespace A157626

/-- `(A215146(n)+A016813(n+1))*A016813(n)` -/
def P800438913529866240.Spec : Prop :=
  ∀ n, P800438913529866240.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P9777007736664549684

`A016861(A016861(n))*(4*n+1)`
-/

namespace A157626.P9777007736664549684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A016861 n).toNat * (4 * n + 1 : ℤ)

end

end A157626.P9777007736664549684

namespace A157626

/-- `A016861(A016861(n))*(4*n+1)` -/
def P9777007736664549684.Spec : Prop :=
  ∀ n, P9777007736664549684.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P1489388958703433860

`A016813(n)*A016861(A016861(n))`
-/

namespace A157626.P1489388958703433860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A016861 (A016861 n).toNat

end

end A157626.P1489388958703433860

namespace A157626

/-- `A016813(n)*A016861(A016861(n))` -/
def P1489388958703433860.Spec : Prop :=
  ∀ n, P1489388958703433860.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P11048853886311878183

`Δ[A000384(n)]*A016861(A016861(n))`
-/

namespace A157626.P11048853886311878183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016861 (A016861 n).toNat

end

end A157626.P11048853886311878183

namespace A157626

/-- `Δ[A000384(n)]*A016861(A016861(n))` -/
def P11048853886311878183.Spec : Prop :=
  ∀ n, P11048853886311878183.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P7319114758256565007

`(A008586(n)+1)*A016861(A016861(n))`
-/

namespace A157626.P7319114758256565007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008586 n + 1) * A016861 (A016861 n).toNat

end

end A157626.P7319114758256565007

namespace A157626

/-- `(A008586(n)+1)*A016861(A016861(n))` -/
def P7319114758256565007.Spec : Prop :=
  ∀ n, P7319114758256565007.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P10231184348841057627

`(A016777(n)+n)*A016861(A016861(n))`
-/

namespace A157626.P10231184348841057627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + (n : ℤ)) * A016861 (A016861 n).toNat

end

end A157626.P10231184348841057627

namespace A157626

/-- `(A016777(n)+n)*A016861(A016861(n))` -/
def P10231184348841057627.Spec : Prop :=
  ∀ n, P10231184348841057627.a n = A157626 (n + 1)

end A157626

/-! ## A157626.P8579888473355738292

`A016813(n)*A168282(A017293(n))`
-/

namespace A157626.P8579888473355738292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A168282 (A017293 n).toNat

end

end A157626.P8579888473355738292

namespace A157626

/-- `A016813(n)*A168282(A017293(n))` -/
def P8579888473355738292.Spec : Prop :=
  ∀ n, P8579888473355738292.a n = A157626 (n + 1)

end A157626

/-!
# A157627: a(n) = 8000n - 6040.

The programs for A157627, the canonical program `A157627.P13299627642857711962` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157627 has offset 1).

The definition of A157627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157627.P13299627642857711962

`2*A157515(A016813(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157627

/-- `2*A157515(A016813(n))` -/
def P13299627642857711962.Spec : Prop :=
  ∀ n, P13299627642857711962.a n = A157627 (n + 1)

theorem P13299627642857711962.correct : P13299627642857711962.Spec := by
  intro n
  simp only [A157627, Nat.add_sub_cancel]

end A157627

/-!
# A157628: a(n) = 80000n^2 - 120800n + 45601.

The programs for A157628, the canonical program `A157628.P10806656981275621240` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157628 has offset 1).

The definition of A157628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157628.P10806656981275621240

`round(sqrt(A157626(n+1))*A157627(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157628

/-- `round(sqrt(A157626(n+1))*A157627(n+1))` -/
def P10806656981275621240.Spec : Prop :=
  ∀ n, P10806656981275621240.a n = A157628 (n + 1)

theorem P10806656981275621240.correct : P10806656981275621240.Spec := by
  intro n
  simp only [A157628, Nat.add_sub_cancel]

end A157628

/-! ## A157628.P245761756901500044

`A157516(4*n+1)`
-/

namespace A157628.P245761756901500044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (4 * n + 1)

end

end A157628.P245761756901500044

namespace A157628

/-- `A157516(4*n+1)` -/
def P245761756901500044.Spec : Prop :=
  ∀ n, P245761756901500044.a n = A157628 (n + 1)

end A157628

/-! ## A157628.P14000086311200024448

`record[A157516(A165355(n)-n)]`
-/

namespace A157628.P14000086311200024448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (A165355 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157628.P14000086311200024448

namespace A157628

/-- `record[A157516(A165355(n)-n)]` -/
def P14000086311200024448.Spec : Prop :=
  ∀ n, P14000086311200024448.a n = A157628 (n + 1)

end A157628

/-! ## A157628.P7699217028553659739

`A157516(A016813(n))-A000035(2*n)`
-/

namespace A157628.P7699217028553659739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (A016813 n).toNat - A000035 (2 * n)

end

end A157628.P7699217028553659739

namespace A157628

/-- `A157516(A016813(n))-A000035(2*n)` -/
def P7699217028553659739.Spec : Prop :=
  ∀ n, P7699217028553659739.a n = A157628 (n + 1)

end A157628

/-! ## A157628.P15454005913723526400

`A154374(8*n+2)`
-/

namespace A157628.P15454005913723526400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (8 * n + 2)

end

end A157628.P15454005913723526400

namespace A157628

/-- `A154374(8*n+2)` -/
def P15454005913723526400.Spec : Prop :=
  ∀ n, P15454005913723526400.a n = A157628 (n + 1)

end A157628

/-! ## A157628.P12486515901714697330

`∩[A154374(n+1), A157337(n+1)]`
-/

namespace A157628.P12486515901714697330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157628.P12486515901714697330

namespace A157628

/-- `∩[A154374(n+1), A157337(n+1)]` -/
def P12486515901714697330.Spec : Prop :=
  ∀ n, (P12486515901714697330.a n : ℤ) = A157628 (n + 1)

end A157628

/-! ## A157628.P6092169074709843433

`∩[A157337(n+1), A157516(n+1)]`
-/

namespace A157628.P6092169074709843433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157628.P6092169074709843433

namespace A157628

/-- `∩[A157337(n+1), A157516(n+1)]` -/
def P6092169074709843433.Spec : Prop :=
  ∀ n, (P6092169074709843433.a n : ℤ) = A157628 (n + 1)

end A157628

/-! ## A157628.P3822639681369741960

`A069129(A008607(2*n+1)+A008607(2*n))`
-/

namespace A157628.P3822639681369741960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A008607 (2 * n + 1) + A008607 (2 * n)).toNat

end

end A157628.P3822639681369741960

namespace A157628

/-- `A069129(A008607(2*n+1)+A008607(2*n))` -/
def P3822639681369741960.Spec : Prop :=
  ∀ n, P3822639681369741960.a n = A157628 (n + 1)

end A157628

/-!
# A157629: A general recursion triangle with third part a power triangle:m=2; Power triangle: f(n,k,m)=If[n*k*(n - k) == 0, 1, n^m - (k^m + (n - k)^m)]; Recursion: A(n,k,m)=(m*(n - k) + 1)*A(n - 1, k - 1, m) + (m*k + 1)*A(n - 1, k, m) + m*f(n, k, m)*A(n - 2, k - 1, m).

The programs for A157629, there is no canonical definition to state claims against.
-/

/-! ## A157629.P7641740390740207666

`A276073(A022177(n))`
-/

namespace A157629.P7641740390740207666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276073 (A022177 n).toNat

end

end A157629.P7641740390740207666

/-! ## A157629.P18275292255485562133

`A277194(4*A185412(n))`
-/

namespace A157629.P18275292255485562133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (4 * A185412 n).toNat

end

end A157629.P18275292255485562133

/-! ## A157629.P12281571707540021315

`A334266(A157181(n))+A157169(n)`
-/

namespace A157629.P12281571707540021315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334266 (A157181 n).toNat + A157169 n

end

end A157629.P12281571707540021315

/-! ## A157629.P7755732741889313855

`A337201(A305826(n))`
-/

namespace A157629.P7755732741889313855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337201 (A305826 n).toNat

end

end A157629.P7755732741889313855

/-!
# A157630: A general recursion triangle with third part a power triangle:m=3; Power triangle: f(n,k,m)=If[n*k*(n - k) == 0, 1, n^m - (k^m + (n - k)^m)]; Recursion: A(n,k,m)=(m*(n - k) + 1)*A(n - 1, k - 1, m) + (m*k + 1)*A(n - 1, k, m) + m*f(n, k, m)*A(n - 2, k - 1, m).

The programs for A157630, there is no canonical definition to state claims against.
-/

/-! ## A157630.P3289618002587302147

`A230526(A032555(n+1))+A157150(n)`
-/

namespace A157630.P3289618002587302147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230526 (A032555 (n + 1)).toNat + A157150 n

end

end A157630.P3289618002587302147

/-! ## A157630.P7396371953207814368

`A006354(A318274(n)%A162046(n+1))`
-/

namespace A157630.P7396371953207814368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006354 (Int.tmod (A318274 n) (A162046 (n + 1))).toNat

end

end A157630.P7396371953207814368

/-! ## A157630.P2295709674370795987

`A006354(gcd(A006374(n+1), A080621(n)))`
-/

namespace A157630.P2295709674370795987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006354 (Int.gcd (A006374 (n + 1)) (A080621 n))

end

end A157630.P2295709674370795987

/-! ## A157630.P7970820491860829729

`A382232(A096735(n+1))`
-/

namespace A157630.P7970820491860829729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382232 (A096735 (n + 1)).toNat

end

end A157630.P7970820491860829729

/-!
# A157631: A general recursion triangle with third part a power triangle:m=4; Power triangle: f(n,k,m)=If[n*k*(n - k) == 0, 1, n^m - (k^m + (n - k)^m)]; Recursion: A(n,k,m)=(m*(n - k) + 1)*A(n - 1, k - 1, m) + (m*k + 1)*A(n - 1, k, m) + m*f(n, k, m)*A(n - 2, k - 1, m).

The programs for A157631, there is no canonical definition to state claims against.
-/

/-! ## A157631.P17247965360465296757

`∏{p}[A123382(A074678(n)), #]`
-/

namespace A157631.P17247965360465296757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123382 (A074678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A157631.P17247965360465296757

/-! ## A157631.P17279119331934528138

`A104182(A270256(n+1)+1)`
-/

namespace A157631.P17279119331934528138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104182 (A270256 (n + 1) + 1).toNat

end

end A157631.P17279119331934528138

/-! ## A157631.P18331250959389544757

`A123382(A074678(n*A048766(n)))`
-/

namespace A157631.P18331250959389544757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123382 (A074678 ((n : ℤ) * A048766 n).toNat).toNat

end

end A157631.P18331250959389544757

/-! ## A157631.P11553768597958315256

`A197648(A132393(3*n)+A001405(n))`
-/

namespace A157631.P11553768597958315256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197648 (A132393 (3 * n) + A001405 n).toNat

end

end A157631.P11553768597958315256

/-!
# A157632: Triangle T(n,m) read by rows: 1 in column m=0 and on the diagonal, else 3*n*m*(n-m).

The programs for A157632, the canonical program `A157632.P11981151673008096527` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157632 has offset 0).

The definition of A157632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157632.P11981151673008096527

`A103452(n)²+A176284(n)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157632

/-- `A103452(n)²+A176284(n)-1` -/
def P11981151673008096527.Spec : Prop :=
  ∀ n, P11981151673008096527.a n = A157632 n

theorem P11981151673008096527.correct : P11981151673008096527.Spec := by
  intro n
  simp only [A157632]

end A157632

/-! ## A157632.P15655905801092301877

`A176284(n)-A008611(Δ[A073424(n)]²)`
-/

namespace A157632.P15655905801092301877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176284 n - A008611 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A157632.P15655905801092301877

namespace A157632

/-- `A176284(n)-A008611(Δ[A073424(n)]²)` -/
def P15655905801092301877.Spec : Prop :=
  ∀ n, P15655905801092301877.a n = A157632 n

end A157632

/-! ## A157632.P5290431102807176049

`A008458(floor(A157635(n)/2))`
-/

namespace A157632.P5290431102807176049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ⌊(A157635 n : ℚ) / 2⌋.toNat

end

end A157632.P5290431102807176049

namespace A157632

/-- `A008458(floor(A157635(n)/2))` -/
def P5290431102807176049.Spec : Prop :=
  ∀ n, P5290431102807176049.a n = A157632 n

end A157632

/-! ## A157632.P12698508492776626233

`A008458(round(A176284(n)/6))`
-/

namespace A157632.P12698508492776626233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A176284 n : ℚ) / 6)).toNat

end

end A157632.P12698508492776626233

namespace A157632

/-- `A008458(round(A176284(n)/6))` -/
def P12698508492776626233.Spec : Prop :=
  ∀ n, P12698508492776626233.a n = A157632 n

end A157632

/-! ## A157632.P2525803883543024722

`A008458(A004526(A157635(n)))`
-/

namespace A157632.P2525803883543024722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004526 (A157635 n).toNat).toNat

end

end A157632.P2525803883543024722

namespace A157632

/-- `A008458(A004526(A157635(n)))` -/
def P2525803883543024722.Spec : Prop :=
  ∀ n, P2525803883543024722.a n = A157632 n

end A157632

/-! ## A157632.P10056012575968347357

`A008486(A003056(n)*A004247(n))`
-/

namespace A157632.P10056012575968347357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A003056 n * A004247 n).toNat

end

end A157632.P10056012575968347357

namespace A157632

/-- `A008486(A003056(n)*A004247(n))` -/
def P10056012575968347357.Spec : Prop :=
  ∀ n, P10056012575968347357.a n = A157632 n

end A157632

/-! ## A157632.P11921821512162936260

`A055456(A176284(n))`
-/

namespace A157632.P11921821512162936260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A176284 n).toNat

end

end A157632.P11921821512162936260

namespace A157632

/-- `A055456(A176284(n))` -/
def P11921821512162936260.Spec : Prop :=
  ∀ n, P11921821512162936260.a n = A157632 n

end A157632

/-! ## A157632.P12549895992775767519

`A048671(3*A157635(n))`
-/

namespace A157632.P12549895992775767519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (3 * A157635 n).toNat

end

end A157632.P12549895992775767519

namespace A157632

/-- `A048671(3*A157635(n))` -/
def P12549895992775767519.Spec : Prop :=
  ∀ n, P12549895992775767519.a n = A157632 n

end A157632

/-! ## A157632.P3069659683951856980

`A159966(3*A157635(n))`
-/

namespace A157632.P3069659683951856980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (3 * A157635 n).toNat

end

end A157632.P3069659683951856980

namespace A157632

/-- `A159966(3*A157635(n))` -/
def P3069659683951856980.Spec : Prop :=
  ∀ n, P3069659683951856980.a n = A157632 n

end A157632

/-! ## A157632.P7119725029038104317

`A327529(3*A157635(n))`
-/

namespace A157632.P7119725029038104317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (3 * A157635 n).toNat

end

end A157632.P7119725029038104317

namespace A157632

/-- `A327529(3*A157635(n))` -/
def P7119725029038104317.Spec : Prop :=
  ∀ n, P7119725029038104317.a n = A157632 n

end A157632

/-! ## A157632.P7175250100324364050

`A065190(or(1, A176284(n)))`
-/

namespace A157632.P7175250100324364050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (Int.lor 1 (A176284 n)).toNat

end

end A157632.P7175250100324364050

namespace A157632

/-- `A065190(or(1, A176284(n)))` -/
def P7175250100324364050.Spec : Prop :=
  ∀ n, P7175250100324364050.a n = A157632 n

end A157632

/-! ## A157632.P4192386912043809135

`A004442(3*A157635(n))-1`
-/

namespace A157632.P4192386912043809135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (3 * A157635 n).toNat - 1

end

end A157632.P4192386912043809135

namespace A157632

/-- `A004442(3*A157635(n))-1` -/
def P4192386912043809135.Spec : Prop :=
  ∀ n, P4192386912043809135.a n = A157632 n

end A157632

/-! ## A157632.P17666897376798686339

`A065190(2*A176284(n)-A176284(n))`
-/

namespace A157632.P17666897376798686339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (2 * A176284 n - A176284 n).toNat

end

end A157632.P17666897376798686339

namespace A157632

/-- `A065190(2*A176284(n)-A176284(n))` -/
def P17666897376798686339.Spec : Prop :=
  ∀ n, P17666897376798686339.a n = A157632 n

end A157632

/-! ## A157632.P5999025846728583640

`A065033(2*(A176284(n)-1))`
-/

namespace A157632.P5999025846728583640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (A176284 n - 1)).toNat

end

end A157632.P5999025846728583640

namespace A157632

/-- `A065033(2*(A176284(n)-1))` -/
def P5999025846728583640.Spec : Prop :=
  ∀ n, P5999025846728583640.a n = A157632 n

end A157632

/-! ## A157632.P4427985063601514918

`A065033(A176284(n)+A176284(n)-2)`
-/

namespace A157632.P4427985063601514918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A176284 n + (A176284 n - 2)).toNat

end

end A157632.P4427985063601514918

namespace A157632

/-- `A065033(A176284(n)+A176284(n)-2)` -/
def P4427985063601514918.Spec : Prop :=
  ∀ n, P4427985063601514918.a n = A157632 n

end A157632

/-! ## A157632.P16498165081140621003

`A065033(A176284(n)-(2-A176284(n)))`
-/

namespace A157632.P16498165081140621003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A176284 n - (2 - A176284 n)).toNat

end

end A157632.P16498165081140621003

namespace A157632

/-- `A065033(A176284(n)-(2-A176284(n)))` -/
def P16498165081140621003.Spec : Prop :=
  ∀ n, P16498165081140621003.a n = A157632 n

end A157632

/-!
# A157633: Triangle T(n,m) read rows: 1 in column m=0 and on the diagonal, 2*m*(n-m)*(m^2-n*m+2*n^2) otherwise.

The programs for A157633, there is no canonical definition to state claims against.
-/

/-! ## A157633.P6196470863883295893

`A176286(n)-A057427(A004247(n))`
-/

namespace A157633.P6196470863883295893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n - A057427 (A004247 n).toNat

end

end A157633.P6196470863883295893

/-! ## A157633.P10606780494712762107

`A176286(n)-A105812(A287326(n))`
-/

namespace A157633.P10606780494712762107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n - A105812 (A287326 n).toNat

end

end A157633.P10606780494712762107

/-! ## A157633.P10474242478189296793

`A176286(n)+A105812(A157635(n))`
-/

namespace A157633.P10474242478189296793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n + A105812 (A157635 n).toNat

end

end A157633.P10474242478189296793

/-! ## A157633.P12579043111456767738

`A176286(n)+A105812(A157632(n))`
-/

namespace A157633.P12579043111456767738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n + A105812 (A157632 n).toNat

end

end A157633.P12579043111456767738

/-! ## A157633.P6931041818432458911

`A176286(n)-A105812(A176284(n))`
-/

namespace A157633.P6931041818432458911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n - A105812 (A176284 n).toNat

end

end A157633.P6931041818432458911

/-! ## A157633.P2802934601032664135

`A176286(n)-A001221(A152714(n))`
-/

namespace A157633.P2802934601032664135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n - A001221 (A152714 n).toNat

end

end A157633.P2802934601032664135

/-! ## A157633.P6506717707376926176

`A176286(n)-A057427(A014473(n))`
-/

namespace A157633.P6506717707376926176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n - A057427 (A014473 n).toNat

end

end A157633.P6506717707376926176

/-! ## A157633.P6337046116998178784

`A176286(n)-A267537(A028326(n))`
-/

namespace A157633.P6337046116998178784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176286 n - A267537 (A028326 n).toNat

end

end A157633.P6337046116998178784

/-! ## A157633.P17553386602134717282

`A004275(ceil(A176286(n)/2))`
-/

namespace A157633.P17553386602134717282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ⌈(A176286 n : ℚ) / 2⌉.toNat

end

end A157633.P17553386602134717282

/-! ## A157633.P15341570170036253364

`A004275((A176286(n)+1)/2)`
-/

namespace A157633.P15341570170036253364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A176286 n + 1 : ℚ) / 2)).toNat

end

end A157633.P15341570170036253364

/-!
# A157634: Triangle T(n, k) = 1 if k = 0 or k = n, otherwise n^5 - k^5 - (n-k)^5, read by rows.

The programs for A157634, there is no canonical definition to state claims against.
-/

/-! ## A157634.P2946072614584425

`A181143(n)*A271647(A181143(n))`
-/

namespace A157634.P2946072614584425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181143 n * A271647 (A181143 n).toNat

end

end A157634.P2946072614584425

/-! ## A157634.P7711874314156734161

`lcm(A157638(n), A344291(A157638(n)))`
-/

namespace A157634.P7711874314156734161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157638 n) (A344291 (A157638 n).toNat)

end

end A157634.P7711874314156734161

/-! ## A157634.P11983526070286906942

`A053589(C(15*n, floor(n/3)))`
-/

namespace A157634.P11983526070286906942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (Nat.choose (15 * n) ⌊(n : ℚ) / 3⌋.toNat)

end

end A157634.P11983526070286906942

/-! ## A157634.P14532586776815084746

`∏{p}[(A036040(n+1)-1)*(n+1)!, #]`
-/

namespace A157634.P14532586776815084746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036040 (n + 1) - 1) * (Nat.factorial (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A157634.P14532586776815084746

/-! ## A157634.P1510032713056551901

`∏{p}[A293122(A171918(3*n+4)), #]`
-/

namespace A157634.P1510032713056551901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293122 (A171918 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A157634.P1510032713056551901

/-!
# A157635: Triangle read by rows: T(n,m) = 1 if n*m*(n-m) = 0, and n*m*(n-m) otherwise.

The programs for A157635, the canonical program `A157635.P5484707962841766784` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157635 has offset 0).

The definition of A157635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157635.P5484707962841766784

`ceil(A157632(n)/3)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A157635

/-- `ceil(A157632(n)/3)` -/
def P5484707962841766784.Spec : Prop :=
  ∀ n, P5484707962841766784.a n = A157635 n

theorem P5484707962841766784.correct : P5484707962841766784.Spec := by
  intro n
  simp only [A157635]

end A157635

/-! ## A157635.P3220881499249050154

`A154325(n)*A157636(n)`
-/

namespace A157635.P3220881499249050154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n * A157636 n

end

end A157635.P3220881499249050154

namespace A157635

/-- `A154325(n)*A157636(n)` -/
def P3220881499249050154.Spec : Prop :=
  ∀ n, P3220881499249050154.a n = A157635 n

end A157635

/-! ## A157635.P12494863506096136902

`(2-A103451(n))*A157636(n)`
-/

namespace A157635.P12494863506096136902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A103451 n) * A157636 n

end

end A157635.P12494863506096136902

namespace A157635

/-- `(2-A103451(n))*A157636(n)` -/
def P12494863506096136902.Spec : Prop :=
  ∀ n, P12494863506096136902.a n = A157635 n

end A157635

/-! ## A157635.P17738026077516449979

`(2-A103452(n)²)*A157636(n)`
-/

namespace A157635.P17738026077516449979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A103452 n ^ 2) * A157636 n

end

end A157635.P17738026077516449979

namespace A157635

/-- `(2-A103452(n)²)*A157636(n)` -/
def P17738026077516449979.Spec : Prop :=
  ∀ n, P17738026077516449979.a n = A157635 n

end A157635

/-! ## A157635.P6937629866692024970

`A103451(n)+A003056(n)*A004247(n)`
-/

namespace A157635.P6937629866692024970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + A003056 n * A004247 n

end

end A157635.P6937629866692024970

namespace A157635

/-- `A103451(n)+A003056(n)*A004247(n)` -/
def P6937629866692024970.Spec : Prop :=
  ∀ n, P6937629866692024970.a n = A157635 n

end A157635

/-! ## A157635.P12643451062336520245

`A176282(n)-A077028(n)%A176282(n)`
-/

namespace A157635.P12643451062336520245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176282 n - Int.tmod (A077028 n) (A176282 n)

end

end A157635.P12643451062336520245

namespace A157635

/-- `A176282(n)-A077028(n)%A176282(n)` -/
def P12643451062336520245.Spec : Prop :=
  ∀ n, P12643451062336520245.a n = A157635 n

end A157635

/-! ## A157635.P13393763734322257583

`A086461(n)*A318274(n)`
-/

namespace A157635.P13393763734322257583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086461 n * A318274 n

end

end A157635.P13393763734322257583

namespace A157635

/-- `A086461(n)*A318274(n)` -/
def P13393763734322257583.Spec : Prop :=
  ∀ n, P13393763734322257583.a n = A157635 n

end A157635

/-! ## A157635.P10316973278366679492

`A157636(n)+A157636(n)%A157637(n)`
-/

namespace A157635.P10316973278366679492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 n + Int.tmod (A157636 n) (A157637 n)

end

end A157635.P10316973278366679492

namespace A157635

/-- `A157636(n)+A157636(n)%A157637(n)` -/
def P10316973278366679492.Spec : Prop :=
  ∀ n, P10316973278366679492.a n = A157635 n

end A157635

/-! ## A157635.P110716852644766696

`A123108(2*A003056(n)*A004247(n))`
-/

namespace A157635.P110716852644766696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * (A003056 n * A004247 n)).toNat

end

end A157635.P110716852644766696

namespace A157635

/-- `A123108(2*A003056(n)*A004247(n))` -/
def P110716852644766696.Spec : Prop :=
  ∀ n, P110716852644766696.a n = A157635 n

end A157635

/-! ## A157635.P4869949662779387424

`A123108(2*A025581(n)*A079904(n))`
-/

namespace A157635.P4869949662779387424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * (A025581 n * A079904 n)).toNat

end

end A157635.P4869949662779387424

namespace A157635

/-- `A123108(2*A025581(n)*A079904(n))` -/
def P4869949662779387424.Spec : Prop :=
  ∀ n, P4869949662779387424.a n = A157635 n

end A157635

/-! ## A157635.P12095438960651607899

`A051176(A157632(n))`
-/

namespace A157635.P12095438960651607899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A157632 n).toNat

end

end A157635.P12095438960651607899

namespace A157635

/-- `A051176(A157632(n))` -/
def P12095438960651607899.Spec : Prop :=
  ∀ n, P12095438960651607899.a n = A157635 n

end A157635

/-! ## A157635.P2722075554149583291

`A065033(A004523(A176284(n)))`
-/

namespace A157635.P2722075554149583291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004523 (A176284 n).toNat).toNat

end

end A157635.P2722075554149583291

namespace A157635

/-- `A065033(A004523(A176284(n)))` -/
def P2722075554149583291.Spec : Prop :=
  ∀ n, P2722075554149583291.a n = A157635 n

end A157635

/-! ## A157635.P17602688227960312066

`A008611(A060000(A176284(n)+1))`
-/

namespace A157635.P17602688227960312066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A060000 (A176284 n + 1).toNat).toNat

end

end A157635.P17602688227960312066

namespace A157635

/-- `A008611(A060000(A176284(n)+1))` -/
def P17602688227960312066.Spec : Prop :=
  ∀ n, P17602688227960312066.a n = A157635 n

end A157635

/-! ## A157635.P3066962261432583942

`A002264(A060000(A176284(n)+2))`
-/

namespace A157635.P3066962261432583942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A060000 (A176284 n + 2).toNat).toNat

end

end A157635.P3066962261432583942

namespace A157635

/-- `A002264(A060000(A176284(n)+2))` -/
def P3066962261432583942.Spec : Prop :=
  ∀ n, P3066962261432583942.a n = A157635 n

end A157635

/-! ## A157635.P11955959510970717119

`A285870(A176284(n)+A103452(n)²)`
-/

namespace A157635.P11955959510970717119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A176284 n + A103452 n ^ 2).toNat

end

end A157635.P11955959510970717119

namespace A157635

/-- `A285870(A176284(n)+A103452(n)²)` -/
def P11955959510970717119.Spec : Prop :=
  ∀ n, P11955959510970717119.a n = A157635 n

end A157635

/-! ## A157635.P4909271846231309131

`A008611(A176284(n)+Δ[A073424(n)])`
-/

namespace A157635.P4909271846231309131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A176284 n + (f1 (n + 1) - f1 n)).toNat

end

end A157635.P4909271846231309131

namespace A157635

/-- `A008611(A176284(n)+Δ[A073424(n)])` -/
def P4909271846231309131.Spec : Prop :=
  ∀ n, P4909271846231309131.a n = A157635 n

end A157635

/-! ## A157635.P16409916950683972930

`A008620(A022433(A003056(n)*A004247(n)))`
-/

namespace A157635.P16409916950683972930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A022433 (A003056 n * A004247 n).toNat).toNat

end

end A157635.P16409916950683972930

namespace A157635

/-- `A008620(A022433(A003056(n)*A004247(n)))` -/
def P16409916950683972930.Spec : Prop :=
  ∀ n, P16409916950683972930.a n = A157635 n

end A157635

/-! ## A157635.P13672173882401167764

`A060789(2*A157632(n))`
-/

namespace A157635.P13672173882401167764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (2 * A157632 n).toNat

end

end A157635.P13672173882401167764

namespace A157635

/-- `A060789(2*A157632(n))` -/
def P13672173882401167764.Spec : Prop :=
  ∀ n, P13672173882401167764.a n = A157635 n

end A157635

/-! ## A157635.P5086553984902943159

`A112689(2*A157632(n))`
-/

namespace A157635.P5086553984902943159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * A157632 n).toNat

end

end A157635.P5086553984902943159

namespace A157635

/-- `A112689(2*A157632(n))` -/
def P5086553984902943159.Spec : Prop :=
  ∀ n, P5086553984902943159.a n = A157635 n

end A157635

/-! ## A157635.P14743457459146154132

`A112689(A157632(n)+A157632(n)-1)`
-/

namespace A157635.P14743457459146154132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A157632 n + (A157632 n - 1)).toNat

end

end A157635.P14743457459146154132

namespace A157635

/-- `A112689(A157632(n)+A157632(n)-1)` -/
def P14743457459146154132.Spec : Prop :=
  ∀ n, P14743457459146154132.a n = A157635 n

end A157635

/-!
# A157636: Triangle read by rows: T(n, k) = 1 if k=0 or k=n, otherwise = n*k*(n-k)/2.

The programs for A157636, the canonical program `A157636.P9007390473919086256` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157636 has offset 0).

The definition of A157636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157636.P9007390473919086256

`ceil(A157635(n)/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A157636

/-- `ceil(A157635(n)/2)` -/
def P9007390473919086256.Spec : Prop :=
  ∀ n, P9007390473919086256.a n = A157636 n

theorem P9007390473919086256.correct : P9007390473919086256.Spec := by
  intro n
  simp only [A157636]

end A157636

/-! ## A157636.P4710588290095082732

`ceil(A157632(n)/6)`
-/

namespace A157636.P4710588290095082732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157632 n : ℚ) / 6⌉

end

end A157636.P4710588290095082732

namespace A157636

/-- `ceil(A157632(n)/6)` -/
def P4710588290095082732.Spec : Prop :=
  ∀ n, P4710588290095082732.a n = A157636 n

end A157636

/-! ## A157636.P1750828600598252045

`A157635(n)/A154325(n)`
-/

namespace A157636.P1750828600598252045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157635 n : ℚ) / (A154325 n : ℚ)

end

end A157636.P1750828600598252045

namespace A157636

/-- `A157635(n)/A154325(n)` -/
def P1750828600598252045.Spec : Prop :=
  ∀ n, P1750828600598252045.a n = (A157636 n : ℚ)

end A157636

/-! ## A157636.P12397468272996818133

`A004525(A157635(n))`
-/

namespace A157636.P12397468272996818133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A157635 n).toNat

end

end A157636.P12397468272996818133

namespace A157636

/-- `A004525(A157635(n))` -/
def P12397468272996818133.Spec : Prop :=
  ∀ n, P12397468272996818133.a n = A157636 n

end A157636

/-! ## A157636.P6018377641628779255

`A004526(A157635(n)+1)`
-/

namespace A157636.P6018377641628779255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A157635 n + 1).toNat

end

end A157636.P6018377641628779255

namespace A157636

/-- `A004526(A157635(n)+1)` -/
def P6018377641628779255.Spec : Prop :=
  ∀ n, P6018377641628779255.a n = A157636 n

end A157636

/-! ## A157636.P1588690567186822306

`A008619(A157635(n)-1)`
-/

namespace A157636.P1588690567186822306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A157635 n - 1).toNat

end

end A157636.P1588690567186822306

namespace A157636

/-- `A008619(A157635(n)-1)` -/
def P1588690567186822306.Spec : Prop :=
  ∀ n, P1588690567186822306.a n = A157636 n

end A157636

/-! ## A157636.P12718950208431032611

`A025480(lcm(2, A157635(n)))`
-/

namespace A157636.P12718950208431032611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lcm 2 (A157635 n))

end

end A157636.P12718950208431032611

namespace A157636

/-- `A025480(lcm(2, A157635(n)))` -/
def P12718950208431032611.Spec : Prop :=
  ∀ n, P12718950208431032611.a n = A157636 n

end A157636

/-! ## A157636.P7716540549302049587

`A123108(A003056(n)*A004247(n))`
-/

namespace A157636.P7716540549302049587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A003056 n * A004247 n).toNat

end

end A157636.P7716540549302049587

namespace A157636

/-- `A123108(A003056(n)*A004247(n))` -/
def P7716540549302049587.Spec : Prop :=
  ∀ n, P7716540549302049587.a n = A157636 n

end A157636

/-! ## A157636.P418883329934379775

`A123108(A025581(n)*A079904(n))`
-/

namespace A157636.P418883329934379775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A025581 n * A079904 n).toNat

end

end A157636.P418883329934379775

namespace A157636

/-- `A123108(A025581(n)*A079904(n))` -/
def P418883329934379775.Spec : Prop :=
  ∀ n, P418883329934379775.a n = A157636 n

end A157636

/-! ## A157636.P7361296579474357252

`A026741(A157635(n)%A051890(n))`
-/

namespace A157636.P7361296579474357252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A157635 n) (A051890 n)).toNat

end

end A157636.P7361296579474357252

namespace A157636

/-- `A026741(A157635(n)%A051890(n))` -/
def P7361296579474357252.Spec : Prop :=
  ∀ n, P7361296579474357252.a n = A157636 n

end A157636

/-! ## A157636.P10194440574803535094

`A060789(A157632(n))`
-/

namespace A157636.P10194440574803535094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A157632 n).toNat

end

end A157636.P10194440574803535094

namespace A157636

/-- `A060789(A157632(n))` -/
def P10194440574803535094.Spec : Prop :=
  ∀ n, P10194440574803535094.a n = A157636 n

end A157636

/-!
# A157638: Triangle of the elementwise product of binomial coefficients with q-binomial coefficients [n,k] for q = 2.

The programs for A157638, there is no canonical definition to state claims against.
-/

/-! ## A157638.P5548245341391047155

`A007318(n)*A022166(n)`
-/

namespace A157638.P5548245341391047155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A022166 n

end

end A157638.P5548245341391047155

/-! ## A157638.P10715138496986002062

`abs(A022166(n)*A117440(n))`
-/

namespace A157638.P10715138496986002062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022166 n * A117440 n|

end

end A157638.P10715138496986002062

/-! ## A157638.P16078891725486116867

`abs(A022166(n)*A130595(n))`
-/

namespace A157638.P16078891725486116867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022166 n * A130595 n|

end

end A157638.P16078891725486116867

/-! ## A157638.P4459905139046062599

`sqrt(A008459(n))*A022166(n)`
-/

namespace A157638.P4459905139046062599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A022166 n : ℝ)

end

end A157638.P4459905139046062599

/-! ## A157638.P10350874882124184402

`Δ[A102363(n)]*A022166(n)`
-/

namespace A157638.P10350874882124184402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A022166 n

end

end A157638.P10350874882124184402

/-! ## A157638.P15414458952104242775

`(A014473(n)+1)*A022166(n)`
-/

namespace A157638.P15414458952104242775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A022166 n

end

end A157638.P15414458952104242775

/-! ## A157638.P11148603104011317359

`A022166(n)/2*A028326(n)`
-/

namespace A157638.P11148603104011317359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / 2 * (A028326 n : ℚ)

end

end A157638.P11148603104011317359

/-! ## A157638.P8629680102327211867

`ceil(A134059(n)/3)*A022166(n)`
-/

namespace A157638.P8629680102327211867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A022166 n

end

end A157638.P8629680102327211867

/-! ## A157638.P12094061388528767496

`ceil(A134060(n)/3)*A022166(n)`
-/

namespace A157638.P12094061388528767496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A022166 n

end

end A157638.P12094061388528767496

/-! ## A157638.P18195949020718282759

`A134059(A028310(n))/3*A022166(n)`
-/

namespace A157638.P18195949020718282759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A022166 n : ℚ)

end

end A157638.P18195949020718282759

/-! ## A157638.P8568908858935046746

`A022166(n)*A193554(lt[1, A193588(n)])`
-/

namespace A157638.P8568908858935046746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A157638.P8568908858935046746

/-! ## A157638.P6200479577912294377

`(A285118(n)+A285116(n))*A022166(n)`
-/

namespace A157638.P6200479577912294377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A022166 n

end

end A157638.P6200479577912294377

/-! ## A157638.P14597429881124225630

`A022166(n)*(A028276(n)-A028263(n))`
-/

namespace A157638.P14597429881124225630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n * (A028276 n - A028263 n)

end

end A157638.P14597429881124225630

/-! ## A157638.P13115693470619050104

`gcd(A124927(n), A124928(n))*A022166(n)`
-/

namespace A157638.P13115693470619050104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A124927 n) (A124928 n) : ℤ) * A022166 n

end

end A157638.P13115693470619050104

/-! ## A157638.P13476807397888252428

`(A097805(n+1)+A097805(n))*A022166(n)`
-/

namespace A157638.P13476807397888252428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097805 (n + 1) + A097805 n) * A022166 n

end

end A157638.P13476807397888252428

/-! ## A157638.P4914218967725289050

`C(A003056(n), A002260(n+1)-1)*A022166(n)`
-/

namespace A157638.P4914218967725289050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ) * A022166 n

end

end A157638.P4914218967725289050

/-! ## A157638.P10488546669620030389

`C(A003056(n), A004736(n+1)-1)*A022166(n)`
-/

namespace A157638.P10488546669620030389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℤ) * A022166 n

end

end A157638.P10488546669620030389

/-! ## A157638.P2333062638285047240

`A022166(n)/A022167(n)*A157640(n)`
-/

namespace A157638.P2333062638285047240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / (A022167 n : ℚ) * (A157640 n : ℚ)

end

end A157638.P2333062638285047240

/-! ## A157638.P3759365308891162509

`A022166(n)/A022168(n)*A157641(n)`
-/

namespace A157638.P3759365308891162509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022166 n : ℚ) / (A022168 n : ℚ) * (A157641 n : ℚ)

end

end A157638.P3759365308891162509

/-! ## A157638.P10533467240197405772

`A022166(n)*A028310(A124928(n)-A124927(n))`
-/

namespace A157638.P10533467240197405772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n * A028310 (A124928 n - A124927 n).toNat

end

end A157638.P10533467240197405772

/-!
# A157639: Least number of points in a square n X n lattice from which all other points of the square are visible.

The programs for A157639, the canonical program `A157639.P9681935996061290247` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157639 has offset 1).

The definition of A157639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157639.P17044990666120421238

`comp[∑[or(3, n^4)]]-n+1`
-/

namespace A157639.P17044990666120421238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n ^ 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1

end

end A157639.P17044990666120421238

namespace A157639

/-- `comp[∑[or(3, n^4)]]-n+1` -/
def P17044990666120421238.Spec : Prop :=
  ∀ n, P17044990666120421238.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P5102383706397051499

`∑[char[n!-Δ[lcm(3, n)]%2]]`
-/

namespace A157639.P5102383706397051499
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - Int.tmod ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157639.P5102383706397051499

namespace A157639

/-- `∑[char[n!-Δ[lcm(3, n)]%2]]` -/
def P5102383706397051499.Spec : Prop :=
  ∀ n, (P5102383706397051499.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P16483020720426848867

`∑[char[lcm(10, a(n-1))-7]]` with `a(0)=0, a(1)=5`
-/

namespace A157639.P16483020720426848867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  (Int.lcm 10 (f2 (n - 1)) : ℤ) - 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157639.P16483020720426848867

namespace A157639

/-- `∑[char[lcm(10, a(n-1))-7]]` -/
def P16483020720426848867.Spec : Prop :=
  ∀ n, (P16483020720426848867.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P3276365804382359333

`∑[char[∑[or(3, n^4)]-n]]+1`
-/

namespace A157639.P3276365804382359333
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n ^ 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157639.P3276365804382359333

namespace A157639

/-- `∑[char[∑[or(3, n^4)]-n]]+1` -/
def P3276365804382359333.Spec : Prop :=
  ∀ n, (P3276365804382359333.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P6923058639151067292

`floor(3^atan(log((n%2)^n+n)))`
-/

namespace A157639.P6923058639151067292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ (Real.arctan (Real.log (((n % 2) ^ n + n : ℕ) : ℝ)))⌋

end

end A157639.P6923058639151067292

namespace A157639

/-- `floor(3^atan(log((n%2)^n+n)))` -/
def P6923058639151067292.Spec : Prop :=
  ∀ n, P6923058639151067292.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P8638503516816729706

`∑[char[n!-Δ[xor(n, 2*n)]%2]]`
-/

namespace A157639.P8638503516816729706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - Int.tmod ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157639.P8638503516816729706

namespace A157639

/-- `∑[char[n!-Δ[xor(n, 2*n)]%2]]` -/
def P8638503516816729706.Spec : Prop :=
  ∀ n, (P8638503516816729706.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P15278146795197390336

`a(ceil(log2(∑[n]+2)/2))+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A157639.P15278146795197390336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ) / 2⌉.toNat + 1

end

end A157639.P15278146795197390336

namespace A157639

/-- `a(ceil(log2(∑[n]+2)/2))+1` -/
def P15278146795197390336.Spec : Prop :=
  ∀ n, (P15278146795197390336.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P3853757132410233323

`∑[char[abs(2*n-5^n)+2]]+1`
-/

namespace A157639.P3853757132410233323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (5 ^ n : ℤ)| + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157639.P3853757132410233323

namespace A157639

/-- `∑[char[abs(2*n-5^n)+2]]+1` -/
def P3853757132410233323.Spec : Prop :=
  ∀ n, (P3853757132410233323.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P15217394024536659565

`∑[char[and(3, n-1)+7*a(n-1)]]` with `a(0)=0, a(1)=5, a(2)=3`
-/

namespace A157639.P15217394024536659565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 3] fun n f2 =>
  Int.land 3 ((n : ℤ) - 1) + 7 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157639.P15217394024536659565

namespace A157639

/-- `∑[char[and(3, n-1)+7*a(n-1)]]` -/
def P15217394024536659565.Spec : Prop :=
  ∀ n, (P15217394024536659565.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P15270219458721616371

`floor(sqrt(3*A061555(n)))`
-/

namespace A157639.P15270219458721616371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A061555 n)

end

end A157639.P15270219458721616371

namespace A157639

/-- `floor(sqrt(3*A061555(n)))` -/
def P15270219458721616371.Spec : Prop :=
  ∀ n, P15270219458721616371.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P1029337615294322672

`floor(sqrt(log2(A076201(n+1))))`
-/

namespace A157639.P1029337615294322672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.logb 2 (A076201 (n + 1) : ℝ))⌋

end

end A157639.P1029337615294322672

namespace A157639

/-- `floor(sqrt(log2(A076201(n+1))))` -/
def P1029337615294322672.Spec : Prop :=
  ∀ n, P1029337615294322672.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P890689279306545149

`∑[char[A000040(a(n-1)+n)]]` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A157639.P890689279306545149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 0] fun n f2 =>
  A000040 (f2 (n - 1) + (n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157639.P890689279306545149

namespace A157639

/-- `∑[char[A000040(a(n-1)+n)]]` -/
def P890689279306545149.Spec : Prop :=
  ∀ n, (P890689279306545149.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P7595834573267015190

`∑[A000005(∑[∏{e}[n, #+1]]+n)%2]`
-/

namespace A157639.P7595834573267015190
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (∑ j ∈ Finset.range (n + 1), f2 j + n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157639.P7595834573267015190

namespace A157639

/-- `∑[A000005(∑[∏{e}[n, #+1]]+n)%2]` -/
def P7595834573267015190.Spec : Prop :=
  ∀ n, P7595834573267015190.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P4666788309762911735

`∑[char[A000203(n+1)+(n-1)^(n+1)]]`
-/

namespace A157639.P4666788309762911735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + ((n : ℤ) - 1) ^ (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157639.P4666788309762911735

namespace A157639

/-- `∑[char[A000203(n+1)+(n-1)^(n+1)]]` -/
def P4666788309762911735.Spec : Prop :=
  ∀ n, (P4666788309762911735.a n : ℤ) = A157639 (n + 1)

end A157639

/-! ## A157639.P11640391134015824906

`A039728(A061555(n))`
-/

namespace A157639.P11640391134015824906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039728 (A061555 n).toNat

end

end A157639.P11640391134015824906

namespace A157639

/-- `A039728(A061555(n))` -/
def P11640391134015824906.Spec : Prop :=
  ∀ n, P11640391134015824906.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P15629371223969195896

`A390765(A268673(n))`
-/

namespace A157639.P15629371223969195896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A268673 n).toNat

end

end A157639.P15629371223969195896

namespace A157639

/-- `A390765(A268673(n))` -/
def P15629371223969195896.Spec : Prop :=
  ∀ n, P15629371223969195896.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P15361214115344475031

`A082597(A068509(n+1))`
-/

namespace A157639.P15361214115344475031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082597 (A068509 (n + 1)).toNat

end

end A157639.P15361214115344475031

namespace A157639

/-- `A082597(A068509(n+1))` -/
def P15361214115344475031.Spec : Prop :=
  ∀ n, P15361214115344475031.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P6123308592969704585

`A186188(A061794(n+1))`
-/

namespace A157639.P6123308592969704585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186188 (A061794 (n + 1)).toNat

end

end A157639.P6123308592969704585

namespace A157639

/-- `A186188(A061794(n+1))` -/
def P6123308592969704585.Spec : Prop :=
  ∀ n, P6123308592969704585.a n = A157639 (n + 1)

end A157639

/-! ## A157639.P9681935996061290247

`A084558(A171526(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157639

/-- `A084558(A171526(n+1))` -/
def P9681935996061290247.Spec : Prop :=
  ∀ n, P9681935996061290247.a n = A157639 (n + 1)

theorem P9681935996061290247.correct : P9681935996061290247.Spec := by
  intro n
  simp only [A157639, Nat.add_sub_cancel]

end A157639

/-!
# A157640: Triangle of the elementwise product of binomial coefficients with q-binomial coefficients [n,k] for q = 3.

The programs for A157640, there is no canonical definition to state claims against.
-/

/-! ## A157640.P2388591640167711864

`A007318(n)*A022167(n)`
-/

namespace A157640.P2388591640167711864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A022167 n

end

end A157640.P2388591640167711864

/-! ## A157640.P2495143758993790327

`abs(A022167(n)*A130595(n))`
-/

namespace A157640.P2495143758993790327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022167 n * A130595 n|

end

end A157640.P2495143758993790327

/-! ## A157640.P6832233806629206756

`sqrt(A008459(n))*A022167(n)`
-/

namespace A157640.P6832233806629206756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A022167 n : ℝ)

end

end A157640.P6832233806629206756

/-! ## A157640.P355154578604172216

`Δ[A102363(n)]*A022167(n)`
-/

namespace A157640.P355154578604172216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A022167 n

end

end A157640.P355154578604172216

/-! ## A157640.P15525023476387238697

`(A014473(n)+1)*A022167(n)`
-/

namespace A157640.P15525023476387238697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A022167 n

end

end A157640.P15525023476387238697

/-! ## A157640.P13932912102048387816

`A022167(n)/2*A028326(n)`
-/

namespace A157640.P13932912102048387816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / 2 * (A028326 n : ℚ)

end

end A157640.P13932912102048387816

/-! ## A157640.P9122878166060612304

`ceil(A134059(n)/3)*A022167(n)`
-/

namespace A157640.P9122878166060612304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A022167 n

end

end A157640.P9122878166060612304

/-! ## A157640.P12325524498139771942

`ceil(A134060(n)/3)*A022167(n)`
-/

namespace A157640.P12325524498139771942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A022167 n

end

end A157640.P12325524498139771942

/-! ## A157640.P17377616003656502594

`A022167(n)*A178112(A185869(n+1))`
-/

namespace A157640.P17377616003656502594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A178112 (A185869 (n + 1)).toNat

end

end A157640.P17377616003656502594

/-! ## A157640.P14903792950393909035

`A134059(A028310(n))/3*A022167(n)`
-/

namespace A157640.P14903792950393909035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A022167 n : ℚ)

end

end A157640.P14903792950393909035

/-! ## A157640.P11710087568993681384

`A022167(n)*A193554(lt[1, A193588(n)])`
-/

namespace A157640.P11710087568993681384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A157640.P11710087568993681384

/-! ## A157640.P14671896793275290082

`(A285118(n)+A285116(n))*A022167(n)`
-/

namespace A157640.P14671896793275290082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A022167 n

end

end A157640.P14671896793275290082

/-! ## A157640.P5584480609708156142

`A022167(n)*(A028276(n)-A028263(n))`
-/

namespace A157640.P5584480609708156142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * (A028276 n - A028263 n)

end

end A157640.P5584480609708156142

/-! ## A157640.P13753648767719990983

`A022167(n)/A022166(n)*A157638(n)`
-/

namespace A157640.P13753648767719990983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / (A022166 n : ℚ) * (A157638 n : ℚ)

end

end A157640.P13753648767719990983

/-! ## A157640.P7224513187508147901

`gcd(A124927(n), A124928(n))*A022167(n)`
-/

namespace A157640.P7224513187508147901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A124927 n) (A124928 n) : ℤ) * A022167 n

end

end A157640.P7224513187508147901

/-! ## A157640.P9016951120882883597

`C(A003056(n), A002260(n+1)-1)*A022167(n)`
-/

namespace A157640.P9016951120882883597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ) * A022167 n

end

end A157640.P9016951120882883597

/-! ## A157640.P470038903077430249

`C(A003056(n), A004736(n+1)-1)*A022167(n)`
-/

namespace A157640.P470038903077430249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℤ) * A022167 n

end

end A157640.P470038903077430249

/-! ## A157640.P9971667027402823927

`A022167(n)/A022168(n)*A157641(n)`
-/

namespace A157640.P9971667027402823927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022167 n : ℚ) / (A022168 n : ℚ) * (A157641 n : ℚ)

end

end A157640.P9971667027402823927

/-! ## A157640.P6946300920565151906

`A022167(n)*A028310(A124928(n)-A124927(n))`
-/

namespace A157640.P6946300920565151906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A028310 (A124928 n - A124927 n).toNat

end

end A157640.P6946300920565151906

/-! ## A157640.P4169273962544182875

`A022167(n)*A028310(A028276(n)%A028263(n))`
-/

namespace A157640.P4169273962544182875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A028310 (Int.tmod (A028276 n) (A028263 n)).toNat

end

end A157640.P4169273962544182875

/-!
# A157641: Triangle of the elementwise product of binomial coefficients with q-binomial coefficients [n,k] for q = 4.

The programs for A157641, there is no canonical definition to state claims against.
-/

/-! ## A157641.P13053851822100280389

`A007318(n)*A022168(n)`
-/

namespace A157641.P13053851822100280389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A022168 n

end

end A157641.P13053851822100280389

/-! ## A157641.P12304559533885223446

`abs(A022168(n)*A108086(n))`
-/

namespace A157641.P12304559533885223446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022168 n * A108086 n|

end

end A157641.P12304559533885223446

/-! ## A157641.P6992445411630443637

`sqrt(A008459(n))*A022168(n)`
-/

namespace A157641.P6992445411630443637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A022168 n : ℝ)

end

end A157641.P6992445411630443637

/-! ## A157641.P6499243415866680169

`Δ[A102363(n)]*A022168(n)`
-/

namespace A157641.P6499243415866680169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A022168 n

end

end A157641.P6499243415866680169

/-! ## A157641.P4574908647737677810

`(A014473(n)+1)*A022168(n)`
-/

namespace A157641.P4574908647737677810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A022168 n

end

end A157641.P4574908647737677810

/-! ## A157641.P6979350364925307848

`A022168(n)/2*A028326(n)`
-/

namespace A157641.P6979350364925307848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / 2 * (A028326 n : ℚ)

end

end A157641.P6979350364925307848

/-! ## A157641.P3862875373435276596

`A022168(n)*A097805(A014132(n+1))`
-/

namespace A157641.P3862875373435276596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n * A097805 (A014132 (n + 1)).toNat

end

end A157641.P3862875373435276596

/-! ## A157641.P130877695933451870

`A022168(n)/A022166(n)*A157638(n)`
-/

namespace A157641.P130877695933451870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / (A022166 n : ℚ) * (A157638 n : ℚ)

end

end A157641.P130877695933451870

/-! ## A157641.P15706938253515788182

`A022168(n)/A022167(n)*A157640(n)`
-/

namespace A157641.P15706938253515788182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022168 n : ℚ) / (A022167 n : ℚ) * (A157640 n : ℚ)

end

end A157641.P15706938253515788182

/-! ## A157641.P6658917199549717258

`A004525(A028326(n))*A022168(n)`
-/

namespace A157641.P6658917199549717258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A022168 n

end

end A157641.P6658917199549717258

/-! ## A157641.P7281635216576618225

`A022168(n)*A032742(A134058(n))`
-/

namespace A157641.P7281635216576618225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n * A032742 (A134058 n).toNat

end

end A157641.P7281635216576618225

/-!
# A157644: Indices of 3's in A090822.

The programs for A157644, there is no canonical definition to state claims against.
-/

/-! ## A157644.P6854422428567466937

`eq[3, A090822(n+1)]+1`
-/

namespace A157644.P6854422428567466937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A157644.P6854422428567466937

/-! ## A157644.P7962363160908368808

`eq[2, A000005(a(A090822(n)))]` with `a(0)=1, a(1)=8`
-/

namespace A157644.P7962363160908368808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  A000005 (f2 (A090822 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157644.P7962363160908368808

/-! ## A157644.P1494688318172632428

`eq[3, A090822(A028310(n))]`
-/

namespace A157644.P1494688318172632428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157644.P1494688318172632428

/-! ## A157644.P4752183861324652767

`A065475(eq[3, A090822(n+1)])`
-/

namespace A157644.P4752183861324652767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157644.P4752183861324652767

/-! ## A157644.P747619858781821088

`eq[3, A090822(A233583(n+1))]`
-/

namespace A157644.P747619858781821088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157644.P747619858781821088

/-! ## A157644.P1185309078513511755

`A157763(n)+a(n-1)` with `a(0)=9`
-/

namespace A157644.P1185309078513511755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A157763 n + a (n - 1)

end

end A157644.P1185309078513511755

/-! ## A157644.P14509110760356306526

`∑[A157763(A028310(n))]`
-/

namespace A157644.P14509110760356306526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P14509110760356306526

/-! ## A157644.P17554031572961388885

`∑[A157763(A137734(n²))]`
-/

namespace A157644.P17554031572961388885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P17554031572961388885

/-! ## A157644.P17778246082206261112

`∑[A157763(A134478(∑[n]))]`
-/

namespace A157644.P17778246082206261112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P17778246082206261112

/-! ## A157644.P17892452516942501151

`∑[A157763(A193739(∑[n]))]`
-/

namespace A157644.P17892452516942501151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A193739 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P17892452516942501151

/-! ## A157644.P13846708494160175152

`∑[A157763(A065033(2*n))]`
-/

namespace A157644.P13846708494160175152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P13846708494160175152

/-! ## A157644.P15619890238477191157

`∑[A157763(A123108(2*n))]`
-/

namespace A157644.P15619890238477191157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P15619890238477191157

/-! ## A157644.P7295942000310540964

`∑[A157763(A000007(n)+n)]`
-/

namespace A157644.P7295942000310540964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P7295942000310540964

/-! ## A157644.P11805203062080197990

`∑[A157763(A004277(n)-n)]`
-/

namespace A157644.P11805203062080197990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P11805203062080197990

/-! ## A157644.P5315906063625054941

`∑[A157763(A101279(2*n+1))]`
-/

namespace A157644.P5315906063625054941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A101279 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P5315906063625054941

/-! ## A157644.P15953469178231972567

`∑[A157763(1-A178334(n)+n)]`
-/

namespace A157644.P15953469178231972567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (1 - A178334 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P15953469178231972567

/-! ## A157644.P5353602445626388860

`∑[A157763(A008458(n)-5*n)]`
-/

namespace A157644.P5353602445626388860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A008458 n - (5 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P5353602445626388860

/-! ## A157644.P13387687064764729390

`∑[A157763(A003056(A000124(n)))]`
-/

namespace A157644.P13387687064764729390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P13387687064764729390

/-! ## A157644.P11053885200359406163

`∑[A157763(A008619(A004273(n)))]`
-/

namespace A157644.P11053885200359406163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157644.P11053885200359406163

/-!
# A157645: A157644(n+39)-A157644(n).

The programs for A157645, there is no canonical definition to state claims against.
-/

/-! ## A157645.P4397496905742521653

`A105512(A105516(n))+220`
-/

namespace A157645.P4397496905742521653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A105516 n).toNat + 220

end

end A157645.P4397496905742521653

/-!
# A157646: Positive numbers y such that y^2 is of the form x^2 + (x+31)^2 with integer x.

The programs for A157646, the canonical program `A157646.P18116660838460927538` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157646 has offset 1).

The definition of A157646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157646.P18116660838460927538

`6*a(n-3)-a(n-6)` with `a(0)=25, a(1)=31, a(2)=41, a(3)=109, a(4)=155, a(5)=221`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157646

/-- `6*a(n-3)-a(n-6)` -/
def P18116660838460927538.Spec : Prop :=
  ∀ n, P18116660838460927538.a n = A157646 (n + 1)

theorem P18116660838460927538.correct : P18116660838460927538.Spec := by
  intro n
  simp only [A157646, Nat.add_sub_cancel]

end A157646

/-!
# A157650: Number of minimum geometric construction etches with compass of fixed opening and straightedge to find the centroid of n points.

The programs for A157650, there is no canonical definition to state claims against.
-/

/-! ## A157650.P16493239509508971063

`A316324(n+1)-A319443(A174503(n))`
-/

namespace A157650.P16493239509508971063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316324 (n + 1) - A319443 (A174503 n).toNat

end

end A157650.P16493239509508971063

/-! ## A157650.P12715524094801244642

`A000120(A027742(n+1))+4*n-A001221(A047363(n+2))`
-/

namespace A157650.P12715524094801244642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A027742 (n + 1)).toNat + (4 * n : ℤ) - A001221 (A047363 (n + 2)).toNat

end

end A157650.P12715524094801244642

/-!
# A157651: a(n) = 100*n^2 - 49*n + 6.

The programs for A157651, the canonical program `A157651.P1733031852348138624` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157651 has offset 1).

The definition of A157651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157651.P1733031852348138624

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=57, a(1)=308, a(2)=759`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157651

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1733031852348138624.Spec : Prop :=
  ∀ n, P1733031852348138624.a n = A157651 (n + 1)

theorem P1733031852348138624.correct : P1733031852348138624.Spec := by
  intro n
  simp only [A157651, Nat.add_sub_cancel]

end A157651

/-! ## A157651.P1907984243056341511

`(10*n+7)²+12*n+8-n`
-/

namespace A157651.P1907984243056341511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 7) ^ 2 : ℤ) + ((12 * n + 8 : ℤ) - (n : ℤ))

end

end A157651.P1907984243056341511

namespace A157651

/-- `(10*n+7)²+12*n+8-n` -/
def P1907984243056341511.Spec : Prop :=
  ∀ n, P1907984243056341511.a n = A157651 (n + 1)

end A157651

/-! ## A157651.P17948198273018289398

`(4*n+3)*(5*A016897(n)-1)`
-/

namespace A157651.P17948198273018289398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * (5 * A016897 n - 1)

end

end A157651.P17948198273018289398

namespace A157651

/-- `(4*n+3)*(5*A016897(n)-1)` -/
def P17948198273018289398.Spec : Prop :=
  ∀ n, P17948198273018289398.a n = A157651 (n + 1)

end A157651

/-! ## A157651.P3334081206396886703

`(5*A016873(n)+9)*A004767(n)`
-/

namespace A157651.P3334081206396886703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A016873 n + 9) * A004767 n

end

end A157651.P3334081206396886703

namespace A157651

/-- `(5*A016873(n)+9)*A004767(n)` -/
def P3334081206396886703.Spec : Prop :=
  ∀ n, P3334081206396886703.a n = A157651 (n + 1)

end A157651

/-! ## A157651.P6006133412889786493

`(A156619(2*(n+1))+1)*(4*n+3)`
-/

namespace A157651.P6006133412889786493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156619 (2 * (n + 1)) + 1) * (4 * n + 3 : ℤ)

end

end A157651.P6006133412889786493

namespace A157651

/-- `(A156619(2*(n+1))+1)*(4*n+3)` -/
def P6006133412889786493.Spec : Prop :=
  ∀ n, P6006133412889786493.a n = A157651 (n + 1)

end A157651

/-! ## A157651.P12877210398477145239

`(A017605(2*n+1)+n)*(4*n+3)`
-/

namespace A157651.P12877210398477145239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017605 (2 * n + 1) + (n : ℤ)) * (4 * n + 3 : ℤ)

end

end A157651.P12877210398477145239

namespace A157651

/-- `(A017605(2*n+1)+n)*(4*n+3)` -/
def P12877210398477145239.Spec : Prop :=
  ∀ n, P12877210398477145239.a n = A157651 (n + 1)

end A157651

/-! ## A157651.P12331871931736546936

`(Δ[A000567(Δ[n²])]+n-1)*A004767(n)`
-/

namespace A157651.P12331871931736546936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + ((n : ℤ) - 1)) * A004767 n

end

end A157651.P12331871931736546936

namespace A157651

/-- `(Δ[A000567(Δ[n²])]+n-1)*A004767(n)` -/
def P12331871931736546936.Spec : Prop :=
  ∀ n, P12331871931736546936.a n = A157651 (n + 1)

end A157651

/-! ## A157651.P5498684436533054450

`A004767(n)*A016897(A016885(n))`
-/

namespace A157651.P5498684436533054450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016897 (A016885 n).toNat

end

end A157651.P5498684436533054450

namespace A157651

/-- `A004767(n)*A016897(A016885(n))` -/
def P5498684436533054450.Spec : Prop :=
  ∀ n, P5498684436533054450.a n = A157651 (n + 1)

end A157651

/-! ## A157651.P7599570294577834426

`A004767(n)*A016897(A016897(n)-1)`
-/

namespace A157651.P7599570294577834426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016897 (A016897 n - 1).toNat

end

end A157651.P7599570294577834426

namespace A157651

/-- `A004767(n)*A016897(A016897(n)-1)` -/
def P7599570294577834426.Spec : Prop :=
  ∀ n, P7599570294577834426.a n = A157651 (n + 1)

end A157651

/-! ## A157651.P10447897829888046391

`A004767(n)*A016897(A004767(n)+n)`
-/

namespace A157651.P10447897829888046391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n * A016897 (A004767 n + (n : ℤ)).toNat

end

end A157651.P10447897829888046391

namespace A157651

/-- `A004767(n)*A016897(A004767(n)+n)` -/
def P10447897829888046391.Spec : Prop :=
  ∀ n, P10447897829888046391.a n = A157651 (n + 1)

end A157651

/-!
# A157652: a(n) = 40*(200*n - 49).

The programs for A157652, there is no canonical definition to state claims against.
-/

/-! ## A157652.P6816170305228726186

`round(A157653(n+1)/sqrt(A157651(n+1)))`
-/

namespace A157652.P6816170305228726186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157653 (n + 1) : ℝ) / Real.sqrt (A157651 (n + 1) : ℝ))

end

end A157652.P6816170305228726186

/-!
# A157653: a(n) = 80000*n^2 - 39200*n + 4801.

The programs for A157653, there is no canonical definition to state claims against.
-/

/-! ## A157653.P9609645503293129867

`round(sqrt(A157651(n+1))*A157652(n+1))`
-/

namespace A157653.P9609645503293129867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157651 (n + 1) : ℝ) * (A157652 (n + 1) : ℝ))

end

end A157653.P9609645503293129867

/-! ## A157653.P11745336951356810653

`A157511(4*n+3)`
-/

namespace A157653.P11745336951356810653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (4 * n + 3)

end

end A157653.P11745336951356810653

/-! ## A157653.P14369749074327906687

`or(1, A157511(A004767(n)))`
-/

namespace A157653.P14369749074327906687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157511 (A004767 n).toNat)

end

end A157653.P14369749074327906687

/-! ## A157653.P12100612491938282549

`record[A157511(A059029(n+1))]`
-/

namespace A157653.P12100612491938282549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (A059029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157653.P12100612491938282549

/-! ## A157653.P11545845791051670406

`A154375(8*n+6)`
-/

namespace A157653.P11545845791051670406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (8 * n + 6)

end

end A157653.P11545845791051670406

/-! ## A157653.P3264694480511366759

`A157331(5*5*(n+1)-6)`
-/

namespace A157653.P3264694480511366759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (5 * (5 * (n + 1)) - 6)

end

end A157653.P3264694480511366759

/-! ## A157653.P10753417262765256628

`∩[A154375(n+1), A157331(n+1)]`
-/

namespace A157653.P10753417262765256628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157653.P10753417262765256628

/-! ## A157653.P2210371526631706498

`∩[A154375(n+1), A157436(n+1)]`
-/

namespace A157653.P2210371526631706498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157653.P2210371526631706498

/-! ## A157653.P17435960274154536528

`∩[A157331(n+1), A157511(n+1)]`
-/

namespace A157653.P17435960274154536528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157653.P17435960274154536528

/-! ## A157653.P15564938313914912057

`∩[A157436(n+1), A157511(n+1)]`
-/

namespace A157653.P15564938313914912057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157653.P15564938313914912057

/-!
# A157654: Triangle T(n, k, m) = 1 if k = 0 or k = n, otherwise m*abs( (n-k)^(m-1) - k^(m-1) ), with m = 2, read by rows.

The programs for A157654, the canonical program `A157654.P18153573598594551310` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157654 has offset 0).

The definition of A157654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157654.P18153573598594551310

`gcd(2*A049581(n), A103452(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A157654

/-- `gcd(2*A049581(n), A103452(n))` -/
def P18153573598594551310.Spec : Prop :=
  ∀ n, (P18153573598594551310.a n : ℤ) = A157654 n

theorem P18153573598594551310.correct : P18153573598594551310.Spec := by
  intro n
  simp only [A157654]

end A157654

/-! ## A157654.P17931521293463825059

`gcd(2*A114327(n), Δ[A073424(n)])`
-/

namespace A157654.P17931521293463825059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A114327 n) (f1 (n + 1) - f1 n)

end

end A157654.P17931521293463825059

namespace A157654

/-- `gcd(2*A114327(n), Δ[A073424(n)])` -/
def P17931521293463825059.Spec : Prop :=
  ∀ n, (P17931521293463825059.a n : ℤ) = A157654 n

end A157654

/-! ## A157654.P4114463522030518343

`gcd(A005843(A049581(n)), A103452(n))`
-/

namespace A157654.P4114463522030518343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A049581 n).toNat) (A103452 n)

end

end A157654.P4114463522030518343

namespace A157654

/-- `gcd(A005843(A049581(n)), A103452(n))` -/
def P4114463522030518343.Spec : Prop :=
  ∀ n, (P4114463522030518343.a n : ℤ) = A157654 n

end A157654

/-! ## A157654.P11946821869874874230

`∏{p}[A144464(n), #*A049581(n)]`
-/

namespace A157654.P11946821869874874230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A049581 n

end

end A157654.P11946821869874874230

namespace A157654

/-- `∏{p}[A144464(n), #*A049581(n)]` -/
def P11946821869874874230.Spec : Prop :=
  ∀ n, P11946821869874874230.a n = A157654 n

end A157654

/-! ## A157654.P12134836113817159831

`and(A005268(A295205(n+1)), A295205(n+1))`
-/

namespace A157654.P12134836113817159831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005268 (A295205 (n + 1)).toNat) (A295205 (n + 1))

end

end A157654.P12134836113817159831

namespace A157654

/-- `and(A005268(A295205(n+1)), A295205(n+1))` -/
def P12134836113817159831.Spec : Prop :=
  ∀ n, P12134836113817159831.a n = A157654 n

end A157654

/-!
# A157657: a(1) = 1, a(n) = -mu(n) for n >= 2.

The programs for A157657, the canonical program `A157657.P1538413047181948395` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157657 has offset 1).

The definition of A157657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157657.P9083691234626020111

`(2-A326415(n+1))%2`
-/

namespace A157657.P9083691234626020111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A326415 (n + 1)) 2

end

end A157657.P9083691234626020111

namespace A157657

/-- `(2-A326415(n+1))%2` -/
def P9083691234626020111.Spec : Prop :=
  ∀ n, P9083691234626020111.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P13308016442642729816

`(2-A346234(n+1))%2`
-/

namespace A157657.P13308016442642729816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A346234 (n + 1)) 2

end

end A157657.P13308016442642729816

namespace A157657

/-- `(2-A346234(n+1))%2` -/
def P13308016442642729816.Spec : Prop :=
  ∀ n, P13308016442642729816.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P18166171140491339691

`(2-A346254(n+1))%2`
-/

namespace A157657.P18166171140491339691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A346254 (n + 1)) 2

end

end A157657.P18166171140491339691

namespace A157657

/-- `(2-A346254(n+1))%2` -/
def P18166171140491339691.Spec : Prop :=
  ∀ n, P18166171140491339691.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P44864459150271351

`-A008683(abs(1-n)+2)`
-/

namespace A157657.P44864459150271351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (|1 - (n : ℤ)| + 2).toNat

end

end A157657.P44864459150271351

namespace A157657

/-- `-A008683(abs(1-n)+2)` -/
def P44864459150271351.Spec : Prop :=
  ∀ n, P44864459150271351.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P9026642098342771003

`a(n-1)-A127440(n)` with `a(0)=1, a(1)=1`
-/

namespace A157657.P9026642098342771003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A127440 n

end

end A157657.P9026642098342771003

namespace A157657

/-- `a(n-1)-A127440(n)` -/
def P9026642098342771003.Spec : Prop :=
  ∀ n, P9026642098342771003.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P15285279968901404374

`abs(A008683(n+1)-n)-n`
-/

namespace A157657.P15285279968901404374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1) - (n : ℤ)| - (n : ℤ)

end

end A157657.P15285279968901404374

namespace A157657

/-- `abs(A008683(n+1)-n)-n` -/
def P15285279968901404374.Spec : Prop :=
  ∀ n, P15285279968901404374.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P8387670554020655747

`Δ[a(n-1)-A008683(n)]` with `a(0)=0, a(1)=1`
-/

namespace A157657.P8387670554020655747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - A008683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157657.P8387670554020655747

namespace A157657

/-- `Δ[a(n-1)-A008683(n)]` -/
def P8387670554020655747.Spec : Prop :=
  ∀ n, P8387670554020655747.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P1538413047181948395

`A157658(n+1)+A000007(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157657

/-- `A157658(n+1)+A000007(n)` -/
def P1538413047181948395.Spec : Prop :=
  ∀ n, P1538413047181948395.a n = A157657 (n + 1)

theorem P1538413047181948395.correct : P1538413047181948395.Spec := by
  intro n
  simp only [A157657, Nat.add_sub_cancel]

end A157657

/-! ## A157657.P5228900176029270353

`A000038(n)-A008683(n+1)`
-/

namespace A157657.P5228900176029270353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A008683 (n + 1)

end

end A157657.P5228900176029270353

namespace A157657

/-- `A000038(n)-A008683(n+1)` -/
def P5228900176029270353.Spec : Prop :=
  ∀ n, P5228900176029270353.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P17065549614819032265

`A157658(2-A057427(n)+n)`
-/

namespace A157657.P17065549614819032265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (2 - A057427 n + (n : ℤ)).toNat

end

end A157657.P17065549614819032265

namespace A157657

/-- `A157658(2-A057427(n)+n)` -/
def P17065549614819032265.Spec : Prop :=
  ∀ n, P17065549614819032265.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P9442021157245006477

`A157658(2-A157928(n)+n)`
-/

namespace A157657.P9442021157245006477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (2 - A157928 n + (n : ℤ)).toNat

end

end A157657.P9442021157245006477

namespace A157657

/-- `A157658(2-A157928(n)+n)` -/
def P9442021157245006477.Spec : Prop :=
  ∀ n, P9442021157245006477.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P295628300816732677

`A157658(A063524(n+1)+n+1)`
-/

namespace A157657.P295628300816732677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A063524 (n + 1) + (n + 1 : ℤ)).toNat

end

end A157657.P295628300816732677

namespace A157657

/-- `A157658(A063524(n+1)+n+1)` -/
def P295628300816732677.Spec : Prop :=
  ∀ n, P295628300816732677.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P5055531215730691794

`A008683(n+1)*A153881(n+1)`
-/

namespace A157657.P5055531215730691794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A153881 (n + 1)

end

end A157657.P5055531215730691794

namespace A157657

/-- `A008683(n+1)*A153881(n+1)` -/
def P5055531215730691794.Spec : Prop :=
  ∀ n, P5055531215730691794.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P14548404551866890169

`A008683(n+1)*A376139(n+1)`
-/

namespace A157657.P14548404551866890169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A376139 (n + 1)

end

end A157657.P14548404551866890169

namespace A157657

/-- `A008683(n+1)*A376139(n+1)` -/
def P14548404551866890169.Spec : Prop :=
  ∀ n, P14548404551866890169.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P11320706989775521484

`A008683((n+1)/A126773(n+1))`
-/

namespace A157657.P11320706989775521484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A126773 (n + 1) : ℚ))).toNat

end

end A157657.P11320706989775521484

namespace A157657

/-- `A008683((n+1)/A126773(n+1))` -/
def P11320706989775521484.Spec : Prop :=
  ∀ n, P11320706989775521484.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P1262887774477183619

`2*A000007(n)-A008683(n+1)`
-/

namespace A157657.P1262887774477183619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A008683 (n + 1)

end

end A157657.P1262887774477183619

namespace A157657

/-- `2*A000007(n)-A008683(n+1)` -/
def P1262887774477183619.Spec : Prop :=
  ∀ n, P1262887774477183619.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P3708883546730545167

`C(2, A001844(n))-A008683(n+1)`
-/

namespace A157657.P3708883546730545167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A001844 n).toNat : ℤ) - A008683 (n + 1)

end

end A157657.P3708883546730545167

namespace A157657

/-- `C(2, A001844(n))-A008683(n+1)` -/
def P3708883546730545167.Spec : Prop :=
  ∀ n, P3708883546730545167.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P10808266611537591134

`(-A008683(n+1))^A000040(n+1)`
-/

namespace A157657.P10808266611537591134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A008683 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A157657.P10808266611537591134

namespace A157657

/-- `(-A008683(n+1))^A000040(n+1)` -/
def P10808266611537591134.Spec : Prop :=
  ∀ n, P10808266611537591134.a n = (A157657 (n + 1) : ℚ)

end A157657

/-! ## A157657.P13543044922471114903

`A008683(n+1)+2*A157658(n+1)`
-/

namespace A157657.P13543044922471114903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 2 * A157658 (n + 1)

end

end A157657.P13543044922471114903

namespace A157657

/-- `A008683(n+1)+2*A157658(n+1)` -/
def P13543044922471114903.Spec : Prop :=
  ∀ n, P13543044922471114903.a n = A157657 (n + 1)

end A157657

/-! ## A157657.P16745052975323893329

`A270562(2*n+1)-A008683(n+1)`
-/

namespace A157657.P16745052975323893329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (2 * n + 1) - A008683 (n + 1)

end

end A157657.P16745052975323893329

namespace A157657

/-- `A270562(2*n+1)-A008683(n+1)` -/
def P16745052975323893329.Spec : Prop :=
  ∀ n, P16745052975323893329.a n = A157657 (n + 1)

end A157657

/-!
# A157658: a(1) = 0, a(n) = -mu(n) for n >= 2.

The programs for A157658, the canonical program `A157658.P9261385800012601708` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157658 has offset 1).

The definition of A157658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157658.P9261385800012601708

`round(-∏{p}[n+1, -#]/(n+3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157658

/-- `round(-∏{p}[n+1, -#]/(n+3))` -/
def P9261385800012601708.Spec : Prop :=
  ∀ n, P9261385800012601708.a n = A157658 (n + 1)

theorem P9261385800012601708.correct : P9261385800012601708.Spec := by
  intro n
  simp only [A157658, Nat.add_sub_cancel]

end A157658

/-! ## A157658.P8192722657658861587

`floor(acot(n)-A008683(n+1))`
-/

namespace A157658.P8192722657658861587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A008683 (n + 1) : ℝ)⌋

end

end A157658.P8192722657658861587

namespace A157658

/-- `floor(acot(n)-A008683(n+1))` -/
def P8192722657658861587.Spec : Prop :=
  ∀ n, P8192722657658861587.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P915431117948720263

`Δ[a(n-1)-A008683(n)]` with `a(0)=0, a(1)=0`
-/

namespace A157658.P915431117948720263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - A008683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157658.P915431117948720263

namespace A157658

/-- `Δ[a(n-1)-A008683(n)]` -/
def P915431117948720263.Spec : Prop :=
  ∀ n, P915431117948720263.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P11259307815882988140

`-A008683(C(4, n+3)!+n)`
-/

namespace A157658.P11259307815882988140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (Nat.factorial (Nat.choose 4 (n + 3)) + n)

end

end A157658.P11259307815882988140

namespace A157658

/-- `-A008683(C(4, n+3)!+n)` -/
def P11259307815882988140.Spec : Prop :=
  ∀ n, P11259307815882988140.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P5643256551132196993

`-A008683(C(3, n+2)+n+1)`
-/

namespace A157658.P5643256551132196993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (Nat.choose 3 (n + 2) + (n + 1))

end

end A157658.P5643256551132196993

namespace A157658

/-- `-A008683(C(3, n+2)+n+1)` -/
def P5643256551132196993.Spec : Prop :=
  ∀ n, P5643256551132196993.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P5384641597957349500

`C(2, n+2)-A008683(C(n+1, n))`
-/

namespace A157658.P5384641597957349500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - A008683 (Nat.choose (n + 1) n)

end

end A157658.P5384641597957349500

namespace A157658

/-- `C(2, n+2)-A008683(C(n+1, n))` -/
def P5384641597957349500.Spec : Prop :=
  ∀ n, P5384641597957349500.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P6117702647639835091

`-A008683(ceil(4/(2*n+1)+n))`
-/

namespace A157658.P6117702647639835091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 ⌈4 / (2 * n + 1 : ℚ) + (n : ℚ)⌉.toNat

end

end A157658.P6117702647639835091

namespace A157658

/-- `-A008683(ceil(4/(2*n+1)+n))` -/
def P6117702647639835091.Spec : Prop :=
  ∀ n, P6117702647639835091.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P5031026859368282700

`A292273(A046523(n+1))`
-/

namespace A157658.P5031026859368282700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292273 (A046523 (n + 1)).toNat

end

end A157658.P5031026859368282700

namespace A157658

/-- `A292273(A046523(n+1))` -/
def P5031026859368282700.Spec : Prop :=
  ∀ n, P5031026859368282700.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P11075377059285123664

`A000007(n)-A008683(n+1)`
-/

namespace A157658.P11075377059285123664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A008683 (n + 1)

end

end A157658.P11075377059285123664

namespace A157658

/-- `A000007(n)-A008683(n+1)` -/
def P11075377059285123664.Spec : Prop :=
  ∀ n, P11075377059285123664.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P17808397268071513787

`A054977(n)-A007423(n+1)`
-/

namespace A157658.P17808397268071513787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A007423 (n + 1)

end

end A157658.P17808397268071513787

namespace A157658

/-- `A054977(n)-A007423(n+1)` -/
def P17808397268071513787.Spec : Prop :=
  ∀ n, P17808397268071513787.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P5737014196632518579

`A157657(n+1)-A000007(n)`
-/

namespace A157658.P5737014196632518579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1) - A000007 n

end

end A157658.P5737014196632518579

namespace A157658

/-- `A157657(n+1)-A000007(n)` -/
def P5737014196632518579.Spec : Prop :=
  ∀ n, P5737014196632518579.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P10221822417620269804

`A008683(n+1)*A057428(n)`
-/

namespace A157658.P10221822417620269804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A057428 n

end

end A157658.P10221822417620269804

namespace A157658

/-- `A008683(n+1)*A057428(n)` -/
def P10221822417620269804.Spec : Prop :=
  ∀ n, P10221822417620269804.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P4975253571625683802

`A157657(n+1)%A000689(n)`
-/

namespace A157658.P4975253571625683802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157657 (n + 1)) (A000689 n)

end

end A157658.P4975253571625683802

namespace A157658

/-- `A157657(n+1)%A000689(n)` -/
def P4975253571625683802.Spec : Prop :=
  ∀ n, P4975253571625683802.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P15803521574351176797

`and(A057428(n), A157657(n+1))`
-/

namespace A157658.P15803521574351176797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A157657 (n + 1))

end

end A157658.P15803521574351176797

namespace A157658

/-- `and(A057428(n), A157657(n+1))` -/
def P15803521574351176797.Spec : Prop :=
  ∀ n, P15803521574351176797.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P4797602480101756289

`and(A134824(n), A157657(n+1))`
-/

namespace A157658.P4797602480101756289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A157657 (n + 1))

end

end A157658.P4797602480101756289

namespace A157658

/-- `and(A134824(n), A157657(n+1))` -/
def P4797602480101756289.Spec : Prop :=
  ∀ n, P4797602480101756289.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P2321424780325020248

`A054977(n)-(A008683(n+1)+1)`
-/

namespace A157658.P2321424780325020248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - (A008683 (n + 1) + 1)

end

end A157658.P2321424780325020248

namespace A157658

/-- `A054977(n)-(A008683(n+1)+1)` -/
def P2321424780325020248.Spec : Prop :=
  ∀ n, P2321424780325020248.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P7094479327259382875

`1-(A057427(n)+A008683(n+1))`
-/

namespace A157658.P7094479327259382875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A057427 n + A008683 (n + 1))

end

end A157658.P7094479327259382875

namespace A157658

/-- `1-(A057427(n)+A008683(n+1))` -/
def P7094479327259382875.Spec : Prop :=
  ∀ n, P7094479327259382875.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P12208326455088369010

`A063524(n+1)-A008683(n+1)`
-/

namespace A157658.P12208326455088369010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) - A008683 (n + 1)

end

end A157658.P12208326455088369010

namespace A157658

/-- `A063524(n+1)-A008683(n+1)` -/
def P12208326455088369010.Spec : Prop :=
  ∀ n, P12208326455088369010.a n = A157658 (n + 1)

end A157658

/-! ## A157658.P13968868966149268843

`A127705(n+1)-A000010(n+1)`
-/

namespace A157658.P13968868966149268843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127705 (n + 1) - A000010 (n + 1)

end

end A157658.P13968868966149268843

namespace A157658

/-- `A127705(n+1)-A000010(n+1)` -/
def P13968868966149268843.Spec : Prop :=
  ∀ n, P13968868966149268843.a n = A157658 (n + 1)

end A157658

/-!
# A157659: a(n) = 100*n^2 - n.

The programs for A157659, the canonical program `A157659.P15276854386277574434` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157659 has offset 1).

The definition of A157659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157659.P15276854386277574434

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=99, a(1)=398, a(2)=897`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157659

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15276854386277574434.Spec : Prop :=
  ∀ n, P15276854386277574434.a n = A157659 (n + 1)

theorem P15276854386277574434.correct : P15276854386277574434.Spec := by
  intro n
  simp only [A157659, Nat.add_sub_cancel]

end A157659

/-! ## A157659.P10278625993600954003

`∑[Δ[(10*n)²]-1]`
-/

namespace A157659.P10278625993600954003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157659.P10278625993600954003

namespace A157659

/-- `∑[Δ[(10*n)²]-1]` -/
def P10278625993600954003.Spec : Prop :=
  ∀ n, P10278625993600954003.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P3335611493376183455

`A158129(n+1)+1+n`
-/

namespace A157659.P3335611493376183455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158129 (n + 1) + 1 + (n : ℤ)

end

end A157659.P3335611493376183455

namespace A157659

/-- `A158129(n+1)+1+n` -/
def P3335611493376183455.Spec : Prop :=
  ∀ n, P3335611493376183455.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P5755134281947983646

`A017270(n+1)-(n+1)`
-/

namespace A157659.P5755134281947983646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017270 (n + 1) - (n + 1 : ℤ)

end

end A157659.P5755134281947983646

namespace A157659

/-- `A017270(n+1)-(n+1)` -/
def P5755134281947983646.Spec : Prop :=
  ∀ n, P5755134281947983646.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P17819556925690931759

`(A017377(n)+1)²-(n+1)`
-/

namespace A157659.P17819556925690931759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 n + 1) ^ 2 - (n + 1 : ℤ)

end

end A157659.P17819556925690931759

namespace A157659

/-- `(A017377(n)+1)²-(n+1)` -/
def P17819556925690931759.Spec : Prop :=
  ∀ n, P17819556925690931759.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P17704310468236421287

`(A017365(n)+2)²-(n+1)`
-/

namespace A157659.P17704310468236421287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017365 n + 2) ^ 2 - (n + 1 : ℤ)

end

end A157659.P17704310468236421287

namespace A157659

/-- `(A017365(n)+2)²-(n+1)` -/
def P17704310468236421287.Spec : Prop :=
  ∀ n, P17704310468236421287.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P12367915656669374822

`A055438(n+1)-2*(n+1)`
-/

namespace A157659.P12367915656669374822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055438 (n + 1) - (2 * (n + 1) : ℤ)

end

end A157659.P12367915656669374822

namespace A157659

/-- `A055438(n+1)-2*(n+1)` -/
def P12367915656669374822.Spec : Prop :=
  ∀ n, P12367915656669374822.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P7679851403796774970

`(n+1)*(A158128(n+1)-2)`
-/

namespace A157659.P7679851403796774970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158128 (n + 1) - 2)

end

end A157659.P7679851403796774970

namespace A157659

/-- `(n+1)*(A158128(n+1)-2)` -/
def P7679851403796774970.Spec : Prop :=
  ∀ n, P7679851403796774970.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P13639031087052346467

`A158127(n+1)-3*(n+1)`
-/

namespace A157659.P13639031087052346467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158127 (n + 1) - (3 * (n + 1) : ℤ)

end

end A157659.P13639031087052346467

namespace A157659

/-- `A158127(n+1)-3*(n+1)` -/
def P13639031087052346467.Spec : Prop :=
  ∀ n, P13639031087052346467.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P6141128248041062871

`A158490(n+1)+A022965(n)`
-/

namespace A157659.P6141128248041062871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158490 (n + 1) + A022965 n

end

end A157659.P6141128248041062871

namespace A157659

/-- `A158490(n+1)+A022965(n)` -/
def P6141128248041062871.Spec : Prop :=
  ∀ n, P6141128248041062871.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P14196662215706052584

`A158490(n+1)-A023451(n)`
-/

namespace A157659.P14196662215706052584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158490 (n + 1) - A023451 n

end

end A157659.P14196662215706052584

namespace A157659

/-- `A158490(n+1)-A023451(n)` -/
def P14196662215706052584.Spec : Prop :=
  ∀ n, P14196662215706052584.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P728126967542931721

`A158067(n+1)+A157324(n+1)`
-/

namespace A157659.P728126967542931721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158067 (n + 1) + A157324 (n + 1)

end

end A157659.P728126967542931721

namespace A157659

/-- `A158067(n+1)+A157324(n+1)` -/
def P728126967542931721.Spec : Prop :=
  ∀ n, P728126967542931721.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P8841124873200060770

`A210645(n+1)+A157446(n+1)`
-/

namespace A157659.P8841124873200060770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210645 (n + 1) + A157446 (n + 1)

end

end A157659.P8841124873200060770

namespace A157659

/-- `A210645(n+1)+A157446(n+1)` -/
def P8841124873200060770.Spec : Prop :=
  ∀ n, P8841124873200060770.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P12138202585450318294

`A158312(n+1)%A055438(n+1)`
-/

namespace A157659.P12138202585450318294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158312 (n + 1)) (A055438 (n + 1))

end

end A157659.P12138202585450318294

namespace A157659

/-- `A158312(n+1)%A055438(n+1)` -/
def P12138202585450318294.Spec : Prop :=
  ∀ n, P12138202585450318294.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P1590108587870491884

`A323178(n+1)-(n+2)`
-/

namespace A157659.P1590108587870491884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323178 (n + 1) - (n + 2 : ℤ)

end

end A157659.P1590108587870491884

namespace A157659

/-- `A323178(n+1)-(n+2)` -/
def P1590108587870491884.Spec : Prop :=
  ∀ n, P1590108587870491884.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P16222973370647645603

`Δ[A124080(n)]²-(n+1)`
-/

namespace A157659.P16222973370647645603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n + 1 : ℤ)

end

end A157659.P16222973370647645603

namespace A157659

/-- `Δ[A124080(n)]²-(n+1)` -/
def P16222973370647645603.Spec : Prop :=
  ∀ n, P16222973370647645603.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P5345924153796260413

`A008592(n+1)²-(n+1)`
-/

namespace A157659.P5345924153796260413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) ^ 2 - (n + 1 : ℤ)

end

end A157659.P5345924153796260413

namespace A157659

/-- `A008592(n+1)²-(n+1)` -/
def P5345924153796260413.Spec : Prop :=
  ∀ n, P5345924153796260413.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P13819137006786586183

`sqrt(A017272(n+1))-(n+1)`
-/

namespace A157659.P13819137006786586183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017272 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A157659.P13819137006786586183

namespace A157659

/-- `sqrt(A017272(n+1))-(n+1)` -/
def P13819137006786586183.Spec : Prop :=
  ∀ n, P13819137006786586183.a n = (A157659 (n + 1) : ℝ)

end A157659

/-! ## A157659.P4457572476801006487

`Δ[A062786(n+1)]²-(n+1)`
-/

namespace A157659.P4457572476801006487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (n + 1 : ℤ)

end

end A157659.P4457572476801006487

namespace A157659

/-- `Δ[A062786(n+1)]²-(n+1)` -/
def P4457572476801006487.Spec : Prop :=
  ∀ n, P4457572476801006487.a n = A157659 (n + 1)

end A157659

/-! ## A157659.P1916911723975250191

`(n+1)*(A172178(n+1)+n-1)`
-/

namespace A157659.P1916911723975250191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A172178 (n + 1) + ((n : ℤ) - 1))

end

end A157659.P1916911723975250191

namespace A157659

/-- `(n+1)*(A172178(n+1)+n-1)` -/
def P1916911723975250191.Spec : Prop :=
  ∀ n, P1916911723975250191.a n = A157659 (n + 1)

end A157659

/-!
# A157660: a(n) = 8000*n - 40.

The programs for A157660, the canonical program `A157660.P5907920299222966288` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157660 has offset 1).

The definition of A157660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157660.P5907920299222966288

`40*A157955(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157660

/-- `40*A157955(n+1)` -/
def P5907920299222966288.Spec : Prop :=
  ∀ n, P5907920299222966288.a n = A157660 (n + 1)

theorem P5907920299222966288.correct : P5907920299222966288.Spec := by
  intro n
  simp only [A157660, Nat.add_sub_cancel]

end A157660

/-!
# A157661: a(n) = 80000*n^2 - 800*n + 1.

The programs for A157661, the canonical program `A157661.P14401092144953088813` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157661 has offset 1).

The definition of A157661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157661.P14401092144953088813

`2*A157955(n+1)²-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157661

/-- `2*A157955(n+1)²-1` -/
def P14401092144953088813.Spec : Prop :=
  ∀ n, P14401092144953088813.a n = A157661 (n + 1)

theorem P14401092144953088813.correct : P14401092144953088813.Spec := by
  intro n
  simp only [A157661, Nat.add_sub_cancel]

end A157661

/-! ## A157661.P7465092033011568734

`A157516(4*(n+1))`
-/

namespace A157661.P7465092033011568734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (4 * (n + 1))

end

end A157661.P7465092033011568734

namespace A157661

/-- `A157516(4*(n+1))` -/
def P7465092033011568734.Spec : Prop :=
  ∀ n, P7465092033011568734.a n = A157661 (n + 1)

end A157661

/-! ## A157661.P8886524146411215938

`A275543(A157956(n+1)-2)`
-/

namespace A157661.P8886524146411215938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (A157956 (n + 1) - 2).toNat

end

end A157661.P8886524146411215938

namespace A157661

/-- `A275543(A157956(n+1)-2)` -/
def P8886524146411215938.Spec : Prop :=
  ∀ n, P8886524146411215938.a n = A157661 (n + 1)

end A157661

/-! ## A157661.P14052342788091831189

`A154374(8*(n+1))`
-/

namespace A157661.P14052342788091831189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (8 * (n + 1))

end

end A157661.P14052342788091831189

namespace A157661

/-- `A154374(8*(n+1))` -/
def P14052342788091831189.Spec : Prop :=
  ∀ n, P14052342788091831189.a n = A157661 (n + 1)

end A157661

/-! ## A157661.P11954373612907471805

`A157331(5*5*(n+1))`
-/

namespace A157661.P11954373612907471805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (5 * (5 * (n + 1)))

end

end A157661.P11954373612907471805

namespace A157661

/-- `A157331(5*5*(n+1))` -/
def P11954373612907471805.Spec : Prop :=
  ∀ n, P11954373612907471805.a n = A157661 (n + 1)

end A157661

/-! ## A157661.P15112159430007918757

`∩[A154374(n+1), A157331(n+1)]`
-/

namespace A157661.P15112159430007918757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157661.P15112159430007918757

namespace A157661

/-- `∩[A154374(n+1), A157331(n+1)]` -/
def P15112159430007918757.Spec : Prop :=
  ∀ n, (P15112159430007918757.a n : ℤ) = A157661 (n + 1)

end A157661

/-! ## A157661.P2410584360487018981

`∩[A154374(n+1), A157436(n+1)]`
-/

namespace A157661.P2410584360487018981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157661.P2410584360487018981

namespace A157661

/-- `∩[A154374(n+1), A157436(n+1)]` -/
def P2410584360487018981.Spec : Prop :=
  ∀ n, (P2410584360487018981.a n : ℤ) = A157661 (n + 1)

end A157661

/-! ## A157661.P3916032425240435564

`∩[A157331(n+1), A157516(n+1)]`
-/

namespace A157661.P3916032425240435564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157661.P3916032425240435564

namespace A157661

/-- `∩[A157331(n+1), A157516(n+1)]` -/
def P3916032425240435564.Spec : Prop :=
  ∀ n, (P3916032425240435564.a n : ℤ) = A157661 (n + 1)

end A157661

/-! ## A157661.P499873811800438413

`∩[A157436(n+1), A157516(n+1)]`
-/

namespace A157661.P499873811800438413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157661.P499873811800438413

namespace A157661

/-- `∩[A157436(n+1), A157516(n+1)]` -/
def P499873811800438413.Spec : Prop :=
  ∀ n, (P499873811800438413.a n : ℤ) = A157661 (n + 1)

end A157661

/-! ## A157661.P12901638087617270986

`A069129(A044332(n+1))`
-/

namespace A157661.P12901638087617270986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A044332 (n + 1)).toNat

end

end A157661.P12901638087617270986

namespace A157661

/-- `A069129(A044332(n+1))` -/
def P12901638087617270986.Spec : Prop :=
  ∀ n, P12901638087617270986.a n = A157661 (n + 1)

end A157661

/-! ## A157661.P5617057695334743734

`A069129(A158128(n+1)-1)`
-/

namespace A157661.P5617057695334743734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158128 (n + 1) - 1).toNat

end

end A157661.P5617057695334743734

namespace A157661

/-- `A069129(A158128(n+1)-1)` -/
def P5617057695334743734.Spec : Prop :=
  ∀ n, P5617057695334743734.a n = A157661 (n + 1)

end A157661

/-!
# A157662: Composite numbers such that the last digit is equal to the sum of all the previous digits.

The programs for A157662, there is no canonical definition to state claims against.
-/

/-! ## A157662.P17850052290658928478

`∩[A218852(n+1), A352439(n+1)]`
-/

namespace A157662.P17850052290658928478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157662.P17850052290658928478

/-! ## A157662.P456637712692512290

`∩[A157496(n+1), A214527(n+1)]`
-/

namespace A157662.P456637712692512290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157662.P456637712692512290

/-! ## A157662.P16648043100679946015

`∩[A157496(n+1), A352439(n+1)]`
-/

namespace A157662.P16648043100679946015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157662.P16648043100679946015

/-! ## A157662.P5621564843978341947

`A214527(lt[5, A214500(3*n+5)])`
-/

namespace A157662.P5621564843978341947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214500 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A157662.P5621564843978341947

/-! ## A157662.P10851081927490186106

`A214527((comp[2*ceil(n*ϕ²)]+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A157662.P10851081927490186106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A157662.P10851081927490186106

/-!
# A157663: a(n) = 8000*n + 40.

The programs for A157663, the canonical program `A157663.P3848114527627359385` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157663 has offset 1).

The definition of A157663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157663.P3848114527627359385

`20*(20*20*(n+1)+2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157663

/-- `20*(20*20*(n+1)+2)` -/
def P3848114527627359385.Spec : Prop :=
  ∀ n, (P3848114527627359385.a n : ℤ) = A157663 (n + 1)

theorem P3848114527627359385.correct : P3848114527627359385.Spec := by
  intro n
  simp only [A157663, Nat.add_sub_cancel]

end A157663

/-!
# A157664: a(n) = 80000*n^2 + 800*n + 1.

The programs for A157664, the canonical program `A157664.P5745045271246218104` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157664 has offset 1).

The definition of A157664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157664.P5745045271246218104

`2*A157956(n+1)²-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157664

/-- `2*A157956(n+1)²-1` -/
def P5745045271246218104.Spec : Prop :=
  ∀ n, P5745045271246218104.a n = A157664 (n + 1)

theorem P5745045271246218104.correct : P5745045271246218104.Spec := by
  intro n
  simp only [A157664, Nat.add_sub_cancel]

end A157664

/-! ## A157664.P6947661532340837669

`A157511(4*(n+1))`
-/

namespace A157664.P6947661532340837669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (4 * (n + 1))

end

end A157664.P6947661532340837669

namespace A157664

/-- `A157511(4*(n+1))` -/
def P6947661532340837669.Spec : Prop :=
  ∀ n, P6947661532340837669.a n = A157664 (n + 1)

end A157664

/-! ## A157664.P10736705360874232156

`A275543(A157956(n+1))`
-/

namespace A157664.P10736705360874232156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (A157956 (n + 1)).toNat

end

end A157664.P10736705360874232156

namespace A157664

/-- `A275543(A157956(n+1))` -/
def P10736705360874232156.Spec : Prop :=
  ∀ n, P10736705360874232156.a n = A157664 (n + 1)

end A157664

/-! ## A157664.P5158187502625744866

`A154375(8*(n+1))`
-/

namespace A157664.P5158187502625744866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (8 * (n + 1))

end

end A157664.P5158187502625744866

namespace A157664

/-- `A154375(8*(n+1))` -/
def P5158187502625744866.Spec : Prop :=
  ∀ n, P5158187502625744866.a n = A157664 (n + 1)

end A157664

/-! ## A157664.P17053000479381264367

`A157337(5*5*(n+1))`
-/

namespace A157664.P17053000479381264367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (5 * (5 * (n + 1)))

end

end A157664.P17053000479381264367

namespace A157664

/-- `A157337(5*5*(n+1))` -/
def P17053000479381264367.Spec : Prop :=
  ∀ n, P17053000479381264367.a n = A157664 (n + 1)

end A157664

/-! ## A157664.P7683691001873600273

`∩[A154375(n+1), A157337(n+1)]`
-/

namespace A157664.P7683691001873600273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157664.P7683691001873600273

namespace A157664

/-- `∩[A154375(n+1), A157337(n+1)]` -/
def P7683691001873600273.Spec : Prop :=
  ∀ n, (P7683691001873600273.a n : ℤ) = A157664 (n + 1)

end A157664

/-! ## A157664.P9168439237595659667

`∩[A154375(n+1), A157433(n+1)]`
-/

namespace A157664.P9168439237595659667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157664.P9168439237595659667

namespace A157664

/-- `∩[A154375(n+1), A157433(n+1)]` -/
def P9168439237595659667.Spec : Prop :=
  ∀ n, (P9168439237595659667.a n : ℤ) = A157664 (n + 1)

end A157664

/-! ## A157664.P10952964928163430821

`∩[A157337(n+1), A157511(n+1)]`
-/

namespace A157664.P10952964928163430821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157664.P10952964928163430821

namespace A157664

/-- `∩[A157337(n+1), A157511(n+1)]` -/
def P10952964928163430821.Spec : Prop :=
  ∀ n, (P10952964928163430821.a n : ℤ) = A157664 (n + 1)

end A157664

/-! ## A157664.P12706569861135660920

`∩[A157433(n+1), A157511(n+1)]`
-/

namespace A157664.P12706569861135660920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157664.P12706569861135660920

namespace A157664

/-- `∩[A157433(n+1), A157511(n+1)]` -/
def P12706569861135660920.Spec : Prop :=
  ∀ n, (P12706569861135660920.a n : ℤ) = A157664 (n + 1)

end A157664

/-! ## A157664.P955343412569261996

`A069129(A158128(n+1))`
-/

namespace A157664.P955343412569261996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158128 (n + 1)).toNat

end

end A157664.P955343412569261996

namespace A157664

/-- `A069129(A158128(n+1))` -/
def P955343412569261996.Spec : Prop :=
  ∀ n, P955343412569261996.a n = A157664 (n + 1)

end A157664

/-!
# A157665: a(n) = 729*n^2 - 1016*n + 354.

The programs for A157665, there is no canonical definition to state claims against.
-/

/-! ## A157665.P2071932912916157665

`round((A157667(n+1)/A157666(n+1))²)`
-/

namespace A157665.P2071932912916157665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157667 (n + 1) : ℚ) / (A157666 (n + 1) : ℚ)) ^ 2)

end

end A157665.P2071932912916157665

/-! ## A157665.P17715039974346054909

`A017305(n)+A017258(A008585(n))`
-/

namespace A157665.P17715039974346054909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + A017258 (A008585 n).toNat

end

end A157665.P17715039974346054909

/-! ## A157665.P12263452465221257329

`A156676(A017197(n))/9`
-/

namespace A157665.P12263452465221257329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156676 (A017197 n).toNat : ℚ) / 9

end

end A157665.P12263452465221257329

/-! ## A157665.P8313908443792229438

`A156676(sqrt(A017198(n)))/9`
-/

namespace A157665.P8313908443792229438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156676 (SequenceMachineLib.roundAway (Real.sqrt (A017198 n : ℝ))).toNat : ℚ) / 9

end

end A157665.P8313908443792229438

/-! ## A157665.P805304749637018810

`A017305(n)+A016789(A017185(n))²`
-/

namespace A157665.P805304749637018810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + A016789 (A017185 n).toNat ^ 2

end

end A157665.P805304749637018810

/-! ## A157665.P14646206517480270721

`A152751(A017197(n))+A016897(2*n)`
-/

namespace A157665.P14646206517480270721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 (A017197 n).toNat + A016897 (2 * n)

end

end A157665.P14646206517480270721

/-! ## A157665.P1360185379846557094

`A016885(2*n)+A016789(A016789(3*n))²`
-/

namespace A157665.P1360185379846557094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n) + A016789 (A016789 (3 * n)).toNat ^ 2

end

end A157665.P1360185379846557094

/-! ## A157665.P5267711750563674139

`A017089(A017089(n))+A016778(A017185(n))`
-/

namespace A157665.P5267711750563674139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A017089 n).toNat + A016778 (A017185 n).toNat

end

end A157665.P5267711750563674139

/-!
# A157666: a(n) = 19683*n - 13716.

The programs for A157666, there is no canonical definition to state claims against.
-/

/-! ## A157666.P7117313466117284087

`round(A157667(n+1)/sqrt(A157665(n+1)))`
-/

namespace A157666.P7117313466117284087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157667 (n + 1) : ℝ) / Real.sqrt (A157665 (n + 1) : ℝ))

end

end A157666.P7117313466117284087

/-!
# A157667: a(n) = 531441*n^2 - 740664*n + 258065.

The programs for A157667, there is no canonical definition to state claims against.
-/

/-! ## A157667.P3968831913064040397

`round(sqrt(A157665(n+1))*A157666(n+1))`
-/

namespace A157667.P3968831913064040397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157665 (n + 1) : ℝ) * (A157666 (n + 1) : ℝ))

end

end A157667.P3968831913064040397

/-! ## A157667.P5878690810226423304

`A156774(9*n+3)`
-/

namespace A157667.P5878690810226423304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156774 (9 * n + 3)

end

end A157667.P5878690810226423304

/-! ## A157667.P18308540947349189609

`lcm(gcd(2, n), A156774(A017197(n)))`
-/

namespace A157667.P18308540947349189609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A156774 (A017197 n).toNat)

end

end A157667.P18308540947349189609

/-! ## A157667.P2592005206863375618

`A156774(A017197(n))+char[A345150(n+1)]`
-/

namespace A157667.P2592005206863375618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345150 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156774 (A017197 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A157667.P2592005206863375618

/-! ## A157667.P16617218056814165396

`A156774(A017197(n))/A001222(A065091(n+1))`
-/

namespace A157667.P16617218056814165396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156774 (A017197 n).toNat : ℚ) / (A001222 (A065091 (n + 1)).toNat : ℚ)

end

end A157667.P16617218056814165396

/-! ## A157667.P14578018962530506259

`A156774(A017197(n))/A008683(A004139(n+1))²`
-/

namespace A157667.P14578018962530506259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156774 (A017197 n).toNat : ℚ) / (A008683 (A004139 (n + 1)).toNat ^ 2 : ℚ)

end

end A157667.P14578018962530506259

/-! ## A157667.P4718991105290785824

`A154277(A350515(A017221(A017221(2*n))))`
-/

namespace A157667.P4718991105290785824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 (A350515 (A017221 (A017221 (2 * n)).toNat).toNat).toNat

end

end A157667.P4718991105290785824

/-! ## A157667.P14517097723330670607

`A156774(A017197(n))%A106497(n+1)`
-/

namespace A157667.P14517097723330670607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156774 (A017197 n).toNat) (A106497 (n + 1))

end

end A157667.P14517097723330670607

/-!
# A157668: a(n) = 729*n^2 - 442*n + 67.

The programs for A157668, the canonical program `A157668.P7919644811048480496` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157668 has offset 1).

The definition of A157668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157668.P7919644811048480496

`(A124388(n)+1)²-A017353(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157668

/-- `(A124388(n)+1)²-A017353(n)` -/
def P7919644811048480496.Spec : Prop :=
  ∀ n, P7919644811048480496.a n = A157668 (n + 1)

theorem P7919644811048480496.correct : P7919644811048480496.Spec := by
  intro n
  simp only [A157668, Nat.add_sub_cancel]

end A157668

/-! ## A157668.P2739008375638121756

`A017233(n)*A156796(n+1)-n`
-/

namespace A157668.P2739008375638121756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n * A156796 (n + 1) - (n : ℤ)

end

end A157668.P2739008375638121756

namespace A157668

/-- `A017233(n)*A156796(n+1)-n` -/
def P2739008375638121756.Spec : Prop :=
  ∀ n, P2739008375638121756.a n = A157668 (n + 1)

end A157668

/-! ## A157668.P16714464586366456469

`round((A157670(n+1)/A157669(n+1))²)`
-/

namespace A157668.P16714464586366456469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157670 (n + 1) : ℚ) / (A157669 (n + 1) : ℚ)) ^ 2)

end

end A157668.P16714464586366456469

namespace A157668

/-- `round((A157670(n+1)/A157669(n+1))²)` -/
def P16714464586366456469.Spec : Prop :=
  ∀ n, P16714464586366456469.a n = A157668 (n + 1)

end A157668

/-! ## A157668.P16609129423982367446

`A017174(A016789(n))-A017353(n)`
-/

namespace A157668.P16609129423982367446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 (A016789 n).toNat - A017353 n

end

end A157668.P16609129423982367446

namespace A157668

/-- `A017174(A016789(n))-A017353(n)` -/
def P16609129423982367446.Spec : Prop :=
  ∀ n, P16609129423982367446.a n = A157668 (n + 1)

end A157668

/-! ## A157668.P13743107545124924348

`A017174(A016789(n))+1-A017365(n)`
-/

namespace A157668.P13743107545124924348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 (A016789 n).toNat + (1 - A017365 n)

end

end A157668.P13743107545124924348

namespace A157668

/-- `A017174(A016789(n))+1-A017365(n)` -/
def P13743107545124924348.Spec : Prop :=
  ∀ n, P13743107545124924348.a n = A157668 (n + 1)

end A157668

/-! ## A157668.P13890055146180634520

`A017174(A016789(n))-A066182(A017365(n))`
-/

namespace A157668.P13890055146180634520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017174 (A016789 n).toNat - A066182 (A017365 n).toNat

end

end A157668.P13890055146180634520

namespace A157668

/-- `A017174(A016789(n))-A066182(A017365(n))` -/
def P13890055146180634520.Spec : Prop :=
  ∀ n, P13890055146180634520.a n = A157668 (n + 1)

end A157668

/-! ## A157668.P11339649419987215070

`A017485(4*n+2)+A008591(3*n+2)²`
-/

namespace A157668.P11339649419987215070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (4 * n + 2) + A008591 (3 * n + 2) ^ 2

end

end A157668.P11339649419987215070

namespace A157668

/-- `A017485(4*n+2)+A008591(3*n+2)²` -/
def P11339649419987215070.Spec : Prop :=
  ∀ n, P11339649419987215070.a n = A157668 (n + 1)

end A157668

/-! ## A157668.P3308325004561949750

`A056020(A016969(n))²-A017353(n)`
-/

namespace A157668.P3308325004561949750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A016969 n).toNat ^ 2 - A017353 n

end

end A157668.P3308325004561949750

namespace A157668

/-- `A056020(A016969(n))²-A017353(n)` -/
def P3308325004561949750.Spec : Prop :=
  ∀ n, P3308325004561949750.a n = A157668 (n + 1)

end A157668

/-! ## A157668.P924999429238130356

`A016777(A017233(n))²-A017353(n)`
-/

namespace A157668.P924999429238130356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A017233 n).toNat ^ 2 - A017353 n

end

end A157668.P924999429238130356

namespace A157668

/-- `A016777(A017233(n))²-A017353(n)` -/
def P924999429238130356.Spec : Prop :=
  ∀ n, P924999429238130356.a n = A157668 (n + 1)

end A157668

/-!
# A157669: a(n) = 19683*n - 5967.

The programs for A157669, there is no canonical definition to state claims against.
-/

/-! ## A157669.P5911477010044890902

`round(A157670(n+1)/sqrt(A157668(n+1)))`
-/

namespace A157669.P5911477010044890902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157670 (n + 1) : ℝ) / Real.sqrt (A157668 (n + 1) : ℝ))

end

end A157669.P5911477010044890902

/-!
# A157670: a(n) = 531441*n^2 - 322218*n + 48842.

The programs for A157670, there is no canonical definition to state claims against.
-/

/-! ## A157670.P16347386420896779486

`round(sqrt(A157668(n+1))*A157669(n+1))`
-/

namespace A157670.P16347386420896779486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157668 (n + 1) : ℝ) * (A157669 (n + 1) : ℝ))

end

end A157670.P16347386420896779486

/-! ## A157670.P1564950712280258042

`A156773(9*n+7)`
-/

namespace A157670.P1564950712280258042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156773 (9 * n + 7)

end

end A157670.P1564950712280258042

/-! ## A157670.P3749060494783404793

`A154295(A156796(n+1)-2)`
-/

namespace A157670.P3749060494783404793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154295 (A156796 (n + 1) - 2).toNat

end

end A157670.P3749060494783404793

/-! ## A157670.P12788182166295120359

`A154295(3*A017173(3*n+2))`
-/

namespace A157670.P12788182166295120359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154295 (3 * A017173 (3 * n + 2)).toNat

end

end A157670.P12788182166295120359

/-! ## A157670.P683618779661050196

`A154295(A154266(3*n+2)-9)`
-/

namespace A157670.P683618779661050196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154295 (A154266 (3 * n + 2) - 9).toNat

end

end A157670.P683618779661050196

/-! ## A157670.P9199905291039468670

`A154295(A154267(3*n+4)-66)`
-/

namespace A157670.P9199905291039468670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154295 (A154267 (3 * n + 4) - 66).toNat

end

end A157670.P9199905291039468670

/-!
# A157671: Numbers whose ternary representation begins with 2.

The programs for A157671, the canonical program `A157671.P16167228879042950369` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157671 has offset 1).

The definition of A157671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157671.P16167228879042950369

`lt[1, floor(a(floor(n/3)))]` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157671

/-- `lt[1, floor(a(floor(n/3)))]` -/
def P16167228879042950369.Spec : Prop :=
  ∀ n, (P16167228879042950369.a n : ℤ) = A157671 (n + 1)

theorem P16167228879042950369.correct : P16167228879042950369.Spec := by
  intro n
  simp only [A157671, Nat.add_sub_cancel]

end A157671

/-! ## A157671.P17346490965561066916

`(a(n-1)+1)*floor(4*n/a(n-1))` with `a(0)=2`
-/

namespace A157671.P17346490965561066916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + 1) * ⌊4 * ((n : ℚ) / (a (n - 1) : ℚ))⌋

end

end A157671.P17346490965561066916

namespace A157671

/-- `(a(n-1)+1)*floor(4*n/a(n-1))` -/
def P17346490965561066916.Spec : Prop :=
  ∀ n, P17346490965561066916.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P13301417443696373128

`lt[n, (2*n+a(n-1)-1)%(2*n)]` with `a(0)=-1`
-/

namespace A157671.P13301417443696373128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  Int.tmod ((2 * n : ℤ) + (f2 (n - 1) - 1)) (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A157671.P13301417443696373128

namespace A157671

/-- `lt[n, (2*n+a(n-1)-1)%(2*n)]` -/
def P13301417443696373128.Spec : Prop :=
  ∀ n, (P13301417443696373128.a n : ℤ) = A157671 (n + 1)

end A157671

/-! ## A157671.P12397832101680691807

`comp[A330740(n)]`
-/

namespace A157671.P12397832101680691807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157671.P12397832101680691807

namespace A157671

/-- `comp[A330740(n)]` -/
def P12397832101680691807.Spec : Prop :=
  ∀ n, (P12397832101680691807.a n : ℤ) = A157671 (n + 1)

end A157671

/-! ## A157671.P14545267299222208442

`lt[A117966(n), 0]`
-/

namespace A157671.P14545267299222208442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A157671.P14545267299222208442

namespace A157671

/-- `lt[A117966(n), 0]` -/
def P14545267299222208442.Spec : Prop :=
  ∀ n, (P14545267299222208442.a n : ℤ) = A157671 (n + 1)

end A157671

/-! ## A157671.P15715276695774865364

`lt[A004488(n), n]`
-/

namespace A157671.P15715276695774865364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A157671.P15715276695774865364

namespace A157671

/-- `lt[A004488(n), n]` -/
def P15715276695774865364.Spec : Prop :=
  ∀ n, (P15715276695774865364.a n : ℤ) = A157671 (n + 1)

end A157671

/-! ## A157671.P14905142469879154885

`A179526(n)+1+n`
-/

namespace A157671.P14905142469879154885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179526 n + 1 + (n : ℤ)

end

end A157671.P14905142469879154885

namespace A157671

/-- `A179526(n)+1+n` -/
def P14905142469879154885.Spec : Prop :=
  ∀ n, P14905142469879154885.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P9277711532568442020

`lt[n, 2*A300222(n)]`
-/

namespace A157671.P9277711532568442020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A157671.P9277711532568442020

namespace A157671

/-- `lt[n, 2*A300222(n)]` -/
def P9277711532568442020.Spec : Prop :=
  ∀ n, (P9277711532568442020.a n : ℤ) = A157671 (n + 1)

end A157671

/-! ## A157671.P13763208335446851816

`A297251(n+1)-(2*n+3)`
-/

namespace A157671.P13763208335446851816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297251 (n + 1) - (2 * n + 3 : ℤ)

end

end A157671.P13763208335446851816

namespace A157671

/-- `A297251(n+1)-(2*n+3)` -/
def P13763208335446851816.Spec : Prop :=
  ∀ n, P13763208335446851816.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P11247100159397514377

`A014682(A132171(n))+n`
-/

namespace A157671.P11247100159397514377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A132171 n).toNat + (n : ℤ)

end

end A157671.P11247100159397514377

namespace A157671

/-- `A014682(A132171(n))+n` -/
def P11247100159397514377.Spec : Prop :=
  ∀ n, P11247100159397514377.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P10539389801583659984

`A132171(n)+A132141(n+1)`
-/

namespace A157671.P10539389801583659984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 n + A132141 (n + 1)

end

end A157671.P10539389801583659984

namespace A157671

/-- `A132171(n)+A132141(n+1)` -/
def P10539389801583659984.Spec : Prop :=
  ∀ n, P10539389801583659984.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P10829329870112799733

`A000203(∏[gcd(3, A006530(2*n+1))])+1+n`
-/

namespace A157671.P10829329870112799733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A006530 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A157671.P10829329870112799733

namespace A157671

/-- `A000203(∏[gcd(3, A006530(2*n+1))])+1+n` -/
def P10829329870112799733.Spec : Prop :=
  ∀ n, P10829329870112799733.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P7750279056514464601

`A132141(n+1)+A132141(A132141(n+1)-n)`
-/

namespace A157671.P7750279056514464601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (n + 1) + A132141 (A132141 (n + 1) - (n : ℤ)).toNat

end

end A157671.P7750279056514464601

namespace A157671

/-- `A132141(n+1)+A132141(A132141(n+1)-n)` -/
def P7750279056514464601.Spec : Prop :=
  ∀ n, P7750279056514464601.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P14491779755891936911

`A004128(A132171(n)+1)+n`
-/

namespace A157671.P14491779755891936911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (A132171 n + 1).toNat + (n : ℤ)

end

end A157671.P14491779755891936911

namespace A157671

/-- `A004128(A132171(n)+1)+n` -/
def P14491779755891936911.Spec : Prop :=
  ∀ n, P14491779755891936911.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P18335183928607742588

`A140205(A132171(n)+1)+n`
-/

namespace A157671.P18335183928607742588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140205 (A132171 n + 1).toNat + (n : ℤ)

end

end A157671.P18335183928607742588

namespace A157671

/-- `A140205(A132171(n)+1)+n` -/
def P18335183928607742588.Spec : Prop :=
  ∀ n, P18335183928607742588.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P686811832684137392

`A004128(A365458(2*n+1))+n+1`
-/

namespace A157671.P686811832684137392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (A365458 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A157671.P686811832684137392

namespace A157671

/-- `A004128(A365458(2*n+1))+n+1` -/
def P686811832684137392.Spec : Prop :=
  ∀ n, P686811832684137392.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P4501548955943196066

`A004488(A117967(A338246(n+1)))`
-/

namespace A157671.P4501548955943196066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A117967 (A338246 (n + 1)).toNat).toNat

end

end A157671.P4501548955943196066

namespace A157671

/-- `A004488(A117967(A338246(n+1)))` -/
def P4501548955943196066.Spec : Prop :=
  ∀ n, P4501548955943196066.a n = A157671 (n + 1)

end A157671

/-! ## A157671.P9672878292745010779

`A003605(A132141(n+1))`
-/

namespace A157671.P9672878292745010779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (A132141 (n + 1)).toNat

end

end A157671.P9672878292745010779

namespace A157671

/-- `A003605(A132141(n+1))` -/
def P9672878292745010779.Spec : Prop :=
  ∀ n, P9672878292745010779.a n = A157671 (n + 1)

end A157671

/-!
# A157672: Number of unordered factorizations of n! into two distinct proper factors.

The programs for A157672, the canonical program `A157672.P8195558982266382159` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157672 has offset 2).

The definition of A157672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157672.P4356123941140322910

`A344687(n+2)-1`
-/

namespace A157672.P4356123941140322910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344687 (n + 2) - 1

end

end A157672.P4356123941140322910

namespace A157672

/-- `A344687(n+2)-1` -/
def P4356123941140322910.Spec : Prop :=
  ∀ n, P4356123941140322910.a n = A157672 (n + 2)

end A157672

/-! ## A157672.P8195558982266382159

`∑[floor(A038024(n+2)/2)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157672

/-- `∑[floor(A038024(n+2)/2)]` -/
def P8195558982266382159.Spec : Prop :=
  ∀ n, P8195558982266382159.a n = A157672 (n + 2)

theorem P8195558982266382159.correct : P8195558982266382159.Spec := by
  intro n
  simp only [A157672, Nat.add_sub_cancel]

end A157672

/-! ## A157672.P7851936305973785251

`A337106(n+2)/2`
-/

namespace A157672.P7851936305973785251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337106 (n + 2) : ℚ) / 2

end

end A157672.P7851936305973785251

namespace A157672

/-- `A337106(n+2)/2` -/
def P7851936305973785251.Spec : Prop :=
  ∀ n, P7851936305973785251.a n = (A157672 (n + 2) : ℚ)

end A157672

/-! ## A157672.P9739599833388574350

`floor(A153823(n+2)/2)`
-/

namespace A157672.P9739599833388574350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153823 (n + 2) : ℚ) / 2⌋

end

end A157672.P9739599833388574350

namespace A157672

/-- `floor(A153823(n+2)/2)` -/
def P9739599833388574350.Spec : Prop :=
  ∀ n, P9739599833388574350.a n = A157672 (n + 2)

end A157672

/-! ## A157672.P13298075479636358401

`A027423(n+2)/2-1`
-/

namespace A157672.P13298075479636358401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 (n + 2) : ℚ) / 2 - 1

end

end A157672.P13298075479636358401

namespace A157672

/-- `A027423(n+2)/2-1` -/
def P13298075479636358401.Spec : Prop :=
  ∀ n, P13298075479636358401.a n = (A157672 (n + 2) : ℚ)

end A157672

/-!
# A157673: First differences of A157107.

The programs for A157673, there is no canonical definition to state claims against.
-/

/-! ## A157673.P16814533838140742574

`Δ[A157107(n+1)]`
-/

namespace A157673.P16814533838140742574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157673.P16814533838140742574

/-! ## A157673.P67920146998419962

`A157107(n+2)-A157107(n+1)`
-/

namespace A157673.P67920146998419962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157107 (n + 2) - A157107 (n + 1)

end

end A157673.P67920146998419962

/-!
# A157675: G.f.: A(x) = exp( Sum_{n>=1} A(2^n*x)^n * x^n/n ).

The programs for A157675, there is no canonical definition to state claims against.
-/

/-! ## A157675.P3854612081939082989

`A032846(A203006(n+1))-n`
-/

namespace A157675.P3854612081939082989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032846 (A203006 (n + 1)).toNat - (n : ℤ)

end

end A157675.P3854612081939082989

/-! ## A157675.P5497082919548593454

`A076313(n)+A032846(A203006(n+1))`
-/

namespace A157675.P5497082919548593454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n + A032846 (A203006 (n + 1)).toNat

end

end A157675.P5497082919548593454

/-!
# A157676: Numbers n such that n + (product of digits of n) is prime.

The programs for A157676, the canonical program `A157676.P11432069983648412574` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157676 has offset 1).

The definition of A157676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 874 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157676.P2853316923196617169

`eq[1, A107286(A007954(n)+n)]`
-/

namespace A157676.P2853316923196617169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P2853316923196617169

namespace A157676

/-- `eq[1, A107286(A007954(n)+n)]` -/
def P2853316923196617169.Spec : Prop :=
  ∀ n, (P2853316923196617169.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P11432069983648412574

`eq[1, A309892(A007954(n)+n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A157676

/-- `eq[1, A309892(A007954(n)+n)]` -/
def P11432069983648412574.Spec : Prop :=
  ∀ n, (P11432069983648412574.a n : ℤ) = A157676 (n + 1)

theorem P11432069983648412574.correct : P11432069983648412574.Spec := by
  intro n
  simp only [A157676, Nat.add_sub_cancel]

end A157676

/-! ## A157676.P14620894702623235697

`eq[2, A000005(A028310(n)+A007954(n))]`
-/

namespace A157676.P14620894702623235697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n + A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P14620894702623235697

namespace A157676

/-- `eq[2, A000005(A028310(n)+A007954(n))]` -/
def P14620894702623235697.Spec : Prop :=
  ∀ n, (P14620894702623235697.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P12981482336390491504

`eq[A160094(n+2), A328847(A230099(n))]`
-/

namespace A157676.P12981482336390491504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157676.P12981482336390491504

namespace A157676

/-- `eq[A160094(n+2), A328847(A230099(n))]` -/
def P12981482336390491504.Spec : Prop :=
  ∀ n, (P12981482336390491504.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P3319845408577888332

`eq[0, A007920(A230099(n))]`
-/

namespace A157676.P3319845408577888332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P3319845408577888332

namespace A157676

/-- `eq[0, A007920(A230099(n))]` -/
def P3319845408577888332.Spec : Prop :=
  ∀ n, (P3319845408577888332.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P14124964943027636613

`eq[1, A003415(A007954(n)+n)]`
-/

namespace A157676.P14124964943027636613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P14124964943027636613

namespace A157676

/-- `eq[1, A003415(A007954(n)+n)]` -/
def P14124964943027636613.Spec : Prop :=
  ∀ n, (P14124964943027636613.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P2126352634500899684

`eq[1, A032741(A007954(n)+n)]`
-/

namespace A157676.P2126352634500899684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P2126352634500899684

namespace A157676

/-- `eq[1, A032741(A007954(n)+n)]` -/
def P2126352634500899684.Spec : Prop :=
  ∀ n, (P2126352634500899684.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P8525785263858137098

`eq[1, A078898(A007954(n)+n)]`
-/

namespace A157676.P8525785263858137098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P8525785263858137098

namespace A157676

/-- `eq[1, A078898(A007954(n)+n)]` -/
def P8525785263858137098.Spec : Prop :=
  ∀ n, (P8525785263858137098.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P6550712179141546301

`eq[1, A104725(A007954(n)+n)]`
-/

namespace A157676.P6550712179141546301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P6550712179141546301

namespace A157676

/-- `eq[1, A104725(A007954(n)+n)]` -/
def P6550712179141546301.Spec : Prop :=
  ∀ n, (P6550712179141546301.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P10667240005273783143

`eq[1, A105700(A007954(n)+n)]`
-/

namespace A157676.P10667240005273783143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P10667240005273783143

namespace A157676

/-- `eq[1, A105700(A007954(n)+n)]` -/
def P10667240005273783143.Spec : Prop :=
  ∀ n, (P10667240005273783143.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P11070677705642675851

`eq[2, A073855(A007954(n)+n)]`
-/

namespace A157676.P11070677705642675851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157676.P11070677705642675851

namespace A157676

/-- `eq[2, A073855(A007954(n)+n)]` -/
def P11070677705642675851.Spec : Prop :=
  ∀ n, (P11070677705642675851.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P3282720159516847142

`eq[A000034(n), A073855(A230099(n))]`
-/

namespace A157676.P3282720159516847142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157676.P3282720159516847142

namespace A157676

/-- `eq[A000034(n), A073855(A230099(n))]` -/
def P3282720159516847142.Spec : Prop :=
  ∀ n, (P3282720159516847142.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P17536866225657676804

`eq[A032741(A230099(n)), A254651(n)]`
-/

namespace A157676.P17536866225657676804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157676.P17536866225657676804

namespace A157676

/-- `eq[A032741(A230099(n)), A254651(n)]` -/
def P17536866225657676804.Spec : Prop :=
  ∀ n, (P17536866225657676804.a n : ℤ) = A157676 (n + 1)

end A157676

/-! ## A157676.P5398990695697134303

`eq[A000007(n), A325142(A230099(n))]`
-/

namespace A157676.P5398990695697134303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157676.P5398990695697134303

namespace A157676

/-- `eq[A000007(n), A325142(A230099(n))]` -/
def P5398990695697134303.Spec : Prop :=
  ∀ n, (P5398990695697134303.a n : ℤ) = A157676 (n + 1)

end A157676

/-!
# A157677: Primes p such that p + (product of digits of p) is also prime.

The programs for A157677, the canonical program `A157677.P12491241583980738230` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157677 has offset 1).

The definition of A157677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157677.P12491241583980738230

`p?[A157676(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A157677

/-- `p?[A157676(n+1)]` -/
def P12491241583980738230.Spec : Prop :=
  ∀ n, P12491241583980738230.a n = A157677 (n + 1)

theorem P12491241583980738230.correct : P12491241583980738230.Spec := by
  intro n
  simp only [A157677, Nat.add_sub_cancel]

end A157677

/-! ## A157677.P16611965729084722469

`∩[A071621(n+1), A157676(n+1)]`
-/

namespace A157677.P16611965729084722469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P16611965729084722469

namespace A157677

/-- `∩[A071621(n+1), A157676(n+1)]` -/
def P16611965729084722469.Spec : Prop :=
  ∀ n, (P16611965729084722469.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P15666461770190790538

`∩[A157676(n+1), A157996(n+1)]`
-/

namespace A157677.P15666461770190790538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P15666461770190790538

namespace A157677

/-- `∩[A157676(n+1), A157996(n+1)]` -/
def P15666461770190790538.Spec : Prop :=
  ∀ n, (P15666461770190790538.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P8044122596034585482

`∩[A108719(n+1), A157676(n+1)]`
-/

namespace A157677.P8044122596034585482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P8044122596034585482

namespace A157677

/-- `∩[A108719(n+1), A157676(n+1)]` -/
def P8044122596034585482.Spec : Prop :=
  ∀ n, (P8044122596034585482.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P9290956487142029245

`∩[A004139(n+1), A157676(n+1)]`
-/

namespace A157677.P9290956487142029245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P9290956487142029245

namespace A157677

/-- `∩[A004139(n+1), A157676(n+1)]` -/
def P9290956487142029245.Spec : Prop :=
  ∀ n, (P9290956487142029245.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P14195950307993726170

`∩[A045319(n+1), A157676(n+1)]`
-/

namespace A157677.P14195950307993726170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P14195950307993726170

namespace A157677

/-- `∩[A045319(n+1), A157676(n+1)]` -/
def P14195950307993726170.Spec : Prop :=
  ∀ n, (P14195950307993726170.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P7331511717937189645

`∩[A045344(n+1), A157676(n+1)]`
-/

namespace A157677.P7331511717937189645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P7331511717937189645

namespace A157677

/-- `∩[A045344(n+1), A157676(n+1)]` -/
def P7331511717937189645.Spec : Prop :=
  ∀ n, (P7331511717937189645.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P17410077326755854416

`∩[A065091(n+1), A157676(n+1)]`
-/

namespace A157677.P17410077326755854416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P17410077326755854416

namespace A157677

/-- `∩[A065091(n+1), A157676(n+1)]` -/
def P17410077326755854416.Spec : Prop :=
  ∀ n, (P17410077326755854416.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P15029178145045519621

`∩[A000040(n+1), A157676(n+1)]`
-/

namespace A157677.P15029178145045519621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P15029178145045519621

namespace A157677

/-- `∩[A000040(n+1), A157676(n+1)]` -/
def P15029178145045519621.Spec : Prop :=
  ∀ n, (P15029178145045519621.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P2080804101778661341

`∩[A083249(n+1), A157676(n+1)]`
-/

namespace A157677.P2080804101778661341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P2080804101778661341

namespace A157677

/-- `∩[A083249(n+1), A157676(n+1)]` -/
def P2080804101778661341.Spec : Prop :=
  ∀ n, (P2080804101778661341.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P7622372901508345138

`∩[A116974(n+1), A157676(n+1)]`
-/

namespace A157677.P7622372901508345138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P7622372901508345138

namespace A157677

/-- `∩[A116974(n+1), A157676(n+1)]` -/
def P7622372901508345138.Spec : Prop :=
  ∀ n, (P7622372901508345138.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P9785316458056275850

`∩[A157676(n+1), A161346(n+1)]`
-/

namespace A157677.P9785316458056275850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P9785316458056275850

namespace A157677

/-- `∩[A157676(n+1), A161346(n+1)]` -/
def P9785316458056275850.Spec : Prop :=
  ∀ n, (P9785316458056275850.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P5535854422242628655

`∩[A157676(n+1), A162788(n+1)]`
-/

namespace A157677.P5535854422242628655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P5535854422242628655

namespace A157677

/-- `∩[A157676(n+1), A162788(n+1)]` -/
def P5535854422242628655.Spec : Prop :=
  ∀ n, (P5535854422242628655.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P5133752558890335224

`∩[A051948(n+1), A157676(n+1)]`
-/

namespace A157677.P5133752558890335224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P5133752558890335224

namespace A157677

/-- `∩[A051948(n+1), A157676(n+1)]` -/
def P5133752558890335224.Spec : Prop :=
  ∀ n, (P5133752558890335224.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P16541280908260796172

`∩[A053813(n+1), A157676(n+1)]`
-/

namespace A157677.P16541280908260796172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P16541280908260796172

namespace A157677

/-- `∩[A053813(n+1), A157676(n+1)]` -/
def P16541280908260796172.Spec : Prop :=
  ∀ n, (P16541280908260796172.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P2779037164216686638

`∩[A140826(n+1), A157676(n+1)]`
-/

namespace A157677.P2779037164216686638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P2779037164216686638

namespace A157677

/-- `∩[A140826(n+1), A157676(n+1)]` -/
def P2779037164216686638.Spec : Prop :=
  ∀ n, (P2779037164216686638.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P2525213217497138612

`∩[A064728(n+1), A157676(n+1)]`
-/

namespace A157677.P2525213217497138612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P2525213217497138612

namespace A157677

/-- `∩[A064728(n+1), A157676(n+1)]` -/
def P2525213217497138612.Spec : Prop :=
  ∀ n, (P2525213217497138612.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P8160417445797856705

`∩[A066542(n+1), A157676(n+1)]`
-/

namespace A157677.P8160417445797856705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P8160417445797856705

namespace A157677

/-- `∩[A066542(n+1), A157676(n+1)]` -/
def P8160417445797856705.Spec : Prop :=
  ∀ n, (P8160417445797856705.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P7550981654816629185

`∩[A053577(n+1), A157676(n+1)]`
-/

namespace A157677.P7550981654816629185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P7550981654816629185

namespace A157677

/-- `∩[A053577(n+1), A157676(n+1)]` -/
def P7550981654816629185.Spec : Prop :=
  ∀ n, (P7550981654816629185.a n : ℤ) = A157677 (n + 1)

end A157677

/-! ## A157677.P9939801762732557

`∩[A066191(n+1), A157676(n+1)]`
-/

namespace A157677.P9939801762732557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157677.P9939801762732557

namespace A157677

/-- `∩[A066191(n+1), A157676(n+1)]` -/
def P9939801762732557.Spec : Prop :=
  ∀ n, (P9939801762732557.a n : ℤ) = A157677 (n + 1)

end A157677

/-!
# A157679: Number of subtrees of a complete binary tree.

The programs for A157679, the canonical program `A157679.P6979376721733342763` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157679 has offset 0).

The definition of A157679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157679.P6979376721733342763

`(1+a(floor((n-1)/2)))*(1+a(ceil((n-1)/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157679

/-- `(1+a(floor((n-1)/2)))*(1+a(ceil((n-1)/2)))` -/
def P6979376721733342763.Spec : Prop :=
  ∀ n, (P6979376721733342763.a n : ℤ) = A157679 n

theorem P6979376721733342763.correct : P6979376721733342763.Spec := by
  intro n
  simp only [A157679]

end A157679

/-! ## A157679.P16024973267751477403

`A005468(n+1)-1`
-/

namespace A157679.P16024973267751477403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005468 (n + 1) - 1

end

end A157679.P16024973267751477403

namespace A157679

/-- `A005468(n+1)-1` -/
def P16024973267751477403.Spec : Prop :=
  ∀ n, P16024973267751477403.a n = A157679 n

end A157679

/-! ## A157679.P8419342419878050751

`record[A005468(A328399(n))-1]`
-/

namespace A157679.P8419342419878050751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005468 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157679.P8419342419878050751

namespace A157679

/-- `record[A005468(A328399(n))-1]` -/
def P8419342419878050751.Spec : Prop :=
  ∀ n, P8419342419878050751.a n = A157679 n

end A157679

/-! ## A157679.P17470677536372484122

`A057428(n+1)+A005468(n+1)`
-/

namespace A157679.P17470677536372484122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A005468 (n + 1)

end

end A157679.P17470677536372484122

namespace A157679

/-- `A057428(n+1)+A005468(n+1)` -/
def P17470677536372484122.Spec : Prop :=
  ∀ n, P17470677536372484122.a n = A157679 n

end A157679

/-! ## A157679.P8390111972069023233

`A134824(n+2)+A005468(n+1)`
-/

namespace A157679.P8390111972069023233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A005468 (n + 1)

end

end A157679.P8390111972069023233

namespace A157679

/-- `A134824(n+2)+A005468(n+1)` -/
def P8390111972069023233.Spec : Prop :=
  ∀ n, P8390111972069023233.a n = A157679 n

end A157679

/-!
# A157680: Least significant decimal digit of A157644(n).

The programs for A157680, there is no canonical definition to state claims against.
-/

/-! ## A157680.P13646327030645585406

`A157644(n+1)%10`
-/

namespace A157680.P13646327030645585406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157644 (n + 1)) 10

end

end A157680.P13646327030645585406

/-! ## A157680.P10888941091014286347

`A010879(A157644(n+1))`
-/

namespace A157680.P10888941091014286347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A157644 (n + 1)).toNat

end

end A157680.P10888941091014286347

/-! ## A157680.P6090493375254038004

`record[A157644(A134478(n))]%10`
-/

namespace A157680.P6090493375254038004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A157680.P6090493375254038004

/-! ## A157680.P13724069520461152215

`(A157763(n)+a(n-1))%10` with `a(0)=9`
-/

namespace A157680.P13724069520461152215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  Int.tmod (A157763 n + a (n - 1)) 10

end

end A157680.P13724069520461152215

/-! ## A157680.P16189024176757898464

`∑[A157763(A028310(n))]%10`
-/

namespace A157680.P16189024176757898464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A157680.P16189024176757898464

/-! ## A157680.P2295633911756243799

`∑[A157763(A137734(n²))]%10`
-/

namespace A157680.P2295633911756243799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A157680.P2295633911756243799

/-! ## A157680.P15436645197568190434

`∑[A157763(A134478(∑[n]))]%10`
-/

namespace A157680.P15436645197568190434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A157680.P15436645197568190434

/-! ## A157680.P10000407837763518396

`∑[A157763(A193739(∑[n]))]%10`
-/

namespace A157680.P10000407837763518396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A193739 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A157680.P10000407837763518396

/-! ## A157680.P2064849574706972411

`∑[A157763(A123108(2*n))]%10`
-/

namespace A157680.P2064849574706972411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A157680.P2064849574706972411

/-! ## A157680.P10183582657133975496

`∑[A157763(A000007(n)+n)]%10`
-/

namespace A157680.P10183582657133975496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A157680.P10183582657133975496

/-! ## A157680.P8334873208217680559

`∑[A157763(A101279(2*n+1))]%10`
-/

namespace A157680.P8334873208217680559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A101279 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A157680.P8334873208217680559

/-! ## A157680.P8575741863963112712

`∑[A157763(A008458(n)-5*n)]%10`
-/

namespace A157680.P8575741863963112712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157763 (A008458 n - (5 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A157680.P8575741863963112712

/-!
# A157681: Fibonacci sequence beginning 29, 31.

The programs for A157681, the canonical program `A157681.P3532926400889605144` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157681 has offset 1).

The definition of A157681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157681.P3532926400889605144

`a(n-1)+a(n-2)` with `a(0)=29, a(1)=31`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157681

/-- `a(n-1)+a(n-2)` -/
def P3532926400889605144.Spec : Prop :=
  ∀ n, (P3532926400889605144.a n : ℤ) = A157681 (n + 1)

theorem P3532926400889605144.correct : P3532926400889605144.Spec := by
  intro n
  simp only [A157681, Nat.add_sub_cancel]

end A157681

/-! ## A157681.P17996860663619503785

`A190994(n+2)`
-/

namespace A157681.P17996860663619503785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190994 (n + 2)

end

end A157681.P17996860663619503785

namespace A157681

/-- `A190994(n+2)` -/
def P17996860663619503785.Spec : Prop :=
  ∀ n, P17996860663619503785.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P16111708172321656245

`record[A190994(abs(2-n))]`
-/

namespace A157681.P16111708172321656245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190994 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157681.P16111708172321656245

namespace A157681

/-- `record[A190994(abs(2-n))]` -/
def P16111708172321656245.Spec : Prop :=
  ∀ n, P16111708172321656245.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P15588282440127619921

`A393414(n)+A022093(n)`
-/

namespace A157681.P15588282440127619921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393414 n + A022093 n

end

end A157681.P15588282440127619921

namespace A157681

/-- `A393414(n)+A022093(n)` -/
def P15588282440127619921.Spec : Prop :=
  ∀ n, P15588282440127619921.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P3271193170867254624

`A022399(n+1)+A000045(n)`
-/

namespace A157681.P3271193170867254624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022399 (n + 1) + A000045 n

end

end A157681.P3271193170867254624

namespace A157681

/-- `A022399(n+1)+A000045(n)` -/
def P3271193170867254624.Spec : Prop :=
  ∀ n, P3271193170867254624.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P8289133535192746566

`A022362(n+1)+A000032(n+1)`
-/

namespace A157681.P8289133535192746566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022362 (n + 1) + A000032 (n + 1)

end

end A157681.P8289133535192746566

namespace A157681

/-- `A022362(n+1)+A000032(n+1)` -/
def P8289133535192746566.Spec : Prop :=
  ∀ n, P8289133535192746566.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P9293652551344103761

`A022376(n+1)+A000045(n+1)`
-/

namespace A157681.P9293652551344103761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022376 (n + 1) + A000045 (n + 1)

end

end A157681.P9293652551344103761

namespace A157681

/-- `A022376(n+1)+A000045(n+1)` -/
def P9293652551344103761.Spec : Prop :=
  ∀ n, P9293652551344103761.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P5759894321275275188

`A022362(n+1)+A000204(n+1)`
-/

namespace A157681.P5759894321275275188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022362 (n + 1) + A000204 (n + 1)

end

end A157681.P5759894321275275188

namespace A157681

/-- `A022362(n+1)+A000204(n+1)` -/
def P5759894321275275188.Spec : Prop :=
  ∀ n, P5759894321275275188.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P546058273491883282

`A022395(n+1)+A000285(n+1)`
-/

namespace A157681.P546058273491883282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022395 (n + 1) + A000285 (n + 1)

end

end A157681.P546058273491883282

namespace A157681

/-- `A022395(n+1)+A000285(n+1)` -/
def P546058273491883282.Spec : Prop :=
  ∀ n, P546058273491883282.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P1569825224520930435

`A022105(n+1)+A022104(n+1)`
-/

namespace A157681.P1569825224520930435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 (n + 1) + A022104 (n + 1)

end

end A157681.P1569825224520930435

namespace A157681

/-- `A022105(n+1)+A022104(n+1)` -/
def P1569825224520930435.Spec : Prop :=
  ∀ n, P1569825224520930435.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P16071768279378965451

`A022106(n+1)+A022103(n+1)`
-/

namespace A157681.P16071768279378965451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 (n + 1) + A022103 (n + 1)

end

end A157681.P16071768279378965451

namespace A157681

/-- `A022106(n+1)+A022103(n+1)` -/
def P16071768279378965451.Spec : Prop :=
  ∀ n, P16071768279378965451.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P18128774349715628385

`A022108(n+1)+A022101(n+1)`
-/

namespace A157681.P18128774349715628385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 (n + 1) + A022101 (n + 1)

end

end A157681.P18128774349715628385

namespace A157681

/-- `A022108(n+1)+A022101(n+1)` -/
def P18128774349715628385.Spec : Prop :=
  ∀ n, P18128774349715628385.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P7389089641506818299

`A022109(n+1)+A022100(n+1)`
-/

namespace A157681.P7389089641506818299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 (n + 1) + A022100 (n + 1)

end

end A157681.P7389089641506818299

namespace A157681

/-- `A022109(n+1)+A022100(n+1)` -/
def P7389089641506818299.Spec : Prop :=
  ∀ n, P7389089641506818299.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P1085715736124220552

`A022110(n+1)+A022099(n+1)`
-/

namespace A157681.P1085715736124220552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 (n + 1) + A022099 (n + 1)

end

end A157681.P1085715736124220552

namespace A157681

/-- `A022110(n+1)+A022099(n+1)` -/
def P1085715736124220552.Spec : Prop :=
  ∀ n, P1085715736124220552.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P17418186967006706209

`A022348(n+1)+A022117(n+1)`
-/

namespace A157681.P17418186967006706209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 (n + 1) + A022117 (n + 1)

end

end A157681.P17418186967006706209

namespace A157681

/-- `A022348(n+1)+A022117(n+1)` -/
def P17418186967006706209.Spec : Prop :=
  ∀ n, P17418186967006706209.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P17252995496916749371

`A022354(n+1)+A022114(n+1)`
-/

namespace A157681.P17252995496916749371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 (n + 1) + A022114 (n + 1)

end

end A157681.P17252995496916749371

namespace A157681

/-- `A022354(n+1)+A022114(n+1)` -/
def P17252995496916749371.Spec : Prop :=
  ∀ n, P17252995496916749371.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P18301258320418304222

`A152163(n+1)+A022400(n+1)`
-/

namespace A157681.P18301258320418304222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) + A022400 (n + 1)

end

end A157681.P18301258320418304222

namespace A157681

/-- `A152163(n+1)+A022400(n+1)` -/
def P18301258320418304222.Spec : Prop :=
  ∀ n, P18301258320418304222.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P17339613915304664721

`A212804(n+1)+A022399(n+1)`
-/

namespace A157681.P17339613915304664721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A022399 (n + 1)

end

end A157681.P17339613915304664721

namespace A157681

/-- `A212804(n+1)+A022399(n+1)` -/
def P17339613915304664721.Spec : Prop :=
  ∀ n, P17339613915304664721.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P5244393276171130743

`A022377(n+1)-A000045(n+1)`
-/

namespace A157681.P5244393276171130743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022377 (n + 1) - A000045 (n + 1)

end

end A157681.P5244393276171130743

namespace A157681

/-- `A022377(n+1)-A000045(n+1)` -/
def P5244393276171130743.Spec : Prop :=
  ∀ n, P5244393276171130743.a n = A157681 (n + 1)

end A157681

/-! ## A157681.P1655792226450097749

`A022398(n+1)+A000045(n+2)`
-/

namespace A157681.P1655792226450097749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 (n + 1) + A000045 (n + 2)

end

end A157681.P1655792226450097749

namespace A157681

/-- `A022398(n+1)+A000045(n+2)` -/
def P1655792226450097749.Spec : Prop :=
  ∀ n, P1655792226450097749.a n = A157681 (n + 1)

end A157681

/-!
# A157684: a(n)=#{1<=k<=n : [K(k),K(k+1)]=[1,2]} where K=A000002.

The programs for A157684, there is no canonical definition to state claims against.
-/

/-! ## A157684.P3440703608303529954

`floor(A156253(n+2)/2)`
-/

namespace A157684.P3440703608303529954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156253 (n + 2) : ℚ) / 2⌋

end

end A157684.P3440703608303529954

/-! ## A157684.P9159307710642142255

`ceil(A156351(n+1)/2)`
-/

namespace A157684.P9159307710642142255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156351 (n + 1) : ℚ) / 2⌉

end

end A157684.P9159307710642142255

/-! ## A157684.P2568118860598083394

`∑[7%A100808(n+2)]`
-/

namespace A157684.P2568118860598083394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A100808 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157684.P2568118860598083394

/-! ## A157684.P14492254170389646968

`∑[ceil(sin(A054354(n+1)))]`
-/

namespace A157684.P14492254170389646968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A054354 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157684.P14492254170389646968

/-! ## A157684.P14834555006121182577

`ceil(∑[A156728(n+1)/2])`
-/

namespace A157684.P14834555006121182577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156728 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A157684.P14834555006121182577

/-! ## A157684.P17669041740239460909

`∑[char[A054353(or(1, n))-1]]`
-/

namespace A157684.P17669041740239460909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (Nat.lor 1 n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157684.P17669041740239460909

/-! ## A157684.P7794457860521939308

`round((A078880(n+1)+n)/3)`
-/

namespace A157684.P7794457860521939308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078880 (n + 1) + (n : ℤ) : ℚ) / 3)

end

end A157684.P7794457860521939308

/-! ## A157684.P15467953295126062970

`∑[ceil(Δ[A000002(n+1)/2])]`
-/

namespace A157684.P15467953295126062970
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000002 (n + 1) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157684.P15467953295126062970

/-! ## A157684.P9334142072173077922

`∑[char[∑[A332273(n+1)]-1]]`
-/

namespace A157684.P9334142072173077922
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157684.P9334142072173077922

/-! ## A157684.P8708969992844444812

`∑[char[A054353(2*n+1)-1]]`
-/

namespace A157684.P8708969992844444812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157684.P8708969992844444812

/-!
# A157685: a(n)=#{1<=k<=n : [K(k),K(k+1)]=[2,1]} where K=A000002.

The programs for A157685, there is no canonical definition to state claims against.
-/

/-! ## A157685.P5277530392607238573

`floor(A156351(n+1)/2)`
-/

namespace A157685.P5277530392607238573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156351 (n + 1) : ℚ) / 2⌋

end

end A157685.P5277530392607238573

/-! ## A157685.P7158643939270374181

`floor(sinh(log(A156253(n+2))))`
-/

namespace A157685.P7158643939270374181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A156253 (n + 2) : ℝ))⌋

end

end A157685.P7158643939270374181

/-! ## A157685.P3662179265614891815

`∑[floor(atan(A249094(n+2)))]`
-/

namespace A157685.P3662179265614891815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A249094 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157685.P3662179265614891815

/-! ## A157685.P14437017328789305914

`floor(∑[A156728(n+1)/2])`
-/

namespace A157685.P14437017328789305914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156728 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A157685.P14437017328789305914

/-! ## A157685.P8139078484301016270

`∑[char[A156242(n+1)-1]]`
-/

namespace A157685.P8139078484301016270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157685.P8139078484301016270

/-! ## A157685.P9158401430687920262

`∑[dr(and(10, A054354(n+1)))]`
-/

namespace A157685.P9158401430687920262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A054354 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157685.P9158401430687920262

/-! ## A157685.P16849422501614223397

`∑[ceil(Δ[1/A000002(n+1)])]`
-/

namespace A157685.P16849422501614223397
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000002 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157685.P16849422501614223397

/-! ## A157685.P17683303425942536312

`floor(∑[7%A078929(n+1)]/2)`
-/

namespace A157685.P17683303425942536312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A078929 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A157685.P17683303425942536312

/-! ## A157685.P3460806714085380816

`A004526(A156351(n+1))`
-/

namespace A157685.P3460806714085380816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A156351 (n + 1)).toNat

end

end A157685.P3460806714085380816

/-! ## A157685.P4126447919038301248

`A004526(A156253(n+2)-1)`
-/

namespace A157685.P4126447919038301248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A156253 (n + 2) - 1).toNat

end

end A157685.P4126447919038301248

/-!
# A157686: a(n) = A157684(n) - A157685(n).

The programs for A157686, the canonical program `A157686.P7495774716437211567` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157686 has offset 1).

The definition of A157686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157686.P5676401754997310983

`A157684(n+1)-A157685(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157686.P5676401754997310983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (n + 1) - A157685 (n + 1)

end

end A157686.P5676401754997310983

namespace A157686

/-- `A157684(n+1)-A157685(n+1)` -/
def P5676401754997310983.Spec : Prop :=
  ∀ n, P5676401754997310983.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P5323664277282502727

`log2(A078880(n+1))`
-/

namespace A157686.P5323664277282502727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A078880 (n + 1) : ℝ)

end

end A157686.P5323664277282502727

namespace A157686

/-- `log2(A078880(n+1))` -/
def P5323664277282502727.Spec : Prop :=
  ∀ n, P5323664277282502727.a n = (A157686 (n + 1) : ℝ)

end A157686

/-! ## A157686.P8126362082487996386

`log2(A000002(n+2))`
-/

namespace A157686.P8126362082487996386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000002 (n + 2) : ℝ)

end

end A157686.P8126362082487996386

namespace A157686

/-- `log2(A000002(n+2))` -/
def P8126362082487996386.Spec : Prop :=
  ∀ n, P8126362082487996386.a n = (A157686 (n + 1) : ℝ)

end A157686

/-! ## A157686.P3460109161892210895

`∑[A054354(n+1)]`
-/

namespace A157686.P3460109161892210895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157686.P3460109161892210895

namespace A157686

/-- `∑[A054354(n+1)]` -/
def P3460109161892210895.Spec : Prop :=
  ∀ n, P3460109161892210895.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P16533901922339688603

`2-A088569(n+1)`
-/

namespace A157686.P16533901922339688603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A088569 (n + 1)

end

end A157686.P16533901922339688603

namespace A157686

/-- `2-A088569(n+1)` -/
def P16533901922339688603.Spec : Prop :=
  ∀ n, P16533901922339688603.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P7495774716437211567

`A156351(n+1)%2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157686

/-- `A156351(n+1)%2` -/
def P7495774716437211567.Spec : Prop :=
  ∀ n, P7495774716437211567.a n = A157686 (n + 1)

theorem P7495774716437211567.correct : P7495774716437211567.Spec := by
  intro n
  simp only [A157686, Nat.add_sub_cancel]

end A157686

/-! ## A157686.P9534567656543031861

`floor(acot(A249093(n+2)))`
-/

namespace A157686.P9534567656543031861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A249093 (n + 2) : ℝ)⌋

end

end A157686.P9534567656543031861

namespace A157686

/-- `floor(acot(A249093(n+2)))` -/
def P9534567656543031861.Spec : Prop :=
  ∀ n, P9534567656543031861.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P8824905194478382090

`char[A013948(n+1)-2]`
-/

namespace A157686.P8824905194478382090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A157686.P8824905194478382090

namespace A157686

/-- `char[A013948(n+1)-2]` -/
def P8824905194478382090.Spec : Prop :=
  ∀ n, (P8824905194478382090.a n : ℤ) = A157686 (n + 1)

end A157686

/-! ## A157686.P12896621673578577367

`C(2, A249094(n+2)+2)`
-/

namespace A157686.P12896621673578577367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A249094 (n + 2) + 2).toNat

end

end A157686.P12896621673578577367

namespace A157686

/-- `C(2, A249094(n+2)+2)` -/
def P12896621673578577367.Spec : Prop :=
  ∀ n, (P12896621673578577367.a n : ℤ) = A157686 (n + 1)

end A157686

/-! ## A157686.P6309471521296475237

`(A006928(n+1)-1)^n`
-/

namespace A157686.P6309471521296475237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006928 (n + 1) - 1) ^ n

end

end A157686.P6309471521296475237

namespace A157686

/-- `(A006928(n+1)-1)^n` -/
def P6309471521296475237.Spec : Prop :=
  ∀ n, P6309471521296475237.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P17325116092749293061

`(2-A049710(n+1))^n`
-/

namespace A157686.P17325116092749293061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049710 (n + 1)) ^ n

end

end A157686.P17325116092749293061

namespace A157686

/-- `(2-A049710(n+1))^n` -/
def P17325116092749293061.Spec : Prop :=
  ∀ n, P17325116092749293061.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P6582925969110246213

`∑[Δ[A000002(n+1)]^3]`
-/

namespace A157686.P6582925969110246213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157686.P6582925969110246213

namespace A157686

/-- `∑[Δ[A000002(n+1)]^3]` -/
def P6582925969110246213.Spec : Prop :=
  ∀ n, P6582925969110246213.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P670601445011864994

`char[comp[A013947(n+1)-2]]`
-/

namespace A157686.P670601445011864994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A157686.P670601445011864994

namespace A157686

/-- `char[comp[A013947(n+1)-2]]` -/
def P670601445011864994.Spec : Prop :=
  ∀ n, (P670601445011864994.a n : ℤ) = A157686 (n + 1)

end A157686

/-! ## A157686.P4145653059780638339

`char[comp[A022297(n+2)-1]]`
-/

namespace A157686.P4145653059780638339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A157686.P4145653059780638339

namespace A157686

/-- `char[comp[A022297(n+2)-1]]` -/
def P4145653059780638339.Spec : Prop :=
  ∀ n, (P4145653059780638339.a n : ℤ) = A157686 (n + 1)

end A157686

/-! ## A157686.P8848126404555457373

`(A156728(n+1)-a(n-1))²` with `a(0)=1`
-/

namespace A157686.P8848126404555457373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A156728 (n + 1) - a (n - 1)) ^ 2

end

end A157686.P8848126404555457373

namespace A157686

/-- `(A156728(n+1)-a(n-1))²` -/
def P8848126404555457373.Spec : Prop :=
  ∀ n, P8848126404555457373.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P5391760267644438344

`A000035(A156351(n+1))`
-/

namespace A157686.P5391760267644438344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A156351 (n + 1)).toNat

end

end A157686.P5391760267644438344

namespace A157686

/-- `A000035(A156351(n+1))` -/
def P5391760267644438344.Spec : Prop :=
  ∀ n, P5391760267644438344.a n = A157686 (n + 1)

end A157686

/-! ## A157686.P4554935310183909968

`A000007(A249093(n+2))`
-/

namespace A157686.P4554935310183909968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A249093 (n + 2)).toNat

end

end A157686.P4554935310183909968

namespace A157686

/-- `A000007(A249093(n+2))` -/
def P4554935310183909968.Spec : Prop :=
  ∀ n, P4554935310183909968.a n = A157686 (n + 1)

end A157686

/-!
# A157687: a(n) = n - A054353(A156351(n)).

The programs for A157687, the canonical program `A157687.P3194273760277078501` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157687 has offset 1).

The definition of A157687 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156728, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157687.P3194273760277078501

`1-A156728(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157687

/-- `1-A156728(n+1)` -/
def P3194273760277078501.Spec : Prop :=
  ∀ n, P3194273760277078501.a n = A157687 (n + 1)

theorem P3194273760277078501.correct : P3194273760277078501.Spec := by
  intro n
  simp only [A157687, Nat.add_sub_cancel]

end A157687

/-! ## A157687.P5129977736890619443

`1-Δ[a(n-2)+gcd(2, a(a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A157687.P5129977736890619443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + Nat.gcd 2 (f1 (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A157687.P5129977736890619443

namespace A157687

/-- `1-Δ[a(n-2)+gcd(2, a(a(n-1)))]` -/
def P5129977736890619443.Spec : Prop :=
  ∀ n, P5129977736890619443.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P1862300497145600704

`9%A333229(n+1)`
-/

namespace A157687.P1862300497145600704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A333229 (n + 1))

end

end A157687.P1862300497145600704

namespace A157687

/-- `9%A333229(n+1)` -/
def P1862300497145600704.Spec : Prop :=
  ∀ n, P1862300497145600704.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P2481087906489165128

`floor(cos(A054354(n+1)))`
-/

namespace A157687.P2481087906489165128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A054354 (n + 1) : ℝ)⌋

end

end A157687.P2481087906489165128

namespace A157687

/-- `floor(cos(A054354(n+1)))` -/
def P2481087906489165128.Spec : Prop :=
  ∀ n, P2481087906489165128.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P16530301943164408928

`char[A078649(n+1)-1]`
-/

namespace A157687.P16530301943164408928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A157687.P16530301943164408928

namespace A157687

/-- `char[A078649(n+1)-1]` -/
def P16530301943164408928.Spec : Prop :=
  ∀ n, (P16530301943164408928.a n : ℤ) = A157687 (n + 1)

end A157687

/-! ## A157687.P8307197006628014009

`floor(cos(Δ[A000002(n+1)]))`
-/

namespace A157687.P8307197006628014009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A157687.P8307197006628014009

namespace A157687

/-- `floor(cos(Δ[A000002(n+1)]))` -/
def P8307197006628014009.Spec : Prop :=
  ∀ n, P8307197006628014009.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P1654786058645585340

`char[comp[A054353(n+1)-1]]`
-/

namespace A157687.P1654786058645585340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A157687.P1654786058645585340

namespace A157687

/-- `char[comp[A054353(n+1)-1]]` -/
def P1654786058645585340.Spec : Prop :=
  ∀ n, (P1654786058645585340.a n : ℤ) = A157687 (n + 1)

end A157687

/-! ## A157687.P13945214139865736326

`char[comp[A216345(n+1)-2]]`
-/

namespace A157687.P13945214139865736326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A157687.P13945214139865736326

namespace A157687

/-- `char[comp[A216345(n+1)-2]]` -/
def P13945214139865736326.Spec : Prop :=
  ∀ n, (P13945214139865736326.a n : ℤ) = A157687 (n + 1)

end A157687

/-! ## A157687.P16845200007746503608

`char[A013948(n+1)-1+n]`
-/

namespace A157687.P16845200007746503608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A157687.P16845200007746503608

namespace A157687

/-- `char[A013948(n+1)-1+n]` -/
def P16845200007746503608.Spec : Prop :=
  ∀ n, (P16845200007746503608.a n : ℤ) = A157687 (n + 1)

end A157687

/-! ## A157687.P2281398249591958977

`1-char[A074286(n+1)+n]`
-/

namespace A157687.P2281398249591958977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A157687.P2281398249591958977

namespace A157687

/-- `1-char[A074286(n+1)+n]` -/
def P2281398249591958977.Spec : Prop :=
  ∀ n, P2281398249591958977.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P12593734444901067990

`A023416(Δ[A000002(n+1)]²)`
-/

namespace A157687.P12593734444901067990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A157687.P12593734444901067990

namespace A157687

/-- `A023416(Δ[A000002(n+1)]²)` -/
def P12593734444901067990.Spec : Prop :=
  ∀ n, P12593734444901067990.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P10018803197831893507

`A059841(Δ[A000002(n+1)]²)`
-/

namespace A157687.P10018803197831893507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A157687.P10018803197831893507

namespace A157687

/-- `A059841(Δ[A000002(n+1)]²)` -/
def P10018803197831893507.Spec : Prop :=
  ∀ n, P10018803197831893507.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P15435649793620994474

`A023416(Δ[A000002(n+1)]+2)`
-/

namespace A157687.P15435649793620994474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (n + 1) - f1 n + 2).toNat

end

end A157687.P15435649793620994474

namespace A157687

/-- `A023416(Δ[A000002(n+1)]+2)` -/
def P15435649793620994474.Spec : Prop :=
  ∀ n, P15435649793620994474.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P4705544104995570724

`A059841(Δ[A000002(n+1)]+2)`
-/

namespace A157687.P4705544104995570724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (f1 (n + 1) - f1 n + 2).toNat

end

end A157687.P4705544104995570724

namespace A157687

/-- `A059841(Δ[A000002(n+1)]+2)` -/
def P4705544104995570724.Spec : Prop :=
  ∀ n, P4705544104995570724.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P16789647643938601876

`char[A054353(A013948(n+1)-1)]`
-/

namespace A157687.P16789647643938601876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A013948 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A157687.P16789647643938601876

namespace A157687

/-- `char[A054353(A013948(n+1)-1)]` -/
def P16789647643938601876.Spec : Prop :=
  ∀ n, (P16789647643938601876.a n : ℤ) = A157687 (n + 1)

end A157687

/-! ## A157687.P6497391770152976524

`A054353(A156253(n+1))-(n+1)`
-/

namespace A157687.P6497391770152976524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A156253 (n + 1)).toNat - (n + 1 : ℤ)

end

end A157687.P6497391770152976524

namespace A157687

/-- `A054353(A156253(n+1))-(n+1)` -/
def P6497391770152976524.Spec : Prop :=
  ∀ n, P6497391770152976524.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P6862990534218809489

`n+1-A054353(A156351(n+1))`
-/

namespace A157687.P6862990534218809489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A054353 (A156351 (n + 1)).toNat

end

end A157687.P6862990534218809489

namespace A157687

/-- `n+1-A054353(A156351(n+1))` -/
def P6862990534218809489.Spec : Prop :=
  ∀ n, P6862990534218809489.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P3664703311505448267

`A156253(n+1)-A156351(n+1)`
-/

namespace A157687.P3664703311505448267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1) - A156351 (n + 1)

end

end A157687.P3664703311505448267

namespace A157687

/-- `A156253(n+1)-A156351(n+1)` -/
def P3664703311505448267.Spec : Prop :=
  ∀ n, P3664703311505448267.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P8080721629925917573

`and(1, A158388(n)+A054354(n+1))`
-/

namespace A157687.P8080721629925917573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A158388 n + A054354 (n + 1))

end

end A157687.P8080721629925917573

namespace A157687

/-- `and(1, A158388(n)+A054354(n+1))` -/
def P8080721629925917573.Spec : Prop :=
  ∀ n, P8080721629925917573.a n = A157687 (n + 1)

end A157687

/-! ## A157687.P15892837314574580156

`1-and(A054354(n+1), A060576(n))`
-/

namespace A157687.P15892837314574580156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A054354 (n + 1)) (A060576 n)

end

end A157687.P15892837314574580156

namespace A157687

/-- `1-and(A054354(n+1), A060576(n))` -/
def P15892837314574580156.Spec : Prop :=
  ∀ n, P15892837314574580156.a n = A157687 (n + 1)

end A157687

/-!
# A157694: Triangle read by rows: the Pascal triangle A007318 with all elements replaced by 1 which do not equal the central binomial coefficients.

The programs for A157694, the canonical program `A157694.P9738583196815750906` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157694 has offset 0).

The definition of A157694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157694.P9738583196815750906

`A007318(lcm(n, C(2, A068527(2*n))))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A157694

/-- `A007318(lcm(n, C(2, A068527(2*n))))` -/
def P9738583196815750906.Spec : Prop :=
  ∀ n, P9738583196815750906.a n = A157694 n

theorem P9738583196815750906.correct : P9738583196815750906.Spec := by
  intro n
  simp only [A157694]

end A157694

/-! ## A157694.P1219440172441328359

`gcd(A007318(n), A073490(A098350(n+1)))`
-/

namespace A157694.P1219440172441328359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A073490 (A098350 (n + 1)).toNat)

end

end A157694.P1219440172441328359

namespace A157694

/-- `gcd(A007318(n), A073490(A098350(n+1)))` -/
def P1219440172441328359.Spec : Prop :=
  ∀ n, (P1219440172441328359.a n : ℤ) = A157694 n

end A157694

/-! ## A157694.P16080520388131225392

`A007318(n*A000120(A216218(n)))`
-/

namespace A157694.P16080520388131225392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) * A000120 (A216218 n).toNat).toNat

end

end A157694.P16080520388131225392

namespace A157694

/-- `A007318(n*A000120(A216218(n)))` -/
def P16080520388131225392.Spec : Prop :=
  ∀ n, P16080520388131225392.a n = A157694 n

end A157694

/-! ## A157694.P2606810902359553506

`A007318(n)^A000120(A216218(n))`
-/

namespace A157694.P2606810902359553506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A000120 (A216218 n).toNat : ℤ)

end

end A157694.P2606810902359553506

namespace A157694

/-- `A007318(n)^A000120(A216218(n))` -/
def P2606810902359553506.Spec : Prop :=
  ∀ n, P2606810902359553506.a n = (A157694 n : ℚ)

end A157694

/-! ## A157694.P14244691632509049420

`abs(A108086(n))^A000120(A216218(n))`
-/

namespace A157694.P14244691632509049420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A108086 n| : ℚ) ^ (A000120 (A216218 n).toNat : ℤ)

end

end A157694.P14244691632509049420

namespace A157694

/-- `abs(A108086(n))^A000120(A216218(n))` -/
def P14244691632509049420.Spec : Prop :=
  ∀ n, P14244691632509049420.a n = (A157694 n : ℚ)

end A157694

/-! ## A157694.P2257806466194231453

`abs(A117440(n))^A000120(A216218(n))`
-/

namespace A157694.P2257806466194231453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A117440 n| : ℚ) ^ (A000120 (A216218 n).toNat : ℤ)

end

end A157694.P2257806466194231453

namespace A157694

/-- `abs(A117440(n))^A000120(A216218(n))` -/
def P2257806466194231453.Spec : Prop :=
  ∀ n, P2257806466194231453.a n = (A157694 n : ℚ)

end A157694

/-! ## A157694.P5464167128478465667

`abs(A130595(n))^A000120(A216218(n))`
-/

namespace A157694.P5464167128478465667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A130595 n| : ℚ) ^ (A000120 (A216218 n).toNat : ℤ)

end

end A157694.P5464167128478465667

namespace A157694

/-- `abs(A130595(n))^A000120(A216218(n))` -/
def P5464167128478465667.Spec : Prop :=
  ∀ n, P5464167128478465667.a n = (A157694 n : ℚ)

end A157694

/-! ## A157694.P7587071945082485422

`A007318(n%A000244(A216218(n)))`
-/

namespace A157694.P7587071945082485422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (n : ℤ) (A000244 (A216218 n).toNat)).toNat

end

end A157694.P7587071945082485422

namespace A157694

/-- `A007318(n%A000244(A216218(n)))` -/
def P7587071945082485422.Spec : Prop :=
  ∀ n, P7587071945082485422.a n = A157694 n

end A157694

/-! ## A157694.P2152371092136366447

`A007318(gcd(A061579(n), A108063(n+1)))`
-/

namespace A157694.P2152371092136366447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.gcd (A061579 n) (A108063 (n + 1)))

end

end A157694.P2152371092136366447

namespace A157694

/-- `A007318(gcd(A061579(n), A108063(n+1)))` -/
def P2152371092136366447.Spec : Prop :=
  ∀ n, P2152371092136366447.a n = A157694 n

end A157694

/-! ## A157694.P3562377363920769920

`round(root(A007318(n), A181878(n)))`
-/

namespace A157694.P3562377363920769920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007318 n : ℝ) ^ (1 / (A181878 n : ℝ)))

end

end A157694.P3562377363920769920

namespace A157694

/-- `round(root(A007318(n), A181878(n)))` -/
def P3562377363920769920.Spec : Prop :=
  ∀ n, P3562377363920769920.a n = A157694 n

end A157694

/-!
# A157695: Composite numbers that are not multiples of 3.

The programs for A157695, there is no canonical definition to state claims against.
-/

/-! ## A157695.P5755909239753712224

`A171993(n+2)`
-/

namespace A157695.P5755909239753712224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 2)

end

end A157695.P5755909239753712224

/-! ## A157695.P1077198638642766439

`∑{digits}[A111380(n+1), #]`
-/

namespace A157695.P1077198638642766439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A157695.P1077198638642766439

/-! ## A157695.P2232945211543958444

`lt[gcd(3, n), A107286(n)]`
-/

namespace A157695.P2232945211543958444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A157695.P2232945211543958444

/-! ## A157695.P5942523555461569603

`lt[2, n%3*A003415(n)]`
-/

namespace A157695.P5942523555461569603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 3 : ℕ) : ℤ) * A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A157695.P5942523555461569603

/-! ## A157695.P63411548504342994

`lt[13*n+15, A008653(n)]`
-/

namespace A157695.P63411548504342994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A157695.P63411548504342994

/-! ## A157695.P4614625234382766140

`comp[∪[3*n, A008578(n+1)]]`
-/

namespace A157695.P4614625234382766140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A157695.P4614625234382766140

/-! ## A157695.P2154622119523677159

`∩[ceil(3/(2*acot(n))), A002808(n+1)]`
-/

namespace A157695.P2154622119523677159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (2 * SequenceMachineLib.acot (n : ℝ))⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157695.P2154622119523677159

/-! ## A157695.P18205994472582512058

`∩[A018252(n+2), a(n-2)+3]` with `a(0)=1, a(1)=2`
-/

namespace A157695.P18205994472582512058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A157695.P18205994472582512058

/-! ## A157695.P8453566188941121736

`∩[A018252(n+1), ceil(n/2)+2+n]`
-/

namespace A157695.P8453566188941121736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157695.P8453566188941121736

/-! ## A157695.P7229299969087207094

`eq[A010126(n), A107393(n)]`
-/

namespace A157695.P7229299969087207094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157695.P7229299969087207094

/-!
# A157696: Define k(n) to be the sequence of integers such that k(n)F(n)=F(2n)(Fibonacci sequence) (A000204); in turn define g(n) to be the sequence of integers such that g(n)k(n)=k(3n)(A110391); finally a(n) is the sequence of integers such that a(n)g(n)=g(5n).

The programs for A157696, there is no canonical definition to state claims against.
-/

/-! ## A157696.P7099994070344428339

`A110391(A008587(n+1))/A110391(n+1)`
-/

namespace A157696.P7099994070344428339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110391 (A008587 (n + 1)).toNat : ℚ) / (A110391 (n + 1) : ℚ)

end

end A157696.P7099994070344428339

/-! ## A157696.P11516359761676784408

`A159583(n+1)`
-/

namespace A157696.P11516359761676784408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159583 (n + 1)

end

end A157696.P11516359761676784408

/-! ## A157696.P16712787886987020387

`record[A159583(A025918(n))]`
-/

namespace A157696.P16712787886987020387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159583 (A025918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157696.P16712787886987020387

/-! ## A157696.P14087966125245437558

`record[A159583(A137735(n))]`
-/

namespace A157696.P14087966125245437558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159583 (A137735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157696.P14087966125245437558

/-! ## A157696.P8963006786365987793

`record[A159583(A219485(n))]`
-/

namespace A157696.P8963006786365987793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159583 (A219485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157696.P8963006786365987793

