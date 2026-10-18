import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A107500: Theta series of quadratic form with Gram matrix [ 10, 4, 4, 1; 4, 12, -1, 3; 4, -1, 12, 3; 1, 3, 3, 30].

The programs for A107500, there is no canonical definition to state claims against.
-/

/-! ## A107500.P2025749272910249636

`A278297(A004976(n))%6`
-/

namespace A107500.P2025749272910249636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278297 (A004976 n).toNat) 6

end

end A107500.P2025749272910249636

/-! ## A107500.P9173281254310759817

`and(A027557(n), A028334(A007826(n+1)))`
-/

namespace A107500.P9173281254310759817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027557 n) (A028334 (A007826 (n + 1)).toNat)

end

end A107500.P9173281254310759817

/-! ## A107500.P15173358052083626986

`A325592(A045690(n+2)-A176077(n+1))`
-/

namespace A107500.P15173358052083626986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325592 (A045690 (n + 2) - A176077 (n + 1)).toNat

end

end A107500.P15173358052083626986

/-! ## A107500.P12011940015511592726

`and(A066015(n+1), A320111(A166136(n+1)))`
-/

namespace A107500.P12011940015511592726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066015 (n + 1)) (A320111 (A166136 (n + 1)).toNat)

end

end A107500.P12011940015511592726

/-! ## A107500.P11408336917641409662

`and(A171917(A275668(n+1)), A262138(n+1))`
-/

namespace A107500.P11408336917641409662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171917 (A275668 (n + 1)).toNat) (A262138 (n + 1))

end

end A107500.P11408336917641409662

/-!
# A107502: Theta series of quadratic form with Gram matrix [ 4, 1, 0, -1; 1, 10, 0, 3; 0, 0, 26, 13; -1, 3, 13, 36].

The programs for A107502, there is no canonical definition to state claims against.
-/

/-! ## A107502.P17059882882426855241

`A263548(A054253(n+2))`
-/

namespace A107502.P17059882882426855241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263548 (A054253 (n + 2)).toNat

end

end A107502.P17059882882426855241

/-! ## A107502.P6385840799904155459

`A033687(A285332(n)+A001045(n))`
-/

namespace A107502.P6385840799904155459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (A285332 n + A001045 n).toNat

end

end A107502.P6385840799904155459

/-! ## A107502.P11717258996431273838

`A151668(gcd(A000578(2*n), A025480(n)))`
-/

namespace A107502.P11717258996431273838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 (Int.gcd (A000578 (2 * n)) (A025480 n))

end

end A107502.P11717258996431273838

/-! ## A107502.P14221930828721495476

`and(A286363(n+1), A286363(A247608(n)))`
-/

namespace A107502.P14221930828721495476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286363 (n + 1)) (A286363 (A247608 n).toNat)

end

end A107502.P14221930828721495476

/-! ## A107502.P7662293953245089140

`A008441(A189449(2*n+1)+A082040(n))`
-/

namespace A107502.P7662293953245089140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A189449 (2 * n + 1) + A082040 n).toNat

end

end A107502.P7662293953245089140

/-!
# A107504: Theta series of quadratic form with Gram matrix [ 12, -1, 5, 2; -1, 12, 5, 2; 5, 5, 14, 3; 2, 2, 3, 22].

The programs for A107504, there is no canonical definition to state claims against.
-/

/-! ## A107504.P17362657025088404132

`and(A193807(A136470(n)), A302696(n+1))`
-/

namespace A107504.P17362657025088404132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193807 (A136470 n).toNat) (A302696 (n + 1))

end

end A107504.P17362657025088404132

/-! ## A107504.P14136957217079047559

`A112605(A059325(3*n+5)*A139250(n))`
-/

namespace A107504.P14136957217079047559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (A059325 (3 * n + 5) * A139250 n).toNat

end

end A107504.P14136957217079047559

/-!
# A107505: Theta series of quadratic form with Gram matrix [ 2, 1, 0, 1; 1, 4, 1, 0; 0, 1, 4, -2; 1, 0, -2, 8].

The programs for A107505, the canonical program `A107505.P17292139217277476554` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107505 has offset 0).

The definition of A107505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107505.P17292139217277476554

`(2-A000007(n))*A284587(A028310(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107505

/-- `(2-A000007(n))*A284587(A028310(n))` -/
def P17292139217277476554.Spec : Prop :=
  ∀ n, P17292139217277476554.a n = A107505 n

theorem P17292139217277476554.correct : P17292139217277476554.Spec := by
  intro n
  simp only [A107505]

end A107505

/-! ## A107505.P7158756849779996341

`A020639(A004277(n))*A284587(A028310(n))`
-/

namespace A107505.P7158756849779996341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A284587 (A028310 n).toNat

end

end A107505.P7158756849779996341

namespace A107505

/-- `A020639(A004277(n))*A284587(A028310(n))` -/
def P7158756849779996341.Spec : Prop :=
  ∀ n, P7158756849779996341.a n = A107505 n

end A107505

/-! ## A107505.P12484456790380004130

`A020639(A000010(n+2))*A284587(A028310(n))`
-/

namespace A107505.P12484456790380004130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A284587 (A028310 n).toNat

end

end A107505.P12484456790380004130

namespace A107505

/-- `A020639(A000010(n+2))*A284587(A028310(n))` -/
def P12484456790380004130.Spec : Prop :=
  ∀ n, P12484456790380004130.a n = A107505 n

end A107505

/-! ## A107505.P4784247891585277481

`A020639(4*a(n-1))*A284587(A028310(n))` with `a(0)=1`
-/

namespace A107505.P4784247891585277481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (4 * a (n - 1)).toNat * A284587 (A028310 n).toNat

end

end A107505.P4784247891585277481

namespace A107505

/-- `A020639(4*a(n-1))*A284587(A028310(n))` -/
def P4784247891585277481.Spec : Prop :=
  ∀ n, P4784247891585277481.a n = A107505 n

end A107505

/-! ## A107505.P4032366229876463671

`A107497(A008595(n))`
-/

namespace A107505.P4032366229876463671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107497 (A008595 n).toNat

end

end A107505.P4032366229876463671

namespace A107505

/-- `A107497(A008595(n))` -/
def P4032366229876463671.Spec : Prop :=
  ∀ n, P4032366229876463671.a n = A107505 n

end A107505

/-!
# A107508: Coordination sequence for D_13 lattice.

The programs for A107508, the canonical program `A107508.P7353133713727071130` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107508 has offset 0).

The definition of A107508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107508.P7353133713727071130

`A035750(n)-13*A035606(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A107508

/-- `A035750(n)-13*A035606(n)` -/
def P7353133713727071130.Spec : Prop :=
  ∀ n, P7353133713727071130.a n = A107508 n

theorem P7353133713727071130.correct : P7353133713727071130.Spec := by
  intro n
  simp only [A107508]

end A107508

/-!
# A107546: Coordination sequence for B_13 lattice.

The programs for A107546, there is no canonical definition to state claims against.
-/

/-! ## A107546.P6869091775136912646

`A108998(eq[14, A193739(n)])`
-/

namespace A107546.P6869091775136912646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107546.P6869091775136912646

/-! ## A107546.P4066033858099708183

`A108998(eq[32, A116949(n)])`
-/

namespace A107546.P4066033858099708183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107546.P4066033858099708183

/-! ## A107546.P6378813636914205359

`A108998(A000217(n+13)+n)`
-/

namespace A107546.P6378813636914205359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A107546.P6378813636914205359

/-! ## A107546.P14545880653306976525

`A108998(A055999(n+7)+A016825(n+10))`
-/

namespace A107546.P14545880653306976525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (n + 7) + A016825 (n + 10)).toNat

end

end A107546.P14545880653306976525

/-! ## A107546.P10821554767707680346

`A108998(A133263(n+10)+A016825(n+8))`
-/

namespace A107546.P10821554767707680346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A133263 (n + 10) + A016825 (n + 8)).toNat

end

end A107546.P10821554767707680346

/-! ## A107546.P9256663732443766684

`A108998(A166136(n+9)+A103517(A103517(n+6)))`
-/

namespace A107546.P9256663732443766684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A166136 (n + 9) + A103517 (A103517 (n + 6)).toNat).toNat

end

end A107546.P9256663732443766684

/-!
# A107547: Coordination sequence for B_14 lattice.

The programs for A107547, there is no canonical definition to state claims against.
-/

/-! ## A107547.P14009173117258384990

`A108998(eq[14, A025581(n)])`
-/

namespace A107547.P14009173117258384990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107547.P14009173117258384990

/-! ## A107547.P1870671878908032789

`A108998(eq[15, A193739(n)])`
-/

namespace A107547.P1870671878908032789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107547.P1870671878908032789

/-! ## A107547.P1296748532315554063

`A108998(A056119(n+9)+6)`
-/

namespace A107547.P1296748532315554063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A056119 (n + 9) + 6).toNat

end

end A107547.P1296748532315554063

/-! ## A107547.P1858906185544551342

`A108998(eq[15, A004736(n+1)])`
-/

namespace A107547.P1858906185544551342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107547.P1858906185544551342

/-! ## A107547.P11816939774610694770

`A108998(A000217(n+14)+n)`
-/

namespace A107547.P11816939774610694770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A107547.P11816939774610694770

/-! ## A107547.P7915243014806693263

`A108998(A016825(n+9)+A000124(n+11))`
-/

namespace A107547.P7915243014806693263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A016825 (n + 9) + A000124 (n + 11)).toNat

end

end A107547.P7915243014806693263

/-!
# A107548: Coordination sequence for B_15 lattice.

The programs for A107548, there is no canonical definition to state claims against.
-/

/-! ## A107548.P6641353347805015773

`A108998(eq[15, A025581(n)])`
-/

namespace A107548.P6641353347805015773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107548.P6641353347805015773

/-! ## A107548.P10406893387078169728

`A108998(eq[4, sqrt(A193739(n))])`
-/

namespace A107548.P10406893387078169728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A193739 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A107548.P10406893387078169728

/-! ## A107548.P7983774781210280597

`A108998(A000217(n+15)+n)`
-/

namespace A107548.P7983774781210280597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A107548.P7983774781210280597

/-! ## A107548.P11433259931763445953

`A108998(A016813(n+10)+A000124(n+12))`
-/

namespace A107548.P11433259931763445953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A016813 (n + 10) + A000124 (n + 12)).toNat

end

end A107548.P11433259931763445953

/-! ## A107548.P9885236744616307291

`record[A108998(A132315(n+1)-n)]`
-/

namespace A107548.P9885236744616307291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A132315 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107548.P9885236744616307291

/-!
# A107549: Coordination sequence for B_16 lattice.

The programs for A107549, there is no canonical definition to state claims against.
-/

/-! ## A107549.P4052766281360018772

`A108998(eq[16, A025581(n)])`
-/

namespace A107549.P4052766281360018772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107549.P4052766281360018772

/-! ## A107549.P14013785373961288518

`A108998(eq[33, A099375(n)])`
-/

namespace A107549.P14013785373961288518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107549.P14013785373961288518

/-! ## A107549.P3962721610278876640

`A108998(eq[17, A004736(n+1)])`
-/

namespace A107549.P3962721610278876640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107549.P3962721610278876640

/-! ## A107549.P3479023968788001063

`A108998(A167614(n+12)+A016825(n+10))`
-/

namespace A107549.P3479023968788001063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A167614 (n + 12) + A016825 (n + 10)).toNat

end

end A107549.P3479023968788001063

/-! ## A107549.P8574181819940810474

`record[A108998(A132315(n+1))]`
-/

namespace A107549.P8574181819940810474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A132315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107549.P8574181819940810474

/-!
# A107550: Coordination sequence for B_17 lattice.

The programs for A107550, there is no canonical definition to state claims against.
-/

/-! ## A107550.P18303407497132687669

`A108998(eq[17, A025581(n)])`
-/

namespace A107550.P18303407497132687669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107550.P18303407497132687669

/-! ## A107550.P14813301336578015493

`A108998(eq[35, A099375(n)])`
-/

namespace A107550.P14813301336578015493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107550.P14813301336578015493

/-! ## A107550.P416750849245370691

`A108998(eq[18, A004736(n+1)])`
-/

namespace A107550.P416750849245370691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107550.P416750849245370691

/-!
# A107552: Coordination sequence for B_19 lattice.

The programs for A107552, there is no canonical definition to state claims against.
-/

/-! ## A107552.P8888185925927161453

`A108998(eq[19, A025581(n)])`
-/

namespace A107552.P8888185925927161453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107552.P8888185925927161453

/-! ## A107552.P7780506335081775901

`A108998(eq[20, A004736(n+1)])`
-/

namespace A107552.P7780506335081775901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107552.P7780506335081775901

/-!
# A107553: Coordination sequence for B_20 lattice.

The programs for A107553, there is no canonical definition to state claims against.
-/

/-! ## A107553.P13442230589043174022

`A108998(eq[20, A025581(n)])`
-/

namespace A107553.P13442230589043174022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107553.P13442230589043174022

/-! ## A107553.P4989815442991481830

`A108998(eq[21, A004736(n+1)])`
-/

namespace A107553.P4989815442991481830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107553.P4989815442991481830

/-!
# A107554: Coordination sequence for B_21 lattice.

The programs for A107554, there is no canonical definition to state claims against.
-/

/-! ## A107554.P15402899127557714841

`A108998(eq[21, A025581(n)])`
-/

namespace A107554.P15402899127557714841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107554.P15402899127557714841

/-!
# A107555: Coordination sequence for B_22 lattice.

The programs for A107555, there is no canonical definition to state claims against.
-/

/-! ## A107555.P10311969443106909970

`A108998(eq[22, A025581(n)])`
-/

namespace A107555.P10311969443106909970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107555.P10311969443106909970

/-!
# A107557: Coordination sequence for B_24 lattice.

The programs for A107557, there is no canonical definition to state claims against.
-/

/-! ## A107557.P12442797336850928378

`A108998(eq[24, A025581(n)])`
-/

namespace A107557.P12442797336850928378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107557.P12442797336850928378

/-!
# A107558: Coordination sequence for B_25 lattice.

The programs for A107558, there is no canonical definition to state claims against.
-/

/-! ## A107558.P14906925674286846198

`A108998(eq[26, A004736(n+1)])`
-/

namespace A107558.P14906925674286846198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107558.P14906925674286846198

/-!
# A107573: a(n)=least sidelength of n-th triangle listed at A107572.

The programs for A107573, there is no canonical definition to state claims against.
-/

/-! ## A107573.P16194649087395781919

`A070080(n+1)+1`
-/

namespace A107573.P16194649087395781919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (n + 1) + 1

end

end A107573.P16194649087395781919

/-! ## A107573.P16006166584658087781

`A002271(A070080(n+1))`
-/

namespace A107573.P16006166584658087781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002271 (A070080 (n + 1)).toNat

end

end A107573.P16006166584658087781

/-! ## A107573.P16740466037513558583

`A070080(A070112(n+1))`
-/

namespace A107573.P16740466037513558583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (A070112 (n + 1)).toNat

end

end A107573.P16740466037513558583

/-! ## A107573.P8694852876015352660

`A070080(comp[A070115(n-a(3%n))])` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A107573.P8694852876015352660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n f1 =>
  A070115 ((n : ℤ) - f1 (3 % n)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A107573.P8694852876015352660

/-! ## A107573.P7622661421875978060

`A070083(n+1)-(A070082(n+1)+A070081(n+1))+1`
-/

namespace A107573.P7622661421875978060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (n + 1) - (A070082 (n + 1) + A070081 (n + 1)) + 1

end

end A107573.P7622661421875978060

/-! ## A107573.P10990502185494200327

`A107576(n+1)-(A107575(n+1)+A107574(n+1))`
-/

namespace A107573.P10990502185494200327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107576 (n + 1) - (A107575 (n + 1) + A107574 (n + 1))

end

end A107573.P10990502185494200327

/-!
# A107574: a(n)=middle sidelength of n-th triangle listed at A107572.

The programs for A107574, there is no canonical definition to state claims against.
-/

/-! ## A107574.P10305014349061175026

`2+A070081(n+1)`
-/

namespace A107574.P10305014349061175026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A070081 (n + 1)

end

end A107574.P10305014349061175026

/-! ## A107574.P8700498499865510368

`A009056(A070081(n+1))`
-/

namespace A107574.P8700498499865510368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A070081 (n + 1)).toNat

end

end A107574.P8700498499865510368

/-! ## A107574.P4979781406541419572

`A070081(A070112(n+1))`
-/

namespace A107574.P4979781406541419572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070081 (A070112 (n + 1)).toNat

end

end A107574.P4979781406541419572

/-! ## A107574.P10093436588314532612

`A070081(comp[A070115(n-a(3%n))])` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A107574.P10093436588314532612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n f1 =>
  A070115 ((n : ℤ) - f1 (3 % n)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070081 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A107574.P10093436588314532612

/-! ## A107574.P11574616077668686954

`A070083(n+1)-(A070082(n+1)+A070080(n+1))+2`
-/

namespace A107574.P11574616077668686954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (n + 1) - (A070082 (n + 1) + A070080 (n + 1)) + 2

end

end A107574.P11574616077668686954

/-! ## A107574.P2234185393320099125

`A107576(n+1)-(A107575(n+1)+A107573(n+1))`
-/

namespace A107574.P2234185393320099125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107576 (n + 1) - (A107575 (n + 1) + A107573 (n + 1))

end

end A107574.P2234185393320099125

/-!
# A107575: a(n)=greatest sidelength of n-th triangle listed at A107572.

The programs for A107575, there is no canonical definition to state claims against.
-/

/-! ## A107575.P8188033221062189310

`A070082(n+1)+3`
-/

namespace A107575.P8188033221062189310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (n + 1) + 3

end

end A107575.P8188033221062189310

/-! ## A107575.P17425796295195665272

`A063713(A070082(n+1))`
-/

namespace A107575.P17425796295195665272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063713 (A070082 (n + 1)).toNat

end

end A107575.P17425796295195665272

/-! ## A107575.P16096789299647336952

`A070082(A070112(n+1))`
-/

namespace A107575.P16096789299647336952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A070112 (n + 1)).toNat

end

end A107575.P16096789299647336952

/-! ## A107575.P6324217434914122218

`A070083(n+1)-(A070081(n+1)+A070080(n+1))+3`
-/

namespace A107575.P6324217434914122218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (n + 1) - (A070081 (n + 1) + A070080 (n + 1)) + 3

end

end A107575.P6324217434914122218

/-! ## A107575.P17183387868312933089

`A107576(n+1)-(A107574(n+1)+A107573(n+1))`
-/

namespace A107575.P17183387868312933089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107576 (n + 1) - (A107574 (n + 1) + A107573 (n + 1))

end

end A107575.P17183387868312933089

/-!
# A107576: a(n)=perimeter of n-th triangle listed at A107572.

The programs for A107576, there is no canonical definition to state claims against.
-/

/-! ## A107576.P15886946376224004212

`A070083(n+1)+6`
-/

namespace A107576.P15886946376224004212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (n + 1) + 6

end

end A107576.P15886946376224004212

/-! ## A107576.P15952592190858084297

`∑[char[1]+char[A026810(n)]]+8`
-/

namespace A107576.P15952592190858084297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A107576.P15952592190858084297

/-! ## A107576.P17361640594028287174

`comp[∑[A005044(n)]+n]+6-n`
-/

namespace A107576.P17361640594028287174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (6 - (n : ℤ))

end

end A107576.P17361640594028287174

/-! ## A107576.P17864028045178564111

`comp[A026810(n+1)+n]-n+6`
-/

namespace A107576.P17864028045178564111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 6

end

end A107576.P17864028045178564111

/-! ## A107576.P5535173028811459033

`A020715(A070083(n+1))`
-/

namespace A107576.P5535173028811459033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A070083 (n + 1)).toNat

end

end A107576.P5535173028811459033

/-! ## A107576.P6024041837693847604

`A070083(A070112(n+1))`
-/

namespace A107576.P6024041837693847604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (A070112 (n + 1)).toNat

end

end A107576.P6024041837693847604

/-! ## A107576.P1138741094915843898

`A263772(∑[char[A026810(n)]])`
-/

namespace A107576.P1138741094915843898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107576.P1138741094915843898

/-! ## A107576.P4861163977736203075

`A263772(∑[char[A029138(n)]])`
-/

namespace A107576.P4861163977736203075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107576.P4861163977736203075

/-! ## A107576.P10999561447980604993

`A263772(∑[char[A029253(n)]])`
-/

namespace A107576.P10999561447980604993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107576.P10999561447980604993

/-! ## A107576.P15113335002829763396

`A263772(∑[char[A288165(n)]])`
-/

namespace A107576.P15113335002829763396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107576.P15113335002829763396

/-!
# A107577: a(n)=greatest integer p such that a^p + b^p > c^p, where (a,b,c) is the n-th integer-sided triangle listed at A107572.

The programs for A107577, there is no canonical definition to state claims against.
-/

/-! ## A107577.P17653789629921546149

`gcd(A003724(A070679(n+5)), A319315(2*n+1))`
-/

namespace A107577.P17653789629921546149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003724 (A070679 (n + 5)).toNat) (A319315 (2 * n + 1))

end

end A107577.P17653789629921546149

/-! ## A107577.P943540321438549314

`gcd(A048650(n), A117177(n+1))`
-/

namespace A107577.P943540321438549314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048650 n) (A117177 (n + 1))

end

end A107577.P943540321438549314

/-! ## A107577.P6385695613813263441

`A323022(A341746(Δ[A080856(n)]))`
-/

namespace A107577.P6385695613813263441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A341746 (f1 (n + 1) - f1 n).toNat).toNat

end

end A107577.P6385695613813263441

/-! ## A107577.P1028335534071108324

`gcd(A080757(A003269(n)), A331855(n))`
-/

namespace A107577.P1028335534071108324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080757 (A003269 n).toNat) (A331855 n)

end

end A107577.P1028335534071108324

/-! ## A107577.P13137323668543037401

`gcd(A025142(n+1), A049705(A288341(n)))`
-/

namespace A107577.P13137323668543037401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025142 (n + 1)) (A049705 (A288341 n).toNat)

end

end A107577.P13137323668543037401

/-!
# A107578: Prime index of A000101(n), maximal gap upper end prime index.

The programs for A107578, there is no canonical definition to state claims against.
-/

/-! ## A107578.P15441760335388159079

`A005669(n+1)+1`
-/

namespace A107578.P15441760335388159079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005669 (n + 1) + 1

end

end A107578.P15441760335388159079

/-! ## A107578.P11773719246319699450

`A000720(A000101(n+1))`
-/

namespace A107578.P11773719246319699450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000101 (n + 1)).toNat

end

end A107578.P11773719246319699450

/-! ## A107578.P5113614996742188342

`A000720(A002386(n+1))+1`
-/

namespace A107578.P5113614996742188342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002386 (n + 1)).toNat + 1

end

end A107578.P5113614996742188342

/-! ## A107578.P7413616708434866535

`A066493(A005250(n+1))+1`
-/

namespace A107578.P7413616708434866535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066493 (A005250 (n + 1)).toNat + 1

end

end A107578.P7413616708434866535

/-! ## A107578.P5187181947800555355

`∪[A214935(n+1), A307325(A005250(n+2))]+1`
-/

namespace A107578.P5187181947800555355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307325 (A005250 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A107578.P5187181947800555355

/-!
# A107579: Primes with digit sum 10.

The programs for A107579, the canonical program `A107579.P17257510932600595643` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107579 has offset 1).

The definition of A107579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107579.P2827144145240645138

`∩[A052224(n+1), A117674(n+1)]`
-/

namespace A107579.P2827144145240645138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P2827144145240645138

namespace A107579

/-- `∩[A052224(n+1), A117674(n+1)]` -/
def P2827144145240645138.Spec : Prop :=
  ∀ n, (P2827144145240645138.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P9207743199444886910

`∩[A117674(n+1), A326806(n+1)]`
-/

namespace A107579.P9207743199444886910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P9207743199444886910

namespace A107579

/-- `∩[A117674(n+1), A326806(n+1)]` -/
def P9207743199444886910.Spec : Prop :=
  ∀ n, (P9207743199444886910.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P12294360415991599678

`p?[A052224(n+1)]`
-/

namespace A107579.P12294360415991599678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107579.P12294360415991599678

namespace A107579

/-- `p?[A052224(n+1)]` -/
def P12294360415991599678.Spec : Prop :=
  ∀ n, P12294360415991599678.a n = A107579 (n + 1)

end A107579

/-! ## A107579.P17715646327120246549

`p?[A326833(n+1)]`
-/

namespace A107579.P17715646327120246549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107579.P17715646327120246549

namespace A107579

/-- `p?[A326833(n+1)]` -/
def P17715646327120246549.Spec : Prop :=
  ∀ n, P17715646327120246549.a n = A107579 (n + 1)

end A107579

/-! ## A107579.P7992867860701813667

`p?[A326806(n+4)]`
-/

namespace A107579.P7992867860701813667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107579.P7992867860701813667

namespace A107579

/-- `p?[A326806(n+4)]` -/
def P7992867860701813667.Spec : Prop :=
  ∀ n, P7992867860701813667.a n = A107579 (n + 1)

end A107579

/-! ## A107579.P9231667816918208231

`p?[A052223(n+1)+1]`
-/

namespace A107579.P9231667816918208231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107579.P9231667816918208231

namespace A107579

/-- `p?[A052223(n+1)+1]` -/
def P9231667816918208231.Spec : Prop :=
  ∀ n, P9231667816918208231.a n = A107579 (n + 1)

end A107579

/-! ## A107579.P3353585106209956869

`or(1, p?[A052224(-xor(n, -1))])`
-/

namespace A107579.P3353585106209956869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A107579.P3353585106209956869

namespace A107579

/-- `or(1, p?[A052224(-xor(n, -1))])` -/
def P3353585106209956869.Spec : Prop :=
  ∀ n, P3353585106209956869.a n = A107579 (n + 1)

end A107579

/-! ## A107579.P4440556109511685462

`∩[A052224(n+1), A061237(n+1)]`
-/

namespace A107579.P4440556109511685462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P4440556109511685462

namespace A107579

/-- `∩[A052224(n+1), A061237(n+1)]` -/
def P4440556109511685462.Spec : Prop :=
  ∀ n, (P4440556109511685462.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P5704073299253127604

`∩[A052224(n+1), A243587(n+1)]`
-/

namespace A107579.P5704073299253127604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P5704073299253127604

namespace A107579

/-- `∩[A052224(n+1), A243587(n+1)]` -/
def P5704073299253127604.Spec : Prop :=
  ∀ n, (P5704073299253127604.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P6316897195697284416

`∩[A117674(n+1), A243587(n+1)]`
-/

namespace A107579.P6316897195697284416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P6316897195697284416

namespace A107579

/-- `∩[A117674(n+1), A243587(n+1)]` -/
def P6316897195697284416.Spec : Prop :=
  ∀ n, (P6316897195697284416.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P17923986243048856047

`∩[A061237(n+1), A326806(n+1)]`
-/

namespace A107579.P17923986243048856047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P17923986243048856047

namespace A107579

/-- `∩[A061237(n+1), A326806(n+1)]` -/
def P17923986243048856047.Spec : Prop :=
  ∀ n, (P17923986243048856047.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P459485935343403061

`∩[A061237(n+1), A326833(n+1)]`
-/

namespace A107579.P459485935343403061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P459485935343403061

namespace A107579

/-- `∩[A061237(n+1), A326833(n+1)]` -/
def P459485935343403061.Spec : Prop :=
  ∀ n, (P459485935343403061.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P11651665409381694500

`∩[A052224(n+1), A062340(n+1)]`
-/

namespace A107579.P11651665409381694500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P11651665409381694500

namespace A107579

/-- `∩[A052224(n+1), A062340(n+1)]` -/
def P11651665409381694500.Spec : Prop :=
  ∀ n, (P11651665409381694500.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P17257510932600595643

`∩[A061237(n+1), A062340(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107579

/-- `∩[A061237(n+1), A062340(n+1)]` -/
def P17257510932600595643.Spec : Prop :=
  ∀ n, (P17257510932600595643.a n : ℤ) = A107579 (n + 1)

theorem P17257510932600595643.correct : P17257510932600595643.Spec := by
  intro n
  simp only [A107579, Nat.add_sub_cancel]

end A107579

/-! ## A107579.P16323114149584705680

`∩[A062340(n+1), A117674(n+1)]`
-/

namespace A107579.P16323114149584705680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P16323114149584705680

namespace A107579

/-- `∩[A062340(n+1), A117674(n+1)]` -/
def P16323114149584705680.Spec : Prop :=
  ∀ n, (P16323114149584705680.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P10935937186206656946

`∩[A062340(n+1), A326833(n+1)]`
-/

namespace A107579.P10935937186206656946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P10935937186206656946

namespace A107579

/-- `∩[A062340(n+1), A326833(n+1)]` -/
def P10935937186206656946.Spec : Prop :=
  ∀ n, (P10935937186206656946.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P14372246270671474256

`∩[A052224(n+1), A166561(n+1)]`
-/

namespace A107579.P14372246270671474256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P14372246270671474256

namespace A107579

/-- `∩[A052224(n+1), A166561(n+1)]` -/
def P14372246270671474256.Spec : Prop :=
  ∀ n, (P14372246270671474256.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P2463988841553946406

`A000027(p?[A052224(-xor(n, -1))])`
-/

namespace A107579.P2463988841553946406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107579.P2463988841553946406

namespace A107579

/-- `A000027(p?[A052224(-xor(n, -1))])` -/
def P2463988841553946406.Spec : Prop :=
  ∀ n, P2463988841553946406.a n = A107579 (n + 1)

end A107579

/-! ## A107579.P10535373920174567678

`∩[A052224(n+1), A079130(n+1)]`
-/

namespace A107579.P10535373920174567678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P10535373920174567678

namespace A107579

/-- `∩[A052224(n+1), A079130(n+1)]` -/
def P10535373920174567678.Spec : Prop :=
  ∀ n, (P10535373920174567678.a n : ℤ) = A107579 (n + 1)

end A107579

/-! ## A107579.P18084844055261628804

`∩[A052224(n+1), A129805(n+1)]`
-/

namespace A107579.P18084844055261628804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107579.P18084844055261628804

namespace A107579

/-- `∩[A052224(n+1), A129805(n+1)]` -/
def P18084844055261628804.Spec : Prop :=
  ∀ n, (P18084844055261628804.a n : ℤ) = A107579 (n + 1)

end A107579

/-!
# A107581: Numbers n such that (n + prime(n)), (n+1 + prime(n+1)) and (n+2 + prime(n+2)) are divisible by 5.

The programs for A107581, there is no canonical definition to state claims against.
-/

/-! ## A107581.P13810774229274885897

`∩[A107580(n+1)-1, A107580(n+1)]`
-/

namespace A107581.P13810774229274885897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107580 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107581.P13810774229274885897

/-! ## A107581.P18384123472228424769

`∩[A107580(n+1), A233583(A107580(n+1))]`
-/

namespace A107581.P18384123472228424769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A107580 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107581.P18384123472228424769

/-!
# A107583: a(n) = 3^n - 3*n.

The programs for A107583, the canonical program `A107583.P8707585772826993051` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107583 has offset 0).

The definition of A107583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-3*n` (program `A107583.P8707585772826993051`, by `A107583.P8707585772826993051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107583.P8707585772826993051

`3^n-3*n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107583

/-- `3^n-3*n` -/
def P8707585772826993051.Spec : Prop :=
  ∀ n, P8707585772826993051.a n = A107583 n

theorem P8707585772826993051.correct : P8707585772826993051.Spec := by
  intro n
  simp only [A107583]

end A107583

/-! ## A107583.P9179868615404360979

`∑[ogf((1-5x+10x^2)/(1-4x+3x^2))]`
-/

namespace A107583.P9179868615404360979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 10] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107583.P9179868615404360979

namespace A107583

/-- `∑[ogf((1-5x+10x^2)/(1-4x+3x^2))]` -/
def P9179868615404360979.Spec : Prop :=
  ∀ n, P9179868615404360979.a n = A107583 n

end A107583

/-! ## A107583.P4245717874072743104

`ogf((1-5x+10x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A107583.P4245717874072743104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 10] [1, -5, 7, -3] n

end

end A107583.P4245717874072743104

namespace A107583

/-- `ogf((1-5x+10x^2)/(1-5x+7x^2-3x^3))` -/
def P4245717874072743104.Spec : Prop :=
  ∀ n, P4245717874072743104.a n = A107583 n

end A107583

/-! ## A107583.P1258093029750249995

`∑[3*(a(n-1)+2)]` with `a(0)=1, a(1)=-1`
-/

namespace A107583.P1258093029750249995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  3 * (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107583.P1258093029750249995

namespace A107583

/-- `∑[3*(a(n-1)+2)]` -/
def P1258093029750249995.Spec : Prop :=
  ∀ n, P1258093029750249995.a n = A107583 n

end A107583

/-! ## A107583.P1697019011072201291

`∑[∑[3*a(n-1)]]` with `a(0)=1, a(1)=-2, a(2)=4`
-/

namespace A107583.P1697019011072201291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 4] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107583.P1697019011072201291

namespace A107583

/-- `∑[∑[3*a(n-1)]]` -/
def P1697019011072201291.Spec : Prop :=
  ∀ n, P1697019011072201291.a n = A107583 n

end A107583

/-! ## A107583.P10642941390259520675

`3*(2*n+a(n-1)-3)` with `a(0)=1`
-/

namespace A107583.P10642941390259520675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((2 * n : ℤ) + (a (n - 1) - 3))

end

end A107583.P10642941390259520675

namespace A107583

/-- `3*(2*n+a(n-1)-3)` -/
def P10642941390259520675.Spec : Prop :=
  ∀ n, P10642941390259520675.a n = A107583 n

theorem P10642941390259520675.correct : P10642941390259520675.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A107583, Nat.add_sub_cancel, A107583.P10642941390259520675.a, A107583.P8707585772826993051.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A107583, Nat.add_sub_cancel, A107583.P10642941390259520675.a, A107583.P8707585772826993051.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A107583

/-! ## A107583.P4007244503325166270

`3*(2*n-(3-a(n-1)))` with `a(0)=1`
-/

namespace A107583.P4007244503325166270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((2 * n : ℤ) - (3 - a (n - 1)))

end

end A107583.P4007244503325166270

namespace A107583

/-- `3*(2*n-(3-a(n-1)))` -/
def P4007244503325166270.Spec : Prop :=
  ∀ n, P4007244503325166270.a n = A107583 n

theorem P4007244503325166270.correct : P4007244503325166270.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A107583, Nat.add_sub_cancel, A107583.P4007244503325166270.a, A107583.P8707585772826993051.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A107583, Nat.add_sub_cancel, A107583.P4007244503325166270.a, A107583.P8707585772826993051.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A107583

/-! ## A107583.P16814887304321575256

`abs(n-A186948(n))`
-/

namespace A107583.P16814887304321575256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A186948 n|

end

end A107583.P16814887304321575256

namespace A107583

/-- `abs(n-A186948(n))` -/
def P16814887304321575256.Spec : Prop :=
  ∀ n, P16814887304321575256.a n = A107583 n

end A107583

/-! ## A107583.P7449887112451898055

`abs(2*n-A024024(n))`
-/

namespace A107583.P7449887112451898055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A024024 n|

end

end A107583.P7449887112451898055

namespace A107583

/-- `abs(2*n-A024024(n))` -/
def P7449887112451898055.Spec : Prop :=
  ∀ n, P7449887112451898055.a n = A107583 n

end A107583

/-! ## A107583.P5146127950187820671

`abs(3*n-A000244(n))`
-/

namespace A107583.P5146127950187820671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - A000244 n|

end

end A107583.P5146127950187820671

namespace A107583

/-- `abs(3*n-A000244(n))` -/
def P5146127950187820671.Spec : Prop :=
  ∀ n, P5146127950187820671.a n = A107583 n

end A107583

/-! ## A107583.P13726238503780580249

`abs(3^n-A008585(n))`
-/

namespace A107583.P13726238503780580249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A008585 n|

end

end A107583.P13726238503780580249

namespace A107583

/-- `abs(3^n-A008585(n))` -/
def P13726238503780580249.Spec : Prop :=
  ∀ n, P13726238503780580249.a n = A107583 n

end A107583

/-!
# A107584: a(n) = 4^n - 4*n.

The programs for A107584, the canonical program `A107584.P10299861422189421225` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107584 has offset 0).

The definition of A107584 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-4*n` (program `A107584.P10299861422189421225`, by `A107584.P10299861422189421225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107584.P10299861422189421225

`4^n-4*n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107584

/-- `4^n-4*n` -/
def P10299861422189421225.Spec : Prop :=
  ∀ n, P10299861422189421225.a n = A107584 n

theorem P10299861422189421225.correct : P10299861422189421225.Spec := by
  intro n
  simp only [A107584]

end A107584

/-! ## A107584.P17543067550550956042

`∑[4*(a(n-1)+3)]` with `a(0)=1, a(1)=-1`
-/

namespace A107584.P17543067550550956042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  4 * (f1 (n - 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107584.P17543067550550956042

namespace A107584

/-- `∑[4*(a(n-1)+3)]` -/
def P17543067550550956042.Spec : Prop :=
  ∀ n, P17543067550550956042.a n = A107584 n

end A107584

/-! ## A107584.P7802421173387760001

`4*(3*n+a(n-1)-4)` with `a(0)=1`
-/

namespace A107584.P7802421173387760001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((3 * n : ℤ) + (a (n - 1) - 4))

end

end A107584.P7802421173387760001

namespace A107584

/-- `4*(3*n+a(n-1)-4)` -/
def P7802421173387760001.Spec : Prop :=
  ∀ n, P7802421173387760001.a n = A107584 n

theorem P7802421173387760001.correct : P7802421173387760001.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A107584, Nat.add_sub_cancel, A107584.P7802421173387760001.a, A107584.P10299861422189421225.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A107584, Nat.add_sub_cancel, A107584.P7802421173387760001.a, A107584.P10299861422189421225.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A107584

/-! ## A107584.P10089236614037575146

`4*(3*n-(4-a(n-1)))` with `a(0)=1`
-/

namespace A107584.P10089236614037575146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((3 * n : ℤ) - (4 - a (n - 1)))

end

end A107584.P10089236614037575146

namespace A107584

/-- `4*(3*n-(4-a(n-1)))` -/
def P10089236614037575146.Spec : Prop :=
  ∀ n, P10089236614037575146.a n = A107584 n

theorem P10089236614037575146.correct : P10089236614037575146.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A107584, Nat.add_sub_cancel, A107584.P10089236614037575146.a, A107584.P10299861422189421225.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A107584, Nat.add_sub_cancel, A107584.P10089236614037575146.a, A107584.P10299861422189421225.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A107584

/-! ## A107584.P14846926739468137772

`A005803(2*n)`
-/

namespace A107584.P14846926739468137772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (2 * n)

end

end A107584.P14846926739468137772

namespace A107584

/-- `A005803(2*n)` -/
def P14846926739468137772.Spec : Prop :=
  ∀ n, P14846926739468137772.a n = A107584 n

end A107584

/-! ## A107584.P573833954338892876

`A356185(4*n)`
-/

namespace A107584.P573833954338892876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356185 (4 * n)

end

end A107584.P573833954338892876

namespace A107584

/-- `A356185(4*n)` -/
def P573833954338892876.Spec : Prop :=
  ∀ n, P573833954338892876.a n = A107584 n

end A107584

/-! ## A107584.P12541541784072044138

`and(-3, A130102(2*n))`
-/

namespace A107584.P12541541784072044138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A130102 (2 * n))

end

end A107584.P12541541784072044138

namespace A107584

/-- `and(-3, A130102(2*n))` -/
def P12541541784072044138.Spec : Prop :=
  ∀ n, P12541541784072044138.a n = A107584 n

end A107584

/-! ## A107584.P14900904743910047212

`abs(4*n-A000302(n))`
-/

namespace A107584.P14900904743910047212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n : ℤ) - A000302 n|

end

end A107584.P14900904743910047212

namespace A107584

/-- `abs(4*n-A000302(n))` -/
def P14900904743910047212.Spec : Prop :=
  ∀ n, P14900904743910047212.a n = A107584 n

end A107584

/-! ## A107584.P8455159649566621585

`abs(4^n-A008586(n))`
-/

namespace A107584.P8455159649566621585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A008586 n|

end

end A107584.P8455159649566621585

namespace A107584

/-- `abs(4^n-A008586(n))` -/
def P8455159649566621585.Spec : Prop :=
  ∀ n, P8455159649566621585.a n = A107584 n

end A107584

/-! ## A107584.P662490727773226225

`abs(4*n-A000079(n)²)`
-/

namespace A107584.P662490727773226225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n : ℤ) - A000079 n ^ 2|

end

end A107584.P662490727773226225

namespace A107584

/-- `abs(4*n-A000079(n)²)` -/
def P662490727773226225.Spec : Prop :=
  ∀ n, P662490727773226225.a n = A107584 n

end A107584

/-! ## A107584.P5001234279007591015

`abs(A000079(2*n)-4*n)`
-/

namespace A107584.P5001234279007591015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (2 * n) - (4 * n : ℤ)|

end

end A107584.P5001234279007591015

namespace A107584

/-- `abs(A000079(2*n)-4*n)` -/
def P5001234279007591015.Spec : Prop :=
  ∀ n, P5001234279007591015.a n = A107584 n

end A107584

/-! ## A107584.P15273047464996269920

`abs(A130824(n)+2-4^n)`
-/

namespace A107584.P15273047464996269920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130824 n + (2 - (4 ^ n : ℤ))|

end

end A107584.P15273047464996269920

namespace A107584

/-- `abs(A130824(n)+2-4^n)` -/
def P15273047464996269920.Spec : Prop :=
  ∀ n, P15273047464996269920.a n = A107584 n

end A107584

/-! ## A107584.P12024732132089577067

`abs(A131098(n+1)+1-4^n)`
-/

namespace A107584.P12024732132089577067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131098 (n + 1) + (1 - (4 ^ n : ℤ))|

end

end A107584.P12024732132089577067

namespace A107584

/-- `abs(A131098(n+1)+1-4^n)` -/
def P12024732132089577067.Spec : Prop :=
  ∀ n, P12024732132089577067.a n = A107584 n

end A107584

/-! ## A107584.P13971973169696954919

`abs(∑[A011782(n)]²-n-3*n)`
-/

namespace A107584.P13971973169696954919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ) - (3 * n : ℤ)|

end

end A107584.P13971973169696954919

namespace A107584

/-- `abs(∑[A011782(n)]²-n-3*n)` -/
def P13971973169696954919.Spec : Prop :=
  ∀ n, P13971973169696954919.a n = A107584 n

end A107584

/-! ## A107584.P10084798103758734170

`A130102(n*(A060576(n)+1))`
-/

namespace A107584.P10084798103758734170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130102 ((n : ℤ) * (A060576 n + 1)).toNat

end

end A107584.P10084798103758734170

namespace A107584

/-- `A130102(n*(A060576(n)+1))` -/
def P10084798103758734170.Spec : Prop :=
  ∀ n, P10084798103758734170.a n = A107584 n

end A107584

/-! ## A107584.P12762721728667529121

`A060576(n)*A130102(2*n)`
-/

namespace A107584.P12762721728667529121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A130102 (2 * n)

end

end A107584.P12762721728667529121

namespace A107584

/-- `A060576(n)*A130102(2*n)` -/
def P12762721728667529121.Spec : Prop :=
  ∀ n, P12762721728667529121.a n = A107584 n

end A107584

/-! ## A107584.P15641045505052683025

`xor(A024036(n), A131098(n+1))`
-/

namespace A107584.P15641045505052683025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024036 n) (A131098 (n + 1))

end

end A107584.P15641045505052683025

namespace A107584

/-- `xor(A024036(n), A131098(n+1))` -/
def P15641045505052683025.Spec : Prop :=
  ∀ n, P15641045505052683025.a n = A107584 n

end A107584

/-! ## A107584.P5693619327999791586

`or(A000007(n), A005803(A004277(n)))`
-/

namespace A107584.P5693619327999791586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005803 (A004277 n).toNat)

end

end A107584.P5693619327999791586

namespace A107584

/-- `or(A000007(n), A005803(A004277(n)))` -/
def P5693619327999791586.Spec : Prop :=
  ∀ n, P5693619327999791586.a n = A107584 n

end A107584

/-! ## A107584.P10932324299710309954

`(A000302(n)-4*n)*A001221(A105884(n+1))`
-/

namespace A107584.P10932324299710309954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n - (4 * n : ℤ)) * A001221 (A105884 (n + 1)).toNat

end

end A107584.P10932324299710309954

namespace A107584

/-- `(A000302(n)-4*n)*A001221(A105884(n+1))` -/
def P10932324299710309954.Spec : Prop :=
  ∀ n, P10932324299710309954.a n = A107584 n

end A107584

/-! ## A107584.P3092313103449296557

`A302689(Δ[n²])/2`
-/

namespace A107584.P3092313103449296557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302689 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A107584.P3092313103449296557

namespace A107584

/-- `A302689(Δ[n²])/2` -/
def P3092313103449296557.Spec : Prop :=
  ∀ n, P3092313103449296557.a n = (A107584 n : ℚ)

end A107584

/-!
# A107585: a(n) = 5^n - 5*n.

The programs for A107585, the canonical program `A107585.P17396423444312881632` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107585 has offset 0).

The definition of A107585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-5*n` (program `A107585.P17396423444312881632`, by `A107585.P17396423444312881632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107585.P17396423444312881632

`5^n-5*n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107585

/-- `5^n-5*n` -/
def P17396423444312881632.Spec : Prop :=
  ∀ n, P17396423444312881632.a n = A107585 n

theorem P17396423444312881632.correct : P17396423444312881632.Spec := by
  intro n
  simp only [A107585]

end A107585

/-! ## A107585.P4208513843369165612

`∑[5*(a(n-1)+4)]` with `a(0)=1, a(1)=-1`
-/

namespace A107585.P4208513843369165612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  5 * (f1 (n - 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107585.P4208513843369165612

namespace A107585

/-- `∑[5*(a(n-1)+4)]` -/
def P4208513843369165612.Spec : Prop :=
  ∀ n, P4208513843369165612.a n = A107585 n

end A107585

/-! ## A107585.P16596299160528316894

`5*(4*n+a(n-1)-5)` with `a(0)=1`
-/

namespace A107585.P16596299160528316894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((4 * n : ℤ) + (a (n - 1) - 5))

end

end A107585.P16596299160528316894

namespace A107585

/-- `5*(4*n+a(n-1)-5)` -/
def P16596299160528316894.Spec : Prop :=
  ∀ n, P16596299160528316894.a n = A107585 n

theorem P16596299160528316894.correct : P16596299160528316894.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A107585, Nat.add_sub_cancel, A107585.P16596299160528316894.a, A107585.P17396423444312881632.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A107585, Nat.add_sub_cancel, A107585.P16596299160528316894.a, A107585.P17396423444312881632.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A107585

/-! ## A107585.P10221080226128959079

`5*(4*n-(5-a(n-1)))` with `a(0)=1`
-/

namespace A107585.P10221080226128959079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((4 * n : ℤ) - (5 - a (n - 1)))

end

end A107585.P10221080226128959079

namespace A107585

/-- `5*(4*n-(5-a(n-1)))` -/
def P10221080226128959079.Spec : Prop :=
  ∀ n, P10221080226128959079.a n = A107585 n

theorem P10221080226128959079.correct : P10221080226128959079.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A107585, Nat.add_sub_cancel, A107585.P10221080226128959079.a, A107585.P17396423444312881632.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A107585, Nat.add_sub_cancel, A107585.P10221080226128959079.a, A107585.P17396423444312881632.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A107585

/-! ## A107585.P9948168194063967392

`abs(5*n-A000351(n))`
-/

namespace A107585.P9948168194063967392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * n : ℤ) - A000351 n|

end

end A107585.P9948168194063967392

namespace A107585

/-- `abs(5*n-A000351(n))` -/
def P9948168194063967392.Spec : Prop :=
  ∀ n, P9948168194063967392.a n = A107585 n

end A107585

/-! ## A107585.P12170458890151636708

`abs(5^n-A008587(n))`
-/

namespace A107585.P12170458890151636708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A008587 n|

end

end A107585.P12170458890151636708

namespace A107585

/-- `abs(5^n-A008587(n))` -/
def P12170458890151636708.Spec : Prop :=
  ∀ n, P12170458890151636708.a n = A107585 n

end A107585

/-! ## A107585.P12765741986335224834

`abs(5^n+n-A008588(n))`
-/

namespace A107585.P12765741986335224834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n + n : ℤ) - A008588 n|

end

end A107585.P12765741986335224834

namespace A107585

/-- `abs(5^n+n-A008588(n))` -/
def P12765741986335224834.Spec : Prop :=
  ∀ n, P12765741986335224834.a n = A107585 n

end A107585

/-! ## A107585.P1914348560658374867

`abs(6*n+1-A034474(n)-n)`
-/

namespace A107585.P1914348560658374867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n : ℤ) + (1 - A034474 n) - (n : ℤ)|

end

end A107585.P1914348560658374867

namespace A107585

/-- `abs(6*n+1-A034474(n)-n)` -/
def P1914348560658374867.Spec : Prop :=
  ∀ n, P1914348560658374867.a n = A107585 n

end A107585

/-! ## A107585.P16613476437010401561

`abs(A016861(n)-A034474(n))`
-/

namespace A107585.P16613476437010401561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016861 n - A034474 n|

end

end A107585.P16613476437010401561

namespace A107585

/-- `abs(A016861(n)-A034474(n))` -/
def P16613476437010401561.Spec : Prop :=
  ∀ n, P16613476437010401561.a n = A107585 n

end A107585

/-! ## A107585.P13880778874881859165

`abs(A008592(n)-A221907(n))`
-/

namespace A107585.P13880778874881859165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A221907 n|

end

end A107585.P13880778874881859165

namespace A107585

/-- `abs(A008592(n)-A221907(n))` -/
def P13880778874881859165.Spec : Prop :=
  ∀ n, P13880778874881859165.a n = A107585 n

end A107585

/-! ## A107585.P10070055898468989048

`abs(2*A008706(n)-A221907(n))`
-/

namespace A107585.P10070055898468989048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A008706 n - A221907 n|

end

end A107585.P10070055898468989048

namespace A107585

/-- `abs(2*A008706(n)-A221907(n))` -/
def P10070055898468989048.Spec : Prop :=
  ∀ n, P10070055898468989048.a n = A107585 n

end A107585

/-! ## A107585.P14721442816447307120

`abs(A005843(A008706(n))-A221907(n))`
-/

namespace A107585.P14721442816447307120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 (A008706 n).toNat - A221907 n|

end

end A107585.P14721442816447307120

namespace A107585

/-- `abs(A005843(A008706(n))-A221907(n))` -/
def P14721442816447307120.Spec : Prop :=
  ∀ n, P14721442816447307120.a n = A107585 n

end A107585

/-! ## A107585.P2115115955825129784

`(A199215(n)-5*n)%A199213(n)`
-/

namespace A107585.P2115115955825129784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199215 n - (5 * n : ℤ)) (A199213 n)

end

end A107585.P2115115955825129784

namespace A107585

/-- `(A199215(n)-5*n)%A199213(n)` -/
def P2115115955825129784.Spec : Prop :=
  ∀ n, P2115115955825129784.a n = A107585 n

end A107585

/-! ## A107585.P5166431046907791068

`abs(A121200(n)-A221909(n))`
-/

namespace A107585.P5166431046907791068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121200 n - A221909 n|

end

end A107585.P5166431046907791068

namespace A107585

/-- `abs(A121200(n)-A221909(n))` -/
def P5166431046907791068.Spec : Prop :=
  ∀ n, P5166431046907791068.a n = A107585 n

end A107585

/-!
# A107586: Powers of e^(1/e) rounded up.

The programs for A107586, the canonical program `A107586.P233795631048790097` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107586 has offset 0).

The definition of A107586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107586.P233795631048790097

`ceil(e^(1/e)^n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107586

/-- `ceil(e^(1/e)^n)` -/
def P233795631048790097.Spec : Prop :=
  ∀ n, P233795631048790097.a n = A107586 n

theorem P233795631048790097.correct : P233795631048790097.Spec := by
  intro n
  simp only [A107586]

end A107586

/-! ## A107586.P13263580282802558398

`floor(atan(n+1))+floor(exp(n/e))`
-/

namespace A107586.P13263580282802558398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ + ⌊Real.exp ((n : ℝ) / Real.exp 1)⌋

end

end A107586.P13263580282802558398

namespace A107586

/-- `floor(atan(n+1))+floor(exp(n/e))` -/
def P13263580282802558398.Spec : Prop :=
  ∀ n, P13263580282802558398.a n = A107586 n

end A107586

/-! ## A107586.P12580783051267292703

`floor(exp(n/e))-(floor(acot(n))-1)`
-/

namespace A107586.P12580783051267292703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n : ℝ) / Real.exp 1)⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A107586.P12580783051267292703

namespace A107586

/-- `floor(exp(n/e))-(floor(acot(n))-1)` -/
def P12580783051267292703.Spec : Prop :=
  ∀ n, P12580783051267292703.a n = A107586 n

end A107586

/-! ## A107586.P15048472569424971024

`floor(exp(n/e))-(C(2, n+2)-1)`
-/

namespace A107586.P15048472569424971024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n : ℝ) / Real.exp 1)⌋ - ((Nat.choose 2 (n + 2) : ℤ) - 1)

end

end A107586.P15048472569424971024

namespace A107586

/-- `floor(exp(n/e))-(C(2, n+2)-1)` -/
def P15048472569424971024.Spec : Prop :=
  ∀ n, P15048472569424971024.a n = A107586 n

end A107586

/-! ## A107586.P13484866051438384998

`ceil(exp(n/e))*A007318(∑[n])`
-/

namespace A107586.P13484866051438384998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n : ℝ) / Real.exp 1)⌉ * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107586.P13484866051438384998

namespace A107586

/-- `ceil(exp(n/e))*A007318(∑[n])` -/
def P13484866051438384998.Spec : Prop :=
  ∀ n, P13484866051438384998.a n = A107586 n

end A107586

/-!
# A107587: Number of Motzkin n-paths with an even number of up steps.

The programs for A107587, the canonical program `A107587.P2188899179976675921` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107587 has offset 0).

The definition of A107587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107587.P17174763562385415004

`A343386(n)+A343773(n)`
-/

namespace A107587.P17174763562385415004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343386 n + A343773 n

end

end A107587.P17174763562385415004

namespace A107587

/-- `A343386(n)+A343773(n)` -/
def P17174763562385415004.Spec : Prop :=
  ∀ n, P17174763562385415004.a n = A107587 n

end A107587

/-! ## A107587.P8205575580995103279

`A343386(n)+A100223(n+2)`
-/

namespace A107587.P8205575580995103279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343386 n + A100223 (n + 2)

end

end A107587.P8205575580995103279

namespace A107587

/-- `A343386(n)+A100223(n+2)` -/
def P8205575580995103279.Spec : Prop :=
  ∀ n, P8205575580995103279.a n = A107587 n

end A107587

/-! ## A107587.P9407579440439444778

`A343386(n)-Δ[A108623(n+1)]`
-/

namespace A107587.P9407579440439444778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343386 n - (f1 (n + 1) - f1 n)

end

end A107587.P9407579440439444778

namespace A107587

/-- `A343386(n)-Δ[A108623(n+1)]` -/
def P9407579440439444778.Spec : Prop :=
  ∀ n, P9407579440439444778.a n = A107587 n

end A107587

/-! ## A107587.P11243097836199050037

`A343386(n)+A102840(n+1)/∑[n+1]`
-/

namespace A107587.P11243097836199050037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343386 n : ℚ) + (A102840 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A107587.P11243097836199050037

namespace A107587

/-- `A343386(n)+A102840(n+1)/∑[n+1]` -/
def P11243097836199050037.Spec : Prop :=
  ∀ n, P11243097836199050037.a n = (A107587 n : ℚ)

end A107587

/-! ## A107587.P5923073238522426548

`A307564(n)+A307573(n)-A343386(n)`
-/

namespace A107587.P5923073238522426548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307564 n + (A307573 n - A343386 n)

end

end A107587.P5923073238522426548

namespace A107587

/-- `A307564(n)+A307573(n)-A343386(n)` -/
def P5923073238522426548.Spec : Prop :=
  ∀ n, P5923073238522426548.a n = A107587 n

end A107587

/-! ## A107587.P11931631897978396222

`A307576(n)+A307578(n)-A343386(n)`
-/

namespace A107587.P11931631897978396222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307576 n + (A307578 n - A343386 n)

end

end A107587.P11931631897978396222

namespace A107587

/-- `A307576(n)+A307578(n)-A343386(n)` -/
def P11931631897978396222.Spec : Prop :=
  ∀ n, P11931631897978396222.a n = A107587 n

end A107587

/-! ## A107587.P15265100963921936860

`A001006(n)-A343386(n)`
-/

namespace A107587.P15265100963921936860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A343386 n

end

end A107587.P15265100963921936860

namespace A107587

/-- `A001006(n)-A343386(n)` -/
def P15265100963921936860.Spec : Prop :=
  ∀ n, P15265100963921936860.a n = A107587 n

end A107587

/-! ## A107587.P2188899179976675921

`(A343773(n)+A001006(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107587

/-- `(A343773(n)+A001006(n))/2` -/
def P2188899179976675921.Spec : Prop :=
  ∀ n, P2188899179976675921.a n = (A107587 n : ℚ)

end A107587

/-!
# A107588: G.f. satisfies: A(x) = 1 + ( x/A(x) )/A( x/A(x) ).

The programs for A107588, there is no canonical definition to state claims against.
-/

/-! ## A107588.P6291367399920194443

`A013999(n)*A057077(A001831(n))`
-/

namespace A107588.P6291367399920194443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013999 n * A057077 (A001831 n).toNat

end

end A107588.P6291367399920194443

/-! ## A107588.P17472502968353638233

`A008836(A195512(n))*A013999(n)`
-/

namespace A107588.P17472502968353638233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A195512 n).toNat * A013999 n

end

end A107588.P17472502968353638233

/-!
# A107589: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n*A^(2^(n-1)).

The programs for A107589, there is no canonical definition to state claims against.
-/

/-! ## A107589.P4330911001336546702

`A134381(A051903(lcm(2^(n-1), a(n-1))))` with `a(0)=1`
-/

namespace A107589.P4330911001336546702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134381 (A051903 (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1)))).toNat

end

end A107589.P4330911001336546702

/-! ## A107589.P1287877976231572590

`A004523(A048828(n))+A000110(n)`
-/

namespace A107589.P1287877976231572590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A048828 n).toNat + A000110 n

end

end A107589.P1287877976231572590

/-! ## A107589.P8765715310957192172

`A186001(n)+A048728(A048742(n))`
-/

namespace A107589.P8765715310957192172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186001 n + A048728 (A048742 n).toNat

end

end A107589.P8765715310957192172

/-! ## A107589.P12133202072406856097

`A333755(A327712(n))+A000110(n)`
-/

namespace A107589.P12133202072406856097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A327712 n).toNat + A000110 n

end

end A107589.P12133202072406856097

/-!
# A107590: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(n*(n-1)/2).

The programs for A107590, there is no canonical definition to state claims against.
-/

/-! ## A107590.P8049860235473557009

`A008617(A364641(2*n+1)+A008617(n))`
-/

namespace A107590.P8049860235473557009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A364641 (2 * n + 1) + A008617 n).toNat

end

end A107590.P8049860235473557009

/-! ## A107590.P2530932608532323180

`A147680(A148622(n))`
-/

namespace A107590.P2530932608532323180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A148622 n).toNat

end

end A107590.P2530932608532323180

/-! ## A107590.P17924623603851031997

`A005206(A095396(n!))`
-/

namespace A107590.P17924623603851031997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A095396 (Nat.factorial n)).toNat

end

end A107590.P17924623603851031997

/-! ## A107590.P2122310993184083873

`A050296(A054846(n!))`
-/

namespace A107590.P2122310993184083873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A054846 (Nat.factorial n)).toNat

end

end A107590.P2122310993184083873

/-!
# A107591: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(n*(n+1)/2).

The programs for A107591, there is no canonical definition to state claims against.
-/

/-! ## A107591.P2933416723273835098

`A101803(A225041(n)+∑{p}[n+1, gcd(n, #)])`
-/

namespace A107591.P2933416723273835098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (A225041 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A107591.P2933416723273835098

/-! ## A107591.P9188725451416966340

`A000139(n)+Δ[A067898(A009830(n))]`
-/

namespace A107591.P9188725451416966340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A009830 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n + (f1 (n + 1) - f1 n)

end

end A107591.P9188725451416966340

/-! ## A107591.P12182780797170420053

`A000139(n)-A015439(A018713(n+1))`
-/

namespace A107591.P12182780797170420053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n - A015439 (A018713 (n + 1)).toNat

end

end A107591.P12182780797170420053

/-! ## A107591.P17597328567460928689

`A000139(n)-A121373(A100153(n+1))`
-/

namespace A107591.P17597328567460928689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n - A121373 (A100153 (n + 1)).toNat

end

end A107591.P17597328567460928689

/-!
# A107592: G.f. satisfies: A(x)^2 = Sum_{n>=0} x^n * A(x)^((n+1)*(n+2)/2).

The programs for A107592, there is no canonical definition to state claims against.
-/

/-! ## A107592.P10506353983410226308

`A187185(A046984(n))`
-/

namespace A107592.P10506353983410226308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A046984 n).toNat

end

end A107592.P10506353983410226308

/-! ## A107592.P5357372759286075113

`A348193(A113327(n+1))`
-/

namespace A107592.P5357372759286075113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348193 (A113327 (n + 1)).toNat

end

end A107592.P5357372759286075113

/-!
# A107593: Self-convolution of A107592.

The programs for A107593, there is no canonical definition to state claims against.
-/

/-! ## A107593.P4663676004265848182

`A115197(n)+A001878(A006602(n))`
-/

namespace A107593.P4663676004265848182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115197 n + A001878 (A006602 n).toNat

end

end A107593.P4663676004265848182

/-! ## A107593.P2408707072558146625

`A115197(n)+A046660(A001147(n))`
-/

namespace A107593.P2408707072558146625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115197 n + A046660 (A001147 n).toNat

end

end A107593.P2408707072558146625

/-!
# A107594: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(n^2-n).

The programs for A107594, there is no canonical definition to state claims against.
-/

/-! ## A107594.P10238303596703917925

`A285759(A353481(2*n+1)+A350798(n))`
-/

namespace A107594.P10238303596703917925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285759 (A353481 (2 * n + 1) + A350798 n).toNat

end

end A107594.P10238303596703917925

/-! ## A107594.P14775848439887053122

`A080085(A230022(n!))`
-/

namespace A107594.P14775848439887053122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (A230022 (Nat.factorial n)).toNat

end

end A107594.P14775848439887053122

/-! ## A107594.P17160671502271518527

`A187977(A226762(n!))`
-/

namespace A107594.P17160671502271518527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (A226762 (Nat.factorial n)).toNat

end

end A107594.P17160671502271518527

/-!
# A107595: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(n^2).

The programs for A107595, there is no canonical definition to state claims against.
-/

/-! ## A107595.P14922571757834987212

`A261226(∑[∑[A147740(n+1)]])`
-/

namespace A107595.P14922571757834987212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107595.P14922571757834987212

/-! ## A107595.P15680129867010361457

`A029923(A110710(n)+A010892(n))`
-/

namespace A107595.P15680129867010361457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029923 (A110710 n + A010892 n).toNat

end

end A107595.P15680129867010361457

/-! ## A107595.P7540667003793115128

`A004526(A151498(n)+A000111(n))`
-/

namespace A107595.P7540667003793115128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151498 n + A000111 n).toNat

end

end A107595.P7540667003793115128

/-!
# A107596: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(n^2+n).

The programs for A107596, there is no canonical definition to state claims against.
-/

/-! ## A107596.P821150276646161547

`A230980(A002754(n)+2)`
-/

namespace A107596.P821150276646161547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A002754 n + 2).toNat

end

end A107596.P821150276646161547

/-! ## A107596.P17270074989119104862

`A008621(A000048(3*n+1)+n)`
-/

namespace A107596.P17270074989119104862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A000048 (3 * n + 1) + (n : ℤ)).toNat

end

end A107596.P17270074989119104862

/-!
# A107597: Antidiagonal sums of triangle A107105: a(n) = Sum_{k=0..n} A107105(n-k,k), where A107105(n,k) = C(n,k)*(C(n,k) + 1)/2.

The programs for A107597, there is no canonical definition to state claims against.
-/

/-! ## A107597.P7170271628119121330

`(A051286(n)+A000045(n+1))/2`
-/

namespace A107597.P7170271628119121330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051286 n + A000045 (n + 1) : ℚ) / 2

end

end A107597.P7170271628119121330

/-! ## A107597.P7730882058795934299

`(A000071(n+1)+A051286(n)+1)/2`
-/

namespace A107597.P7730882058795934299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + (A051286 n + 1) : ℚ) / 2

end

end A107597.P7730882058795934299

/-! ## A107597.P8247531542818180338

`(A051286(n)+A037027(∑[n]))/2`
-/

namespace A107597.P8247531542818180338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051286 n + A037027 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A107597.P8247531542818180338

/-! ## A107597.P9929397287061846965

`(A051286(n)+A036355(∑[n]))/2`
-/

namespace A107597.P9929397287061846965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051286 n + A036355 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A107597.P9929397287061846965

/-! ## A107597.P3316111727865650014

`(A079487(A046092(n))+Δ[A096748(2*n)])/2`
-/

namespace A107597.P3316111727865650014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079487 (A046092 n).toNat + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A107597.P3316111727865650014

/-!
# A107599: a(n) = 0,1,2 (resp.) if (1/2)[prime(n-1)+prime(n+1)] is less than, equal to or greater than prime(n) (resp.).

The programs for A107599, the canonical program `A107599.P7799038033738361722` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107599 has offset 2).

The definition of A107599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107599.P7799038033738361722

`1-A079054(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A107599

/-- `1-A079054(n+2)` -/
def P7799038033738361722.Spec : Prop :=
  ∀ n, P7799038033738361722.a n = A107599 (n + 2)

theorem P7799038033738361722.correct : P7799038033738361722.Spec := by
  intro n
  simp only [A107599, Nat.add_sub_cancel]

end A107599

/-! ## A107599.P14205464466930883977

`3-A108415(n+2)`
-/

namespace A107599.P14205464466930883977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A108415 (n + 2)

end

end A107599.P14205464466930883977

namespace A107599

/-- `3-A108415(n+2)` -/
def P14205464466930883977.Spec : Prop :=
  ∀ n, P14205464466930883977.a n = A107599 (n + 2)

end A107599

/-! ## A107599.P704144899833340078

`Δ[A092243(n+1)]+1`
-/

namespace A107599.P704144899833340078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A107599.P704144899833340078

namespace A107599

/-- `Δ[A092243(n+1)]+1` -/
def P704144899833340078.Spec : Prop :=
  ∀ n, P704144899833340078.a n = A107599 (n + 2)

end A107599

/-! ## A107599.P1862169725562064520

`floor(exp(tanh(A036263(n+1))))`
-/

namespace A107599.P1862169725562064520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.tanh (A036263 (n + 1) : ℝ))⌋

end

end A107599.P1862169725562064520

namespace A107599

/-- `floor(exp(tanh(A036263(n+1))))` -/
def P1862169725562064520.Spec : Prop :=
  ∀ n, P1862169725562064520.a n = A107599 (n + 2)

end A107599

/-! ## A107599.P13153477632831355896

`round(tanh(Δ[A001223(n+1)]))+1`
-/

namespace A107599.P13153477632831355896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (f1 (n + 1) - f1 n : ℝ)) + 1

end

end A107599.P13153477632831355896

namespace A107599

/-- `round(tanh(Δ[A001223(n+1)]))+1` -/
def P13153477632831355896.Spec : Prop :=
  ∀ n, P13153477632831355896.a n = A107599 (n + 2)

end A107599

/-! ## A107599.P3310241914766638053

`floor(2^atan(Δ[A062357(n+1)]))`
-/

namespace A107599.P3310241914766638053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (Real.arctan (f1 (n + 1) - f1 n : ℝ))⌋

end

end A107599.P3310241914766638053

namespace A107599

/-- `floor(2^atan(Δ[A062357(n+1)]))` -/
def P3310241914766638053.Spec : Prop :=
  ∀ n, P3310241914766638053.a n = A107599 (n + 2)

end A107599

/-! ## A107599.P1868708441381009487

`round(tanh(1-A073274(n+1)))+1`
-/

namespace A107599.P1868708441381009487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (1 - A073274 (n + 1) : ℝ)) + 1

end

end A107599.P1868708441381009487

namespace A107599

/-- `round(tanh(1-A073274(n+1)))+1` -/
def P1868708441381009487.Spec : Prop :=
  ∀ n, P1868708441381009487.a n = A107599 (n + 2)

end A107599

/-! ## A107599.P12719660589909520688

`(-A079054(n+2))^A008514(n)+1`
-/

namespace A107599.P12719660589909520688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A079054 (n + 2) : ℚ) ^ (A008514 n : ℤ) + 1

end

end A107599.P12719660589909520688

namespace A107599

/-- `(-A079054(n+2))^A008514(n)+1` -/
def P12719660589909520688.Spec : Prop :=
  ∀ n, P12719660589909520688.a n = (A107599 (n + 2) : ℚ)

end A107599

/-! ## A107599.P4920691367286929803

`C(A034444(A034444(n+4)), A108415(n+2))`
-/

namespace A107599.P4920691367286929803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034444 (A034444 (n + 4)).toNat).toNat (A108415 (n + 2)).toNat

end

end A107599.P4920691367286929803

namespace A107599

/-- `C(A034444(A034444(n+4)), A108415(n+2))` -/
def P4920691367286929803.Spec : Prop :=
  ∀ n, (P4920691367286929803.a n : ℤ) = A107599 (n + 2)

end A107599

